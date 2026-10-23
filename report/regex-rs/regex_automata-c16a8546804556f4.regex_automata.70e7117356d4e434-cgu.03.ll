Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.03?download=true
inline.NumInlined: 158
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util4lookNtB5_11LookMatcher22is_word_unicode_negate:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9017, !noalias !8954
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %.sroa.7.0.i.i.i64142023), !dbg !9017
  %i.bf = load i64, ptr %i.c, align 8, !dbg !9017, !range !3198, !noalias !8954, !noundef !879
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !9018
  br i1 %i.bg, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread79, label %bb.w, !dbg !9018

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread79: ; preds = %.thread21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9019, !noalias !8954
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit, !dbg !9016

bb.w:                                             ; preds = %.thread21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9020
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !9020, !noalias !8954, !nonnull !879, !noundef !879 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9020
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !9020, !noalias !8954, !noundef !879
    #dbg_value(ptr %i.bi, !3132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8799)
    #dbg_value(ptr %i.bi, !8939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8801)
    #dbg_value(i64 %i.bk, !3132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8799)
    #dbg_value(i64 %i.bk, !8939, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8801)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9021, !noalias !8954
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk, !dbg !9022
  store ptr %i.bi, ptr %i.b, align 8, !dbg !9023, !noalias !8954
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9023
  store ptr %i.bl, ptr %i.bm, align 8, !dbg !9023, !noalias !8954
    #dbg_value(ptr %i.b, !3103, !DIExpression(), !8805)
  %i.bn = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #22, !dbg !9024 ; 2 uses
  %i.bo = extractvalue { i32, i32 } %i.bn, 0, !dbg !9024
    #dbg_value(i32 %i.bo, !3191, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8806)
    #dbg_value(i32 poison, !3191, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8806)
  %i.bp = trunc i32 %i.bo to i1, !dbg !9025
  br i1 %i.bp, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66, label %bb.x, !dbg !9025, !prof !2433

bb.x:                                             ; preds = %bb.w
    #dbg_value(i32 -1, !3199, !DIExpression(), !8808)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #20, !dbg !9026
  unreachable, !dbg !9026

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66: ; preds = %bb.w
  %i.bq = extractvalue { i32, i32 } %i.bn, 1, !dbg !9024 ; 2 uses
    #dbg_value(i32 %i.bq, !3191, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8806)
    #dbg_value(i32 %i.bq, !3192, !DIExpression(), !8809)
    #dbg_value(i32 %i.bq, !3205, !DIExpression(), !8811)
    #dbg_value(i32 %i.bq, !3210, !DIExpression(), !8813)
    #dbg_value(i32 %i.bq, !3218, !DIExpression(), !8815)
  %i.br = icmp ult i32 %i.bq, 1114112, !dbg !9027
  tail call void @llvm.assume(i1 %i.br), !dbg !9027
    #dbg_value(i32 %i.bq, !3199, !DIExpression(), !8808)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9028, !noalias !8954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9019, !noalias !8954
  br label %bb.z, !dbg !9016

bb.y:                                             ; preds = %._crit_edge114
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #20, !dbg !9029, !noalias !8952
  unreachable, !dbg !9029

bb.z:                                             ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread75
  %.sroa.7.sroa.0.0.i15.i78 = phi i32 [ %.sroa.419.4.insert.ext.i.i79, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread75 ], [ %i.bq, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66 ]
    #dbg_value(i32 %.sroa.7.sroa.0.0.i15.i78, !3144, !DIExpression(), !8816)
    #dbg_value(i32 %.sroa.7.sroa.0.0.i15.i78, !3223, !DIExpression(), !8818)
  %i.bs = tail call noundef i8 @_RNvCs3roNzt6HBWW_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i15.i78), !dbg !9030 ; 2 uses
    #dbg_value(i8 %i.bs, !3227, !DIExpression(), !8820)
    #dbg_value(ptr @65, !3243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8820)
    #dbg_value(i64 120, !3243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8820)
    #dbg_declare(ptr %i.a, !3245, !DIExpression(), !8821)
  %i.bt = icmp eq i8 %i.bs, 2, !dbg !9031
  br i1 %i.bt, label %bb.aa, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9032, !prof !2504

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #20, !dbg !9033
  unreachable, !dbg !9033

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.z
  %i.bu = trunc nuw i8 %i.bs to i1, !dbg !9034
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit, !dbg !9035

bb.ab:                                            ; preds = %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit
  %i.bv = sub nuw nsw i64 %1, %2, !dbg !9036      ; 4 uses
    #dbg_value(i64 %i.bv, !8928, !DIExpression(), !8955)
    #dbg_value(i64 %i.bv, !8916, !DIExpression(), !8934)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %2, !dbg !9037 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8956), !dbg !9038
    #dbg_value(ptr %i.bw, !3127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8825)
    #dbg_value(i64 %i.bv, !3127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8825)
    #dbg_declare(ptr poison, !3183, !DIExpression(), !8828)
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !9039, !alias.scope !8956, !noundef !879 ; 8 uses
    #dbg_value(i8 %i.bx, !3194, !DIExpression(), !8830)
  %i.by = icmp sgt i8 %i.bx, -1, !dbg !9040
  br i1 %i.by, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread, label %bb.ac, !dbg !9040

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread: ; preds = %bb.ab
    #dbg_value(i64 1, !3128, !DIExpression(), !8831)
  %i.bz = icmp eq i64 %1, %2, !dbg !9041
  br i1 %i.bz, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92, !dbg !9042

bb.ac:                                            ; preds = %bb.ab
  %i.ca = icmp samesign ult i8 %i.bx, -64, !dbg !9043
  br i1 %i.ca, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %bb.ad, !dbg !9043

bb.ad:                                            ; preds = %bb.ac
  %i.cb = icmp samesign ult i8 %i.bx, -32, !dbg !9044
  br i1 %i.cb, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, label %bb.ae, !dbg !9044

bb.ae:                                            ; preds = %bb.ad
  %i.cc = icmp samesign ult i8 %i.bx, -16, !dbg !9045
  br i1 %i.cc, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40, !dbg !9045

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40: ; preds = %bb.ae
  %i.cd = icmp samesign ugt i8 %i.bx, -9, !dbg !9046
    #dbg_value(i64 4, !3128, !DIExpression(), !8831)
  %i.ce = icmp samesign ult i64 %i.bv, 4
  %or.cond50 = select i1 %i.cd, i1 true, i1 %i.ce, !dbg !9047
  br i1 %or.cond50, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %.thread33, !dbg !9047

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread: ; preds = %bb.ad, %bb.ae
  %.sroa.7.0.i.i41.ph = phi i64 [ 2, %bb.ad ], [ 3, %bb.ae ] ; 2 uses
    #dbg_value(i64 %.sroa.7.0.i.i41.ph, !3128, !DIExpression(), !8831)
  %i.cf = icmp samesign ugt i64 %.sroa.7.0.i.i41.ph, %i.bv, !dbg !9041
  br i1 %i.cf, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %.thread33, !dbg !9041

.thread33:                                        ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40
  %.sroa.7.0.i.i41263235 = phi i64 [ %.sroa.7.0.i.i41.ph, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread ], [ 4, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9048, !noalias !8956
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %.sroa.7.0.i.i41263235), !dbg !9048
  %i.cg = load i64, ptr %i.g, align 8, !dbg !9048, !range !3198, !noalias !8956, !noundef !879
  %i.ch = trunc nuw i64 %i.cg to i1, !dbg !9049
  br i1 %i.ch, label %.split84.thread, label %bb.af, !dbg !9049

.split84.thread:                                  ; preds = %.thread33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9050, !noalias !8956
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, !dbg !9042

bb.af:                                            ; preds = %.thread33
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !9051
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !9051, !noalias !8956, !nonnull !879, !noundef !879 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !9051
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !9051, !noalias !8956, !noundef !879
    #dbg_value(ptr %i.cj, !3132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8832)
    #dbg_value(ptr %i.cj, !8939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8834)
    #dbg_value(i64 %i.cl, !3132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8832)
    #dbg_value(i64 %i.cl, !8939, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8834)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9052, !noalias !8956
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl, !dbg !9053
  store ptr %i.cj, ptr %i.f, align 8, !dbg !9054, !noalias !8956
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !9054
  store ptr %i.cm, ptr %i.cn, align 8, !dbg !9054, !noalias !8956
    #dbg_value(ptr %i.f, !3103, !DIExpression(), !8838)
  %i.co = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #22, !dbg !9055
  %i.cp = extractvalue { i32, i32 } %i.co, 0, !dbg !9055
    #dbg_value(i32 %i.cp, !3191, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8839)
    #dbg_value(i32 poison, !3191, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8839)
  %i.cq = trunc i32 %i.cp to i1, !dbg !9056
  br i1 %i.cq, label %.split84, label %bb.ag, !dbg !9056, !prof !2433

bb.ag:                                            ; preds = %bb.af
    #dbg_value(i32 -1, !3199, !DIExpression(), !8841)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #20, !dbg !9057
  unreachable, !dbg !9057

.split84:                                         ; preds = %bb.af
    #dbg_value(i32 poison, !3191, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8839)
    #dbg_value(i32 poison, !3192, !DIExpression(), !8842)
    #dbg_value(i32 poison, !3205, !DIExpression(), !8844)
    #dbg_value(i32 poison, !3210, !DIExpression(), !8846)
    #dbg_value(i32 poison, !3218, !DIExpression(), !8848)
    #dbg_value(i32 poison, !3199, !DIExpression(), !8841)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9058, !noalias !8956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9050, !noalias !8956
    #dbg_value(ptr %0, !3146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8850)
    #dbg_value(i64 %1, !3146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8850)
    #dbg_value(i64 %2, !3147, !DIExpression(), !8850)
    #dbg_value(ptr %i.bw, !3127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8852)
    #dbg_value(i64 %i.bv, !3127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8852)
    #dbg_declare(ptr poison, !3183, !DIExpression(), !8855)
    #dbg_value(i8 %i.bx, !3194, !DIExpression(), !8857)
  %i.cr = icmp samesign ult i8 %i.bx, -32, !dbg !9059
  br i1 %i.cr, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, label %bb.ah, !dbg !9059

_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, %.thread42, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit
  %.sroa.013.0 = phi i1 [ %.sroa.06.0, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit ], [ %i.dn, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83 ], [ %.sroa.06.0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96 ], [ %.sroa.06.0, %.thread42 ], [ %.sroa.06.0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread ], !dbg !8935
    #dbg_value(i8 poison, !8893, !DIExpression(), !8957)
  %i.cs = xor i1 %.sroa.013.0, true, !dbg !9034
  %i.ct = zext i1 %i.cs to i8, !dbg !9060
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, !dbg !9061

bb.ah:                                            ; preds = %.split84
  %i.cu = icmp samesign ult i8 %i.bx, -16, !dbg !9062
  br i1 %i.cu, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, label %.thread42, !dbg !9062

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread: ; preds = %.split84, %bb.ah
  %.sroa.7.0.i.i.i.ph = phi i64 [ 2, %.split84 ], [ 3, %bb.ah ] ; 2 uses
    #dbg_value(i64 %.sroa.7.0.i.i.i.ph, !3128, !DIExpression(), !8858)
  %i.cv = icmp samesign ugt i64 %.sroa.7.0.i.i.i.ph, %i.bv, !dbg !9063
  br i1 %i.cv, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread45, !dbg !9063

.thread42:                                        ; preds = %bb.ah
    #dbg_value(i64 4, !3128, !DIExpression(), !8858)
  %i.cw = icmp samesign ult i64 %i.bv, 4, !dbg !9063
  br i1 %i.cw, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread45, !dbg !9063

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread
  %.sroa.419.4.insert.ext.i.i = zext nneg i8 %i.bx to i32, !dbg !9064
  br label %bb.ak, !dbg !9065

.thread45:                                        ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, %.thread42
  %.sroa.7.0.i.i.i384447 = phi i64 [ 4, %.thread42 ], [ %.sroa.7.0.i.i.i.ph, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9066, !noalias !8958
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %.sroa.7.0.i.i.i384447), !dbg !9066
  %i.cx = load i64, ptr %i.e, align 8, !dbg !9066, !range !3198, !noalias !8958, !noundef !879
  %i.cy = trunc nuw i64 %i.cx to i1, !dbg !9067
  br i1 %i.cy, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96, label %bb.ai, !dbg !9067

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96: ; preds = %.thread45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9068, !noalias !8958
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9065

bb.ai:                                            ; preds = %.thread45
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !9069
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !9069, !noalias !8958, !nonnull !879, !noundef !879 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !9069
  %i.dc = load i64, ptr %i.db, align 8, !dbg !9069, !noalias !8958, !noundef !879
    #dbg_value(ptr %i.da, !3132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8863)
    #dbg_value(ptr %i.da, !8939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8865)
    #dbg_value(i64 %i.dc, !3132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8863)
    #dbg_value(i64 %i.dc, !8939, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8865)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9070, !noalias !8958
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc, !dbg !9071
  store ptr %i.da, ptr %i.d, align 8, !dbg !9072, !noalias !8958
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !9072
  store ptr %i.dd, ptr %i.de, align 8, !dbg !9072, !noalias !8958
    #dbg_value(ptr %i.d, !3103, !DIExpression(), !8869)
  %i.df = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #22, !dbg !9073 ; 2 uses
  %i.dg = extractvalue { i32, i32 } %i.df, 0, !dbg !9073
    #dbg_value(i32 %i.dg, !3191, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8870)
    #dbg_value(i32 poison, !3191, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8870)
  %i.dh = trunc i32 %i.dg to i1, !dbg !9074
  br i1 %i.dh, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i, label %bb.aj, !dbg !9074, !prof !2433

bb.aj:                                            ; preds = %bb.ai
    #dbg_value(i32 -1, !3199, !DIExpression(), !8872)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #20, !dbg !9075
  unreachable, !dbg !9075

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i: ; preds = %bb.ai
  %i.di = extractvalue { i32, i32 } %i.df, 1, !dbg !9073 ; 2 uses
    #dbg_value(i32 %i.di, !3191, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8870)
    #dbg_value(i32 %i.di, !3192, !DIExpression(), !8873)
    #dbg_value(i32 %i.di, !3205, !DIExpression(), !8875)
    #dbg_value(i32 %i.di, !3210, !DIExpression(), !8877)
    #dbg_value(i32 %i.di, !3218, !DIExpression(), !8879)
  %i.dj = icmp ult i32 %i.di, 1114112, !dbg !9076
  tail call void @llvm.assume(i1 %i.dj), !dbg !9076
    #dbg_value(i32 %i.di, !3199, !DIExpression(), !8872)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9077, !noalias !8958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9068, !noalias !8958
  br label %bb.ak, !dbg !9065

bb.ak:                                            ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92
  %.sroa.7.sroa.0.0.i.i95 = phi i32 [ %.sroa.419.4.insert.ext.i.i, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92 ], [ %i.di, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i ]
    #dbg_value(i32 %.sroa.7.sroa.0.0.i.i95, !3148, !DIExpression(), !8880)
    #dbg_value(i32 %.sroa.7.sroa.0.0.i.i95, !3247, !DIExpression(), !8882)
  %i.dk = tail call noundef i8 @_RNvCs3roNzt6HBWW_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i.i95), !dbg !9078 ; 2 uses
    #dbg_value(i8 %i.dk, !3227, !DIExpression(), !8884)
    #dbg_value(ptr @65, !3243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8884)
    #dbg_value(i64 120, !3243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8884)
    #dbg_declare(ptr %i.a, !3245, !DIExpression(), !8885)
  %i.dl = icmp eq i8 %i.dk, 2, !dbg !9079
  br i1 %i.dl, label %bb.al, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83, !dbg !9080, !prof !2504

bb.al:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #20, !dbg !9081
  unreachable, !dbg !9081

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83: ; preds = %bb.ak
  %i.dm = trunc nuw i8 %i.dk to i1, !dbg !9034
  %i.dn = xor i1 %.sroa.06.0, %i.dm, !dbg !9034
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9082

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, %bb.ac, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40, %.split84.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i, %bb.h, %.split.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit
  %.sroa.0.0 = phi i8 [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread ], [ %i.ct, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit ], [ 0, %bb.ac ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread ], [ 0, %.split.thread ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i ], [ 0, %.split84.thread ], [ 0, %bb.h ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40 ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread ], !dbg !8897
  ret i8 %.sroa.0.0, !dbg !9061
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_5Cache14explicit_slots(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 !dbg !535 {
bb.a:
    #dbg_value(ptr %0, !2917, !DIExpression(), !9087)
    #dbg_value(i64 0, !9088, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9096)
    #dbg_value(i64 0, !9103, !DIExpression(), !9107)
    #dbg_value(ptr %0, !2922, !DIExpression(), !9108)
    #dbg_value(ptr %0, !2931, !DIExpression(), !9110)
    #dbg_value(ptr %0, !2935, !DIExpression(), !9112)
    #dbg_value(ptr %0, !2938, !DIExpression(), !9114)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9121
  %i.b = load i64, ptr %i.a, align 8, !dbg !9121, !noundef !879 ; 3 uses
    #dbg_value(i64 %i.b, !2927, !DIExpression(), !9115)
    #dbg_value(i64 %i.b, !9098, !DIExpression(), !9116)
    #dbg_value(i64 %i.b, !9100, !DIExpression(), !9117)
    #dbg_value(i64 %i.b, !9088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9096)
    #dbg_value(i64 %i.b, !9090, !DIExpression(), !9096)
    #dbg_value(i64 %i.b, !9104, !DIExpression(), !9107)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9122
  %i.d = load i64, ptr %i.c, align 8, !dbg !9122, !noundef !879 ; 2 uses
    #dbg_value(ptr poison, !9097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9116)
    #dbg_value(ptr poison, !9101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9117)
    #dbg_value(ptr poison, !9089, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9096)
    #dbg_value(i64 %i.d, !9097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9116)
    #dbg_value(i64 %i.d, !9101, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9117)
    #dbg_value(i64 %i.d, !9089, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9096)
  %.not = icmp ugt i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !dbg !9123, !prof !3030

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9124
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9124, !nonnull !879, !noundef !879
    #dbg_value(ptr %i.f, !9097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9116)
    #dbg_value(ptr %i.f, !9101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9117)
    #dbg_value(ptr %i.f, !9089, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9096)
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.f, 0, !dbg !9125
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.b, 1, !dbg !9125
  ret { ptr, i64 } %i.h, !dbg !9125

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #20, !dbg !9126
  unreachable, !dbg !9126
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_5Cache3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(376) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9128 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
    #dbg_value(ptr %1, !9171, !DIExpression(), !9174)
    #dbg_declare(ptr %i.a, !9172, !DIExpression(), !9175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9179
  store i64 0, ptr %i.a, align 8, !dbg !9180
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9180
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !9180
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9180
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9176), !dbg !9181
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9177), !dbg !9181
    #dbg_value(ptr %i.a, !3249, !DIExpression(), !9133)
    #dbg_value(ptr %1, !3253, !DIExpression(), !9133)
    #dbg_value(ptr %1, !3256, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9135)
    #dbg_value(ptr %1, !3262, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9137)
    #dbg_value(ptr %1, !3264, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9139)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !9182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !9180
  %i.c = load ptr, ptr %i.b, align 8, !dbg !9182, !alias.scope !9177, !nonnull !879, !noundef !879
    #dbg_value(ptr %i.c, !3268, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9142)
    #dbg_value(ptr %i.c, !3273, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9144)
    #dbg_value(ptr %i.c, !3276, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9146)
    #dbg_value(ptr %i.c, !3279, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9148)
    #dbg_value(ptr %i.c, !3283, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9150)
    #dbg_value(ptr %i.c, !3288, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9152)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312, !dbg !9183 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !9183, !noalias !9178, !nonnull !879, !noundef !879
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !9184
  %i.g = invoke noundef i32 @_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoInner14small_slot_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.f)
          to label %.noexc unwind label %bb.b, !dbg !9185

.noexc:                                           ; preds = %bb.a
    #dbg_value(ptr poison, !3300, !DIExpression(), !9155)
  %i.h = zext i32 %i.g to i64, !dbg !9186
    #dbg_value(i64 %i.h, !3302, !DIExpression(), !9157)
    #dbg_value(ptr %i.c, !3283, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9159)
    #dbg_value(ptr %i.c, !3288, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9161)
  %i.i = load ptr, ptr %i.d, align 8, !dbg !9187, !noalias !9178, !nonnull !879, !noundef !879
    #dbg_value(ptr %i.i, !3308, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !9164)
    #dbg_value(ptr %i.i, !3314, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !9166)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !9188
  %i.k = load i64, ptr %i.j, align 8, !dbg !9188, !noalias !9178, !noundef !879 ; 2 uses
  %i.l = icmp ult i64 %i.k, 1152921504606846976, !dbg !9189
  tail call void @llvm.assume(i1 %i.l), !dbg !9190
  %i.m = shl nuw nsw i64 %i.k, 1, !dbg !9191
    #dbg_value(i64 %i.m, !3303, !DIExpression(), !9157)
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 %i.m), !dbg !9192 ; 2 uses
    #dbg_value(i64 %i.n, !3254, !DIExpression(), !9167)
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEE6resizeB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.n, i64 noundef 0)
          to label %bb.c unwind label %bb.b, !dbg !9193

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass5CacheEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #18
          to label %bb.e unwind label %bb.d, !dbg !9194

bb.c:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !9180
  store i64 %i.n, ptr %i.p, align 8, !dbg !9195, !alias.scope !9176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !9196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9194
  ret void, !dbg !9197

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !9198
  unreachable, !dbg !9198

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.o, !dbg !9198
end_hunk_0
