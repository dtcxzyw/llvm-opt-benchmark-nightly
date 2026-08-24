Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_beast?download=true
inline.NumInlined: 3033
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN5boost5beast4http12basic_parserILb1EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeE:bb.a
  %i.oi = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !20
  %.not.i.i.i143 = icmp eq i8 %i.oj, 0
  br i1 %.not.i.i.i143, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  br i1 %.019.i.i.i137, label %_ZNK5boost5beast4http6detail21opt_token_list_policyclERNS_4core17basic_string_viewIcEERPKcS6_.exit.i.i148, label %.preheader.i.i.i144.preheader

.preheader.i.i.i144.preheader:                    ; preds = %bb.bi
  %i.ok = getelementptr inbounds nuw i8, ptr %.promoted41.i.i.i142, i64 1 ; 4 uses
  store ptr %i.ok, ptr %i.mk, align 8, !tbaa !187
  %i.ol = icmp eq ptr %i.ok, %i.oa
  br i1 %i.ol, label %.preheader.i.i.i144._crit_edge, label %.lr.ph693

.preheader.i.i.i144:                              ; preds = %.lr.ph693
  %i.om = getelementptr inbounds nuw i8, ptr %i.oo, i64 1 ; 4 uses
  store ptr %i.om, ptr %i.mk, align 8, !tbaa !187
  %i.on = icmp eq ptr %i.om, %i.oa
  br i1 %i.on, label %.preheader.i.i.i144._crit_edge, label %.lr.ph693, !llvm.loop !394

.lr.ph693:                                        ; preds = %.preheader.i.i.i144.preheader, %.preheader.i.i.i144
  %i.oo = phi ptr [ %i.om, %.preheader.i.i.i144 ], [ %i.ok, %.preheader.i.i.i144.preheader ] ; 4 uses
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !20
  %i.oq = zext i8 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !20
  %.not23.i.i.i145 = icmp eq i8 %i.os, 0
  br i1 %.not23.i.i.i145, label %._crit_edge694, label %.preheader.i.i.i144, !llvm.loop !394

._crit_edge694:                                   ; preds = %.lr.ph693
  br label %.preheader.i.i.i144._crit_edge, !llvm.loop !394

.preheader.i.i.i144._crit_edge:                   ; preds = %.preheader.i.i.i144, %._crit_edge694, %.preheader.i.i.i144.preheader
  %.lcssa658 = phi ptr [ %i.oo, %._crit_edge694 ], [ %i.ok, %.preheader.i.i.i144.preheader ], [ %i.om, %.preheader.i.i.i144 ]
  %.lcssa.i.i.i146 = phi ptr [ %i.oo, %._crit_edge694 ], [ %i.oa, %.preheader.i.i.i144.preheader ], [ %i.oa, %.preheader.i.i.i144 ]
  %i.ot = ptrtoint ptr %.lcssa.i.i.i146 to i64
  %i.ou = ptrtoint ptr %.promoted41.i.i.i142 to i64
  %i.ov = sub i64 %i.ot, %i.ou                    ; 2 uses
  store ptr %.promoted41.i.i.i142, ptr %i.mm, align 8, !tbaa !187
  store i64 %i.ov, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16
  br label %_ZN5boost5beast4http6detail17basic_parsed_listINS2_21opt_token_list_policyEE14const_iteratorppEv.exit150

bb.bj:                                            ; preds = %bb.bh
  %.not22.i.i.i149 = icmp eq i8 %i.og, 44
  br i1 %.not22.i.i.i149, label %bb.bk, label %_ZNK5boost5beast4http6detail21opt_token_list_policyclERNS_4core17basic_string_viewIcEERPKcS6_.exit.i.i148

bb.bk:                                            ; preds = %bb.bj
  %i.ow = getelementptr inbounds nuw i8, ptr %.promoted41.i.i.i142, i64 1 ; 2 uses
  store ptr %i.ow, ptr %i.mk, align 8, !tbaa !187
  br label %bb.be, !llvm.loop !395

_ZNK5boost5beast4http6detail21opt_token_list_policyclERNS_4core17basic_string_viewIcEERPKcS6_.exit.i.i148: ; preds = %bb.bj, %bb.bi
  store ptr null, ptr %i.mk, align 8, !tbaa !558
  store i8 1, ptr %i.mn, align 8, !tbaa !559
  br label %_ZN5boost5beast4http6detail17basic_parsed_listINS2_21opt_token_list_policyEE14const_iteratorppEv.exit150

_ZN5boost5beast4http6detail17basic_parsed_listINS2_21opt_token_list_policyEE14const_iteratorppEv.exit150: ; preds = %bb.bg, %.preheader.i.i.i144._crit_edge, %_ZNK5boost5beast4http6detail21opt_token_list_policyclERNS_4core17basic_string_viewIcEERPKcS6_.exit.i.i148
  %.sroa.4.0.copyload527 = phi i64 [ 0, %bb.bg ], [ %i.ov, %.preheader.i.i.i144._crit_edge ], [ 0, %_ZNK5boost5beast4http6detail21opt_token_list_policyclERNS_4core17basic_string_viewIcEERPKcS6_.exit.i.i148 ]
  %.sroa.06.0.copyload525 = phi ptr [ null, %bb.bg ], [ %.promoted41.i.i.i142, %.preheader.i.i.i144._crit_edge ], [ null, %_ZNK5boost5beast4http6detail21opt_token_list_policyclERNS_4core17basic_string_viewIcEERPKcS6_.exit.i.i148 ]
  %i.ox = phi ptr [ null, %bb.bg ], [ %.lcssa658, %.preheader.i.i.i144._crit_edge ], [ null, %_ZNK5boost5beast4http6detail21opt_token_list_policyclERNS_4core17basic_string_viewIcEERPKcS6_.exit.i.i148 ] ; 2 uses
  %i.oy = icmp ne ptr %i.ox, null
  %.not3.i117 = or i1 %i.mj, %i.oy
  br i1 %.not3.i117, label %bb.as, label %_ZN5boost8optionalImEaSEOS1_.exit.thread342

_ZN5boost8optionalImEaSEOS1_.exit:                ; preds = %_ZZN5boost5beast4http12basic_parserILb1EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE_clEv.exit127, %_ZZN5boost5beast4http12basic_parserILb1EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE0_clEv.exit
  %.sink630 = phi i64 [ 19, %_ZZN5boost5beast4http12basic_parserILb1EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE_clEv.exit127 ], [ 24, %_ZZN5boost5beast4http12basic_parserILb1EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE0_clEv.exit ]
  %.sink = phi i64 [ %i.nm, %_ZZN5boost5beast4http12basic_parserILb1EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE_clEv.exit127 ], [ %i.ny, %_ZZN5boost5beast4http12basic_parserILb1EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE0_clEv.exit ]
  store i64 %.sink630, ptr %4, align 8
  %.sroa.5.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..sroa_idx.i123, align 8
  %.sroa.5.0..sroa_idx.i1.i124 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.sink, ptr %.sroa.5.0..sroa_idx.i1.i124, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  br label %bb.bn

bb.bl:                                            ; preds = %_ZN5boost8optionalImEaSEOS1_.exit.thread342.thread, %_ZN5boost8optionalImEaSEOS1_.exit.thread342
  call void @_ZZN5boost5beast4http12basic_parserILb1EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.bn

bb.bm:                                            ; preds = %_ZN5boost8optionalImEaSEOS1_.exit.thread342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7286.1.ph, ptr %i.oz, align 8, !tbaa !424
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7286.1.ph, ptr %i.pa, align 8, !tbaa !560
  %i.pb = load i32, ptr %i.kg, align 4, !tbaa !407
  %i.pc = or i32 %i.pb, 1024
  store i32 %i.pc, ptr %i.kg, align 4, !tbaa !407
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN5boost8optionalImEaSEOS1_.exit, %bb.bl, %bb.bm, %_ZZN5boost5beast4http12basic_parserILb1EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE_clEv.exit115
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZZN5boost5beast4http12basic_parserILb1EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE_clEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  br label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit

bb.bp:                                            ; preds = %bb.a
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !407 ; 3 uses
  %i.pf = and i32 %i.pe, 2048
  %.not = icmp eq i32 %i.pf, 0
  br i1 %.not, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pg = load atomic i8, ptr @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat acquire, align 8, !noalias !561
  %i.ph = icmp eq i8 %i.pg, 0
  br i1 %i.ph, label %bb.br, label %bb.bt, !prof !188

bb.br:                                            ; preds = %bb.bq
  %i.pi = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat) #48, !noalias !561
  %.not.i.i154 = icmp eq i32 %i.pi, 0
  br i1 %.not.i.i154, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store i64 -7618357900223974896, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !561
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 16), i8 0, i64 36, i1 false), !noalias !561
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5boost5beast4http6detail19http_error_categoryE, i64 16), ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !561
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat) #48, !noalias !561
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %i.pj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !561
  %i.pk = and i64 %i.pj, -2
  %switch.i.i.i.i151 = icmp eq i64 %i.pk, -5572340897628102704
  br i1 %switch.i.i.i.i151, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155.thread, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155: ; preds = %bb.bt
  %i.pl = load ptr, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !561
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 48
  %i.pn = load ptr, ptr %i.pm, align 8, !noalias !561
  %i.po = tail call noundef zeroext i1 %i.pn(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i32 noundef 20) #48, !noalias !561, !inline_history !264
  br i1 %i.po, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155.thread, label %bb.bu

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155.thread: ; preds = %bb.bt, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155.thread
  %i.pp = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155 ]
  %i.pq = or disjoint i64 %i.pp, ptrtoint (ptr @_ZZN5boost5beast4http12basic_parserILb1EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEE7loc_bb__0 to i64)
  store i64 20, ptr %4, align 8
  %.sroa.5273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5273.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.pq, ptr %.sroa.5.0..sroa_idx.i160, align 8, !tbaa !16
  br label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit

bb.bv:                                            ; preds = %bb.bp
  %i.pr = and i32 %i.pe, 1024
  %.not52 = icmp eq i32 %i.pr, 0
  br i1 %.not52, label %bb.cb, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ps = load atomic i8, ptr @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat acquire, align 8, !noalias !564
  %i.pt = icmp eq i8 %i.ps, 0
  br i1 %i.pt, label %bb.bx, label %bb.bz, !prof !188

bb.bx:                                            ; preds = %bb.bw
  %i.pu = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat) #48, !noalias !564
  %.not.i.i164 = icmp eq i32 %i.pu, 0
  br i1 %.not.i.i164, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i64 -7618357900223974896, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !564
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 16), i8 0, i64 36, i1 false), !noalias !564
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5boost5beast4http6detail19http_error_categoryE, i64 16), ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !564
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat) #48, !noalias !564
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.pv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !564
  %i.pw = and i64 %i.pv, -2
  %switch.i.i.i.i161 = icmp eq i64 %i.pw, -5572340897628102704
  br i1 %switch.i.i.i.i161, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165.thread, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165: ; preds = %bb.bz
  %i.px = load ptr, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !564
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 48
  %i.pz = load ptr, ptr %i.py, align 8, !noalias !564
  %i.qa = tail call noundef zeroext i1 %i.pz(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i32 noundef 20) #48, !noalias !564, !inline_history !264
  br i1 %i.qa, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165.thread, label %bb.ca

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165.thread: ; preds = %bb.bz, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165.thread
  %i.qb = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165 ]
  %i.qc = or disjoint i64 %i.qb, ptrtoint (ptr @_ZZN5boost5beast4http12basic_parserILb1EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEE7loc_bb__1 to i64)
  store i64 20, ptr %4, align 8
  %.sroa.5271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5271.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.qc, ptr %.sroa.5.0..sroa_idx.i170, align 8, !tbaa !16
  br label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit

bb.cb:                                            ; preds = %bb.bv
  %i.qd = or i32 %i.pe, 8192
  store i32 %i.qd, ptr %i.pd, align 4, !tbaa !407
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.qe = getelementptr i8, ptr %2, i64 %3        ; 45 uses
  %.not8.i.i.i.i173427 = icmp samesign eq i64 %3, 0
  br i1 %.not8.i.i.i.i173427, label %_ZNK5boost5beast4http10token_list3endEv.exit, label %.lr.ph.i.i.i.i174.preheader

.lr.ph.i.i.i.i174.preheader:                      ; preds = %bb.cb, %bb.ce
  %i.qf = phi ptr [ %i.rb, %bb.ce ], [ %2, %bb.cb ] ; 3 uses
  br label %.lr.ph.i.i.i.i174

.lr.ph.i.i.i.i174:                                ; preds = %.lr.ph.i.i.i.i174.preheader, %bb.cc
  %i.qg = phi ptr [ %i.qi, %bb.cc ], [ %i.qf, %.lr.ph.i.i.i.i174.preheader ] ; 7 uses
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !20, !noalias !567 ; 3 uses
  switch i8 %i.qh, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176 [
    i8 32, label %bb.cc
    i8 9, label %bb.cc
  ]

bb.cc:                                            ; preds = %.lr.ph.i.i.i.i174, %.lr.ph.i.i.i.i174
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 1 ; 2 uses
  %.not.i.i.i.i175 = icmp eq ptr %i.qi, %i.qe
  br i1 %.not.i.i.i.i175, label %_ZNK5boost5beast4http10token_list3endEv.exit, label %.lr.ph.i.i.i.i174, !llvm.loop !385

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176: ; preds = %.lr.ph.i.i.i.i174
  %i.qj = icmp eq ptr %i.qg, %i.qe
  br i1 %i.qj, label %_ZNK5boost5beast4http10token_list3endEv.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176
  %i.qk = zext i8 %i.qh to i64
  %i.ql = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !20, !noalias !567
  %.not.i.i.i177 = icmp eq i8 %i.qm, 0
  br i1 %.not.i.i.i177, label %bb.ce, label %.preheader.i.i.i178.preheader

.preheader.i.i.i178.preheader:                    ; preds = %bb.cd
  %i.qn = getelementptr i8, ptr %i.qf, i64 %3
  %scevgep = getelementptr i8, ptr %i.qn, i64 %i.a
  %.lcssa503504 = ptrtoaddr ptr %i.qf to i64
  %i.qo = sub i64 0, %.lcssa503504
  %scevgep505.a = getelementptr i8, ptr %scevgep, i64 %i.qo ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qg, i64 1 ; 2 uses
  %i.qq = icmp eq ptr %i.qp, %i.qe
  br i1 %i.qq, label %.preheader.i.i.i178._crit_edge, label %.lr.ph679

.preheader.i.i.i178:                              ; preds = %.lr.ph679
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qt, i64 1 ; 2 uses
  %i.qs = icmp eq ptr %i.qr, %i.qe
  br i1 %i.qs, label %.preheader.i.i.i178._crit_edge, label %.lr.ph679, !llvm.loop !570

.lr.ph679:                                        ; preds = %.preheader.i.i.i178.preheader, %.preheader.i.i.i178
  %i.qt = phi ptr [ %i.qr, %.preheader.i.i.i178 ], [ %i.qp, %.preheader.i.i.i178.preheader ] ; 4 uses
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !20, !noalias !567
  %i.qv = zext i8 %i.qu to i64
  %i.qw = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !20, !noalias !567
  %.not10.i.i.i = icmp eq i8 %i.qx, 0
  br i1 %.not10.i.i.i, label %._crit_edge680, label %.preheader.i.i.i178, !llvm.loop !570

._crit_edge680:                                   ; preds = %.lr.ph679
  br label %.preheader.i.i.i178._crit_edge, !llvm.loop !570

.preheader.i.i.i178._crit_edge:                   ; preds = %.preheader.i.i.i178, %._crit_edge680, %.preheader.i.i.i178.preheader
  %.lcssa495 = phi ptr [ %i.qt, %._crit_edge680 ], [ %scevgep505.a, %.preheader.i.i.i178.preheader ], [ %scevgep505.a, %.preheader.i.i.i178 ]
  %.lcssa.i.i.i179 = phi ptr [ %i.qt, %._crit_edge680 ], [ %i.qe, %.preheader.i.i.i178.preheader ], [ %i.qe, %.preheader.i.i.i178 ]
  %i.qy = ptrtoint ptr %.lcssa.i.i.i179 to i64
  %i.qz = ptrtoint ptr %i.qg to i64
  %i.ra = sub i64 %i.qy, %i.qz
  br label %_ZNK5boost5beast4http10token_list3endEv.exit

bb.ce:                                            ; preds = %bb.cd
  %.not9.i.i.i = icmp ne i8 %i.qh, 44
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qg, i64 1 ; 2 uses
  %.not8.i.i.i.i173 = icmp eq ptr %i.rb, %i.qe
  %or.cond448 = select i1 %.not9.i.i.i, i1 true, i1 %.not8.i.i.i.i173
  br i1 %or.cond448, label %_ZNK5boost5beast4http10token_list3endEv.exit, label %.lr.ph.i.i.i.i174.preheader, !llvm.loop !571

_ZNK5boost5beast4http10token_list3endEv.exit:     ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176, %bb.ce, %bb.cc, %bb.cb, %.preheader.i.i.i178._crit_edge
  %.sroa.0248.0 = phi ptr [ %i.qg, %.preheader.i.i.i178._crit_edge ], [ null, %bb.cb ], [ null, %bb.cc ], [ null, %bb.ce ], [ null, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176 ]
  %.sroa.3249.0 = phi i64 [ %i.ra, %.preheader.i.i.i178._crit_edge ], [ 0, %bb.cb ], [ 0, %bb.cc ], [ 0, %bb.ce ], [ 0, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176 ]
  %.sroa.9251.0 = phi ptr [ %2, %.preheader.i.i.i178._crit_edge ], [ %i.qe, %bb.cb ], [ %i.qe, %bb.cc ], [ %i.qe, %bb.ce ], [ %i.qe, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176 ] ; 2 uses
  %.sroa.4250.0 = phi ptr [ %.lcssa495, %.preheader.i.i.i178._crit_edge ], [ %i.qe, %bb.cb ], [ %i.qe, %bb.cc ], [ %i.qe, %bb.ce ], [ %i.qe, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176 ] ; 2 uses
  %.sroa.5.0.copyload52.i.i = ptrtoaddr ptr %i.qe to i64 ; 4 uses
  %i.rc = icmp ne ptr %i.qe, %.sroa.4250.0
  %i.rd = icmp ne ptr %i.qe, %.sroa.9251.0
  %or.cond.not13.i32.i.i = or i1 %i.rc, %i.rd
  br i1 %or.cond.not13.i32.i.i, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread.i.i.i, label %_ZNK5boost5beast4http10token_list3endEv.exit210

_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread.i.i.i: ; preds = %_ZNK5boost5beast4http10token_list3endEv.exit, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i
  %.sroa.9.037.i.i = phi ptr [ %.sroa.9.1.i.i, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i ], [ %.sroa.4250.0, %_ZNK5boost5beast4http10token_list3endEv.exit ] ; 11 uses
  %.sroa.16.036.i.i = phi ptr [ %.sroa.16.1.i.i, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i ], [ %.sroa.9251.0, %_ZNK5boost5beast4http10token_list3endEv.exit ] ; 9 uses
  %.sroa.7.035.i.i = phi i64 [ %.sroa.7.1.i.i, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i ], [ %.sroa.3249.0, %_ZNK5boost5beast4http10token_list3endEv.exit ]
  %.sroa.0.034.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i ], [ %.sroa.0248.0, %_ZNK5boost5beast4http10token_list3endEv.exit ] ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.7.035.i.i, 7
  br i1 %.not.i.i.i.i.i.i, label %.preheader21.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i

.preheader21.i.preheader.i.i.i.i.i:               ; preds = %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread.i.i.i
  %i.re = load i8, ptr %.sroa.0.034.i.i, align 1, !tbaa !20, !noalias !572
  %.not15.i.i.i.i.i.i = icmp eq i8 %i.re, 99
  br i1 %.not15.i.i.i.i.i.i, label %.preheader21.i.1.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader21.i.1.i.i.i.i.i:                       ; preds = %.preheader21.i.preheader.i.i.i.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 1 ; 2 uses
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !20, !noalias !572
  %.not15.i.1.i.i.i.i.i = icmp eq i8 %i.rg, 104
  br i1 %.not15.i.1.i.i.i.i.i, label %.preheader21.i.2.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader21.i.2.i.i.i.i.i:                       ; preds = %.preheader21.i.1.i.i.i.i.i
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 2 ; 2 uses
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !20, !noalias !572
  %.not15.i.2.i.i.i.i.i = icmp eq i8 %i.ri, 117
  br i1 %.not15.i.2.i.i.i.i.i, label %.preheader21.i.3.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader21.i.3.i.i.i.i.i:                       ; preds = %.preheader21.i.2.i.i.i.i.i
  %i.rj = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 3 ; 2 uses
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !20, !noalias !572
  %.not15.i.3.i.i.i.i.i = icmp eq i8 %i.rk, 110
  br i1 %.not15.i.3.i.i.i.i.i, label %.preheader21.i.4.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader21.i.4.i.i.i.i.i:                       ; preds = %.preheader21.i.3.i.i.i.i.i
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 4 ; 2 uses
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !20, !noalias !572
  %.not15.i.4.i.i.i.i.i = icmp eq i8 %i.rm, 107
  br i1 %.not15.i.4.i.i.i.i.i, label %.preheader21.i.5.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader21.i.5.i.i.i.i.i:                       ; preds = %.preheader21.i.4.i.i.i.i.i
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 5 ; 2 uses
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !20, !noalias !572
  %.not15.i.5.i.i.i.i.i = icmp eq i8 %i.ro, 101
  br i1 %.not15.i.5.i.i.i.i.i, label %.preheader21.i.6.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader21.i.6.i.i.i.i.i:                       ; preds = %.preheader21.i.5.i.i.i.i.i
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 6 ; 2 uses
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !20, !noalias !572
  %.not15.i.6.i.i.i.i.i = icmp eq i8 %i.rq, 100
  br i1 %.not15.i.6.i.i.i.i.i, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader21.i.preheader.i.i.i.i.i, %.preheader21.i.1.i.i.i.i.i, %.preheader21.i.2.i.i.i.i.i, %.preheader21.i.3.i.i.i.i.i, %.preheader21.i.4.i.i.i.i.i, %.preheader21.i.5.i.i.i.i.i, %.preheader21.i.6.i.i.i.i.i
  %.not17.i.i.i.i.i.i = phi i1 [ true, %.preheader21.i.6.i.i.i.i.i ], [ false, %.preheader21.i.5.i.i.i.i.i ], [ false, %.preheader21.i.4.i.i.i.i.i ], [ false, %.preheader21.i.3.i.i.i.i.i ], [ false, %.preheader21.i.2.i.i.i.i.i ], [ false, %.preheader21.i.1.i.i.i.i.i ], [ false, %.preheader21.i.preheader.i.i.i.i.i ]
  %.not17.i.i.i.i.i.i.1 = phi i1 [ false, %.preheader21.i.6.i.i.i.i.i ], [ true, %.preheader21.i.5.i.i.i.i.i ], [ false, %.preheader21.i.4.i.i.i.i.i ], [ false, %.preheader21.i.3.i.i.i.i.i ], [ false, %.preheader21.i.2.i.i.i.i.i ], [ false, %.preheader21.i.1.i.i.i.i.i ], [ false, %.preheader21.i.preheader.i.i.i.i.i ]
  %.not17.i.i.i.i.i.i.2 = phi i1 [ false, %.preheader21.i.6.i.i.i.i.i ], [ false, %.preheader21.i.5.i.i.i.i.i ], [ true, %.preheader21.i.4.i.i.i.i.i ], [ false, %.preheader21.i.3.i.i.i.i.i ], [ false, %.preheader21.i.2.i.i.i.i.i ], [ false, %.preheader21.i.1.i.i.i.i.i ], [ false, %.preheader21.i.preheader.i.i.i.i.i ]
  %.not17.i.i.i.i.i.i.3 = phi i1 [ false, %.preheader21.i.6.i.i.i.i.i ], [ false, %.preheader21.i.5.i.i.i.i.i ], [ false, %.preheader21.i.4.i.i.i.i.i ], [ true, %.preheader21.i.3.i.i.i.i.i ], [ false, %.preheader21.i.2.i.i.i.i.i ], [ false, %.preheader21.i.1.i.i.i.i.i ], [ false, %.preheader21.i.preheader.i.i.i.i.i ]
  %.not17.i.i.i.i.i.i.4 = phi i1 [ false, %.preheader21.i.6.i.i.i.i.i ], [ false, %.preheader21.i.5.i.i.i.i.i ], [ false, %.preheader21.i.4.i.i.i.i.i ], [ false, %.preheader21.i.3.i.i.i.i.i ], [ true, %.preheader21.i.2.i.i.i.i.i ], [ false, %.preheader21.i.1.i.i.i.i.i ], [ false, %.preheader21.i.preheader.i.i.i.i.i ]
  %.not17.i.i.i.i.i.i.5 = phi i1 [ false, %.preheader21.i.6.i.i.i.i.i ], [ false, %.preheader21.i.5.i.i.i.i.i ], [ false, %.preheader21.i.4.i.i.i.i.i ], [ false, %.preheader21.i.3.i.i.i.i.i ], [ false, %.preheader21.i.2.i.i.i.i.i ], [ true, %.preheader21.i.1.i.i.i.i.i ], [ false, %.preheader21.i.preheader.i.i.i.i.i ]
  %.19.i.i.i.i.i.i.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.430, i64 6), %.preheader21.i.6.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @.str.430, i64 5), %.preheader21.i.5.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @.str.430, i64 4), %.preheader21.i.4.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @.str.430, i64 3), %.preheader21.i.3.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @.str.430, i64 2), %.preheader21.i.2.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @.str.430, i64 1), %.preheader21.i.1.i.i.i.i.i ], [ @.str.430, %.preheader21.i.preheader.i.i.i.i.i ] ; 7 uses
  %.1.i.i.i.i.i.i.ph = phi ptr [ %i.rp, %.preheader21.i.6.i.i.i.i.i ], [ %i.rn, %.preheader21.i.5.i.i.i.i.i ], [ %i.rl, %.preheader21.i.4.i.i.i.i.i ], [ %i.rj, %.preheader21.i.3.i.i.i.i.i ], [ %i.rh, %.preheader21.i.2.i.i.i.i.i ], [ %i.rf, %.preheader21.i.1.i.i.i.i.i ], [ %.sroa.0.034.i.i, %.preheader21.i.preheader.i.i.i.i.i ] ; 7 uses
  %i.rr = load i8, ptr %.19.i.i.i.i.i.i.ph, align 1, !tbaa !20, !noalias !572 ; 3 uses
  %i.rs = sext i8 %i.rr to i32
  %i.rt = add nsw i32 %i.rs, -65
  %i.ru = icmp ult i32 %i.rt, 26
  %i.rv = add i8 %i.rr, 32
  %i.rw = select i1 %i.ru, i8 %i.rv, i8 %i.rr
  %i.rx = load i8, ptr %.1.i.i.i.i.i.i.ph, align 1, !tbaa !20, !noalias !572 ; 3 uses
  %i.ry = sext i8 %i.rx to i32
  %i.rz = add nsw i32 %i.ry, -65
  %i.sa = icmp ult i32 %i.rz, 26
  %i.sb = add i8 %i.rx, 32
  %i.sc = select i1 %i.sa, i8 %i.sb, i8 %i.rx
  %.not16.i.i.i.i.i.i = icmp eq i8 %i.rw, %i.sc
  br i1 %.not16.i.i.i.i.i.i, label %bb.cf, label %.loopexit.i.i.i

bb.cf:                                            ; preds = %.preheader.i.i.i.i.i.i
  br i1 %.not17.i.i.i.i.i.i, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.preheader.i.i.i.i.i.i.1

.preheader.i.i.i.i.i.i.1:                         ; preds = %bb.cf
  %i.sd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.ph, i64 1
  %i.se = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.ph, i64 1
  %i.sf = load i8, ptr %i.sd, align 1, !tbaa !20, !noalias !572 ; 3 uses
  %i.sg = sext i8 %i.sf to i32
  %i.sh = add nsw i32 %i.sg, -65
  %i.si = icmp ult i32 %i.sh, 26
  %i.sj = add i8 %i.sf, 32
  %i.sk = select i1 %i.si, i8 %i.sj, i8 %i.sf
  %i.sl = load i8, ptr %i.se, align 1, !tbaa !20, !noalias !572 ; 3 uses
  %i.sm = sext i8 %i.sl to i32
  %i.sn = add nsw i32 %i.sm, -65
  %i.so = icmp ult i32 %i.sn, 26
  %i.sp = add i8 %i.sl, 32
  %i.sq = select i1 %i.so, i8 %i.sp, i8 %i.sl
  %.not16.i.i.i.i.i.i.1 = icmp eq i8 %i.sk, %i.sq
  br i1 %.not16.i.i.i.i.i.i.1, label %bb.cg, label %.loopexit.i.i.i

bb.cg:                                            ; preds = %.preheader.i.i.i.i.i.i.1
  br i1 %.not17.i.i.i.i.i.i.1, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.preheader.i.i.i.i.i.i.2

.preheader.i.i.i.i.i.i.2:                         ; preds = %bb.cg
  %i.sr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.ph, i64 2
  %i.ss = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.ph, i64 2
  %i.st = load i8, ptr %i.sr, align 1, !tbaa !20, !noalias !572 ; 3 uses
  %i.su = sext i8 %i.st to i32
  %i.sv = add nsw i32 %i.su, -65
  %i.sw = icmp ult i32 %i.sv, 26
  %i.sx = add i8 %i.st, 32
  %i.sy = select i1 %i.sw, i8 %i.sx, i8 %i.st
  %i.sz = load i8, ptr %i.ss, align 1, !tbaa !20, !noalias !572 ; 3 uses
  %i.ta = sext i8 %i.sz to i32
  %i.tb = add nsw i32 %i.ta, -65
  %i.tc = icmp ult i32 %i.tb, 26
  %i.td = add i8 %i.sz, 32
  %i.te = select i1 %i.tc, i8 %i.td, i8 %i.sz
  %.not16.i.i.i.i.i.i.2 = icmp eq i8 %i.sy, %i.te
  br i1 %.not16.i.i.i.i.i.i.2, label %bb.ch, label %.loopexit.i.i.i

bb.ch:                                            ; preds = %.preheader.i.i.i.i.i.i.2
  br i1 %.not17.i.i.i.i.i.i.2, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.preheader.i.i.i.i.i.i.3

.preheader.i.i.i.i.i.i.3:                         ; preds = %bb.ch
  %i.tf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.ph, i64 3
  %i.tg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.ph, i64 3
  %i.th = load i8, ptr %i.tf, align 1, !tbaa !20, !noalias !572 ; 3 uses
  %i.ti = sext i8 %i.th to i32
  %i.tj = add nsw i32 %i.ti, -65
  %i.tk = icmp ult i32 %i.tj, 26
  %i.tl = add i8 %i.th, 32
  %i.tm = select i1 %i.tk, i8 %i.tl, i8 %i.th
  %i.tn = load i8, ptr %i.tg, align 1, !tbaa !20, !noalias !572 ; 3 uses
  %i.to = sext i8 %i.tn to i32
  %i.tp = add nsw i32 %i.to, -65
  %i.tq = icmp ult i32 %i.tp, 26
  %i.tr = add i8 %i.tn, 32
  %i.ts = select i1 %i.tq, i8 %i.tr, i8 %i.tn
  %.not16.i.i.i.i.i.i.3 = icmp eq i8 %i.tm, %i.ts
  br i1 %.not16.i.i.i.i.i.i.3, label %bb.ci, label %.loopexit.i.i.i

bb.ci:                                            ; preds = %.preheader.i.i.i.i.i.i.3
  br i1 %.not17.i.i.i.i.i.i.3, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.preheader.i.i.i.i.i.i.4

.preheader.i.i.i.i.i.i.4:                         ; preds = %bb.ci
  %i.tt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.ph, i64 4
  %i.tu = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.ph, i64 4
  %i.tv = load i8, ptr %i.tt, align 1, !tbaa !20, !noalias !572 ; 3 uses
  %i.tw = sext i8 %i.tv to i32
  %i.tx = add nsw i32 %i.tw, -65
  %i.ty = icmp ult i32 %i.tx, 26
  %i.tz = add i8 %i.tv, 32
  %i.ua = select i1 %i.ty, i8 %i.tz, i8 %i.tv
  %i.ub = load i8, ptr %i.tu, align 1, !tbaa !20, !noalias !572 ; 3 uses
  %i.uc = sext i8 %i.ub to i32
  %i.ud = add nsw i32 %i.uc, -65
  %i.ue = icmp ult i32 %i.ud, 26
  %i.uf = add i8 %i.ub, 32
  %i.ug = select i1 %i.ue, i8 %i.uf, i8 %i.ub
  %.not16.i.i.i.i.i.i.4 = icmp eq i8 %i.ua, %i.ug
  br i1 %.not16.i.i.i.i.i.i.4, label %bb.cj, label %.loopexit.i.i.i

bb.cj:                                            ; preds = %.preheader.i.i.i.i.i.i.4
  br i1 %.not17.i.i.i.i.i.i.4, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.preheader.i.i.i.i.i.i.5

.preheader.i.i.i.i.i.i.5:                         ; preds = %bb.cj
  %i.uh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.ph, i64 5
  %i.ui = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.ph, i64 5
  %i.uj = load i8, ptr %i.uh, align 1, !tbaa !20, !noalias !572 ; 3 uses
  %i.uk = sext i8 %i.uj to i32
  %i.ul = add nsw i32 %i.uk, -65
  %i.um = icmp ult i32 %i.ul, 26
  %i.un = add i8 %i.uj, 32
  %i.uo = select i1 %i.um, i8 %i.un, i8 %i.uj
  %i.up = load i8, ptr %i.ui, align 1, !tbaa !20, !noalias !572 ; 3 uses
  %i.uq = sext i8 %i.up to i32
  %i.ur = add nsw i32 %i.uq, -65
  %i.us = icmp ult i32 %i.ur, 26
  %i.ut = add i8 %i.up, 32
  %i.uu = select i1 %i.us, i8 %i.ut, i8 %i.up
  %.not16.i.i.i.i.i.i.5 = icmp eq i8 %i.uo, %i.uu
  br i1 %.not16.i.i.i.i.i.i.5, label %bb.ck, label %.loopexit.i.i.i

bb.ck:                                            ; preds = %.preheader.i.i.i.i.i.i.5
  br i1 %.not17.i.i.i.i.i.i.5, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.preheader.i.i.i.i.i.i.6

.preheader.i.i.i.i.i.i.6:                         ; preds = %bb.ck
  %i.uv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.ph, i64 6
  %i.uw = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.ph, i64 6
  %i.ux = load i8, ptr %i.uv, align 1, !tbaa !20, !noalias !572 ; 3 uses
  %i.uy = sext i8 %i.ux to i32
  %i.uz = add nsw i32 %i.uy, -65
  %i.va = icmp ult i32 %i.uz, 26
  %i.vb = add i8 %i.ux, 32
  %i.vc = select i1 %i.va, i8 %i.vb, i8 %i.ux
  %i.vd = load i8, ptr %i.uw, align 1, !tbaa !20, !noalias !572 ; 3 uses
  %i.ve = sext i8 %i.vd to i32
  %i.vf = add nsw i32 %i.ve, -65
  %i.vg = icmp ult i32 %i.vf, 26
  %i.vh = add i8 %i.vd, 32
  %i.vi = select i1 %i.vg, i8 %i.vh, i8 %i.vd
  %.not16.i.i.i.i.i.i.6 = icmp eq i8 %i.vc, %i.vi
  br i1 %.not16.i.i.i.i.i.i.6, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.1, %.preheader.i.i.i.i.i.i.2, %.preheader.i.i.i.i.i.i.3, %.preheader.i.i.i.i.i.i.4, %.preheader.i.i.i.i.i.i.5, %.preheader.i.i.i.i.i.i.6, %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread.i.i.i
  %i.vj = icmp ne ptr %.sroa.9.037.i.i, %.sroa.16.036.i.i
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cq, %.loopexit.i.i.i
  %i.vk = phi ptr [ %.sroa.9.037.i.i, %.loopexit.i.i.i ], [ %i.wi, %bb.cq ] ; 5 uses
  %.06.i.i.i.i.i = phi i1 [ %i.vj, %.loopexit.i.i.i ], [ false, %bb.cq ]
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.vk, %i.qe
  br i1 %.not8.i.i.i.i.i.i, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %bb.cl
  %i.vl = ptrtoaddr ptr %i.vk to i64
  %scevgep.i.i = getelementptr i8, ptr %i.vk, i64 %.sroa.5.0.copyload52.i.i
  %i.vm = sub i64 0, %i.vl
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.vm
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cm, %.lr.ph.i.i.i.i.preheader.i.i
  %i.vn = phi ptr [ %i.vp, %bb.cm ], [ %i.vk, %.lr.ph.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !20, !noalias !572
  switch i8 %i.vo, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i [
    i8 32, label %bb.cm
    i8 9, label %bb.cm
  ]

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 1 ; 2 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.vp, %i.qe
  br i1 %.not.i.i.i1.i.i.i, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !385

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i: ; preds = %bb.cm, %.lr.ph.i.i.i.i.i.i, %bb.cl
  %.promoted22.i.i.i.i.i = phi ptr [ %i.vk, %bb.cl ], [ %i.vn, %.lr.ph.i.i.i.i.i.i ], [ %scevgep53.i.i, %bb.cm ] ; 8 uses
  %i.vq = icmp eq ptr %.promoted22.i.i.i.i.i, %i.qe
  br i1 %i.vq, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i
  %i.vr = load i8, ptr %.promoted22.i.i.i.i.i, align 1, !tbaa !20, !noalias !572 ; 2 uses
  %i.vs = zext i8 %i.vr to i64
  %i.vt = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.vs
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !20, !noalias !572
  %.not.i.i.i.i.i196 = icmp eq i8 %i.vu, 0
  br i1 %.not.i.i.i.i.i196, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  br i1 %.06.i.i.i.i.i, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i, label %.preheader.i.i.i.preheader.i.i

.preheader.i.i.i.preheader.i.i:                   ; preds = %bb.co
  %.promoted22.i.i.i.lcssa5456.i.i = ptrtoaddr ptr %.promoted22.i.i.i.i.i to i64
  %scevgep55.i.i = getelementptr i8, ptr %.promoted22.i.i.i.i.i, i64 %.sroa.5.0.copyload52.i.i
  %i.vv = sub i64 0, %.promoted22.i.i.i.lcssa5456.i.i
  %scevgep57.i.i = getelementptr i8, ptr %scevgep55.i.i, i64 %i.vv ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.promoted22.i.i.i.i.i, i64 1 ; 2 uses
  %i.vx = icmp eq ptr %i.vw, %i.qe
  br i1 %i.vx, label %.preheader.i.i.i.i.i._crit_edge, label %.lr.ph684

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph684
  %i.vy = getelementptr inbounds nuw i8, ptr %i.wa, i64 1 ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.qe
  br i1 %i.vz, label %.preheader.i.i.i.i.i._crit_edge, label %.lr.ph684, !llvm.loop !570

.lr.ph684:                                        ; preds = %.preheader.i.i.i.preheader.i.i, %.preheader.i.i.i.i.i
  %i.wa = phi ptr [ %i.vy, %.preheader.i.i.i.i.i ], [ %i.vw, %.preheader.i.i.i.preheader.i.i ] ; 4 uses
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !20, !noalias !572
  %i.wc = zext i8 %i.wb to i64
  %i.wd = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.wc
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !20, !noalias !572
  %.not10.i.i.i.i.i = icmp eq i8 %i.we, 0
  br i1 %.not10.i.i.i.i.i, label %._crit_edge685, label %.preheader.i.i.i.i.i, !llvm.loop !570

._crit_edge685:                                   ; preds = %.lr.ph684
  br label %.preheader.i.i.i.i.i._crit_edge, !llvm.loop !570

.preheader.i.i.i.i.i._crit_edge:                  ; preds = %.preheader.i.i.i.i.i, %._crit_edge685, %.preheader.i.i.i.preheader.i.i
  %.lcssa.i.i = phi ptr [ %i.wa, %._crit_edge685 ], [ %scevgep57.i.i, %.preheader.i.i.i.preheader.i.i ], [ %scevgep57.i.i, %.preheader.i.i.i.i.i ]
  %.lcssa.i.i2.i.i.i = phi ptr [ %i.wa, %._crit_edge685 ], [ %i.qe, %.preheader.i.i.i.preheader.i.i ], [ %i.qe, %.preheader.i.i.i.i.i ]
  %i.wf = ptrtoint ptr %.lcssa.i.i2.i.i.i to i64
  %i.wg = ptrtoint ptr %.promoted22.i.i.i.i.i to i64
  %i.wh = sub i64 %i.wf, %i.wg
  br label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i

bb.cp:                                            ; preds = %bb.cn
  %.not9.i.i.i.i.i = icmp eq i8 %i.vr, 44
  br i1 %.not9.i.i.i.i.i, label %bb.cq, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.wi = getelementptr inbounds nuw i8, ptr %.promoted22.i.i.i.i.i, i64 1
  br label %bb.cl, !llvm.loop !571

_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i: ; preds = %bb.cp, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i, %.preheader.i.i.i.i.i._crit_edge, %bb.co
  %.sroa.0.1.i.i = phi ptr [ %.promoted22.i.i.i.i.i, %.preheader.i.i.i.i.i._crit_edge ], [ null, %bb.co ], [ null, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i ], [ null, %bb.cp ]
  %.sroa.7.1.i.i = phi i64 [ %i.wh, %.preheader.i.i.i.i.i._crit_edge ], [ 0, %bb.co ], [ 0, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i ], [ 0, %bb.cp ]
  %.sroa.16.1.i.i = phi ptr [ %.sroa.9.037.i.i, %.preheader.i.i.i.i.i._crit_edge ], [ %i.qe, %bb.co ], [ %i.qe, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i ], [ %i.qe, %bb.cp ] ; 2 uses
  %.sroa.9.1.i.i = phi ptr [ %.lcssa.i.i, %.preheader.i.i.i.i.i._crit_edge ], [ %i.qe, %bb.co ], [ %i.qe, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i ], [ %i.qe, %bb.cp ] ; 3 uses
  %i.wj = icmp ne ptr %i.qe, %.sroa.9.1.i.i
  %i.wk = icmp ne ptr %i.qe, %.sroa.16.1.i.i
  %or.cond.not13.i.i.i = or i1 %i.wk, %i.wj
  br i1 %or.cond.not13.i.i.i, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread.i.i.i, label %_ZNK5boost5beast4http10token_list3endEv.exit210, !llvm.loop !579

_ZNK5boost5beast4http10token_list3endEv.exit210:  ; preds = %.preheader21.i.6.i.i.i.i.i, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i, %.preheader.i.i.i.i.i.i.6, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %_ZNK5boost5beast4http10token_list3endEv.exit
  %.sroa.16.027.i.i = phi ptr [ %.sroa.16.036.i.i, %.preheader.i.i.i.i.i.i.6 ], [ %i.qe, %_ZNK5boost5beast4http10token_list3endEv.exit ], [ %.sroa.16.036.i.i, %bb.ck ], [ %.sroa.16.036.i.i, %bb.cj ], [ %.sroa.16.036.i.i, %bb.ci ], [ %.sroa.16.036.i.i, %bb.ch ], [ %.sroa.16.036.i.i, %bb.cg ], [ %.sroa.16.036.i.i, %bb.cf ], [ %.sroa.16.036.i.i, %.preheader21.i.6.i.i.i.i.i ], [ %i.qe, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i ] ; 2 uses
  %.sroa.9.025.i.i = phi ptr [ %.sroa.9.037.i.i, %.preheader.i.i.i.i.i.i.6 ], [ %i.qe, %_ZNK5boost5beast4http10token_list3endEv.exit ], [ %.sroa.9.037.i.i, %bb.ck ], [ %.sroa.9.037.i.i, %bb.cj ], [ %.sroa.9.037.i.i, %bb.ci ], [ %.sroa.9.037.i.i, %bb.ch ], [ %.sroa.9.037.i.i, %bb.cg ], [ %.sroa.9.037.i.i, %bb.cf ], [ %.sroa.9.037.i.i, %.preheader21.i.6.i.i.i.i.i ], [ %.sroa.9.1.i.i, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i ] ; 4 uses
  %i.wl = icmp eq ptr %i.qe, %.sroa.9.025.i.i
  %i.wm = icmp eq ptr %i.qe, %.sroa.16.027.i.i
  %or.cond = and i1 %i.wl, %i.wm
  br i1 %or.cond, label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZNK5boost5beast4http10token_list3endEv.exit210
  %i.wn = icmp ne ptr %.sroa.9.025.i.i, %.sroa.16.027.i.i
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cw, %.preheader.preheader
  %i.wo = phi ptr [ %.sroa.9.025.i.i, %.preheader.preheader ], [ %i.xi, %bb.cw ] ; 5 uses
  %.06.i.i.i = phi i1 [ %i.wn, %.preheader.preheader ], [ false, %bb.cw ]
  %.not8.i.i.i.i213 = icmp eq ptr %i.wo, %i.qe
  br i1 %.not8.i.i.i.i213, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i216, label %.lr.ph.i.i.i.i214.preheader

.lr.ph.i.i.i.i214.preheader:                      ; preds = %bb.cr
  %i.wp = ptrtoaddr ptr %i.wo to i64
  %scevgep506.a = getelementptr i8, ptr %i.wo, i64 %.sroa.5.0.copyload52.i.i
  %i.wq = sub i64 0, %i.wp
  %scevgep507 = getelementptr i8, ptr %scevgep506.a, i64 %i.wq
  br label %.lr.ph.i.i.i.i214

.lr.ph.i.i.i.i214:                                ; preds = %.lr.ph.i.i.i.i214.preheader, %bb.cs
  %i.wr = phi ptr [ %i.wt, %bb.cs ], [ %i.wo, %.lr.ph.i.i.i.i214.preheader ] ; 3 uses
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !20, !noalias !580
  switch i8 %i.ws, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i216 [
    i8 32, label %bb.cs
    i8 9, label %bb.cs
  ]

bb.cs:                                            ; preds = %.lr.ph.i.i.i.i214, %.lr.ph.i.i.i.i214
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 1 ; 2 uses
  %.not.i.i.i.i215 = icmp eq ptr %i.wt, %i.qe
  br i1 %.not.i.i.i.i215, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i216, label %.lr.ph.i.i.i.i214, !llvm.loop !385

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i216: ; preds = %bb.cs, %.lr.ph.i.i.i.i214, %bb.cr
  %.promoted22.i.i.i = phi ptr [ %i.wo, %bb.cr ], [ %i.wr, %.lr.ph.i.i.i.i214 ], [ %scevgep507, %bb.cs ] ; 6 uses
  %i.wu = icmp eq ptr %.promoted22.i.i.i, %i.qe
  br i1 %i.wu, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i216
  %i.wv = load i8, ptr %.promoted22.i.i.i, align 1, !tbaa !20, !noalias !580 ; 2 uses
  %i.ww = zext i8 %i.wv to i64
  %i.wx = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !20, !noalias !580
  %.not.i.i.i217 = icmp eq i8 %i.wy, 0
  br i1 %.not.i.i.i217, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  br i1 %.06.i.i.i, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %.preheader.i.i.i218.preheader

.preheader.i.i.i218.preheader:                    ; preds = %bb.cu
  %.promoted22.i.i.i.lcssa508510 = ptrtoaddr ptr %.promoted22.i.i.i to i64
  %scevgep509 = getelementptr i8, ptr %.promoted22.i.i.i, i64 %.sroa.5.0.copyload52.i.i
  %9 = sub i64 0, %.promoted22.i.i.i.lcssa508510
  %scevgep511 = getelementptr i8, ptr %scevgep509, i64 %9 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.promoted22.i.i.i, i64 1 ; 2 uses
  %i.xa = icmp eq ptr %i.wz, %i.qe
  br i1 %i.xa, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i, label %.lr.ph690

.preheader.i.i.i218:                              ; preds = %.lr.ph690
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xd, i64 1 ; 2 uses
  %i.xc = icmp eq ptr %i.xb, %i.qe
  br i1 %i.xc, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i, label %.lr.ph690, !llvm.loop !570

.lr.ph690:                                        ; preds = %.preheader.i.i.i218.preheader, %.preheader.i.i.i218
  %i.xd = phi ptr [ %i.xb, %.preheader.i.i.i218 ], [ %i.wz, %.preheader.i.i.i218.preheader ] ; 3 uses
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !20, !noalias !580
  %i.xf = zext i8 %i.xe to i64
  %i.xg = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !20, !noalias !580
  %.not10.i.i.i219 = icmp eq i8 %i.xh, 0
  br i1 %.not10.i.i.i219, label %._ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i_crit_edge, label %.preheader.i.i.i218, !llvm.loop !570

bb.cv:                                            ; preds = %bb.ct
  %.not9.i.i.i222 = icmp eq i8 %i.wv, 44
  br i1 %.not9.i.i.i222, label %bb.cw, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit

bb.cw:                                            ; preds = %bb.cv
  %i.xi = getelementptr inbounds nuw i8, ptr %.promoted22.i.i.i, i64 1
  br label %bb.cr, !llvm.loop !571

._ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i_crit_edge: ; preds = %.lr.ph690
  br label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i, !llvm.loop !570

_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i: ; preds = %.preheader.i.i.i218, %._ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i_crit_edge, %.preheader.i.i.i218.preheader
  %.lcssa490 = phi ptr [ %i.xd, %._ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i_crit_edge ], [ %scevgep511, %.preheader.i.i.i218.preheader ], [ %scevgep511, %.preheader.i.i.i218 ]
  %10 = icmp eq ptr %i.qe, %.lcssa490
  %i.xj = icmp eq ptr %i.qe, %.sroa.9.025.i.i
  %11 = and i1 %i.xj, %10
  br i1 %11, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit

_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit: ; preds = %bb.cv, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i216, %bb.cu, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.xk, align 8, !tbaa !424
  %i.xl = load i32, ptr %i.pd, align 4, !tbaa !407
  %i.xm = or i32 %i.xl, 2048
  store i32 %i.xm, ptr %i.pd, align 4, !tbaa !407
  br label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit

bb.cx:                                            ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !407
  %i.xp = or i32 %i.xo, 4096
  store i32 %i.xp, ptr %i.xn, align 4, !tbaa !407
  br label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit

bb.cy:                                            ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit

_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit: ; preds = %_ZNK5boost5beast4http10token_list3endEv.exit210, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i, %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, %bb.cy, %bb.cx, %bb.ca, %bb.bu, %bb.bo, %bb.ad
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost5beast4http12basic_parserILb1EE13finish_headerERNS_6system10error_codeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !407  ; 6 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i16, ptr %i.d, align 4, !tbaa !511
  %.fr15 = freeze i16 %i.e                        ; 2 uses
  %i.f = add i16 %.fr15, -100
  %i.g = icmp ult i16 %i.f, 100
  br i1 %i.g, label %bb.c, label %switch.early.test

switch.early.test:                                ; preds = %bb.b
  switch i16 %.fr15, label %bb.d [
    i16 304, label %bb.c
    i16 204, label %bb.c
  ]

bb.c:                                             ; preds = %switch.early.test, %switch.early.test, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 11, ptr %i.h, align 8, !tbaa !396
  br label %bb.l

bb.d:                                             ; preds = %switch.early.test
  %i.i = and i32 %i.b, 1024
  %.not6 = icmp eq i32 %i.i, 0
  br i1 %.not6, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !424  ; 2 uses
  %.not8 = icmp eq i64 %i.k, 0
  br i1 %.not8, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = or i32 %i.b, 8
  store i32 %i.l, ptr %i.a, align 4, !tbaa !407
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 3, ptr %i.m, align 8, !tbaa !396
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !412, !range !260, !noundef !137
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ult i64 %i.r, %i.k
  %or.cond = select i1 %i.p, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 9, ptr noundef null) #48
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload4.i = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !16 ; 3 uses
  %switch.i.i = icmp ult i64 %.sroa.5.0.copyload4.i, 2
  %i.t = and i64 %.sroa.5.0.copyload4.i, 1
  %i.u = or disjoint i64 %i.t, ptrtoint (ptr @_ZZN5boost5beast4http12basic_parserILb1EE13finish_headerERNS_6system10error_codeESt17integral_constantIbLb0EEE7loc_bb_ to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5.0.copyload4.i, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 11, ptr %i.v, align 8, !tbaa !396
  br label %bb.l

bb.i:                                             ; preds = %bb.d
  %i.w = and i32 %i.b, 2048
  %.not7 = icmp eq i32 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br i1 %.not7, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = or i32 %i.b, 8
  store i32 %i.y, ptr %i.a, align 4, !tbaa !407
  store i32 7, ptr %i.x, align 8, !tbaa !396
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.z = or i32 %i.b, 40
  store i32 %i.z, ptr %i.a, align 4, !tbaa !407
  store i32 5, ptr %i.x, align 8, !tbaa !396
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.h, %bb.k, %bb.j, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.aa = load ptr, ptr %0, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !30 ; 2 uses
  %i.af = and i64 %i.ae, 1
  %.not.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread11, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp eq i64 %i.ae, 1
  br i1 %i.ag, label %_ZNK5boost6system10error_codecvbEv.exit, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.m
  %i.ah = load i32, ptr %1, align 8, !tbaa !332
  %.not16 = icmp eq i32 %i.ah, 0
  br i1 %.not16, label %_ZNK5boost6system10error_codecvbEv.exit.thread11, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread11: ; preds = %bb.l, %_ZNK5boost6system10error_codecvbEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !396
  %i.ak = icmp eq i32 %i.aj, 11
  br i1 %i.ak, label %bb.n, label %_ZNK5boost6system10error_codecvbEv.exit.thread

bb.n:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread11
  %i.al = load ptr, ptr %0, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.m, %_ZNK5boost6system10error_codecvbEv.exit, %bb.n, %_ZNK5boost6system10error_codecvbEv.exit.thread11, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5beast4http13validate_listINS1_6detail21opt_token_list_policyEEEbRKNS3_17basic_parsed_listIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !527, !noalias !583 ; 4 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !16, !noalias !583 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.2.0.copyload.i.i.i ; 10 uses
  %.not8.i.i.i.i.i35 = icmp samesign eq i64 %.sroa.2.0.copyload.i.i.i, 0
  br i1 %.not8.i.i.i.i.i35, label %_ZNK5boost5beast4http6detail17basic_parsed_listINS2_21opt_token_list_policyEE5beginEv.exit.thread, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.a, %bb.e
  %i.d = phi ptr [ %i.w, %bb.e ], [ %i.a, %bb.a ] ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.b
  %i.e = phi ptr [ %i.g, %bb.b ], [ %i.d, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !20, !noalias !583 ; 3 uses
  switch i8 %i.f, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost5beast4http6detail17basic_parsed_listINS2_21opt_token_list_policyEE5beginEv.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !385

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.h = icmp eq ptr %i.e, %i.c
  br i1 %i.h, label %_ZNK5boost5beast4http6detail17basic_parsed_listINS2_21opt_token_list_policyEE5beginEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i
  %i.i = zext i8 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20, !noalias !583
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.d, i64 %.sroa.2.0.copyload.i.i.i
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.b
  %.lcssa5658 = ptrtoaddr ptr %i.d to i64
  %i.m = sub i64 0, %.lcssa5658
  %scevgep59 = getelementptr i8, ptr %scevgep, i64 %i.m ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %_ZNK5boost5beast4http6detail17basic_parsed_listINS2_21opt_token_list_policyEE5beginEv.exit, label %.lr.ph114

.preheader.i.i.i.i:                               ; preds = %.lr.ph114
  %i.p = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNK5boost5beast4http6detail17basic_parsed_listINS2_21opt_token_list_policyEE5beginEv.exit, label %.lr.ph114, !llvm.loop !394

.lr.ph114:                                        ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %i.r = phi ptr [ %i.p, %.preheader.i.i.i.i ], [ %i.n, %.preheader.i.i.i.i.preheader ] ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !20, !noalias !583
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20, !noalias !583
  %.not23.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not23.i.i.i.i, label %.lr.ph.preheader, label %.preheader.i.i.i.i, !llvm.loop !394

bb.d:                                             ; preds = %bb.c
  %.not22.i.i.i.i = icmp eq i8 %i.f, 44
  br i1 %.not22.i.i.i.i, label %bb.e, label %_ZNK5boost5beast4http6detail17basic_parsed_listINS2_21opt_token_list_policyEE5beginEv.exit.thread

end_hunk_0
begin_hunk_1_@_ZN5boost5beast4http12basic_parserILb0EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeE:bb.a
  %i.oi = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !20
  %.not.i.i.i143 = icmp eq i8 %i.oj, 0
  br i1 %.not.i.i.i143, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  br i1 %.019.i.i.i137, label %_ZNK5boost5beast4http6detail21opt_token_list_policyclERNS_4core17basic_string_viewIcEERPKcS6_.exit.i.i148, label %.preheader.i.i.i144.preheader

.preheader.i.i.i144.preheader:                    ; preds = %bb.bi
  %i.ok = getelementptr inbounds nuw i8, ptr %.promoted41.i.i.i142, i64 1 ; 4 uses
  store ptr %i.ok, ptr %i.mk, align 8, !tbaa !187
  %i.ol = icmp eq ptr %i.ok, %i.oa
  br i1 %i.ol, label %.preheader.i.i.i144._crit_edge, label %.lr.ph693

.preheader.i.i.i144:                              ; preds = %.lr.ph693
  %i.om = getelementptr inbounds nuw i8, ptr %i.oo, i64 1 ; 4 uses
  store ptr %i.om, ptr %i.mk, align 8, !tbaa !187
  %i.on = icmp eq ptr %i.om, %i.oa
  br i1 %i.on, label %.preheader.i.i.i144._crit_edge, label %.lr.ph693, !llvm.loop !394

.lr.ph693:                                        ; preds = %.preheader.i.i.i144.preheader, %.preheader.i.i.i144
  %i.oo = phi ptr [ %i.om, %.preheader.i.i.i144 ], [ %i.ok, %.preheader.i.i.i144.preheader ] ; 4 uses
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !20
  %i.oq = zext i8 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !20
  %.not23.i.i.i145 = icmp eq i8 %i.os, 0
  br i1 %.not23.i.i.i145, label %._crit_edge694, label %.preheader.i.i.i144, !llvm.loop !394

._crit_edge694:                                   ; preds = %.lr.ph693
  br label %.preheader.i.i.i144._crit_edge, !llvm.loop !394

.preheader.i.i.i144._crit_edge:                   ; preds = %.preheader.i.i.i144, %._crit_edge694, %.preheader.i.i.i144.preheader
  %.lcssa658 = phi ptr [ %i.oo, %._crit_edge694 ], [ %i.ok, %.preheader.i.i.i144.preheader ], [ %i.om, %.preheader.i.i.i144 ]
  %.lcssa.i.i.i146 = phi ptr [ %i.oo, %._crit_edge694 ], [ %i.oa, %.preheader.i.i.i144.preheader ], [ %i.oa, %.preheader.i.i.i144 ]
  %i.ot = ptrtoint ptr %.lcssa.i.i.i146 to i64
  %i.ou = ptrtoint ptr %.promoted41.i.i.i142 to i64
  %i.ov = sub i64 %i.ot, %i.ou                    ; 2 uses
  store ptr %.promoted41.i.i.i142, ptr %i.mm, align 8, !tbaa !187
  store i64 %i.ov, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16
  br label %_ZN5boost5beast4http6detail17basic_parsed_listINS2_21opt_token_list_policyEE14const_iteratorppEv.exit150

bb.bj:                                            ; preds = %bb.bh
  %.not22.i.i.i149 = icmp eq i8 %i.og, 44
  br i1 %.not22.i.i.i149, label %bb.bk, label %_ZNK5boost5beast4http6detail21opt_token_list_policyclERNS_4core17basic_string_viewIcEERPKcS6_.exit.i.i148

bb.bk:                                            ; preds = %bb.bj
  %i.ow = getelementptr inbounds nuw i8, ptr %.promoted41.i.i.i142, i64 1 ; 2 uses
  store ptr %i.ow, ptr %i.mk, align 8, !tbaa !187
  br label %bb.be, !llvm.loop !395

_ZNK5boost5beast4http6detail21opt_token_list_policyclERNS_4core17basic_string_viewIcEERPKcS6_.exit.i.i148: ; preds = %bb.bj, %bb.bi
  store ptr null, ptr %i.mk, align 8, !tbaa !558
  store i8 1, ptr %i.mn, align 8, !tbaa !559
  br label %_ZN5boost5beast4http6detail17basic_parsed_listINS2_21opt_token_list_policyEE14const_iteratorppEv.exit150

_ZN5boost5beast4http6detail17basic_parsed_listINS2_21opt_token_list_policyEE14const_iteratorppEv.exit150: ; preds = %bb.bg, %.preheader.i.i.i144._crit_edge, %_ZNK5boost5beast4http6detail21opt_token_list_policyclERNS_4core17basic_string_viewIcEERPKcS6_.exit.i.i148
  %.sroa.4.0.copyload527 = phi i64 [ 0, %bb.bg ], [ %i.ov, %.preheader.i.i.i144._crit_edge ], [ 0, %_ZNK5boost5beast4http6detail21opt_token_list_policyclERNS_4core17basic_string_viewIcEERPKcS6_.exit.i.i148 ]
  %.sroa.06.0.copyload525 = phi ptr [ null, %bb.bg ], [ %.promoted41.i.i.i142, %.preheader.i.i.i144._crit_edge ], [ null, %_ZNK5boost5beast4http6detail21opt_token_list_policyclERNS_4core17basic_string_viewIcEERPKcS6_.exit.i.i148 ]
  %i.ox = phi ptr [ null, %bb.bg ], [ %.lcssa658, %.preheader.i.i.i144._crit_edge ], [ null, %_ZNK5boost5beast4http6detail21opt_token_list_policyclERNS_4core17basic_string_viewIcEERPKcS6_.exit.i.i148 ] ; 2 uses
  %i.oy = icmp ne ptr %i.ox, null
  %.not3.i117 = or i1 %i.mj, %i.oy
  br i1 %.not3.i117, label %bb.as, label %_ZN5boost8optionalImEaSEOS1_.exit.thread342

_ZN5boost8optionalImEaSEOS1_.exit:                ; preds = %_ZZN5boost5beast4http12basic_parserILb0EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE_clEv.exit127, %_ZZN5boost5beast4http12basic_parserILb0EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE0_clEv.exit
  %.sink630 = phi i64 [ 19, %_ZZN5boost5beast4http12basic_parserILb0EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE_clEv.exit127 ], [ 24, %_ZZN5boost5beast4http12basic_parserILb0EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE0_clEv.exit ]
  %.sink = phi i64 [ %i.nm, %_ZZN5boost5beast4http12basic_parserILb0EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE_clEv.exit127 ], [ %i.ny, %_ZZN5boost5beast4http12basic_parserILb0EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE0_clEv.exit ]
  store i64 %.sink630, ptr %4, align 8
  %.sroa.5.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..sroa_idx.i123, align 8
  %.sroa.5.0..sroa_idx.i1.i124 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.sink, ptr %.sroa.5.0..sroa_idx.i1.i124, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  br label %bb.bn

bb.bl:                                            ; preds = %_ZN5boost8optionalImEaSEOS1_.exit.thread342.thread, %_ZN5boost8optionalImEaSEOS1_.exit.thread342
  call void @_ZZN5boost5beast4http12basic_parserILb0EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.bn

bb.bm:                                            ; preds = %_ZN5boost8optionalImEaSEOS1_.exit.thread342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7286.1.ph, ptr %i.oz, align 8, !tbaa !608
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7286.1.ph, ptr %i.pa, align 8, !tbaa !724
  %i.pb = load i32, ptr %i.kg, align 4, !tbaa !593
  %i.pc = or i32 %i.pb, 1024
  store i32 %i.pc, ptr %i.kg, align 4, !tbaa !593
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN5boost8optionalImEaSEOS1_.exit, %bb.bl, %bb.bm, %_ZZN5boost5beast4http12basic_parserILb0EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE_clEv.exit115
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZZN5boost5beast4http12basic_parserILb0EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEENKUlvE_clEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  br label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit

bb.bp:                                            ; preds = %bb.a
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !593 ; 3 uses
  %i.pf = and i32 %i.pe, 2048
  %.not = icmp eq i32 %i.pf, 0
  br i1 %.not, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pg = load atomic i8, ptr @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat acquire, align 8, !noalias !725
  %i.ph = icmp eq i8 %i.pg, 0
  br i1 %i.ph, label %bb.br, label %bb.bt, !prof !188

bb.br:                                            ; preds = %bb.bq
  %i.pi = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat) #48, !noalias !725
  %.not.i.i154 = icmp eq i32 %i.pi, 0
  br i1 %.not.i.i154, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store i64 -7618357900223974896, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !725
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 16), i8 0, i64 36, i1 false), !noalias !725
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5boost5beast4http6detail19http_error_categoryE, i64 16), ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !725
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat) #48, !noalias !725
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %i.pj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !725
  %i.pk = and i64 %i.pj, -2
  %switch.i.i.i.i151 = icmp eq i64 %i.pk, -5572340897628102704
  br i1 %switch.i.i.i.i151, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155.thread, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155: ; preds = %bb.bt
  %i.pl = load ptr, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !725
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 48
  %i.pn = load ptr, ptr %i.pm, align 8, !noalias !725
  %i.po = tail call noundef zeroext i1 %i.pn(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i32 noundef 20) #48, !noalias !725, !inline_history !264
  br i1 %i.po, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155.thread, label %bb.bu

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155.thread: ; preds = %bb.bt, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155.thread
  %i.pp = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit155 ]
  %i.pq = or disjoint i64 %i.pp, ptrtoint (ptr @_ZZN5boost5beast4http12basic_parserILb0EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEE7loc_bb__0 to i64)
  store i64 20, ptr %4, align 8
  %.sroa.5273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5273.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.pq, ptr %.sroa.5.0..sroa_idx.i160, align 8, !tbaa !16
  br label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit

bb.bv:                                            ; preds = %bb.bp
  %i.pr = and i32 %i.pe, 1024
  %.not52 = icmp eq i32 %i.pr, 0
  br i1 %.not52, label %bb.cb, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ps = load atomic i8, ptr @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat acquire, align 8, !noalias !728
  %i.pt = icmp eq i8 %i.ps, 0
  br i1 %i.pt, label %bb.bx, label %bb.bz, !prof !188

bb.bx:                                            ; preds = %bb.bw
  %i.pu = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat) #48, !noalias !728
  %.not.i.i164 = icmp eq i32 %i.pu, 0
  br i1 %.not.i.i164, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i64 -7618357900223974896, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !728
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 16), i8 0, i64 36, i1 false), !noalias !728
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5boost5beast4http6detail19http_error_categoryE, i64 16), ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !728
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat) #48, !noalias !728
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.pv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !728
  %i.pw = and i64 %i.pv, -2
  %switch.i.i.i.i161 = icmp eq i64 %i.pw, -5572340897628102704
  br i1 %switch.i.i.i.i161, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165.thread, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165: ; preds = %bb.bz
  %i.px = load ptr, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !728
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 48
  %i.pz = load ptr, ptr %i.py, align 8, !noalias !728
  %i.qa = tail call noundef zeroext i1 %i.pz(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i32 noundef 20) #48, !noalias !728, !inline_history !264
  br i1 %i.qa, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165.thread, label %bb.ca

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165.thread: ; preds = %bb.bz, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165.thread
  %i.qb = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit165 ]
  %i.qc = or disjoint i64 %i.qb, ptrtoint (ptr @_ZZN5boost5beast4http12basic_parserILb0EE8do_fieldENS1_5fieldENS_4core17basic_string_viewIcEERNS_6system10error_codeEE7loc_bb__1 to i64)
  store i64 20, ptr %4, align 8
  %.sroa.5271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5271.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.qc, ptr %.sroa.5.0..sroa_idx.i170, align 8, !tbaa !16
  br label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit

bb.cb:                                            ; preds = %bb.bv
  %i.qd = or i32 %i.pe, 8192
  store i32 %i.qd, ptr %i.pd, align 4, !tbaa !593
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.qe = getelementptr i8, ptr %2, i64 %3        ; 45 uses
  %.not8.i.i.i.i173427 = icmp samesign eq i64 %3, 0
  br i1 %.not8.i.i.i.i173427, label %_ZNK5boost5beast4http10token_list3endEv.exit, label %.lr.ph.i.i.i.i174.preheader

.lr.ph.i.i.i.i174.preheader:                      ; preds = %bb.cb, %bb.ce
  %i.qf = phi ptr [ %i.rb, %bb.ce ], [ %2, %bb.cb ] ; 3 uses
  br label %.lr.ph.i.i.i.i174

.lr.ph.i.i.i.i174:                                ; preds = %.lr.ph.i.i.i.i174.preheader, %bb.cc
  %i.qg = phi ptr [ %i.qi, %bb.cc ], [ %i.qf, %.lr.ph.i.i.i.i174.preheader ] ; 7 uses
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !20, !noalias !731 ; 3 uses
  switch i8 %i.qh, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176 [
    i8 32, label %bb.cc
    i8 9, label %bb.cc
  ]

bb.cc:                                            ; preds = %.lr.ph.i.i.i.i174, %.lr.ph.i.i.i.i174
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 1 ; 2 uses
  %.not.i.i.i.i175 = icmp eq ptr %i.qi, %i.qe
  br i1 %.not.i.i.i.i175, label %_ZNK5boost5beast4http10token_list3endEv.exit, label %.lr.ph.i.i.i.i174, !llvm.loop !385

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176: ; preds = %.lr.ph.i.i.i.i174
  %i.qj = icmp eq ptr %i.qg, %i.qe
  br i1 %i.qj, label %_ZNK5boost5beast4http10token_list3endEv.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176
  %i.qk = zext i8 %i.qh to i64
  %i.ql = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !20, !noalias !731
  %.not.i.i.i177 = icmp eq i8 %i.qm, 0
  br i1 %.not.i.i.i177, label %bb.ce, label %.preheader.i.i.i178.preheader

.preheader.i.i.i178.preheader:                    ; preds = %bb.cd
  %i.qn = getelementptr i8, ptr %i.qf, i64 %3
  %scevgep = getelementptr i8, ptr %i.qn, i64 %i.a
  %.lcssa503504 = ptrtoaddr ptr %i.qf to i64
  %i.qo = sub i64 0, %.lcssa503504
  %scevgep505.a = getelementptr i8, ptr %scevgep, i64 %i.qo ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qg, i64 1 ; 2 uses
  %i.qq = icmp eq ptr %i.qp, %i.qe
  br i1 %i.qq, label %.preheader.i.i.i178._crit_edge, label %.lr.ph679

.preheader.i.i.i178:                              ; preds = %.lr.ph679
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qt, i64 1 ; 2 uses
  %i.qs = icmp eq ptr %i.qr, %i.qe
  br i1 %i.qs, label %.preheader.i.i.i178._crit_edge, label %.lr.ph679, !llvm.loop !570

.lr.ph679:                                        ; preds = %.preheader.i.i.i178.preheader, %.preheader.i.i.i178
  %i.qt = phi ptr [ %i.qr, %.preheader.i.i.i178 ], [ %i.qp, %.preheader.i.i.i178.preheader ] ; 4 uses
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !20, !noalias !731
  %i.qv = zext i8 %i.qu to i64
  %i.qw = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !20, !noalias !731
  %.not10.i.i.i = icmp eq i8 %i.qx, 0
  br i1 %.not10.i.i.i, label %._crit_edge680, label %.preheader.i.i.i178, !llvm.loop !570

._crit_edge680:                                   ; preds = %.lr.ph679
  br label %.preheader.i.i.i178._crit_edge, !llvm.loop !570

.preheader.i.i.i178._crit_edge:                   ; preds = %.preheader.i.i.i178, %._crit_edge680, %.preheader.i.i.i178.preheader
  %.lcssa495 = phi ptr [ %i.qt, %._crit_edge680 ], [ %scevgep505.a, %.preheader.i.i.i178.preheader ], [ %scevgep505.a, %.preheader.i.i.i178 ]
  %.lcssa.i.i.i179 = phi ptr [ %i.qt, %._crit_edge680 ], [ %i.qe, %.preheader.i.i.i178.preheader ], [ %i.qe, %.preheader.i.i.i178 ]
  %i.qy = ptrtoint ptr %.lcssa.i.i.i179 to i64
  %i.qz = ptrtoint ptr %i.qg to i64
  %i.ra = sub i64 %i.qy, %i.qz
  br label %_ZNK5boost5beast4http10token_list3endEv.exit

bb.ce:                                            ; preds = %bb.cd
  %.not9.i.i.i = icmp ne i8 %i.qh, 44
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qg, i64 1 ; 2 uses
  %.not8.i.i.i.i173 = icmp eq ptr %i.rb, %i.qe
  %or.cond448 = select i1 %.not9.i.i.i, i1 true, i1 %.not8.i.i.i.i173
  br i1 %or.cond448, label %_ZNK5boost5beast4http10token_list3endEv.exit, label %.lr.ph.i.i.i.i174.preheader, !llvm.loop !571

_ZNK5boost5beast4http10token_list3endEv.exit:     ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176, %bb.ce, %bb.cc, %bb.cb, %.preheader.i.i.i178._crit_edge
  %.sroa.0248.0 = phi ptr [ %i.qg, %.preheader.i.i.i178._crit_edge ], [ null, %bb.cb ], [ null, %bb.cc ], [ null, %bb.ce ], [ null, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176 ]
  %.sroa.3249.0 = phi i64 [ %i.ra, %.preheader.i.i.i178._crit_edge ], [ 0, %bb.cb ], [ 0, %bb.cc ], [ 0, %bb.ce ], [ 0, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176 ]
  %.sroa.9251.0 = phi ptr [ %2, %.preheader.i.i.i178._crit_edge ], [ %i.qe, %bb.cb ], [ %i.qe, %bb.cc ], [ %i.qe, %bb.ce ], [ %i.qe, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176 ] ; 2 uses
  %.sroa.4250.0 = phi ptr [ %.lcssa495, %.preheader.i.i.i178._crit_edge ], [ %i.qe, %bb.cb ], [ %i.qe, %bb.cc ], [ %i.qe, %bb.ce ], [ %i.qe, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i176 ] ; 2 uses
  %.sroa.5.0.copyload52.i.i = ptrtoaddr ptr %i.qe to i64 ; 4 uses
  %i.rc = icmp ne ptr %i.qe, %.sroa.4250.0
  %i.rd = icmp ne ptr %i.qe, %.sroa.9251.0
  %or.cond.not13.i32.i.i = or i1 %i.rc, %i.rd
  br i1 %or.cond.not13.i32.i.i, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread.i.i.i, label %_ZNK5boost5beast4http10token_list3endEv.exit210

_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread.i.i.i: ; preds = %_ZNK5boost5beast4http10token_list3endEv.exit, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i
  %.sroa.9.037.i.i = phi ptr [ %.sroa.9.1.i.i, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i ], [ %.sroa.4250.0, %_ZNK5boost5beast4http10token_list3endEv.exit ] ; 11 uses
  %.sroa.16.036.i.i = phi ptr [ %.sroa.16.1.i.i, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i ], [ %.sroa.9251.0, %_ZNK5boost5beast4http10token_list3endEv.exit ] ; 9 uses
  %.sroa.7.035.i.i = phi i64 [ %.sroa.7.1.i.i, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i ], [ %.sroa.3249.0, %_ZNK5boost5beast4http10token_list3endEv.exit ]
  %.sroa.0.034.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i ], [ %.sroa.0248.0, %_ZNK5boost5beast4http10token_list3endEv.exit ] ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.7.035.i.i, 7
  br i1 %.not.i.i.i.i.i.i, label %.preheader21.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i

.preheader21.i.preheader.i.i.i.i.i:               ; preds = %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread.i.i.i
  %i.re = load i8, ptr %.sroa.0.034.i.i, align 1, !tbaa !20, !noalias !734
  %.not15.i.i.i.i.i.i = icmp eq i8 %i.re, 99
  br i1 %.not15.i.i.i.i.i.i, label %.preheader21.i.1.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader21.i.1.i.i.i.i.i:                       ; preds = %.preheader21.i.preheader.i.i.i.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 1 ; 2 uses
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !20, !noalias !734
  %.not15.i.1.i.i.i.i.i = icmp eq i8 %i.rg, 104
  br i1 %.not15.i.1.i.i.i.i.i, label %.preheader21.i.2.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader21.i.2.i.i.i.i.i:                       ; preds = %.preheader21.i.1.i.i.i.i.i
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 2 ; 2 uses
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !20, !noalias !734
  %.not15.i.2.i.i.i.i.i = icmp eq i8 %i.ri, 117
  br i1 %.not15.i.2.i.i.i.i.i, label %.preheader21.i.3.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader21.i.3.i.i.i.i.i:                       ; preds = %.preheader21.i.2.i.i.i.i.i
  %i.rj = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 3 ; 2 uses
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !20, !noalias !734
  %.not15.i.3.i.i.i.i.i = icmp eq i8 %i.rk, 110
  br i1 %.not15.i.3.i.i.i.i.i, label %.preheader21.i.4.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader21.i.4.i.i.i.i.i:                       ; preds = %.preheader21.i.3.i.i.i.i.i
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 4 ; 2 uses
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !20, !noalias !734
  %.not15.i.4.i.i.i.i.i = icmp eq i8 %i.rm, 107
  br i1 %.not15.i.4.i.i.i.i.i, label %.preheader21.i.5.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader21.i.5.i.i.i.i.i:                       ; preds = %.preheader21.i.4.i.i.i.i.i
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 5 ; 2 uses
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !20, !noalias !734
  %.not15.i.5.i.i.i.i.i = icmp eq i8 %i.ro, 101
  br i1 %.not15.i.5.i.i.i.i.i, label %.preheader21.i.6.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader21.i.6.i.i.i.i.i:                       ; preds = %.preheader21.i.5.i.i.i.i.i
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 6 ; 2 uses
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !20, !noalias !734
  %.not15.i.6.i.i.i.i.i = icmp eq i8 %i.rq, 100
  br i1 %.not15.i.6.i.i.i.i.i, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader21.i.preheader.i.i.i.i.i, %.preheader21.i.1.i.i.i.i.i, %.preheader21.i.2.i.i.i.i.i, %.preheader21.i.3.i.i.i.i.i, %.preheader21.i.4.i.i.i.i.i, %.preheader21.i.5.i.i.i.i.i, %.preheader21.i.6.i.i.i.i.i
  %.not17.i.i.i.i.i.i = phi i1 [ true, %.preheader21.i.6.i.i.i.i.i ], [ false, %.preheader21.i.5.i.i.i.i.i ], [ false, %.preheader21.i.4.i.i.i.i.i ], [ false, %.preheader21.i.3.i.i.i.i.i ], [ false, %.preheader21.i.2.i.i.i.i.i ], [ false, %.preheader21.i.1.i.i.i.i.i ], [ false, %.preheader21.i.preheader.i.i.i.i.i ]
  %.not17.i.i.i.i.i.i.1 = phi i1 [ false, %.preheader21.i.6.i.i.i.i.i ], [ true, %.preheader21.i.5.i.i.i.i.i ], [ false, %.preheader21.i.4.i.i.i.i.i ], [ false, %.preheader21.i.3.i.i.i.i.i ], [ false, %.preheader21.i.2.i.i.i.i.i ], [ false, %.preheader21.i.1.i.i.i.i.i ], [ false, %.preheader21.i.preheader.i.i.i.i.i ]
  %.not17.i.i.i.i.i.i.2 = phi i1 [ false, %.preheader21.i.6.i.i.i.i.i ], [ false, %.preheader21.i.5.i.i.i.i.i ], [ true, %.preheader21.i.4.i.i.i.i.i ], [ false, %.preheader21.i.3.i.i.i.i.i ], [ false, %.preheader21.i.2.i.i.i.i.i ], [ false, %.preheader21.i.1.i.i.i.i.i ], [ false, %.preheader21.i.preheader.i.i.i.i.i ]
  %.not17.i.i.i.i.i.i.3 = phi i1 [ false, %.preheader21.i.6.i.i.i.i.i ], [ false, %.preheader21.i.5.i.i.i.i.i ], [ false, %.preheader21.i.4.i.i.i.i.i ], [ true, %.preheader21.i.3.i.i.i.i.i ], [ false, %.preheader21.i.2.i.i.i.i.i ], [ false, %.preheader21.i.1.i.i.i.i.i ], [ false, %.preheader21.i.preheader.i.i.i.i.i ]
  %.not17.i.i.i.i.i.i.4 = phi i1 [ false, %.preheader21.i.6.i.i.i.i.i ], [ false, %.preheader21.i.5.i.i.i.i.i ], [ false, %.preheader21.i.4.i.i.i.i.i ], [ false, %.preheader21.i.3.i.i.i.i.i ], [ true, %.preheader21.i.2.i.i.i.i.i ], [ false, %.preheader21.i.1.i.i.i.i.i ], [ false, %.preheader21.i.preheader.i.i.i.i.i ]
  %.not17.i.i.i.i.i.i.5 = phi i1 [ false, %.preheader21.i.6.i.i.i.i.i ], [ false, %.preheader21.i.5.i.i.i.i.i ], [ false, %.preheader21.i.4.i.i.i.i.i ], [ false, %.preheader21.i.3.i.i.i.i.i ], [ false, %.preheader21.i.2.i.i.i.i.i ], [ true, %.preheader21.i.1.i.i.i.i.i ], [ false, %.preheader21.i.preheader.i.i.i.i.i ]
  %.19.i.i.i.i.i.i.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.430, i64 6), %.preheader21.i.6.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @.str.430, i64 5), %.preheader21.i.5.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @.str.430, i64 4), %.preheader21.i.4.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @.str.430, i64 3), %.preheader21.i.3.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @.str.430, i64 2), %.preheader21.i.2.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @.str.430, i64 1), %.preheader21.i.1.i.i.i.i.i ], [ @.str.430, %.preheader21.i.preheader.i.i.i.i.i ] ; 7 uses
  %.1.i.i.i.i.i.i.ph = phi ptr [ %i.rp, %.preheader21.i.6.i.i.i.i.i ], [ %i.rn, %.preheader21.i.5.i.i.i.i.i ], [ %i.rl, %.preheader21.i.4.i.i.i.i.i ], [ %i.rj, %.preheader21.i.3.i.i.i.i.i ], [ %i.rh, %.preheader21.i.2.i.i.i.i.i ], [ %i.rf, %.preheader21.i.1.i.i.i.i.i ], [ %.sroa.0.034.i.i, %.preheader21.i.preheader.i.i.i.i.i ] ; 7 uses
  %i.rr = load i8, ptr %.19.i.i.i.i.i.i.ph, align 1, !tbaa !20, !noalias !734 ; 3 uses
  %i.rs = sext i8 %i.rr to i32
  %i.rt = add nsw i32 %i.rs, -65
  %i.ru = icmp ult i32 %i.rt, 26
  %i.rv = add i8 %i.rr, 32
  %i.rw = select i1 %i.ru, i8 %i.rv, i8 %i.rr
  %i.rx = load i8, ptr %.1.i.i.i.i.i.i.ph, align 1, !tbaa !20, !noalias !734 ; 3 uses
  %i.ry = sext i8 %i.rx to i32
  %i.rz = add nsw i32 %i.ry, -65
  %i.sa = icmp ult i32 %i.rz, 26
  %i.sb = add i8 %i.rx, 32
  %i.sc = select i1 %i.sa, i8 %i.sb, i8 %i.rx
  %.not16.i.i.i.i.i.i = icmp eq i8 %i.rw, %i.sc
  br i1 %.not16.i.i.i.i.i.i, label %bb.cf, label %.loopexit.i.i.i

bb.cf:                                            ; preds = %.preheader.i.i.i.i.i.i
  br i1 %.not17.i.i.i.i.i.i, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.preheader.i.i.i.i.i.i.1

.preheader.i.i.i.i.i.i.1:                         ; preds = %bb.cf
  %i.sd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.ph, i64 1
  %i.se = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.ph, i64 1
  %i.sf = load i8, ptr %i.sd, align 1, !tbaa !20, !noalias !734 ; 3 uses
  %i.sg = sext i8 %i.sf to i32
  %i.sh = add nsw i32 %i.sg, -65
  %i.si = icmp ult i32 %i.sh, 26
  %i.sj = add i8 %i.sf, 32
  %i.sk = select i1 %i.si, i8 %i.sj, i8 %i.sf
  %i.sl = load i8, ptr %i.se, align 1, !tbaa !20, !noalias !734 ; 3 uses
  %i.sm = sext i8 %i.sl to i32
  %i.sn = add nsw i32 %i.sm, -65
  %i.so = icmp ult i32 %i.sn, 26
  %i.sp = add i8 %i.sl, 32
  %i.sq = select i1 %i.so, i8 %i.sp, i8 %i.sl
  %.not16.i.i.i.i.i.i.1 = icmp eq i8 %i.sk, %i.sq
  br i1 %.not16.i.i.i.i.i.i.1, label %bb.cg, label %.loopexit.i.i.i

bb.cg:                                            ; preds = %.preheader.i.i.i.i.i.i.1
  br i1 %.not17.i.i.i.i.i.i.1, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.preheader.i.i.i.i.i.i.2

.preheader.i.i.i.i.i.i.2:                         ; preds = %bb.cg
  %i.sr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.ph, i64 2
  %i.ss = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.ph, i64 2
  %i.st = load i8, ptr %i.sr, align 1, !tbaa !20, !noalias !734 ; 3 uses
  %i.su = sext i8 %i.st to i32
  %i.sv = add nsw i32 %i.su, -65
  %i.sw = icmp ult i32 %i.sv, 26
  %i.sx = add i8 %i.st, 32
  %i.sy = select i1 %i.sw, i8 %i.sx, i8 %i.st
  %i.sz = load i8, ptr %i.ss, align 1, !tbaa !20, !noalias !734 ; 3 uses
  %i.ta = sext i8 %i.sz to i32
  %i.tb = add nsw i32 %i.ta, -65
  %i.tc = icmp ult i32 %i.tb, 26
  %i.td = add i8 %i.sz, 32
  %i.te = select i1 %i.tc, i8 %i.td, i8 %i.sz
  %.not16.i.i.i.i.i.i.2 = icmp eq i8 %i.sy, %i.te
  br i1 %.not16.i.i.i.i.i.i.2, label %bb.ch, label %.loopexit.i.i.i

bb.ch:                                            ; preds = %.preheader.i.i.i.i.i.i.2
  br i1 %.not17.i.i.i.i.i.i.2, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.preheader.i.i.i.i.i.i.3

.preheader.i.i.i.i.i.i.3:                         ; preds = %bb.ch
  %i.tf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.ph, i64 3
  %i.tg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.ph, i64 3
  %i.th = load i8, ptr %i.tf, align 1, !tbaa !20, !noalias !734 ; 3 uses
  %i.ti = sext i8 %i.th to i32
  %i.tj = add nsw i32 %i.ti, -65
  %i.tk = icmp ult i32 %i.tj, 26
  %i.tl = add i8 %i.th, 32
  %i.tm = select i1 %i.tk, i8 %i.tl, i8 %i.th
  %i.tn = load i8, ptr %i.tg, align 1, !tbaa !20, !noalias !734 ; 3 uses
  %i.to = sext i8 %i.tn to i32
  %i.tp = add nsw i32 %i.to, -65
  %i.tq = icmp ult i32 %i.tp, 26
  %i.tr = add i8 %i.tn, 32
  %i.ts = select i1 %i.tq, i8 %i.tr, i8 %i.tn
  %.not16.i.i.i.i.i.i.3 = icmp eq i8 %i.tm, %i.ts
  br i1 %.not16.i.i.i.i.i.i.3, label %bb.ci, label %.loopexit.i.i.i

bb.ci:                                            ; preds = %.preheader.i.i.i.i.i.i.3
  br i1 %.not17.i.i.i.i.i.i.3, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.preheader.i.i.i.i.i.i.4

.preheader.i.i.i.i.i.i.4:                         ; preds = %bb.ci
  %i.tt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.ph, i64 4
  %i.tu = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.ph, i64 4
  %i.tv = load i8, ptr %i.tt, align 1, !tbaa !20, !noalias !734 ; 3 uses
  %i.tw = sext i8 %i.tv to i32
  %i.tx = add nsw i32 %i.tw, -65
  %i.ty = icmp ult i32 %i.tx, 26
  %i.tz = add i8 %i.tv, 32
  %i.ua = select i1 %i.ty, i8 %i.tz, i8 %i.tv
  %i.ub = load i8, ptr %i.tu, align 1, !tbaa !20, !noalias !734 ; 3 uses
  %i.uc = sext i8 %i.ub to i32
  %i.ud = add nsw i32 %i.uc, -65
  %i.ue = icmp ult i32 %i.ud, 26
  %i.uf = add i8 %i.ub, 32
  %i.ug = select i1 %i.ue, i8 %i.uf, i8 %i.ub
  %.not16.i.i.i.i.i.i.4 = icmp eq i8 %i.ua, %i.ug
  br i1 %.not16.i.i.i.i.i.i.4, label %bb.cj, label %.loopexit.i.i.i

bb.cj:                                            ; preds = %.preheader.i.i.i.i.i.i.4
  br i1 %.not17.i.i.i.i.i.i.4, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.preheader.i.i.i.i.i.i.5

.preheader.i.i.i.i.i.i.5:                         ; preds = %bb.cj
  %i.uh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.ph, i64 5
  %i.ui = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.ph, i64 5
  %i.uj = load i8, ptr %i.uh, align 1, !tbaa !20, !noalias !734 ; 3 uses
  %i.uk = sext i8 %i.uj to i32
  %i.ul = add nsw i32 %i.uk, -65
  %i.um = icmp ult i32 %i.ul, 26
  %i.un = add i8 %i.uj, 32
  %i.uo = select i1 %i.um, i8 %i.un, i8 %i.uj
  %i.up = load i8, ptr %i.ui, align 1, !tbaa !20, !noalias !734 ; 3 uses
  %i.uq = sext i8 %i.up to i32
  %i.ur = add nsw i32 %i.uq, -65
  %i.us = icmp ult i32 %i.ur, 26
  %i.ut = add i8 %i.up, 32
  %i.uu = select i1 %i.us, i8 %i.ut, i8 %i.up
  %.not16.i.i.i.i.i.i.5 = icmp eq i8 %i.uo, %i.uu
  br i1 %.not16.i.i.i.i.i.i.5, label %bb.ck, label %.loopexit.i.i.i

bb.ck:                                            ; preds = %.preheader.i.i.i.i.i.i.5
  br i1 %.not17.i.i.i.i.i.i.5, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.preheader.i.i.i.i.i.i.6

.preheader.i.i.i.i.i.i.6:                         ; preds = %bb.ck
  %i.uv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.ph, i64 6
  %i.uw = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.ph, i64 6
  %i.ux = load i8, ptr %i.uv, align 1, !tbaa !20, !noalias !734 ; 3 uses
  %i.uy = sext i8 %i.ux to i32
  %i.uz = add nsw i32 %i.uy, -65
  %i.va = icmp ult i32 %i.uz, 26
  %i.vb = add i8 %i.ux, 32
  %i.vc = select i1 %i.va, i8 %i.vb, i8 %i.ux
  %i.vd = load i8, ptr %i.uw, align 1, !tbaa !20, !noalias !734 ; 3 uses
  %i.ve = sext i8 %i.vd to i32
  %i.vf = add nsw i32 %i.ve, -65
  %i.vg = icmp ult i32 %i.vf, 26
  %i.vh = add i8 %i.vd, 32
  %i.vi = select i1 %i.vg, i8 %i.vh, i8 %i.vd
  %.not16.i.i.i.i.i.i.6 = icmp eq i8 %i.vc, %i.vi
  br i1 %.not16.i.i.i.i.i.i.6, label %_ZNK5boost5beast4http10token_list3endEv.exit210, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.1, %.preheader.i.i.i.i.i.i.2, %.preheader.i.i.i.i.i.i.3, %.preheader.i.i.i.i.i.i.4, %.preheader.i.i.i.i.i.i.5, %.preheader.i.i.i.i.i.i.6, %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread.i.i.i
  %i.vj = icmp ne ptr %.sroa.9.037.i.i, %.sroa.16.036.i.i
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cq, %.loopexit.i.i.i
  %i.vk = phi ptr [ %.sroa.9.037.i.i, %.loopexit.i.i.i ], [ %i.wi, %bb.cq ] ; 5 uses
  %.06.i.i.i.i.i = phi i1 [ %i.vj, %.loopexit.i.i.i ], [ false, %bb.cq ]
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.vk, %i.qe
  br i1 %.not8.i.i.i.i.i.i, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %bb.cl
  %i.vl = ptrtoaddr ptr %i.vk to i64
  %scevgep.i.i = getelementptr i8, ptr %i.vk, i64 %.sroa.5.0.copyload52.i.i
  %i.vm = sub i64 0, %i.vl
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.vm
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cm, %.lr.ph.i.i.i.i.preheader.i.i
  %i.vn = phi ptr [ %i.vp, %bb.cm ], [ %i.vk, %.lr.ph.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !20, !noalias !734
  switch i8 %i.vo, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i [
    i8 32, label %bb.cm
    i8 9, label %bb.cm
  ]

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 1 ; 2 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.vp, %i.qe
  br i1 %.not.i.i.i1.i.i.i, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !385

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i: ; preds = %bb.cm, %.lr.ph.i.i.i.i.i.i, %bb.cl
  %.promoted22.i.i.i.i.i = phi ptr [ %i.vk, %bb.cl ], [ %i.vn, %.lr.ph.i.i.i.i.i.i ], [ %scevgep53.i.i, %bb.cm ] ; 8 uses
  %i.vq = icmp eq ptr %.promoted22.i.i.i.i.i, %i.qe
  br i1 %i.vq, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i
  %i.vr = load i8, ptr %.promoted22.i.i.i.i.i, align 1, !tbaa !20, !noalias !734 ; 2 uses
  %i.vs = zext i8 %i.vr to i64
  %i.vt = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.vs
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !20, !noalias !734
  %.not.i.i.i.i.i196 = icmp eq i8 %i.vu, 0
  br i1 %.not.i.i.i.i.i196, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  br i1 %.06.i.i.i.i.i, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i, label %.preheader.i.i.i.preheader.i.i

.preheader.i.i.i.preheader.i.i:                   ; preds = %bb.co
  %.promoted22.i.i.i.lcssa5456.i.i = ptrtoaddr ptr %.promoted22.i.i.i.i.i to i64
  %scevgep55.i.i = getelementptr i8, ptr %.promoted22.i.i.i.i.i, i64 %.sroa.5.0.copyload52.i.i
  %i.vv = sub i64 0, %.promoted22.i.i.i.lcssa5456.i.i
  %scevgep57.i.i = getelementptr i8, ptr %scevgep55.i.i, i64 %i.vv ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.promoted22.i.i.i.i.i, i64 1 ; 2 uses
  %i.vx = icmp eq ptr %i.vw, %i.qe
  br i1 %i.vx, label %.preheader.i.i.i.i.i._crit_edge, label %.lr.ph684

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph684
  %i.vy = getelementptr inbounds nuw i8, ptr %i.wa, i64 1 ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.qe
  br i1 %i.vz, label %.preheader.i.i.i.i.i._crit_edge, label %.lr.ph684, !llvm.loop !570

.lr.ph684:                                        ; preds = %.preheader.i.i.i.preheader.i.i, %.preheader.i.i.i.i.i
  %i.wa = phi ptr [ %i.vy, %.preheader.i.i.i.i.i ], [ %i.vw, %.preheader.i.i.i.preheader.i.i ] ; 4 uses
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !20, !noalias !734
  %i.wc = zext i8 %i.wb to i64
  %i.wd = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.wc
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !20, !noalias !734
  %.not10.i.i.i.i.i = icmp eq i8 %i.we, 0
  br i1 %.not10.i.i.i.i.i, label %._crit_edge685, label %.preheader.i.i.i.i.i, !llvm.loop !570

._crit_edge685:                                   ; preds = %.lr.ph684
  br label %.preheader.i.i.i.i.i._crit_edge, !llvm.loop !570

.preheader.i.i.i.i.i._crit_edge:                  ; preds = %.preheader.i.i.i.i.i, %._crit_edge685, %.preheader.i.i.i.preheader.i.i
  %.lcssa.i.i = phi ptr [ %i.wa, %._crit_edge685 ], [ %scevgep57.i.i, %.preheader.i.i.i.preheader.i.i ], [ %scevgep57.i.i, %.preheader.i.i.i.i.i ]
  %.lcssa.i.i2.i.i.i = phi ptr [ %i.wa, %._crit_edge685 ], [ %i.qe, %.preheader.i.i.i.preheader.i.i ], [ %i.qe, %.preheader.i.i.i.i.i ]
  %i.wf = ptrtoint ptr %.lcssa.i.i2.i.i.i to i64
  %i.wg = ptrtoint ptr %.promoted22.i.i.i.i.i to i64
  %i.wh = sub i64 %i.wf, %i.wg
  br label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i

bb.cp:                                            ; preds = %bb.cn
  %.not9.i.i.i.i.i = icmp eq i8 %i.vr, 44
  br i1 %.not9.i.i.i.i.i, label %bb.cq, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.wi = getelementptr inbounds nuw i8, ptr %.promoted22.i.i.i.i.i, i64 1
  br label %bb.cl, !llvm.loop !571

_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i: ; preds = %bb.cp, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i, %.preheader.i.i.i.i.i._crit_edge, %bb.co
  %.sroa.0.1.i.i = phi ptr [ %.promoted22.i.i.i.i.i, %.preheader.i.i.i.i.i._crit_edge ], [ null, %bb.co ], [ null, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i ], [ null, %bb.cp ]
  %.sroa.7.1.i.i = phi i64 [ %i.wh, %.preheader.i.i.i.i.i._crit_edge ], [ 0, %bb.co ], [ 0, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i ], [ 0, %bb.cp ]
  %.sroa.16.1.i.i = phi ptr [ %.sroa.9.037.i.i, %.preheader.i.i.i.i.i._crit_edge ], [ %i.qe, %bb.co ], [ %i.qe, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i ], [ %i.qe, %bb.cp ] ; 2 uses
  %.sroa.9.1.i.i = phi ptr [ %.lcssa.i.i, %.preheader.i.i.i.i.i._crit_edge ], [ %i.qe, %bb.co ], [ %i.qe, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i.i.i ], [ %i.qe, %bb.cp ] ; 3 uses
  %i.wj = icmp ne ptr %i.qe, %.sroa.9.1.i.i
  %i.wk = icmp ne ptr %i.qe, %.sroa.16.1.i.i
  %or.cond.not13.i.i.i = or i1 %i.wk, %i.wj
  br i1 %or.cond.not13.i.i.i, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread.i.i.i, label %_ZNK5boost5beast4http10token_list3endEv.exit210, !llvm.loop !741

_ZNK5boost5beast4http10token_list3endEv.exit210:  ; preds = %.preheader21.i.6.i.i.i.i.i, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i, %.preheader.i.i.i.i.i.i.6, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %_ZNK5boost5beast4http10token_list3endEv.exit
  %.sroa.16.027.i.i = phi ptr [ %.sroa.16.036.i.i, %.preheader.i.i.i.i.i.i.6 ], [ %i.qe, %_ZNK5boost5beast4http10token_list3endEv.exit ], [ %.sroa.16.036.i.i, %bb.ck ], [ %.sroa.16.036.i.i, %bb.cj ], [ %.sroa.16.036.i.i, %bb.ci ], [ %.sroa.16.036.i.i, %bb.ch ], [ %.sroa.16.036.i.i, %bb.cg ], [ %.sroa.16.036.i.i, %bb.cf ], [ %.sroa.16.036.i.i, %.preheader21.i.6.i.i.i.i.i ], [ %i.qe, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i ] ; 2 uses
  %.sroa.9.025.i.i = phi ptr [ %.sroa.9.037.i.i, %.preheader.i.i.i.i.i.i.6 ], [ %i.qe, %_ZNK5boost5beast4http10token_list3endEv.exit ], [ %.sroa.9.037.i.i, %bb.ck ], [ %.sroa.9.037.i.i, %bb.cj ], [ %.sroa.9.037.i.i, %bb.ci ], [ %.sroa.9.037.i.i, %bb.ch ], [ %.sroa.9.037.i.i, %bb.cg ], [ %.sroa.9.037.i.i, %bb.cf ], [ %.sroa.9.037.i.i, %.preheader21.i.6.i.i.i.i.i ], [ %.sroa.9.1.i.i, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i.i.i ] ; 4 uses
  %i.wl = icmp eq ptr %i.qe, %.sroa.9.025.i.i
  %i.wm = icmp eq ptr %i.qe, %.sroa.16.027.i.i
  %or.cond = and i1 %i.wl, %i.wm
  br i1 %or.cond, label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZNK5boost5beast4http10token_list3endEv.exit210
  %i.wn = icmp ne ptr %.sroa.9.025.i.i, %.sroa.16.027.i.i
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cw, %.preheader.preheader
  %i.wo = phi ptr [ %.sroa.9.025.i.i, %.preheader.preheader ], [ %i.xi, %bb.cw ] ; 5 uses
  %.06.i.i.i = phi i1 [ %i.wn, %.preheader.preheader ], [ false, %bb.cw ]
  %.not8.i.i.i.i213 = icmp eq ptr %i.wo, %i.qe
  br i1 %.not8.i.i.i.i213, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i216, label %.lr.ph.i.i.i.i214.preheader

.lr.ph.i.i.i.i214.preheader:                      ; preds = %bb.cr
  %i.wp = ptrtoaddr ptr %i.wo to i64
  %scevgep506.a = getelementptr i8, ptr %i.wo, i64 %.sroa.5.0.copyload52.i.i
  %i.wq = sub i64 0, %i.wp
  %scevgep507 = getelementptr i8, ptr %scevgep506.a, i64 %i.wq
  br label %.lr.ph.i.i.i.i214

.lr.ph.i.i.i.i214:                                ; preds = %.lr.ph.i.i.i.i214.preheader, %bb.cs
  %i.wr = phi ptr [ %i.wt, %bb.cs ], [ %i.wo, %.lr.ph.i.i.i.i214.preheader ] ; 3 uses
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !20, !noalias !742
  switch i8 %i.ws, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i216 [
    i8 32, label %bb.cs
    i8 9, label %bb.cs
  ]

bb.cs:                                            ; preds = %.lr.ph.i.i.i.i214, %.lr.ph.i.i.i.i214
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 1 ; 2 uses
  %.not.i.i.i.i215 = icmp eq ptr %i.wt, %i.qe
  br i1 %.not.i.i.i.i215, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i216, label %.lr.ph.i.i.i.i214, !llvm.loop !385

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i216: ; preds = %bb.cs, %.lr.ph.i.i.i.i214, %bb.cr
  %.promoted22.i.i.i = phi ptr [ %i.wo, %bb.cr ], [ %i.wr, %.lr.ph.i.i.i.i214 ], [ %scevgep507, %bb.cs ] ; 6 uses
  %i.wu = icmp eq ptr %.promoted22.i.i.i, %i.qe
  br i1 %i.wu, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i216
  %i.wv = load i8, ptr %.promoted22.i.i.i, align 1, !tbaa !20, !noalias !742 ; 2 uses
  %i.ww = zext i8 %i.wv to i64
  %i.wx = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !20, !noalias !742
  %.not.i.i.i217 = icmp eq i8 %i.wy, 0
  br i1 %.not.i.i.i217, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  br i1 %.06.i.i.i, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %.preheader.i.i.i218.preheader

.preheader.i.i.i218.preheader:                    ; preds = %bb.cu
  %.promoted22.i.i.i.lcssa508510 = ptrtoaddr ptr %.promoted22.i.i.i to i64
  %scevgep509 = getelementptr i8, ptr %.promoted22.i.i.i, i64 %.sroa.5.0.copyload52.i.i
  %9 = sub i64 0, %.promoted22.i.i.i.lcssa508510
  %scevgep511 = getelementptr i8, ptr %scevgep509, i64 %9 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.promoted22.i.i.i, i64 1 ; 2 uses
  %i.xa = icmp eq ptr %i.wz, %i.qe
  br i1 %i.xa, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i, label %.lr.ph690

.preheader.i.i.i218:                              ; preds = %.lr.ph690
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xd, i64 1 ; 2 uses
  %i.xc = icmp eq ptr %i.xb, %i.qe
  br i1 %i.xc, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i, label %.lr.ph690, !llvm.loop !570

.lr.ph690:                                        ; preds = %.preheader.i.i.i218.preheader, %.preheader.i.i.i218
  %i.xd = phi ptr [ %i.xb, %.preheader.i.i.i218 ], [ %i.wz, %.preheader.i.i.i218.preheader ] ; 3 uses
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !20, !noalias !742
  %i.xf = zext i8 %i.xe to i64
  %i.xg = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !20, !noalias !742
  %.not10.i.i.i219 = icmp eq i8 %i.xh, 0
  br i1 %.not10.i.i.i219, label %._ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i_crit_edge, label %.preheader.i.i.i218, !llvm.loop !570

bb.cv:                                            ; preds = %bb.ct
  %.not9.i.i.i222 = icmp eq i8 %i.wv, 44
  br i1 %.not9.i.i.i222, label %bb.cw, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit

bb.cw:                                            ; preds = %bb.cv
  %i.xi = getelementptr inbounds nuw i8, ptr %.promoted22.i.i.i, i64 1
  br label %bb.cr, !llvm.loop !571

._ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i_crit_edge: ; preds = %.lr.ph690
  br label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i, !llvm.loop !570

_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i: ; preds = %.preheader.i.i.i218, %._ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i_crit_edge, %.preheader.i.i.i218.preheader
  %.lcssa490 = phi ptr [ %i.xd, %._ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i_crit_edge ], [ %scevgep511, %.preheader.i.i.i218.preheader ], [ %scevgep511, %.preheader.i.i.i218 ]
  %10 = icmp eq ptr %i.qe, %.lcssa490
  %i.xj = icmp eq ptr %i.qe, %.sroa.9.025.i.i
  %11 = and i1 %i.xj, %10
  br i1 %11, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit

_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit: ; preds = %bb.cv, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i216, %bb.cu, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.xk, align 8, !tbaa !608
  %i.xl = load i32, ptr %i.pd, align 4, !tbaa !593
  %i.xm = or i32 %i.xl, 2048
  store i32 %i.xm, ptr %i.pd, align 4, !tbaa !593
  br label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit

bb.cx:                                            ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !593
  %i.xp = or i32 %i.xo, 4096
  store i32 %i.xp, ptr %i.xn, align 4, !tbaa !593
  br label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit

bb.cy:                                            ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit

_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit: ; preds = %_ZNK5boost5beast4http10token_list3endEv.exit210, %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i, %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, %bb.cy, %bb.cx, %bb.ca, %bb.bu, %bb.bo, %bb.ad
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost5beast4http12basic_parserILb0EE13finish_headerERNS_6system10error_codeESt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !593  ; 7 uses
  %i.c = and i32 %i.b, 2064
  %or.cond = icmp eq i32 %i.c, 2048
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat acquire, align 8, !noalias !745
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e, !prof !188

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat) #48, !noalias !745
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -7618357900223974896, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !745
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 16), i8 0, i64 36, i1 false), !noalias !745
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5boost5beast4http6detail19http_error_categoryE, i64 16), ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !745
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat) #48, !noalias !745
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !745
  %i.h = and i64 %i.g, -2
  %switch.i.i.i.i = icmp eq i64 %i.h, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.e
  %i.i = load ptr, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !745
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !745
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i32 noundef 20) #48, !noalias !745, !inline_history !264
  br i1 %i.l, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.f

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %bb.e, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.m = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.n = or disjoint i64 %i.m, ptrtoint (ptr @_ZZN5boost5beast4http12basic_parserILb0EE13finish_headerERNS_6system10error_codeESt17integral_constantIbLb1EEE7loc_bb_ to i64)
  store i64 20, ptr %1, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx.i16, align 8, !tbaa !16
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

bb.g:                                             ; preds = %bb.a
  %i.o = and i32 %i.b, 2048
  %.not10 = icmp eq i32 %i.o, 0
  %i.p = and i32 %i.b, 10240
  %or.cond15 = icmp eq i32 %i.p, 8192
  br i1 %or.cond15, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.q = load atomic i8, ptr @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat acquire, align 8, !noalias !748
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.k, !prof !188

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat) #48, !noalias !748
  %.not.i.i20 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 -7618357900223974896, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !748
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 16), i8 0, i64 36, i1 false), !noalias !748
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5boost5beast4http6detail19http_error_categoryE, i64 16), ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !748
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5beast4http15make_error_codeENS1_5errorEE3cat) #48, !noalias !748
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !748
  %i.u = and i64 %i.t, -2
  %switch.i.i.i.i17 = icmp eq i64 %i.u, -5572340897628102704
  br i1 %switch.i.i.i.i17, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21: ; preds = %bb.k
  %i.v = load ptr, ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !748
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !noalias !748
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, i32 noundef 20) #48, !noalias !748, !inline_history !264
  br i1 %i.y, label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread, label %bb.l

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread: ; preds = %bb.k, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread
  %i.z = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit21 ]
  %i.aa = or disjoint i64 %i.z, ptrtoint (ptr @_ZZN5boost5beast4http12basic_parserILb0EE13finish_headerERNS_6system10error_codeESt17integral_constantIbLb1EEE7loc_bb__0 to i64)
  store i64 20, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN5boost5beast4http15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.aa, ptr %.sroa.5.0..sroa_idx.i26, align 8, !tbaa !16
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

bb.m:                                             ; preds = %bb.g
  %i.ab = and i32 %i.b, 1
  %.not11 = icmp eq i32 %i.ab, 0
  br i1 %.not11, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 11, ptr %i.ac, align 8, !tbaa !591
  br label %bb.y

bb.o:                                             ; preds = %bb.m
  %i.ad = and i32 %i.b, 1024
  %.not12 = icmp eq i32 %i.ad, 0
  br i1 %.not12, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !412, !range !260, !noundef !137
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.ag, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %.pre = load i64, ptr %i.ah, align 8, !tbaa !608
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  call void @_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 9, ptr noundef null) #48
  %.sroa.5.0..sroa_idx3.i27 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload4.i28 = load i64, ptr %.sroa.5.0..sroa_idx3.i27, align 8, !tbaa !16 ; 3 uses
  %switch.i.i29 = icmp ult i64 %.sroa.5.0.copyload4.i28, 2
  %i.am = and i64 %.sroa.5.0.copyload4.i28, 1
  %i.an = or disjoint i64 %i.am, ptrtoint (ptr @_ZZN5boost5beast4http12basic_parserILb0EE13finish_headerERNS_6system10error_codeESt17integral_constantIbLb1EEE7loc_bb__1 to i64)
  %.sroa.5.0.i30 = select i1 %switch.i.i29, i64 %.sroa.5.0.copyload4.i28, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.5.0.i30, ptr %.sroa.5.0..sroa_idx.i31, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

bb.s:                                             ; preds = %._crit_edge, %bb.q
  %i.ao = phi i64 [ %.pre, %._crit_edge ], [ %i.ak, %bb.q ]
  %.not14 = icmp eq i64 %i.ao, 0
  br i1 %.not14, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = or i32 %i.b, 8
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !593
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 3, ptr %i.aq, align 8, !tbaa !591
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 11, ptr %i.ar, align 8, !tbaa !591
  br label %bb.y

bb.v:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br i1 %.not10, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.at = or i32 %i.b, 8
  store i32 %i.at, ptr %i.a, align 4, !tbaa !593
  store i32 7, ptr %i.as, align 8, !tbaa !591
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store i32 11, ptr %i.as, align 8, !tbaa !591
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.t, %bb.x, %bb.w, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.av = load ptr, ptr %0, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !30 ; 2 uses
  %i.ba = and i64 %i.az, 1
  %.not.i.i32 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i32, label %_ZNK5boost6system10error_codecvbEv.exit.thread39, label %bb.z

bb.z:                                             ; preds = %bb.y
end_hunk_1
begin_hunk_2_@_ZN5boost5beast4httplsERSoNS1_5fieldE:bb.a
  %i.a = load atomic i8, ptr @_ZGVZN5boost5beast4http6detail15get_field_tableEvE3tab acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost5beast4http9to_stringENS1_5fieldE.exit, !prof !188

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5beast4http6detail15get_field_tableEvE3tab) #48
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN5boost5beast4http9to_stringENS1_5fieldE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost5beast4http6detail11field_tableC2Ev(ptr noundef nonnull align 8 dereferenceable(3447) @_ZZN5boost5beast4http6detail15get_field_tableEvE3tab)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 3448, ptr nonnull @_ZZN5boost5beast4http6detail15get_field_tableEvE3tab) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5beast4http6detail15get_field_tableEvE3tab) #48
  br label %_ZN5boost5beast4http9to_stringENS1_5fieldE.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost5beast4http6detail15get_field_tableEvE3tab) #48
  resume { ptr, i32 } %i.e

_ZN5boost5beast4http9to_stringENS1_5fieldE.exit:  ; preds = %bb.a, %bb.b, %bb.d
  %i.f = zext i16 %1 to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost5beast4http6detail15get_field_tableEvE3tab, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !187
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !16
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost4corelsIcEERSt13basic_ostreamIT_St11char_traitsIS3_EES7_NS0_17basic_string_viewIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost4corelsIcEERSt13basic_ostreamIT_St11char_traitsIS3_EES7_NS0_17basic_string_viewIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !760  ; 3 uses
  %.not = icmp slt i64 %2, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !769
  %i.j = and i32 %i.i, 176
  %i.k = icmp eq i32 %i.j, 32
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = sub nsw i64 %i.f, %2
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.q, ptr %i.r, align 8, !tbaa !760
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.208, i64 noundef 0) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = sub nsw i64 %i.f, %2
  store i64 %i.t, ptr %i.e, align 8, !tbaa !760
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.208, i64 noundef 0) ; 0 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.w = load ptr, ptr %0, align 8, !tbaa !22
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %i.aa, align 8, !tbaa !760
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5beast4http6detail22filter_token_list_lastERNS0_6detail16temporary_bufferENS_4core17basic_string_viewIcEERKNS2_17iequals_predicateE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(4120) %0, ptr %1, i64 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 43 uses
  %.not8.i.i.i.i309 = icmp samesign eq i64 %2, 0
  br i1 %.not8.i.i.i.i309, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i.backedge
  %i.c = phi ptr [ %.be, %.lr.ph.i.i.i.i.backedge ], [ %1, %bb.a ] ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !20, !noalias !770 ; 3 uses
  switch i8 %i.d, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.b
  br i1 %.not.i.i.i.i, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %.lr.ph.i.i.i.i.backedge

.lr.ph.i.i.i.i.backedge:                          ; preds = %bb.b, %bb.d
  %.be = phi ptr [ %i.e, %bb.b ], [ %i.j, %bb.d ]
  br label %.lr.ph.i.i.i.i, !llvm.loop !571

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = icmp eq ptr %i.c, %i.b
  br i1 %i.f, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i
  %i.g = zext i8 %i.d to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !20, !noalias !770
  %.not.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i, label %bb.d, label %.lr.ph.i.i.i.i35.preheader

bb.d:                                             ; preds = %bb.c
  %.not9.i.i.i = icmp ne i8 %i.d, 44
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.j, %i.b
  %or.cond314 = select i1 %.not9.i.i.i, i1 true, i1 %.not8.i.i.i.i
  br i1 %or.cond314, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %.lr.ph.i.i.i.i.backedge

.lr.ph.i.i.i.i35.preheader:                       ; preds = %bb.c, %bb.g
  %i.k = phi ptr [ %i.ah, %bb.g ], [ %1, %bb.c ]  ; 3 uses
  br label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %.lr.ph.i.i.i.i35.preheader, %bb.e
  %i.l = phi ptr [ %i.n, %bb.e ], [ %i.k, %.lr.ph.i.i.i.i35.preheader ] ; 7 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20, !noalias !773 ; 3 uses
  switch i8 %i.m, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i38 [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i.i.i.i35, %.lr.ph.i.i.i.i35
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.n, %i.b
  br i1 %.not.i.i.i.i36, label %_ZNK5boost5beast4http10token_list5beginEv.exit46, label %.lr.ph.i.i.i.i35, !llvm.loop !385

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i38: ; preds = %.lr.ph.i.i.i.i35
  %i.o = icmp eq ptr %i.l, %i.b
  br i1 %i.o, label %_ZNK5boost5beast4http10token_list5beginEv.exit46, label %bb.f

bb.f:                                             ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i38
  %i.p = zext i8 %i.m to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !20, !noalias !773
  %.not.i.i.i39 = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i39, label %bb.g, label %.preheader.i.i.i41.preheader

.preheader.i.i.i41.preheader:                     ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.k, i64 %2
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.a
  %.lcssa355356 = ptrtoaddr ptr %i.k to i64
  %i.t = sub i64 0, %.lcssa355356
  %scevgep357 = getelementptr i8, ptr %scevgep, i64 %i.t ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %.preheader.i.i.i41._crit_edge, label %.lr.ph

.preheader.i.i.i41:                               ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.b
  br i1 %i.x, label %.preheader.i.i.i41._crit_edge, label %.lr.ph, !llvm.loop !570

.lr.ph:                                           ; preds = %.preheader.i.i.i41.preheader, %.preheader.i.i.i41
  %i.y = phi ptr [ %i.w, %.preheader.i.i.i41 ], [ %i.u, %.preheader.i.i.i41.preheader ] ; 4 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !20, !noalias !773
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !20, !noalias !773
  %.not10.i.i.i42 = icmp eq i8 %i.ac, 0
  br i1 %.not10.i.i.i42, label %._crit_edge, label %.preheader.i.i.i41, !llvm.loop !570

._crit_edge:                                      ; preds = %.lr.ph
  br label %.preheader.i.i.i41._crit_edge, !llvm.loop !570

.preheader.i.i.i41._crit_edge:                    ; preds = %.preheader.i.i.i41, %._crit_edge, %.preheader.i.i.i41.preheader
  %.lcssa342 = phi ptr [ %i.y, %._crit_edge ], [ %scevgep357, %.preheader.i.i.i41.preheader ], [ %scevgep357, %.preheader.i.i.i41 ] ; 2 uses
  %.lcssa.i.i.i43 = phi ptr [ %i.y, %._crit_edge ], [ %i.b, %.preheader.i.i.i41.preheader ], [ %i.b, %.preheader.i.i.i41 ]
  %i.ad = ptrtoint ptr %.lcssa.i.i.i43 to i64
  %i.ae = ptrtoint ptr %i.l to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ne ptr %.lcssa342, %1
  br label %_ZNK5boost5beast4http10token_list5beginEv.exit46

bb.g:                                             ; preds = %bb.f
  %.not9.i.i.i45 = icmp ne i8 %i.m, 44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %.not8.i.i.i.i34 = icmp eq ptr %i.ah, %i.b
  %or.cond315 = select i1 %.not9.i.i.i45, i1 true, i1 %.not8.i.i.i.i34
  br i1 %or.cond315, label %_ZNK5boost5beast4http10token_list5beginEv.exit46, label %.lr.ph.i.i.i.i35.preheader, !llvm.loop !571

_ZNK5boost5beast4http10token_list5beginEv.exit46: ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i38, %bb.g, %bb.e, %.preheader.i.i.i41._crit_edge
  %.sroa.0192.0 = phi ptr [ %i.l, %.preheader.i.i.i41._crit_edge ], [ null, %bb.e ], [ null, %bb.g ], [ null, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i38 ] ; 4 uses
  %.sroa.13.0 = phi i64 [ %i.af, %.preheader.i.i.i41._crit_edge ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i38 ] ; 14 uses
  %.sroa.26.0 = phi i1 [ %i.ag, %.preheader.i.i.i41._crit_edge ], [ false, %bb.e ], [ false, %bb.g ], [ false, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i38 ]
  %.sroa.20.0 = phi ptr [ %.lcssa342, %.preheader.i.i.i41._crit_edge ], [ %i.b, %bb.e ], [ %i.b, %bb.g ], [ %i.b, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i38 ] ; 2 uses
  %i.ai = add i64 %2, %i.a                        ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %_ZNK5boost5beast4http10token_list5beginEv.exit46
  %i.aj = phi ptr [ %.sroa.20.0, %_ZNK5boost5beast4http10token_list5beginEv.exit46 ], [ %i.bh, %bb.m ] ; 5 uses
  %.06.i.i.i = phi i1 [ %.sroa.26.0, %_ZNK5boost5beast4http10token_list5beginEv.exit46 ], [ false, %bb.m ]
  %.not8.i.i.i.i49 = icmp eq ptr %i.aj, %i.b
  br i1 %.not8.i.i.i.i49, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i52, label %.lr.ph.i.i.i.i50.preheader

.lr.ph.i.i.i.i50.preheader:                       ; preds = %bb.h
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %scevgep358 = getelementptr i8, ptr %i.aj, i64 %i.ai
  %i.al = sub i64 0, %i.ak
  %scevgep359 = getelementptr i8, ptr %scevgep358, i64 %i.al
  br label %.lr.ph.i.i.i.i50

.lr.ph.i.i.i.i50:                                 ; preds = %.lr.ph.i.i.i.i50.preheader, %bb.i
  %i.am = phi ptr [ %i.ao, %bb.i ], [ %i.aj, %.lr.ph.i.i.i.i50.preheader ] ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !20, !noalias !776
  switch i8 %i.an, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i52 [
    i8 32, label %bb.i
    i8 9, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i.i.i.i50, %.lr.ph.i.i.i.i50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i51, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i52, label %.lr.ph.i.i.i.i50, !llvm.loop !385

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i52: ; preds = %bb.i, %.lr.ph.i.i.i.i50, %bb.h
  %.promoted22.i.i.i = phi ptr [ %i.aj, %bb.h ], [ %i.am, %.lr.ph.i.i.i.i50 ], [ %scevgep359, %bb.i ] ; 8 uses
  %i.ap = icmp eq ptr %.promoted22.i.i.i, %i.b
  br i1 %i.ap, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i52
  %i.aq = load i8, ptr %.promoted22.i.i.i, align 1, !tbaa !20, !noalias !776 ; 2 uses
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !20, !noalias !776
  %.not.i.i.i53 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.06.i.i.i, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i, label %.preheader.i.i.i54.preheader

.preheader.i.i.i54.preheader:                     ; preds = %bb.k
  %.promoted22.i.i.i.lcssa360362 = ptrtoaddr ptr %.promoted22.i.i.i to i64
  %scevgep361 = getelementptr i8, ptr %.promoted22.i.i.i, i64 %i.ai
  %i.au = sub i64 0, %.promoted22.i.i.i.lcssa360362
  %scevgep363 = getelementptr i8, ptr %scevgep361, i64 %i.au ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.promoted22.i.i.i, i64 1 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.b
  br i1 %i.aw, label %.preheader.i.i.i54._crit_edge, label %.lr.ph471

.preheader.i.i.i54:                               ; preds = %.lr.ph471
  %i.ax = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.b
  br i1 %i.ay, label %.preheader.i.i.i54._crit_edge, label %.lr.ph471, !llvm.loop !570

.lr.ph471:                                        ; preds = %.preheader.i.i.i54.preheader, %.preheader.i.i.i54
  %i.az = phi ptr [ %i.ax, %.preheader.i.i.i54 ], [ %i.av, %.preheader.i.i.i54.preheader ] ; 4 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !20, !noalias !776
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !20, !noalias !776
  %.not10.i.i.i55 = icmp eq i8 %i.bd, 0
  br i1 %.not10.i.i.i55, label %._crit_edge472, label %.preheader.i.i.i54, !llvm.loop !570

._crit_edge472:                                   ; preds = %.lr.ph471
  br label %.preheader.i.i.i54._crit_edge, !llvm.loop !570

.preheader.i.i.i54._crit_edge:                    ; preds = %.preheader.i.i.i54, %._crit_edge472, %.preheader.i.i.i54.preheader
  %.lcssa341 = phi ptr [ %i.az, %._crit_edge472 ], [ %scevgep363, %.preheader.i.i.i54.preheader ], [ %scevgep363, %.preheader.i.i.i54 ]
  %.lcssa.i.i.i56 = phi ptr [ %i.az, %._crit_edge472 ], [ %i.b, %.preheader.i.i.i54.preheader ], [ %i.b, %.preheader.i.i.i54 ]
  %i.be = ptrtoint ptr %.lcssa.i.i.i56 to i64
  %i.bf = ptrtoint ptr %.promoted22.i.i.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  br label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i

bb.l:                                             ; preds = %bb.j
  %.not9.i.i.i57 = icmp eq i8 %i.aq, 44
  br i1 %.not9.i.i.i57, label %bb.m, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.promoted22.i.i.i, i64 1
  br label %bb.h, !llvm.loop !571

_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i: ; preds = %bb.l, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i52, %bb.k, %.preheader.i.i.i54._crit_edge
  %.sroa.6246.0 = phi i64 [ %i.bg, %.preheader.i.i.i54._crit_edge ], [ 0, %bb.k ], [ 0, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i52 ], [ 0, %bb.l ]
  %.sroa.9247.0 = phi ptr [ %.lcssa341, %.preheader.i.i.i54._crit_edge ], [ %i.b, %bb.k ], [ %i.b, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i52 ], [ %i.b, %bb.l ] ; 2 uses
  %.sroa.18248.0 = phi ptr [ %.sroa.20.0, %.preheader.i.i.i54._crit_edge ], [ %i.b, %bb.k ], [ %i.b, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i52 ], [ %i.b, %bb.l ] ; 2 uses
  %.sroa.0245.0 = phi ptr [ %.promoted22.i.i.i, %.preheader.i.i.i54._crit_edge ], [ null, %bb.k ], [ null, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i52 ], [ null, %bb.l ]
  %i.bi = icmp eq ptr %i.b, %.sroa.9247.0
  %i.bj = icmp eq ptr %i.b, %.sroa.18248.0
  %or.cond250 = and i1 %i.bj, %i.bi
  br i1 %or.cond250, label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit, label %bb.t

_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit: ; preds = %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.24.0.copyload.i = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !16
  %.not.i.i = icmp eq i64 %.sroa.13.0, %.sroa.24.0.copyload.i
  br i1 %.not.i.i, label %.preheader21.i.preheader.i, label %_ZN5boost5beast7iequalsENS_4core17basic_string_viewIcEES3_.exit.i

.preheader21.i.preheader.i:                       ; preds = %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit
  %.not14.i.i493 = icmp eq i64 %.sroa.13.0, 0
  br i1 %.not14.i.i493, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %.lr.ph497

.lr.ph497:                                        ; preds = %.preheader21.i.preheader.i
  %.sroa.03.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !187
  br label %bb.n

.preheader21.i.i:                                 ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i496, i64 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i495, i64 1
  %.not14.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not14.i.i, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %bb.n, !llvm.loop !255

bb.n:                                             ; preds = %.lr.ph497, %.preheader21.i.i
  %.0.i.i496 = phi ptr [ %.sroa.03.0.copyload.i, %.lr.ph497 ], [ %i.bk, %.preheader21.i.i ] ; 3 uses
  %.08.i.i495 = phi ptr [ %.sroa.0192.0, %.lr.ph497 ], [ %i.bl, %.preheader21.i.i ] ; 3 uses
  %.010.i.i494 = phi i64 [ %.sroa.13.0, %.lr.ph497 ], [ %i.bm, %.preheader21.i.i ]
  %i.bm = add i64 %.010.i.i494, -1                ; 3 uses
  %i.bn = load i8, ptr %.08.i.i495, align 1, !tbaa !20
  %i.bo = load i8, ptr %.0.i.i496, align 1, !tbaa !20
  %.not15.i.i = icmp eq i8 %i.bn, %i.bo
  br i1 %.not15.i.i, label %.preheader21.i.i, label %.preheader.i.i, !llvm.loop !255

.preheader.i.i:                                   ; preds = %bb.n, %bb.o
  %.111.i.i = phi i64 [ %i.cd, %bb.o ], [ %i.bm, %bb.n ] ; 2 uses
  %.19.i.i = phi ptr [ %i.cc, %bb.o ], [ %.08.i.i495, %bb.n ] ; 2 uses
  %.1.i.i = phi ptr [ %i.cb, %bb.o ], [ %.0.i.i496, %bb.n ] ; 2 uses
  %i.bp = load i8, ptr %.19.i.i, align 1, !tbaa !20 ; 3 uses
  %i.bq = sext i8 %i.bp to i32
  %i.br = add nsw i32 %i.bq, -65
  %i.bs = icmp ult i32 %i.br, 26
  %i.bt = add i8 %i.bp, 32
  %i.bu = select i1 %i.bs, i8 %i.bt, i8 %i.bp
  %i.bv = load i8, ptr %.1.i.i, align 1, !tbaa !20 ; 3 uses
  %i.bw = sext i8 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, -65
  %i.by = icmp ult i32 %i.bx, 26
  %i.bz = add i8 %i.bv, 32
  %i.ca = select i1 %i.by, i8 %i.bz, i8 %i.bv
  %.not16.i.i = icmp eq i8 %i.bu, %i.ca
  br i1 %.not16.i.i, label %bb.o, label %_ZN5boost5beast7iequalsENS_4core17basic_string_viewIcEES3_.exit.i

bb.o:                                             ; preds = %.preheader.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.19.i.i, i64 1
  %i.cd = add i64 %.111.i.i, -1
  %.not17.i.i = icmp eq i64 %.111.i.i, 0
  br i1 %.not17.i.i, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %.preheader.i.i, !llvm.loop !256

_ZN5boost5beast7iequalsENS_4core17basic_string_viewIcEES3_.exit.i: ; preds = %.preheader.i.i, %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit
  %.sroa.2.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i72, align 8, !tbaa !16
  %.not.i9.i = icmp eq i64 %.sroa.13.0, %.sroa.2.0.copyload.i
  br i1 %.not.i9.i, label %.preheader21.i11.preheader.i, label %_ZNK5boost5beast4http6detail17iequals_predicateclENS_4core17basic_string_viewIcEE.exit

.preheader21.i11.preheader.i:                     ; preds = %_ZN5boost5beast7iequalsENS_4core17basic_string_viewIcEES3_.exit.i
  %.not14.i15.i498 = icmp eq i64 %.sroa.13.0, 0
  br i1 %.not14.i15.i498, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %.lr.ph502

.lr.ph502:                                        ; preds = %.preheader21.i11.preheader.i
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ce, align 8, !tbaa !187
  br label %bb.p

.preheader21.i11.i:                               ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i14.i501, i64 1
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i13.i500, i64 1
  %.not14.i15.i = icmp eq i64 %i.ch, 0
  br i1 %.not14.i15.i, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %bb.p, !llvm.loop !255

bb.p:                                             ; preds = %.lr.ph502, %.preheader21.i11.i
  %.0.i14.i501 = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph502 ], [ %i.cf, %.preheader21.i11.i ] ; 3 uses
  %.08.i13.i500 = phi ptr [ %.sroa.0192.0, %.lr.ph502 ], [ %i.cg, %.preheader21.i11.i ] ; 3 uses
  %.010.i12.i499 = phi i64 [ %.sroa.13.0, %.lr.ph502 ], [ %i.ch, %.preheader21.i11.i ]
  %i.ch = add i64 %.010.i12.i499, -1              ; 3 uses
  %i.ci = load i8, ptr %.08.i13.i500, align 1, !tbaa !20
  %i.cj = load i8, ptr %.0.i14.i501, align 1, !tbaa !20
  %.not15.i16.i = icmp eq i8 %i.ci, %i.cj
  br i1 %.not15.i16.i, label %.preheader21.i11.i, label %.preheader.i17.i, !llvm.loop !255

.preheader.i17.i:                                 ; preds = %bb.p, %bb.q
  %.111.i18.i = phi i64 [ %i.cy, %bb.q ], [ %i.ch, %bb.p ] ; 2 uses
  %.19.i19.i = phi ptr [ %i.cx, %bb.q ], [ %.08.i13.i500, %bb.p ] ; 2 uses
  %.1.i20.i = phi ptr [ %i.cw, %bb.q ], [ %.0.i14.i501, %bb.p ] ; 2 uses
  %i.ck = load i8, ptr %.19.i19.i, align 1, !tbaa !20 ; 3 uses
  %i.cl = sext i8 %i.ck to i32
  %i.cm = add nsw i32 %i.cl, -65
  %i.cn = icmp ult i32 %i.cm, 26
  %i.co = add i8 %i.ck, 32
  %i.cp = select i1 %i.cn, i8 %i.co, i8 %i.ck
  %i.cq = load i8, ptr %.1.i20.i, align 1, !tbaa !20 ; 3 uses
  %i.cr = sext i8 %i.cq to i32
  %i.cs = add nsw i32 %i.cr, -65
  %i.ct = icmp ult i32 %i.cs, 26
  %i.cu = add i8 %i.cq, 32
  %i.cv = select i1 %i.ct, i8 %i.cu, i8 %i.cq
  %.not16.i21.i = icmp eq i8 %i.cp, %i.cv
  br i1 %.not16.i21.i, label %bb.q, label %_ZNK5boost5beast4http6detail17iequals_predicateclENS_4core17basic_string_viewIcEE.exit

bb.q:                                             ; preds = %.preheader.i17.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.1.i20.i, i64 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i19.i, i64 1
  %i.cy = add i64 %.111.i18.i, -1
  %.not17.i22.i = icmp eq i64 %.111.i18.i, 0
  br i1 %.not17.i22.i, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %.preheader.i17.i, !llvm.loop !256

_ZNK5boost5beast4http6detail17iequals_predicateclENS_4core17basic_string_viewIcEE.exit: ; preds = %.preheader.i17.i, %_ZN5boost5beast7iequalsENS_4core17basic_string_viewIcEES3_.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4104 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !183
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 4112 ; 4 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !185 ; 5 uses
  %i.dd = sub i64 %i.da, %i.dc
  %.not.i.i73 = icmp ult i64 %i.dd, %.sroa.13.0
  br i1 %.not.i.i73, label %bb.r, label %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEE.exit

bb.r:                                             ; preds = %_ZNK5boost5beast4http6detail17iequals_predicateclENS_4core17basic_string_viewIcEE.exit
  %i.de = add i64 %i.dc, %.sroa.13.0
  %i.df = shl i64 %i.de, 1                        ; 2 uses
  %i.dg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.df) #52 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !186 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr align 1 %i.di, i64 %i.dc, i1 false)
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !187
  %.not.i.i.i74 = icmp eq ptr %i.di, %0
  %i.dj = icmp eq ptr %i.di, null
  %or.cond.i.i.i = or i1 %.not.i.i.i74, %i.dj
  br i1 %or.cond.i.i.i, label %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZdaPv(ptr noundef nonnull %i.di) #51
  %.pre.pre.i = load i64, ptr %i.db, align 8, !tbaa !185
  br label %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i

_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i: ; preds = %bb.s, %bb.r
  %.pre.i = phi i64 [ %.pre.pre.i, %bb.s ], [ %i.dc, %bb.r ]
  store i64 %i.df, ptr %i.cz, align 8, !tbaa !183
  br label %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEE.exit

_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEE.exit: ; preds = %_ZNK5boost5beast4http6detail17iequals_predicateclENS_4core17basic_string_viewIcEE.exit, %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i
  %i.dk = phi i64 [ %i.dc, %_ZNK5boost5beast4http6detail17iequals_predicateclENS_4core17basic_string_viewIcEE.exit ], [ %.pre.i, %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !186
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr readonly align 1 %.sroa.0192.0, i64 %.sroa.13.0, i1 false)
  %i.do = load i64, ptr %i.db, align 8, !tbaa !185
  %i.dp = add i64 %i.do, %.sroa.13.0
  store i64 %i.dp, ptr %i.db, align 8, !tbaa !185
  br label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit

bb.t:                                             ; preds = %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4104 ; 6 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !183
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 4112 ; 12 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !185 ; 5 uses
  %i.du = sub i64 %i.dr, %i.dt
  %.not.i.i75 = icmp ult i64 %i.du, %.sroa.13.0
  br i1 %.not.i.i75, label %bb.u, label %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEE.exit81

bb.u:                                             ; preds = %bb.t
  %i.dv = add i64 %i.dt, %.sroa.13.0
  %i.dw = shl i64 %i.dv, 1                        ; 2 uses
  %i.dx = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dw) #52 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !186 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr align 1 %i.dz, i64 %i.dt, i1 false)
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !187
  %.not.i.i.i76 = icmp eq ptr %i.dz, %0
  %i.ea = icmp eq ptr %i.dz, null
  %or.cond.i.i.i77 = or i1 %.not.i.i.i76, %i.ea
  br i1 %or.cond.i.i.i77, label %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i79, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.dz) #51
  %.pre.pre.i78 = load i64, ptr %i.ds, align 8, !tbaa !185
  br label %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i79

_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i79: ; preds = %bb.v, %bb.u
  %.pre.i80 = phi i64 [ %.pre.pre.i78, %bb.v ], [ %i.dt, %bb.u ]
  store i64 %i.dw, ptr %i.dq, align 8, !tbaa !183
  br label %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEE.exit81

_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEE.exit81: ; preds = %bb.t, %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i79
  %i.eb = phi i64 [ %i.dt, %bb.t ], [ %.pre.i80, %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i79 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 9 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !186
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr readonly align 1 %.sroa.0192.0, i64 %.sroa.13.0, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEES5_.exit163, %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEE.exit81
  %.sroa.0172.sroa.5.0.sink = phi i64 [ %.sroa.0172.sroa.5.0, %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEES5_.exit163 ], [ %.sroa.13.0, %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEE.exit81 ]
  %.sroa.0172.sroa.5.0 = phi i64 [ %.sroa.6243.0, %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEES5_.exit163 ], [ %.sroa.6246.0, %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEE.exit81 ] ; 12 uses
  %.sroa.0172.sroa.0.0 = phi ptr [ %.sroa.0242.0, %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEES5_.exit163 ], [ %.sroa.0245.0, %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEE.exit81 ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %.sroa.18.0, %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEES5_.exit163 ], [ %.sroa.18248.0, %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEE.exit81 ]
  %.sroa.5173.0 = phi ptr [ %.sroa.9244.0, %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEES5_.exit163 ], [ %.sroa.9247.0, %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEE.exit81 ] ; 3 uses
  %i.ef = load i64, ptr %i.ds, align 8, !tbaa !185
  %i.eg = add i64 %i.ef, %.sroa.0172.sroa.5.0.sink ; 11 uses
  store i64 %i.eg, ptr %i.ds, align 8, !tbaa !185
  %i.eh = icmp ne ptr %.sroa.5173.0, %.sroa.7.0
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %bb.w
  %i.ei = phi ptr [ %.sroa.5173.0, %bb.w ], [ %i.fg, %bb.ac ] ; 5 uses
  %.06.i.i.i86 = phi i1 [ %i.eh, %bb.w ], [ false, %bb.ac ]
  %.not8.i.i.i.i87 = icmp eq ptr %i.ei, %i.b
  br i1 %.not8.i.i.i.i87, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i90, label %.lr.ph.i.i.i.i88.preheader

.lr.ph.i.i.i.i88.preheader:                       ; preds = %bb.x
  %i.ej = ptrtoaddr ptr %i.ei to i64
  %scevgep364 = getelementptr i8, ptr %i.ei, i64 %i.ai
  %i.ek = sub i64 0, %i.ej
  %scevgep365 = getelementptr i8, ptr %scevgep364, i64 %i.ek
  br label %.lr.ph.i.i.i.i88

.lr.ph.i.i.i.i88:                                 ; preds = %.lr.ph.i.i.i.i88.preheader, %bb.y
  %i.el = phi ptr [ %i.en, %bb.y ], [ %i.ei, %.lr.ph.i.i.i.i88.preheader ] ; 3 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !20, !noalias !779
  switch i8 %i.em, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i90 [
    i8 32, label %bb.y
    i8 9, label %bb.y
  ]

bb.y:                                             ; preds = %.lr.ph.i.i.i.i88, %.lr.ph.i.i.i.i88
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 1 ; 2 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.en, %i.b
  br i1 %.not.i.i.i.i89, label %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i90, label %.lr.ph.i.i.i.i88, !llvm.loop !385

_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i90: ; preds = %bb.y, %.lr.ph.i.i.i.i88, %bb.x
  %.promoted22.i.i.i91 = phi ptr [ %i.ei, %bb.x ], [ %i.el, %.lr.ph.i.i.i.i88 ], [ %scevgep365, %bb.y ] ; 8 uses
  %i.eo = icmp eq ptr %.promoted22.i.i.i91, %i.b
  br i1 %i.eo, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i96, label %bb.z

bb.z:                                             ; preds = %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i90
  %i.ep = load i8, ptr %.promoted22.i.i.i91, align 1, !tbaa !20, !noalias !779 ; 2 uses
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !20, !noalias !779
  %.not.i.i.i92 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i92, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.06.i.i.i86, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i96, label %.preheader.i.i.i93.preheader

.preheader.i.i.i93.preheader:                     ; preds = %bb.aa
  %.promoted22.i.i.i91.lcssa366368 = ptrtoaddr ptr %.promoted22.i.i.i91 to i64
  %scevgep367 = getelementptr i8, ptr %.promoted22.i.i.i91, i64 %i.ai
  %i.et = sub i64 0, %.promoted22.i.i.i91.lcssa366368
  %scevgep369 = getelementptr i8, ptr %scevgep367, i64 %i.et ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.promoted22.i.i.i91, i64 1 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.b
  br i1 %i.ev, label %.preheader.i.i.i93._crit_edge, label %.lr.ph477

.preheader.i.i.i93:                               ; preds = %.lr.ph477
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ey, i64 1 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.b
  br i1 %i.ex, label %.preheader.i.i.i93._crit_edge, label %.lr.ph477, !llvm.loop !570

.lr.ph477:                                        ; preds = %.preheader.i.i.i93.preheader, %.preheader.i.i.i93
  %i.ey = phi ptr [ %i.ew, %.preheader.i.i.i93 ], [ %i.eu, %.preheader.i.i.i93.preheader ] ; 4 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !20, !noalias !779
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4http6detail13is_token_charEcE3tab, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !20, !noalias !779
  %.not10.i.i.i94 = icmp eq i8 %i.fc, 0
  br i1 %.not10.i.i.i94, label %._crit_edge478, label %.preheader.i.i.i93, !llvm.loop !570

._crit_edge478:                                   ; preds = %.lr.ph477
  br label %.preheader.i.i.i93._crit_edge, !llvm.loop !570

.preheader.i.i.i93._crit_edge:                    ; preds = %.preheader.i.i.i93, %._crit_edge478, %.preheader.i.i.i93.preheader
  %.lcssa338 = phi ptr [ %i.ey, %._crit_edge478 ], [ %scevgep369, %.preheader.i.i.i93.preheader ], [ %scevgep369, %.preheader.i.i.i93 ]
  %.lcssa.i.i.i95 = phi ptr [ %i.ey, %._crit_edge478 ], [ %i.b, %.preheader.i.i.i93.preheader ], [ %i.b, %.preheader.i.i.i93 ]
  %i.fd = ptrtoint ptr %.lcssa.i.i.i95 to i64
  %i.fe = ptrtoint ptr %.promoted22.i.i.i91 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  br label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i96

bb.ab:                                            ; preds = %bb.z
  %.not9.i.i.i98 = icmp eq i8 %i.ep, 44
  br i1 %.not9.i.i.i98, label %bb.ac, label %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i96

bb.ac:                                            ; preds = %bb.ab
  %i.fg = getelementptr inbounds nuw i8, ptr %.promoted22.i.i.i91, i64 1
  br label %bb.x, !llvm.loop !571

_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i96: ; preds = %bb.ab, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i90, %bb.aa, %.preheader.i.i.i93._crit_edge
  %.sroa.6243.0 = phi i64 [ %i.ff, %.preheader.i.i.i93._crit_edge ], [ 0, %bb.aa ], [ 0, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i90 ], [ 0, %bb.ab ]
  %.sroa.9244.0 = phi ptr [ %.lcssa338, %.preheader.i.i.i93._crit_edge ], [ %i.b, %bb.aa ], [ %i.b, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i90 ], [ %i.b, %bb.ab ] ; 2 uses
  %.sroa.18.0 = phi ptr [ %.sroa.5173.0, %.preheader.i.i.i93._crit_edge ], [ %i.b, %bb.aa ], [ %i.b, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i90 ], [ %i.b, %bb.ab ] ; 2 uses
  %.sroa.0242.0 = phi ptr [ %.promoted22.i.i.i91, %.preheader.i.i.i93._crit_edge ], [ null, %bb.aa ], [ null, %_ZN5boost5beast4http6detail8skip_owsIPKcEEvRT_S6_.exit.i.i.i90 ], [ null, %bb.ab ]
  %i.fh = icmp eq ptr %i.b, %.sroa.9244.0
  %i.fi = icmp eq ptr %i.b, %.sroa.18.0
  %or.cond251 = and i1 %i.fi, %i.fh
  br i1 %or.cond251, label %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit114, label %bb.aj

_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit114: ; preds = %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i96
  %.sroa.24.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.24.0.copyload.i116 = load i64, ptr %.sroa.24.0..sroa_idx.i115, align 8, !tbaa !16
  %.not.i.i117 = icmp eq i64 %.sroa.0172.sroa.5.0, %.sroa.24.0.copyload.i116
  br i1 %.not.i.i117, label %.preheader21.i.preheader.i136, label %_ZN5boost5beast7iequalsENS_4core17basic_string_viewIcEES3_.exit.i118

.preheader21.i.preheader.i136:                    ; preds = %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit114
  %.not14.i.i142483 = icmp eq i64 %.sroa.0172.sroa.5.0, 0
  br i1 %.not14.i.i142483, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %.lr.ph487

.lr.ph487:                                        ; preds = %.preheader21.i.preheader.i136
  %.sroa.03.0.copyload.i137 = load ptr, ptr %3, align 8, !tbaa !187
  br label %bb.ad

.preheader21.i.i138:                              ; preds = %bb.ad
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i.i141486, i64 1
  %i.fk = getelementptr inbounds nuw i8, ptr %.08.i.i140485, i64 1
  %.not14.i.i142 = icmp eq i64 %i.fl, 0
  br i1 %.not14.i.i142, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %bb.ad, !llvm.loop !255

bb.ad:                                            ; preds = %.lr.ph487, %.preheader21.i.i138
  %.0.i.i141486 = phi ptr [ %.sroa.03.0.copyload.i137, %.lr.ph487 ], [ %i.fj, %.preheader21.i.i138 ] ; 3 uses
  %.08.i.i140485 = phi ptr [ %.sroa.0172.sroa.0.0, %.lr.ph487 ], [ %i.fk, %.preheader21.i.i138 ] ; 3 uses
  %.010.i.i139484 = phi i64 [ %.sroa.0172.sroa.5.0, %.lr.ph487 ], [ %i.fl, %.preheader21.i.i138 ]
  %i.fl = add i64 %.010.i.i139484, -1             ; 3 uses
  %i.fm = load i8, ptr %.08.i.i140485, align 1, !tbaa !20
  %i.fn = load i8, ptr %.0.i.i141486, align 1, !tbaa !20
  %.not15.i.i143 = icmp eq i8 %i.fm, %i.fn
  br i1 %.not15.i.i143, label %.preheader21.i.i138, label %.preheader.i.i144, !llvm.loop !255

.preheader.i.i144:                                ; preds = %bb.ad, %bb.ae
  %.111.i.i145 = phi i64 [ %i.gc, %bb.ae ], [ %i.fl, %bb.ad ] ; 2 uses
  %.19.i.i146 = phi ptr [ %i.gb, %bb.ae ], [ %.08.i.i140485, %bb.ad ] ; 2 uses
  %.1.i.i147 = phi ptr [ %i.ga, %bb.ae ], [ %.0.i.i141486, %bb.ad ] ; 2 uses
  %i.fo = load i8, ptr %.19.i.i146, align 1, !tbaa !20 ; 3 uses
  %i.fp = sext i8 %i.fo to i32
  %i.fq = add nsw i32 %i.fp, -65
  %i.fr = icmp ult i32 %i.fq, 26
  %i.fs = add i8 %i.fo, 32
  %i.ft = select i1 %i.fr, i8 %i.fs, i8 %i.fo
  %i.fu = load i8, ptr %.1.i.i147, align 1, !tbaa !20 ; 3 uses
  %i.fv = sext i8 %i.fu to i32
  %i.fw = add nsw i32 %i.fv, -65
  %i.fx = icmp ult i32 %i.fw, 26
  %i.fy = add i8 %i.fu, 32
  %i.fz = select i1 %i.fx, i8 %i.fy, i8 %i.fu
  %.not16.i.i148 = icmp eq i8 %i.ft, %i.fz
  br i1 %.not16.i.i148, label %bb.ae, label %_ZN5boost5beast7iequalsENS_4core17basic_string_viewIcEES3_.exit.i118

bb.ae:                                            ; preds = %.preheader.i.i144
  %i.ga = getelementptr inbounds nuw i8, ptr %.1.i.i147, i64 1
  %i.gb = getelementptr inbounds nuw i8, ptr %.19.i.i146, i64 1
  %i.gc = add i64 %.111.i.i145, -1
  %.not17.i.i149 = icmp eq i64 %.111.i.i145, 0
  br i1 %.not17.i.i149, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %.preheader.i.i144, !llvm.loop !256

_ZN5boost5beast7iequalsENS_4core17basic_string_viewIcEES3_.exit.i118: ; preds = %.preheader.i.i144, %_ZNK5boost5beast4http10token_list14const_iteratoreqERKS3_.exit114
  %.sroa.2.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.2.0.copyload.i120 = load i64, ptr %.sroa.2.0..sroa_idx.i119, align 8, !tbaa !16
  %.not.i9.i121 = icmp eq i64 %.sroa.0172.sroa.5.0, %.sroa.2.0.copyload.i120
  br i1 %.not.i9.i121, label %.preheader21.i11.preheader.i122, label %_ZNK5boost5beast4http6detail17iequals_predicateclENS_4core17basic_string_viewIcEE.exit150

.preheader21.i11.preheader.i122:                  ; preds = %_ZN5boost5beast7iequalsENS_4core17basic_string_viewIcEES3_.exit.i118
  %.not14.i15.i128488 = icmp eq i64 %.sroa.0172.sroa.5.0, 0
  br i1 %.not14.i15.i128488, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %.lr.ph492

.lr.ph492:                                        ; preds = %.preheader21.i11.preheader.i122
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.0.copyload.i123 = load ptr, ptr %i.gd, align 8, !tbaa !187
  br label %bb.af

.preheader21.i11.i124:                            ; preds = %bb.af
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.i14.i127491, i64 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.08.i13.i126490, i64 1
  %.not14.i15.i128 = icmp eq i64 %i.gg, 0
  br i1 %.not14.i15.i128, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %bb.af, !llvm.loop !255

bb.af:                                            ; preds = %.lr.ph492, %.preheader21.i11.i124
  %.0.i14.i127491 = phi ptr [ %.sroa.0.0.copyload.i123, %.lr.ph492 ], [ %i.ge, %.preheader21.i11.i124 ] ; 3 uses
  %.08.i13.i126490 = phi ptr [ %.sroa.0172.sroa.0.0, %.lr.ph492 ], [ %i.gf, %.preheader21.i11.i124 ] ; 3 uses
  %.010.i12.i125489 = phi i64 [ %.sroa.0172.sroa.5.0, %.lr.ph492 ], [ %i.gg, %.preheader21.i11.i124 ]
  %i.gg = add i64 %.010.i12.i125489, -1           ; 3 uses
  %i.gh = load i8, ptr %.08.i13.i126490, align 1, !tbaa !20
  %i.gi = load i8, ptr %.0.i14.i127491, align 1, !tbaa !20
  %.not15.i16.i129 = icmp eq i8 %i.gh, %i.gi
  br i1 %.not15.i16.i129, label %.preheader21.i11.i124, label %.preheader.i17.i130, !llvm.loop !255

.preheader.i17.i130:                              ; preds = %bb.af, %bb.ag
  %.111.i18.i131 = phi i64 [ %i.gx, %bb.ag ], [ %i.gg, %bb.af ] ; 2 uses
  %.19.i19.i132 = phi ptr [ %i.gw, %bb.ag ], [ %.08.i13.i126490, %bb.af ] ; 2 uses
  %.1.i20.i133 = phi ptr [ %i.gv, %bb.ag ], [ %.0.i14.i127491, %bb.af ] ; 2 uses
  %i.gj = load i8, ptr %.19.i19.i132, align 1, !tbaa !20 ; 3 uses
  %i.gk = sext i8 %i.gj to i32
  %i.gl = add nsw i32 %i.gk, -65
  %i.gm = icmp ult i32 %i.gl, 26
  %i.gn = add i8 %i.gj, 32
  %i.go = select i1 %i.gm, i8 %i.gn, i8 %i.gj
  %i.gp = load i8, ptr %.1.i20.i133, align 1, !tbaa !20 ; 3 uses
  %i.gq = sext i8 %i.gp to i32
  %i.gr = add nsw i32 %i.gq, -65
  %i.gs = icmp ult i32 %i.gr, 26
  %i.gt = add i8 %i.gp, 32
  %i.gu = select i1 %i.gs, i8 %i.gt, i8 %i.gp
  %.not16.i21.i134 = icmp eq i8 %i.go, %i.gu
  br i1 %.not16.i21.i134, label %bb.ag, label %_ZNK5boost5beast4http6detail17iequals_predicateclENS_4core17basic_string_viewIcEE.exit150

bb.ag:                                            ; preds = %.preheader.i17.i130
  %i.gv = getelementptr inbounds nuw i8, ptr %.1.i20.i133, i64 1
  %i.gw = getelementptr inbounds nuw i8, ptr %.19.i19.i132, i64 1
  %i.gx = add i64 %.111.i18.i131, -1
  %.not17.i22.i135 = icmp eq i64 %.111.i18.i131, 0
  br i1 %.not17.i22.i135, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %.preheader.i17.i130, !llvm.loop !256

_ZNK5boost5beast4http6detail17iequals_predicateclENS_4core17basic_string_viewIcEE.exit150: ; preds = %.preheader.i17.i130, %_ZN5boost5beast7iequalsENS_4core17basic_string_viewIcEES3_.exit.i118
  %i.gy = add i64 %.sroa.0172.sroa.5.0, 2         ; 2 uses
  %i.gz = load i64, ptr %i.dq, align 8, !tbaa !183
  %i.ha = sub i64 %i.gz, %i.eg
  %.not.i.i151 = icmp ult i64 %i.ha, %i.gy
  br i1 %.not.i.i151, label %bb.ah, label %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEES5_.exit

bb.ah:                                            ; preds = %_ZNK5boost5beast4http6detail17iequals_predicateclENS_4core17basic_string_viewIcEE.exit150
  %i.hb = add i64 %i.eg, %i.gy
  %i.hc = shl i64 %i.hb, 1                        ; 2 uses
  %i.hd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.hc) #52 ; 2 uses
  %i.he = load ptr, ptr %i.ec, align 8, !tbaa !186 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hd, ptr align 1 %i.he, i64 %i.eg, i1 false)
  store ptr %i.hd, ptr %i.ec, align 8, !tbaa !187
  %.not.i.i.i152 = icmp eq ptr %i.he, %0
  %i.hf = icmp eq ptr %i.he, null
  %or.cond.i.i.i153 = or i1 %.not.i.i.i152, %i.hf
  br i1 %or.cond.i.i.i153, label %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i155, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZdaPv(ptr noundef nonnull %i.he) #51
  %.pre.pre.i154 = load i64, ptr %i.ds, align 8, !tbaa !185
  br label %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i155

_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i155: ; preds = %bb.ai, %bb.ah
  %.pre.i156 = phi i64 [ %.pre.pre.i154, %bb.ai ], [ %i.eg, %bb.ah ]
  store i64 %i.hc, ptr %i.dq, align 8, !tbaa !183
  br label %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEES5_.exit

_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEES5_.exit: ; preds = %_ZNK5boost5beast4http6detail17iequals_predicateclENS_4core17basic_string_viewIcEE.exit150, %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i155
  %i.hg = phi i64 [ %i.eg, %_ZNK5boost5beast4http6detail17iequals_predicateclENS_4core17basic_string_viewIcEE.exit150 ], [ %.pre.i156, %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i155 ]
  %i.hh = load ptr, ptr %i.ec, align 8, !tbaa !186
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hg
  store i16 8236, ptr %i.hi, align 1
  %i.hj = load i64, ptr %i.ds, align 8, !tbaa !185
  %i.hk = add i64 %i.hj, 2                        ; 2 uses
  store i64 %i.hk, ptr %i.ds, align 8, !tbaa !185
  %i.hl = load ptr, ptr %i.ec, align 8, !tbaa !186
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr readonly align 1 %.sroa.0172.sroa.0.0, i64 %.sroa.0172.sroa.5.0, i1 false)
  %i.hn = load i64, ptr %i.ds, align 8, !tbaa !185
  %i.ho = add i64 %i.hn, %.sroa.0172.sroa.5.0
  store i64 %i.ho, ptr %i.ds, align 8, !tbaa !185
  br label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit

bb.aj:                                            ; preds = %_ZN5boost5beast4http10token_list14const_iteratorppEv.exit.i96
  %i.hp = add i64 %.sroa.0172.sroa.5.0, 2         ; 2 uses
  %i.hq = load i64, ptr %i.dq, align 8, !tbaa !183
  %i.hr = sub i64 %i.hq, %i.eg
  %.not.i.i157 = icmp ult i64 %i.hr, %i.hp
  br i1 %.not.i.i157, label %bb.ak, label %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEES5_.exit163

bb.ak:                                            ; preds = %bb.aj
  %i.hs = add i64 %i.eg, %i.hp
  %i.ht = shl i64 %i.hs, 1                        ; 2 uses
  %i.hu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ht) #52 ; 2 uses
  %i.hv = load ptr, ptr %i.ec, align 8, !tbaa !186 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hu, ptr align 1 %i.hv, i64 %i.eg, i1 false)
  store ptr %i.hu, ptr %i.ec, align 8, !tbaa !187
  %.not.i.i.i158 = icmp eq ptr %i.hv, %0
  %i.hw = icmp eq ptr %i.hv, null
  %or.cond.i.i.i159 = or i1 %.not.i.i.i158, %i.hw
  br i1 %or.cond.i.i.i159, label %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i161, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZdaPv(ptr noundef nonnull %i.hv) #51
  %.pre.pre.i160 = load i64, ptr %i.ds, align 8, !tbaa !185
  br label %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i161

_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i161: ; preds = %bb.al, %bb.ak
  %.pre.i162 = phi i64 [ %.pre.pre.i160, %bb.al ], [ %i.eg, %bb.ak ]
  store i64 %i.ht, ptr %i.dq, align 8, !tbaa !183
  br label %_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEES5_.exit163

_ZN5boost5beast6detail16temporary_buffer6appendENS_4core17basic_string_viewIcEES5_.exit163: ; preds = %bb.aj, %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i161
  %i.hx = phi i64 [ %i.eg, %bb.aj ], [ %.pre.i162, %_ZN5boost5beast6detail16temporary_buffer10deallocateEPc.exit.i.i161 ]
  %i.hy = load ptr, ptr %i.ec, align 8, !tbaa !186
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hx
  store i16 8236, ptr %i.hz, align 1
  %i.ia = load i64, ptr %i.ds, align 8, !tbaa !185
  %i.ib = add i64 %i.ia, 2                        ; 2 uses
  store i64 %i.ib, ptr %i.ds, align 8, !tbaa !185
end_hunk_2
