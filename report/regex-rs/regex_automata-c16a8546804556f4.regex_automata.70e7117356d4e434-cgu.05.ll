Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.05?download=true
inline.NumInlined: 265
inline.NumDeleted: 156
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util4lookNtB5_11LookMatcher22is_word_unicode_negate:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8999, !noalias !8892
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %.sroa.7.0.i.i.i64142023), !dbg !8999
  %i.bf = load i64, ptr %i.c, align 8, !dbg !8999, !range !3006, !noalias !8892, !noundef !1137
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !9000
  br i1 %i.bg, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread79, label %bb.w, !dbg !9000

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread79: ; preds = %.thread21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9001, !noalias !8892
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit, !dbg !8998

bb.w:                                             ; preds = %.thread21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9002
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !9002, !noalias !8892, !nonnull !1137, !noundef !1137 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9002
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !9002, !noalias !8892, !noundef !1137
    #dbg_value(ptr %i.bi, !3482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8895)
    #dbg_value(ptr %i.bi, !3651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8896)
    #dbg_value(i64 %i.bk, !3482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8895)
    #dbg_value(i64 %i.bk, !3651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8896)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9003, !noalias !8892
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk, !dbg !9004
  store ptr %i.bi, ptr %i.b, align 8, !dbg !9005, !noalias !8892
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9005
  store ptr %i.bl, ptr %i.bm, align 8, !dbg !9005, !noalias !8892
    #dbg_value(ptr %i.b, !3451, !DIExpression(), !8897)
  %i.bn = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #26, !dbg !9006 ; 2 uses
  %i.bo = extractvalue { i32, i32 } %i.bn, 0, !dbg !9006
    #dbg_value(i32 %i.bo, !3569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8898)
    #dbg_value(i32 poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8898)
  %i.bp = trunc i32 %i.bo to i1, !dbg !9007
  br i1 %i.bp, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66, label %bb.x, !dbg !9007, !prof !3663

bb.x:                                             ; preds = %bb.w
    #dbg_value(i32 -1, !3578, !DIExpression(), !8899)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #21, !dbg !9008
  unreachable, !dbg !9008

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66: ; preds = %bb.w
  %i.bq = extractvalue { i32, i32 } %i.bn, 1, !dbg !9006 ; 2 uses
    #dbg_value(i32 %i.bq, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8898)
    #dbg_value(i32 %i.bq, !3570, !DIExpression(), !8900)
    #dbg_value(i32 %i.bq, !3584, !DIExpression(), !8901)
    #dbg_value(i32 %i.bq, !3588, !DIExpression(), !8902)
    #dbg_value(i32 %i.bq, !3593, !DIExpression(), !8903)
  %i.br = icmp ult i32 %i.bq, 1114112, !dbg !9009
  tail call void @llvm.assume(i1 %i.br), !dbg !9009
    #dbg_value(i32 %i.bq, !3578, !DIExpression(), !8899)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9010, !noalias !8892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9001, !noalias !8892
  br label %bb.z, !dbg !8998

bb.y:                                             ; preds = %._crit_edge114
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #21, !dbg !9011, !noalias !8886
  unreachable, !dbg !9011

bb.z:                                             ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread75
  %.sroa.7.sroa.0.0.i15.i78 = phi i32 [ %.sroa.419.4.insert.ext.i.i79, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread75 ], [ %i.bq, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66 ]
    #dbg_value(i32 %.sroa.7.sroa.0.0.i15.i78, !3494, !DIExpression(), !8904)
    #dbg_value(i32 %.sroa.7.sroa.0.0.i15.i78, !3598, !DIExpression(), !8905)
  %i.bs = tail call noundef i8 @_RNvCs3roNzt6HBWW_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i15.i78), !dbg !9012 ; 2 uses
    #dbg_value(i8 %i.bs, !3600, !DIExpression(), !8906)
    #dbg_value(ptr @56, !3616, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8906)
    #dbg_value(i64 120, !3616, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8906)
    #dbg_declare(ptr %i.a, !3618, !DIExpression(), !8907)
  %i.bt = icmp eq i8 %i.bs, 2, !dbg !9013
  br i1 %i.bt, label %bb.aa, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9014, !prof !3008

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #21, !dbg !9015
  unreachable, !dbg !9015

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.z
  %i.bu = trunc nuw i8 %i.bs to i1, !dbg !9016
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit, !dbg !9017

bb.ab:                                            ; preds = %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit
  %i.bv = sub nuw nsw i64 %1, %2, !dbg !9018      ; 4 uses
    #dbg_value(i64 %i.bv, !8844, !DIExpression(), !8908)
    #dbg_value(i64 %i.bv, !8832, !DIExpression(), !8850)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %2, !dbg !9019 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8909), !dbg !9020
    #dbg_value(ptr %i.bw, !3477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8910)
    #dbg_value(i64 %i.bv, !3477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8910)
    #dbg_declare(ptr poison, !3561, !DIExpression(), !8911)
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !9021, !alias.scope !8909, !noundef !1137 ; 8 uses
    #dbg_value(i8 %i.bx, !3572, !DIExpression(), !8912)
  %i.by = icmp sgt i8 %i.bx, -1, !dbg !9022
  br i1 %i.by, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread, label %bb.ac, !dbg !9022

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread: ; preds = %bb.ab
    #dbg_value(i64 1, !3478, !DIExpression(), !8913)
  %i.bz = icmp eq i64 %1, %2, !dbg !9023
  br i1 %i.bz, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92, !dbg !9024

bb.ac:                                            ; preds = %bb.ab
  %i.ca = icmp samesign ult i8 %i.bx, -64, !dbg !9025
  br i1 %i.ca, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %bb.ad, !dbg !9025

bb.ad:                                            ; preds = %bb.ac
  %i.cb = icmp samesign ult i8 %i.bx, -32, !dbg !9026
  br i1 %i.cb, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, label %bb.ae, !dbg !9026

bb.ae:                                            ; preds = %bb.ad
  %i.cc = icmp samesign ult i8 %i.bx, -16, !dbg !9027
  br i1 %i.cc, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40, !dbg !9027

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40: ; preds = %bb.ae
  %i.cd = icmp samesign ugt i8 %i.bx, -9, !dbg !9028
    #dbg_value(i64 4, !3478, !DIExpression(), !8913)
  %i.ce = icmp samesign ult i64 %i.bv, 4
  %or.cond50 = select i1 %i.cd, i1 true, i1 %i.ce, !dbg !9029
  br i1 %or.cond50, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %.thread33, !dbg !9029

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread: ; preds = %bb.ad, %bb.ae
  %.sroa.7.0.i.i41.ph = phi i64 [ 2, %bb.ad ], [ 3, %bb.ae ] ; 2 uses
    #dbg_value(i64 %.sroa.7.0.i.i41.ph, !3478, !DIExpression(), !8913)
  %i.cf = icmp samesign ugt i64 %.sroa.7.0.i.i41.ph, %i.bv, !dbg !9023
  br i1 %i.cf, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %.thread33, !dbg !9023

.thread33:                                        ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40
  %.sroa.7.0.i.i41263235 = phi i64 [ %.sroa.7.0.i.i41.ph, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread ], [ 4, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9030, !noalias !8909
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %.sroa.7.0.i.i41263235), !dbg !9030
  %i.cg = load i64, ptr %i.g, align 8, !dbg !9030, !range !3006, !noalias !8909, !noundef !1137
  %i.ch = trunc nuw i64 %i.cg to i1, !dbg !9031
  br i1 %i.ch, label %.split84.thread, label %bb.af, !dbg !9031

.split84.thread:                                  ; preds = %.thread33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9032, !noalias !8909
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, !dbg !9024

bb.af:                                            ; preds = %.thread33
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !9033
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !9033, !noalias !8909, !nonnull !1137, !noundef !1137 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !9033
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !9033, !noalias !8909, !noundef !1137
    #dbg_value(ptr %i.cj, !3482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8914)
    #dbg_value(ptr %i.cj, !3651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8915)
    #dbg_value(i64 %i.cl, !3482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8914)
    #dbg_value(i64 %i.cl, !3651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8915)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9034, !noalias !8909
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl, !dbg !9035
  store ptr %i.cj, ptr %i.f, align 8, !dbg !9036, !noalias !8909
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !9036
  store ptr %i.cm, ptr %i.cn, align 8, !dbg !9036, !noalias !8909
    #dbg_value(ptr %i.f, !3451, !DIExpression(), !8916)
  %i.co = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #26, !dbg !9037
  %i.cp = extractvalue { i32, i32 } %i.co, 0, !dbg !9037
    #dbg_value(i32 %i.cp, !3569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8917)
    #dbg_value(i32 poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8917)
  %i.cq = trunc i32 %i.cp to i1, !dbg !9038
  br i1 %i.cq, label %.split84, label %bb.ag, !dbg !9038, !prof !3663

bb.ag:                                            ; preds = %bb.af
    #dbg_value(i32 -1, !3578, !DIExpression(), !8918)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #21, !dbg !9039
  unreachable, !dbg !9039

.split84:                                         ; preds = %bb.af
    #dbg_value(i32 poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8917)
    #dbg_value(i32 poison, !3570, !DIExpression(), !8919)
    #dbg_value(i32 poison, !3584, !DIExpression(), !8920)
    #dbg_value(i32 poison, !3588, !DIExpression(), !8921)
    #dbg_value(i32 poison, !3593, !DIExpression(), !8922)
    #dbg_value(i32 poison, !3578, !DIExpression(), !8918)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9040, !noalias !8909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9032, !noalias !8909
    #dbg_value(ptr %0, !3496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8923)
    #dbg_value(i64 %1, !3496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8923)
    #dbg_value(i64 %2, !3497, !DIExpression(), !8923)
    #dbg_value(ptr %i.bw, !3477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8924)
    #dbg_value(i64 %i.bv, !3477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8924)
    #dbg_declare(ptr poison, !3561, !DIExpression(), !8925)
    #dbg_value(i8 %i.bx, !3572, !DIExpression(), !8926)
  %i.cr = icmp samesign ult i8 %i.bx, -32, !dbg !9041
  br i1 %i.cr, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, label %bb.ah, !dbg !9041

_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, %.thread42, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit
  %.sroa.013.0 = phi i1 [ %.sroa.06.0, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit ], [ %i.dn, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83 ], [ %.sroa.06.0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96 ], [ %.sroa.06.0, %.thread42 ], [ %.sroa.06.0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread ], !dbg !8851
    #dbg_value(i8 poison, !8809, !DIExpression(), !8927)
  %i.cs = xor i1 %.sroa.013.0, true, !dbg !9016
  %i.ct = zext i1 %i.cs to i8, !dbg !9042
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, !dbg !9043

bb.ah:                                            ; preds = %.split84
  %i.cu = icmp samesign ult i8 %i.bx, -16, !dbg !9044
  br i1 %i.cu, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, label %.thread42, !dbg !9044

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread: ; preds = %.split84, %bb.ah
  %.sroa.7.0.i.i.i.ph = phi i64 [ 2, %.split84 ], [ 3, %bb.ah ] ; 2 uses
    #dbg_value(i64 %.sroa.7.0.i.i.i.ph, !3478, !DIExpression(), !8928)
  %i.cv = icmp samesign ugt i64 %.sroa.7.0.i.i.i.ph, %i.bv, !dbg !9045
  br i1 %i.cv, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread45, !dbg !9045

.thread42:                                        ; preds = %bb.ah
    #dbg_value(i64 4, !3478, !DIExpression(), !8928)
  %i.cw = icmp samesign ult i64 %i.bv, 4, !dbg !9045
  br i1 %i.cw, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread45, !dbg !9045

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread
  %.sroa.419.4.insert.ext.i.i = zext nneg i8 %i.bx to i32, !dbg !9046
  br label %bb.ak, !dbg !9047

.thread45:                                        ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, %.thread42
  %.sroa.7.0.i.i.i384447 = phi i64 [ 4, %.thread42 ], [ %.sroa.7.0.i.i.i.ph, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9048, !noalias !8929
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %.sroa.7.0.i.i.i384447), !dbg !9048
  %i.cx = load i64, ptr %i.e, align 8, !dbg !9048, !range !3006, !noalias !8929, !noundef !1137
  %i.cy = trunc nuw i64 %i.cx to i1, !dbg !9049
  br i1 %i.cy, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96, label %bb.ai, !dbg !9049

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96: ; preds = %.thread45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9050, !noalias !8929
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9047

bb.ai:                                            ; preds = %.thread45
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !9051
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !9051, !noalias !8929, !nonnull !1137, !noundef !1137 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !9051
  %i.dc = load i64, ptr %i.db, align 8, !dbg !9051, !noalias !8929, !noundef !1137
    #dbg_value(ptr %i.da, !3482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8930)
    #dbg_value(ptr %i.da, !3651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8931)
    #dbg_value(i64 %i.dc, !3482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8930)
    #dbg_value(i64 %i.dc, !3651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8931)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9052, !noalias !8929
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc, !dbg !9053
  store ptr %i.da, ptr %i.d, align 8, !dbg !9054, !noalias !8929
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !9054
  store ptr %i.dd, ptr %i.de, align 8, !dbg !9054, !noalias !8929
    #dbg_value(ptr %i.d, !3451, !DIExpression(), !8932)
  %i.df = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #26, !dbg !9055 ; 2 uses
  %i.dg = extractvalue { i32, i32 } %i.df, 0, !dbg !9055
    #dbg_value(i32 %i.dg, !3569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8933)
    #dbg_value(i32 poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8933)
  %i.dh = trunc i32 %i.dg to i1, !dbg !9056
  br i1 %i.dh, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i, label %bb.aj, !dbg !9056, !prof !3663

bb.aj:                                            ; preds = %bb.ai
    #dbg_value(i32 -1, !3578, !DIExpression(), !8934)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #21, !dbg !9057
  unreachable, !dbg !9057

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i: ; preds = %bb.ai
  %i.di = extractvalue { i32, i32 } %i.df, 1, !dbg !9055 ; 2 uses
    #dbg_value(i32 %i.di, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8933)
    #dbg_value(i32 %i.di, !3570, !DIExpression(), !8935)
    #dbg_value(i32 %i.di, !3584, !DIExpression(), !8936)
    #dbg_value(i32 %i.di, !3588, !DIExpression(), !8937)
    #dbg_value(i32 %i.di, !3593, !DIExpression(), !8938)
  %i.dj = icmp ult i32 %i.di, 1114112, !dbg !9058
  tail call void @llvm.assume(i1 %i.dj), !dbg !9058
    #dbg_value(i32 %i.di, !3578, !DIExpression(), !8934)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9059, !noalias !8929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9050, !noalias !8929
  br label %bb.ak, !dbg !9047

bb.ak:                                            ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92
  %.sroa.7.sroa.0.0.i.i95 = phi i32 [ %.sroa.419.4.insert.ext.i.i, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92 ], [ %i.di, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i ]
    #dbg_value(i32 %.sroa.7.sroa.0.0.i.i95, !3498, !DIExpression(), !8939)
    #dbg_value(i32 %.sroa.7.sroa.0.0.i.i95, !3633, !DIExpression(), !8940)
  %i.dk = tail call noundef i8 @_RNvCs3roNzt6HBWW_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i.i95), !dbg !9060 ; 2 uses
    #dbg_value(i8 %i.dk, !3600, !DIExpression(), !8941)
    #dbg_value(ptr @56, !3616, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8941)
    #dbg_value(i64 120, !3616, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8941)
    #dbg_declare(ptr %i.a, !3618, !DIExpression(), !8942)
  %i.dl = icmp eq i8 %i.dk, 2, !dbg !9061
  br i1 %i.dl, label %bb.al, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83, !dbg !9062, !prof !3008

bb.al:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #21, !dbg !9063
  unreachable, !dbg !9063

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83: ; preds = %bb.ak
  %i.dm = trunc nuw i8 %i.dk to i1, !dbg !9016
  %i.dn = xor i1 %.sroa.06.0, %i.dm, !dbg !9016
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9064

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, %bb.ac, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40, %.split84.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i, %bb.h, %.split.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit
  %.sroa.0.0 = phi i8 [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread ], [ %i.ct, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit ], [ 0, %bb.ac ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread ], [ 0, %.split.thread ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i ], [ 0, %.split84.thread ], [ 0, %bb.h ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40 ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread ], !dbg !8813
  ret i8 %.sroa.0.0, !dbg !9043
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util4lookNtB5_11LookMatcher24is_word_end_half_unicode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !9068 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !9107, !DIExpression(), !9114)
    #dbg_value(ptr %0, !9108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9114)
    #dbg_value(ptr %0, !9115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9119)
    #dbg_value(ptr %0, !9120, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9125)
    #dbg_value(ptr %0, !9126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9131)
    #dbg_value(i64 %1, !9108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9114)
    #dbg_value(i64 %1, !9115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9119)
    #dbg_value(i64 %1, !9120, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9125)
    #dbg_value(i64 %1, !9126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9131)
    #dbg_value(i64 %2, !9109, !DIExpression(), !9114)
    #dbg_value(i64 %2, !9116, !DIExpression(), !9119)
    #dbg_value(i64 %2, !9121, !DIExpression(), !9125)
    #dbg_value(i64 %2, !9127, !DIExpression(), !9131)
  %i.f = icmp ult i64 %2, %1, !dbg !9166
  br i1 %i.f, label %bb.b, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9166

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw nsw i64 %1, %2, !dbg !9167       ; 4 uses
    #dbg_value(i64 %i.g, !9122, !DIExpression(), !9132)
    #dbg_value(i64 %i.g, !9128, !DIExpression(), !9131)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %2, !dbg !9168 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9133), !dbg !9169
    #dbg_value(ptr %i.h, !3477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9134)
    #dbg_value(i64 %i.g, !3477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9134)
    #dbg_declare(ptr poison, !3561, !DIExpression(), !9135)
  %i.i = load i8, ptr %i.h, align 1, !dbg !9170, !alias.scope !9133, !noundef !1137 ; 8 uses
    #dbg_value(i8 %i.i, !3572, !DIExpression(), !9136)
  %i.j = icmp sgt i8 %i.i, -1, !dbg !9171
  br i1 %i.j, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread, label %bb.c, !dbg !9171

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread: ; preds = %bb.b
    #dbg_value(i64 1, !3478, !DIExpression(), !9137)
  %i.k = icmp eq i64 %1, %2, !dbg !9172
  br i1 %i.k, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread37, !dbg !9173

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ult i8 %i.i, -64, !dbg !9174
  br i1 %i.l, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %bb.d, !dbg !9174

bb.d:                                             ; preds = %bb.c
  %i.m = icmp samesign ult i8 %i.i, -32, !dbg !9175
  br i1 %i.m, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, label %bb.e, !dbg !9175

bb.e:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i8 %i.i, -16, !dbg !9176
  br i1 %i.n, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i, !dbg !9176

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i: ; preds = %bb.e
  %i.o = icmp samesign ugt i8 %i.i, -9, !dbg !9177
    #dbg_value(i64 4, !3478, !DIExpression(), !9137)
  %i.p = icmp samesign ult i64 %i.g, 4
  %or.cond24 = select i1 %i.o, i1 true, i1 %i.p, !dbg !9178
  br i1 %or.cond24, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread9, !dbg !9178

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread: ; preds = %bb.d, %bb.e
  %.sroa.7.0.i.i.ph = phi i64 [ 2, %bb.d ], [ 3, %bb.e ] ; 2 uses
    #dbg_value(i64 %.sroa.7.0.i.i.ph, !3478, !DIExpression(), !9137)
  %i.q = icmp samesign ugt i64 %.sroa.7.0.i.i.ph, %i.g, !dbg !9172
  br i1 %i.q, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread9, !dbg !9172

.thread9:                                         ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i
  %.sroa.7.0.i.i3811 = phi i64 [ %.sroa.7.0.i.i.ph, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread ], [ 4, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9179, !noalias !9133
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %.sroa.7.0.i.i3811), !dbg !9179
  %i.r = load i64, ptr %i.e, align 8, !dbg !9179, !range !3006, !noalias !9133, !noundef !1137
  %i.s = trunc nuw i64 %i.r to i1, !dbg !9180
  br i1 %i.s, label %.split.thread, label %bb.f, !dbg !9180

.split.thread:                                    ; preds = %.thread9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9181, !noalias !9133
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9173

bb.f:                                             ; preds = %.thread9
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !9182
  %i.u = load ptr, ptr %i.t, align 8, !dbg !9182, !noalias !9133, !nonnull !1137, !noundef !1137 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !9182
  %i.w = load i64, ptr %i.v, align 8, !dbg !9182, !noalias !9133, !noundef !1137
    #dbg_value(ptr %i.u, !3482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9138)
    #dbg_value(ptr %i.u, !3651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9139)
    #dbg_value(i64 %i.w, !3482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9138)
    #dbg_value(i64 %i.w, !3651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9139)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9183, !noalias !9133
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w, !dbg !9184
  store ptr %i.u, ptr %i.d, align 8, !dbg !9185, !noalias !9133
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !9185
  store ptr %i.x, ptr %i.y, align 8, !dbg !9185, !noalias !9133
    #dbg_value(ptr %i.d, !3451, !DIExpression(), !9140)
  %i.z = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #26, !dbg !9186
  %i.aa = extractvalue { i32, i32 } %i.z, 0, !dbg !9186
    #dbg_value(i32 %i.aa, !3569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9141)
    #dbg_value(i32 poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9141)
  %i.ab = trunc i32 %i.aa to i1, !dbg !9187
  br i1 %i.ab, label %.split, label %bb.g, !dbg !9187, !prof !3663

bb.g:                                             ; preds = %bb.f
    #dbg_value(i32 -1, !3578, !DIExpression(), !9142)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #21, !dbg !9188
  unreachable, !dbg !9188

.split:                                           ; preds = %bb.f
    #dbg_value(i32 poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9141)
    #dbg_value(i32 poison, !3570, !DIExpression(), !9143)
    #dbg_value(i32 poison, !3584, !DIExpression(), !9144)
    #dbg_value(i32 poison, !3588, !DIExpression(), !9145)
    #dbg_value(i32 poison, !3593, !DIExpression(), !9146)
    #dbg_value(i32 poison, !3578, !DIExpression(), !9142)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9189, !noalias !9133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9181, !noalias !9133
    #dbg_value(ptr %0, !3496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9147)
    #dbg_value(i64 %1, !3496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9147)
    #dbg_value(i64 %2, !3497, !DIExpression(), !9147)
    #dbg_value(ptr %i.h, !3477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9148)
    #dbg_value(i64 %i.g, !3477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9148)
    #dbg_declare(ptr poison, !3561, !DIExpression(), !9149)
    #dbg_value(i8 %i.i, !3572, !DIExpression(), !9150)
  %i.ac = icmp samesign ult i8 %i.i, -32, !dbg !9190
  br i1 %i.ac, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, label %bb.h, !dbg !9190

bb.h:                                             ; preds = %.split
  %i.ad = icmp samesign ult i8 %i.i, -16, !dbg !9191
  br i1 %i.ad, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, label %.thread18, !dbg !9191

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread: ; preds = %.split, %bb.h
  %.sroa.7.0.i.i.i.ph = phi i64 [ 2, %.split ], [ 3, %bb.h ] ; 2 uses
    #dbg_value(i64 %.sroa.7.0.i.i.i.ph, !3478, !DIExpression(), !9151)
  %i.ae = icmp samesign ugt i64 %.sroa.7.0.i.i.i.ph, %i.g, !dbg !9192
  br i1 %i.ae, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread21, !dbg !9192

.thread18:                                        ; preds = %bb.h
    #dbg_value(i64 4, !3478, !DIExpression(), !9151)
  %i.af = icmp samesign ult i64 %i.g, 4, !dbg !9192
  br i1 %i.af, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread21, !dbg !9192

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread37: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread
  %.sroa.419.4.insert.ext.i.i = zext nneg i8 %i.i to i32, !dbg !9193
  br label %bb.k, !dbg !9194

.thread21:                                        ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, %.thread18
  %.sroa.7.0.i.i.i142023 = phi i64 [ 4, %.thread18 ], [ %.sroa.7.0.i.i.i.ph, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9195, !noalias !9152
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %.sroa.7.0.i.i.i142023), !dbg !9195
  %i.ag = load i64, ptr %i.c, align 8, !dbg !9195, !range !3006, !noalias !9152, !noundef !1137
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !9196
  br i1 %i.ah, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread41, label %bb.i, !dbg !9196

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread41: ; preds = %.thread21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9197, !noalias !9152
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9194

bb.i:                                             ; preds = %.thread21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9198
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !9198, !noalias !9152, !nonnull !1137, !noundef !1137 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9198
  %i.al = load i64, ptr %i.ak, align 8, !dbg !9198, !noalias !9152, !noundef !1137
    #dbg_value(ptr %i.aj, !3482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9153)
    #dbg_value(ptr %i.aj, !3651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9154)
    #dbg_value(i64 %i.al, !3482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9153)
    #dbg_value(i64 %i.al, !3651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9199, !noalias !9152
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al, !dbg !9200
  store ptr %i.aj, ptr %i.b, align 8, !dbg !9201, !noalias !9152
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9201
  store ptr %i.am, ptr %i.an, align 8, !dbg !9201, !noalias !9152
    #dbg_value(ptr %i.b, !3451, !DIExpression(), !9155)
  %i.ao = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #26, !dbg !9202 ; 2 uses
  %i.ap = extractvalue { i32, i32 } %i.ao, 0, !dbg !9202
    #dbg_value(i32 %i.ap, !3569, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9156)
    #dbg_value(i32 poison, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9156)
  %i.aq = trunc i32 %i.ap to i1, !dbg !9203
  br i1 %i.aq, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i, label %bb.j, !dbg !9203, !prof !3663

bb.j:                                             ; preds = %bb.i
    #dbg_value(i32 -1, !3578, !DIExpression(), !9157)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #21, !dbg !9204
  unreachable, !dbg !9204

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i: ; preds = %bb.i
  %i.ar = extractvalue { i32, i32 } %i.ao, 1, !dbg !9202 ; 2 uses
    #dbg_value(i32 %i.ar, !3569, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9156)
    #dbg_value(i32 %i.ar, !3570, !DIExpression(), !9158)
    #dbg_value(i32 %i.ar, !3584, !DIExpression(), !9159)
    #dbg_value(i32 %i.ar, !3588, !DIExpression(), !9160)
    #dbg_value(i32 %i.ar, !3593, !DIExpression(), !9161)
  %i.as = icmp ult i32 %i.ar, 1114112, !dbg !9205
  tail call void @llvm.assume(i1 %i.as), !dbg !9205
    #dbg_value(i32 %i.ar, !3578, !DIExpression(), !9157)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9206, !noalias !9152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9197, !noalias !9152
  br label %bb.k, !dbg !9194

bb.k:                                             ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread37
  %.sroa.7.sroa.0.0.i.i40 = phi i32 [ %.sroa.419.4.insert.ext.i.i, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread37 ], [ %i.ar, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i ]
    #dbg_value(i32 %.sroa.7.sroa.0.0.i.i40, !3498, !DIExpression(), !9162)
    #dbg_value(i32 %.sroa.7.sroa.0.0.i.i40, !3633, !DIExpression(), !9163)
  %i.at = tail call noundef i8 @_RNvCs3roNzt6HBWW_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i.i40), !dbg !9207 ; 2 uses
    #dbg_value(i8 %i.at, !3600, !DIExpression(), !9164)
    #dbg_value(ptr @56, !3616, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9164)
    #dbg_value(i64 120, !3616, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9164)
    #dbg_declare(ptr %i.a, !3618, !DIExpression(), !9165)
  %i.au = icmp eq i8 %i.at, 2, !dbg !9208
  br i1 %i.au, label %bb.l, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9209, !prof !3008

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #21, !dbg !9210
  unreachable, !dbg !9210

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.k
  %i.av = xor i8 %i.at, 1, !dbg !9211
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9212

_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, %.thread18, %bb.c, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i, %.split.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread41, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit, %bb.a
  %.sroa.0.0 = phi i8 [ 1, %bb.a ], [ 1, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread ], [ %i.av, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit ], [ 1, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread41 ], [ 0, %bb.c ], [ 0, %.split.thread ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i ], [ 1, %.thread18 ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread ], !dbg !9114
  ret i8 %.sroa.0.0, !dbg !9213
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 2) i8 @_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util4lookNtB5_11LookMatcher26is_word_start_half_unicode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !9217 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !9271, !DIExpression(), !9278)
    #dbg_value(ptr %0, !9272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9278)
    #dbg_value(ptr %0, !9279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9283)
    #dbg_value(ptr %0, !9284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9288)
    #dbg_value(ptr %0, !9289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9294)
    #dbg_value(i64 %1, !9272, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9278)
    #dbg_value(i64 %1, !9279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9283)
    #dbg_value(i64 %1, !9284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9288)
    #dbg_value(i64 %1, !9289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9294)
    #dbg_value(i64 %2, !9273, !DIExpression(), !9278)
    #dbg_value(i64 %2, !9280, !DIExpression(), !9283)
    #dbg_value(i64 %2, !9285, !DIExpression(), !9288)
    #dbg_value(i64 %2, !9290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9294)
    #dbg_value(i64 %2, !9291, !DIExpression(), !9294)
    #dbg_value(i64 0, !9290, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9294)
  %.not = icmp eq i64 %2, 0, !dbg !9351
  br i1 %.not, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit, label %bb.b, !dbg !9351

bb.b:                                             ; preds = %bb.a
  %.not16 = icmp ugt i64 %2, %1, !dbg !9352
  br i1 %.not16, label %bb.n, label %bb.c, !dbg !9352, !prof !3008

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9295), !dbg !9353
    #dbg_value(ptr %0, !3484, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9296)
    #dbg_value(ptr %0, !3528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9297)
    #dbg_value(ptr %0, !3537, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9298)
    #dbg_value(ptr %0, !3544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9299)
    #dbg_value(i64 %2, !3484, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9296)
    #dbg_value(i64 %2, !3528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9297)
    #dbg_value(i64 %2, !3537, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9298)
    #dbg_value(i64 %2, !3544, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9299)
    #dbg_value(i64 4, !3553, !DIExpression(), !9300)
    #dbg_value(i64 %2, !3554, !DIExpression(), !9300)
    #dbg_value(i64 %2, !3485, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9301)
    #dbg_value(i64 %2, !3533, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9297)
    #dbg_value(i64 %2, !3541, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9298)
    #dbg_value(i64 %2, !3550, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !9299)
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %2, i64 4), !dbg !9354 ; 5 uses
    #dbg_value(i64 %i.f, !3486, !DIExpression(), !9302)
  %i.g = add nsw i64 %2, -1, !dbg !9355
  %umin = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.g), !dbg !9355 ; 4 uses
  %.sroa.09.0.i57 = add nsw i64 %2, -1, !dbg !9296 ; 2 uses
  %i.h = icmp ugt i64 %.sroa.09.0.i57, %i.f, !dbg !9356
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !dbg !9356

bb.d:                                             ; preds = %bb.e
  %.sroa.09.0.i = add nsw i64 %.sroa.09.0.i58, -1, !dbg !9296 ; 2 uses
    #dbg_value(i64 %.sroa.09.0.i, !3550, !DIExpression(), !9299)
    #dbg_value(i64 %.sroa.09.0.i, !3541, !DIExpression(), !9298)
    #dbg_value(i64 %.sroa.09.0.i, !3533, !DIExpression(), !9297)
    #dbg_value(i64 %.sroa.09.0.i, !3485, !DIExpression(), !9301)
  %i.i = icmp ugt i64 %.sroa.09.0.i, %i.f, !dbg !9356
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !dbg !9356

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.09.0.i58 = phi i64 [ %.sroa.09.0.i, %bb.d ], [ %.sroa.09.0.i57, %bb.c ] ; 5 uses
  %i.j = icmp ult i64 %.sroa.09.0.i58, %2, !dbg !9357
  br i1 %i.j, label %bb.e, label %bb.f, !dbg !9357

._crit_edge:                                      ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.09.0.i.lcssa = phi i64 [ %umin, %bb.c ], [ %umin, %bb.d ], [ %.sroa.09.0.i58, %bb.e ], !dbg !9296 ; 5 uses
  %i.k = icmp ugt i64 %.sroa.09.0.i.lcssa, %2, !dbg !9358
  br i1 %i.k, label %bb.m, label %bb.g, !dbg !9358, !prof !3008

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i58, !dbg !9357
  %i.m = load i8, ptr %i.l, align 1, !dbg !9357, !alias.scope !9295, !noundef !1137
    #dbg_value(i8 %i.m, !3557, !DIExpression(), !9303)
  %.not.i = icmp slt i8 %i.m, -64, !dbg !9359
  br i1 %.not.i, label %bb.d, label %._crit_edge, !dbg !9360

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.09.0.i58, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #21, !dbg !9357, !noalias !9295
  unreachable, !dbg !9357

bb.g:                                             ; preds = %._crit_edge
  %i.n = sub nuw nsw i64 %2, %.sroa.09.0.i.lcssa, !dbg !9361 ; 2 uses
    #dbg_value(i64 %i.n, !3542, !DIExpression(), !9304)
    #dbg_value(i64 %i.n, !3551, !DIExpression(), !9299)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0.i.lcssa, !dbg !9362 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9305), !dbg !9363
    #dbg_value(ptr %i.o, !3477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9306)
    #dbg_value(i64 %i.n, !3477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9306)
    #dbg_declare(ptr poison, !3561, !DIExpression(), !9307)
  %i.p = load i8, ptr %i.o, align 1, !dbg !9364, !alias.scope !9305, !noundef !1137 ; 5 uses
    #dbg_value(i8 %i.p, !3572, !DIExpression(), !9308)
  %i.q = icmp sgt i8 %i.p, -1, !dbg !9365
  br i1 %i.q, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread, label %bb.h, !dbg !9365

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread: ; preds = %bb.g
    #dbg_value(i64 1, !3478, !DIExpression(), !9309)
  %i.r = icmp eq i64 %2, %.sroa.09.0.i.lcssa, !dbg !9366
  br i1 %i.r, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit, label %bb.o, !dbg !9367

bb.h:                                             ; preds = %bb.g
  %i.s = icmp samesign ult i8 %i.p, -64, !dbg !9368
  br i1 %i.s, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit, label %bb.i, !dbg !9368

bb.i:                                             ; preds = %bb.h
  %i.t = icmp samesign ult i8 %i.p, -32, !dbg !9369
  br i1 %i.t, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, label %bb.j, !dbg !9369

bb.j:                                             ; preds = %bb.i
  %i.u = icmp samesign ult i8 %i.p, -16, !dbg !9370
  br i1 %i.u, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i, !dbg !9370

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i: ; preds = %bb.j
  %i.v = icmp samesign ugt i8 %i.p, -9, !dbg !9371
    #dbg_value(i64 4, !3478, !DIExpression(), !9309)
  %i.w = icmp ult i64 %i.n, 4
end_hunk_0
