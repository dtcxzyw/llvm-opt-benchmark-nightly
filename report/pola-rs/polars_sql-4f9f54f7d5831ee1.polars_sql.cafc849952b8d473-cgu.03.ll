Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.03?download=true
inline.NumInlined: 7161
inline.NumDeleted: 2417
begin_hunk_0_@_RNvXs19_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB6_10CreateRoleNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq:bb.a
bb.p:                                             ; preds = %.split66, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit51
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1024, !dbg !36090
  %.val17 = load i64, ptr %i.as, align 8, !dbg !36090, !noundef !757 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1024, !dbg !36090
  %.val19 = load i64, ptr %i.at, align 8, !dbg !36090, !noundef !757
  %i.au = icmp eq i64 %.val17, %.val19, !dbg !36091
  br i1 %i.au, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !36091

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1016, !dbg !36090
  %.val18 = load ptr, ptr %i.av, align 8, !dbg !36090, !nonnull !757, !noundef !757
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1016, !dbg !36090
  %.val16 = load ptr, ptr %i.aw, align 8, !dbg !36090, !nonnull !757, !noundef !757
  %i.ax = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val16, ptr noundef nonnull %.val18, i64 noundef %.val17), !dbg !36092
  br i1 %i.ax, label %bb.q, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !36090

bb.q:                                             ; preds = %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1048, !dbg !36093
  %.val13 = load i64, ptr %i.ay, align 8, !dbg !36093, !noundef !757 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1048, !dbg !36093
  %.val15 = load i64, ptr %i.az, align 8, !dbg !36093, !noundef !757
  %i.ba = icmp eq i64 %.val13, %.val15, !dbg !36094
  br i1 %i.ba, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit54, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !36094

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit54: ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 1040, !dbg !36093
  %.val14 = load ptr, ptr %i.bb, align 8, !dbg !36093, !nonnull !757, !noundef !757
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1040, !dbg !36093
  %.val12 = load ptr, ptr %i.bc, align 8, !dbg !36093, !nonnull !757, !noundef !757
  %i.bd = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val12, ptr noundef nonnull %.val14, i64 noundef %.val13), !dbg !36095
  br i1 %i.bd, label %bb.r, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !36093

bb.r:                                             ; preds = %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit54
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1072, !dbg !36096
  %.val9 = load i64, ptr %i.be, align 8, !dbg !36096, !noundef !757 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1072, !dbg !36096
  %.val11 = load i64, ptr %i.bf, align 8, !dbg !36096, !noundef !757
  %i.bg = icmp eq i64 %.val9, %.val11, !dbg !36097
  br i1 %i.bg, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit56, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !36097

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit56: ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1064, !dbg !36096
  %.val10 = load ptr, ptr %i.bh, align 8, !dbg !36096, !nonnull !757, !noundef !757
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1064, !dbg !36096
  %.val8 = load ptr, ptr %i.bi, align 8, !dbg !36096, !nonnull !757, !noundef !757
  %i.bj = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val8, ptr noundef nonnull %.val10, i64 noundef %.val9), !dbg !36098
  br i1 %i.bj, label %bb.s, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !36096

bb.s:                                             ; preds = %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit56
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1096, !dbg !36099
  %.val5 = load i64, ptr %i.bk, align 8, !dbg !36099, !noundef !757 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 1096, !dbg !36099
  %.val7 = load i64, ptr %i.bl, align 8, !dbg !36099, !noundef !757
  %i.bm = icmp eq i64 %.val5, %.val7, !dbg !36100
  br i1 %i.bm, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit58, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !36100

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit58: ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 1088, !dbg !36099
  %.val6 = load ptr, ptr %i.bn, align 8, !dbg !36099, !nonnull !757, !noundef !757
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1088, !dbg !36099
  %.val4 = load ptr, ptr %i.bo, align 8, !dbg !36099, !nonnull !757, !noundef !757
  %i.bp = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val4, ptr noundef nonnull %.val6, i64 noundef %.val5), !dbg !36101
  br i1 %i.bp, label %bb.t, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !36099

bb.t:                                             ; preds = %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit58
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1120, !dbg !36102
  %.val1 = load i64, ptr %i.bq, align 8, !dbg !36102, !noundef !757 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 1120, !dbg !36102
  %.val3 = load i64, ptr %i.br, align 8, !dbg !36102, !noundef !757
  %i.bs = icmp eq i64 %.val1, %.val3, !dbg !36103
  br i1 %i.bs, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit60, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !36103

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit60: ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 1112, !dbg !36102
  %.val2 = load ptr, ptr %i.bt, align 8, !dbg !36102, !nonnull !757, !noundef !757
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1112, !dbg !36102
  %.val = load ptr, ptr %i.bu, align 8, !dbg !36102, !nonnull !757, !noundef !757
  %i.bv = tail call noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val, ptr noundef nonnull %.val2, i64 noundef %.val1), !dbg !36104
  br i1 %i.bv, label %bb.u, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !36102

bb.u:                                             ; preds = %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit60
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1128, !dbg !36105
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 1128, !dbg !36105
  %i.by = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx) #29, !dbg !36105
  br label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.thread, !dbg !36105

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit.thread: ; preds = %.split, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.g, %bb.b, %.split66, %.split64, %_RNvXsaD_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_8PasswordNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, %bb.a, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %bb.c, %bb.d, %bb.e, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast8PasswordENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %_RNvXsaD_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_8PasswordNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.thread, %bb.i, %bb.j, %bb.k, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit51, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit54, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit56, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit58, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit60, %bb.u
  %.sroa.0.0 = phi i1 [ %i.by, %bb.u ], [ false, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit60 ], [ false, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit58 ], [ false, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit56 ], [ false, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit54 ], [ false, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast5IdentENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit51 ], [ false, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %_RNvXsaD_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_8PasswordNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit.thread ], [ false, %_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsaRr8xKSRVhT_9sqlparser3ast8PasswordENtNtB7_3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec10partial_eqINtB4_3VecNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit ], [ false, %bb.a ], [ false, %bb.s ], [ false, %bb.b ], [ false, %_RNvXsaD_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_8PasswordNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit ], [ false, %bb.g ], [ false, %.split64 ], [ false, %bb.m ], [ false, %.split66 ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.t ], [ false, %.split ], !dbg !36105
  ret i1 %.sroa.0.0, !dbg !36106
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvXs1N_NtNtCsaRr8xKSRVhT_9sqlparser3ast9data_typeNtB6_16ArrayElemTypeDefNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !36107 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !dbg !36136, !range !768, !noundef !757 ; 5 uses
  %i.b = icmp ne i64 %i.a, 4, !dbg !36136
  tail call void @llvm.assume(i1 %i.b), !dbg !36136
  %i.c = add nsw i64 %i.a, -2, !dbg !36136
  %.inv = icmp samesign ult i64 %i.a, 2, !dbg !36136
  %i.d = select i1 %.inv, i64 2, i64 %i.c, !dbg !36136
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.f
    i64 3, label %bb.h
  ], !dbg !36136

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !36136

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8, !dbg !36136
  br label %bb.j, !dbg !36136

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !36137
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36125), !dbg !36138
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeE13new_uninit_inBM_(), !dbg !36139, !noalias !36125, !inline_history !36126 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !dbg !36140, !alias.scope !36125, !nonnull !757, !noundef !757
  invoke fastcc void @_RNvXNtNtCscgRAwXFJnXP_4core5clone6uninitNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeNtB2_8CopySpec9clone_oneCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noundef %i.f)
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit unwind label %bb.e, !dbg !36141, !noalias !36125, !inline_history !36126

common.resume:                                    ; preds = %bb.i, %bb.g, %bb.e
  %.sink = phi ptr [ %i.o, %bb.i ], [ %i.k, %bb.g ], [ %i.f, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.m, %bb.g ], [ %i.h, %bb.e ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 56, i64 noundef 8) #31, !dbg !36142, !noalias !757
  resume { ptr, i32 } %common.resume.op, !dbg !36143

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume, !dbg !36144

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36145
  store ptr %i.f, ptr %i.i, align 8, !dbg !36145
  store i64 3, ptr %0, align 8, !dbg !36145
  br label %bb.j, !dbg !36146

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !36147
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36134), !dbg !36148
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeE13new_uninit_inBM_(), !dbg !36149, !noalias !36134, !inline_history !36126 ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !dbg !36150, !alias.scope !36134, !nonnull !757, !noundef !757
  invoke fastcc void @_RNvXNtNtCscgRAwXFJnXP_4core5clone6uninitNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeNtB2_8CopySpec9clone_oneCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.l, ptr noundef %i.k)
          to label %bb.k unwind label %bb.g, !dbg !36151, !noalias !36134, !inline_history !36126

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume, !dbg !36152

bb.h:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !36153
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36135), !dbg !36154
  %i.o = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeE13new_uninit_inBM_(), !dbg !36155, !noalias !36135, !inline_history !36126 ; 3 uses
  %i.p = load ptr, ptr %i.n, align 8, !dbg !36156, !alias.scope !36135, !nonnull !757, !noundef !757
  invoke fastcc void @_RNvXNtNtCscgRAwXFJnXP_4core5clone6uninitNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeNtB2_8CopySpec9clone_oneCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, ptr noundef %i.o)
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit5 unwind label %bb.i, !dbg !36157, !noalias !36135, !inline_history !36126

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %common.resume, !dbg !36158

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit5: ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36159
  store ptr %i.o, ptr %i.r, align 8, !dbg !36159
  store i64 5, ptr %0, align 8, !dbg !36159
  br label %bb.j, !dbg !36146

bb.j:                                             ; preds = %bb.k, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit5, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast9data_type8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, %bb.c
  ret void, !dbg !36160

bb.k:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !36161
  %.val1 = load i64, ptr %i.s, align 8, !dbg !36161
  %i.t = trunc nuw i64 %i.a to i1, !dbg !36162
  %spec.select.i = select i1 %i.t, i64 %.val1, i64 undef, !dbg !36162
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !36163
  store ptr %i.k, ptr %i.u, align 8, !dbg !36163
  store i64 %i.a, ptr %0, align 8, !dbg !36163
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36163
  store i64 %spec.select.i, ptr %i.v, align 8, !dbg !36163
  br label %bb.j, !dbg !36146
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1P_NtNtCsaRr8xKSRVhT_9sqlparser3ast9data_typeNtB6_16ArrayElemTypeDefNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !dbg !36164 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !36212, !range !768, !noundef !757 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4, !dbg !36212
  tail call void @llvm.assume(i1 %i.b), !dbg !36212
  %i.c = add nsw i64 %i.a, -2, !dbg !36212
  %.inv = icmp samesign ult i64 %i.a, 2, !dbg !36212
  %i.d = select i1 %.inv, i64 2, i64 %i.c, !dbg !36212 ; 2 uses
  %i.e = load i64, ptr %1, align 8, !dbg !36213, !range !768, !noundef !757 ; 4 uses
  %i.f = icmp ne i64 %i.e, 4, !dbg !36213
  tail call void @llvm.assume(i1 %i.f), !dbg !36213
  %i.g = add nsw i64 %i.e, -2, !dbg !36213
  %.inv2 = icmp samesign ult i64 %i.e, 2, !dbg !36213 ; 2 uses
  %i.h = select i1 %.inv2, i64 2, i64 %i.g, !dbg !36213
  %i.i = icmp eq i64 %i.d, %i.h, !dbg !36214
  br i1 %i.i, label %bb.b, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionyENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !36214

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.d
    i64 2, label %2
    i64 3, label %bb.i
    i64 0, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionyENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit
  ], !dbg !36214

_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionyENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.b, %2, %bb.a, %bb.i, %bb.d
  %.sroa.0.0 = phi i1 [ %i.n, %bb.d ], [ false, %bb.a ], [ true, %bb.b ], [ %i.ad, %bb.i ], [ %i.y, %bb.h ], [ true, %2 ], [ %spec.select.i.i, %bb.g ], [ false, %bb.e ], !dbg !36215
  ret i1 %.sroa.0.0, !dbg !36216

bb.c:                                             ; preds = %bb.b
  unreachable, !dbg !36212

2:                                                ; preds = %bb.b
  br i1 %.inv2, label %bb.e, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionyENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !36214

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36217
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !36217
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36197), !dbg !36218
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36198), !dbg !36218
  %i.l = load ptr, ptr %i.j, align 8, !dbg !36219, !alias.scope !36197, !noalias !36199, !nonnull !757, !noundef !757
  %i.m = load ptr, ptr %i.k, align 8, !dbg !36220, !alias.scope !36198, !noalias !36200, !nonnull !757, !noundef !757
  %i.n = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCsaRr8xKSRVhT_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m) #29, !dbg !36221, !noalias !36201, !inline_history !377
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionyENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !36222

bb.e:                                             ; preds = %2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !36223
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !36223
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36202), !dbg !36224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36203), !dbg !36224
  %i.q = load ptr, ptr %i.o, align 8, !dbg !36225, !alias.scope !36202, !noalias !36204, !nonnull !757, !noundef !757
  %i.r = load ptr, ptr %i.p, align 8, !dbg !36226, !alias.scope !36203, !noalias !36205, !nonnull !757, !noundef !757
  %i.s = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCsaRr8xKSRVhT_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r) #29, !dbg !36227, !noalias !36206, !inline_history !377
  br i1 %i.s, label %bb.f, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionyENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !36228

bb.f:                                             ; preds = %bb.e
  %i.t = trunc nuw i64 %i.a to i1, !dbg !36229
  %i.u = trunc nuw i64 %i.e to i1, !dbg !36229    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h, !dbg !36229

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !36230
  %.val3.i = load i64, ptr %i.v, align 8, !dbg !36230
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36230
  %.val1.i = load i64, ptr %i.w, align 8, !dbg !36230
  %i.x = icmp eq i64 %.val1.i, %.val3.i
  %spec.select.i.i = select i1 %i.u, i1 %i.x, i1 false, !dbg !36229
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionyENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !36229

bb.h:                                             ; preds = %bb.f
  %i.y = xor i1 %i.u, true, !dbg !36229
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionyENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !36229

bb.i:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36231
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !36231
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36207), !dbg !36232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36208), !dbg !36232
  %i.ab = load ptr, ptr %i.z, align 8, !dbg !36233, !alias.scope !36207, !noalias !36209, !nonnull !757, !noundef !757
  %i.ac = load ptr, ptr %i.aa, align 8, !dbg !36234, !alias.scope !36208, !noalias !36210, !nonnull !757, !noundef !757
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCsaRr8xKSRVhT_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ac) #29, !dbg !36235, !noalias !36211, !inline_history !377
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRINtNtB9_6option6OptionyENtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !36222
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvXs1Q_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_7SetExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(3408) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(3408) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !36236 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [3408 x i8], align 8              ; 4 uses
  %i.e = alloca [1400 x i8], align 8              ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = load i8, ptr %1, align 8, !dbg !36362, !range !908, !noundef !757
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !36363 ; 9 uses
  switch i8 %i.h, label %default.unreachable7 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
    i8 8, label %bb.m
  ], !dbg !36362

default.unreachable7:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36337), !dbg !36364
  %i.j = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query6SelectE13new_uninit_inBM_(), !dbg !36365, !noalias !36337, !inline_history !36240 ; 3 uses
  %i.k = load ptr, ptr %i.i, align 8, !dbg !36366, !alias.scope !36337, !nonnull !757, !noundef !757
  invoke fastcc void @_RNvXNtNtCscgRAwXFJnXP_4core5clone6uninitNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query6SelectNtB2_8CopySpec9clone_oneCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2104) %i.k, ptr noundef %i.j)
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query6SelectENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit unwind label %bb.c, !dbg !36367, !noalias !36337, !inline_history !36240

common.resume:                                    ; preds = %bb.x, %bb.v, %bb.g, %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.p, %bb.e ], [ %i.t, %bb.g ], [ %eh.lpad-body.i, %bb.v ], [ %i.aq, %bb.x ]
  resume { ptr, i32 } %common.resume.op, !dbg !36363

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 2104, i64 noundef 8) #31, !dbg !36368, !noalias !36337
  br label %common.resume, !dbg !36369

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query6SelectENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36370
  store ptr %i.j, ptr %i.m, align 8, !dbg !36370
  store i8 0, ptr %0, align 8, !dbg !36370
  br label %bb.w, !dbg !36371

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36338), !dbg !36372
  %i.n = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query5QueryE13new_uninit_inBM_(), !dbg !36373, !noalias !36338, !inline_history !1094 ; 3 uses
  %i.o = load ptr, ptr %i.i, align 8, !dbg !36374, !alias.scope !36338, !nonnull !757, !noundef !757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !36375, !noalias !36339
  invoke fastcc void @_RNvXs1w_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_5QueryNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.o) #29
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query5QueryENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit unwind label %bb.e, !dbg !36376, !noalias !36338, !inline_history !384

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 1400, i64 noundef 8) #31, !dbg !36377, !noalias !36338, !inline_history !1094
  br label %common.resume, !dbg !36378

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query5QueryENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.e, i64 1400, i1 false), !dbg !36379, !noalias !36339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !36380, !noalias !36339
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36381
  store ptr %i.n, ptr %i.q, align 8, !dbg !36381
  store i8 1, ptr %0, align 8, !dbg !36381
  br label %bb.w, !dbg !36371

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !36382
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36340), !dbg !36382
  %i.r = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query7SetExprE13new_uninit_inBM_(), !dbg !36383, !noalias !36340, !inline_history !1095 ; 4 uses
  %i.s = load ptr, ptr %i.i, align 8, !dbg !36384, !alias.scope !36340, !nonnull !757, !noundef !757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !36385, !noalias !36341
  invoke fastcc void @_RNvXs1Q_NtNtCsaRr8xKSRVhT_9sqlparser3ast5queryNtB6_7SetExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(3408) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(3408) %i.s) #29
          to label %bb.y unwind label %bb.g, !dbg !36386, !noalias !36340, !inline_history !36279

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef 3408, i64 noundef 8) #31, !dbg !36387, !noalias !36340, !inline_history !1095
  br label %common.resume, !dbg !36388

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !36389
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36342), !dbg !36389
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36343), !dbg !36389
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !36390
  %i.v = load i8, ptr %i.u, align 8, !dbg !36390, !range !861, !alias.scope !36343, !noalias !36342, !noundef !757
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 33, !dbg !36391
  %i.x = load i8, ptr %i.w, align 1, !dbg !36391, !range !861, !alias.scope !36343, !noalias !36342, !noundef !757
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensIBw_NtBI_4ExprEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBK_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !dbg !36392
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !36393
  store i8 %i.v, ptr %i.y, align 8, !dbg !36393, !alias.scope !36342, !noalias !36343
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 25, !dbg !36393
  store i8 %i.x, ptr %i.z, align 1, !dbg !36393, !alias.scope !36342, !noalias !36343
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !36394
  store i8 3, ptr %0, align 8, !dbg !36394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !36395
  br label %bb.w, !dbg !36371

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36396
  tail call fastcc void @_RNvXsdw_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_9StatementNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(3400) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(3400) %i.i) #29, !dbg !36397
  store i8 4, ptr %0, align 8, !dbg !36396
  br label %bb.w, !dbg !36371

bb.j:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36398
  tail call fastcc void @_RNvXsdw_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_9StatementNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(3400) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(3400) %i.i) #29, !dbg !36399
  store i8 5, ptr %0, align 8, !dbg !36398
  br label %bb.w, !dbg !36371

bb.k:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36400
  tail call fastcc void @_RNvXsdw_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_9StatementNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(3400) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(3400) %i.i) #29, !dbg !36401
  store i8 6, ptr %0, align 8, !dbg !36400
  br label %bb.w, !dbg !36371

bb.l:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36402
  tail call fastcc void @_RNvXsdw_NtCsaRr8xKSRVhT_9sqlparser3astNtB6_9StatementNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(3400) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(3400) %i.i) #29, !dbg !36403
  store i8 7, ptr %0, align 8, !dbg !36402
  br label %bb.w, !dbg !36371

bb.m:                                             ; preds = %bb.a
  %.val1 = load ptr, ptr %i.i, align 8, !dbg !36404 ; 4 uses
  %i.af = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query5TableE13new_uninit_inBM_(), !dbg !36405 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36345), !dbg !36406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !36407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36346), !dbg !36408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !36409, !noalias !36347
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36349), !dbg !36409
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36350), !dbg !36409
  %i.ag = load i64, ptr %.val1, align 8, !dbg !36410, !range !852, !alias.scope !36351, !noalias !36352, !noundef !757
  %.not.i.i.i.i = icmp eq i64 %i.ag, -9223372036854775808, !dbg !36410
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !dbg !36411

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1)
          to label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit.i.i.i unwind label %bb.u, !dbg !36412

bb.o:                                             ; preds = %bb.m
  store i64 -9223372036854775808, ptr %i.b, align 8, !dbg !36413, !alias.scope !36349, !noalias !36353
  br label %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit.i.i.i, !dbg !36413

_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !36414, !noalias !36347
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1, i64 24, !dbg !36414 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36354), !dbg !36414
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36355), !dbg !36414
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !36415, !range !852, !alias.scope !36356, !noalias !36357, !noundef !757
  %.not.i1.i.i.i = icmp eq i64 %i.ai, -9223372036854775808, !dbg !36415
  br i1 %.not.i1.i.i.i, label %bb.q, label %bb.p, !dbg !36416

bb.p:                                             ; preds = %_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtB7_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit.i.i.i
end_hunk_0
