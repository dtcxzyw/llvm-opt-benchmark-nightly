Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.04?download=true
inline.NumInlined: 1221
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtB2t_16TruncationParamsNtB1j_11Deserialize11deserialize9___VisitorEB2x_:bb.a
  %.merged.i.i.i = phi { i64, ptr } [ %i.im, %bb.bu ], [ %i.io, %bb.bv ] ; 2 uses
  %i.ip = extractvalue { i64, ptr } %.merged.i.i.i, 0
  %i.iq = extractvalue { i64, ptr } %.merged.i.i.i, 1
  %i.ir = trunc nuw i64 %i.ip to i1
  %i.is = ptrtoint ptr %i.iq to i64               ; 2 uses
  br i1 %i.ir, label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit, label %bb.bo

bb.bw:                                            ; preds = %bb.bf
  %i.it = call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error15duplicate_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 8), !noalias !1712
  %i.iu = ptrtoint ptr %i.it to i64
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit

bb.bx:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1696
  call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.iw = load i64, ptr %i.iv, align 8, !alias.scope !1741, !noalias !1742, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i78.i = load i64, ptr %i.ee, align 8, !alias.scope !1743, !noalias !1744 ; 2 uses
  %i.ix = icmp ult i64 %.promoted.i.i.i.i78.i, %i.iw
  br i1 %i.ix, label %.lr.ph.i.i.i.i81.i, label %.loopexit.i.i.i79.i

.lr.ph.i.i.i.i81.i:                               ; preds = %bb.bx
  %i.iy = load ptr, ptr %i.ed, align 8, !alias.scope !1741, !noalias !1742, !nonnull !3, !noundef !3
  br label %bb.by

bb.by:                                            ; preds = %bb.bz, %.lr.ph.i.i.i.i81.i
  %i.iz = phi i64 [ %.promoted.i.i.i.i78.i, %.lr.ph.i.i.i.i81.i ], [ %i.jc, %bb.bz ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !noalias !1747, !noundef !3
  switch i8 %i.jb, label %bb.ca [
    i8 32, label %bb.bz
    i8 10, label %bb.bz
    i8 9, label %bb.bz
    i8 13, label %bb.bz
    i8 58, label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncation18TruncationStrategyEB25_.exit.i
  ], !prof !35

bb.bz:                                            ; preds = %bb.by, %bb.by, %bb.by, %bb.by
  %i.jc = add nuw i64 %i.iz, 1                    ; 3 uses
  store i64 %i.jc, ptr %i.ee, align 8, !alias.scope !1748, !noalias !1744
  %exitcond.not.i.i.i.i82.i = icmp eq i64 %i.jc, %i.iw
  br i1 %exitcond.not.i.i.i.i82.i, label %.loopexit.i.i.i79.i, label %bb.by

.loopexit.i.i.i79.i:                              ; preds = %bb.bx, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1749
  store i64 3, ptr %i.d, align 8, !noalias !1749
  %i.jd = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ec, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !1750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1749
  br label %.loopexit.i42

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1749
  store i64 6, ptr %i.e, align 8, !noalias !1749
  %i.je = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ec, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !1750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1749
  br label %.loopexit.i42

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncation18TruncationStrategyEB25_.exit.i: ; preds = %bb.by
  %i.jf = add nuw i64 %i.iz, 1
  store i64 %i.jf, ptr %i.ee, align 8, !alias.scope !1751, !noalias !1750
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations3_1__NtB5_18TruncationStrategyNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB2p_4read7StrReadEEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ec), !noalias !1712
  %.pre.i = load i8, ptr %i.m, align 8, !range !24, !noalias !1696
  %i.jg = trunc nuw i8 %.pre.i to i1
  br i1 %i.jg, label %.loopexit.i42.loopexit, label %bb.cb

.loopexit.i42.loopexit:                           ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncation18TruncationStrategyEB25_.exit.i
  %.pre = load ptr, ptr %i.du, align 8, !noalias !1696
  br label %.loopexit.i42

.loopexit.i42:                                    ; preds = %.loopexit.i.i.i79.i, %bb.ca, %.loopexit.i42.loopexit
  %i.jh = phi ptr [ %.pre, %.loopexit.i42.loopexit ], [ %i.jd, %.loopexit.i.i.i79.i ], [ %i.je, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1696
  %i.ji = ptrtoint ptr %i.jh to i64
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit

bb.cb:                                            ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncation18TruncationStrategyEB25_.exit.i
  %i.jj = load i8, ptr %i.dv, align 1, !range !37, !noalias !1696, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1696
  br label %bb.bo

bb.cc:                                            ; preds = %bb.bg
  %i.jk = call noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error15duplicate_fieldCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 6), !noalias !1712
  %i.jl = ptrtoint ptr %i.jk to i64
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit

bb.cd:                                            ; preds = %bb.bg
  call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.jn = load i64, ptr %i.jm, align 8, !alias.scope !1754, !noalias !1755, !noundef !3 ; 2 uses
  %.promoted.i.i.i.i83.i = load i64, ptr %i.ee, align 8, !alias.scope !1756, !noalias !1757 ; 2 uses
  %i.jo = icmp ult i64 %.promoted.i.i.i.i83.i, %i.jn
  br i1 %i.jo, label %.lr.ph.i.i.i.i87.i, label %.loopexit.i.i.i84.i

.lr.ph.i.i.i.i87.i:                               ; preds = %bb.cd
  %i.jp = load ptr, ptr %i.ed, align 8, !alias.scope !1754, !noalias !1755, !nonnull !3, !noundef !3
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cf, %.lr.ph.i.i.i.i87.i
  %i.jq = phi i64 [ %.promoted.i.i.i.i83.i, %.lr.ph.i.i.i.i87.i ], [ %i.jt, %bb.cf ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !noalias !1760, !noundef !3
  switch i8 %i.js, label %bb.cg [
    i8 32, label %bb.cf
    i8 10, label %bb.cf
    i8 9, label %bb.cf
    i8 13, label %bb.cf
    i8 58, label %bb.ci
  ], !prof !35

bb.cf:                                            ; preds = %bb.ce, %bb.ce, %bb.ce, %bb.ce
  %i.jt = add nuw i64 %i.jq, 1                    ; 3 uses
  store i64 %i.jt, ptr %i.ee, align 8, !alias.scope !1761, !noalias !1757
  %exitcond.not.i.i.i.i88.i = icmp eq i64 %i.jt, %i.jn
  br i1 %exitcond.not.i.i.i.i88.i, label %.loopexit.i.i.i84.i, label %bb.ce

.loopexit.i.i.i84.i:                              ; preds = %bb.cf, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1762
  store i64 3, ptr %i.b, align 8, !noalias !1762
  %i.ju = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ec, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1762
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1762
  store i64 6, ptr %i.c, align 8, !noalias !1762
  %i.jv = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ec, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !1712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1762
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.loopexit.i.i.i84.i
  %.sroa.0.0.i.ph.i.i85.i = phi ptr [ %i.ju, %.loopexit.i.i.i84.i ], [ %i.jv, %bb.cg ]
  %i.jw = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i85.i, 1
  br label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i

bb.ci:                                            ; preds = %bb.ce
  %i.jx = add nuw i64 %i.jq, 1
  store i64 %i.jx, ptr %i.ee, align 8, !alias.scope !1763, !noalias !1712
  %i.jy = call { i64, ptr } @_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_u64NtNvXs1a_NtB1j_5implsjNtB1j_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ec), !noalias !1712
  br label %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i

_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i: ; preds = %bb.ci, %bb.ch
  %.merged.i.i86.i = phi { i64, ptr } [ %i.jw, %bb.ch ], [ %i.jy, %bb.ci ] ; 2 uses
  %i.jz = extractvalue { i64, ptr } %.merged.i.i86.i, 0
  %i.ka = extractvalue { i64, ptr } %.merged.i.i86.i, 1
  %i.kb = trunc nuw i64 %i.jz to i1
  %i.kc = ptrtoint ptr %i.ka to i64               ; 2 uses
  br i1 %i.kb, label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit, label %bb.bo

bb.cj:                                            ; preds = %bb.bh
  %i.kd = ptrtoint ptr %i.hg to i64
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit

bb.ck:                                            ; preds = %bb.bc
  %i.ke = call { i64, ptr } @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXs1a_NtB28_5implsjNtB28_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 10), !noalias !1712 ; 2 uses
  %i.kf = extractvalue { i64, ptr } %i.ke, 0
  %i.kg = extractvalue { i64, ptr } %i.ke, 1
  %i.kh = trunc nuw i64 %i.kf to i1
  %i.ki = ptrtoint ptr %i.kg to i64               ; 2 uses
  br i1 %i.kh, label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.bc
  %.sroa.044.0.i = phi i64 [ %.sroa.4.0200.i, %bb.bc ], [ %i.ki, %bb.ck ] ; 2 uses
  %.not65.i = icmp eq i8 %.sroa.018.0199.i, -1
  br i1 %.not65.i, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1696
  call void @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations3_1__NtB3f_18TruncationStrategyNtB28_11Deserialize11deserialize9___VisitorEB3j_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 8), !noalias !1712
  %i.kj = load i8, ptr %i.l, align 8, !range !24, !noalias !1696, !noundef !3
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.kl = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !noalias !1696, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1696
  %i.kn = ptrtoint ptr %i.km to i64
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit

bb.co:                                            ; preds = %bb.cm
  %i.ko = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.kp = load i8, ptr %i.ko, align 1, !range !37, !noalias !1696, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1696
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cl
  %.sroa.049.0.i = phi i8 [ %i.kp, %bb.co ], [ %.sroa.018.0199.i, %bb.cl ] ; 2 uses
  %i.kq = trunc nuw i64 %.sroa.025.0198.i to i1
  br i1 %i.kq, label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kr = call { i64, ptr } @_RINvXNvNtNtCsctIyQp3ax5j_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXs1a_NtB28_5implsjNtB28_11Deserialize11deserialize16PrimitiveVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 6), !noalias !1712 ; 2 uses
  %i.ks = extractvalue { i64, ptr } %i.kr, 0
  %i.kt = extractvalue { i64, ptr } %i.kr, 1
  %i.ku = trunc nuw i64 %i.ks to i1               ; 3 uses
  %i.kv = ptrtoint ptr %i.kt to i64               ; 2 uses
  %. = select i1 %i.ku, i64 undef, i64 %i.kv
  %..sroa.044.0.i = select i1 %i.ku, i64 %i.kv, i64 %.sroa.044.0.i
  %...sroa.04.0.i = select i1 %i.ku, i8 2, i8 %..sroa.04.0.i
  br label %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit

_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit: ; preds = %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.ck, %bb.cq, %bb.cp, %bb.bb, %bb.bi, %.loopexit302.i, %bb.bp, %bb.bw, %.loopexit.i42, %bb.cc, %bb.cj, %bb.cn
  %.sroa.19.0 = phi i8 [ undef, %bb.bb ], [ undef, %bb.cj ], [ undef, %.loopexit302.i ], [ undef, %bb.bi ], [ undef, %bb.bp ], [ undef, %bb.ck ], [ undef, %.loopexit.i42 ], [ undef, %bb.bw ], [ undef, %bb.cc ], [ %.sroa.049.0.i, %bb.cq ], [ undef, %bb.cn ], [ %.sroa.049.0.i, %bb.cp ], [ undef, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i ], [ undef, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i ]
  %.sroa.18.0 = phi i64 [ undef, %bb.bb ], [ undef, %bb.cj ], [ undef, %.loopexit302.i ], [ undef, %bb.bi ], [ undef, %bb.bp ], [ undef, %bb.ck ], [ undef, %.loopexit.i42 ], [ undef, %bb.bw ], [ undef, %bb.cc ], [ %., %bb.cq ], [ undef, %bb.cn ], [ %.sroa.427.0197.i, %bb.cp ], [ undef, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i ], [ undef, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i ]
  %.sroa.063.0 = phi i64 [ %i.hc, %bb.bb ], [ %i.kd, %bb.cj ], [ %i.hw, %.loopexit302.i ], [ %i.hi, %bb.bi ], [ %i.ib, %bb.bp ], [ %i.ki, %bb.ck ], [ %i.ji, %.loopexit.i42 ], [ %i.iu, %bb.bw ], [ %i.jl, %bb.cc ], [ %..sroa.044.0.i, %bb.cq ], [ %i.kn, %bb.cn ], [ %.sroa.044.0.i, %bb.cp ], [ %i.kc, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i ], [ %i.is, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i ] ; 3 uses
  %.sink.i41 = phi i8 [ 2, %bb.bb ], [ 2, %bb.cj ], [ 2, %.loopexit302.i ], [ 2, %bb.bi ], [ 2, %bb.bp ], [ 2, %bb.ck ], [ 2, %.loopexit.i42 ], [ 2, %bb.bw ], [ 2, %bb.cc ], [ %...sroa.04.0.i, %bb.cq ], [ 2, %bb.cn ], [ %..sroa.04.0.i, %bb.cp ], [ 2, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit.i ], [ 2, %_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valuejECs2JiOgHzbbc7_10tokenizers.exit89.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.kw = load i8, ptr %i.ap, align 8, !noundef !3
  %i.kx = add i8 %i.kw, 1
  store i8 %i.kx, ptr %i.ap, align 8
  %i.ky = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %1)
          to label %bb.cs unwind label %bb.cr     ; 9 uses

bb.cr:                                            ; preds = %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit
  %i.kz = landingpad { ptr, i32 }
          cleanup
  %i.la = inttoptr i64 %.sroa.063.0 to ptr
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncation16TruncationParamsNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB13_(ptr %i.la, i8 %.sink.i41) #24
          to label %common.resume unwind label %bb.af

bb.cs:                                            ; preds = %_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBb_16TruncationParamsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB36_4read7StrReadEEBf_.exit
  %i.lb = inttoptr i64 %.sroa.063.0 to ptr        ; 3 uses
  %i.lc = icmp eq i8 %.sink.i41, 2
  br i1 %i.lc, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.not = icmp eq ptr %i.ky, null
  br i1 %.not, label %select.unfold, label %.thread

bb.cu:                                            ; preds = %bb.cs
  %i.ld = icmp ne i64 %.sroa.063.0, 0
  call void @llvm.assume(i1 %i.ld)
  %.not104 = icmp eq ptr %i.ky, null
  br i1 %.not104, label %.thread, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  %i.le = load i64, ptr %i.ky, align 8, !range !12, !alias.scope !1766, !noalias !1767, !noundef !3
  switch i64 %i.le, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit47 [
    i64 0, label %bb.cw
    i64 1, label %bb.cy
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %.val2.i.i.i.i45 = load i64, ptr %i.lf, align 8, !alias.scope !1766, !noalias !1767, !noundef !3 ; 2 uses
  %i.lg = icmp eq i64 %.val2.i.i.i.i45, 0
  br i1 %i.lg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit47, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %.val1.i.i.i.i46 = load ptr, ptr %i.lh, align 8, !alias.scope !1766, !noalias !1767, !nonnull !3, !noundef !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i46, i64 noundef range(i64 1, 0) %.val2.i.i.i.i45, i64 noundef 1) #26, !noalias !1768
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit47

bb.cy:                                            ; preds = %bb.cv
  %i.li = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %.val.i.i.i.i44 = load ptr, ptr %i.li, align 8, !alias.scope !1766, !noalias !1767, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr nonnull %.val.i.i.i.i44)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit47 unwind label %bb.cz, !noalias !1767

bb.cz:                                            ; preds = %bb.cy
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit47: ; preds = %bb.cv, %bb.cw, %bb.cx, %bb.cy
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ky, i64 noundef 40, i64 noundef 8) #26, !noalias !1767
  br label %.thread

.thread:                                          ; preds = %bb.cu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit47, %bb.ct, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, %bb.ad, %bb.ae, %bb.d
  %.sroa.05.3 = phi ptr [ %i.ak, %bb.d ], [ %i.lb, %bb.cu ], [ %i.lb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit47 ], [ %i.ky, %bb.ct ], [ %.sroa.050.0.in, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.dd, %bb.ad ], [ %.sroa.050.0.in, %bb.ae ]
  %i.lk = call noundef nonnull align 8 ptr @_RINvMs0_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.05.3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  store ptr %i.lk, ptr %0, align 8
  br label %bb.da

select.unfold:                                    ; preds = %bb.ct, %bb.ad
  %.sroa.10.sroa.6.1 = phi i8 [ %.sroa.13.0, %bb.ad ], [ %.sroa.19.0, %bb.ct ]
  %.sroa.10.sroa.0.1 = phi i64 [ %.sroa.1251.0, %bb.ad ], [ %.sroa.18.0, %bb.ct ]
  %.sroa.1010.1 = phi i8 [ %.sink.i, %bb.ad ], [ %.sink.i41, %bb.ct ]
  %.sroa.05.1 = phi ptr [ %.sroa.050.0.in, %bb.ad ], [ %i.lb, %bb.ct ]
  store ptr %.sroa.05.1, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.sroa.0.1, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.10.sroa.6.1, ptr %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  br label %bb.da

bb.da:                                            ; preds = %select.unfold, %.thread, %bb.g, %bb.al, %.loopexit
  %.sroa.1010.1.sink = phi i8 [ %.sroa.1010.1, %select.unfold ], [ 2, %.thread ], [ 2, %bb.g ], [ 2, %bb.al ], [ 2, %.loopexit ]
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.1010.1.sink, ptr %.sroa.526.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings1_1__NtB2t_13PaddingParamsNtB1j_11Deserialize11deserialize9___VisitorEB2x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 19 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [16 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 16 uses
  %i.ap = alloca [72 x i8], align 8               ; 14 uses
  %i.aq = alloca [80 x i8], align 8               ; 9 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [72 x i8], align 8               ; 14 uses
  %i.at = alloca [80 x i8], align 8               ; 9 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.14 = alloca [56 x i8], align 8           ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !1976, !noalias !1977, !noundef !3 ; 2 uses
  %.promoted.i = load i64, ptr %i.aw, align 8, !alias.scope !1975, !noalias !1978 ; 2 uses
  %i.az = icmp ult i64 %.promoted.i, %i.ay
  br i1 %i.az, label %.lr.ph.i, label %.loopexit80

.lr.ph.i:                                         ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !1976, !noalias !1977, !nonnull !3, !noundef !3
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.bc = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.bf, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !1981, !noundef !3 ; 2 uses
  switch i8 %i.be, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bf = add nuw i64 %i.bc, 1                    ; 3 uses
  store i64 %i.bf, ptr %i.aw, align 8, !alias.scope !1982, !noalias !1978
  %exitcond.not.i = icmp eq i64 %i.bf, %i.ay
  br i1 %exitcond.not.i, label %.loopexit80, label %bb.b

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  switch i8 %i.be, label %bb.d [
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !prof !31

.loopexit80:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i64 5, ptr %i.av, align 8
  %i.bg = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.bh, align 8
  store i64 2, ptr %0, align 8
  br label %bb.fr

bb.d:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.bi = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92)
  br label %bb.fo

bb.e:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
end_hunk_0
