Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/instantiate_cpp_exprgrammar?download=true
inline.NumInlined: 4215
inline.NumDeleted: 2338
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5boost6spirit7classic6actionINS1_4ruleINS1_7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS6_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSQ_INS1_5chlitINS6_8token_idEEEST_EEST_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS6_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEN7phoenix5actorINS19_9compositeINS19_15times_assign_opENS1A_INS19_14closure_memberILi0ENS19_7closureINS14_13closure_valueENS19_5nil_tES1G_S1G_S1G_S1G_EEEEEENS1A_INS19_8argumentILi0EEEEES1G_S1G_S1G_S1G_S1G_EEEEE5parseIS11_EENS1_13parser_resultIS1P_T_E4typeERKS1S_:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(20) ptr @_ZN5boost4wave8grammars8closures13closure_valuemLERKS3_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21
  switch i32 %i.a, label %bb.z [
    i32 1, label %bb.b
    i32 2, label %bb.n
    i32 3, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !21
  switch i32 %i.b, label %bb.z [
    i32 3, label %_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit
    i32 1, label %bb.c
    i32 2, label %bb.i
  ]

_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !19, !range !59, !noundef !60
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  %i.h = mul nuw nsw i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !19
  br label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19   ; 7 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 6 uses
  %i.n = icmp sgt i64 %i.m, 0                     ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.g, label %.split

.split:                                           ; preds = %bb.d
  %i.o = udiv i64 -9223372036854775808, %i.j
  %.neg = sub i64 0, %i.o
  %i.p = icmp slt i64 %i.m, %.neg
  br i1 %i.p, label %bb.h, label %.critedge

bb.e:                                             ; preds = %bb.c
  br i1 %i.n, label %.split54, label %bb.f

.split54:                                         ; preds = %bb.e
  %i.q = udiv i64 -9223372036854775808, %i.m
  %.neg56 = sub i64 0, %i.q
  %i.r = icmp slt i64 %i.j, %.neg56
  br i1 %i.r, label %bb.h, label %.critedge

bb.f:                                             ; preds = %bb.e
  %.not50 = icmp eq i64 %i.j, 0
  br i1 %.not50, label %.critedge, label %.split53

.split53:                                         ; preds = %bb.f
  %.nonneg57 = sub i64 0, %i.j
  %i.s = udiv i64 9223372036854775807, %.nonneg57
  %.neg58 = sub nsw i64 0, %i.s
  %i.t = icmp slt i64 %i.m, %.neg58
  br i1 %i.t, label %bb.h, label %.critedge

bb.g:                                             ; preds = %bb.d
  %i.u = udiv i64 9223372036854775807, %i.m
  %i.v = icmp samesign ugt i64 %i.j, %i.u
  br i1 %i.v, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.split54, %.split53, %.split, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.w, align 8, !tbaa !25
  br label %bb.z

.critedge:                                        ; preds = %.split54, %.split53, %.split, %bb.f, %bb.g
  %i.x = mul nsw i64 %i.m, %i.j
  store i64 %i.x, ptr %i.i, align 8, !tbaa !19
  br label %bb.z

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !19   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !19 ; 3 uses
  %mul46 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.z, i64 %i.ab) ; 2 uses
  %mul.val47 = extractvalue { i64, i1 } %mul46, 0 ; 2 uses
  %.not43 = icmp eq i64 %i.z, 0
  %.not44 = icmp eq i64 %i.ab, 0
  %or.cond51 = select i1 %.not43, i1 true, i1 %.not44
  br i1 %or.cond51, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %mul.ov48 = extractvalue { i64, i1 } %mul46, 1
  br i1 %mul.ov48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = udiv i64 %mul.val47, %i.ab
  %.not49 = icmp eq i64 %i.ac, %i.z
  br i1 %.not49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.ad, align 8, !tbaa !25
  br label %bb.z

bb.m:                                             ; preds = %bb.k, %bb.i
  store i64 %mul.val47, ptr %i.y, align 8, !tbaa !19
  store i32 2, ptr %0, align 8, !tbaa !21
  br label %bb.z

bb.n:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %1, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  switch i32 %i.ae, label %bb.q [
    i32 2, label %bb.o
    i32 3, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !19
  br label %_ZN5boost4wave8grammars8closures8as_ulongERKNS2_13closure_valueE.exit

bb.p:                                             ; preds = %bb.n
  %i.ah = load i8, ptr %i.af, align 8, !tbaa !19, !range !59, !noundef !60
  %i.ai = zext nneg i8 %i.ah to i64
  br label %_ZN5boost4wave8grammars8closures8as_ulongERKNS2_13closure_valueE.exit

bb.q:                                             ; preds = %bb.n
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !19
  br label %_ZN5boost4wave8grammars8closures8as_ulongERKNS2_13closure_valueE.exit

_ZN5boost4wave8grammars8closures8as_ulongERKNS2_13closure_valueE.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.0.i52 = phi i64 [ %i.aj, %bb.q ], [ %i.ag, %bb.o ], [ %i.ai, %bb.p ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !19 ; 3 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.al, i64 %.0.i52) ; 2 uses
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 2 uses
  %i.am = icmp ne i64 %i.al, 0
  %i.an = icmp ne i64 %.0.i52, 0
  %or.cond = and i1 %i.an, %i.am
  br i1 %or.cond, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN5boost4wave8grammars8closures8as_ulongERKNS2_13closure_valueE.exit
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = udiv i64 %mul.val, %.0.i52
  %.not = icmp eq i64 %i.ao, %i.al
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.ap, align 8, !tbaa !25
  br label %bb.z

bb.u:                                             ; preds = %bb.s, %_ZN5boost4wave8grammars8closures8as_ulongERKNS2_13closure_valueE.exit
  store i64 %mul.val, ptr %i.ak, align 8, !tbaa !19
  store i32 2, ptr %0, align 8, !tbaa !21
  br label %bb.z

bb.v:                                             ; preds = %bb.a
  %i.aq = load i32, ptr %1, align 8, !tbaa !21
  switch i32 %i.aq, label %bb.z [
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !19, !range !59, !noundef !60
  %i.at = zext nneg i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !19
  %i.aw = mul nuw nsw i64 %i.av, %i.at
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !19
  store i32 1, ptr %0, align 8, !tbaa !21
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !19, !range !59, !noundef !60
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !19
  %i.bc = mul nuw nsw i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ax, align 8, !tbaa !19
  store i32 2, ptr %0, align 8, !tbaa !21
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !19, !range !59, !noundef !60
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !19, !range !59, !noundef !60
  %narrow = mul nuw nsw i8 %i.bg, %i.be
  store i8 %narrow, ptr %i.bd, align 8, !tbaa !19
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %bb.u, %bb.l, %bb.m, %bb.h, %.critedge, %bb.v, %bb.w, %bb.x, %bb.y, %bb.b, %_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit, %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !25
  %i.bl = or i32 %i.bk, %i.bi
  store i32 %i.bl, ptr %i.bh, align 8, !tbaa !25
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6spirit7classic6actionINS1_4ruleINS1_7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS6_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSQ_INS1_5chlitINS6_8token_idEEEST_EEST_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS6_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEN7phoenix5actorINS19_9compositeINS19_16divide_assign_opENS1A_INS19_14closure_memberILi0ENS19_7closureINS14_13closure_valueENS19_5nil_tES1G_S1G_S1G_S1G_EEEEEENS1A_INS19_8argumentILi0EEEEES1G_S1G_S1G_S1G_S1G_EEEEE5parseIS11_EENS1_13parser_resultIS1P_T_E4typeERKS1S_(ptr dead_on_unwind noalias writable sret(%"class.boost::spirit::classic::match.96") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.boost::spirit::classic::scanner.99", align 8 ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !447, !nonnull !60, !align !448 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !449, !nonnull !60, !align !234
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = ptrtoint ptr %i.a to i64
  store i64 %i.e, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.f, align 8, !tbaa !226
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load i64, ptr %i.d, align 8, !tbaa !26
  store i64 %i.h, ptr %i.g, align 8, !tbaa !26
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !449, !nonnull !60, !align !234
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.j = call i64 @_ZNK5boost6spirit7classic11alternativeINS2_INS1_5chlitINS_4wave8token_idEEES6_EES6_E5parseINS1_7scannerISt20_List_const_iteratorINS4_8cpplexer9lex_tokenINS4_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEEENS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS8_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS8_T_E4typeERKS14_(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %_ZNK5boost6spirit7classic7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS4_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSO_INS1_5chlitINS4_8token_idEEESR_EESR_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEE6at_endEv.exit, label %bb.b

_ZNK5boost6spirit7classic7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS4_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSO_INS1_5chlitINS4_8token_idEEESR_EESR_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEE6at_endEv.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !449, !nonnull !60, !align !234
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.l, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.m = load ptr, ptr %1, align 8, !tbaa !741, !nonnull !60, !align !234
  call void @_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS7_4util13file_positionINSA_11flex_stringIcSt11char_traitsIcESaIcENSA_9CowStringINSA_22AllocatorStringStorageIcSF_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSR_INS1_5chlitINS7_8token_idEEESU_EESU_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS7_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEERKS19_S12_S17_S18_E5parseIS12_EENS1_13parser_resultIS19_T_E4typeERKS1F_(ptr dead_on_unwind writable sret(%"class.boost::spirit::classic::match.96") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.n = load i64, ptr %0, align 8, !tbaa !235
  %.not.not = icmp sgt i64 %i.n, -1
  br i1 %.not.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK5boost6spirit7classic7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS4_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSO_INS1_5chlitINS4_8token_idEEESR_EESR_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEE6at_endEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !465, !nonnull !60, !align !234 ; 5 uses
  %i.r = call noundef ptr @_ZN5boost6detail12get_tss_dataEPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZNK5boost6spirit7classic13action_policy9do_actionIN7phoenix5actorINS4_9compositeINS4_16divide_assign_opENS5_INS4_14closure_memberILi0ENS4_7closureINS_4wave8grammars8closures13closure_valueENS4_5nil_tESE_SE_SE_SE_EEEEEENS5_INS4_8argumentILi0EEEEESE_SE_SE_SE_SE_EEEEKSD_St20_List_const_iteratorINSA_8cpplexer9lex_tokenINSA_4util13file_positionINSR_11flex_stringIcSt11char_traitsIcESaIcENSR_9CowStringINSR_22AllocatorStringStorageIcSW_EEPcEEEEEEEEEEEvRKT_RT0_RKT1_S1D_.exit

bb.d:                                             ; preds = %bb.c
  %i.s = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #28 ; 3 uses
  store ptr null, ptr %i.s, align 8, !tbaa !269
  %i.t = call noundef ptr @_ZN5boost6detail12get_tss_dataEPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK5boost6spirit7classic13action_policy9do_actionIN7phoenix5actorINS4_9compositeINS4_16divide_assign_opENS5_INS4_14closure_memberILi0ENS4_7closureINS_4wave8grammars8closures13closure_valueENS4_5nil_tESE_SE_SE_SE_EEEEEENS5_INS4_8argumentILi0EEEEESE_SE_SE_SE_SE_EEEEKSD_St20_List_const_iteratorINSA_8cpplexer9lex_tokenINSA_4util13file_positionINSR_11flex_stringIcSt11char_traitsIcESaIcENSR_9CowStringINSR_22AllocatorStringStorageIcSW_EEPcEEEEEEEEEEEvRKT_RT0_RKT1_S1D_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !140
  call void @_ZN5boost6detail12set_tss_dataEPKvPFvPFvPvES3_ES5_S3_b(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @_ZN5boost19thread_specific_ptrIPN7phoenix13closure_frameINS1_7closureINS_4wave8grammars8closures13closure_valueENS1_5nil_tES8_S8_S8_S8_EEEEE14cleanup_callerEPFvPvESD_, ptr noundef %i.u, ptr noundef nonnull %i.s, i1 noundef zeroext true)
  br label %_ZNK5boost6spirit7classic13action_policy9do_actionIN7phoenix5actorINS4_9compositeINS4_16divide_assign_opENS5_INS4_14closure_memberILi0ENS4_7closureINS_4wave8grammars8closures13closure_valueENS4_5nil_tESE_SE_SE_SE_EEEEEENS5_INS4_8argumentILi0EEEEESE_SE_SE_SE_SE_EEEEKSD_St20_List_const_iteratorINSA_8cpplexer9lex_tokenINSA_4util13file_positionINSR_11flex_stringIcSt11char_traitsIcESaIcENSR_9CowStringINSR_22AllocatorStringStorageIcSW_EEPcEEEEEEEEEEEvRKT_RT0_RKT1_S1D_.exit

_ZNK5boost6spirit7classic13action_policy9do_actionIN7phoenix5actorINS4_9compositeINS4_16divide_assign_opENS5_INS4_14closure_memberILi0ENS4_7closureINS_4wave8grammars8closures13closure_valueENS4_5nil_tESE_SE_SE_SE_EEEEEENS5_INS4_8argumentILi0EEEEESE_SE_SE_SE_SE_EEEEKSD_St20_List_const_iteratorINSA_8cpplexer9lex_tokenINSA_4util13file_positionINSR_11flex_stringIcSt11char_traitsIcESaIcENSR_9CowStringINSR_22AllocatorStringStorageIcSW_EEPcEEEEEEEEEEEvRKT_RT0_RKT1_S1D_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6detail12get_tss_dataEPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !269
  %i.x = call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5boost4wave8grammars8closures13closure_valuedVERKS3_(ptr noundef nonnull align 8 dereferenceable(20) %i.w, ptr noundef nonnull align 8 dereferenceable(20) %i.o) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5boost6spirit7classic13action_policy9do_actionIN7phoenix5actorINS4_9compositeINS4_16divide_assign_opENS5_INS4_14closure_memberILi0ENS4_7closureINS_4wave8grammars8closures13closure_valueENS4_5nil_tESE_SE_SE_SE_EEEEEENS5_INS4_8argumentILi0EEEEESE_SE_SE_SE_SE_EEEEKSD_St20_List_const_iteratorINSA_8cpplexer9lex_tokenINSA_4util13file_positionINSR_11flex_stringIcSt11char_traitsIcESaIcENSR_9CowStringINSR_22AllocatorStringStorageIcSW_EEPcEEEEEEEEEEEvRKT_RT0_RKT1_S1D_.exit, %_ZNK5boost6spirit7classic7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS4_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSO_INS1_5chlitINS4_8token_idEEESR_EESR_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEE6at_endEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(20) ptr @_ZN5boost4wave8grammars8closures13closure_valuedVERKS3_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21
  switch i32 %i.a, label %.thread [
    i32 1, label %bb.b
    i32 2, label %bb.r
    i32 3, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !21     ; 3 uses
  switch i32 %i.b, label %.thread [
    i32 3, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  switch i32 %i.b, label %bb.f [
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.d to i8
  br label %_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit

bb.e:                                             ; preds = %bb.c
  %i.f = load i8, ptr %i.c, align 8, !tbaa !19, !range !59, !noundef !60 ; 2 uses
  %i.g = zext nneg i8 %i.f to i64
  br label %_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit

bb.f:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.c, align 8              ; 2 uses
  %i.i = trunc i64 %i.h to i8
  br label %_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit

_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.j = phi i8 [ %i.i, %bb.f ], [ %i.e, %bb.d ], [ %i.f, %bb.e ]
  %.0.i = phi i64 [ %i.h, %bb.f ], [ %i.d, %bb.d ], [ %i.g, %bb.e ]
  %.not14 = icmp eq i64 %.0.i, 0
  br i1 %.not14, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %i.m = icmp eq i64 %i.l, -9223372036854775808
  br i1 %i.m, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.n = load i64, ptr %i.c, align 8              ; 2 uses
  %i.o = icmp eq i64 %i.n, -1
  %i.p = trunc i64 %i.n to i8
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.q, align 8, !tbaa !25
  br label %.thread

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.r = phi i8 [ %i.p, %bb.h ], [ %i.j, %bb.g ]
  switch i32 %i.b, label %bb.m [
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.s = load i64, ptr %i.c, align 8, !tbaa !19
  br label %_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit16

bb.l:                                             ; preds = %bb.j
  %i.t = zext nneg i8 %i.r to i64
  br label %_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit16

bb.m:                                             ; preds = %bb.j
  %i.u = load i64, ptr %i.c, align 8, !tbaa !19
  br label %_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit16

_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit16: ; preds = %bb.k, %bb.l, %bb.m
  %.0.i15 = phi i64 [ %i.u, %bb.m ], [ %i.s, %bb.k ], [ %i.t, %bb.l ]
  %i.v = sdiv i64 %i.l, %.0.i15
  store i64 %i.v, ptr %i.k, align 8, !tbaa !19
  br label %.thread

bb.n:                                             ; preds = %_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.w, align 8, !tbaa !25
  br label %.thread

bb.o:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19   ; 2 uses
  %.not13 = icmp eq i64 %i.y, 0
  br i1 %.not13, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19
  %i.ab = udiv i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !19
  store i32 2, ptr %0, align 8, !tbaa !21
  br label %.thread

bb.q:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.ac, align 8, !tbaa !25
  br label %.thread

bb.r:                                             ; preds = %bb.a
  %i.ad = load i32, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  switch i32 %i.ad, label %bb.u [
    i32 2, label %bb.s
    i32 3, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = trunc i64 %i.af to i8
end_hunk_0
