Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.03?download=true
inline.NumInlined: 657
inline.NumDeleted: 235
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtCshovLROGBtMy_11quinn_proto8endpointNtB2_8Endpoint6handle:bb.a
    #dbg_value(i16 %i.li, !6413, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19345)
  %i.lj = icmp eq i16 %.fr58.i.i.i, %i.li, !dbg !25236
  br i1 %i.lj, label %bb.v, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.us.us.i.i, !dbg !25236, !prof !23090

bb.v:                                             ; preds = %.lr.ph.i.us.us.i.i
    #dbg_value(i1 %i.kg, !6412, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !19334)
    #dbg_value(ptr %i.eb, !6415, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19346)
    #dbg_value(ptr %i.eb, !6423, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19349)
    #dbg_value(ptr %i.lh, !6416, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19346)
    #dbg_value(ptr %i.lh, !6427, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19349)
    #dbg_value(ptr poison, !6433, !DIExpression(), !19350)
    #dbg_value(ptr poison, !6434, !DIExpression(), !19351)
  %i.lk = getelementptr inbounds i8, ptr %i.lg, i64 -58, !dbg !25237
  %i.ll = load i16, ptr %i.lk, align 2, !dbg !25237, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.lm = icmp eq i16 %i.ki, %i.ll, !dbg !25237
  br i1 %i.lm, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i.i.i.us.us.i.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.us.us.i.i, !dbg !25237, !prof !23090

_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i.i.i.us.us.i.i: ; preds = %bb.v
  %i.ln = getelementptr inbounds i8, ptr %i.lg, i64 -62, !dbg !25237
    #dbg_value(ptr %i.eb, !6441, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19353)
    #dbg_value(ptr %i.lh, !6445, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19353)
  %i.lo = load i32, ptr %i.ln, align 2, !dbg !25238, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.lp = icmp eq i32 %i.kk, %i.lo, !dbg !25238
  br i1 %i.lp, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.i.us.us.i.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.us.us.i.i, !dbg !25239, !prof !23090

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.i.us.us.i.i: ; preds = %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i.i.i.us.us.i.i
    #dbg_value(ptr %i.eb, !6459, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19357)
    #dbg_value(ptr %i.lh, !6463, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19358)
  %i.lq = getelementptr inbounds i8, ptr %i.lg, i64 -32, !dbg !25240
  %i.lr = load i8, ptr %i.lq, align 4, !dbg !25240, !range !6382, !alias.scope !23091, !noalias !23089, !noundef !1600
  %i.ls = icmp eq i8 %i.lr, 2, !dbg !25240
    #dbg_value(!DIArgList(i1 true, i1 %i.ls), !22811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19360)
  br i1 %i.ls, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBQ_16ConnectionHandleNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBS_.exit.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.us.us.i.i, !dbg !25241, !prof !23093

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.us.us.i.i: ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.i.us.us.i.i, %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i.i.i.us.us.i.i, %bb.v, %.lr.ph.i.us.us.i.i
  %i.lt = add i16 %.sroa.06.0.i38.i.us.us.i.i, -1, !dbg !25242
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i38.i.us.us.i.i, i16 %i.lt), !22590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !19284)
  %i.lu = and i16 %i.lt, %.sroa.06.0.i38.i.us.us.i.i, !dbg !25243 ; 2 uses
    #dbg_value(i16 %i.lu, !22590, !DIExpression(), !19284)
    #dbg_value(ptr undef, !22630, !DIExpression(), !19247)
    #dbg_value(i16 %i.lu, !22725, !DIExpression(), !19286)
  %.not.i.not.i.us.us.i.i = icmp eq i16 %i.lu, 0, !dbg !25227
  br i1 %.not.i.not.i.us.us.i.i, label %._crit_edge.split.i.us.i.i, label %.lr.ph.i.us.us.i.i, !dbg !25228

._crit_edge.split.i.us.i.i:                       ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.us.us.i.i, %.split43.i.us.i.i
    #dbg_declare(ptr poison, !22707, !DIExpression(), !19362)
    #dbg_declare(ptr poison, !22710, !DIExpression(), !19363)
  %i.lv = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.us.i.i, splat (i8 -1), !dbg !25244
    #dbg_value(<16 x i8> poison, !22679, !DIExpression(), !19364)
    #dbg_declare(ptr poison, !22712, !DIExpression(), !19366)
    #dbg_value(<16 x i8> poison, !22715, !DIExpression(), !19367)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !22716, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !19368)
  %i.lw = bitcast <16 x i1> %i.lv to i16, !dbg !25245
    #dbg_value(i16 %i.lw, !22811, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19370)
  %i.lx = icmp eq i16 %i.lw, 0, !dbg !25246
  br i1 %i.lx, label %bb.w, label %select.unfold91.i, !dbg !25246, !prof !6117

bb.w:                                             ; preds = %._crit_edge.split.i.us.i.i
    #dbg_value(ptr undef, !22647, !DIExpression(), !19249)
    #dbg_value(i64 %i.kb, !22651, !DIExpression(), !19371)
  %i.ly = add i64 %.sroa.9.0.i.i.us.i.i, 16, !dbg !25247 ; 2 uses
    #dbg_value(i64 %i.ly, !22588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19262)
  %i.lz = add i64 %.sroa.01.0.i.i.us.i.i, %i.ly, !dbg !25248
    #dbg_value(!DIArgList(i64 %i.lz, i64 %i.kb), !22588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19262)
  br label %.split43.i.us.i.i, !dbg !25249

.split43.us.i.i.i:                                ; preds = %.noexc472
  br i1 %.not.i.i.i.i.i.i.i, label %.split43.us.split.us.i.i.i, label %.split43.us.split.i.preheader.i.i

.split43.us.split.i.preheader.i.i:                ; preds = %.split43.us.i.i.i
  br i1 %i.ku, label %.split43.us.split.i.us.i.i, label %.split43.us.split.i.i.i

.split43.us.split.i.us.i.i:                       ; preds = %.split43.us.split.i.preheader.i.i, %bb.ac
  %.sroa.9.0.i.us.i.us.i.i = phi i64 [ %i.nl, %bb.ac ], [ 0, %.split43.us.split.i.preheader.i.i ], !dbg !25222
  %.pn.us.i.us.i.i = phi i64 [ %i.nm, %bb.ac ], [ %i.jw, %.split43.us.split.i.preheader.i.i ]
  %.sroa.01.0.i.us.i.us.i.i = and i64 %.pn.us.i.us.i.i, %i.kb, !dbg !25222 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.us.i.us.i.i, !22588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19262)
    #dbg_value(i64 %.sroa.9.0.i.us.i.us.i.i, !22588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19262)
    #dbg_value(i64 %.sroa.01.0.i.us.i.us.i.i, !22664, !DIExpression(), !19253)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.sroa.01.0.i.us.i.us.i.i, !dbg !25223
    #dbg_value(ptr %i.ma, !22689, !DIExpression(), !19265)
    #dbg_value(ptr %i.ma, !22696, !DIExpression(), !19267)
    #dbg_value(<2 x i64> zeroinitializer, !22700, !DIExpression(), !19268)
    #dbg_value(ptr %i.ma, !22702, !DIExpression(), !19270)
    #dbg_value(ptr undef, !22703, !DIExpression(), !19270)
    #dbg_value(i64 16, !22704, !DIExpression(), !19270)
  %.sroa.0.0.copyload.i31.us.i.us.i.i = load <16 x i8>, ptr %i.ma, align 1, !dbg !25224, !noalias !23037 ; 2 uses
    #dbg_value(<2 x i64> poison, !22700, !DIExpression(), !19268)
    #dbg_value(<2 x i64> poison, !22589, !DIExpression(), !19274)
    #dbg_value(<2 x i64> poison, !22677, !DIExpression(), !19261)
    #dbg_value(<2 x i64> poison, !22684, !DIExpression(), !19275)
    #dbg_value(<2 x i64> poison, !22677, !DIExpression(), !19258)
    #dbg_declare(ptr poison, !22707, !DIExpression(), !19277)
    #dbg_declare(ptr poison, !22710, !DIExpression(), !19278)
  %i.mb = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.us.i.us.i.i, %i.ke, !dbg !25225
    #dbg_value(<16 x i8> poison, !22678, !DIExpression(), !19279)
    #dbg_declare(ptr poison, !22712, !DIExpression(), !19281)
    #dbg_value(<16 x i8> poison, !22715, !DIExpression(), !19282)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !22716, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !19283)
  %i.mc = bitcast <16 x i1> %i.mb to i16, !dbg !25226 ; 2 uses
    #dbg_value(i16 %i.mc, !22590, !DIExpression(), !19284)
    #dbg_value(ptr undef, !22630, !DIExpression(), !19247)
    #dbg_value(i16 %i.mc, !22725, !DIExpression(), !19286)
  %.not.i.not37.us.i.us.i.i = icmp eq i16 %i.mc, 0, !dbg !25227
  br i1 %.not.i.not37.us.i.us.i.i, label %._crit_edge.split.us.us.split.i.us.i.i, label %.lr.ph.us.i.us.us.i.i, !dbg !25228

.lr.ph.us.i.us.us.i.i:                            ; preds = %.split43.us.split.i.us.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.us.us.i.i
  %.sroa.06.0.i38.us.us.i.us.us.i.i = phi i16 [ %i.nh, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.us.us.i.i ], [ %i.mc, %.split43.us.split.i.us.i.i ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i38.us.us.i.us.us.i.i, !22590, !DIExpression(), !19284)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.i.us.us.i.i, !22729, !DIExpression(), !19287)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.i.us.us.i.i, !22735, !DIExpression(), !19289)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.i.us.us.i.i, !22742, !DIExpression(), !19291)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.i.us.us.i.i, !22747, !DIExpression(), !19293)
  %i.md = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i38.us.us.i.us.us.i.i, i1 true), !dbg !25229
  %i.me = zext nneg i16 %i.md to i64, !dbg !25230
    #dbg_value(i64 %i.me, !22634, !DIExpression(), !19294)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.i.us.us.i.i, !22753, !DIExpression(), !19296)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i38.us.us.i.us.us.i.i, i16 %.sroa.06.0.i38.us.us.i.us.us.i.i), !22590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !19284)
    #dbg_value(i64 %i.me, !22591, !DIExpression(), !19297)
  %i.mf = add i64 %.sroa.01.0.i.us.i.us.i.i, %i.me, !dbg !25231
  %i.mg = and i64 %i.mf, %i.kb, !dbg !25231
    #dbg_value(i64 %i.mg, !22592, !DIExpression(), !19298)
    #dbg_value(ptr poison, !23038, !DIExpression(DW_OP_deref, DW_OP_deref), !19301)
    #dbg_value(ptr poison, !23043, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !19301)
    #dbg_value(i64 %i.mg, !23042, !DIExpression(), !19301)
    #dbg_value(i64 %i.mg, !23045, !DIExpression(), !19306)
    #dbg_value(i64 %i.mg, !23056, !DIExpression(), !19310)
    #dbg_value(i64 %i.mg, !23064, !DIExpression(), !19313)
    #dbg_value(i64 1, !23068, !DIExpression(), !19319)
    #dbg_value(ptr %i.gq, !23049, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !19306)
    #dbg_value(ptr %i.kc, !23060, !DIExpression(), !19310)
    #dbg_value(ptr %i.kc, !23067, !DIExpression(), !19313)
  %i.mh = sub nsw i64 0, %i.mg, !dbg !25232       ; 2 uses
  %i.mi = getelementptr inbounds [64 x i8], ptr %i.kc, i64 %i.mh, !dbg !25233 ; 7 uses
    #dbg_value(ptr poison, !23079, !DIExpression(), !19320)
    #dbg_value(ptr poison, !23074, !DIExpression(), !19321)
    #dbg_value(ptr %i.mi, !23067, !DIExpression(), !19319)
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 -64, !dbg !25234
    #dbg_value(ptr poison, !23081, !DIExpression(DW_OP_deref), !19324)
    #dbg_value(ptr %i.mj, !23085, !DIExpression(), !19324)
    #dbg_value(ptr %i.eb, !6384, !DIExpression(), !19326)
    #dbg_value(ptr %i.mj, !6388, !DIExpression(), !19326)
    #dbg_value(ptr poison, !6392, !DIExpression(), !19328)
    #dbg_value(ptr poison, !6396, !DIExpression(), !19329)
    #dbg_value(ptr %i.eb, !6401, !DIExpression(), !19331)
    #dbg_value(ptr %i.mj, !6403, !DIExpression(), !19331)
    #dbg_value(ptr %i.eb, !6406, !DIExpression(), !19333)
    #dbg_value(ptr %i.mj, !6410, !DIExpression(), !19333)
    #dbg_value(i16 %i.kf, !6412, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19334)
  %i.mk = load i16, ptr %i.mj, align 4, !dbg !25235, !range !6312, !alias.scope !23088, !noalias !23089, !noundef !1600
    #dbg_value(i16 %i.mk, !6413, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19345)
  %i.ml = icmp eq i16 %.fr58.i.i.i, %i.mk, !dbg !25236
  br i1 %i.ml, label %bb.x, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.us.us.i.i, !dbg !25236, !prof !23090

bb.x:                                             ; preds = %.lr.ph.us.i.us.us.i.i
    #dbg_value(i1 %i.kg, !6412, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !19334)
    #dbg_value(ptr %i.eb, !6418, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19372)
    #dbg_value(ptr %i.eb, !6469, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19375)
    #dbg_value(ptr %i.mj, !6419, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19372)
    #dbg_value(ptr %i.mj, !6473, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19375)
    #dbg_value(ptr poison, !6478, !DIExpression(), !19376)
    #dbg_value(ptr poison, !6479, !DIExpression(), !19377)
  %i.mm = getelementptr inbounds i8, ptr %i.mi, i64 -60, !dbg !25250
  %i.mn = getelementptr inbounds i8, ptr %i.mi, i64 -36, !dbg !25250
  %i.mo = load i16, ptr %i.mn, align 4, !dbg !25250, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.mp = icmp eq i16 %i.kn, %i.mo, !dbg !25250
  br i1 %i.mp, label %bb.y, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.us.us.i.i, !dbg !25250, !prof !23090

bb.y:                                             ; preds = %bb.x
  %i.mq = getelementptr inbounds i8, ptr %i.mi, i64 -44, !dbg !25250
  %i.mr = load i32, ptr %i.mq, align 4, !dbg !25250, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.ms = icmp eq i32 %i.kp, %i.mr, !dbg !25250
  br i1 %i.ms, label %bb.z, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.us.us.i.i, !dbg !25250, !prof !23090

bb.z:                                             ; preds = %bb.y
  %i.mt = getelementptr inbounds i8, ptr %i.mi, i64 -40, !dbg !25250
  %i.mu = load i32, ptr %i.mt, align 4, !dbg !25250, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.mv = icmp eq i32 %i.kr, %i.mu, !dbg !25250
  br i1 %i.mv, label %.split.i.i.i.i.us.us.i.us.us.i.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.us.us.i.i, !dbg !25250, !prof !23090

.split.i.i.i.i.us.us.i.us.us.i.i:                 ; preds = %bb.z
    #dbg_value(ptr %i.eb, !6485, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19379)
    #dbg_value(ptr %i.mj, !6489, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19379)
  %i.mw = load i128, ptr %i.mm, align 4, !dbg !25251, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.mx = icmp eq i128 %i.ks, %i.mw, !dbg !25251
  br i1 %i.mx, label %bb.aa, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.us.us.i.i, !dbg !25239, !prof !23090

bb.aa:                                            ; preds = %.split.i.i.i.i.us.us.i.us.us.i.i
    #dbg_value(ptr %i.eb, !6459, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19357)
    #dbg_value(ptr %i.mj, !6463, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19358)
  %i.my = getelementptr inbounds i8, ptr %i.mi, i64 -32, !dbg !25240
  %i.mz = load i8, ptr %i.my, align 4, !dbg !25240, !range !6382, !alias.scope !23091, !noalias !23089, !noundef !1600 ; 3 uses
  %i.na = icmp eq i8 %i.mz, 2, !dbg !25240
  br i1 %i.na, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.us.us.i.i, label %bb.ab, !dbg !25252

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(ptr %i.eb, !6465, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19382)
    #dbg_value(ptr %i.eb, !6494, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19384)
    #dbg_value(ptr %i.mj, !6466, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19385)
    #dbg_value(ptr %i.mj, !6498, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19384)
    #dbg_value(i8 %i.kt, !6499, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19386)
  %i.nb = trunc nuw i8 %i.mz to i1, !dbg !25253
    #dbg_value(i8 %i.mz, !6500, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19387)
  %i.nc = icmp eq i8 %.fr.i.i.i, %i.mz, !dbg !25254
  br i1 %i.nc, label %.split.us.us.i.us.us.i.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.us.us.i.i, !dbg !25254, !prof !23090

.split.us.us.i.us.us.i.i:                         ; preds = %bb.ab
  call void @llvm.assume(i1 %i.nb), !dbg !25254, !noalias !23094
    #dbg_value(ptr %i.eb, !6503, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19388)
    #dbg_value(ptr %i.eb, !6508, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19391)
    #dbg_value(ptr %i.mj, !6504, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19388)
    #dbg_value(ptr %i.mj, !6509, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19391)
    #dbg_value(ptr poison, !6514, !DIExpression(), !19392)
    #dbg_value(ptr poison, !6515, !DIExpression(), !19393)
  %i.nd = getelementptr inbounds i8, ptr %i.mi, i64 -31, !dbg !25255
  %i.ne = load i128, ptr %i.nd, align 1, !dbg !25255, !alias.scope !23091, !noalias !23089, !noundef !1600
  %i.nf = icmp eq i128 %i.kx, %i.ne, !dbg !25255
    #dbg_value(i1 %i.nf, !22811, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19360)
  br i1 %i.nf, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBQ_16ConnectionHandleNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBS_.exit.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.us.us.i.i, !dbg !25241, !prof !23093

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.us.us.i.i: ; preds = %.split.us.us.i.us.us.i.i, %bb.ab, %bb.aa, %.split.i.i.i.i.us.us.i.us.us.i.i, %bb.z, %bb.y, %bb.x, %.lr.ph.us.i.us.us.i.i
  %i.ng = add i16 %.sroa.06.0.i38.us.us.i.us.us.i.i, -1, !dbg !25242
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i38.us.us.i.us.us.i.i, i16 %i.ng), !22590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !19284)
  %i.nh = and i16 %i.ng, %.sroa.06.0.i38.us.us.i.us.us.i.i, !dbg !25243 ; 2 uses
    #dbg_value(i16 %i.nh, !22590, !DIExpression(), !19284)
    #dbg_value(ptr undef, !22630, !DIExpression(), !19247)
    #dbg_value(i16 %i.nh, !22725, !DIExpression(), !19286)
  %.not.i.not.us.us.i.us.us.i.i = icmp eq i16 %i.nh, 0, !dbg !25227
  br i1 %.not.i.not.us.us.i.us.us.i.i, label %._crit_edge.split.us.us.split.i.us.i.i, label %.lr.ph.us.i.us.us.i.i, !dbg !25228

._crit_edge.split.us.us.split.i.us.i.i:           ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.us.us.i.i, %.split43.us.split.i.us.i.i
    #dbg_declare(ptr poison, !22707, !DIExpression(), !19362)
    #dbg_declare(ptr poison, !22710, !DIExpression(), !19363)
  %i.ni = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.us.i.us.i.i, splat (i8 -1), !dbg !25244
    #dbg_value(<16 x i8> poison, !22679, !DIExpression(), !19364)
    #dbg_declare(ptr poison, !22712, !DIExpression(), !19366)
    #dbg_value(<16 x i8> poison, !22715, !DIExpression(), !19367)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !22716, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !19368)
  %i.nj = bitcast <16 x i1> %i.ni to i16, !dbg !25245
    #dbg_value(i16 %i.nj, !22811, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19370)
  %i.nk = icmp eq i16 %i.nj, 0, !dbg !25246
  br i1 %i.nk, label %bb.ac, label %select.unfold91.i, !dbg !25246, !prof !6117

bb.ac:                                            ; preds = %._crit_edge.split.us.us.split.i.us.i.i
    #dbg_value(ptr undef, !22647, !DIExpression(), !19249)
    #dbg_value(i64 %i.kb, !22651, !DIExpression(), !19371)
  %i.nl = add i64 %.sroa.9.0.i.us.i.us.i.i, 16, !dbg !25247 ; 2 uses
    #dbg_value(i64 %i.nl, !22588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19262)
  %i.nm = add i64 %.sroa.01.0.i.us.i.us.i.i, %i.nl, !dbg !25248
    #dbg_value(!DIArgList(i64 %i.nm, i64 %i.kb), !22588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19262)
  br label %.split43.us.split.i.us.i.i, !dbg !25249

.split43.us.split.us.i.i.i:                       ; preds = %.split43.us.i.i.i, %bb.ag
  %.sroa.9.0.i.us.us.i.i.i = phi i64 [ %i.ot, %bb.ag ], [ 0, %.split43.us.i.i.i ], !dbg !25222
  %.pn.us.us.i.i.i = phi i64 [ %i.ou, %bb.ag ], [ %i.jw, %.split43.us.i.i.i ]
  %.sroa.01.0.i.us.us.i.i.i = and i64 %.pn.us.us.i.i.i, %i.kb, !dbg !25222 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.us.us.i.i.i, !22588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19262)
    #dbg_value(i64 %.sroa.9.0.i.us.us.i.i.i, !22588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19262)
    #dbg_value(i64 %.sroa.01.0.i.us.us.i.i.i, !22664, !DIExpression(), !19253)
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.sroa.01.0.i.us.us.i.i.i, !dbg !25223
    #dbg_value(ptr %i.nn, !22689, !DIExpression(), !19265)
    #dbg_value(ptr %i.nn, !22696, !DIExpression(), !19267)
    #dbg_value(<2 x i64> zeroinitializer, !22700, !DIExpression(), !19268)
    #dbg_value(ptr %i.nn, !22702, !DIExpression(), !19270)
    #dbg_value(ptr undef, !22703, !DIExpression(), !19270)
    #dbg_value(i64 16, !22704, !DIExpression(), !19270)
  %.sroa.0.0.copyload.i31.us.us.i.i.i = load <16 x i8>, ptr %i.nn, align 1, !dbg !25224, !noalias !23037 ; 2 uses
    #dbg_value(<2 x i64> poison, !22700, !DIExpression(), !19268)
    #dbg_value(<2 x i64> poison, !22589, !DIExpression(), !19274)
    #dbg_value(<2 x i64> poison, !22677, !DIExpression(), !19261)
    #dbg_value(<2 x i64> poison, !22684, !DIExpression(), !19275)
    #dbg_value(<2 x i64> poison, !22677, !DIExpression(), !19258)
    #dbg_declare(ptr poison, !22707, !DIExpression(), !19277)
    #dbg_declare(ptr poison, !22710, !DIExpression(), !19278)
  %i.no = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.us.us.i.i.i, %i.ke, !dbg !25225
    #dbg_value(<16 x i8> poison, !22678, !DIExpression(), !19279)
    #dbg_declare(ptr poison, !22712, !DIExpression(), !19281)
    #dbg_value(<16 x i8> poison, !22715, !DIExpression(), !19282)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !22716, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !19283)
  %i.np = bitcast <16 x i1> %i.no to i16, !dbg !25226 ; 2 uses
    #dbg_value(i16 %i.np, !22590, !DIExpression(), !19284)
    #dbg_value(ptr undef, !22630, !DIExpression(), !19247)
    #dbg_value(i16 %i.np, !22725, !DIExpression(), !19286)
  %.not.i.not37.us.us.i.i.i = icmp eq i16 %i.np, 0, !dbg !25227
  br i1 %.not.i.not37.us.us.i.i.i, label %._crit_edge.split.us.us.split.us.us.i.i.i, label %.lr.ph.us.us.i.i.i, !dbg !25228

.lr.ph.us.us.i.i.i:                               ; preds = %.split43.us.split.us.i.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.us.us.i.i.i
  %.sroa.06.0.i38.us.us.us.us.i.i.i = phi i16 [ %i.op, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.us.us.i.i.i ], [ %i.np, %.split43.us.split.us.i.i.i ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i38.us.us.us.us.i.i.i, !22590, !DIExpression(), !19284)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.us.us.i.i.i, !22729, !DIExpression(), !19287)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.us.us.i.i.i, !22735, !DIExpression(), !19289)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.us.us.i.i.i, !22742, !DIExpression(), !19291)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.us.us.i.i.i, !22747, !DIExpression(), !19293)
  %i.nq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i38.us.us.us.us.i.i.i, i1 true), !dbg !25229
  %i.nr = zext nneg i16 %i.nq to i64, !dbg !25230
    #dbg_value(i64 %i.nr, !22634, !DIExpression(), !19294)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.us.us.i.i.i, !22753, !DIExpression(), !19296)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i38.us.us.us.us.i.i.i, i16 %.sroa.06.0.i38.us.us.us.us.i.i.i), !22590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !19284)
    #dbg_value(i64 %i.nr, !22591, !DIExpression(), !19297)
  %i.ns = add i64 %.sroa.01.0.i.us.us.i.i.i, %i.nr, !dbg !25231
  %i.nt = and i64 %i.ns, %i.kb, !dbg !25231
    #dbg_value(i64 %i.nt, !22592, !DIExpression(), !19298)
    #dbg_value(ptr poison, !23038, !DIExpression(DW_OP_deref, DW_OP_deref), !19301)
    #dbg_value(ptr poison, !23043, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !19301)
    #dbg_value(i64 %i.nt, !23042, !DIExpression(), !19301)
    #dbg_value(i64 %i.nt, !23045, !DIExpression(), !19306)
    #dbg_value(i64 %i.nt, !23056, !DIExpression(), !19310)
    #dbg_value(i64 %i.nt, !23064, !DIExpression(), !19313)
    #dbg_value(i64 1, !23068, !DIExpression(), !19319)
    #dbg_value(ptr %i.gq, !23049, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !19306)
    #dbg_value(ptr %i.kc, !23060, !DIExpression(), !19310)
    #dbg_value(ptr %i.kc, !23067, !DIExpression(), !19313)
  %i.nu = sub nsw i64 0, %i.nt, !dbg !25232       ; 2 uses
  %i.nv = getelementptr inbounds [64 x i8], ptr %i.kc, i64 %i.nu, !dbg !25233 ; 6 uses
    #dbg_value(ptr poison, !23079, !DIExpression(), !19320)
    #dbg_value(ptr poison, !23074, !DIExpression(), !19321)
    #dbg_value(ptr %i.nv, !23067, !DIExpression(), !19319)
  %i.nw = getelementptr inbounds i8, ptr %i.nv, i64 -64, !dbg !25234
    #dbg_value(ptr poison, !23081, !DIExpression(DW_OP_deref), !19324)
    #dbg_value(ptr %i.nw, !23085, !DIExpression(), !19324)
    #dbg_value(ptr %i.eb, !6384, !DIExpression(), !19326)
    #dbg_value(ptr %i.nw, !6388, !DIExpression(), !19326)
    #dbg_value(ptr poison, !6392, !DIExpression(), !19328)
    #dbg_value(ptr poison, !6396, !DIExpression(), !19329)
    #dbg_value(ptr %i.eb, !6401, !DIExpression(), !19331)
    #dbg_value(ptr %i.nw, !6403, !DIExpression(), !19331)
    #dbg_value(ptr %i.eb, !6406, !DIExpression(), !19333)
    #dbg_value(ptr %i.nw, !6410, !DIExpression(), !19333)
    #dbg_value(i16 %i.kf, !6412, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19334)
  %i.nx = load i16, ptr %i.nw, align 4, !dbg !25235, !range !6312, !alias.scope !23088, !noalias !23089, !noundef !1600
    #dbg_value(i16 %i.nx, !6413, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19345)
  %i.ny = icmp eq i16 %.fr58.i.i.i, %i.nx, !dbg !25236
  br i1 %i.ny, label %bb.ad, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.us.us.i.i.i, !dbg !25236, !prof !23090

bb.ad:                                            ; preds = %.lr.ph.us.us.i.i.i
    #dbg_value(i1 %i.kg, !6412, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !19334)
    #dbg_value(ptr %i.eb, !6418, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19372)
    #dbg_value(ptr %i.eb, !6469, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19375)
    #dbg_value(ptr %i.nw, !6419, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19372)
    #dbg_value(ptr %i.nw, !6473, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19375)
    #dbg_value(ptr poison, !6478, !DIExpression(), !19376)
    #dbg_value(ptr poison, !6479, !DIExpression(), !19377)
  %i.nz = getelementptr inbounds i8, ptr %i.nv, i64 -60, !dbg !25250
  %i.oa = getelementptr inbounds i8, ptr %i.nv, i64 -36, !dbg !25250
  %i.ob = load i16, ptr %i.oa, align 4, !dbg !25250, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.oc = icmp eq i16 %i.kn, %i.ob, !dbg !25250
  br i1 %i.oc, label %bb.ae, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.us.us.i.i.i, !dbg !25250, !prof !23090

bb.ae:                                            ; preds = %bb.ad
  %i.od = getelementptr inbounds i8, ptr %i.nv, i64 -44, !dbg !25250
  %i.oe = load i32, ptr %i.od, align 4, !dbg !25250, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.of = icmp eq i32 %i.kp, %i.oe, !dbg !25250
  br i1 %i.of, label %bb.af, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.us.us.i.i.i, !dbg !25250, !prof !23090

bb.af:                                            ; preds = %bb.ae
  %i.og = getelementptr inbounds i8, ptr %i.nv, i64 -40, !dbg !25250
  %i.oh = load i32, ptr %i.og, align 4, !dbg !25250, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.oi = icmp eq i32 %i.kr, %i.oh, !dbg !25250
  br i1 %i.oi, label %.split.i.i.i.i.us.us.us.us.i.i.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.us.us.i.i.i, !dbg !25250, !prof !23090

.split.i.i.i.i.us.us.us.us.i.i.i:                 ; preds = %bb.af
    #dbg_value(ptr %i.eb, !6485, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19379)
    #dbg_value(ptr %i.nw, !6489, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19379)
  %i.oj = load i128, ptr %i.nz, align 4, !dbg !25251, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.ok = icmp eq i128 %i.ks, %i.oj, !dbg !25251
  br i1 %i.ok, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.us.us.us.us.i.i.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.us.us.i.i.i, !dbg !25239, !prof !23090

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.us.us.us.us.i.i.i: ; preds = %.split.i.i.i.i.us.us.us.us.i.i.i
    #dbg_value(ptr %i.eb, !6459, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19357)
    #dbg_value(ptr %i.nw, !6463, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19358)
  %i.ol = getelementptr inbounds i8, ptr %i.nv, i64 -32, !dbg !25240
  %i.om = load i8, ptr %i.ol, align 4, !dbg !25240, !range !6382, !alias.scope !23091, !noalias !23089, !noundef !1600
  %i.on = icmp eq i8 %i.om, 2, !dbg !25240
    #dbg_value(!DIArgList(i1 true, i1 %i.on), !22811, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19360)
  br i1 %i.on, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBQ_16ConnectionHandleNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBS_.exit.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.us.us.i.i.i, !dbg !25241, !prof !23093

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.us.us.i.i.i: ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.us.us.us.us.i.i.i, %.split.i.i.i.i.us.us.us.us.i.i.i, %bb.af, %bb.ae, %bb.ad, %.lr.ph.us.us.i.i.i
  %i.oo = add i16 %.sroa.06.0.i38.us.us.us.us.i.i.i, -1, !dbg !25242
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i38.us.us.us.us.i.i.i, i16 %i.oo), !22590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !19284)
  %i.op = and i16 %i.oo, %.sroa.06.0.i38.us.us.us.us.i.i.i, !dbg !25243 ; 2 uses
    #dbg_value(i16 %i.op, !22590, !DIExpression(), !19284)
    #dbg_value(ptr undef, !22630, !DIExpression(), !19247)
    #dbg_value(i16 %i.op, !22725, !DIExpression(), !19286)
  %.not.i.not.us.us.us.us.i.i.i = icmp eq i16 %i.op, 0, !dbg !25227
  br i1 %.not.i.not.us.us.us.us.i.i.i, label %._crit_edge.split.us.us.split.us.us.i.i.i, label %.lr.ph.us.us.i.i.i, !dbg !25228

._crit_edge.split.us.us.split.us.us.i.i.i:        ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.us.us.i.i.i, %.split43.us.split.us.i.i.i
    #dbg_declare(ptr poison, !22707, !DIExpression(), !19362)
    #dbg_declare(ptr poison, !22710, !DIExpression(), !19363)
  %i.oq = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.us.us.i.i.i, splat (i8 -1), !dbg !25244
    #dbg_value(<16 x i8> poison, !22679, !DIExpression(), !19364)
    #dbg_declare(ptr poison, !22712, !DIExpression(), !19366)
    #dbg_value(<16 x i8> poison, !22715, !DIExpression(), !19367)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !22716, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !19368)
  %i.or = bitcast <16 x i1> %i.oq to i16, !dbg !25245
    #dbg_value(i16 %i.or, !22811, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19370)
  %i.os = icmp eq i16 %i.or, 0, !dbg !25246
  br i1 %i.os, label %bb.ag, label %select.unfold91.i, !dbg !25246, !prof !6117

bb.ag:                                            ; preds = %._crit_edge.split.us.us.split.us.us.i.i.i
    #dbg_value(ptr undef, !22647, !DIExpression(), !19249)
    #dbg_value(i64 %i.kb, !22651, !DIExpression(), !19371)
  %i.ot = add i64 %.sroa.9.0.i.us.us.i.i.i, 16, !dbg !25247 ; 2 uses
    #dbg_value(i64 %i.ot, !22588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19262)
  %i.ou = add i64 %.sroa.01.0.i.us.us.i.i.i, %i.ot, !dbg !25248
    #dbg_value(!DIArgList(i64 %i.ou, i64 %i.kb), !22588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19262)
  br label %.split43.us.split.us.i.i.i, !dbg !25249

.split43.us.split.i.i.i:                          ; preds = %.split43.us.split.i.preheader.i.i, %bb.al
  %.sroa.9.0.i.us.i.i.i = phi i64 [ %i.qe, %bb.al ], [ 0, %.split43.us.split.i.preheader.i.i ], !dbg !25222
  %.pn.us.i.i.i = phi i64 [ %i.qf, %bb.al ], [ %i.jw, %.split43.us.split.i.preheader.i.i ]
  %.sroa.01.0.i.us.i.i.i = and i64 %.pn.us.i.i.i, %i.kb, !dbg !25222 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.us.i.i.i, !22588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19262)
    #dbg_value(i64 %.sroa.9.0.i.us.i.i.i, !22588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19262)
    #dbg_value(i64 %.sroa.01.0.i.us.i.i.i, !22664, !DIExpression(), !19253)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.sroa.01.0.i.us.i.i.i, !dbg !25223
    #dbg_value(ptr %i.ov, !22689, !DIExpression(), !19265)
    #dbg_value(ptr %i.ov, !22696, !DIExpression(), !19267)
    #dbg_value(<2 x i64> zeroinitializer, !22700, !DIExpression(), !19268)
    #dbg_value(ptr %i.ov, !22702, !DIExpression(), !19270)
    #dbg_value(ptr undef, !22703, !DIExpression(), !19270)
    #dbg_value(i64 16, !22704, !DIExpression(), !19270)
  %.sroa.0.0.copyload.i31.us.i.i.i = load <16 x i8>, ptr %i.ov, align 1, !dbg !25224, !noalias !23037 ; 2 uses
    #dbg_value(<2 x i64> poison, !22700, !DIExpression(), !19268)
    #dbg_value(<2 x i64> poison, !22589, !DIExpression(), !19274)
    #dbg_value(<2 x i64> poison, !22677, !DIExpression(), !19261)
    #dbg_value(<2 x i64> poison, !22684, !DIExpression(), !19275)
    #dbg_value(<2 x i64> poison, !22677, !DIExpression(), !19258)
    #dbg_declare(ptr poison, !22707, !DIExpression(), !19277)
    #dbg_declare(ptr poison, !22710, !DIExpression(), !19278)
  %i.ow = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.us.i.i.i, %i.ke, !dbg !25225
    #dbg_value(<16 x i8> poison, !22678, !DIExpression(), !19279)
    #dbg_declare(ptr poison, !22712, !DIExpression(), !19281)
    #dbg_value(<16 x i8> poison, !22715, !DIExpression(), !19282)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !22716, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !19283)
  %i.ox = bitcast <16 x i1> %i.ow to i16, !dbg !25226 ; 2 uses
    #dbg_value(i16 %i.ox, !22590, !DIExpression(), !19284)
    #dbg_value(ptr undef, !22630, !DIExpression(), !19247)
    #dbg_value(i16 %i.ox, !22725, !DIExpression(), !19286)
  %.not.i.not37.us.i.i.i = icmp eq i16 %i.ox, 0, !dbg !25227
  br i1 %.not.i.not37.us.i.i.i, label %._crit_edge.split.us.us.split.i.i.i, label %.lr.ph.us.i.i.i, !dbg !25228

.lr.ph.us.i.i.i:                                  ; preds = %.split43.us.split.i.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.i.i
  %.sroa.06.0.i38.us.us.i.i.i = phi i16 [ %i.qa, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.i.i ], [ %i.ox, %.split43.us.split.i.i.i ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i38.us.us.i.i.i, !22590, !DIExpression(), !19284)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.i.i.i, !22729, !DIExpression(), !19287)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.i.i.i, !22735, !DIExpression(), !19289)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.i.i.i, !22742, !DIExpression(), !19291)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.i.i.i, !22747, !DIExpression(), !19293)
  %i.oy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i38.us.us.i.i.i, i1 true), !dbg !25229
  %i.oz = zext nneg i16 %i.oy to i64, !dbg !25230
    #dbg_value(i64 %i.oz, !22634, !DIExpression(), !19294)
    #dbg_value(i16 %.sroa.06.0.i38.us.us.i.i.i, !22753, !DIExpression(), !19296)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i38.us.us.i.i.i, i16 %.sroa.06.0.i38.us.us.i.i.i), !22590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !19284)
    #dbg_value(i64 %i.oz, !22591, !DIExpression(), !19297)
  %i.pa = add i64 %.sroa.01.0.i.us.i.i.i, %i.oz, !dbg !25231
  %i.pb = and i64 %i.pa, %i.kb, !dbg !25231
    #dbg_value(i64 %i.pb, !22592, !DIExpression(), !19298)
    #dbg_value(ptr poison, !23038, !DIExpression(DW_OP_deref, DW_OP_deref), !19301)
    #dbg_value(ptr poison, !23043, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !19301)
    #dbg_value(i64 %i.pb, !23042, !DIExpression(), !19301)
    #dbg_value(i64 %i.pb, !23045, !DIExpression(), !19306)
    #dbg_value(i64 %i.pb, !23056, !DIExpression(), !19310)
    #dbg_value(i64 %i.pb, !23064, !DIExpression(), !19313)
    #dbg_value(i64 1, !23068, !DIExpression(), !19319)
    #dbg_value(ptr %i.gq, !23049, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !19306)
    #dbg_value(ptr %i.kc, !23060, !DIExpression(), !19310)
    #dbg_value(ptr %i.kc, !23067, !DIExpression(), !19313)
  %i.pc = sub nsw i64 0, %i.pb, !dbg !25232       ; 2 uses
  %i.pd = getelementptr inbounds [64 x i8], ptr %i.kc, i64 %i.pc, !dbg !25233 ; 7 uses
    #dbg_value(ptr poison, !23079, !DIExpression(), !19320)
    #dbg_value(ptr poison, !23074, !DIExpression(), !19321)
    #dbg_value(ptr %i.pd, !23067, !DIExpression(), !19319)
  %i.pe = getelementptr inbounds i8, ptr %i.pd, i64 -64, !dbg !25234
    #dbg_value(ptr poison, !23081, !DIExpression(DW_OP_deref), !19324)
    #dbg_value(ptr %i.pe, !23085, !DIExpression(), !19324)
    #dbg_value(ptr %i.eb, !6384, !DIExpression(), !19326)
    #dbg_value(ptr %i.pe, !6388, !DIExpression(), !19326)
    #dbg_value(ptr poison, !6392, !DIExpression(), !19328)
    #dbg_value(ptr poison, !6396, !DIExpression(), !19329)
    #dbg_value(ptr %i.eb, !6401, !DIExpression(), !19331)
    #dbg_value(ptr %i.pe, !6403, !DIExpression(), !19331)
    #dbg_value(ptr %i.eb, !6406, !DIExpression(), !19333)
    #dbg_value(ptr %i.pe, !6410, !DIExpression(), !19333)
    #dbg_value(i16 %i.kf, !6412, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19334)
  %i.pf = load i16, ptr %i.pe, align 4, !dbg !25235, !range !6312, !alias.scope !23088, !noalias !23089, !noundef !1600
    #dbg_value(i16 %i.pf, !6413, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19345)
  %i.pg = icmp eq i16 %.fr58.i.i.i, %i.pf, !dbg !25236
  br i1 %i.pg, label %bb.ah, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.i.i, !dbg !25236, !prof !23090

bb.ah:                                            ; preds = %.lr.ph.us.i.i.i
    #dbg_value(i1 %i.kg, !6412, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !19334)
    #dbg_value(ptr %i.eb, !6418, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19372)
    #dbg_value(ptr %i.eb, !6469, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19375)
    #dbg_value(ptr %i.pe, !6419, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19372)
    #dbg_value(ptr %i.pe, !6473, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19375)
    #dbg_value(ptr poison, !6478, !DIExpression(), !19376)
    #dbg_value(ptr poison, !6479, !DIExpression(), !19377)
  %i.ph = getelementptr inbounds i8, ptr %i.pd, i64 -60, !dbg !25250
  %i.pi = getelementptr inbounds i8, ptr %i.pd, i64 -36, !dbg !25250
  %i.pj = load i16, ptr %i.pi, align 4, !dbg !25250, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.pk = icmp eq i16 %i.kn, %i.pj, !dbg !25250
  br i1 %i.pk, label %bb.ai, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.i.i, !dbg !25250, !prof !23090

bb.ai:                                            ; preds = %bb.ah
  %i.pl = getelementptr inbounds i8, ptr %i.pd, i64 -44, !dbg !25250
  %i.pm = load i32, ptr %i.pl, align 4, !dbg !25250, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.pn = icmp eq i32 %i.kp, %i.pm, !dbg !25250
  br i1 %i.pn, label %bb.aj, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.i.i, !dbg !25250, !prof !23090

bb.aj:                                            ; preds = %bb.ai
  %i.po = getelementptr inbounds i8, ptr %i.pd, i64 -40, !dbg !25250
  %i.pp = load i32, ptr %i.po, align 4, !dbg !25250, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.pq = icmp eq i32 %i.kr, %i.pp, !dbg !25250
  br i1 %i.pq, label %.split.i.i.i.i.us.us.i.i.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.i.i, !dbg !25250, !prof !23090

.split.i.i.i.i.us.us.i.i.i:                       ; preds = %bb.aj
    #dbg_value(ptr %i.eb, !6485, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19379)
    #dbg_value(ptr %i.pe, !6489, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !19379)
  %i.pr = load i128, ptr %i.ph, align 4, !dbg !25251, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.ps = icmp eq i128 %i.ks, %i.pr, !dbg !25251
  br i1 %i.ps, label %bb.ak, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.i.i, !dbg !25239, !prof !23090

bb.ak:                                            ; preds = %.split.i.i.i.i.us.us.i.i.i
    #dbg_value(ptr %i.eb, !6459, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19357)
    #dbg_value(ptr %i.pe, !6463, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19358)
  %i.pt = getelementptr inbounds i8, ptr %i.pd, i64 -32, !dbg !25240
  %i.pu = load i8, ptr %i.pt, align 4, !dbg !25240, !range !6382, !alias.scope !23091, !noalias !23089, !noundef !1600
    #dbg_value(ptr %i.eb, !6465, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19382)
    #dbg_value(ptr %i.eb, !6494, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19384)
    #dbg_value(ptr %i.pe, !6466, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19385)
    #dbg_value(ptr %i.pe, !6498, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19384)
    #dbg_value(i8 %i.kt, !6499, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19386)
    #dbg_value(i8 %i.pu, !6500, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19387)
  %i.pv = icmp eq i8 %.fr.i.i.i, %i.pu
  br i1 %i.pv, label %.split30.us.us.i.i.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.i.i, !dbg !25252, !prof !23095

.split30.us.us.i.i.i:                             ; preds = %bb.ak
    #dbg_value(ptr %i.eb, !6501, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19396)
    #dbg_value(ptr %i.eb, !6520, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19399)
    #dbg_value(ptr %i.pe, !6502, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19396)
    #dbg_value(ptr %i.pe, !6521, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19399)
    #dbg_value(ptr poison, !6527, !DIExpression(), !19400)
    #dbg_value(ptr poison, !6528, !DIExpression(), !19401)
  %i.pw = getelementptr inbounds i8, ptr %i.pd, i64 -31, !dbg !25256
  %i.px = load i32, ptr %i.pw, align 1, !dbg !25256, !alias.scope !23091, !noalias !23089, !noundef !1600
  %i.py = icmp eq i32 %i.kw, %i.px, !dbg !25256
    #dbg_value(i1 %i.py, !22811, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19360)
  br i1 %i.py, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBQ_16ConnectionHandleNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBS_.exit.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.i.i, !dbg !25241, !prof !23093

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.i.i: ; preds = %.split30.us.us.i.i.i, %bb.ak, %.split.i.i.i.i.us.us.i.i.i, %bb.aj, %bb.ai, %bb.ah, %.lr.ph.us.i.i.i
  %i.pz = add i16 %.sroa.06.0.i38.us.us.i.i.i, -1, !dbg !25242
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i38.us.us.i.i.i, i16 %i.pz), !22590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !19284)
  %i.qa = and i16 %i.pz, %.sroa.06.0.i38.us.us.i.i.i, !dbg !25243 ; 2 uses
    #dbg_value(i16 %i.qa, !22590, !DIExpression(), !19284)
    #dbg_value(ptr undef, !22630, !DIExpression(), !19247)
    #dbg_value(i16 %i.qa, !22725, !DIExpression(), !19286)
  %.not.i.not.us.us.i.i.i = icmp eq i16 %i.qa, 0, !dbg !25227
  br i1 %.not.i.not.us.us.i.i.i, label %._crit_edge.split.us.us.split.i.i.i, label %.lr.ph.us.i.i.i, !dbg !25228

._crit_edge.split.us.us.split.i.i.i:              ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.us.us.i.i.i, %.split43.us.split.i.i.i
    #dbg_declare(ptr poison, !22707, !DIExpression(), !19362)
    #dbg_declare(ptr poison, !22710, !DIExpression(), !19363)
  %i.qb = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.us.i.i.i, splat (i8 -1), !dbg !25244
    #dbg_value(<16 x i8> poison, !22679, !DIExpression(), !19364)
    #dbg_declare(ptr poison, !22712, !DIExpression(), !19366)
    #dbg_value(<16 x i8> poison, !22715, !DIExpression(), !19367)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !22716, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !19368)
  %i.qc = bitcast <16 x i1> %i.qb to i16, !dbg !25245
    #dbg_value(i16 %i.qc, !22811, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19370)
  %i.qd = icmp eq i16 %i.qc, 0, !dbg !25246
  br i1 %i.qd, label %bb.al, label %select.unfold91.i, !dbg !25246, !prof !6117

bb.al:                                            ; preds = %._crit_edge.split.us.us.split.i.i.i
    #dbg_value(ptr undef, !22647, !DIExpression(), !19249)
    #dbg_value(i64 %i.kb, !22651, !DIExpression(), !19371)
  %i.qe = add i64 %.sroa.9.0.i.us.i.i.i, 16, !dbg !25247 ; 2 uses
    #dbg_value(i64 %i.qe, !22588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19262)
  %i.qf = add i64 %.sroa.01.0.i.us.i.i.i, %i.qe, !dbg !25248
    #dbg_value(!DIArgList(i64 %i.qf, i64 %i.kb), !22588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19262)
  br label %.split43.us.split.i.i.i, !dbg !25249

.split43.i.i.i:                                   ; preds = %.split43.i.preheader.i.i, %bb.ar
  %.sroa.9.0.i.i.i65.i = phi i64 [ %i.si, %bb.ar ], [ 0, %.split43.i.preheader.i.i ], !dbg !25222
  %.pn.i.i66.i = phi i64 [ %i.sj, %bb.ar ], [ %i.jw, %.split43.i.preheader.i.i ]
  %.sroa.01.0.i.i.i67.i = and i64 %.pn.i.i66.i, %i.kb, !dbg !25222 ; 4 uses
    #dbg_value(i64 %.sroa.01.0.i.i.i67.i, !22588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19262)
    #dbg_value(i64 %.sroa.9.0.i.i.i65.i, !22588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19262)
    #dbg_value(i64 %.sroa.01.0.i.i.i67.i, !22664, !DIExpression(), !19253)
  %i.qg = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.sroa.01.0.i.i.i67.i, !dbg !25223
    #dbg_value(ptr %i.qg, !22689, !DIExpression(), !19265)
    #dbg_value(ptr %i.qg, !22696, !DIExpression(), !19267)
    #dbg_value(<2 x i64> zeroinitializer, !22700, !DIExpression(), !19268)
    #dbg_value(ptr %i.qg, !22702, !DIExpression(), !19270)
    #dbg_value(ptr undef, !22703, !DIExpression(), !19270)
    #dbg_value(i64 16, !22704, !DIExpression(), !19270)
  %.sroa.0.0.copyload.i31.i.i.i = load <16 x i8>, ptr %i.qg, align 1, !dbg !25224, !noalias !23037 ; 2 uses
    #dbg_value(<2 x i64> poison, !22700, !DIExpression(), !19268)
    #dbg_value(<2 x i64> poison, !22589, !DIExpression(), !19274)
    #dbg_value(<2 x i64> poison, !22677, !DIExpression(), !19261)
    #dbg_value(<2 x i64> poison, !22684, !DIExpression(), !19275)
    #dbg_value(<2 x i64> poison, !22677, !DIExpression(), !19258)
    #dbg_declare(ptr poison, !22707, !DIExpression(), !19277)
    #dbg_declare(ptr poison, !22710, !DIExpression(), !19278)
  %i.qh = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i, %i.ke, !dbg !25225
    #dbg_value(<16 x i8> poison, !22678, !DIExpression(), !19279)
    #dbg_declare(ptr poison, !22712, !DIExpression(), !19281)
    #dbg_value(<16 x i8> poison, !22715, !DIExpression(), !19282)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !22716, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !19283)
  %i.qi = bitcast <16 x i1> %i.qh to i16, !dbg !25226 ; 3 uses
    #dbg_value(i16 %i.qi, !22590, !DIExpression(), !19284)
    #dbg_value(ptr undef, !22630, !DIExpression(), !19247)
    #dbg_value(i16 %i.qi, !22725, !DIExpression(), !19286)
  %.not.i.not37.i.i.i = icmp eq i16 %i.qi, 0, !dbg !25227
  br i1 %.not.i.not37.i.i.i, label %._crit_edge.split.i.i.i, label %.lr.ph.i.i68.preheader.i, !dbg !25228

.lr.ph.i.i68.preheader.i:                         ; preds = %.split43.i.i.i
  br i1 %i.ku, label %.lr.ph.i.i68.us.i, label %.lr.ph.i.i68.i

.lr.ph.i.i68.us.i:                                ; preds = %.lr.ph.i.i68.preheader.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.us.i
  %.sroa.06.0.i38.i.i.us.i = phi i16 [ %i.rh, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.us.i ], [ %i.qi, %.lr.ph.i.i68.preheader.i ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i38.i.i.us.i, !22590, !DIExpression(), !19284)
    #dbg_value(i16 %.sroa.06.0.i38.i.i.us.i, !22729, !DIExpression(), !19287)
    #dbg_value(i16 %.sroa.06.0.i38.i.i.us.i, !22735, !DIExpression(), !19289)
    #dbg_value(i16 %.sroa.06.0.i38.i.i.us.i, !22742, !DIExpression(), !19291)
    #dbg_value(i16 %.sroa.06.0.i38.i.i.us.i, !22747, !DIExpression(), !19293)
  %i.qj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i38.i.i.us.i, i1 true), !dbg !25229
  %i.qk = zext nneg i16 %i.qj to i64, !dbg !25230
    #dbg_value(i64 %i.qk, !22634, !DIExpression(), !19294)
    #dbg_value(i16 %.sroa.06.0.i38.i.i.us.i, !22753, !DIExpression(), !19296)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i38.i.i.us.i, i16 %.sroa.06.0.i38.i.i.us.i), !22590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !19284)
    #dbg_value(i64 %i.qk, !22591, !DIExpression(), !19297)
  %i.ql = add i64 %.sroa.01.0.i.i.i67.i, %i.qk, !dbg !25231
  %i.qm = and i64 %i.ql, %i.kb, !dbg !25231
    #dbg_value(i64 %i.qm, !22592, !DIExpression(), !19298)
    #dbg_value(ptr poison, !23038, !DIExpression(DW_OP_deref, DW_OP_deref), !19301)
    #dbg_value(ptr poison, !23043, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !19301)
    #dbg_value(i64 %i.qm, !23042, !DIExpression(), !19301)
    #dbg_value(i64 %i.qm, !23045, !DIExpression(), !19306)
    #dbg_value(i64 %i.qm, !23056, !DIExpression(), !19310)
    #dbg_value(i64 %i.qm, !23064, !DIExpression(), !19313)
    #dbg_value(i64 1, !23068, !DIExpression(), !19319)
    #dbg_value(ptr %i.gq, !23049, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !19306)
    #dbg_value(ptr %i.kc, !23060, !DIExpression(), !19310)
    #dbg_value(ptr %i.kc, !23067, !DIExpression(), !19313)
  %i.qn = sub nsw i64 0, %i.qm, !dbg !25232       ; 2 uses
  %i.qo = getelementptr inbounds [64 x i8], ptr %i.kc, i64 %i.qn, !dbg !25233 ; 5 uses
    #dbg_value(ptr poison, !23079, !DIExpression(), !19320)
    #dbg_value(ptr poison, !23074, !DIExpression(), !19321)
    #dbg_value(ptr %i.qo, !23067, !DIExpression(), !19319)
  %i.qp = getelementptr inbounds i8, ptr %i.qo, i64 -64, !dbg !25234
    #dbg_value(ptr poison, !23081, !DIExpression(DW_OP_deref), !19324)
    #dbg_value(ptr %i.qp, !23085, !DIExpression(), !19324)
    #dbg_value(ptr %i.eb, !6384, !DIExpression(), !19326)
    #dbg_value(ptr %i.qp, !6388, !DIExpression(), !19326)
    #dbg_value(ptr poison, !6392, !DIExpression(), !19328)
    #dbg_value(ptr poison, !6396, !DIExpression(), !19329)
    #dbg_value(ptr %i.eb, !6401, !DIExpression(), !19331)
    #dbg_value(ptr %i.qp, !6403, !DIExpression(), !19331)
    #dbg_value(ptr %i.eb, !6406, !DIExpression(), !19333)
    #dbg_value(ptr %i.qp, !6410, !DIExpression(), !19333)
    #dbg_value(i16 %i.kf, !6412, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19334)
  %i.qq = load i16, ptr %i.qp, align 4, !dbg !25235, !range !6312, !alias.scope !23088, !noalias !23089, !noundef !1600
    #dbg_value(i16 %i.qq, !6413, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19345)
  %i.qr = icmp eq i16 %.fr58.i.i.i, %i.qq, !dbg !25236
  br i1 %i.qr, label %bb.am, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.us.i, !dbg !25236, !prof !23090

bb.am:                                            ; preds = %.lr.ph.i.i68.us.i
    #dbg_value(i1 %i.kg, !6412, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !19334)
    #dbg_value(ptr %i.eb, !6415, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19346)
    #dbg_value(ptr %i.eb, !6423, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19349)
    #dbg_value(ptr %i.qp, !6416, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19346)
    #dbg_value(ptr %i.qp, !6427, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19349)
    #dbg_value(ptr poison, !6433, !DIExpression(), !19350)
    #dbg_value(ptr poison, !6434, !DIExpression(), !19351)
  %i.qs = getelementptr inbounds i8, ptr %i.qo, i64 -58, !dbg !25237
  %i.qt = load i16, ptr %i.qs, align 2, !dbg !25237, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.qu = icmp eq i16 %i.ki, %i.qt, !dbg !25237
  br i1 %i.qu, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i.i.i.i.us.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.us.i, !dbg !25237, !prof !23090

_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i.i.i.i.us.i: ; preds = %bb.am
  %i.qv = getelementptr inbounds i8, ptr %i.qo, i64 -62, !dbg !25237
    #dbg_value(ptr %i.eb, !6441, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19353)
    #dbg_value(ptr %i.qp, !6445, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19353)
  %i.qw = load i32, ptr %i.qv, align 2, !dbg !25238, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.qx = icmp eq i32 %i.kk, %i.qw, !dbg !25238
  br i1 %i.qx, label %bb.an, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.us.i, !dbg !25239, !prof !23090

bb.an:                                            ; preds = %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i.i.i.i.us.i
    #dbg_value(ptr %i.eb, !6459, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19357)
    #dbg_value(ptr %i.qp, !6463, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19358)
  %i.qy = getelementptr inbounds i8, ptr %i.qo, i64 -32, !dbg !25240
  %i.qz = load i8, ptr %i.qy, align 4, !dbg !25240, !range !6382, !alias.scope !23091, !noalias !23089, !noundef !1600 ; 3 uses
  %i.ra = icmp eq i8 %i.qz, 2, !dbg !25240
  br i1 %i.ra, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.us.i, label %bb.ao, !dbg !25252

bb.ao:                                            ; preds = %bb.an
    #dbg_value(ptr %i.eb, !6465, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19382)
    #dbg_value(ptr %i.eb, !6494, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19384)
    #dbg_value(ptr %i.qp, !6466, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19385)
    #dbg_value(ptr %i.qp, !6498, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19384)
    #dbg_value(i8 %i.kt, !6499, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19386)
  %i.rb = trunc nuw i8 %i.qz to i1, !dbg !25253
    #dbg_value(i8 %i.qz, !6500, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19387)
  %i.rc = icmp eq i8 %.fr.i.i.i, %i.qz, !dbg !25254
  br i1 %i.rc, label %.split.i.i.us.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.us.i, !dbg !25254, !prof !23090

.split.i.i.us.i:                                  ; preds = %bb.ao
  call void @llvm.assume(i1 %i.rb), !dbg !25254, !noalias !23094
    #dbg_value(ptr %i.eb, !6503, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19388)
    #dbg_value(ptr %i.eb, !6508, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19391)
    #dbg_value(ptr %i.qp, !6504, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19388)
    #dbg_value(ptr %i.qp, !6509, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19391)
    #dbg_value(ptr poison, !6514, !DIExpression(), !19392)
    #dbg_value(ptr poison, !6515, !DIExpression(), !19393)
  %i.rd = getelementptr inbounds i8, ptr %i.qo, i64 -31, !dbg !25255
  %i.re = load i128, ptr %i.rd, align 1, !dbg !25255, !alias.scope !23091, !noalias !23089, !noundef !1600
  %i.rf = icmp eq i128 %i.kx, %i.re, !dbg !25255
    #dbg_value(i1 %i.rf, !22811, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19360)
  br i1 %i.rf, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBQ_16ConnectionHandleNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBS_.exit.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.us.i, !dbg !25241, !prof !23093

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.us.i: ; preds = %.split.i.i.us.i, %bb.ao, %bb.an, %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i.i.i.i.us.i, %bb.am, %.lr.ph.i.i68.us.i
  %i.rg = add i16 %.sroa.06.0.i38.i.i.us.i, -1, !dbg !25242
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i38.i.i.us.i, i16 %i.rg), !22590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !19284)
  %i.rh = and i16 %i.rg, %.sroa.06.0.i38.i.i.us.i, !dbg !25243 ; 2 uses
    #dbg_value(i16 %i.rh, !22590, !DIExpression(), !19284)
    #dbg_value(ptr undef, !22630, !DIExpression(), !19247)
    #dbg_value(i16 %i.rh, !22725, !DIExpression(), !19286)
  %.not.i.not.i.i69.us.i = icmp eq i16 %i.rh, 0, !dbg !25227
  br i1 %.not.i.not.i.i69.us.i, label %._crit_edge.split.i.i.i, label %.lr.ph.i.i68.us.i, !dbg !25228

.lr.ph.i.i68.i:                                   ; preds = %.lr.ph.i.i68.preheader.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.i
  %.sroa.06.0.i38.i.i.i = phi i16 [ %i.sh, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.i ], [ %i.qi, %.lr.ph.i.i68.preheader.i ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i38.i.i.i, !22590, !DIExpression(), !19284)
    #dbg_value(i16 %.sroa.06.0.i38.i.i.i, !22729, !DIExpression(), !19287)
    #dbg_value(i16 %.sroa.06.0.i38.i.i.i, !22735, !DIExpression(), !19289)
    #dbg_value(i16 %.sroa.06.0.i38.i.i.i, !22742, !DIExpression(), !19291)
    #dbg_value(i16 %.sroa.06.0.i38.i.i.i, !22747, !DIExpression(), !19293)
  %i.ri = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i38.i.i.i, i1 true), !dbg !25229
  %i.rj = zext nneg i16 %i.ri to i64, !dbg !25230
    #dbg_value(i64 %i.rj, !22634, !DIExpression(), !19294)
    #dbg_value(i16 %.sroa.06.0.i38.i.i.i, !22753, !DIExpression(), !19296)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i38.i.i.i, i16 %.sroa.06.0.i38.i.i.i), !22590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !19284)
    #dbg_value(i64 %i.rj, !22591, !DIExpression(), !19297)
  %i.rk = add i64 %.sroa.01.0.i.i.i67.i, %i.rj, !dbg !25231
  %i.rl = and i64 %i.rk, %i.kb, !dbg !25231
    #dbg_value(i64 %i.rl, !22592, !DIExpression(), !19298)
    #dbg_value(ptr poison, !23038, !DIExpression(DW_OP_deref, DW_OP_deref), !19301)
    #dbg_value(ptr poison, !23043, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !19301)
    #dbg_value(i64 %i.rl, !23042, !DIExpression(), !19301)
    #dbg_value(i64 %i.rl, !23045, !DIExpression(), !19306)
    #dbg_value(i64 %i.rl, !23056, !DIExpression(), !19310)
    #dbg_value(i64 %i.rl, !23064, !DIExpression(), !19313)
    #dbg_value(i64 1, !23068, !DIExpression(), !19319)
    #dbg_value(ptr %i.gq, !23049, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !19306)
    #dbg_value(ptr %i.kc, !23060, !DIExpression(), !19310)
    #dbg_value(ptr %i.kc, !23067, !DIExpression(), !19313)
  %i.rm = sub nsw i64 0, %i.rl, !dbg !25232       ; 2 uses
  %i.rn = getelementptr inbounds [64 x i8], ptr %i.kc, i64 %i.rm, !dbg !25233 ; 5 uses
    #dbg_value(ptr poison, !23079, !DIExpression(), !19320)
    #dbg_value(ptr poison, !23074, !DIExpression(), !19321)
    #dbg_value(ptr %i.rn, !23067, !DIExpression(), !19319)
  %i.ro = getelementptr inbounds i8, ptr %i.rn, i64 -64, !dbg !25234
    #dbg_value(ptr poison, !23081, !DIExpression(DW_OP_deref), !19324)
    #dbg_value(ptr %i.ro, !23085, !DIExpression(), !19324)
    #dbg_value(ptr %i.eb, !6384, !DIExpression(), !19326)
    #dbg_value(ptr %i.ro, !6388, !DIExpression(), !19326)
    #dbg_value(ptr poison, !6392, !DIExpression(), !19328)
    #dbg_value(ptr poison, !6396, !DIExpression(), !19329)
    #dbg_value(ptr %i.eb, !6401, !DIExpression(), !19331)
    #dbg_value(ptr %i.ro, !6403, !DIExpression(), !19331)
    #dbg_value(ptr %i.eb, !6406, !DIExpression(), !19333)
    #dbg_value(ptr %i.ro, !6410, !DIExpression(), !19333)
    #dbg_value(i16 %i.kf, !6412, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19334)
  %i.rp = load i16, ptr %i.ro, align 4, !dbg !25235, !range !6312, !alias.scope !23088, !noalias !23089, !noundef !1600
    #dbg_value(i16 %i.rp, !6413, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19345)
  %i.rq = icmp eq i16 %.fr58.i.i.i, %i.rp, !dbg !25236
  br i1 %i.rq, label %bb.ap, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.i, !dbg !25236, !prof !23090

bb.ap:                                            ; preds = %.lr.ph.i.i68.i
    #dbg_value(i1 %i.kg, !6412, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !19334)
    #dbg_value(ptr %i.eb, !6415, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19346)
    #dbg_value(ptr %i.eb, !6423, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19349)
    #dbg_value(ptr %i.ro, !6416, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19346)
    #dbg_value(ptr %i.ro, !6427, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19349)
    #dbg_value(ptr poison, !6433, !DIExpression(), !19350)
    #dbg_value(ptr poison, !6434, !DIExpression(), !19351)
  %i.rr = getelementptr inbounds i8, ptr %i.rn, i64 -58, !dbg !25237
  %i.rs = load i16, ptr %i.rr, align 2, !dbg !25237, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.rt = icmp eq i16 %i.ki, %i.rs, !dbg !25237
  br i1 %i.rt, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.i, !dbg !25237, !prof !23090

_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i: ; preds = %bb.ap
  %i.ru = getelementptr inbounds i8, ptr %i.rn, i64 -62, !dbg !25237
    #dbg_value(ptr %i.eb, !6441, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19353)
    #dbg_value(ptr %i.ro, !6445, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !19353)
  %i.rv = load i32, ptr %i.ru, align 2, !dbg !25238, !alias.scope !23088, !noalias !23089, !noundef !1600
  %i.rw = icmp eq i32 %i.kk, %i.rv, !dbg !25238
  br i1 %i.rw, label %bb.aq, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.i, !dbg !25239, !prof !23090

bb.aq:                                            ; preds = %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i
    #dbg_value(ptr %i.eb, !6459, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19357)
    #dbg_value(ptr %i.ro, !6463, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19358)
  %i.rx = getelementptr inbounds i8, ptr %i.rn, i64 -32, !dbg !25240
  %i.ry = load i8, ptr %i.rx, align 4, !dbg !25240, !range !6382, !alias.scope !23091, !noalias !23089, !noundef !1600
    #dbg_value(ptr %i.eb, !6465, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19382)
    #dbg_value(ptr %i.eb, !6494, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19384)
    #dbg_value(ptr %i.ro, !6466, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19385)
    #dbg_value(ptr %i.ro, !6498, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !19384)
    #dbg_value(i8 %i.kt, !6499, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19386)
    #dbg_value(i8 %i.ry, !6500, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !19387)
  %i.rz = icmp eq i8 %.fr.i.i.i, %i.ry
  br i1 %i.rz, label %.split30.i.i.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.i, !dbg !25252, !prof !23095

.split30.i.i.i:                                   ; preds = %bb.aq
    #dbg_value(ptr %i.eb, !6501, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19396)
    #dbg_value(ptr %i.eb, !6520, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19399)
    #dbg_value(ptr %i.ro, !6502, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19396)
    #dbg_value(ptr %i.ro, !6521, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !19399)
    #dbg_value(ptr poison, !6527, !DIExpression(), !19400)
    #dbg_value(ptr poison, !6528, !DIExpression(), !19401)
  %i.sa = getelementptr inbounds i8, ptr %i.rn, i64 -31, !dbg !25256
  %i.sb = load i32, ptr %i.sa, align 1, !dbg !25256, !alias.scope !23091, !noalias !23089, !noundef !1600
  %i.sc = icmp eq i32 %i.kw, %i.sb, !dbg !25256
    #dbg_value(i1 %i.sc, !22811, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19360)
  br i1 %i.sc, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBQ_16ConnectionHandleNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBS_.exit.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.i, !dbg !25241, !prof !23093

._crit_edge.split.i.i.i:                          ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.us.i, %.split43.i.i.i
    #dbg_declare(ptr poison, !22707, !DIExpression(), !19362)
    #dbg_declare(ptr poison, !22710, !DIExpression(), !19363)
  %i.sd = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i, splat (i8 -1), !dbg !25244
    #dbg_value(<16 x i8> poison, !22679, !DIExpression(), !19364)
    #dbg_declare(ptr poison, !22712, !DIExpression(), !19366)
    #dbg_value(<16 x i8> poison, !22715, !DIExpression(), !19367)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !22716, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !19368)
  %i.se = bitcast <16 x i1> %i.sd to i16, !dbg !25245
    #dbg_value(i16 %i.se, !22811, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19370)
  %i.sf = icmp eq i16 %i.se, 0, !dbg !25246
  br i1 %i.sf, label %bb.ar, label %select.unfold91.i, !dbg !25246, !prof !6117

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.thread.i.i.i: ; preds = %.split30.i.i.i, %bb.aq, %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i, %bb.ap, %.lr.ph.i.i68.i
  %i.sg = add i16 %.sroa.06.0.i38.i.i.i, -1, !dbg !25242
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i38.i.i.i, i16 %i.sg), !22590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !19284)
  %i.sh = and i16 %i.sg, %.sroa.06.0.i38.i.i.i, !dbg !25243 ; 2 uses
    #dbg_value(i16 %i.sh, !22590, !DIExpression(), !19284)
    #dbg_value(ptr undef, !22630, !DIExpression(), !19247)
    #dbg_value(i16 %i.sh, !22725, !DIExpression(), !19286)
  %.not.i.not.i.i69.i = icmp eq i16 %i.sh, 0, !dbg !25227
  br i1 %.not.i.not.i.i69.i, label %._crit_edge.split.i.i.i, label %.lr.ph.i.i68.i, !dbg !25228

bb.ar:                                            ; preds = %._crit_edge.split.i.i.i
    #dbg_value(ptr undef, !22647, !DIExpression(), !19249)
    #dbg_value(i64 %i.kb, !22651, !DIExpression(), !19371)
  %i.si = add i64 %.sroa.9.0.i.i.i65.i, 16, !dbg !25247 ; 2 uses
    #dbg_value(i64 %i.si, !22588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19262)
  %i.sj = add i64 %.sroa.01.0.i.i.i67.i, %i.si, !dbg !25248
    #dbg_value(!DIArgList(i64 %i.sj, i64 %i.kb), !22588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19262)
  br label %.split43.i.i.i, !dbg !25249

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtCshovLROGBtMy_11quinn_proto8endpoint16ConnectionHandleNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EB1K_.exit.thread.i: ; preds = %._crit_edge.i.i81.i, %select.unfold91.i, %.noexc471
    #dbg_value(ptr %i.gd, !23096, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !19406)
    #dbg_value(ptr %i.gd, !23101, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !19409)
    #dbg_value(ptr %i.gd, !23104, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !19412)
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ff, i64 136, !dbg !25257
  %i.sl = load i64, ptr %i.sk, align 8, !dbg !25257, !alias.scope !22522, !noundef !1600 ; 2 uses
    #dbg_value(ptr poison, !22419, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19413)
    #dbg_value(ptr poison, !23107, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19416)
    #dbg_value(ptr poison, !23112, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19420)
    #dbg_value(ptr poison, !23118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19423)
    #dbg_value(i64 %i.sl, !22419, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19413)
    #dbg_value(i64 %i.sl, !23107, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19416)
    #dbg_value(i64 %i.sl, !23112, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19420)
    #dbg_value(i64 %i.sl, !23118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19423)
  %i.sm = icmp ult i64 %i.sl, 16, !dbg !25258
  br i1 %i.sm, label %.thread509, label %bb.aw, !dbg !25258

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBQ_16ConnectionHandleNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBS_.exit.i: ; preds = %.split30.i.i.i, %.split.i.i.us.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.i.us.us.i.i, %.split30.us.us.i.i.i, %.split.us.us.i.us.us.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.us.us.us.us.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.qn, %.split.i.i.us.i ], [ %i.lf, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.i.us.us.i.i ], [ %i.pc, %.split30.us.us.i.i.i ], [ %i.mh, %.split.us.us.i.us.us.i.i ], [ %i.nu, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtBU_16ConnectionHandleEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1G_E0E0BW_.exit.us.us.us.us.i.i.i ], [ %i.rm, %.split30.i.i.i ], !dbg !25259
    #dbg_value(i64 poison, !23031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19424)
    #dbg_value(i64 poison, !23031, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19424)
  %i.sn = getelementptr inbounds [64 x i8], ptr %i.kc, i64 %.pre-phi.i.i, !dbg !25259
  %i.so = getelementptr inbounds i8, ptr %i.sn, i64 -8, !dbg !25260
  %i.sp = load i64, ptr %i.so, align 8, !dbg !25261, !noundef !1600
    #dbg_value(i64 %i.sp, !22417, !DIExpression(), !19425)
  br label %.thread504, !dbg !25169

select.unfold91.i:                                ; preds = %._crit_edge.split.i.i.i, %._crit_edge.split.i.us.i.i, %._crit_edge.split.us.us.split.i.i.i, %._crit_edge.split.us.us.split.i.us.i.i, %._crit_edge.split.us.us.split.us.us.i.i.i, %bb.t
    #dbg_value(ptr %i.gq, !23125, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !19428)
    #dbg_value(ptr %i.eb, !23129, !DIExpression(), !19429)
    #dbg_value(ptr %i.gq, !23132, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !19434)
    #dbg_value(ptr %i.eb, !23136, !DIExpression(), !19434)
    #dbg_value(ptr %i.eb, !23140, !DIExpression(), !19437)
    #dbg_value(ptr %i.gq, !23146, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !19440)
    #dbg_value(ptr %i.gq, !23151, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !19443)
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 248, !dbg !25262
  %i.sr = load i64, ptr %i.sq, align 8, !dbg !25262, !alias.scope !23156, !noundef !1600
  %i.ss = icmp eq i64 %i.sr, 0, !dbg !25263
  br i1 %i.ss, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrNtNtCshovLROGBtMy_11quinn_proto8endpoint16ConnectionHandleNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EB1K_.exit.thread.i, label %bb.as, !dbg !25264

bb.as:                                            ; preds = %select.unfold91.i
    #dbg_value(ptr %i.gq, !23132, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !19434)
    #dbg_value(ptr %i.gq, !23146, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !19440)
    #dbg_value(ptr %i.gq, !23151, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !19443)
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !25265
    #dbg_value(ptr %i.st, !23143, !DIExpression(), !19437)
  %i.su = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtNtBT_3net11socket_addr10SocketAddrECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.st, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(52) %i.eb)
          to label %.noexc473 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !25266 ; 2 uses

.noexc473:                                        ; preds = %bb.as
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 224, !dbg !25267
    #dbg_value(ptr %i.sv, !23132, !DIExpression(), !19434)
    #dbg_value(ptr %i.sv, !23146, !DIExpression(), !19440)
    #dbg_value(ptr %i.sv, !23151, !DIExpression(), !19443)
    #dbg_value(i64 %i.su, !23137, !DIExpression(), !19446)
    #dbg_value(i64 %i.su, !23157, !DIExpression(), !19456)
    #dbg_value(ptr %i.sv, !23173, !DIExpression(), !19456)
    #dbg_value(ptr %i.eb, !23174, !DIExpression(), !19456)
  call void @llvm.experimental.noalias.scope.decl(metadata !23182), !dbg !25268
    #dbg_value(ptr poison, !22576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19468)
    #dbg_value(ptr %i.eb, !23197, !DIExpression(), !19469)
    #dbg_value(ptr %i.sv, !23195, !DIExpression(), !19469)
    #dbg_value(i64 %i.su, !23196, !DIExpression(), !19469)
  call void @llvm.experimental.noalias.scope.decl(metadata !23201), !dbg !25269
    #dbg_value(ptr poison, !22630, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !19473)
    #dbg_value(ptr poison, !22647, !DIExpression(), !19475)
    #dbg_value(ptr %i.sv, !22585, !DIExpression(), !19468)
    #dbg_value(ptr %i.sv, !22653, !DIExpression(), !19477)
    #dbg_value(ptr %i.sv, !22659, !DIExpression(), !19479)
    #dbg_value(i64 %i.su, !22586, !DIExpression(), !19468)
    #dbg_value(i64 %i.su, !22667, !DIExpression(), !19481)
    #dbg_value(i64 %i.su, !22657, !DIExpression(), !19477)
    #dbg_value(ptr undef, !22576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19468)
    #dbg_value(ptr poison, !22576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19468)
    #dbg_value(i8 -1, !22673, !DIExpression(), !19484)
  %i.sw = lshr i64 %i.su, 57, !dbg !25270
  %i.sx = trunc nuw nsw i64 %i.sw to i8, !dbg !25271
    #dbg_value(i8 %i.sx, !22587, !DIExpression(), !19485)
    #dbg_value(i8 %i.sx, !22673, !DIExpression(), !19487)
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 232, !dbg !25272
  %i.sz = load i64, ptr %i.sy, align 8, !dbg !25272, !alias.scope !23202, !noundef !1600 ; 2 uses
    #dbg_value(!DIArgList(i64 %i.su, i64 %i.sz), !22588, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !19488)
    #dbg_value(i64 0, !22588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19488)
  %i.ta = load ptr, ptr %i.sv, align 8, !alias.scope !23202, !nonnull !1600, !noundef !1600 ; 2 uses
  %i.tb = insertelement <16 x i8> poison, i8 %i.sx, i64 0
  %i.tc = shufflevector <16 x i8> %i.tb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.at, !dbg !25273

bb.at:                                            ; preds = %bb.av, %.noexc473
  %.sroa.9.0.i.i.i73.i = phi i64 [ 0, %.noexc473 ], [ %i.tt, %bb.av ], !dbg !25274
  %.pn.i.i74.i = phi i64 [ %i.su, %.noexc473 ], [ %i.tu, %bb.av ]
  %.sroa.01.0.i.i.i75.i = and i64 %.pn.i.i74.i, %i.sz, !dbg !25274 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i.i75.i, !22588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19488)
    #dbg_value(i64 %.sroa.9.0.i.i.i73.i, !22588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19488)
    #dbg_value(i64 %.sroa.01.0.i.i.i75.i, !22664, !DIExpression(), !19479)
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 %.sroa.01.0.i.i.i75.i, !dbg !25275
    #dbg_value(ptr %i.td, !22689, !DIExpression(), !19491)
    #dbg_value(ptr %i.td, !22696, !DIExpression(), !19493)
    #dbg_value(<2 x i64> zeroinitializer, !22700, !DIExpression(), !19494)
    #dbg_value(ptr %i.td, !22702, !DIExpression(), !19496)
    #dbg_value(ptr undef, !22703, !DIExpression(), !19496)
    #dbg_value(i64 16, !22704, !DIExpression(), !19496)
  %.sroa.0.0.copyload.i29.i.i76.i = load <16 x i8>, ptr %i.td, align 1, !dbg !25276, !noalias !23203 ; 2 uses
    #dbg_value(<2 x i64> poison, !22700, !DIExpression(), !19494)
    #dbg_value(<2 x i64> poison, !22589, !DIExpression(), !19500)
    #dbg_value(<2 x i64> poison, !22677, !DIExpression(), !19487)
    #dbg_value(<2 x i64> poison, !22684, !DIExpression(), !19501)
    #dbg_value(<2 x i64> poison, !22677, !DIExpression(), !19484)
    #dbg_declare(ptr poison, !22707, !DIExpression(), !19503)
    #dbg_declare(ptr poison, !22710, !DIExpression(), !19504)
  %i.te = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i76.i, %i.tc, !dbg !25277
    #dbg_value(<16 x i8> poison, !22678, !DIExpression(), !19505)
    #dbg_declare(ptr poison, !22712, !DIExpression(), !19507)
    #dbg_value(<16 x i8> poison, !22715, !DIExpression(), !19508)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !22716, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !19509)
  %i.tf = bitcast <16 x i1> %i.te to i16, !dbg !25278 ; 2 uses
    #dbg_value(i16 %i.tf, !22590, !DIExpression(), !19510)
    #dbg_value(ptr undef, !22630, !DIExpression(), !19473)
    #dbg_value(i16 %i.tf, !22725, !DIExpression(), !19512)
  %.not.i.not35.i.i77.i = icmp eq i16 %i.tf, 0, !dbg !25279
  br i1 %.not.i.not35.i.i77.i, label %._crit_edge.i.i81.i, label %.lr.ph.i.i78.i, !dbg !25280

.lr.ph.i.i78.i:                                   ; preds = %bb.at, %bb.au
  %.sroa.06.0.i36.i.i79.i = phi i16 [ %i.ts, %bb.au ], [ %i.tf, %bb.at ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i36.i.i79.i, !22590, !DIExpression(), !19510)
    #dbg_value(i16 %.sroa.06.0.i36.i.i79.i, !22729, !DIExpression(), !19513)
    #dbg_value(i16 %.sroa.06.0.i36.i.i79.i, !22735, !DIExpression(), !19515)
    #dbg_value(i16 %.sroa.06.0.i36.i.i79.i, !22742, !DIExpression(), !19517)
    #dbg_value(i16 %.sroa.06.0.i36.i.i79.i, !22747, !DIExpression(), !19519)
  %i.tg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i36.i.i79.i, i1 true), !dbg !25281
  %i.th = zext nneg i16 %i.tg to i64, !dbg !25282
    #dbg_value(i64 %i.th, !22634, !DIExpression(), !19520)
    #dbg_value(i16 %.sroa.06.0.i36.i.i79.i, !22753, !DIExpression(), !19522)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i.i79.i, i16 %.sroa.06.0.i36.i.i79.i), !22590, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !19510)
    #dbg_value(i64 %i.th, !22591, !DIExpression(), !19523)
  %i.ti = add i64 %.sroa.01.0.i.i.i75.i, %i.th, !dbg !25283
  %i.tj = and i64 %i.ti, %i.sz, !dbg !25283
    #dbg_value(i64 %i.tj, !22592, !DIExpression(), !19524)
    #dbg_value(ptr poison, !23204, !DIExpression(DW_OP_deref, DW_OP_deref), !19527)
    #dbg_value(ptr poison, !23209, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !19527)
    #dbg_value(i64 %i.tj, !23208, !DIExpression(), !19527)
    #dbg_value(i64 %i.tj, !23211, !DIExpression(), !19532)
    #dbg_value(i64 %i.tj, !23222, !DIExpression(), !19536)
    #dbg_value(i64 %i.tj, !23230, !DIExpression(), !19539)
    #dbg_value(i64 1, !23234, !DIExpression(), !19545)
    #dbg_value(ptr %i.gq, !23215, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !19532)
    #dbg_value(ptr %i.ta, !23226, !DIExpression(), !19536)
    #dbg_value(ptr %i.ta, !23233, !DIExpression(), !19539)
  %i.tk = sub nsw i64 0, %i.tj, !dbg !25284
  %i.tl = getelementptr inbounds [40 x i8], ptr %i.ta, i64 %i.tk, !dbg !25285 ; 2 uses
    #dbg_value(ptr poison, !23245, !DIExpression(), !19546)
    #dbg_value(ptr poison, !23240, !DIExpression(), !19547)
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCsiNSaSRGY86g_9rand_core5blockINtB5_8BlockRngINtCshJYlBnZeDKb_8chacha2010ChaChaCoreNtBT_3R12NtNtBT_8variants6LegacyEE10fill_bytesCshovLROGBtMy_11quinn_proto:_RNvXNtNtCsiNSaSRGY86g_9rand_core4word6sealedmNtB2_6Sealed10into_usize.exit
    #dbg_value(ptr %i.j, !28669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28676)
    #dbg_value(ptr %i.j, !29019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29022)
    #dbg_value(i64 %i.ce, !29019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29022)
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull %i.cd, i64 noundef %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66), !dbg !29126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !29127
  %i.ch = add i64 %i.by, 1, !dbg !29128
    #dbg_value(i64 %i.ch, !28539, !DIExpression(), !28693)
    #dbg_value(i64 %i.ch, !28581, !DIExpression(), !28584)
  br label %bb.n, !dbg !29129

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ce, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #29, !dbg !29130
  unreachable, !dbg !29130

bb.r:                                             ; preds = %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsiNSaSRGY86g_9rand_core5blockINtB3r_8BlockRngINtCshJYlBnZeDKb_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECshovLROGBtMy_11quinn_proto.exit
  %i.ci = shl i64 %.sroa.7.0.i, 2, !dbg !29131
    #dbg_value(!DIArgList(i64 %.sroa.0.073, i64 %i.ci), !28538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !28692)
  %i.cj = add i64 %i.ci, %.sroa.0.073, !dbg !29132 ; 2 uses
    #dbg_value(i64 %i.cj, !28538, !DIExpression(), !28692)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !29119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !29120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !29121
    #dbg_value(i64 %i.by, !28581, !DIExpression(), !28584)
    #dbg_value(i64 %i.by, !28539, !DIExpression(), !28693)
  %i.ck = icmp ult i64 %i.cj, %2, !dbg !29030
  br i1 %i.ck, label %bb.a, label %.loopexit, !dbg !29030
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs8_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_10RetryError13into_incoming(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([376 x i8]) align 8 captures(none) dereferenceable(376) initializes((0, 376)) %0, ptr noalias noundef nonnull align 8 captures(address) %1) unnamed_addr #2 !dbg !29133 {
bb.a:
    #dbg_value(ptr %1, !29147, !DIExpression(), !29149)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1, i64 376, i1 false), !dbg !29192
    #dbg_value(ptr poison, !29151, !DIExpression(), !29165)
    #dbg_value(ptr %1, !29154, !DIExpression(), !29166)
    #dbg_value(i64 8, !29155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29167)
    #dbg_value(i64 8, !29168, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29173)
    #dbg_value(i64 8, !29174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29179)
    #dbg_value(i64 8, !29180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29184)
    #dbg_value(i64 8, !29185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29189)
    #dbg_value(i64 376, !29155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29167)
    #dbg_value(i64 376, !29168, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29173)
    #dbg_value(i64 376, !29174, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29179)
    #dbg_value(i64 376, !29180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29184)
    #dbg_value(i64 376, !29185, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29189)
    #dbg_value(ptr poison, !29169, !DIExpression(), !29190)
    #dbg_value(ptr poison, !29175, !DIExpression(), !29191)
    #dbg_value(ptr %1, !29170, !DIExpression(), !29173)
    #dbg_value(ptr %1, !29176, !DIExpression(), !29179)
    #dbg_value(ptr %1, !29181, !DIExpression(), !29184)
    #dbg_value(ptr %1, !29186, !DIExpression(), !29189)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 376, i64 noundef 8) #27, !dbg !29193
  ret void, !dbg !29194
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCsdIYt8sV98we_5bytes5bytes11static_drop(ptr noalias nofree readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #3 !dbg !29195 {
bb.a:
    #dbg_value(ptr poison, !29196, !DIExpression(), !29200)
    #dbg_value(ptr poison, !29197, !DIExpression(), !29200)
    #dbg_value(i64 poison, !29198, !DIExpression(), !29200)
  ret void, !dbg !29201
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCsdIYt8sV98we_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 !dbg !29203 {
bb.a:
    #dbg_value(ptr poison, !29208, !DIExpression(), !29210)
    #dbg_value(ptr %2, !29205, !DIExpression(), !29210)
    #dbg_value(i64 %3, !29206, !DIExpression(), !29210)
    #dbg_value(ptr %2, !29207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29211)
    #dbg_value(ptr %2, !29212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29218)
    #dbg_value(i64 %3, !29207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29211)
    #dbg_value(i64 %3, !29212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29218)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29219
  store ptr %2, ptr %i.a, align 8, !dbg !29219
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !29219
  store i64 %3, ptr %i.b, align 8, !dbg !29219
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !29219
  store ptr null, ptr %i.c, align 8, !dbg !29219
  store ptr @13, ptr %0, align 8, !dbg !29219
  ret void, !dbg !29220
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCsdIYt8sV98we_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 !dbg !29221 {
bb.a:
    #dbg_value(ptr poison, !29222, !DIExpression(), !29224)
  ret i1 false, !dbg !29225
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(52) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(52) %1) unnamed_addr #5 !dbg !1245 {
bb.a:
    #dbg_value(ptr %0, !6384, !DIExpression(), !29283)
    #dbg_value(ptr %1, !6388, !DIExpression(), !29283)
    #dbg_value(ptr poison, !6392, !DIExpression(), !29285)
    #dbg_value(ptr poison, !6396, !DIExpression(), !29286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29287), !dbg !29293
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29288), !dbg !29293
    #dbg_value(ptr %0, !6401, !DIExpression(), !29230)
    #dbg_value(ptr %1, !6403, !DIExpression(), !29230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29289), !dbg !29294
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29290), !dbg !29294
    #dbg_value(ptr %0, !6406, !DIExpression(), !29235)
    #dbg_value(ptr %1, !6410, !DIExpression(), !29235)
  %i.a = load i16, ptr %0, align 4, !dbg !29295, !range !6312, !alias.scope !29291, !noundef !1600 ; 2 uses
    #dbg_value(i16 %i.a, !6412, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !29236)
  %i.b = load i16, ptr %1, align 4, !dbg !29296, !range !6312, !alias.scope !29292, !noundef !1600
    #dbg_value(i16 %i.b, !6413, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !29237)
  %i.c = icmp eq i16 %i.a, %i.b, !dbg !29297
  br i1 %i.c, label %bb.b, label %_RNvXsI_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_9FourTupleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !29297

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i16 %i.a to i1, !dbg !29297
    #dbg_value(i1 %i.d, !6412, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !29236)
  br i1 %i.d, label %bb.c, label %bb.d, !dbg !29297

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !6418, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !29238)
    #dbg_value(ptr %0, !6469, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !29241)
    #dbg_value(ptr %1, !6419, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !29238)
    #dbg_value(ptr %1, !6473, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !29241)
    #dbg_value(ptr poison, !6478, !DIExpression(), !29242)
    #dbg_value(ptr poison, !6479, !DIExpression(), !29243)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !29298
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !29298
  %i.g = load i16, ptr %i.f, align 4, !dbg !29298, !alias.scope !29291, !noundef !1600
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !29298
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28, !dbg !29298
  %i.j = load i16, ptr %i.i, align 4, !dbg !29298, !alias.scope !29292, !noundef !1600
  %i.k = icmp eq i16 %i.g, %i.j, !dbg !29298
  br i1 %i.k, label %bb.e, label %_RNvXsI_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_9FourTupleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !29298

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !6415, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !29244)
    #dbg_value(ptr %0, !6423, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !29247)
    #dbg_value(ptr %1, !6416, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !29244)
    #dbg_value(ptr %1, !6427, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !29247)
    #dbg_value(ptr poison, !6433, !DIExpression(), !29248)
    #dbg_value(ptr poison, !6434, !DIExpression(), !29249)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6, !dbg !29299
  %i.m = load i16, ptr %i.l, align 2, !dbg !29299, !alias.scope !29291, !noundef !1600
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 6, !dbg !29299
  %i.o = load i16, ptr %i.n, align 2, !dbg !29299, !alias.scope !29292, !noundef !1600
  %i.p = icmp eq i16 %i.m, %i.o, !dbg !29299
  br i1 %i.p, label %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i, label %_RNvXsI_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_9FourTupleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !29299

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !29298
  %i.r = load i32, ptr %i.q, align 4, !dbg !29298, !alias.scope !29291, !noundef !1600
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20, !dbg !29298
  %i.t = load i32, ptr %i.s, align 4, !dbg !29298, !alias.scope !29292, !noundef !1600
  %i.u = icmp eq i32 %i.r, %i.t, !dbg !29298
  br i1 %i.u, label %bb.f, label %_RNvXsI_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_9FourTupleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !29298

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !29298
  %i.w = load i32, ptr %i.v, align 4, !dbg !29298, !alias.scope !29291, !noundef !1600
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !29298
  %i.y = load i32, ptr %i.x, align 4, !dbg !29298, !alias.scope !29292, !noundef !1600
  %i.z = icmp eq i32 %i.w, %i.y, !dbg !29298
  br i1 %i.z, label %.split.i, label %_RNvXsI_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_9FourTupleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !29298

.split.i:                                         ; preds = %bb.f
    #dbg_value(ptr %0, !6485, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !29251)
    #dbg_value(ptr %1, !6489, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !29251)
  %i.aa = load i128, ptr %i.e, align 4, !dbg !29300, !alias.scope !29291, !noundef !1600
  %i.ab = load i128, ptr %i.h, align 4, !dbg !29300, !alias.scope !29292, !noundef !1600
  %i.ac = icmp eq i128 %i.aa, %i.ab, !dbg !29300
  br i1 %i.ac, label %bb.g, label %_RNvXsI_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_9FourTupleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !29294

_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !29299
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !29299
    #dbg_value(ptr %0, !6441, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !29255)
    #dbg_value(ptr %1, !6445, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !29255)
  %i.af = load i32, ptr %i.ae, align 2, !dbg !29301, !alias.scope !29291, !noundef !1600
  %i.ag = load i32, ptr %i.ad, align 2, !dbg !29301, !alias.scope !29292, !noundef !1600
  %i.ah = icmp eq i32 %i.af, %i.ag, !dbg !29301
  br i1 %i.ah, label %bb.g, label %_RNvXsI_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_9FourTupleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !29294

bb.g:                                             ; preds = %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i, %.split.i
    #dbg_value(ptr %0, !6459, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !29259)
    #dbg_value(ptr %1, !6463, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !29260)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !29302
  %i.aj = load i8, ptr %i.ai, align 4, !dbg !29302, !range !6382, !alias.scope !29287, !noundef !1600 ; 3 uses
  %.not.i = icmp eq i8 %i.aj, 2, !dbg !29302      ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !29302
  %i.al = load i8, ptr %i.ak, align 4, !dbg !29302, !range !6382, !alias.scope !29288, !noundef !1600 ; 3 uses
  %i.am = icmp eq i8 %i.al, 2, !dbg !29302        ; 2 uses
  %brmerge.i = or i1 %.not.i, %i.am, !dbg !29303
  %.mux.i = and i1 %.not.i, %i.am, !dbg !29303
  br i1 %brmerge.i, label %_RNvXsI_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_9FourTupleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %bb.h, !dbg !29303

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %0, !6465, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !29261)
    #dbg_value(ptr %0, !6494, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !29263)
    #dbg_value(ptr %1, !6466, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !29264)
    #dbg_value(ptr %1, !6498, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !29263)
    #dbg_value(i8 %i.aj, !6499, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !29265)
  %i.an = trunc nuw i8 %i.al to i1, !dbg !29304
    #dbg_value(i8 %i.al, !6500, !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !29266)
  %i.ao = icmp eq i8 %i.aj, %i.al, !dbg !29305
  br i1 %i.ao, label %bb.i, label %_RNvXsI_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_9FourTupleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !29305

bb.i:                                             ; preds = %bb.h
  %i.ap = trunc nuw i8 %i.aj to i1, !dbg !29306
  br i1 %i.ap, label %bb.j, label %bb.k, !dbg !29305

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.assume(i1 %i.an), !dbg !29305
    #dbg_value(ptr %0, !6503, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !29267)
    #dbg_value(ptr %0, !6508, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !29270)
    #dbg_value(ptr %1, !6504, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !29267)
    #dbg_value(ptr %1, !6509, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !29270)
    #dbg_value(ptr poison, !6514, !DIExpression(), !29271)
    #dbg_value(ptr poison, !6515, !DIExpression(), !29272)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 33, !dbg !29307
  %i.ar = load i128, ptr %i.aq, align 1, !dbg !29307, !alias.scope !29287, !noundef !1600
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 33, !dbg !29307
  %i.at = load i128, ptr %i.as, align 1, !dbg !29307, !alias.scope !29288, !noundef !1600
  %i.au = icmp eq i128 %i.ar, %i.at, !dbg !29307
  br label %_RNvXsI_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_9FourTupleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !29305

bb.k:                                             ; preds = %bb.i
    #dbg_value(ptr %0, !6501, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !29275)
    #dbg_value(ptr %0, !6520, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !29278)
    #dbg_value(ptr %1, !6502, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !29275)
    #dbg_value(ptr %1, !6521, !DIExpression(DW_OP_plus_uconst, 33, DW_OP_stack_value), !29278)
    #dbg_value(ptr poison, !6527, !DIExpression(), !29279)
    #dbg_value(ptr poison, !6528, !DIExpression(), !29280)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 33, !dbg !29308
  %i.aw = load i32, ptr %i.av, align 1, !dbg !29308, !alias.scope !29287, !noundef !1600
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 33, !dbg !29308
  %i.ay = load i32, ptr %i.ax, align 1, !dbg !29308, !alias.scope !29288, !noundef !1600
  %i.az = icmp eq i32 %i.aw, %i.ay, !dbg !29308
  br label %_RNvXsI_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_9FourTupleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, !dbg !29305

_RNvXsI_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_9FourTupleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %.split.i, %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i, %bb.g, %bb.h, %bb.j, %bb.k
  %.sroa.0.0.shrunk.i = phi i1 [ %i.au, %bb.j ], [ %i.az, %bb.k ], [ %.mux.i, %bb.g ], [ false, %_RNvXse_NtNtCskKLDkoKarTP_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3cmp9PartialEq2eq.exit.i ], [ false, %bb.c ], [ false, %bb.h ], [ false, %.split.i ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %.sroa.0.0.shrunk.i, !dbg !29309
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs5Qxcy9OyWl9_4rand4rngs3stdNtB5_6StdRngNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !29310 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !29315, !DIExpression(), !29318)
    #dbg_value(ptr %1, !29316, !DIExpression(), !29318)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29319
  store ptr %0, ptr %i.a, align 8, !dbg !29319
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @108), !dbg !29320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29321
  ret i1 %i.b, !dbg !29322
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto8endpoint14ConnectionMetaNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !29323 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 15 uses
    #dbg_value(ptr %0, !29340, !DIExpression(), !29343)
    #dbg_value(ptr %1, !29341, !DIExpression(), !29343)
  %i.c = load ptr, ptr %0, align 8, !dbg !29363, !nonnull !1600, !align !3606, !noundef !1600 ; 6 uses
    #dbg_value(ptr %i.c, !29344, !DIExpression(), !29331)
    #dbg_value(ptr %1, !29348, !DIExpression(), !29331)
    #dbg_value(ptr @178, !29351, !DIExpression(), !29332)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29364, !noalias !29362
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 141, !dbg !29365
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 80, !dbg !29366
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !29367
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 88, !dbg !29368
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 140, !dbg !29369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29370, !noalias !29362
  store ptr %i.c, ptr %i.a, align 8, !dbg !29370, !noalias !29362
  store ptr %i.d, ptr %i.b, align 8, !dbg !29364, !noalias !29362
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !29364
  store ptr @126, ptr %i.i, align 8, !dbg !29364, !noalias !29362
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !29364
  store ptr %i.e, ptr %i.j, align 8, !dbg !29364, !noalias !29362
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !29364
  store ptr @157, ptr %i.k, align 8, !dbg !29364, !noalias !29362
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !29364
  store ptr %i.f, ptr %i.l, align 8, !dbg !29364, !noalias !29362
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !29364
  store ptr @179, ptr %i.m, align 8, !dbg !29364, !noalias !29362
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !29364
  store ptr %i.g, ptr %i.n, align 8, !dbg !29364, !noalias !29362
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !29364
  store ptr @112, ptr %i.o, align 8, !dbg !29364, !noalias !29362
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !29364
  store ptr %i.h, ptr %i.p, align 8, !dbg !29364, !noalias !29362
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !29364
  store ptr @180, ptr %i.q, align 8, !dbg !29364, !noalias !29362
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !29364
  store ptr %i.a, ptr %i.r, align 8, !dbg !29364, !noalias !29362
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !29364
  store ptr @181, ptr %i.s, align 8, !dbg !29364, !noalias !29362
    #dbg_value(ptr %i.b, !29352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29336)
    #dbg_value(i64 6, !29352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29336)
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 14, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @178, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 6), !dbg !29371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29372, !noalias !29362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29372, !noalias !29362
  ret i1 %i.t, !dbg !29373
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto8endpoint15ResetTokenTableNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !29374 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !29384, !DIExpression(), !29387)
    #dbg_value(ptr %1, !29385, !DIExpression(), !29387)
  %i.b = load ptr, ptr %0, align 8, !dbg !29395, !nonnull !1600, !align !3606, !noundef !1600
    #dbg_value(ptr %i.b, !29388, !DIExpression(), !29377)
    #dbg_value(ptr %1, !29392, !DIExpression(), !29377)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29396, !noalias !29394
  store ptr %i.b, ptr %i.a, align 8, !dbg !29396, !noalias !29394
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @133), !dbg !29397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29398, !noalias !29394
  ret i1 %i.c, !dbg !29399
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto8endpoint15RouteDatagramToNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !29400 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !29414, !DIExpression(), !29417)
    #dbg_value(ptr %1, !29415, !DIExpression(), !29417)
  %i.c = load ptr, ptr %0, align 8, !dbg !29428, !nonnull !1600, !align !3606, !noundef !1600 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29418), !dbg !29429
    #dbg_value(ptr %i.c, !29419, !DIExpression(), !29407)
    #dbg_value(ptr %1, !29423, !DIExpression(), !29407)
  %i.d = load i64, ptr %i.c, align 8, !dbg !29430, !range !5409, !alias.scope !29418, !noundef !1600
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !29430 ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1, !dbg !29430
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !29430

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29431, !noalias !29427
    #dbg_value(ptr %i.e, !29425, !DIExpression(), !29409)
  store ptr %i.e, ptr %i.a, align 8, !dbg !29431, !noalias !29427
    #dbg_value(ptr %i.a, !29425, !DIExpression(DW_OP_deref), !29409)
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160), !dbg !29432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29433, !noalias !29427
  br label %_RNvXse_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_15RouteDatagramToNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit, !dbg !29433

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29434, !noalias !29427
    #dbg_value(ptr %i.e, !29424, !DIExpression(), !29410)
  store ptr %i.e, ptr %i.b, align 8, !dbg !29434, !noalias !29427
    #dbg_value(ptr %i.b, !29424, !DIExpression(DW_OP_deref), !29410)
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @159), !dbg !29435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29433, !noalias !29427
  br label %_RNvXse_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_15RouteDatagramToNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit, !dbg !29433

_RNvXse_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_15RouteDatagramToNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i, !dbg !29436
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto8endpoint16ConnectionHandleNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !29437 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !29447, !DIExpression(), !29450)
    #dbg_value(ptr %1, !29448, !DIExpression(), !29450)
  %i.b = load ptr, ptr %0, align 8, !dbg !29458, !nonnull !1600, !align !3606, !noundef !1600
    #dbg_value(ptr %i.b, !29451, !DIExpression(), !29440)
    #dbg_value(ptr %1, !29455, !DIExpression(), !29440)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29459, !noalias !29457
  store ptr %i.b, ptr %i.a, align 8, !dbg !29459, !noalias !29457
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @159), !dbg !29460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29461, !noalias !29457
  ret i1 %i.c, !dbg !29462
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto8endpoint9FourTupleNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !29463 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !29471, !DIExpression(), !29476)
    #dbg_value(ptr %1, !29472, !DIExpression(), !29476)
  %i.b = load ptr, ptr %0, align 8, !dbg !29479, !nonnull !1600, !align !29477, !noundef !1600 ; 2 uses
    #dbg_value(ptr %i.b, !6641, !DIExpression(), !29465)
    #dbg_value(ptr %1, !6645, !DIExpression(), !29465)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29480, !noalias !29478
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !29480
  store ptr %i.c, ptr %i.a, align 8, !dbg !29480, !noalias !29478
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 6, ptr noundef nonnull readonly align 4 dereferenceable(52) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @135, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @136), !dbg !29481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29482, !noalias !29478
  ret i1 %i.d, !dbg !29483
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtCshovLROGBtMy_11quinn_proto8endpointNtB5_8IncomingNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !29484 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !29488, !DIExpression(), !29491)
    #dbg_value(ptr %1, !29489, !DIExpression(), !29491)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29492
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 8), !dbg !29493
end_hunk_1
