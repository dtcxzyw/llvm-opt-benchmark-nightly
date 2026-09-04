Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.03?download=true
inline.NumInlined: 158
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util4lookNtB5_11LookMatcher22is_word_unicode_negate:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9022, !noalias !8915
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %.sroa.7.0.i.i.i64142023), !dbg !9022
  %i.bf = load i64, ptr %i.c, align 8, !dbg !9022, !range !3198, !noalias !8915, !noundef !879
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !9023
  br i1 %i.bg, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread79, label %bb.w, !dbg !9023

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread79: ; preds = %.thread21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9024, !noalias !8915
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit, !dbg !9021

bb.w:                                             ; preds = %.thread21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9025
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !9025, !noalias !8915, !nonnull !879, !noundef !879 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9025
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !9025, !noalias !8915, !noundef !879
    #dbg_value(ptr %i.bi, !3132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8918)
    #dbg_value(ptr %i.bi, !8880, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8919)
    #dbg_value(i64 %i.bk, !3132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8918)
    #dbg_value(i64 %i.bk, !8880, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8919)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9026, !noalias !8915
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk, !dbg !9027
  store ptr %i.bi, ptr %i.b, align 8, !dbg !9028, !noalias !8915
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9028
  store ptr %i.bl, ptr %i.bm, align 8, !dbg !9028, !noalias !8915
    #dbg_value(ptr %i.b, !3103, !DIExpression(), !8920)
  %i.bn = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #22, !dbg !9029 ; 2 uses
  %i.bo = extractvalue { i32, i32 } %i.bn, 0, !dbg !9029
    #dbg_value(i32 %i.bo, !3191, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8921)
    #dbg_value(i32 poison, !3191, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8921)
  %i.bp = trunc i32 %i.bo to i1, !dbg !9030
  br i1 %i.bp, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66, label %bb.x, !dbg !9030, !prof !2433

bb.x:                                             ; preds = %bb.w
    #dbg_value(i32 -1, !3199, !DIExpression(), !8922)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #20, !dbg !9031
  unreachable, !dbg !9031

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66: ; preds = %bb.w
  %i.bq = extractvalue { i32, i32 } %i.bn, 1, !dbg !9029 ; 2 uses
    #dbg_value(i32 %i.bq, !3191, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8921)
    #dbg_value(i32 %i.bq, !3192, !DIExpression(), !8923)
    #dbg_value(i32 %i.bq, !3205, !DIExpression(), !8924)
    #dbg_value(i32 %i.bq, !3210, !DIExpression(), !8925)
    #dbg_value(i32 %i.bq, !3218, !DIExpression(), !8926)
  %i.br = icmp ult i32 %i.bq, 1114112, !dbg !9032
  tail call void @llvm.assume(i1 %i.br), !dbg !9032
    #dbg_value(i32 %i.bq, !3199, !DIExpression(), !8922)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9033, !noalias !8915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9024, !noalias !8915
  br label %bb.z, !dbg !9021

bb.y:                                             ; preds = %._crit_edge114
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.09.0.i.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #20, !dbg !9034, !noalias !8909
  unreachable, !dbg !9034

bb.z:                                             ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread75
  %.sroa.7.sroa.0.0.i15.i78 = phi i32 [ %.sroa.419.4.insert.ext.i.i79, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66.thread75 ], [ %i.bq, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i66 ]
    #dbg_value(i32 %.sroa.7.sroa.0.0.i15.i78, !3144, !DIExpression(), !8927)
    #dbg_value(i32 %.sroa.7.sroa.0.0.i15.i78, !3223, !DIExpression(), !8928)
  %i.bs = tail call noundef i8 @_RNvCs3roNzt6HBWW_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i15.i78), !dbg !9035 ; 2 uses
    #dbg_value(i8 %i.bs, !3227, !DIExpression(), !8929)
    #dbg_value(ptr @65, !3243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8929)
    #dbg_value(i64 120, !3243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8929)
    #dbg_declare(ptr %i.a, !3245, !DIExpression(), !8930)
  %i.bt = icmp eq i8 %i.bs, 2, !dbg !9036
  br i1 %i.bt, label %bb.aa, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9037, !prof !2504

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #20, !dbg !9038
  unreachable, !dbg !9038

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.z
  %i.bu = trunc nuw i8 %i.bs to i1, !dbg !9039
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit, !dbg !9040

bb.ab:                                            ; preds = %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit
  %i.bv = sub nuw nsw i64 %1, %2, !dbg !9041      ; 4 uses
    #dbg_value(i64 %i.bv, !8855, !DIExpression(), !8931)
    #dbg_value(i64 %i.bv, !8843, !DIExpression(), !8861)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %2, !dbg !9042 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8932), !dbg !9043
    #dbg_value(ptr %i.bw, !3127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8933)
    #dbg_value(i64 %i.bv, !3127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8933)
    #dbg_declare(ptr poison, !3183, !DIExpression(), !8934)
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !9044, !alias.scope !8932, !noundef !879 ; 8 uses
    #dbg_value(i8 %i.bx, !3194, !DIExpression(), !8935)
  %i.by = icmp sgt i8 %i.bx, -1, !dbg !9045
  br i1 %i.by, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread, label %bb.ac, !dbg !9045

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread: ; preds = %bb.ab
    #dbg_value(i64 1, !3128, !DIExpression(), !8936)
  %i.bz = icmp eq i64 %1, %2, !dbg !9046
  br i1 %i.bz, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92, !dbg !9047

bb.ac:                                            ; preds = %bb.ab
  %i.ca = icmp samesign ult i8 %i.bx, -64, !dbg !9048
  br i1 %i.ca, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %bb.ad, !dbg !9048

bb.ad:                                            ; preds = %bb.ac
  %i.cb = icmp samesign ult i8 %i.bx, -32, !dbg !9049
  br i1 %i.cb, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, label %bb.ae, !dbg !9049

bb.ae:                                            ; preds = %bb.ad
  %i.cc = icmp samesign ult i8 %i.bx, -16, !dbg !9050
  br i1 %i.cc, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40, !dbg !9050

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40: ; preds = %bb.ae
  %i.cd = icmp samesign ugt i8 %i.bx, -9, !dbg !9051
    #dbg_value(i64 4, !3128, !DIExpression(), !8936)
  %i.ce = icmp samesign ult i64 %i.bv, 4
  %or.cond50 = select i1 %i.cd, i1 true, i1 %i.ce, !dbg !9052
  br i1 %or.cond50, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %.thread33, !dbg !9052

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread: ; preds = %bb.ad, %bb.ae
  %.sroa.7.0.i.i41.ph = phi i64 [ 2, %bb.ad ], [ 3, %bb.ae ] ; 2 uses
    #dbg_value(i64 %.sroa.7.0.i.i41.ph, !3128, !DIExpression(), !8936)
  %i.cf = icmp samesign ugt i64 %.sroa.7.0.i.i41.ph, %i.bv, !dbg !9046
  br i1 %i.cf, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, label %.thread33, !dbg !9046

.thread33:                                        ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40
  %.sroa.7.0.i.i41263235 = phi i64 [ %.sroa.7.0.i.i41.ph, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread ], [ 4, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9053, !noalias !8932
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %.sroa.7.0.i.i41263235), !dbg !9053
  %i.cg = load i64, ptr %i.g, align 8, !dbg !9053, !range !3198, !noalias !8932, !noundef !879
  %i.ch = trunc nuw i64 %i.cg to i1, !dbg !9054
  br i1 %i.ch, label %.split84.thread, label %bb.af, !dbg !9054

.split84.thread:                                  ; preds = %.thread33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9055, !noalias !8932
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, !dbg !9047

bb.af:                                            ; preds = %.thread33
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !9056
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !9056, !noalias !8932, !nonnull !879, !noundef !879 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !9056
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !9056, !noalias !8932, !noundef !879
    #dbg_value(ptr %i.cj, !3132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8937)
    #dbg_value(ptr %i.cj, !8880, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8938)
    #dbg_value(i64 %i.cl, !3132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8937)
    #dbg_value(i64 %i.cl, !8880, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8938)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9057, !noalias !8932
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl, !dbg !9058
  store ptr %i.cj, ptr %i.f, align 8, !dbg !9059, !noalias !8932
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !9059
  store ptr %i.cm, ptr %i.cn, align 8, !dbg !9059, !noalias !8932
    #dbg_value(ptr %i.f, !3103, !DIExpression(), !8939)
  %i.co = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #22, !dbg !9060
  %i.cp = extractvalue { i32, i32 } %i.co, 0, !dbg !9060
    #dbg_value(i32 %i.cp, !3191, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8940)
    #dbg_value(i32 poison, !3191, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8940)
  %i.cq = trunc i32 %i.cp to i1, !dbg !9061
  br i1 %i.cq, label %.split84, label %bb.ag, !dbg !9061, !prof !2433

bb.ag:                                            ; preds = %bb.af
    #dbg_value(i32 -1, !3199, !DIExpression(), !8941)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #20, !dbg !9062
  unreachable, !dbg !9062

.split84:                                         ; preds = %bb.af
    #dbg_value(i32 poison, !3191, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8940)
    #dbg_value(i32 poison, !3192, !DIExpression(), !8942)
    #dbg_value(i32 poison, !3205, !DIExpression(), !8943)
    #dbg_value(i32 poison, !3210, !DIExpression(), !8944)
    #dbg_value(i32 poison, !3218, !DIExpression(), !8945)
    #dbg_value(i32 poison, !3199, !DIExpression(), !8941)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9063, !noalias !8932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9055, !noalias !8932
    #dbg_value(ptr %0, !3146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8946)
    #dbg_value(i64 %1, !3146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8946)
    #dbg_value(i64 %2, !3147, !DIExpression(), !8946)
    #dbg_value(ptr %i.bw, !3127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8947)
    #dbg_value(i64 %i.bv, !3127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8947)
    #dbg_declare(ptr poison, !3183, !DIExpression(), !8948)
    #dbg_value(i8 %i.bx, !3194, !DIExpression(), !8949)
  %i.cr = icmp samesign ult i8 %i.bx, -32, !dbg !9064
  br i1 %i.cr, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, label %bb.ah, !dbg !9064

_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, %.thread42, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit
  %.sroa.013.0 = phi i1 [ %.sroa.06.0, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3rev.exit ], [ %i.dn, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83 ], [ %.sroa.06.0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96 ], [ %.sroa.06.0, %.thread42 ], [ %.sroa.06.0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread ], !dbg !8862
    #dbg_value(i8 poison, !8820, !DIExpression(), !8950)
  %i.cs = xor i1 %.sroa.013.0, true, !dbg !9039
  %i.ct = zext i1 %i.cs to i8, !dbg !9065
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread, !dbg !9066

bb.ah:                                            ; preds = %.split84
  %i.cu = icmp samesign ult i8 %i.bx, -16, !dbg !9067
  br i1 %i.cu, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, label %.thread42, !dbg !9067

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread: ; preds = %.split84, %bb.ah
  %.sroa.7.0.i.i.i.ph = phi i64 [ 2, %.split84 ], [ 3, %bb.ah ] ; 2 uses
    #dbg_value(i64 %.sroa.7.0.i.i.i.ph, !3128, !DIExpression(), !8951)
  %i.cv = icmp samesign ugt i64 %.sroa.7.0.i.i.i.ph, %i.bv, !dbg !9068
  br i1 %i.cv, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread45, !dbg !9068

.thread42:                                        ; preds = %bb.ah
    #dbg_value(i64 4, !3128, !DIExpression(), !8951)
  %i.cw = icmp samesign ult i64 %i.bv, 4, !dbg !9068
  br i1 %i.cw, label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, label %.thread45, !dbg !9068

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread
    #dbg_value(i64 1, !3128, !DIExpression(), !8951)
  %.sroa.419.4.insert.ext.i.i = zext nneg i8 %i.bx to i32, !dbg !9069
  br label %bb.ak, !dbg !9070

.thread45:                                        ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread, %.thread42
  %.sroa.7.0.i.i.i384447 = phi i64 [ 4, %.thread42 ], [ %.sroa.7.0.i.i.i.ph, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9071, !noalias !8952
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %.sroa.7.0.i.i.i384447), !dbg !9071
  %i.cx = load i64, ptr %i.e, align 8, !dbg !9071, !range !3198, !noalias !8952, !noundef !879
  %i.cy = trunc nuw i64 %i.cx to i1, !dbg !9072
  br i1 %i.cy, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96, label %bb.ai, !dbg !9072

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread96: ; preds = %.thread45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9073, !noalias !8952
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9070

bb.ai:                                            ; preds = %.thread45
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !9074
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !9074, !noalias !8952, !nonnull !879, !noundef !879 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !9074
  %i.dc = load i64, ptr %i.db, align 8, !dbg !9074, !noalias !8952, !noundef !879
    #dbg_value(ptr %i.da, !3132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8953)
    #dbg_value(ptr %i.da, !8880, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8954)
    #dbg_value(i64 %i.dc, !3132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8953)
    #dbg_value(i64 %i.dc, !8880, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8954)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9075, !noalias !8952
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc, !dbg !9076
  store ptr %i.da, ptr %i.d, align 8, !dbg !9077, !noalias !8952
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !9077
  store ptr %i.dd, ptr %i.de, align 8, !dbg !9077, !noalias !8952
    #dbg_value(ptr %i.d, !3103, !DIExpression(), !8955)
  %i.df = call fastcc { i32, i32 } @_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #22, !dbg !9078 ; 2 uses
  %i.dg = extractvalue { i32, i32 } %i.df, 0, !dbg !9078
    #dbg_value(i32 %i.dg, !3191, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8956)
    #dbg_value(i32 poison, !3191, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8956)
  %i.dh = trunc i32 %i.dg to i1, !dbg !9079
  br i1 %i.dh, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i, label %bb.aj, !dbg !9079, !prof !2433

bb.aj:                                            ; preds = %bb.ai
    #dbg_value(i32 -1, !3199, !DIExpression(), !8957)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #20, !dbg !9080
  unreachable, !dbg !9080

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i: ; preds = %bb.ai
  %i.di = extractvalue { i32, i32 } %i.df, 1, !dbg !9078 ; 2 uses
    #dbg_value(i32 %i.di, !3191, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8956)
    #dbg_value(i32 %i.di, !3192, !DIExpression(), !8958)
    #dbg_value(i32 %i.di, !3205, !DIExpression(), !8959)
    #dbg_value(i32 %i.di, !3210, !DIExpression(), !8960)
    #dbg_value(i32 %i.di, !3218, !DIExpression(), !8961)
  %i.dj = icmp ult i32 %i.di, 1114112, !dbg !9081
  tail call void @llvm.assume(i1 %i.dj), !dbg !9081
    #dbg_value(i32 %i.di, !3199, !DIExpression(), !8957)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9082, !noalias !8952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9073, !noalias !8952
  br label %bb.ak, !dbg !9070

bb.ak:                                            ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92
  %.sroa.7.sroa.0.0.i.i95 = phi i32 [ %.sroa.419.4.insert.ext.i.i, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i.thread92 ], [ %i.di, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.i ]
    #dbg_value(i32 %.sroa.7.sroa.0.0.i.i95, !3148, !DIExpression(), !8962)
    #dbg_value(i32 %.sroa.7.sroa.0.0.i.i95, !3247, !DIExpression(), !8963)
  %i.dk = tail call noundef i8 @_RNvCs3roNzt6HBWW_12regex_syntax21try_is_word_character(i32 noundef %.sroa.7.sroa.0.0.i.i95), !dbg !9083 ; 2 uses
    #dbg_value(i8 %i.dk, !3227, !DIExpression(), !8964)
    #dbg_value(ptr @65, !3243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8964)
    #dbg_value(i64 120, !3243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8964)
    #dbg_declare(ptr %i.a, !3245, !DIExpression(), !8965)
  %i.dl = icmp eq i8 %i.dk, 2, !dbg !9084
  br i1 %i.dl, label %bb.al, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83, !dbg !9085, !prof !2504

bb.al:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 120, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #20, !dbg !9086
  unreachable, !dbg !9086

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectCs9GYDdpCSJ4S_14regex_automata.exit83: ; preds = %bb.ak
  %i.dm = trunc nuw i8 %i.dk to i1, !dbg !9039
  %i.dn = xor i1 %.sroa.06.0, %i.dm, !dbg !9039
  br label %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit, !dbg !9087

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf86decode.exit.thread: ; preds = %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread, %bb.ac, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40, %.split84.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i, %bb.h, %.split.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit
  %.sroa.0.0 = phi i8 [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread ], [ %i.ct, %_RNvNtNtNtCs9GYDdpCSJ4S_14regex_automata4util4look12is_word_char3fwd.exit ], [ 0, %bb.ac ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread.thread ], [ 0, %.split.thread ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i.thread.thread ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i ], [ 0, %.split84.thread ], [ 0, %bb.h ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40 ], [ 0, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4util4utf83len.exit.i40.thread ], !dbg !8824
  ret i8 %.sroa.0.0, !dbg !9066
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_5Cache14explicit_slots(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 !dbg !535 {
bb.a:
    #dbg_value(ptr %0, !2917, !DIExpression(), !9092)
    #dbg_value(i64 0, !9093, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9101)
    #dbg_value(i64 0, !9108, !DIExpression(), !9112)
    #dbg_value(ptr %0, !2922, !DIExpression(), !9113)
    #dbg_value(ptr %0, !2931, !DIExpression(), !9115)
    #dbg_value(ptr %0, !2935, !DIExpression(), !9117)
    #dbg_value(ptr %0, !2938, !DIExpression(), !9119)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9126
  %i.b = load i64, ptr %i.a, align 8, !dbg !9126, !noundef !879 ; 3 uses
    #dbg_value(i64 %i.b, !2927, !DIExpression(), !9120)
    #dbg_value(i64 %i.b, !9103, !DIExpression(), !9121)
    #dbg_value(i64 %i.b, !9105, !DIExpression(), !9122)
    #dbg_value(i64 %i.b, !9093, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9101)
    #dbg_value(i64 %i.b, !9095, !DIExpression(), !9101)
    #dbg_value(i64 %i.b, !9109, !DIExpression(), !9112)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9127
  %i.d = load i64, ptr %i.c, align 8, !dbg !9127, !noundef !879 ; 2 uses
    #dbg_value(ptr poison, !9102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9121)
    #dbg_value(ptr poison, !9106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9122)
    #dbg_value(ptr poison, !9094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9101)
    #dbg_value(i64 %i.d, !9102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9121)
    #dbg_value(i64 %i.d, !9106, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9122)
    #dbg_value(i64 %i.d, !9094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9101)
  %.not = icmp ugt i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !dbg !9128, !prof !3030

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9129
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9129, !nonnull !879, !noundef !879
    #dbg_value(ptr %i.f, !9102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9121)
    #dbg_value(ptr %i.f, !9106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9122)
    #dbg_value(ptr %i.f, !9094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9101)
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.f, 0, !dbg !9130
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.b, 1, !dbg !9130
  ret { ptr, i64 } %i.h, !dbg !9130

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #20, !dbg !9131
  unreachable, !dbg !9131
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_5Cache3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(376) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9133 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
    #dbg_value(ptr %1, !9159, !DIExpression(), !9162)
    #dbg_declare(ptr %i.a, !9160, !DIExpression(), !9163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9184
  store i64 0, ptr %i.a, align 8, !dbg !9185
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9185
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !9185
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9164), !dbg !9186
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9165), !dbg !9186
    #dbg_value(ptr %i.a, !3249, !DIExpression(), !9166)
    #dbg_value(ptr %1, !3253, !DIExpression(), !9166)
    #dbg_value(ptr %1, !3256, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9167)
    #dbg_value(ptr %1, !3262, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9168)
    #dbg_value(ptr %1, !3264, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9169)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !9187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !9185
  %i.c = load ptr, ptr %i.b, align 8, !dbg !9187, !alias.scope !9165, !noalias !9164, !nonnull !879, !noundef !879
    #dbg_value(ptr %i.c, !3268, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9170)
    #dbg_value(ptr %i.c, !3273, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9171)
    #dbg_value(ptr %i.c, !3276, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9172)
    #dbg_value(ptr %i.c, !3279, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9173)
    #dbg_value(ptr %i.c, !3283, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9174)
    #dbg_value(ptr %i.c, !3288, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9175)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312, !dbg !9188 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !9188, !noalias !9176, !nonnull !879, !noundef !879
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !9189
  %i.g = invoke noundef i32 @_RNvMs6_NtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB5_14GroupInfoInner14small_slot_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.f)
          to label %.noexc unwind label %bb.b, !dbg !9190

.noexc:                                           ; preds = %bb.a
    #dbg_value(ptr poison, !3300, !DIExpression(), !9177)
  %i.h = zext i32 %i.g to i64, !dbg !9191
    #dbg_value(i64 %i.h, !3302, !DIExpression(), !9178)
    #dbg_value(ptr %i.c, !3283, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9179)
    #dbg_value(ptr %i.c, !3288, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !9180)
  %i.i = load ptr, ptr %i.d, align 8, !dbg !9192, !noalias !9176, !nonnull !879, !noundef !879
    #dbg_value(ptr %i.i, !3308, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !9181)
    #dbg_value(ptr %i.i, !3314, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !9182)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !9193
  %i.k = load i64, ptr %i.j, align 8, !dbg !9193, !noalias !9176, !noundef !879 ; 2 uses
  %i.l = icmp ult i64 %i.k, 1152921504606846976, !dbg !9194
  tail call void @llvm.assume(i1 %i.l), !dbg !9195
  %i.m = shl nuw nsw i64 %i.k, 1, !dbg !9196
    #dbg_value(i64 %i.m, !3303, !DIExpression(), !9178)
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 %i.m), !dbg !9197 ; 2 uses
    #dbg_value(i64 %i.n, !3254, !DIExpression(), !9183)
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEE6resizeB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.n, i64 noundef 0)
          to label %bb.c unwind label %bb.b, !dbg !9198

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepass5CacheEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #18
          to label %bb.e unwind label %bb.d, !dbg !9199

bb.c:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !9185
  store i64 %i.n, ptr %i.p, align 8, !dbg !9200, !alias.scope !9164, !noalias !9165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !9201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9199
  ret void, !dbg !9202

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !9203
  unreachable, !dbg !9203

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.o, !dbg !9203
end_hunk_0
