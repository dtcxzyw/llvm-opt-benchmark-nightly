Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.05?download=true
inline.NumInlined: 265
inline.NumDeleted: 156
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util4lookNtB5_11LookMatcher22is_word_unicode_negate:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9021, !noalias !8958
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %.sroa.7.0.i.i.i64142023), !dbg !9021
  %i.bf = load i64, ptr %i.c, align 8, !dbg !9021, !range !3006, !noalias !8958, !noundef !1137
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !9022
  br i1 %i.bg, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread79, label %bb.w, !dbg !9022

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread79: ; preds = %.thread21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9023, !noalias !8958
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit, !dbg !9020

bb.w:                                             ; preds = %.thread21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9024
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !9024, !noalias !8958, !nonnull !1137, !noundef !1137 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9024
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !9024, !noalias !8958, !noundef !1137
    #dbg_value(ptr %i.bi, !3482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8815)
    #dbg_value(ptr %i.bi, !3651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8817)
    #dbg_value(i64 %i.bk, !3482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8815)
    #dbg_value(i64 %i.bk, !3651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8817)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9025, !noalias !8958
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk, !dbg !9026
  store ptr %i.bi, ptr %i.b, align 8, !dbg !9027, !noalias !8958
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9027
  store ptr %i.bl, ptr %i.bm, align 8, !dbg !9027, !noalias !8958
    #dbg_value(ptr %i.b, !3451, !DIExpression(), !8821)
  %i.bn = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #26, !dbg !9028 ; 2 uses
  %i.bo = extractvalue { i32, i32 } %i.bn, 0, !dbg !9028
    #dbg_value(i32 %i.bo, !3569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8822)
    #dbg_value(i32 poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8822)
  %i.bp = trunc i32 %i.bo to i1, !dbg !9029
  br i1 %i.bp, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66, label %bb.x, !dbg !9029, !prof !3663

bb.x:                                             ; preds = %bb.w
    #dbg_value(i32 -1, !3578, !DIExpression(), !8824)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #21, !dbg !9030
  unreachable, !dbg !9030

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66: ; preds = %bb.w
  %i.bq = extractvalue { i32, i32 } %i.bn, 1, !dbg !9028 ; 2 uses
    #dbg_value(i32 %i.bq, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8822)
    #dbg_value(i32 %i.bq, !3570, !DIExpression(), !8825)
    #dbg_value(i32 %i.bq, !3584, !DIExpression(), !8827)
    #dbg_value(i32 %i.bq, !3588, !DIExpression(), !8829)
    #dbg_value(i32 %i.bq, !3593, !DIExpression(), !8831)
  %i.br = icmp ult i32 %i.bq, 1114112, !dbg !9031
  tail call void @llvm.assume(i1 %i.br), !dbg !9031
    #dbg_value(i32 %i.bq, !3578, !DIExpression(), !8824)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9032, !noalias !8958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9023, !noalias !8958
  br label %bb.z, !dbg !9020

bb.y:                                             ; preds = %._crit_edge114
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #21, !dbg !9033, !noalias !8956
  unreachable, !dbg !9033

bb.z:                                             ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread75
  %.sroa.7.sroa.0.0.i15.i78 = phi i32 [ %.sroa.419.4.insert.ext.i.i79, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread75 ], [ %i.bq, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66 ]
    #dbg_value(i32 %.sroa.7.sroa.0.0.i15.i78, !3494, !DIExpression(), !8832)
    #dbg_value(i32 %.sroa.7.sroa.0.0.i15.i78, !3598, !DIExpression(), !8834)
  %i.bs = tail call noundef i8 @_RNvCs3roNzt6HBWW_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i15.i78), !dbg !9034 ; 2 uses
    #dbg_value(i8 %i.bs, !3600, !DIExpression(), !8836)
    #dbg_value(ptr @56, !3616, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8836)
    #dbg_value(i64 120, !3616, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8836)
    #dbg_declare(ptr %i.a, !3618, !DIExpression(), !8837)
  %i.bt = icmp eq i8 %i.bs, 2, !dbg !9035
  br i1 %i.bt, label %bb.aa, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9036, !prof !3008

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #21, !dbg !9037
  unreachable, !dbg !9037

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.z
  %i.bu = trunc nuw i8 %i.bs to i1, !dbg !9038
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit, !dbg !9039

bb.ab:                                            ; preds = %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit
  %i.bv = sub nuw nsw i64 %1, %2, !dbg !9040      ; 4 uses
    #dbg_value(i64 %i.bv, !8944, !DIExpression(), !8959)
    #dbg_value(i64 %i.bv, !8932, !DIExpression(), !8950)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %2, !dbg !9041 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8960), !dbg !9042
    #dbg_value(ptr %i.bw, !3477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8841)
    #dbg_value(i64 %i.bv, !3477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8841)
    #dbg_declare(ptr poison, !3561, !DIExpression(), !8844)
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !9043, !alias.scope !8960, !noundef !1137 ; 8 uses
    #dbg_value(i8 %i.bx, !3572, !DIExpression(), !8846)
  %i.by = icmp sgt i8 %i.bx, -1, !dbg !9044
  br i1 %i.by, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread, label %bb.ac, !dbg !9044

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread: ; preds = %bb.ab
    #dbg_value(i64 1, !3478, !DIExpression(), !8847)
  %i.bz = icmp eq i64 %1, %2, !dbg !9045
  br i1 %i.bz, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92, !dbg !9046

bb.ac:                                            ; preds = %bb.ab
  %i.ca = icmp samesign ult i8 %i.bx, -64, !dbg !9047
  br i1 %i.ca, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %bb.ad, !dbg !9047

bb.ad:                                            ; preds = %bb.ac
  %i.cb = icmp samesign ult i8 %i.bx, -32, !dbg !9048
  br i1 %i.cb, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, label %bb.ae, !dbg !9048

bb.ae:                                            ; preds = %bb.ad
  %i.cc = icmp samesign ult i8 %i.bx, -16, !dbg !9049
  br i1 %i.cc, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40, !dbg !9049

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40: ; preds = %bb.ae
  %i.cd = icmp samesign ugt i8 %i.bx, -9, !dbg !9050
    #dbg_value(i64 4, !3478, !DIExpression(), !8847)
  %i.ce = icmp samesign ult i64 %i.bv, 4
  %or.cond50 = select i1 %i.cd, i1 true, i1 %i.ce, !dbg !9051
  br i1 %or.cond50, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %.thread33, !dbg !9051

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread: ; preds = %bb.ad, %bb.ae
  %.sroa.7.0.i.i41.ph = phi i64 [ 2, %bb.ad ], [ 3, %bb.ae ] ; 2 uses
    #dbg_value(i64 %.sroa.7.0.i.i41.ph, !3478, !DIExpression(), !8847)
  %i.cf = icmp samesign ugt i64 %.sroa.7.0.i.i41.ph, %i.bv, !dbg !9045
  br i1 %i.cf, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %.thread33, !dbg !9045

.thread33:                                        ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40
  %.sroa.7.0.i.i41263235 = phi i64 [ %.sroa.7.0.i.i41.ph, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread ], [ 4, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9052, !noalias !8960
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %.sroa.7.0.i.i41263235), !dbg !9052
  %i.cg = load i64, ptr %i.g, align 8, !dbg !9052, !range !3006, !noalias !8960, !noundef !1137
  %i.ch = trunc nuw i64 %i.cg to i1, !dbg !9053
  br i1 %i.ch, label %.split84.thread, label %bb.af, !dbg !9053

.split84.thread:                                  ; preds = %.thread33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9054, !noalias !8960
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, !dbg !9046

bb.af:                                            ; preds = %.thread33
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !9055
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !9055, !noalias !8960, !nonnull !1137, !noundef !1137 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !9055
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !9055, !noalias !8960, !noundef !1137
    #dbg_value(ptr %i.cj, !3482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8848)
    #dbg_value(ptr %i.cj, !3651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8850)
    #dbg_value(i64 %i.cl, !3482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8848)
    #dbg_value(i64 %i.cl, !3651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8850)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9056, !noalias !8960
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl, !dbg !9057
  store ptr %i.cj, ptr %i.f, align 8, !dbg !9058, !noalias !8960
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !9058
  store ptr %i.cm, ptr %i.cn, align 8, !dbg !9058, !noalias !8960
    #dbg_value(ptr %i.f, !3451, !DIExpression(), !8854)
  %i.co = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #26, !dbg !9059
  %i.cp = extractvalue { i32, i32 } %i.co, 0, !dbg !9059
    #dbg_value(i32 %i.cp, !3569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8855)
    #dbg_value(i32 poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8855)
  %i.cq = trunc i32 %i.cp to i1, !dbg !9060
  br i1 %i.cq, label %.split84, label %bb.ag, !dbg !9060, !prof !3663

bb.ag:                                            ; preds = %bb.af
    #dbg_value(i32 -1, !3578, !DIExpression(), !8857)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #21, !dbg !9061
  unreachable, !dbg !9061

.split84:                                         ; preds = %bb.af
    #dbg_value(i32 poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8855)
    #dbg_value(i32 poison, !3570, !DIExpression(), !8858)
    #dbg_value(i32 poison, !3584, !DIExpression(), !8860)
    #dbg_value(i32 poison, !3588, !DIExpression(), !8862)
    #dbg_value(i32 poison, !3593, !DIExpression(), !8864)
    #dbg_value(i32 poison, !3578, !DIExpression(), !8857)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9062, !noalias !8960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9054, !noalias !8960
    #dbg_value(ptr %0, !3496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8866)
    #dbg_value(i64 %1, !3496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8866)
    #dbg_value(i64 %2, !3497, !DIExpression(), !8866)
    #dbg_value(ptr %i.bw, !3477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8868)
    #dbg_value(i64 %i.bv, !3477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8868)
    #dbg_declare(ptr poison, !3561, !DIExpression(), !8871)
    #dbg_value(i8 %i.bx, !3572, !DIExpression(), !8873)
  %i.cr = icmp samesign ult i8 %i.bx, -32, !dbg !9063
  br i1 %i.cr, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, label %bb.ah, !dbg !9063

_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, %.thread42, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit
  %.sroa.013.0 = phi i1 [ %.sroa.06.0, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit ], [ %i.dn, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83 ], [ %.sroa.06.0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96 ], [ %.sroa.06.0, %.thread42 ], [ %.sroa.06.0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread ], !dbg !8951
    #dbg_value(i8 poison, !8909, !DIExpression(), !8961)
  %i.cs = xor i1 %.sroa.013.0, true, !dbg !9038
  %i.ct = zext i1 %i.cs to i8, !dbg !9064
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, !dbg !9065

bb.ah:                                            ; preds = %.split84
  %i.cu = icmp samesign ult i8 %i.bx, -16, !dbg !9066
  br i1 %i.cu, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, label %.thread42, !dbg !9066

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread: ; preds = %.split84, %bb.ah
  %.sroa.7.0.i.i.i.ph = phi i64 [ 2, %.split84 ], [ 3, %bb.ah ] ; 2 uses
    #dbg_value(i64 %.sroa.7.0.i.i.i.ph, !3478, !DIExpression(), !8874)
  %i.cv = icmp samesign ugt i64 %.sroa.7.0.i.i.i.ph, %i.bv, !dbg !9067
  br i1 %i.cv, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread45, !dbg !9067

.thread42:                                        ; preds = %bb.ah
    #dbg_value(i64 4, !3478, !DIExpression(), !8874)
  %i.cw = icmp samesign ult i64 %i.bv, 4, !dbg !9067
  br i1 %i.cw, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread45, !dbg !9067

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread
  %.sroa.419.4.insert.ext.i.i = zext nneg i8 %i.bx to i32, !dbg !9068
  br label %bb.ak, !dbg !9069

.thread45:                                        ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, %.thread42
  %.sroa.7.0.i.i.i384447 = phi i64 [ 4, %.thread42 ], [ %.sroa.7.0.i.i.i.ph, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9070, !noalias !8962
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %.sroa.7.0.i.i.i384447), !dbg !9070
  %i.cx = load i64, ptr %i.e, align 8, !dbg !9070, !range !3006, !noalias !8962, !noundef !1137
  %i.cy = trunc nuw i64 %i.cx to i1, !dbg !9071
  br i1 %i.cy, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96, label %bb.ai, !dbg !9071

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96: ; preds = %.thread45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9072, !noalias !8962
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9069

bb.ai:                                            ; preds = %.thread45
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !9073
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !9073, !noalias !8962, !nonnull !1137, !noundef !1137 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !9073
  %i.dc = load i64, ptr %i.db, align 8, !dbg !9073, !noalias !8962, !noundef !1137
    #dbg_value(ptr %i.da, !3482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8879)
    #dbg_value(ptr %i.da, !3651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8881)
    #dbg_value(i64 %i.dc, !3482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8879)
    #dbg_value(i64 %i.dc, !3651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8881)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9074, !noalias !8962
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc, !dbg !9075
  store ptr %i.da, ptr %i.d, align 8, !dbg !9076, !noalias !8962
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !9076
  store ptr %i.dd, ptr %i.de, align 8, !dbg !9076, !noalias !8962
    #dbg_value(ptr %i.d, !3451, !DIExpression(), !8885)
  %i.df = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #26, !dbg !9077 ; 2 uses
  %i.dg = extractvalue { i32, i32 } %i.df, 0, !dbg !9077
    #dbg_value(i32 %i.dg, !3569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8886)
    #dbg_value(i32 poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8886)
  %i.dh = trunc i32 %i.dg to i1, !dbg !9078
  br i1 %i.dh, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i, label %bb.aj, !dbg !9078, !prof !3663

bb.aj:                                            ; preds = %bb.ai
    #dbg_value(i32 -1, !3578, !DIExpression(), !8888)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #21, !dbg !9079
  unreachable, !dbg !9079

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i: ; preds = %bb.ai
  %i.di = extractvalue { i32, i32 } %i.df, 1, !dbg !9077 ; 2 uses
    #dbg_value(i32 %i.di, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8886)
    #dbg_value(i32 %i.di, !3570, !DIExpression(), !8889)
    #dbg_value(i32 %i.di, !3584, !DIExpression(), !8891)
    #dbg_value(i32 %i.di, !3588, !DIExpression(), !8893)
    #dbg_value(i32 %i.di, !3593, !DIExpression(), !8895)
  %i.dj = icmp ult i32 %i.di, 1114112, !dbg !9080
  tail call void @llvm.assume(i1 %i.dj), !dbg !9080
    #dbg_value(i32 %i.di, !3578, !DIExpression(), !8888)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9081, !noalias !8962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9072, !noalias !8962
  br label %bb.ak, !dbg !9069

bb.ak:                                            ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92
  %.sroa.7.sroa.0.0.i.i95 = phi i32 [ %.sroa.419.4.insert.ext.i.i, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92 ], [ %i.di, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i ]
    #dbg_value(i32 %.sroa.7.sroa.0.0.i.i95, !3498, !DIExpression(), !8896)
    #dbg_value(i32 %.sroa.7.sroa.0.0.i.i95, !3633, !DIExpression(), !8898)
  %i.dk = tail call noundef i8 @_RNvCs3roNzt6HBWW_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i.i95), !dbg !9082 ; 2 uses
    #dbg_value(i8 %i.dk, !3600, !DIExpression(), !8900)
    #dbg_value(ptr @56, !3616, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8900)
    #dbg_value(i64 120, !3616, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8900)
    #dbg_declare(ptr %i.a, !3618, !DIExpression(), !8901)
  %i.dl = icmp eq i8 %i.dk, 2, !dbg !9083
  br i1 %i.dl, label %bb.al, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83, !dbg !9084, !prof !3008

bb.al:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #21, !dbg !9085
  unreachable, !dbg !9085

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83: ; preds = %bb.ak
  %i.dm = trunc nuw i8 %i.dk to i1, !dbg !9038
  %i.dn = xor i1 %.sroa.06.0, %i.dm, !dbg !9038
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9086

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, %bb.ac, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40, %.split84.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i, %bb.h, %.split.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit
  %.sroa.0.0 = phi i8 [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread ], [ %i.ct, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit ], [ 0, %bb.ac ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread ], [ 0, %.split.thread ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i ], [ 0, %.split84.thread ], [ 0, %bb.h ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40 ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread ], !dbg !8913
  ret i8 %.sroa.0.0, !dbg !9065
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util4lookNtB5_11LookMatcher24is_word_end_half_unicode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !9090 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !9160, !DIExpression(), !9167)
    #dbg_value(ptr %0, !9161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9167)
    #dbg_value(ptr %0, !9168, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9172)
    #dbg_value(ptr %0, !9173, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9178)
    #dbg_value(ptr %0, !9179, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9184)
    #dbg_value(i64 %1, !9161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9167)
    #dbg_value(i64 %1, !9168, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9172)
    #dbg_value(i64 %1, !9173, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9178)
    #dbg_value(i64 %1, !9179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9184)
    #dbg_value(i64 %2, !9162, !DIExpression(), !9167)
    #dbg_value(i64 %2, !9169, !DIExpression(), !9172)
    #dbg_value(i64 %2, !9174, !DIExpression(), !9178)
    #dbg_value(i64 %2, !9180, !DIExpression(), !9184)
  %i.f = icmp ult i64 %2, %1, !dbg !9188
  br i1 %i.f, label %bb.b, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9188

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw nsw i64 %1, %2, !dbg !9189       ; 4 uses
    #dbg_value(i64 %i.g, !9175, !DIExpression(), !9185)
    #dbg_value(i64 %i.g, !9181, !DIExpression(), !9184)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %2, !dbg !9190 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9186), !dbg !9191
    #dbg_value(ptr %i.h, !3477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9098)
    #dbg_value(i64 %i.g, !3477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9098)
    #dbg_declare(ptr poison, !3561, !DIExpression(), !9101)
  %i.i = load i8, ptr %i.h, align 1, !dbg !9192, !alias.scope !9186, !noundef !1137 ; 8 uses
    #dbg_value(i8 %i.i, !3572, !DIExpression(), !9103)
  %i.j = icmp sgt i8 %i.i, -1, !dbg !9193
  br i1 %i.j, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread, label %bb.c, !dbg !9193

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread: ; preds = %bb.b
    #dbg_value(i64 1, !3478, !DIExpression(), !9104)
  %i.k = icmp eq i64 %1, %2, !dbg !9194
  br i1 %i.k, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread37, !dbg !9195

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ult i8 %i.i, -64, !dbg !9196
  br i1 %i.l, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.d, !dbg !9196

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ult i8 %i.i, -32, !dbg !9197
  br i1 %i.m, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, label %bb.e, !dbg !9197

bb.e:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i8 %i.i, -16, !dbg !9198
  br i1 %i.n, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i, !dbg !9198

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i: ; preds = %bb.e
  %i.o = icmp samesign ugt i8 %i.i, -9, !dbg !9199
    #dbg_value(i64 4, !3478, !DIExpression(), !9104)
  %i.p = icmp samesign ult i64 %i.g, 4
  %or.cond24 = select i1 %i.o, i1 true, i1 %i.p, !dbg !9200
  br i1 %or.cond24, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread9, !dbg !9200

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread: ; preds = %bb.d, %bb.e
  %.sroa.7.0.i.i.ph = phi i64 [ 2, %bb.d ], [ 3, %bb.e ] ; 2 uses
    #dbg_value(i64 %.sroa.7.0.i.i.ph, !3478, !DIExpression(), !9104)
  %i.q = icmp samesign ugt i64 %.sroa.7.0.i.i.ph, %i.g, !dbg !9194
  br i1 %i.q, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread9, !dbg !9194

.thread9:                                         ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i
  %.sroa.7.0.i.i3811 = phi i64 [ %.sroa.7.0.i.i.ph, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread ], [ 4, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9201, !noalias !9186
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %.sroa.7.0.i.i3811), !dbg !9201
  %i.r = load i64, ptr %i.e, align 8, !dbg !9201, !range !3006, !noalias !9186, !noundef !1137
  %i.s = trunc nuw i64 %i.r to i1, !dbg !9202
  br i1 %i.s, label %.split.thread, label %bb.f, !dbg !9202

.split.thread:                                    ; preds = %.thread9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9203, !noalias !9186
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9195

bb.f:                                             ; preds = %.thread9
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !9204
  %i.u = load ptr, ptr %i.t, align 8, !dbg !9204, !noalias !9186, !nonnull !1137, !noundef !1137 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !9204
  %i.w = load i64, ptr %i.v, align 8, !dbg !9204, !noalias !9186, !noundef !1137
    #dbg_value(ptr %i.u, !3482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9105)
    #dbg_value(ptr %i.u, !3651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9107)
    #dbg_value(i64 %i.w, !3482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9105)
    #dbg_value(i64 %i.w, !3651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9205, !noalias !9186
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w, !dbg !9206
  store ptr %i.u, ptr %i.d, align 8, !dbg !9207, !noalias !9186
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !9207
  store ptr %i.x, ptr %i.y, align 8, !dbg !9207, !noalias !9186
    #dbg_value(ptr %i.d, !3451, !DIExpression(), !9111)
  %i.z = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #26, !dbg !9208
  %i.aa = extractvalue { i32, i32 } %i.z, 0, !dbg !9208
    #dbg_value(i32 %i.aa, !3569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9112)
    #dbg_value(i32 poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9112)
  %i.ab = trunc i32 %i.aa to i1, !dbg !9209
  br i1 %i.ab, label %.split, label %bb.g, !dbg !9209, !prof !3663

bb.g:                                             ; preds = %bb.f
    #dbg_value(i32 -1, !3578, !DIExpression(), !9114)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #21, !dbg !9210
  unreachable, !dbg !9210

.split:                                           ; preds = %bb.f
    #dbg_value(i32 poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9112)
    #dbg_value(i32 poison, !3570, !DIExpression(), !9115)
    #dbg_value(i32 poison, !3584, !DIExpression(), !9117)
    #dbg_value(i32 poison, !3588, !DIExpression(), !9119)
    #dbg_value(i32 poison, !3593, !DIExpression(), !9121)
    #dbg_value(i32 poison, !3578, !DIExpression(), !9114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9211, !noalias !9186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9203, !noalias !9186
    #dbg_value(ptr %0, !3496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9123)
    #dbg_value(i64 %1, !3496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9123)
    #dbg_value(i64 %2, !3497, !DIExpression(), !9123)
    #dbg_value(ptr %i.h, !3477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9125)
    #dbg_value(i64 %i.g, !3477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9125)
    #dbg_declare(ptr poison, !3561, !DIExpression(), !9128)
    #dbg_value(i8 %i.i, !3572, !DIExpression(), !9130)
  %i.ac = icmp samesign ult i8 %i.i, -32, !dbg !9212
  br i1 %i.ac, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, label %bb.h, !dbg !9212

bb.h:                                             ; preds = %.split
  %i.ad = icmp samesign ult i8 %i.i, -16, !dbg !9213
  br i1 %i.ad, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, label %.thread18, !dbg !9213

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread: ; preds = %.split, %bb.h
  %.sroa.7.0.i.i.i.ph = phi i64 [ 2, %.split ], [ 3, %bb.h ] ; 2 uses
    #dbg_value(i64 %.sroa.7.0.i.i.i.ph, !3478, !DIExpression(), !9131)
  %i.ae = icmp samesign ugt i64 %.sroa.7.0.i.i.i.ph, %i.g, !dbg !9214
  br i1 %i.ae, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread21, !dbg !9214

.thread18:                                        ; preds = %bb.h
    #dbg_value(i64 4, !3478, !DIExpression(), !9131)
  %i.af = icmp samesign ult i64 %i.g, 4, !dbg !9214
  br i1 %i.af, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread21, !dbg !9214

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread37: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread
  %.sroa.419.4.insert.ext.i.i = zext nneg i8 %i.i to i32, !dbg !9215
  br label %bb.k, !dbg !9216

.thread21:                                        ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, %.thread18
  %.sroa.7.0.i.i.i142023 = phi i64 [ 4, %.thread18 ], [ %.sroa.7.0.i.i.i.ph, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9217, !noalias !9187
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %.sroa.7.0.i.i.i142023), !dbg !9217
  %i.ag = load i64, ptr %i.c, align 8, !dbg !9217, !range !3006, !noalias !9187, !noundef !1137
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !9218
  br i1 %i.ah, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread41, label %bb.i, !dbg !9218

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread41: ; preds = %.thread21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9219, !noalias !9187
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9216

bb.i:                                             ; preds = %.thread21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9220
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !9220, !noalias !9187, !nonnull !1137, !noundef !1137 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9220
  %i.al = load i64, ptr %i.ak, align 8, !dbg !9220, !noalias !9187, !noundef !1137
    #dbg_value(ptr %i.aj, !3482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9136)
    #dbg_value(ptr %i.aj, !3651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9138)
    #dbg_value(i64 %i.al, !3482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9136)
    #dbg_value(i64 %i.al, !3651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9138)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9221, !noalias !9187
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al, !dbg !9222
  store ptr %i.aj, ptr %i.b, align 8, !dbg !9223, !noalias !9187
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9223
  store ptr %i.am, ptr %i.an, align 8, !dbg !9223, !noalias !9187
    #dbg_value(ptr %i.b, !3451, !DIExpression(), !9142)
  %i.ao = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #26, !dbg !9224 ; 2 uses
  %i.ap = extractvalue { i32, i32 } %i.ao, 0, !dbg !9224
    #dbg_value(i32 %i.ap, !3569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9143)
    #dbg_value(i32 poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9143)
  %i.aq = trunc i32 %i.ap to i1, !dbg !9225
  br i1 %i.aq, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i, label %bb.j, !dbg !9225, !prof !3663

bb.j:                                             ; preds = %bb.i
    #dbg_value(i32 -1, !3578, !DIExpression(), !9145)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #21, !dbg !9226
  unreachable, !dbg !9226

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i: ; preds = %bb.i
  %i.ar = extractvalue { i32, i32 } %i.ao, 1, !dbg !9224 ; 2 uses
    #dbg_value(i32 %i.ar, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9143)
    #dbg_value(i32 %i.ar, !3570, !DIExpression(), !9146)
    #dbg_value(i32 %i.ar, !3584, !DIExpression(), !9148)
    #dbg_value(i32 %i.ar, !3588, !DIExpression(), !9150)
    #dbg_value(i32 %i.ar, !3593, !DIExpression(), !9152)
  %i.as = icmp ult i32 %i.ar, 1114112, !dbg !9227
  tail call void @llvm.assume(i1 %i.as), !dbg !9227
    #dbg_value(i32 %i.ar, !3578, !DIExpression(), !9145)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9228, !noalias !9187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9219, !noalias !9187
  br label %bb.k, !dbg !9216

bb.k:                                             ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread37
  %.sroa.7.sroa.0.0.i.i40 = phi i32 [ %.sroa.419.4.insert.ext.i.i, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread37 ], [ %i.ar, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i ]
    #dbg_value(i32 %.sroa.7.sroa.0.0.i.i40, !3498, !DIExpression(), !9153)
    #dbg_value(i32 %.sroa.7.sroa.0.0.i.i40, !3633, !DIExpression(), !9155)
  %i.at = tail call noundef i8 @_RNvCs3roNzt6HBWW_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i.i40), !dbg !9229 ; 2 uses
    #dbg_value(i8 %i.at, !3600, !DIExpression(), !9157)
    #dbg_value(ptr @56, !3616, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9157)
    #dbg_value(i64 120, !3616, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9157)
    #dbg_declare(ptr %i.a, !3618, !DIExpression(), !9158)
  %i.au = icmp eq i8 %i.at, 2, !dbg !9230
  br i1 %i.au, label %bb.l, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9231, !prof !3008

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #21, !dbg !9232
  unreachable, !dbg !9232

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.k
  %i.av = xor i8 %i.at, 1, !dbg !9233
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9234

_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, %.thread18, %bb.c, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i, %.split.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread41, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit, %bb.a
  %.sroa.0.0 = phi i8 [ 1, %bb.a ], [ 1, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread ], [ %i.av, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit ], [ 1, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread41 ], [ 0, %bb.c ], [ 0, %.split.thread ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i ], [ 1, %.thread18 ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread ], !dbg !9167
  ret i8 %.sroa.0.0, !dbg !9235
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util4lookNtB5_11LookMatcher26is_word_start_half_unicode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !9239 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !9342, !DIExpression(), !9349)
    #dbg_value(ptr %0, !9343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9349)
    #dbg_value(ptr %0, !9350, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9354)
    #dbg_value(ptr %0, !9355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9359)
    #dbg_value(ptr %0, !9360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9365)
    #dbg_value(i64 %1, !9343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9349)
    #dbg_value(i64 %1, !9350, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9354)
    #dbg_value(i64 %1, !9355, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9359)
    #dbg_value(i64 %1, !9360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9365)
    #dbg_value(i64 %2, !9344, !DIExpression(), !9349)
    #dbg_value(i64 %2, !9351, !DIExpression(), !9354)
    #dbg_value(i64 %2, !9356, !DIExpression(), !9359)
    #dbg_value(i64 %2, !9361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9365)
    #dbg_value(i64 %2, !9362, !DIExpression(), !9365)
    #dbg_value(i64 0, !9361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9365)
  %.not = icmp eq i64 %2, 0, !dbg !9373
  br i1 %.not, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit, label %bb.b, !dbg !9373

bb.b:                                             ; preds = %bb.a
  %.not16 = icmp ugt i64 %2, %1, !dbg !9374
  br i1 %.not16, label %bb.n, label %bb.c, !dbg !9374, !prof !3008

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9366), !dbg !9375
    #dbg_value(ptr %0, !3484, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9246)
    #dbg_value(ptr %0, !3528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9248)
    #dbg_value(ptr %0, !3537, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9250)
    #dbg_value(ptr %0, !3544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9252)
    #dbg_value(i64 %2, !3484, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9246)
    #dbg_value(i64 %2, !3528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9248)
    #dbg_value(i64 %2, !3537, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9250)
    #dbg_value(i64 %2, !3544, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9252)
    #dbg_value(i64 4, !3553, !DIExpression(), !9254)
    #dbg_value(i64 %2, !3554, !DIExpression(), !9254)
    #dbg_value(i64 %2, !3485, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9255)
    #dbg_value(i64 %2, !3533, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9248)
    #dbg_value(i64 %2, !3541, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9250)
    #dbg_value(i64 %2, !3550, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9252)
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %2, i64 4), !dbg !9376 ; 5 uses
    #dbg_value(i64 %i.f, !3486, !DIExpression(), !9256)
  %i.g = add nsw i64 %2, -1, !dbg !9377
  %umin = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.g), !dbg !9377 ; 4 uses
  %.sroa.09.0.i57 = add nsw i64 %2, -1, !dbg !9378 ; 2 uses
  %i.h = icmp ugt i64 %.sroa.09.0.i57, %i.f, !dbg !9379
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !dbg !9379

bb.d:                                             ; preds = %bb.e
  %.sroa.09.0.i = add nsw i64 %.sroa.09.0.i58, -1, !dbg !9378 ; 2 uses
    #dbg_value(i64 %.sroa.09.0.i, !3550, !DIExpression(), !9252)
    #dbg_value(i64 %.sroa.09.0.i, !3541, !DIExpression(), !9250)
    #dbg_value(i64 %.sroa.09.0.i, !3533, !DIExpression(), !9248)
    #dbg_value(i64 %.sroa.09.0.i, !3485, !DIExpression(), !9255)
  %i.i = icmp ugt i64 %.sroa.09.0.i, %i.f, !dbg !9379
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !dbg !9379

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.09.0.i58 = phi i64 [ %.sroa.09.0.i, %bb.d ], [ %.sroa.09.0.i57, %bb.c ] ; 5 uses
  %i.j = icmp ult i64 %.sroa.09.0.i58, %2, !dbg !9380
  br i1 %i.j, label %bb.e, label %bb.f, !dbg !9380

._crit_edge:                                      ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.09.0.i.lcssa = phi i64 [ %umin, %bb.c ], [ %umin, %bb.d ], [ %.sroa.09.0.i58, %bb.e ], !dbg !9378 ; 5 uses
  %i.k = icmp ugt i64 %.sroa.09.0.i.lcssa, %2, !dbg !9381
  br i1 %i.k, label %bb.m, label %bb.g, !dbg !9381, !prof !3008

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i58, !dbg !9380
  %i.m = load i8, ptr %i.l, align 1, !dbg !9380, !alias.scope !9366, !noundef !1137
    #dbg_value(i8 %i.m, !3557, !DIExpression(), !9258)
  %.not.i = icmp slt i8 %i.m, -64, !dbg !9382
  br i1 %.not.i, label %bb.d, label %._crit_edge, !dbg !9383

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.0.i58, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #21, !dbg !9380, !noalias !9366
  unreachable, !dbg !9380

bb.g:                                             ; preds = %._crit_edge
  %i.n = sub nuw nsw i64 %2, %.sroa.09.0.i.lcssa, !dbg !9384 ; 2 uses
    #dbg_value(i64 %i.n, !3542, !DIExpression(), !9259)
    #dbg_value(i64 %i.n, !3551, !DIExpression(), !9252)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.lcssa, !dbg !9385 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9367), !dbg !9386
    #dbg_value(ptr %i.o, !3477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9263)
    #dbg_value(i64 %i.n, !3477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9263)
    #dbg_declare(ptr poison, !3561, !DIExpression(), !9266)
  %i.p = load i8, ptr %i.o, align 1, !dbg !9387, !alias.scope !9367, !noundef !1137 ; 5 uses
    #dbg_value(i8 %i.p, !3572, !DIExpression(), !9268)
  %i.q = icmp sgt i8 %i.p, -1, !dbg !9388
  br i1 %i.q, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread, label %bb.h, !dbg !9388

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread: ; preds = %bb.g
    #dbg_value(i64 1, !3478, !DIExpression(), !9269)
  %i.r = icmp eq i64 %2, %.sroa.09.0.i.lcssa, !dbg !9389
  br i1 %i.r, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit, label %bb.o, !dbg !9390

bb.h:                                             ; preds = %bb.g
  %i.s = icmp samesign ult i8 %i.p, -64, !dbg !9391
  br i1 %i.s, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit, label %bb.i, !dbg !9391

bb.i:                                             ; preds = %bb.h
  %i.t = icmp samesign ult i8 %i.p, -32, !dbg !9392
  br i1 %i.t, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, label %bb.j, !dbg !9392

bb.j:                                             ; preds = %bb.i
  %i.u = icmp samesign ult i8 %i.p, -16, !dbg !9393
  br i1 %i.u, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i, !dbg !9393

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i: ; preds = %bb.j
  %i.v = icmp samesign ugt i8 %i.p, -9, !dbg !9394
    #dbg_value(i64 4, !3478, !DIExpression(), !9269)
  %i.w = icmp ult i64 %i.n, 4
end_hunk_0
