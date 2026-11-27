Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.02?download=true
inline.NumInlined: 8278
inline.NumDeleted: 3136
begin_hunk_0_@_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast3ddl13AlterFunctionNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql:bb.a
  %i.ac = load i64, ptr %i.aa, align 8, !dbg !58903, !range !1570, !alias.scope !58876, !noundef !1417
  %i.ad = icmp eq i64 %i.ac, -9223372036854775808, !dbg !58903 ; 2 uses
  %brmerge.i.i = or i1 %.not.i.i, %i.ad, !dbg !58904
  br i1 %brmerge.i.i, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast18OperateFunctionArgEENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i, label %bb.g, !dbg !58904

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 64, !dbg !58905
  %.val2.i2.i = load i64, ptr %i.ae, align 8, !dbg !58905, !alias.scope !58875, !noundef !1417 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val1, i64 64, !dbg !58905
  %.val4.i.i = load i64, ptr %i.af, align 8, !dbg !58905, !alias.scope !58876, !noundef !1417
  %i.ag = icmp eq i64 %.val2.i2.i, %.val4.i.i, !dbg !58906
  br i1 %i.ag, label %.split11.i, label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58906

.split11.i:                                       ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.val1, i64 56, !dbg !58905
  %.val3.i3.i = load ptr, ptr %i.ah, align 8, !dbg !58905, !alias.scope !58876, !nonnull !1417, !noundef !1417
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val, i64 56, !dbg !58905
  %.val.i4.i = load ptr, ptr %i.ai, align 8, !dbg !58905, !alias.scope !58875, !nonnull !1417, !noundef !1417
  %i.aj = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i4.i, ptr noundef nonnull %.val3.i3.i, i64 noundef %.val2.i2.i), !dbg !58907, !noalias !58877
  br i1 %i.aj, label %bb.h, label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58902

_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast18OperateFunctionArgEENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.f
  %.mux.i.i = and i1 %.not.i.i, %i.ad, !dbg !58904
  br i1 %.mux.i.i, label %bb.h, label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58902

bb.h:                                             ; preds = %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast18OperateFunctionArgEENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i, %.split11.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.val, i64 72, !dbg !58908
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val1, i64 72, !dbg !58908
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58878), !dbg !58908
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58879), !dbg !58908
  %i.am = load i8, ptr %i.ak, align 8, !dbg !58909, !range !1461, !alias.scope !58880, !noundef !1417 ; 2 uses
  %i.an = load i8, ptr %i.al, align 8, !dbg !58910, !range !1461, !alias.scope !58882, !noundef !1417
  %i.ao = icmp eq i8 %i.am, %i.an, !dbg !58911
  br i1 %i.ao, label %bb.i, label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58911

bb.i:                                             ; preds = %bb.h
  switch i8 %i.am, label %default.unreachable [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.n
    i8 3, label %bb.p
    i8 4, label %bb.q
  ], !dbg !58911

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.val, i64 80, !dbg !58912
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.val1, i64 80, !dbg !58912
  %i.ar = tail call noundef zeroext i1 @_RNvXs2_NtCsaRr8xKSRVhT_9sqlparser3astNtB5_5IdentNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aq), !dbg !58913
  br label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58914

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.val, i64 80, !dbg !58915 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.val1, i64 80, !dbg !58915 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58883), !dbg !58916
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58884), !dbg !58916
  %i.au = load i64, ptr %i.as, align 8, !dbg !58917, !range !1707, !alias.scope !58885, !noundef !1417 ; 2 uses
  %i.av = icmp slt i64 %i.au, 0, !dbg !58917
  %i.aw = add i64 %i.au, -9223372036854775807, !dbg !58917
  %i.ax = select i1 %i.av, i64 %i.aw, i64 0, !dbg !58917 ; 2 uses
  %i.ay = load i64, ptr %i.at, align 8, !dbg !58918, !range !1707, !alias.scope !58886, !noundef !1417 ; 2 uses
  %i.az = icmp slt i64 %i.ay, 0, !dbg !58918
  %i.ba = add i64 %i.ay, -9223372036854775807, !dbg !58918
  %i.bb = select i1 %i.az, i64 %i.ba, i64 0, !dbg !58918
  %i.bc = icmp eq i64 %i.ax, %i.bb, !dbg !58919
  br i1 %i.bc, label %bb.l, label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58919

bb.l:                                             ; preds = %bb.k
  %i.bd = icmp eq i64 %i.ax, 0, !dbg !58919
  br i1 %i.bd, label %bb.m, label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58919

bb.m:                                             ; preds = %bb.l
  %i.be = tail call noundef zeroext i1 @_RNvXs2_NtCsaRr8xKSRVhT_9sqlparser3astNtB5_5IdentNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.at), !dbg !58920
  br label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58921

bb.n:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.val, i64 96, !dbg !58922
  %.val1.i.i.i = load i64, ptr %i.bf, align 8, !dbg !58922, !alias.scope !58880, !noundef !1417 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.val1, i64 96, !dbg !58922
  %.val3.i.i6.i = load i64, ptr %i.bg, align 8, !dbg !58922, !alias.scope !58882, !noundef !1417
  %i.bh = icmp eq i64 %.val1.i.i.i, %.val3.i.i6.i, !dbg !58923
  br i1 %i.bh, label %bb.o, label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58923

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.val1, i64 88, !dbg !58922
  %.val2.i.i7.i = load ptr, ptr %i.bi, align 8, !dbg !58922, !alias.scope !58882, !nonnull !1417, !noundef !1417
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.val, i64 88, !dbg !58922
  %.val.i.i8.i = load ptr, ptr %i.bj, align 8, !dbg !58922, !alias.scope !58880, !nonnull !1417, !noundef !1417
  %i.bk = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i.i8.i, ptr noundef nonnull %.val2.i.i7.i, i64 noundef %.val1.i.i.i), !dbg !58924, !noalias !58887
  br label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58925

bb.p:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.val, i64 73, !dbg !58926
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.val1, i64 73, !dbg !58926
  %.val.i15.i.i = load i8, ptr %i.bl, align 1, !dbg !58927, !range !1460, !alias.scope !58880, !noundef !1417
  %.val1.i16.i.i = load i8, ptr %i.bm, align 1, !dbg !58927, !range !1460, !alias.scope !58882, !noundef !1417
  %i.bn = icmp eq i8 %.val.i15.i.i, %.val1.i16.i.i, !dbg !58928
  br i1 %i.bn, label %bb.r, label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58929

bb.q:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.val, i64 73, !dbg !58930
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.val1, i64 73, !dbg !58930
  %.val.i17.i.i = load i8, ptr %i.bo, align 1, !dbg !58931, !range !1460, !alias.scope !58880, !noundef !1417
  %.val1.i18.i.i = load i8, ptr %i.bp, align 1, !dbg !58931, !range !1460, !alias.scope !58882, !noundef !1417
  %i.bq = icmp eq i8 %.val.i17.i.i, %.val1.i18.i.i, !dbg !58932
  br i1 %i.bq, label %bb.t, label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58933

bb.r:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.0.val, i64 96, !dbg !58934
  %.val1.i19.i.i = load i64, ptr %i.br, align 8, !dbg !58934, !alias.scope !58880, !noundef !1417 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.val1, i64 96, !dbg !58934
  %.val3.i20.i.i = load i64, ptr %i.bs, align 8, !dbg !58934, !alias.scope !58882, !noundef !1417
  %i.bt = icmp eq i64 %.val1.i19.i.i, %.val3.i20.i.i, !dbg !58935
  br i1 %i.bt, label %bb.s, label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58935

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.val1, i64 88, !dbg !58934
  %.val2.i22.i.i = load ptr, ptr %i.bu, align 8, !dbg !58934, !alias.scope !58882, !nonnull !1417, !noundef !1417
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.val, i64 88, !dbg !58934
  %.val.i23.i.i = load ptr, ptr %i.bv, align 8, !dbg !58934, !alias.scope !58880, !nonnull !1417, !noundef !1417
  %i.bw = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i23.i.i, ptr noundef nonnull %.val2.i22.i.i, i64 noundef %.val1.i19.i.i), !dbg !58936, !noalias !58887
  br label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58937

bb.t:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.val, i64 96, !dbg !58938
  %.val1.i25.i.i = load i64, ptr %i.bx, align 8, !dbg !58938, !alias.scope !58880, !noundef !1417 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0.val1, i64 96, !dbg !58938
  %.val3.i26.i.i = load i64, ptr %i.by, align 8, !dbg !58938, !alias.scope !58882, !noundef !1417
  %i.bz = icmp eq i64 %.val1.i25.i.i, %.val3.i26.i.i, !dbg !58939
  br i1 %i.bz, label %bb.u, label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58939

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.val1, i64 88, !dbg !58938
  %.val2.i28.i.i = load ptr, ptr %i.ca, align 8, !dbg !58938, !alias.scope !58882, !nonnull !1417, !noundef !1417
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.val, i64 88, !dbg !58938
  %.val.i29.i.i = load ptr, ptr %i.cb, align 8, !dbg !58938, !alias.scope !58880, !nonnull !1417, !noundef !1417
  %i.cc = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtNtCsaRr8xKSRVhT_9sqlparser3ast3ddl19AlterFunctionActionINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef nonnull %.val.i29.i.i, ptr noundef nonnull %.val2.i28.i.i, i64 noundef %.val1.i25.i.i), !dbg !58940, !noalias !58887
  br label %_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58941

_RNvXshT_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterFunctionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i.i, %bb.e, %.split.i, %_RNvXsud_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_12FunctionDescNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i, %bb.g, %.split11.i, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast18OperateFunctionArgEENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i, %bb.h, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.0.0.i = phi i1 [ false, %.split11.i ], [ false, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast18OperateFunctionArgEENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i ], [ false, %_RNvXsud_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_12FunctionDescNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.t ], [ false, %.split.i ], [ false, %bb.c ], [ %i.ar, %bb.j ], [ false, %bb.h ], [ true, %bb.l ], [ false, %bb.n ], [ false, %bb.r ], [ %i.be, %bb.m ], [ false, %bb.k ], [ %i.bk, %bb.o ], [ false, %bb.p ], [ %i.bw, %bb.s ], [ false, %bb.q ], [ %i.cc, %bb.u ], [ false, %_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %bb.e ], [ false, %bb.g ], !dbg !58908
  ret i1 %.sroa.0.0.i, !dbg !58942
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast3ddl13AlterOperatorNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr captures(address, read_provenance) %.0.val, ptr captures(address, read_provenance) %.0.val1) unnamed_addr #2 !dbg !58943 !guid !58977 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58978), !dbg !58992
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58979), !dbg !58992
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !58993
  %.val1.i = load i64, ptr %i.a, align 8, !dbg !58993, !alias.scope !58978, !noundef !1417 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16, !dbg !58993
  %.val3.i = load i64, ptr %i.b, align 8, !dbg !58993, !alias.scope !58979, !noundef !1417
  %i.c = icmp eq i64 %.val1.i, %.val3.i, !dbg !58994
  br i1 %i.c, label %_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i, label %_RNvXs4o_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58994

_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8, !dbg !58993
  %.val2.i = load ptr, ptr %i.d, align 8, !dbg !58993, !alias.scope !58979, !nonnull !1417, !noundef !1417
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !58993
  %.val.i = load ptr, ptr %i.e, align 8, !dbg !58993, !alias.scope !58978, !nonnull !1417, !noundef !1417
  %i.f = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i, ptr noundef nonnull %.val2.i, i64 noundef %.val1.i), !dbg !58995, !noalias !58981
  br i1 %i.f, label %bb.b, label %_RNvXs4o_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58993

bb.b:                                             ; preds = %_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 144, !dbg !58996 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val1, i64 144, !dbg !58996 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58982), !dbg !58996
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58983), !dbg !58996
  %i.i = load i8, ptr %i.g, align 8, !dbg !58997, !range !1606, !alias.scope !58984, !noundef !1417
  %.not.i.i = icmp eq i8 %i.i, 116, !dbg !58997   ; 2 uses
  %i.j = load i8, ptr %i.h, align 8, !dbg !58997, !range !1606, !alias.scope !58985, !noundef !1417
  %i.k = icmp eq i8 %i.j, 116, !dbg !58997        ; 2 uses
  %brmerge.i.i = or i1 %.not.i.i, %i.k, !dbg !58998
  br i1 %brmerge.i.i, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i, label %.split.i, !dbg !58998

.split.i:                                         ; preds = %bb.b
  %i.l = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCsaRr8xKSRVhT_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h) #46, !dbg !58999
  br i1 %i.l, label %bb.c, label %_RNvXs4o_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58996

_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.b
  %.mux.i.i = and i1 %.not.i.i, %i.k, !dbg !58998
  br i1 %.mux.i.i, label %bb.c, label %_RNvXs4o_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !58996

bb.c:                                             ; preds = %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i, %.split.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 88, !dbg !59000
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val1, i64 88, !dbg !59000
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCsaRr8xKSRVhT_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n) #46, !dbg !59000
  br i1 %i.o, label %bb.d, label %_RNvXs4o_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59000

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24, !dbg !59001 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24, !dbg !59001 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58986), !dbg !59001
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58987), !dbg !59001
  %i.r = load i64, ptr %i.p, align 8, !dbg !59002, !range !1592, !alias.scope !58988, !noundef !1417 ; 3 uses
  %i.s = tail call i64 @llvm.usub.sat.i64(i64 %i.r, i64 -9223372036854775806), !dbg !59002 ; 2 uses
  %i.t = load i64, ptr %i.q, align 8, !dbg !59003, !range !1592, !alias.scope !58990, !noundef !1417 ; 6 uses
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %i.t, i64 -9223372036854775806), !dbg !59003
  %i.v = icmp eq i64 %i.s, %i.u, !dbg !59004
  br i1 %i.v, label %bb.e, label %_RNvXs4o_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59004

bb.e:                                             ; preds = %bb.d
  switch i64 %i.s, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.i
    i64 2, label %bb.k
  ], !dbg !59004

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.w = icmp ult i64 %i.t, -9223372036854775805, !dbg !59004
  tail call void @llvm.assume(i1 %i.w), !dbg !59004
  %i.x = icmp slt i64 %i.r, 0, !dbg !59005
  %i.y = add i64 %i.r, -9223372036854775807, !dbg !59005
  %i.z = select i1 %i.x, i64 %i.y, i64 0, !dbg !59005 ; 2 uses
  %i.aa = icmp slt i64 %i.t, 0, !dbg !59006
  %i.ab = add i64 %i.t, -9223372036854775807, !dbg !59006
  %i.ac = select i1 %i.aa, i64 %i.ab, i64 0, !dbg !59006
  %i.ad = icmp eq i64 %i.z, %i.ac, !dbg !59007
  br i1 %i.ad, label %bb.g, label %_RNvXs4o_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59007

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp eq i64 %i.z, 0, !dbg !59007
  br i1 %i.ae, label %bb.h, label %_RNvXs4o_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59007

bb.h:                                             ; preds = %bb.g
  %i.af = tail call noundef zeroext i1 @_RNvXs2_NtCsaRr8xKSRVhT_9sqlparser3astNtB5_5IdentNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.q), !dbg !59008
  br label %_RNvXs4o_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59009

bb.i:                                             ; preds = %bb.e
  %0 = icmp eq i64 %i.t, -9223372036854775805, !dbg !59004
  tail call void @llvm.assume(i1 %0), !dbg !59004
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.val, i64 48, !dbg !59010
  %.val1.i.i.i = load i64, ptr %i.ag, align 8, !dbg !59010, !alias.scope !58988, !noundef !1417 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.val1, i64 48, !dbg !59010
  %.val3.i.i.i = load i64, ptr %i.ah, align 8, !dbg !59010, !alias.scope !58990, !noundef !1417
  %i.ai = icmp eq i64 %.val1.i.i.i, %.val3.i.i.i, !dbg !59011
  br i1 %i.ai, label %bb.j, label %_RNvXs4o_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59011

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.val1, i64 40, !dbg !59010
  %.val2.i.i.i = load ptr, ptr %i.aj, align 8, !dbg !59010, !alias.scope !58990, !nonnull !1417, !noundef !1417
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.val, i64 40, !dbg !59010
  %.val.i.i.i = load ptr, ptr %i.ak, align 8, !dbg !59010, !alias.scope !58988, !nonnull !1417, !noundef !1417
  %i.al = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i.i.i, ptr noundef nonnull %.val2.i.i.i, i64 noundef %.val1.i.i.i), !dbg !59012, !noalias !58991
  br label %_RNvXs4o_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59013

bb.k:                                             ; preds = %bb.e
  %1 = icmp eq i64 %i.t, -9223372036854775804, !dbg !59004
  tail call void @llvm.assume(i1 %1), !dbg !59004
  %i.am = getelementptr inbounds nuw i8, ptr %.0.val, i64 48, !dbg !59014
  %.val1.i7.i.i = load i64, ptr %i.am, align 8, !dbg !59014, !alias.scope !58988, !noundef !1417 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val1, i64 48, !dbg !59014
  %.val3.i8.i.i = load i64, ptr %i.an, align 8, !dbg !59014, !alias.scope !58990, !noundef !1417
  %i.ao = icmp eq i64 %.val1.i7.i.i, %.val3.i8.i.i, !dbg !59015
  br i1 %i.ao, label %bb.l, label %_RNvXs4o_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59015

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.val1, i64 40, !dbg !59014
  %.val2.i10.i.i = load ptr, ptr %i.ap, align 8, !dbg !59014, !alias.scope !58990, !nonnull !1417, !noundef !1417
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.val, i64 40, !dbg !59014
  %.val.i11.i.i = load ptr, ptr %i.aq, align 8, !dbg !59014, !alias.scope !58988, !nonnull !1417, !noundef !1417
  %i.ar = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtNtCsaRr8xKSRVhT_9sqlparser3ast3ddl14OperatorOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef nonnull %.val.i11.i.i, ptr noundef nonnull %.val2.i10.i.i, i64 noundef %.val1.i7.i.i), !dbg !59016, !noalias !58991
  br label %_RNvXs4o_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59017

_RNvXs4o_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13AlterOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i, %.split.i, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i = phi i1 [ false, %.split.i ], [ false, %bb.c ], [ false, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i ], [ false, %_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.k ], [ false, %bb.d ], [ true, %bb.g ], [ false, %bb.i ], [ %i.af, %bb.h ], [ false, %bb.f ], [ %i.al, %bb.j ], [ %i.ar, %bb.l ], [ false, %bb.a ], !dbg !59001
  ret i1 %.sroa.0.0.i, !dbg !59018
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast3ddl13DropExtensionNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.0.val1) unnamed_addr #2 !dbg !59019 !guid !59028 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59029), !dbg !59033
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59030), !dbg !59033
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24, !dbg !59034
  %i.b = load i8, ptr %i.a, align 8, !dbg !59034, !range !1460, !alias.scope !59029, !noundef !1417
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24, !dbg !59034
  %i.d = load i8, ptr %i.c, align 8, !dbg !59034, !range !1460, !alias.scope !59030, !noundef !1417
  %i.e = icmp eq i8 %i.b, %i.d, !dbg !59034
  br i1 %i.e, label %bb.b, label %_RNvXse1_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13DropExtensionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59034

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !59035
  %.val1.i = load i64, ptr %i.f, align 8, !dbg !59035, !alias.scope !59029, !noundef !1417 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16, !dbg !59035
  %.val3.i = load i64, ptr %i.g, align 8, !dbg !59035, !alias.scope !59030, !noundef !1417
  %i.h = icmp eq i64 %.val1.i, %.val3.i, !dbg !59036
  br i1 %i.h, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i, label %_RNvXse1_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13DropExtensionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59036

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8, !dbg !59035
  %.val2.i = load ptr, ptr %i.i, align 8, !dbg !59035, !alias.scope !59030, !nonnull !1417, !noundef !1417
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !59035
  %.val.i = load ptr, ptr %i.j, align 8, !dbg !59035, !alias.scope !59029, !nonnull !1417, !noundef !1417
  %i.k = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i, ptr noundef nonnull %.val2.i, i64 noundef %.val1.i), !dbg !59037, !noalias !59032
  br i1 %i.k, label %bb.c, label %_RNvXse1_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13DropExtensionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59035

bb.c:                                             ; preds = %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 25, !dbg !59038
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val1, i64 25, !dbg !59038
  %.val4.i = load i8, ptr %i.l, align 1, !dbg !59038, !range !1733, !alias.scope !59029, !noundef !1417
  %.val5.i = load i8, ptr %i.m, align 1, !dbg !59038, !alias.scope !59030
  %.sroa.0.0.shrunk.i.i = icmp eq i8 %.val5.i, %.val4.i, !dbg !59039
  br label %_RNvXse1_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13DropExtensionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59038

_RNvXse1_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_13DropExtensionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i, %bb.c
  %.sroa.0.0.i = phi i1 [ %.sroa.0.0.shrunk.i.i, %bb.c ], [ false, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.i ], [ false, %bb.a ], [ false, %bb.b ], !dbg !59038
  ret i1 %.sroa.0.0.i, !dbg !59040
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast3ddl14AlterCollationNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr nofree readonly captures(address, read_provenance) %.0.val, ptr nofree readonly captures(address, read_provenance) %.0.val1) unnamed_addr #2 !dbg !59041 !guid !59071 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59072), !dbg !59086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59073), !dbg !59086
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 88, !dbg !59087
  %.val1.i = load i64, ptr %i.a, align 8, !dbg !59087, !alias.scope !59072, !noundef !1417 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val1, i64 88, !dbg !59087
  %.val3.i = load i64, ptr %i.b, align 8, !dbg !59087, !alias.scope !59073, !noundef !1417
  %i.c = icmp eq i64 %.val1.i, %.val3.i, !dbg !59088
  br i1 %i.c, label %_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i, label %_RNvXsev_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14AlterCollationNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59088

_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val1, i64 80, !dbg !59087
  %.val2.i = load ptr, ptr %i.d, align 8, !dbg !59087, !alias.scope !59073, !nonnull !1417, !noundef !1417
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 80, !dbg !59087
  %.val.i = load ptr, ptr %i.e, align 8, !dbg !59087, !alias.scope !59072, !nonnull !1417, !noundef !1417
  %i.f = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i, ptr noundef nonnull %.val2.i, i64 noundef %.val1.i), !dbg !59089, !noalias !59075
  br i1 %i.f, label %bb.b, label %_RNvXsev_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14AlterCollationNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59087

bb.b:                                             ; preds = %_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59076), !dbg !59090
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59077), !dbg !59090
  %i.g = load i64, ptr %.0.val, align 8, !dbg !59091, !range !1655, !alias.scope !59078, !noundef !1417 ; 2 uses
  %i.h = load i64, ptr %.0.val1, align 8, !dbg !59092, !range !1655, !alias.scope !59080, !noundef !1417
  %i.i = icmp eq i64 %i.g, %i.h, !dbg !59093
  br i1 %i.i, label %bb.c, label %_RNvXsev_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14AlterCollationNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59093

bb.c:                                             ; preds = %bb.b
  switch i64 %i.g, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.h
    i64 3, label %_RNvXsev_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14AlterCollationNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit
  ], !dbg !59093

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !59094
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8, !dbg !59094
  %i.l = tail call noundef zeroext i1 @_RNvXs2_NtCsaRr8xKSRVhT_9sqlparser3astNtB5_5IdentNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.k), !dbg !59095
  br label %_RNvXsev_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14AlterCollationNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59096

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !59097 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8, !dbg !59097 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59081), !dbg !59098
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59082), !dbg !59098
  %i.o = load i64, ptr %i.m, align 8, !dbg !59099, !range !1707, !alias.scope !59083, !noundef !1417 ; 2 uses
  %i.p = icmp slt i64 %i.o, 0, !dbg !59099
  %i.q = add i64 %i.o, -9223372036854775807, !dbg !59099
  %i.r = select i1 %i.p, i64 %i.q, i64 0, !dbg !59099 ; 2 uses
  %i.s = load i64, ptr %i.n, align 8, !dbg !59100, !range !1707, !alias.scope !59084, !noundef !1417 ; 2 uses
  %i.t = icmp slt i64 %i.s, 0, !dbg !59100
  %i.u = add i64 %i.s, -9223372036854775807, !dbg !59100
  %i.v = select i1 %i.t, i64 %i.u, i64 0, !dbg !59100
  %i.w = icmp eq i64 %i.r, %i.v, !dbg !59101
  br i1 %i.w, label %bb.f, label %_RNvXsev_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14AlterCollationNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59101

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i64 %i.r, 0, !dbg !59101
  br i1 %i.x, label %bb.g, label %_RNvXsev_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14AlterCollationNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59101

bb.g:                                             ; preds = %bb.f
  %i.y = tail call noundef zeroext i1 @_RNvXs2_NtCsaRr8xKSRVhT_9sqlparser3astNtB5_5IdentNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.n), !dbg !59102
  br label %_RNvXsev_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14AlterCollationNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59103

bb.h:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 24, !dbg !59104
  %.val1.i.i.i = load i64, ptr %i.z, align 8, !dbg !59104, !alias.scope !59078, !noundef !1417 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24, !dbg !59104
  %.val3.i.i.i = load i64, ptr %i.aa, align 8, !dbg !59104, !alias.scope !59080, !noundef !1417
  %i.ab = icmp eq i64 %.val1.i.i.i, %.val3.i.i.i, !dbg !59105
  br i1 %i.ab, label %bb.i, label %_RNvXsev_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14AlterCollationNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59105

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16, !dbg !59104
  %.val2.i.i.i = load ptr, ptr %i.ac, align 8, !dbg !59104, !alias.scope !59080, !nonnull !1417, !noundef !1417
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !59104
  %.val.i.i.i = load ptr, ptr %i.ad, align 8, !dbg !59104, !alias.scope !59078, !nonnull !1417, !noundef !1417
  %i.ae = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i.i.i, ptr noundef nonnull %.val2.i.i.i, i64 noundef %.val1.i.i.i), !dbg !59106, !noalias !59085
  br label %_RNvXsev_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14AlterCollationNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59107

_RNvXsev_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14AlterCollationNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i1 [ %i.y, %bb.g ], [ false, %_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i ], [ %i.l, %bb.d ], [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.f ], [ false, %bb.h ], [ %i.ae, %bb.i ], [ false, %bb.e ], [ false, %bb.a ], !dbg !59090
  ret i1 %.sroa.0.0.i, !dbg !59108
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast3ddl14CreateOperatorNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr captures(address, read_provenance) %.0.val, ptr captures(address, read_provenance) %.0.val1) unnamed_addr #2 !dbg !59109 !guid !59131 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59132), !dbg !59144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59133), !dbg !59144
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 184, !dbg !59145
  %i.b = load i8, ptr %i.a, align 8, !dbg !59145, !range !1460, !alias.scope !59132, !noundef !1417
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val1, i64 184, !dbg !59145
  %i.d = load i8, ptr %i.c, align 8, !dbg !59145, !range !1460, !alias.scope !59133, !noundef !1417
  %i.e = icmp eq i8 %i.b, %i.d, !dbg !59145
  br i1 %i.e, label %bb.b, label %_RNvXsfj_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14CreateOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59145

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !59146
  %.val5.i = load i64, ptr %i.f, align 8, !dbg !59146, !alias.scope !59132, !noundef !1417 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16, !dbg !59146
  %.val7.i = load i64, ptr %i.g, align 8, !dbg !59146, !alias.scope !59133, !noundef !1417
  %i.h = icmp eq i64 %.val5.i, %.val7.i, !dbg !59147
  br i1 %i.h, label %_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i, label %_RNvXsfj_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14CreateOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59147

_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8, !dbg !59146
  %.val6.i = load ptr, ptr %i.i, align 8, !dbg !59146, !alias.scope !59133, !nonnull !1417, !noundef !1417
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !59146
  %.val4.i = load ptr, ptr %i.j, align 8, !dbg !59146, !alias.scope !59132, !nonnull !1417, !noundef !1417
  %i.k = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val4.i, ptr noundef nonnull %.val6.i, i64 noundef %.val5.i), !dbg !59148, !noalias !59135
  br i1 %i.k, label %bb.c, label %_RNvXsfj_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14CreateOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59146

bb.c:                                             ; preds = %_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 40, !dbg !59149
  %.val1.i = load i64, ptr %i.l, align 8, !dbg !59149, !alias.scope !59132, !noundef !1417 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val1, i64 40, !dbg !59149
  %.val3.i = load i64, ptr %i.m, align 8, !dbg !59149, !alias.scope !59133, !noundef !1417
  %i.n = icmp eq i64 %.val1.i, %.val3.i, !dbg !59150
  br i1 %i.n, label %_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit13.i, label %_RNvXsfj_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14CreateOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59150

_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit13.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32, !dbg !59149
  %.val2.i = load ptr, ptr %i.o, align 8, !dbg !59149, !alias.scope !59133, !nonnull !1417, !noundef !1417
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 32, !dbg !59149
  %.val.i = load ptr, ptr %i.p, align 8, !dbg !59149, !alias.scope !59132, !nonnull !1417, !noundef !1417
  %i.q = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i, ptr noundef nonnull %.val2.i, i64 noundef %.val1.i), !dbg !59151, !noalias !59135
  br i1 %i.q, label %bb.d, label %_RNvXsfj_NtNtCsaRr8xKSRVhT_9sqlparser3ast3ddlNtB6_14CreateOperatorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !59149

bb.d:                                             ; preds = %_RNvXs4R_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit13.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 72, !dbg !59152 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs7p_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_11TableFactorNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  %i.ut = load i64, ptr %i.jd, align 8, !dbg !62163, !range !1594, !alias.scope !61451, !noundef !1417
  %.not.i323 = icmp eq i64 %i.ut, 69, !dbg !62163
  br i1 %.not.i323, label %bb.ii, label %bb.ih, !dbg !62164

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !62165, !noalias !61452
  invoke fastcc void @_RNvXs7L_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_4ExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.jd) #46
          to label %.noexc324 unwind label %bb.ij, !dbg !62166, !noalias !61450, !inline_history !910

.noexc324:                                        ; preds = %bb.ih
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.bc, ptr noundef nonnull align 8 dereferenceable(328) %i.g, i64 328, i1 false), !dbg !62167, !noalias !61451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !62168, !noalias !61452
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit325, !dbg !62169

bb.ii:                                            ; preds = %bb.ig
  store i64 69, ptr %i.bc, align 8, !dbg !62170, !alias.scope !61450
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit325, !dbg !62170

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprEECshquuC4dCYVj_10polars_sql.exit348: ; preds = %.body344, %bb.is, %bb.ij
  %.pn = phi { ptr, i32 } [ %i.uu, %bb.ij ], [ %eh.lpad-body345, %bb.is ], [ %eh.lpad-body345, %.body344 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.bd) #41
          to label %bb.ie unwind label %bb.co, !dbg !62158

bb.ij:                                            ; preds = %bb.ih
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprEECshquuC4dCYVj_10polars_sql.exit348

_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit325: ; preds = %bb.ii, %.noexc324
  call void @llvm.experimental.noalias.scope.decl(metadata !61453), !dbg !62171
  %i.uv = load i64, ptr %i.je, align 8, !dbg !62172, !range !1570, !alias.scope !61453, !noundef !1417
  %.not.i328 = icmp eq i64 %i.uv, -9223372036854775808, !dbg !62172
  br i1 %.not.i328, label %bb.it, label %bb.ik, !dbg !62173

bb.ik:                                            ; preds = %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit325
  call void @llvm.experimental.noalias.scope.decl(metadata !61454), !dbg !62174
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 584, !dbg !62175
  %i.ux = load i8, ptr %i.uw, align 8, !dbg !62175, !range !1460, !alias.scope !61455, !noundef !1417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !62176, !noalias !61456
  call void @llvm.experimental.noalias.scope.decl(metadata !61457), !dbg !62176
  call void @llvm.experimental.noalias.scope.decl(metadata !61458), !dbg !62176
  invoke void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.je)
          to label %.noexc343 unwind label %bb.ir, !dbg !62177, !noalias !61459

.noexc343:                                        ; preds = %bb.ik
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 488, !dbg !62178
  %.val.i.i.i329 = load i32, ptr %i.uy, align 8, !dbg !62178, !range !2072, !alias.scope !61460, !noundef !1417
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 456, !dbg !62179
  %i.va = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !62180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.va, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.uz, i64 32, i1 false), !dbg !62181, !alias.scope !61461, !noalias !61459
  %i.vb = getelementptr inbounds nuw i8, ptr %i.f, i64 56, !dbg !62180
  store i32 %.val.i.i.i329, ptr %i.vb, align 8, !dbg !62180, !alias.scope !61457, !noalias !61456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !62182, !noalias !61456
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 496, !dbg !62182
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query19TableAliasColumnDefENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBL_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vc)
          to label %bb.in unwind label %bb.im, !dbg !62182, !noalias !61459

bb.il:                                            ; preds = %bb.ip, %bb.im
  %.pn.i.i330 = phi { ptr, i32 } [ %i.vk, %bb.ip ], [ %i.vd, %bb.im ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %.body344 unwind label %bb.iq, !dbg !62183, !noalias !61459

bb.im:                                            ; preds = %.noexc343
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.in:                                            ; preds = %.noexc343
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 520, !dbg !62184 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61462), !dbg !62184
  %i.vf = load i64, ptr %i.ve, align 8, !dbg !62185, !range !1570, !alias.scope !61463, !noundef !1417
  %.not.i.i.i332 = icmp eq i64 %i.vf, -9223372036854775808, !dbg !62185
  br i1 %.not.i.i.i332, label %_RNvXsaB_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_10TableAliasNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i337, label %bb.io, !dbg !62186

bb.io:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !62187, !noalias !61464
  call void @llvm.experimental.noalias.scope.decl(metadata !61465), !dbg !62188
  call void @llvm.experimental.noalias.scope.decl(metadata !61466), !dbg !62188
  invoke void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ve)
          to label %.noexc.i.i333 unwind label %bb.ip, !dbg !62189, !noalias !61467

.noexc.i.i333:                                    ; preds = %bb.io
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 576, !dbg !62190
  %.val.i.i.i.i334 = load i32, ptr %i.vg, align 8, !dbg !62190, !range !2072, !alias.scope !61468, !noundef !1417
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 544, !dbg !62191
  %i.vi = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !62192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.vi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.vh, i64 32, i1 false), !dbg !62193, !alias.scope !61469, !noalias !61467
  %i.vj = getelementptr inbounds nuw i8, ptr %i.d, i64 56, !dbg !62192
  store i32 %.val.i.i.i.i334, ptr %i.vj, align 8, !dbg !62192, !alias.scope !61465, !noalias !61464
  %.sroa.0.0.copyload2.i.i335 = load i64, ptr %i.d, align 8, !dbg !62194, !noalias !61470
  %.sroa.5.0..sroa_idx3.i.i336 = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !62194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i.i326, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx3.i.i336, i64 56, i1 false), !dbg !62194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !62195, !noalias !61464
  br label %_RNvXsaB_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_10TableAliasNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i337, !dbg !62196

bb.ip:                                            ; preds = %bb.io
  %i.vk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query19TableAliasColumnDefEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.e) #41
          to label %bb.il unwind label %bb.iq, !dbg !62197, !noalias !61459

bb.iq:                                            ; preds = %bb.ip, %bb.il
  %i.vl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62198, !noalias !61459
  unreachable, !dbg !62198

_RNvXsaB_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_10TableAliasNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i337: ; preds = %.noexc.i.i333, %bb.in
  %.sroa.0.0.i.i338 = phi i64 [ %.sroa.0.0.copyload2.i.i335, %.noexc.i.i333 ], [ -9223372036854775808, %bb.in ], !dbg !62199
  %.sroa.0.i327.sroa.0.0.copyload = load i64, ptr %i.f, align 8, !dbg !62198, !noalias !61471
  %.sroa.0.i327.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !62198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i327.sroa.4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i327.sroa.4.0..sroa_idx, i64 56, i1 false), !dbg !62198
  %.sroa.0.i327.sroa.4.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i327.sroa.4, i64 56, !dbg !62198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i327.sroa.4.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !62198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !62197, !noalias !61456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !62197, !noalias !61456
  br label %bb.it, !dbg !62200

bb.ir:                                            ; preds = %bb.ik
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %.body344, !dbg !62158

.body344:                                         ; preds = %bb.il, %bb.ir
  %eh.lpad-body345 = phi { ptr, i32 } [ %i.vm, %bb.ir ], [ %.pn.i.i330, %bb.il ] ; 2 uses
  %i.vn = load i64, ptr %i.bc, align 8, !dbg !62201, !range !1594, !alias.scope !61472, !noundef !1417
  %i.vo = icmp eq i64 %i.vn, 69, !dbg !62201
  br i1 %i.vo, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprEECshquuC4dCYVj_10polars_sql.exit348, label %bb.is, !dbg !62201

bb.is:                                            ; preds = %.body344
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.bc)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprEECshquuC4dCYVj_10polars_sql.exit348 unwind label %bb.co, !dbg !62201, !inline_history !146

bb.it:                                            ; preds = %_RNvXsaB_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_10TableAliasNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i337, %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit325
  %.sroa.7429.0 = phi i8 [ %i.ux, %_RNvXsaB_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_10TableAliasNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i337 ], [ undef, %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit325 ], !dbg !62171
  %.sroa.5427.0 = phi i64 [ %.sroa.0.0.i.i338, %_RNvXsaB_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_10TableAliasNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i337 ], [ undef, %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit325 ], !dbg !62171
  %.sroa.0424.0 = phi i64 [ %.sroa.0.i327.sroa.0.0.copyload, %_RNvXsaB_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_10TableAliasNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i337 ], [ -9223372036854775808, %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit325 ], !dbg !62202
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 336, !dbg !62203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vp, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !dbg !62203
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !62203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vq, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !dbg !62203
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 384, !dbg !62203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vr, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !dbg !62203
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 408, !dbg !62203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vs, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !dbg !62203
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.vt, ptr noundef nonnull align 8 dereferenceable(328) %i.bc, i64 328, i1 false), !dbg !62203
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 432, !dbg !62203
  store i64 %.sroa.0424.0, ptr %i.vu, align 8, !dbg !62203
  %.sroa.5426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 440, !dbg !62203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5426.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i327.sroa.4, i64 80, i1 false), !dbg !62203
  %.sroa.5427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 520, !dbg !62203
  store i64 %.sroa.5427.0, ptr %.sroa.5427.0..sroa_idx, align 8, !dbg !62203
  %.sroa.6428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528, !dbg !62203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6428.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i.i326, i64 56, i1 false), !dbg !62203
  %.sroa.7429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 584, !dbg !62203
  store i8 %.sroa.7429.0, ptr %.sroa.7429.0..sroa_idx, align 8, !dbg !62203
  store i64 14, ptr %0, align 8, !dbg !62203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !62158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !62158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !62158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !62158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !62158
  br label %bb.cn, !dbg !61814
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvXs7r_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_13CeilFloorKindNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !62204 !guid !62213 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !dbg !62215, !range !1702, !noundef !1417
  %.not = icmp eq i64 %i.b, -9223372036854775785, !dbg !62215
  br i1 %.not, label %bb.c, label %bb.b, !dbg !62215

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !62216
  call fastcc void @_RNvXso_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB5_5ValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(80) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) #46, !dbg !62217
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !62218
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !62219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !62220, !alias.scope !62214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !dbg !62221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !62222
  br label %bb.d, !dbg !62223

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !62224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62225
  tail call fastcc void @_RNvXsS_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.e) #46, !dbg !62226
  store i64 -9223372036854775785, ptr %0, align 8, !dbg !62225
  br label %bb.d, !dbg !62223

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void, !dbg !62227
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7r_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_11TableFactorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1336) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1336) %1) unnamed_addr #2 !dbg !62228 !guid !62505 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !62551, !range !1721, !noundef !1417
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 2), !dbg !62551 ; 2 uses
  %i.c = load i64, ptr %1, align 8, !dbg !62552, !range !1721, !noundef !1417 ; 14 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 2), !dbg !62552
  %i.e = icmp eq i64 %i.b, %i.d, !dbg !62553
  br i1 %i.e, label %bb.b, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62553

bb.b:                                             ; preds = %bb.a
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.l
    i64 9, label %bb.m
    i64 10, label %bb.n
    i64 11, label %bb.o
    i64 12, label %bb.p
  ], !dbg !62553

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.bx, %bb.bv, %bb.bu, %bb.bt, %bb.br, %bb.bq, %bb.bn, %bb.bk, %bb.bi, %bb.bh, %bb.bg, %bb.bd, %bb.az, %bb.aw, %bb.av, %bb.as, %bb.ap, %bb.al, %bb.ah, %bb.ag, %bb.w, %bb.v, %bb.t, %bb.q, %bb.p, %bb.o, %bb.k, %bb.j, %bb.by, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit256, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit247, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit241, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit235, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %.split422, %bb.bs, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14XmlTableColumnENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query16XmlPassingClauseNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %bb.bp, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query22XmlNamespaceDefinitionENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %bb.bo, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query16SymbolDefinitionENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %bb.bm, %bb.bl, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query12RowsPerMatchENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query7MeasureENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11OrderByExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit198, %bb.n, %.split414, %bb.bf, %bb.be, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query13ExprWithAliasENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit189, %bb.bc, %bb.bb, %bb.m, %bb.ba, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %bb.ax, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit183, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query13ExprWithAliasENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %bb.l, %.split408, %bb.au, %_RNvXsg_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14TableWithJoinsENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %bb.at, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query19OpenJsonTableColumnENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5value13ValueWithSpanENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %bb.i, %.split403, %bb.aq, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15JsonTableColumnENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %bb.ao, %bb.h, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit158, %bb.ak, %bb.aj, %bb.g, %bb.am, %bb.an, %bb.ai, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast11FunctionArgENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit145, %bb.af, %bb.f, %bb.ae, %bb.e, %bb.ad, %bb.ac, %bb.ab, %bb.d, %bb.y, %bb.x, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query12TableVersionENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %bb.s, %bb.r, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit122, %bb.c, %.split, %bb.z, %bb.aa, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.z ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.ag ], [ %.mux.i.i, %bb.am ], [ false, %bb.al ], [ false, %bb.ap ], [ false, %.split422 ], [ false, %.split408 ], [ false, %bb.az ], [ false, %bb.bk ], [ false, %bb.bq ], [ false, %bb.v ], [ false, %bb.y ], [ false, %bb.x ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query12TableVersionENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %bb.s ], [ false, %bb.r ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit122 ], [ false, %bb.c ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.t ], [ false, %.split ], [ %i.eu, %bb.aa ], [ %i.fb, %bb.ad ], [ false, %bb.ac ], [ false, %bb.ab ], [ %i.fe, %bb.ae ], [ %i.fu, %bb.ai ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast11FunctionArgENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit145 ], [ false, %bb.af ], [ false, %bb.f ], [ false, %bb.w ], [ false, %bb.ah ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit158 ], [ false, %bb.ak ], [ false, %bb.aj ], [ false, %bb.g ], [ %i.gi, %bb.an ], [ %i.gs, %bb.aq ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15JsonTableColumnENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %bb.ao ], [ false, %bb.h ], [ %i.hd, %bb.at ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query19OpenJsonTableColumnENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5value13ValueWithSpanENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %bb.i ], [ false, %.split403 ], [ %i.he, %bb.au ], [ false, %_RNvXsg_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14TableWithJoinsENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ %i.hw, %bb.ba ], [ false, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %bb.ax ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit183 ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query13ExprWithAliasENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %bb.l ], [ false, %bb.as ], [ false, %bb.av ], [ false, %bb.aw ], [ %i.ih, %bb.bf ], [ false, %bb.be ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query13ExprWithAliasENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit189 ], [ false, %bb.bc ], [ false, %bb.bb ], [ false, %bb.m ], [ %i.jn, %bb.bo ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query16SymbolDefinitionENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %bb.bm ], [ false, %bb.bl ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query12RowsPerMatchENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query7MeasureENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11OrderByExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit198 ], [ false, %bb.n ], [ false, %bb.bd ], [ false, %bb.bg ], [ false, %bb.bh ], [ false, %bb.bi ], [ false, %.split414 ], [ %i.kb, %bb.bs ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14XmlTableColumnENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query16XmlPassingClauseNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %bb.bp ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query22XmlNamespaceDefinitionENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %bb.k ], [ false, %bb.bn ], [ %i.ky, %bb.by ], [ false, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit256 ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit247 ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit241 ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit235 ], [ false, %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %bb.o ], [ false, %bb.br ], [ false, %bb.bt ], [ false, %bb.bu ], [ false, %bb.bv ], [ false, %bb.j ], [ false, %bb.bx ], !dbg !62554
  ret i1 %.sroa.0.0, !dbg !62555

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %i.c, 3, !dbg !62553
  tail call void @llvm.assume(i1 %i.f), !dbg !62553
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1096, !dbg !62556
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1256, !dbg !62557
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !62558 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1328, !dbg !62559
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1304, !dbg !62560
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1096, !dbg !62556
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1256, !dbg !62557
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !62558 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1328, !dbg !62559
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1304, !dbg !62560
  %.val.i = load i8, ptr %i.j, align 8, !dbg !62561, !range !1460, !noundef !1417
  %.val1.i = load i8, ptr %i.o, align 8, !dbg !62561, !range !1460, !noundef !1417
  %i.q = icmp eq i8 %.val.i, %.val1.i, !dbg !62562
  br i1 %i.q, label %bb.q, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62563

bb.d:                                             ; preds = %bb.b
  %2 = icmp eq i64 %i.c, 3, !dbg !62553
  tail call void @llvm.assume(i1 %2), !dbg !62553
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !62564
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !62565
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62566
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !62564
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !62565
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !62566
  %.val.i105 = load i8, ptr %i.r, align 8, !dbg !62567, !range !1460, !noundef !1417
  %.val1.i106 = load i8, ptr %i.u, align 8, !dbg !62567, !range !1460, !noundef !1417
  %i.x = icmp eq i8 %.val.i105, %.val1.i106, !dbg !62568
  br i1 %i.x, label %bb.ab, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62569

bb.e:                                             ; preds = %bb.b
  %3 = icmp eq i64 %i.c, 4, !dbg !62553
  tail call void @llvm.assume(i1 %3), !dbg !62553
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62570
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !62570
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_4ExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.z) #46, !dbg !62571, !noalias !62506, !inline_history !1271
  br i1 %i.aa, label %bb.ae, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62572

bb.f:                                             ; preds = %bb.b
  %4 = icmp eq i64 %i.c, 5, !dbg !62553
  tail call void @llvm.assume(i1 %4), !dbg !62553
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !62573
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !62574
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 216, !dbg !62573
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !62574
  %.val.i107 = load i8, ptr %i.ab, align 8, !dbg !62575, !range !1460, !noundef !1417
  %.val1.i108 = load i8, ptr %i.ad, align 8, !dbg !62575, !range !1460, !noundef !1417
  %i.af = icmp eq i8 %.val.i107, %.val1.i108, !dbg !62576
  br i1 %i.af, label %bb.af, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62577

bb.g:                                             ; preds = %bb.b
  %5 = icmp eq i64 %i.c, 6, !dbg !62553
  tail call void @llvm.assume(i1 %5), !dbg !62553
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !62578
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !62579
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !62580 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !62578
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !62579
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !62580 ; 2 uses
  %.val.i109 = load i8, ptr %i.ah, align 8, !dbg !62581, !range !1460, !noundef !1417
  %.val1.i110 = load i8, ptr %i.ak, align 8, !dbg !62581, !range !1460, !noundef !1417
  %i.am = icmp eq i8 %.val.i109, %.val1.i110, !dbg !62582
  br i1 %i.am, label %bb.aj, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62583

bb.h:                                             ; preds = %bb.b
  %6 = icmp eq i64 %i.c, 7, !dbg !62553
  tail call void @llvm.assume(i1 %6), !dbg !62553
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62584
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !62585
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !62584
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 360, !dbg !62585
  %i.ar = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_4ExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ap) #46, !dbg !62586, !noalias !62507, !inline_history !1271
  br i1 %i.ar, label %bb.ao, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62587

bb.i:                                             ; preds = %bb.b
  %7 = icmp eq i64 %i.c, 8, !dbg !62553
  tail call void @llvm.assume(i1 %7), !dbg !62553
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62588
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 520, !dbg !62589 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !62590
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !62588
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 520, !dbg !62589 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 360, !dbg !62590
  %i.ay = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_4ExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.av) #46, !dbg !62591, !noalias !62508, !inline_history !1271
  br i1 %i.ay, label %bb.ar, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62592

bb.j:                                             ; preds = %bb.b
  %8 = icmp eq i64 %i.c, 9, !dbg !62553
  tail call void @llvm.assume(i1 %8), !dbg !62553
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !62593
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62594
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !62593
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !62594
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62509), !dbg !62595
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62510), !dbg !62595
  %i.bd = load ptr, ptr %i.az, align 8, !dbg !62596, !alias.scope !62509, !noalias !62511, !nonnull !1417, !noundef !1417 ; 3 uses
  %i.be = load ptr, ptr %i.bb, align 8, !dbg !62597, !alias.scope !62510, !noalias !62511, !nonnull !1417, !noundef !1417 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62512), !dbg !62598, !noalias !62511
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62513), !dbg !62598, !noalias !62511
  %i.bf = tail call fastcc noundef zeroext i1 @_RNvXs7r_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_11TableFactorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1360) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1360) %i.be) #46, !dbg !62599, !noalias !62514, !inline_history !62272
  br i1 %i.bf, label %bb.k, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62599

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr i8, ptr %i.bd, i64 1352, !dbg !62600
  %.val1.i.i = load i64, ptr %i.bg, align 8, !dbg !62600, !alias.scope !62512, !noalias !62514, !noundef !1417 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.be, i64 1352, !dbg !62600
  %.val3.i.i = load i64, ptr %i.bh, align 8, !dbg !62600, !alias.scope !62513, !noalias !62514, !noundef !1417
  %i.bi = icmp eq i64 %.val1.i.i, %.val3.i.i, !dbg !62601
  br i1 %i.bi, label %_RNvXsg_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14TableWithJoinsENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62601

_RNvXsg_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query14TableWithJoinsENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.k
  %i.bj = getelementptr i8, ptr %i.be, i64 1344, !dbg !62600
  %.val2.i.i = load ptr, ptr %i.bj, align 8, !dbg !62600, !alias.scope !62513, !noalias !62514, !nonnull !1417, !noundef !1417
  %i.bk = getelementptr i8, ptr %i.bd, i64 1344, !dbg !62600
  %.val.i.i = load ptr, ptr %i.bk, align 8, !dbg !62600, !alias.scope !62512, !noalias !62514, !nonnull !1417, !noundef !1417
  %i.bl = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query4JoinINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef nonnull %.val.i.i, ptr noundef nonnull %.val2.i.i, i64 noundef %.val1.i.i), !dbg !62602, !noalias !62514, !inline_history !62272
  br i1 %i.bl, label %bb.au, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62603

bb.l:                                             ; preds = %bb.b
  %9 = icmp eq i64 %i.c, 10, !dbg !62553
  tail call void @llvm.assume(i1 %9), !dbg !62553
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 576, !dbg !62604
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62605
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !62606 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !62607
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 576, !dbg !62604
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !62605
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !62606 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 416, !dbg !62607
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62515), !dbg !62608
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62516), !dbg !62608
  %i.bu = load ptr, ptr %i.bm, align 8, !dbg !62609, !alias.scope !62515, !noalias !62517, !nonnull !1417, !noundef !1417
  %i.bv = load ptr, ptr %i.bq, align 8, !dbg !62610, !alias.scope !62516, !noalias !62517, !nonnull !1417, !noundef !1417
  %i.bw = tail call fastcc noundef zeroext i1 @_RNvXs7r_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_11TableFactorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1336) %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1336) %i.bv) #46, !dbg !62611, !noalias !62518, !inline_history !62287
  br i1 %i.bw, label %bb.av, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62612

bb.m:                                             ; preds = %bb.b
  %10 = icmp eq i64 %i.c, 11, !dbg !62553
  tail call void @llvm.assume(i1 %10), !dbg !62553
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 584, !dbg !62613
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 336, !dbg !62614
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 592, !dbg !62615
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 424, !dbg !62616
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 584, !dbg !62613
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 336, !dbg !62614
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 592, !dbg !62615
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 424, !dbg !62616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62519), !dbg !62617
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62520), !dbg !62617
  %i.cf = load ptr, ptr %i.bx, align 8, !dbg !62618, !alias.scope !62519, !noalias !62521, !nonnull !1417, !noundef !1417
  %i.cg = load ptr, ptr %i.cb, align 8, !dbg !62619, !alias.scope !62520, !noalias !62521, !nonnull !1417, !noundef !1417
  %i.ch = tail call fastcc noundef zeroext i1 @_RNvXs7r_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_11TableFactorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1336) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1336) %i.cg) #46, !dbg !62620, !noalias !62522, !inline_history !62287
  br i1 %i.ch, label %bb.bb, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62621

bb.n:                                             ; preds = %bb.b
  %11 = icmp eq i64 %i.c, 12, !dbg !62553
  tail call void @llvm.assume(i1 %11), !dbg !62553
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 408, !dbg !62622
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !62623
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62624
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 336, !dbg !62625
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !62626
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 408, !dbg !62622
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 416, !dbg !62623
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !62624
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 336, !dbg !62625
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !62626
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62523), !dbg !62627
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62524), !dbg !62627
  %i.cs = load ptr, ptr %i.ci, align 8, !dbg !62628, !alias.scope !62523, !noalias !62525, !nonnull !1417, !noundef !1417
  %i.ct = load ptr, ptr %i.cn, align 8, !dbg !62629, !alias.scope !62524, !noalias !62525, !nonnull !1417, !noundef !1417
  %i.cu = tail call fastcc noundef zeroext i1 @_RNvXs7r_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_11TableFactorNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1336) %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1336) %i.ct) #46, !dbg !62630, !noalias !62526, !inline_history !62287
  br i1 %i.cu, label %bb.bg, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62631

bb.o:                                             ; preds = %bb.b
  %12 = icmp eq i64 %i.c, 13, !dbg !62553
  tail call void @llvm.assume(i1 %12), !dbg !62553
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62632
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 408, !dbg !62633
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !62632
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 408, !dbg !62633
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 352, !dbg !62634
  %.val1.i111 = load i64, ptr %i.cz, align 8, !dbg !62634, !noundef !1417 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 352, !dbg !62634
  %.val3.i = load i64, ptr %i.da, align 8, !dbg !62634, !noundef !1417
  %i.db = icmp eq i64 %.val1.i111, %.val3.i, !dbg !62635
  br i1 %i.db, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query22XmlNamespaceDefinitionENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62635

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query22XmlNamespaceDefinitionENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 344, !dbg !62634
  %.val2.i = load ptr, ptr %i.dc, align 8, !dbg !62634, !nonnull !1417, !noundef !1417
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !62634
  %.val.i112 = load ptr, ptr %i.dd, align 8, !dbg !62634, !nonnull !1417, !noundef !1417
  %i.de = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query22XmlNamespaceDefinitionINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef nonnull %.val.i112, ptr noundef nonnull %.val2.i, i64 noundef %.val1.i111), !dbg !62636
  br i1 %i.de, label %bb.bp, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62637

bb.p:                                             ; preds = %bb.b
  %13 = icmp eq i64 %i.c, 14, !dbg !62553
  tail call void @llvm.assume(i1 %13), !dbg !62553
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62638 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 432, !dbg !62639
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !62638 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 432, !dbg !62639
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 352, !dbg !62640
  %.val1.i113 = load i64, ptr %i.dj, align 8, !dbg !62640, !noundef !1417 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 352, !dbg !62640
  %.val3.i114 = load i64, ptr %i.dk, align 8, !dbg !62640, !noundef !1417
  %i.dl = icmp eq i64 %.val1.i113, %.val3.i114, !dbg !62641
  br i1 %i.dl, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62641

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 344, !dbg !62640
  %.val2.i115 = load ptr, ptr %i.dm, align 8, !dbg !62640, !nonnull !1417, !noundef !1417
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !62640
  %.val.i116 = load ptr, ptr %i.dn, align 8, !dbg !62640, !nonnull !1417, !noundef !1417
  %i.do = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i116, ptr noundef nonnull %.val2.i115, i64 noundef %.val1.i113), !dbg !62642
  br i1 %i.do, label %bb.bt, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62643

bb.q:                                             ; preds = %bb.c
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1016, !dbg !62644
  %.val1.i117 = load i64, ptr %i.dp, align 8, !dbg !62644, !noundef !1417 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 1016, !dbg !62644
  %.val3.i118 = load i64, ptr %i.dq, align 8, !dbg !62644, !noundef !1417
  %i.dr = icmp eq i64 %.val1.i117, %.val3.i118, !dbg !62645
  br i1 %i.dr, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit122, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62645

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit122: ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 1008, !dbg !62644
  %.val2.i120 = load ptr, ptr %i.ds, align 8, !dbg !62644, !nonnull !1417, !noundef !1417
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1008, !dbg !62644
  %.val.i121 = load ptr, ptr %i.dt, align 8, !dbg !62644, !nonnull !1417, !noundef !1417
  %i.du = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i121, ptr noundef nonnull %.val2.i120, i64 noundef %.val1.i117), !dbg !62646
  br i1 %i.du, label %bb.r, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62647

bb.r:                                             ; preds = %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit122
  %i.dv = tail call fastcc noundef zeroext i1 @_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query10TableAliasENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr nonnull %i.g, ptr nonnull %i.l) #46, !dbg !62648
  br i1 %i.dv, label %bb.s, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62648

bb.s:                                             ; preds = %bb.r
  %i.dw = tail call fastcc noundef zeroext i1 @_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query17TableFunctionArgsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr nonnull %i.h, ptr nonnull %i.m) #46, !dbg !62649
  br i1 %i.dw, label %bb.t, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62649

bb.t:                                             ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1040, !dbg !62650
  %.val1.i123 = load i64, ptr %i.dx, align 8, !dbg !62650, !noundef !1417 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 1040, !dbg !62650
  %.val3.i124 = load i64, ptr %i.dy, align 8, !dbg !62650, !noundef !1417
  %i.dz = icmp eq i64 %.val1.i123, %.val3.i124, !dbg !62651
  br i1 %i.dz, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62651

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.t
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 1032, !dbg !62650
  %.val2.i126 = load ptr, ptr %i.ea, align 8, !dbg !62650, !nonnull !1417, !noundef !1417
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1032, !dbg !62650
  %.val.i127 = load ptr, ptr %i.eb, align 8, !dbg !62650, !nonnull !1417, !noundef !1417
  %i.ec = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i127, ptr noundef nonnull %.val2.i126, i64 noundef %.val1.i123), !dbg !62652
  br i1 %i.ec, label %bb.u, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62653

bb.u:                                             ; preds = %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62527), !dbg !62654
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62528), !dbg !62654
  %i.ed = load i64, ptr %i.i, align 8, !dbg !62655, !range !1712, !alias.scope !62527, !noalias !62529, !noundef !1417
  %.not.i = icmp eq i64 %i.ed, 73, !dbg !62655
  %i.ee = load i64, ptr %i.n, align 8, !dbg !62655, !range !1712, !alias.scope !62528, !noalias !62529, !noundef !1417
  %i.ef = icmp eq i64 %i.ee, 73, !dbg !62655      ; 2 uses
  br i1 %.not.i, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query12TableVersionENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.v, !dbg !62656

bb.v:                                             ; preds = %bb.u
  br i1 %i.ef, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %.split, !dbg !62656

.split:                                           ; preds = %bb.v
  %i.eg = tail call fastcc noundef zeroext i1 @_RNvXsaX_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_12TableVersionNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(984) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(984) %i.n) #46, !dbg !62657, !noalias !62529, !inline_history !62335
  br i1 %i.eg, label %bb.w, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62658

_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query12TableVersionENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.u
  br i1 %i.ef, label %bb.w, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62658

bb.w:                                             ; preds = %.split, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query12TableVersionENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1064, !dbg !62659
  %.val1.i128 = load i64, ptr %i.eh, align 8, !dbg !62659, !noundef !1417 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 1064, !dbg !62659
  %.val3.i129 = load i64, ptr %i.ei, align 8, !dbg !62659, !noundef !1417
  %i.ej = icmp eq i64 %.val1.i128, %.val3.i129, !dbg !62660
  br i1 %i.ej, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62660

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.w
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 1056, !dbg !62659
  %.val2.i131 = load ptr, ptr %i.ek, align 8, !dbg !62659, !nonnull !1417, !noundef !1417
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1056, !dbg !62659
  %.val.i132 = load ptr, ptr %i.el, align 8, !dbg !62659, !nonnull !1417, !noundef !1417
  %i.em = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i132, ptr noundef nonnull %.val2.i131, i64 noundef %.val1.i128), !dbg !62661
  br i1 %i.em, label %bb.x, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62662

bb.x:                                             ; preds = %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit
  %i.en = tail call fastcc noundef zeroext i1 @_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast8JsonPathENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr nonnull %i.k, ptr nonnull %i.p) #46, !dbg !62663
  br i1 %i.en, label %bb.y, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62663

bb.y:                                             ; preds = %bb.x
  %i.eo = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableSampleKindENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #46, !dbg !62664, !noalias !62530, !inline_history !62342
  br i1 %i.eo, label %bb.z, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62665

bb.z:                                             ; preds = %bb.y
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 1088, !dbg !62666
  %.val1.i133 = load i64, ptr %i.ep, align 8, !dbg !62666, !noundef !1417 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 1088, !dbg !62666
  %.val3.i134 = load i64, ptr %i.eq, align 8, !dbg !62666, !noundef !1417
  %i.er = icmp eq i64 %.val1.i133, %.val3.i134, !dbg !62667
  br i1 %i.er, label %bb.aa, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62667

bb.aa:                                            ; preds = %bb.z
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 1080, !dbg !62666
  %.val2.i136 = load ptr, ptr %i.es, align 8, !dbg !62666, !nonnull !1417, !noundef !1417
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1080, !dbg !62666
  %.val.i137 = load ptr, ptr %i.et, align 8, !dbg !62666, !nonnull !1417, !noundef !1417
  %i.eu = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr noundef nonnull %.val.i137, ptr noundef nonnull %.val2.i136, i64 noundef %.val1.i133), !dbg !62668
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62669

bb.ab:                                            ; preds = %bb.d
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 184, !dbg !62670
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !62670
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62531), !dbg !62671
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62532), !dbg !62671
  %i.ex = load ptr, ptr %i.ew, align 8, !dbg !62672, !alias.scope !62531, !noalias !62533, !nonnull !1417, !noundef !1417
  %i.ey = load ptr, ptr %i.ev, align 8, !dbg !62673, !alias.scope !62532, !noalias !62533, !nonnull !1417, !noundef !1417
  %i.ez = tail call fastcc noundef zeroext i1 @_RNvXs1y_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_5QueryNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.ex, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.ey) #46, !dbg !62674, !noalias !62534, !inline_history !1013
  br i1 %i.ez, label %bb.ac, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62675

bb.ac:                                            ; preds = %bb.ab
  %i.fa = tail call fastcc noundef zeroext i1 @_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query10TableAliasENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr nonnull %i.s, ptr nonnull %i.v) #46, !dbg !62676
  br i1 %i.fa, label %bb.ad, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62676

bb.ad:                                            ; preds = %bb.ac
  %i.fb = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableSampleKindENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w) #46, !dbg !62677, !noalias !62535, !inline_history !62342
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62678

bb.ae:                                            ; preds = %bb.e
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 336, !dbg !62679
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 336, !dbg !62679
  %i.fe = tail call fastcc noundef zeroext i1 @_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query10TableAliasENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr nonnull %i.fd, ptr nonnull %i.fc) #46, !dbg !62680
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62680

bb.af:                                            ; preds = %bb.f
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 217, !dbg !62681
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 217, !dbg !62681
  %.val.i138 = load i8, ptr %i.fg, align 1, !dbg !62682, !range !1460, !noundef !1417
  %.val1.i139 = load i8, ptr %i.ff, align 1, !dbg !62682, !range !1460, !noundef !1417
  %i.fh = icmp eq i8 %.val.i138, %.val1.i139, !dbg !62683
  br i1 %i.fh, label %bb.ag, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62684

bb.ag:                                            ; preds = %bb.af
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !62685
  %.val1.i140 = load i64, ptr %i.fi, align 8, !dbg !62685, !noundef !1417 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !62685
  %.val3.i141 = load i64, ptr %i.fj, align 8, !dbg !62685, !noundef !1417
  %i.fk = icmp eq i64 %.val1.i140, %.val3.i141, !dbg !62686
  br i1 %i.fk, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit145, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62686

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit145: ; preds = %bb.ag
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !62685
  %.val2.i143 = load ptr, ptr %i.fl, align 8, !dbg !62685, !nonnull !1417, !noundef !1417
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !62685
  %.val.i144 = load ptr, ptr %i.fm, align 8, !dbg !62685, !nonnull !1417, !noundef !1417
  %i.fn = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i144, ptr noundef nonnull %.val2.i143, i64 noundef %.val1.i140), !dbg !62687
  br i1 %i.fn, label %bb.ah, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62688

bb.ah:                                            ; preds = %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit145
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !62689
  %.val1.i146 = load i64, ptr %i.fo, align 8, !dbg !62689, !noundef !1417 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !62689
  %.val3.i147 = load i64, ptr %i.fp, align 8, !dbg !62689, !noundef !1417
  %i.fq = icmp eq i64 %.val1.i146, %.val3.i147, !dbg !62690
  br i1 %i.fq, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast11FunctionArgENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62690

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast11FunctionArgENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.ah
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !62689
  %.val2.i149 = load ptr, ptr %i.fr, align 8, !dbg !62689, !nonnull !1417, !noundef !1417
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !62689
  %.val.i150 = load ptr, ptr %i.fs, align 8, !dbg !62689, !nonnull !1417, !noundef !1417
  %i.ft = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast11FunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i150, ptr noundef nonnull %.val2.i149, i64 noundef %.val1.i146), !dbg !62691
  br i1 %i.ft, label %bb.ai, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62692

bb.ai:                                            ; preds = %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast11FunctionArgENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit
  %i.fu = tail call fastcc noundef zeroext i1 @_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query10TableAliasENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr nonnull %i.ac, ptr nonnull %i.ae) #46, !dbg !62693
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62693

bb.aj:                                            ; preds = %bb.g
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 257, !dbg !62694
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 257, !dbg !62694
  %.val.i151 = load i8, ptr %i.fw, align 1, !dbg !62695, !range !1460, !noundef !1417
  %.val1.i152 = load i8, ptr %i.fv, align 1, !dbg !62695, !range !1460, !noundef !1417
  %i.fx = icmp eq i8 %.val.i151, %.val1.i152, !dbg !62696
  br i1 %i.fx, label %bb.ak, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62697

bb.ak:                                            ; preds = %bb.aj
  %i.fy = tail call fastcc noundef zeroext i1 @_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query10TableAliasENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr nonnull %i.ag, ptr nonnull %i.aj) #46, !dbg !62698
  br i1 %i.fy, label %bb.al, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query15TableIndexHintsENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !62698

bb.al:                                            ; preds = %bb.ak
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !62699
end_hunk_1
begin_hunk_2_@_RNvXso_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB5_5ValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86057
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86058
  tail call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am), !dbg !86059
  store i64 -9223372036854775797, ptr %0, align 8, !dbg !86058
  br label %bb.ad, !dbg !86017

bb.s:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86060
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86061
  tail call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao), !dbg !86062
  store i64 -9223372036854775796, ptr %0, align 8, !dbg !86061
  br label %bb.ad, !dbg !86017

bb.t:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86063
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86064
  tail call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq), !dbg !86065
  store i64 -9223372036854775795, ptr %0, align 8, !dbg !86064
  br label %bb.ad, !dbg !86017

bb.u:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86066
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86067
  tail call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as), !dbg !86068
  store i64 -9223372036854775794, ptr %0, align 8, !dbg !86067
  br label %bb.ad, !dbg !86017

bb.v:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86069
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86070
  tail call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au), !dbg !86071
  store i64 -9223372036854775793, ptr %0, align 8, !dbg !86070
  br label %bb.ad, !dbg !86017

bb.w:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !86073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86008), !dbg !86073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86009), !dbg !86073
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !86074
  %i.ay = load i32, ptr %i.ax, align 8, !dbg !86074, !range !2115, !alias.scope !86009, !noundef !1417
  call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw), !dbg !86075
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !86076
  %i.ba = load i32, ptr %i.az, align 4, !dbg !86076, !range !2115, !alias.scope !86009, !noundef !1417
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !86077
  store i32 %i.ay, ptr %i.bb, align 8, !dbg !86077, !alias.scope !86008
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 28, !dbg !86077
  store i32 %i.ba, ptr %i.bc, align 4, !dbg !86077, !alias.scope !86008
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !86078
  store i64 -9223372036854775792, ptr %0, align 8, !dbg !86078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !86079
  br label %bb.ad, !dbg !86017

bb.x:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !86081
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86010), !dbg !86081
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86011), !dbg !86081
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !86082
  %i.bg = load i32, ptr %i.bf, align 8, !dbg !86082, !range !2115, !alias.scope !86011, !noundef !1417
  call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be), !dbg !86083
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !86084
  %i.bi = load i32, ptr %i.bh, align 4, !dbg !86084, !range !2115, !alias.scope !86011, !noundef !1417
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !86085
  store i32 %i.bg, ptr %i.bj, align 8, !dbg !86085, !alias.scope !86010
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 28, !dbg !86085
  store i32 %i.bi, ptr %i.bk, align 4, !dbg !86085, !alias.scope !86010
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !86086
  store i64 -9223372036854775791, ptr %0, align 8, !dbg !86086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !86087
  br label %bb.ad, !dbg !86017

bb.y:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86088
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86089
  tail call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm), !dbg !86090
  store i64 -9223372036854775790, ptr %0, align 8, !dbg !86089
  br label %bb.ad, !dbg !86017

bb.z:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86091
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86092
  tail call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo), !dbg !86093
  store i64 -9223372036854775789, ptr %0, align 8, !dbg !86092
  br label %bb.ad, !dbg !86017

bb.aa:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !86094
  br label %bb.ad, !dbg !86017

bb.ab:                                            ; preds = %bb.a
  store i64 -9223372036854775787, ptr %0, align 8, !dbg !86012
  br label %bb.ad, !dbg !86012

bb.ac:                                            ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86095
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86096
  tail call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.br, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq), !dbg !86097
  store i64 -9223372036854775786, ptr %0, align 8, !dbg !86096
  br label %bb.ad, !dbg !86017

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_RNvXsy_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB5_18DollarQuotedStringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, %bb.d, %bb.c
  ret void, !dbg !86098
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXsom_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10HiveFormatNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(736) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(736) %1) unnamed_addr #2 !dbg !86099 !guid !86172 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86173), !dbg !86193
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86174), !dbg !86193
  %i.a = load i64, ptr %0, align 8, !dbg !86194, !range !1588, !alias.scope !86173, !noundef !1417 ; 3 uses
  %.not.i = icmp eq i64 %i.a, 2, !dbg !86194      ; 2 uses
  %i.b = load i64, ptr %1, align 8, !dbg !86194, !range !1588, !alias.scope !86174, !noundef !1417 ; 2 uses
  %i.c = icmp eq i64 %i.b, 2, !dbg !86194         ; 2 uses
  %brmerge.i = or i1 %.not.i, %i.c, !dbg !86195
  br i1 %brmerge.i, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast13HiveRowFormatENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !86195

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86175), !dbg !86196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86176), !dbg !86196
  %i.d = icmp eq i64 %i.a, %i.b, !dbg !86197
  br i1 %i.d, label %bb.c, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86197

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw i64 %i.a to i1, !dbg !86197
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !86198
  %.val1.i.i.i = load i64, ptr %i.f, align 8, !dbg !86198, !alias.scope !86178, !noundef !1417 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !86198
  %.val3.i.i.i = load i64, ptr %i.g, align 8, !dbg !86198, !alias.scope !86179, !noundef !1417
  %i.h = icmp eq i64 %.val1.i.i.i, %.val3.i.i.i, !dbg !86198 ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !86197

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %.split27, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86199

.split27:                                         ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !86200
  %.val2.i.i.i = load ptr, ptr %i.i, align 8, !dbg !86200, !alias.scope !86179, !nonnull !1417, !noundef !1417
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !86200
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !dbg !86200, !alias.scope !86178, !nonnull !1417, !noundef !1417
  %i.k = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast16HiveRowDelimiterINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i.i.i, ptr noundef nonnull %.val2.i.i.i, i64 noundef %.val1.i.i.i), !dbg !86201, !noalias !86180
  br i1 %i.k, label %bb.f, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86193

bb.e:                                             ; preds = %bb.c
  br i1 %i.h, label %.split, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86202

.split:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !86203
  %.val2.i7.i.i = load ptr, ptr %i.l, align 8, !dbg !86203, !alias.scope !86179, !nonnull !1417, !noundef !1417
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !86203
  %.val.i8.i.i = load ptr, ptr %i.m, align 8, !dbg !86203, !alias.scope !86178, !nonnull !1417, !noundef !1417
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i8.i.i, ptr nonnull readonly %.val2.i7.i.i, i64 %.val1.i.i.i), !dbg !86204, !noalias !86180
  %i.n = icmp eq i32 %bcmp.i.i.i.i.i.i, 0, !dbg !86204
  br i1 %i.n, label %bb.f, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86193

_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast13HiveRowFormatENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a
  %.mux.i = and i1 %.not.i, %i.c, !dbg !86195
  br i1 %.mux.i, label %bb.f, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86193

bb.f:                                             ; preds = %.split27, %.split, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast13HiveRowFormatENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 688, !dbg !86205
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 688, !dbg !86205
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86181), !dbg !86205
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86182), !dbg !86205
  %i.q = load i64, ptr %i.o, align 8, !dbg !86206, !range !1570, !alias.scope !86181, !noundef !1417
  %.not.i1 = icmp eq i64 %i.q, -9223372036854775808, !dbg !86206 ; 2 uses
  %i.r = load i64, ptr %i.p, align 8, !dbg !86206, !range !1570, !alias.scope !86182, !noundef !1417
  %i.s = icmp eq i64 %i.r, -9223372036854775808, !dbg !86206 ; 2 uses
  %brmerge.i2 = or i1 %.not.i1, %i.s, !dbg !86207
  br i1 %brmerge.i2, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast9SqlOptionEENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.g, !dbg !86207

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 704, !dbg !86208
  %.val2.i = load i64, ptr %i.t, align 8, !dbg !86208, !alias.scope !86181, !noundef !1417 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 704, !dbg !86208
  %.val4.i = load i64, ptr %i.u, align 8, !dbg !86208, !alias.scope !86182, !noundef !1417
  %i.v = icmp eq i64 %.val2.i, %.val4.i, !dbg !86209
  br i1 %i.v, label %.split29, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86209

.split29:                                         ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 696, !dbg !86208
  %.val3.i = load ptr, ptr %i.w, align 8, !dbg !86208, !alias.scope !86182, !nonnull !1417, !noundef !1417
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 696, !dbg !86208
  %.val.i = load ptr, ptr %i.x, align 8, !dbg !86208, !alias.scope !86181, !nonnull !1417, !noundef !1417
  %i.y = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast9SqlOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i, ptr noundef nonnull %.val3.i, i64 noundef %.val2.i), !dbg !86210, !noalias !86183
  br i1 %i.y, label %bb.h, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86205

_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast9SqlOptionEENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f
  %.mux.i3 = and i1 %.not.i1, %i.s, !dbg !86207
  br i1 %.mux.i3, label %bb.h, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86205

bb.h:                                             ; preds = %.split29, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast9SqlOptionEENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !86211 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !86211 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86184), !dbg !86211
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86185), !dbg !86211
  %i.ab = load i64, ptr %i.z, align 8, !dbg !86212, !range !1593, !alias.scope !86184, !noundef !1417 ; 2 uses
  %.not.i5 = icmp eq i64 %i.ab, 71, !dbg !86212
  %i.ac = load i64, ptr %i.aa, align 8, !dbg !86212, !range !1593, !alias.scope !86185, !noundef !1417 ; 5 uses
  %i.ad = icmp eq i64 %i.ac, 71, !dbg !86212      ; 2 uses
  br i1 %.not.i5, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast12HiveIOFormatENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.i, !dbg !86213

bb.i:                                             ; preds = %bb.h
  br i1 %i.ad, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.j, !dbg !86213

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i64 @llvm.usub.sat.i64(i64 %i.ab, i64 68), !dbg !86214 ; 2 uses
  %i.af = tail call i64 @llvm.usub.sat.i64(i64 %i.ac, i64 68), !dbg !86215
  %i.ag = icmp eq i64 %i.ae, %i.af, !dbg !86216
  br i1 %i.ag, label %bb.k, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86216

bb.k:                                             ; preds = %bb.j
  switch i64 %i.ae, label %default.unreachable [
    i64 0, label %bb.l
    i64 1, label %.split32
    i64 2, label %.split31
  ], !dbg !86216

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ah = icmp samesign ult i64 %i.ac, 69, !dbg !86216
  tail call void @llvm.assume(i1 %i.ah), !dbg !86216
  %i.ai = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_4ExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aa) #46, !dbg !86217, !noalias !86187, !inline_history !86146
  br i1 %i.ai, label %.split33, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86218

.split32:                                         ; preds = %bb.k
  %2 = icmp eq i64 %i.ac, 69, !dbg !86216
  tail call void @llvm.assume(i1 %2), !dbg !86216
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !86219
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !86219
  %.val.i.i = load i8, ptr %i.aj, align 8, !dbg !86220, !range !2193, !noundef !1417
  %.val1.i.i = load i8, ptr %i.ak, align 8, !dbg !86220, !range !2193, !noundef !1417
  %i.al = icmp eq i8 %.val.i.i, %.val1.i.i, !dbg !86221
  br i1 %i.al, label %bb.m, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86211

.split31:                                         ; preds = %bb.k
  %3 = icmp eq i64 %i.ac, 70, !dbg !86216
  tail call void @llvm.assume(i1 %3), !dbg !86216
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !86222
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !86222
  %i.ao = tail call noundef zeroext i1 @_RNvXs2_NtCsaRr8xKSRVhT_9sqlparser3astNtB5_5IdentNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.an), !dbg !86223, !inline_history !86156
  br i1 %i.ao, label %bb.m, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86211

.split33:                                         ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 360, !dbg !86224
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !86224
  %i.ar = tail call fastcc noundef zeroext i1 @_RNvXs7N_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_4ExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ap) #46, !dbg !86225, !noalias !86189, !inline_history !86146
  br i1 %i.ar, label %bb.m, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86211

_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast12HiveIOFormatENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.h
  br i1 %i.ad, label %bb.m, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86211

bb.m:                                             ; preds = %.split33, %.split32, %.split31, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast12HiveIOFormatENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 712, !dbg !86226
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 712, !dbg !86226
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86190), !dbg !86226
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86191), !dbg !86226
  %i.au = load i64, ptr %i.as, align 8, !dbg !86227, !range !1570, !alias.scope !86190, !noundef !1417
  %.not.i7 = icmp eq i64 %i.au, -9223372036854775808, !dbg !86227 ; 2 uses
  %i.av = load i64, ptr %i.at, align 8, !dbg !86227, !range !1570, !alias.scope !86191, !noundef !1417
  %i.aw = icmp eq i64 %i.av, -9223372036854775808, !dbg !86227 ; 2 uses
  %brmerge.i8 = or i1 %.not.i7, %i.aw, !dbg !86228
  %.mux.i9 = and i1 %.not.i7, %i.aw, !dbg !86228
  br i1 %brmerge.i8, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.n, !dbg !86228

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 728, !dbg !86229
  %.val2.i10 = load i64, ptr %i.ax, align 8, !dbg !86229, !alias.scope !86190, !noundef !1417 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 728, !dbg !86229
  %.val4.i11 = load i64, ptr %i.ay, align 8, !dbg !86229, !alias.scope !86191, !noundef !1417
  %i.az = icmp eq i64 %.val2.i10, %.val4.i11, !dbg !86230
  br i1 %i.az, label %bb.o, label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86230

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 720, !dbg !86229
  %.val3.i13 = load ptr, ptr %i.ba, align 8, !dbg !86229, !alias.scope !86191, !nonnull !1417, !noundef !1417
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 720, !dbg !86229
  %.val.i14 = load ptr, ptr %i.bb, align 8, !dbg !86229, !alias.scope !86190, !nonnull !1417, !noundef !1417
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i14, ptr nonnull readonly %.val3.i13, i64 %.val2.i10), !dbg !86231, !noalias !86192
  %i.bc = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !86231
  br label %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !86232

_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.l, %bb.j, %bb.i, %bb.g, %bb.d, %bb.b, %bb.e, %bb.o, %bb.n, %bb.m, %.split33, %.split32, %.split31, %.split29, %.split27, %.split, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast13HiveRowFormatENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast9SqlOptionEENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast12HiveIOFormatENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit
  %.sroa.0.0 = phi i1 [ false, %.split33 ], [ false, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast12HiveIOFormatENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast9SqlOptionEENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast13HiveRowFormatENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ %i.bc, %bb.o ], [ false, %.split ], [ false, %.split27 ], [ false, %bb.d ], [ false, %.split29 ], [ false, %bb.g ], [ false, %.split31 ], [ false, %.split32 ], [ %.mux.i9, %bb.m ], [ false, %bb.n ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.l ], !dbg !86226
  ret i1 %.sroa.0.0, !dbg !86233
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvXspF_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_21CreateServerStatementNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !86234 !guid !86272 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !86291
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBJ_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !86292
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200, !dbg !86293
  %i.i = load i8, ptr %i.h, align 8, !dbg !86293, !range !1460, !noundef !1417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !86294
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !86294 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86273), !dbg !86294
  call void @llvm.experimental.noalias.scope.decl(metadata !86274), !dbg !86294
  %i.k = load i64, ptr %i.j, align 8, !dbg !86295, !range !1570, !alias.scope !86274, !noundef !1417
  %.not.i = icmp eq i64 %i.k, -9223372036854775808, !dbg !86295
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !86296

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !86297, !noalias !86275
  call void @llvm.experimental.noalias.scope.decl(metadata !86276), !dbg !86298
  call void @llvm.experimental.noalias.scope.decl(metadata !86277), !dbg !86298
  invoke void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.j)
          to label %.noexc unwind label %bb.d, !dbg !86299, !noalias !86273

.noexc:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !86300
  %.val.i.i = load i32, ptr %i.l, align 8, !dbg !86300, !range !2072, !alias.scope !86278, !noundef !1417
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !86301
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !86302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.m, i64 32, i1 false), !dbg !86303, !alias.scope !86279, !noalias !86273
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !86302
  store i32 %.val.i.i, ptr %i.o, align 8, !dbg !86302, !alias.scope !86276, !noalias !86275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !86304, !noalias !86274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !86305, !noalias !86275
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, !dbg !86306

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.f, align 8, !dbg !86307, !alias.scope !86273
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, !dbg !86307

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentEECshquuC4dCYVj_10polars_sql.exit11, %bb.g, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.p, %bb.d ], [ %.pn.pn, %bb.g ], [ %.pn.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentEECshquuC4dCYVj_10polars_sql.exit11 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.g) #41
          to label %bb.p unwind label %bb.o, !dbg !86308

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentEECshquuC4dCYVj_10polars_sql.exit

_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !86309
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !86309 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86280), !dbg !86309
  call void @llvm.experimental.noalias.scope.decl(metadata !86281), !dbg !86309
  %i.r = load i64, ptr %i.q, align 8, !dbg !86310, !range !1570, !alias.scope !86281, !noundef !1417
  %.not.i4 = icmp eq i64 %i.r, -9223372036854775808, !dbg !86310
  br i1 %.not.i4, label %bb.f, label %bb.e, !dbg !86311

bb.e:                                             ; preds = %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !86312, !noalias !86282
  call void @llvm.experimental.noalias.scope.decl(metadata !86283), !dbg !86313
  call void @llvm.experimental.noalias.scope.decl(metadata !86284), !dbg !86313
  invoke void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.q)
          to label %.noexc6 unwind label %bb.h, !dbg !86314, !noalias !86280

.noexc6:                                          ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !86315
  %.val.i.i5 = load i32, ptr %i.s, align 8, !dbg !86315, !range !2072, !alias.scope !86285, !noundef !1417
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !86316
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !86317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.t, i64 32, i1 false), !dbg !86318, !alias.scope !86286, !noalias !86280
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !86317
  store i32 %.val.i.i5, ptr %i.v, align 8, !dbg !86317, !alias.scope !86283, !noalias !86282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !86319, !noalias !86281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !86320, !noalias !86282
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit7, !dbg !86321

bb.f:                                             ; preds = %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit
  store i64 -9223372036854775808, ptr %i.e, align 8, !dbg !86322, !alias.scope !86280
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit7, !dbg !86322

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentEECshquuC4dCYVj_10polars_sql.exit11: ; preds = %bb.i, %bb.j, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %.pn, %bb.j ], [ %.pn, %bb.i ] ; 2 uses
  %i.w = load i64, ptr %i.f, align 8, !dbg !86323, !range !1570, !alias.scope !86287, !noundef !1417
  %i.x = icmp eq i64 %i.w, -9223372036854775808, !dbg !86323
  br i1 %i.x, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentEECshquuC4dCYVj_10polars_sql.exit, label %bb.g, !dbg !86323

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentEECshquuC4dCYVj_10polars_sql.exit11
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.o, !dbg !86324

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentEECshquuC4dCYVj_10polars_sql.exit11

_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit7: ; preds = %bb.f, %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !86325
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !86325
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast14ObjectNamePartENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBJ_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z)
          to label %_RNvXs4P_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit unwind label %bb.k, !dbg !86326

bb.i:                                             ; preds = %bb.n, %bb.k
  %.pn = phi { ptr, i32 } [ %i.af, %bb.n ], [ %i.ac, %bb.k ] ; 2 uses
  %i.aa = load i64, ptr %i.e, align 8, !dbg !86327, !range !1570, !alias.scope !86288, !noundef !1417
  %i.ab = icmp eq i64 %i.aa, -9223372036854775808, !dbg !86327
  br i1 %i.ab, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentEECshquuC4dCYVj_10polars_sql.exit11, label %bb.j, !dbg !86327

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentEECshquuC4dCYVj_10polars_sql.exit11 unwind label %bb.o, !dbg !86328

bb.k:                                             ; preds = %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit7
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RNvXs4P_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !86329
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !86329 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86289), !dbg !86329
  call void @llvm.experimental.noalias.scope.decl(metadata !86290), !dbg !86329
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !86330, !range !1570, !alias.scope !86290, !noundef !1417
  %.not.i12 = icmp eq i64 %i.ae, -9223372036854775808, !dbg !86330
  br i1 %.not.i12, label %bb.m, label %bb.l, !dbg !86331

bb.l:                                             ; preds = %_RNvXs4P_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast18CreateServerOptionENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBJ_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast18CreateServerOptionEENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit unwind label %bb.n, !dbg !86332

bb.m:                                             ; preds = %_RNvXs4P_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_10ObjectNameNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  store i64 -9223372036854775808, ptr %i.c, align 8, !dbg !86333, !alias.scope !86289
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast18CreateServerOptionEENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, !dbg !86333

bb.n:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.d) #41
          to label %bb.i unwind label %bb.o, !dbg !86308

_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast18CreateServerOptionEENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !86334
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !86334
  store i8 %i.i, ptr %i.ag, align 8, !dbg !86334
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !86334
end_hunk_2
