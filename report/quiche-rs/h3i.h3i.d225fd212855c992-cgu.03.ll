Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i.h3i.d225fd212855c992-cgu.03?download=true
inline.NumInlined: 498
inline.NumDeleted: 258
begin_hunk_0_@_RINvXNtNtCsenfyI6F4F2A_10serde_json5value3serNtB5_5ValueNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB2h_6marker4SendNtB2R_4SyncEL_NtB1O_15PrettyFormatterEECsi2C7WdEh0SA_3h3i:bb.a
  %i.cd = tail call noundef ptr %i.cb(ptr noundef nonnull %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1) #8, !dbg !3508, !noalias !3503, !inline_history !3506
  br label %bb.t, !dbg !3507

bb.t:                                             ; preds = %.split.i.i.i, %.split9.i.i.i
  %phi.call.i.i.i = phi ptr [ %i.cd, %.split.i.i.i ], [ %i.cc, %.split9.i.i.i ], !dbg !3509 ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %phi.call.i.i.i, null, !dbg !3510
  br i1 %.not.i.i.i84, label %bb.u, label %.loopexit, !dbg !3511

bb.u:                                             ; preds = %bb.t
  %i.ce = load i64, ptr %i.bo, align 8, !dbg !3513, !alias.scope !3482, !noalias !3470, !noundef !136 ; 2 uses
  %i.cf = load ptr, ptr %i.bx, align 8, !dbg !3514, !alias.scope !3482, !noalias !3470, !nonnull !136, !noundef !136
  %i.cg = load i64, ptr %i.by, align 8, !dbg !3514, !alias.scope !3482, !noalias !3470, !noundef !136
    #dbg_value(ptr poison, !611, !DIExpression(), !3515)
    #dbg_value(ptr poison, !646, !DIExpression(), !3520)
    #dbg_value(ptr poison, !653, !DIExpression(), !3521)
    #dbg_value(ptr poison, !592, !DIExpression(), !3522)
    #dbg_value(i64 %i.ce, !593, !DIExpression(), !3522)
    #dbg_value(ptr %i.cf, !594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3522)
    #dbg_value(i64 %i.cg, !594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3522)
    #dbg_value(i64 1, !661, !DIExpression(), !3523)
    #dbg_value(i64 1, !670, !DIExpression(), !3525)
    #dbg_value(i64 0, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3527)
    #dbg_value(i64 %i.ce, !595, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3527)
    #dbg_value(ptr undef, !653, !DIExpression(), !3521)
    #dbg_value(ptr undef, !646, !DIExpression(), !3520)
    #dbg_value(ptr undef, !611, !DIExpression(), !3515)
    #dbg_value(ptr undef, !621, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3528)
  %exitcond.not.i.i.i.i342 = icmp eq i64 %i.ce, 0, !dbg !3529
  br i1 %exitcond.not.i.i.i.i342, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1E_6marker4SendNtB2e_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i.i, label %.lr.ph345, !dbg !3530

bb.v:                                             ; preds = %.lr.ph345
  %i.ch = add i64 %.sroa.03.0.i.i.i.i343, 1, !dbg !3531 ; 2 uses
    #dbg_value(i64 %i.ch, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3527)
    #dbg_value(i64 %i.ch, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3527)
    #dbg_value(ptr undef, !653, !DIExpression(), !3521)
    #dbg_value(ptr undef, !646, !DIExpression(), !3520)
    #dbg_value(ptr undef, !611, !DIExpression(), !3515)
    #dbg_value(ptr undef, !621, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3528)
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ch, %i.ce, !dbg !3529
  br i1 %exitcond.not.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1E_6marker4SendNtB2e_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i.i, label %.lr.ph345, !dbg !3530

.lr.ph345:                                        ; preds = %bb.u, %bb.v
  %.sroa.03.0.i.i.i.i343 = phi i64 [ %i.ch, %bb.v ], [ 0, %bb.u ]
    #dbg_value(i64 %.sroa.03.0.i.i.i.i343, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3527)
    #dbg_value(i64 %.sroa.03.0.i.i.i.i343, !647, !DIExpression(), !3532)
    #dbg_value(i64 %.sroa.03.0.i.i.i.i343, !667, !DIExpression(), !3523)
    #dbg_value(i64 %.sroa.03.0.i.i.i.i343, !677, !DIExpression(), !3525)
    #dbg_value(i64 %.sroa.03.0.i.i.i.i343, !595, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3527)
    #dbg_value(ptr poison, !690, !DIExpression(), !3533)
    #dbg_value(ptr %i.cf, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3533)
    #dbg_value(i64 %i.cg, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3533)
  %i.ci = tail call noundef ptr %i.cb(ptr noundef nonnull %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef range(i64 0, -9223372036854775808) %i.cg) #8, !dbg !3535, !noalias !3536, !inline_history !3539 ; 2 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.ci, null, !dbg !3540
  br i1 %.not.i.i.i.i86, label %bb.v, label %.loopexit, !dbg !3541

.loopexit:                                        ; preds = %bb.t, %.lr.ph345
  %.sroa.0.0.i.i.i.ph = phi ptr [ %i.ci, %.lr.ph345 ], [ %phi.call.i.i.i, %bb.t ]
    #dbg_value(ptr %.sroa.0.0.i.i.i.ph, !3455, !DIExpression(), !3542)
    #dbg_value(ptr %.sroa.0.0.i.i.i.ph, !3458, !DIExpression(), !3543)
  %i.cj = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i.i.i.ph), !dbg !3544, !noalias !3470, !inline_history !3547
  br label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer14serialize_unitCsi2C7WdEh0SA_3h3i.exit, !dbg !3548

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1E_6marker4SendNtB2e_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i.i: ; preds = %bb.v, %bb.u
    #dbg_value(ptr null, !3455, !DIExpression(), !3542)
    #dbg_value(i8 2, !2859, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !3436)
    #dbg_value(ptr undef, !2766, !DIExpression(), !2773)
    #dbg_value(ptr %1, !2771, !DIExpression(), !2773)
  %i.ck = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsenfyI6F4F2A_10serde_json5value3serNtB5_5ValueNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB2h_6marker4SendNtB2R_4SyncEL_NtB1O_15PrettyFormatterEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.097.0188, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1) #8, !dbg !3550, !noalias !3551, !inline_history !3554 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.ck, null, !dbg !3555
  br i1 %.not17.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsenfyI6F4F2A_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQDNtNtNtBe_2io5write5WriteNtNtBe_6marker4SendNtB3H_4SyncEL_NtB2T_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRINtNtCsexYYUdYSQU6_5alloc3vec3VecB1l_EE0E0Csi2C7WdEh0SA_3h3i.exit, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer14serialize_unitCsi2C7WdEh0SA_3h3i.exit, !dbg !3556

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsenfyI6F4F2A_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQDNtNtNtBe_2io5write5WriteNtNtBe_6marker4SendNtB3H_4SyncEL_NtB2T_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRINtNtCsexYYUdYSQU6_5alloc3vec3VecB1l_EE0E0Csi2C7WdEh0SA_3h3i.exit: ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1E_6marker4SendNtB2e_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i.i
    #dbg_value(ptr %i.bx, !3558, !DIExpression(), !3562)
    #dbg_value(ptr poison, !3561, !DIExpression(), !3562)
  store i8 1, ptr %i.br, align 8, !dbg !3564, !alias.scope !3565, !noalias !3470
    #dbg_value(ptr null, !3455, !DIExpression(), !3568)
    #dbg_value(i8 2, !2859, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !3436)
    #dbg_value(ptr %i.bz, !2858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3310)
    #dbg_value(ptr undef, !1232, !DIExpression(), !2881)
    #dbg_value(i64 1, !1985, !DIExpression(), !3439)
    #dbg_value(ptr %i.bz, !1250, !DIExpression(), !3441)
    #dbg_value(ptr %i.bz, !1984, !DIExpression(), !3439)
    #dbg_value(ptr %i.bm, !1252, !DIExpression(), !3442)
    #dbg_value(ptr poison, !1974, !DIExpression(), !3443)
    #dbg_value(ptr poison, !1975, !DIExpression(), !3445)
  %i.cl = icmp eq ptr %i.bz, %i.bm, !dbg !3569
  br i1 %i.cl, label %bb.w, label %bb.s, !dbg !3446

bb.w:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsenfyI6F4F2A_10serde_json5value5ValueINtNtBe_6result6ResultuNtNtB1p_5error5ErrorENCINvYQINtNtB1p_3ser10SerializerQDNtNtNtBe_2io5write5WriteNtNtBe_6marker4SendNtB3H_4SyncEL_NtB2T_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRINtNtCsexYYUdYSQU6_5alloc3vec3VecB1l_EE0E0Csi2C7WdEh0SA_3h3i.exit
    #dbg_value(i8 2, !2859, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !3436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3570), !dbg !3573
    #dbg_value(ptr %1, !3574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3582)
    #dbg_value(i8 2, !3574, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !3582)
    #dbg_declare(ptr poison, !3584, !DIExpression(), !3592)
    #dbg_value(ptr %1, !3579, !DIExpression(), !3594)
    #dbg_value(i8 2, !3581, !DIExpression(), !3594)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3595
  %.val.i50 = load ptr, ptr %1, align 8, !dbg !3596, !alias.scope !3570, !noalias !3291 ; 5 uses
  %.val7.i51 = load ptr, ptr %i.bn, align 8, !dbg !3596, !alias.scope !3570, !noalias !3291 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3597), !dbg !3596, !noalias !3291
    #dbg_value(ptr %i.cm, !3405, !DIExpression(), !3600)
    #dbg_value(ptr poison, !3408, !DIExpression(), !3600)
  %i.cn = load i64, ptr %i.bo, align 8, !dbg !3602, !alias.scope !3603, !noalias !3291, !noundef !136
  %i.co = add i64 %i.cn, -1, !dbg !3602           ; 3 uses
  store i64 %i.co, ptr %i.bo, align 8, !dbg !3602, !alias.scope !3603, !noalias !3291
  %i.cp = load i8, ptr %i.br, align 8, !dbg !3604, !range !1459, !alias.scope !3603, !noalias !3291, !noundef !136
  %i.cq = trunc nuw i8 %i.cp to i1, !dbg !3604
  br i1 %i.cq, label %bb.x, label %._RINvNtCsenfyI6F4F2A_10serde_json3ser6indentQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBN_6marker4SendNtB1n_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread_crit_edge.i.i52, !dbg !3604

._RINvNtCsenfyI6F4F2A_10serde_json3ser6indentQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBN_6marker4SendNtB1n_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread_crit_edge.i.i52: ; preds = %bb.w
  %.phi.trans.insert.i.i53 = getelementptr inbounds nuw i8, ptr %.val7.i51, i64 56
  %.pre.i.i54 = load ptr, ptr %.phi.trans.insert.i.i53, align 8, !dbg !3605, !invariant.load !136, !noalias !3607
  br label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i, !dbg !3604

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr poison, !690, !DIExpression(), !3610)
    #dbg_value(ptr @0, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3610)
    #dbg_value(i64 1, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3610)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i50) ], !noalias !3291
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i51) ], !noalias !3291
  %i.cr = getelementptr inbounds nuw i8, ptr %.val7.i51, i64 56, !dbg !3612
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !3612, !invariant.load !136, !noalias !3613, !nonnull !136 ; 4 uses
  %i.ct = tail call noundef ptr %i.cs(ptr noundef nonnull %.val.i50, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1) #8, !dbg !3616, !noalias !3617, !inline_history !3618 ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.ct, null, !dbg !3619
  br i1 %.not.i.i58, label %bb.y, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread.i, !dbg !3620

bb.y:                                             ; preds = %bb.x
  %i.cu = load ptr, ptr %i.cm, align 8, !dbg !3622, !alias.scope !3603, !noalias !3291, !nonnull !136, !noundef !136
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3622
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !3622, !alias.scope !3603, !noalias !3291, !noundef !136
    #dbg_value(ptr poison, !611, !DIExpression(), !3623)
    #dbg_value(ptr poison, !646, !DIExpression(), !3628)
    #dbg_value(ptr poison, !653, !DIExpression(), !3629)
    #dbg_value(ptr poison, !592, !DIExpression(), !3630)
    #dbg_value(i64 %i.co, !593, !DIExpression(), !3630)
    #dbg_value(ptr %i.cu, !594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3630)
    #dbg_value(i64 %i.cw, !594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3630)
    #dbg_value(i64 1, !661, !DIExpression(), !3631)
    #dbg_value(i64 1, !670, !DIExpression(), !3633)
    #dbg_value(i64 0, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3635)
    #dbg_value(i64 %i.co, !595, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3635)
    #dbg_value(ptr undef, !653, !DIExpression(), !3629)
    #dbg_value(ptr undef, !646, !DIExpression(), !3628)
    #dbg_value(ptr undef, !611, !DIExpression(), !3623)
    #dbg_value(ptr undef, !621, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3636)
  %exitcond.not.i.i.i60346 = icmp eq i64 %i.co, 0, !dbg !3637
  br i1 %exitcond.not.i.i.i60346, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i, label %.lr.ph349, !dbg !3638

bb.z:                                             ; preds = %.lr.ph349
  %i.cx = add i64 %.sroa.03.0.i.i.i59347, 1, !dbg !3639 ; 2 uses
    #dbg_value(i64 %i.cx, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3635)
    #dbg_value(i64 %i.cx, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3635)
    #dbg_value(ptr undef, !653, !DIExpression(), !3629)
    #dbg_value(ptr undef, !646, !DIExpression(), !3628)
    #dbg_value(ptr undef, !611, !DIExpression(), !3623)
    #dbg_value(ptr undef, !621, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3636)
  %exitcond.not.i.i.i60 = icmp eq i64 %i.cx, %i.co, !dbg !3637
  br i1 %exitcond.not.i.i.i60, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i, label %.lr.ph349, !dbg !3638

.lr.ph349:                                        ; preds = %bb.y, %bb.z
  %.sroa.03.0.i.i.i59347 = phi i64 [ %i.cx, %bb.z ], [ 0, %bb.y ]
    #dbg_value(i64 %.sroa.03.0.i.i.i59347, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3635)
    #dbg_value(i64 %.sroa.03.0.i.i.i59347, !647, !DIExpression(), !3640)
    #dbg_value(i64 %.sroa.03.0.i.i.i59347, !667, !DIExpression(), !3631)
    #dbg_value(i64 %.sroa.03.0.i.i.i59347, !677, !DIExpression(), !3633)
    #dbg_value(i64 %.sroa.03.0.i.i.i59347, !595, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3635)
    #dbg_value(ptr poison, !690, !DIExpression(), !3641)
    #dbg_value(ptr %i.cu, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3641)
    #dbg_value(i64 %i.cw, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3641)
  %i.cy = tail call noundef ptr %i.cs(ptr noundef nonnull %.val.i50, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef range(i64 0, -9223372036854775808) %i.cw) #8, !dbg !3643, !noalias !3644, !inline_history !3647 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.cy, null, !dbg !3648
  br i1 %.not.i.i.i61, label %bb.z, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread.i, !dbg !3649

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i: ; preds = %bb.z, %bb.y, %._RINvNtCsenfyI6F4F2A_10serde_json3ser6indentQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBN_6marker4SendNtB1n_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread_crit_edge.i.i52
  %i.cz = phi ptr [ %.pre.i.i54, %._RINvNtCsenfyI6F4F2A_10serde_json3ser6indentQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBN_6marker4SendNtB1n_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread_crit_edge.i.i52 ], [ %i.cs, %bb.y ], [ %i.cs, %bb.z ], !dbg !3605
    #dbg_value(ptr poison, !690, !DIExpression(), !3650)
    #dbg_value(ptr @6, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3650)
    #dbg_value(i64 1, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3650)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i50) ], !noalias !3291
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i51) ], !noalias !3291
  %i.da = tail call noundef ptr %i.cz(ptr noundef nonnull %.val.i50, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1) #8, !dbg !3651, !noalias !3617, !inline_history !3618 ; 2 uses
    #dbg_value(ptr %i.da, !3587, !DIExpression(), !3652)
  %.not.i55 = icmp eq ptr %i.da, null, !dbg !3653
  br i1 %.not.i55, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer14serialize_unitCsi2C7WdEh0SA_3h3i.exit, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread.i, !dbg !3654, !prof !1771

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread.i: ; preds = %.lr.ph349, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i, %bb.x
  %.sroa.0.0.i10.i56 = phi ptr [ %i.da, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i ], [ %i.ct, %bb.x ], [ %i.cy, %.lr.ph349 ]
    #dbg_value(ptr %.sroa.0.0.i10.i56, !3590, !DIExpression(), !3655)
  %i.db = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i10.i56), !dbg !3656, !noalias !3659
  br label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer14serialize_unitCsi2C7WdEh0SA_3h3i.exit, !dbg !3660

bb.aa:                                            ; preds = %bb.a
    #dbg_value(ptr %0, !2738, !DIExpression(), !3661)
    #dbg_value(ptr %0, !3662, !DIExpression(), !3665)
    #dbg_value(ptr %0, !3667, !DIExpression(), !3670)
    #dbg_value(ptr %0, !3672, !DIExpression(), !3675)
    #dbg_value(ptr %0, !3677, !DIExpression(), !3687)
    #dbg_value(ptr %0, !3689, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3692)
    #dbg_value(ptr %0, !3694, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3697)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !3700
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !3700, !noundef !136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3701), !dbg !3704
    #dbg_value(ptr poison, !3705, !DIExpression(), !3712)
    #dbg_value(i64 1, !3717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3727)
    #dbg_value(i64 %i.dd, !3717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3727)
    #dbg_value(ptr %1, !3716, !DIExpression(), !3727)
    #dbg_declare(ptr poison, !3728, !DIExpression(), !3740)
    #dbg_value(ptr poison, !3708, !DIExpression(), !3742)
    #dbg_declare(ptr poison, !3728, !DIExpression(), !3743)
  %.val.i36 = load ptr, ptr %1, align 8, !dbg !3745, !alias.scope !3701, !noalias !3746, !nonnull !136, !noundef !136 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3745 ; 5 uses
  %.val17.i37 = load ptr, ptr %i.de, align 8, !dbg !3745, !alias.scope !3701, !noalias !3746, !nonnull !136, !align !284, !noundef !136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3748), !dbg !3745
    #dbg_value(ptr %1, !3751, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !3755)
    #dbg_value(ptr poison, !3754, !DIExpression(), !3755)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !3757 ; 6 uses
  %i.dg = load i64, ptr %i.df, align 8, !dbg !3757, !alias.scope !3758, !noalias !3746, !noundef !136 ; 2 uses
  %i.dh = add i64 %i.dg, 1, !dbg !3757
  store i64 %i.dh, ptr %i.df, align 8, !dbg !3757, !alias.scope !3758, !noalias !3746
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !3759 ; 3 uses
  store i8 0, ptr %i.di, align 8, !dbg !3759, !alias.scope !3758, !noalias !3746
    #dbg_value(ptr poison, !690, !DIExpression(), !3760)
    #dbg_value(ptr @3, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3760)
    #dbg_value(i64 1, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3760)
  %i.dj = getelementptr inbounds nuw i8, ptr %.val17.i37, i64 56, !dbg !3762
  %i.dk = load ptr, ptr %i.dj, align 8, !dbg !3762, !invariant.load !136, !noalias !3763 ; 2 uses
  %i.dl = tail call noundef ptr %i.dk(ptr noundef nonnull %.val.i36, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 1) #8, !dbg !3766, !noalias !3767, !inline_history !3768 ; 2 uses
    #dbg_value(ptr %i.dl, !3731, !DIExpression(), !3769)
  %.not.i38 = icmp eq ptr %i.dl, null, !dbg !3770
  br i1 %.not.i38, label %bb.ab, label %bb.ac, !dbg !3771, !prof !1440

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(ptr undef, !3705, !DIExpression(), !3712)
  %i.dm = icmp ne i64 %i.dd, 0                    ; 2 uses
  br i1 %i.dm, label %bb.ad, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i, !dbg !3772

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i: ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3773), !dbg !3776
    #dbg_value(ptr %1, !3777, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !3789)
    #dbg_value(ptr poison, !3780, !DIExpression(), !3789)
  store i64 %i.dg, ptr %i.df, align 8, !dbg !3791, !alias.scope !3792, !noalias !3746
    #dbg_value(ptr poison, !690, !DIExpression(), !3793)
    #dbg_value(ptr @1, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3793)
    #dbg_value(i64 1, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3793)
  %i.dn = tail call noundef ptr %i.dk(ptr noundef nonnull %.val.i36, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 1) #8, !dbg !3795, !noalias !3796, !inline_history !3797 ; 2 uses
    #dbg_value(ptr %i.dn, !3731, !DIExpression(), !3798)
  %.not16.i = icmp eq ptr %i.dn, null, !dbg !3799
  br i1 %.not16.i, label %bb.ad, label %bb.ac, !dbg !3800, !prof !1771

_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer14serialize_unitCsi2C7WdEh0SA_3h3i.exit: ; preds = %bb.aq, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1E_6marker4SendNtB2e_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i.i, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i70, %.loopexit, %_RINvXs_NtNtCs9xKKqPmwf7Y_10serde_core3ser5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB7_9Serialize9serializeINtNtCsenfyI6F4F2A_10serde_json3ser16MapKeySerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB2J_6marker4SendNtB3j_4SyncEL_NtB1N_15PrettyFormatterEECsi2C7WdEh0SA_3h3i.exit.i, %.loopexit.i, %bb.ac, %bb.ap, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread.i, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i45, %._crit_edge, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread.i, %bb.r, %_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB10_6marker4SendNtB1A_4SyncEL_NtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i.exit.thread.i, %_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB10_6marker4SendNtB1A_4SyncEL_NtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i.exit.i, %bb.f, %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser15PrettyFormatterNtB5_9Formatter10write_boolQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1r_6marker4SendNtB21_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i, %bb.d, %bb.c, %bb.g
  %.sroa.0.0 = phi ptr [ %i.en, %.loopexit.i ], [ null, %bb.c ], [ %i.x, %bb.g ], [ null, %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser15PrettyFormatterNtB5_9Formatter10write_boolQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1r_6marker4SendNtB21_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i ], [ null, %_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB10_6marker4SendNtB1A_4SyncEL_NtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i.exit.i ], [ null, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i45 ], [ %i.m, %bb.d ], [ %i.v, %bb.f ], [ %i.bj, %_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB10_6marker4SendNtB1A_4SyncEL_NtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i.exit.thread.i ], [ null, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i ], [ %i.ck, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1E_6marker4SendNtB2e_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i.i ], [ %i.db, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread.i ], [ %i.bw, %bb.r ], [ null, %._crit_edge ], [ %i.gn, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread.i ], [ %i.do, %bb.ac ], [ null, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1v_6marker4SendNtB25_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i70 ], [ %i.fv, %bb.ap ], [ %i.fr, %_RINvXs_NtNtCs9xKKqPmwf7Y_10serde_core3ser5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB7_9Serialize9serializeINtNtCsenfyI6F4F2A_10serde_json3ser16MapKeySerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB2J_6marker4SendNtB3j_4SyncEL_NtB1N_15PrettyFormatterEECsi2C7WdEh0SA_3h3i.exit.i ], [ %i.cj, %.loopexit ], [ %i.fw, %bb.aq ], !dbg !2950
  ret ptr %.sroa.0.0, !dbg !3801

bb.ac:                                            ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i, %bb.aa
  %.sink26.i = phi ptr [ %i.dl, %bb.aa ], [ %i.dn, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i ]
  %i.do = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink26.i), !dbg !3802, !noalias !3806
  br label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer14serialize_unitCsi2C7WdEh0SA_3h3i.exit, !dbg !3807

bb.ad:                                            ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i, %bb.ab
    #dbg_value(ptr %1, !2740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3809)
    #dbg_value(i8 poison, !2740, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !3809)
    #dbg_value(ptr %0, !3810, !DIExpression(), !3813)
    #dbg_value(ptr %0, !3815, !DIExpression(), !3818)
    #dbg_value(ptr %0, !3820, !DIExpression(), !3823)
    #dbg_value(ptr %0, !3825, !DIExpression(), !3828)
    #dbg_value(ptr %0, !3830, !DIExpression(), !3833)
    #dbg_value(ptr %0, !3835, !DIExpression(), !3838)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3841
  %i.dq = load ptr, ptr %i.dp, align 8, !dbg !3841, !nonnull !136, !noundef !136 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3851
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !3851, !noundef !136 ; 2 uses
    #dbg_value(i64 %i.ds, !3852, !DIExpression(), !3861)
    #dbg_value(i64 %i.ds, !3871, !DIExpression(), !3875)
    #dbg_value(ptr %i.dq, !3869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3877)
    #dbg_value(ptr %i.dq, !3865, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3878)
    #dbg_value(ptr %i.dq, !3856, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3879)
    #dbg_value(i64 %i.ds, !3869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3877)
    #dbg_value(i64 %i.ds, !3865, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3878)
    #dbg_value(i64 %i.ds, !3856, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3879)
    #dbg_value(ptr %i.dq, !3857, !DIExpression(), !3880)
    #dbg_value(ptr %i.dq, !3874, !DIExpression(), !3875)
  %.idx = mul nuw nsw i64 %i.ds, 104, !dbg !3881
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx, !dbg !3881
    #dbg_value(ptr %i.dq, !2755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3882)
    #dbg_value(ptr %i.dt, !2755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3882)
    #dbg_value(ptr undef, !2888, !DIExpression(), !2892)
    #dbg_value(ptr undef, !1307, !DIExpression(), !2891)
    #dbg_value(i64 1, !2347, !DIExpression(), !3883)
    #dbg_declare(ptr poison, !2356, !DIExpression(), !3885)
    #dbg_value(ptr undef, !1258, !DIExpression(), !2883)
    #dbg_value(ptr %i.dq, !1275, !DIExpression(), !3887)
    #dbg_value(ptr %i.dq, !2353, !DIExpression(), !3883)
    #dbg_value(ptr %i.dt, !1277, !DIExpression(), !3888)
    #dbg_value(ptr poison, !2375, !DIExpression(), !3889)
    #dbg_value(ptr poison, !2381, !DIExpression(), !3891)
  %i.du = icmp eq i64 %i.ds, 0, !dbg !3892
  br i1 %i.du, label %._crit_edge, label %.lr.ph, !dbg !3893

.lr.ph:                                           ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  br label %bb.ae, !dbg !3893

bb.ae:                                            ; preds = %.lr.ph, %_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBT_6marker4SendNtB1t_4SyncEL_NtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECsi2C7WdEh0SA_3h3i.exit
  %.sroa.9.0186 = phi i1 [ %i.dm, %.lr.ph ], [ false, %_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBT_6marker4SendNtB1t_4SyncEL_NtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECsi2C7WdEh0SA_3h3i.exit ]
  %.sroa.095.0185 = phi ptr [ %i.dq, %.lr.ph ], [ %i.ea, %_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBT_6marker4SendNtB1t_4SyncEL_NtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECsi2C7WdEh0SA_3h3i.exit ] ; 4 uses
    #dbg_value(i8 poison, !2740, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !3809)
    #dbg_value(ptr %.sroa.095.0185, !2755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3882)
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.095.0185, i64 104, !dbg !3894 ; 2 uses
    #dbg_value(ptr %i.ea, !2755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3882)
    #dbg_value(ptr %.sroa.095.0185, !2368, !DIExpression(), !3895)
    #dbg_value(ptr %.sroa.095.0185, !2369, !DIExpression(), !3896)
    #dbg_value(ptr %.sroa.095.0185, !2390, !DIExpression(), !3897)
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.095.0185, i64 24, !dbg !3900
    #dbg_value(ptr %.sroa.095.0185, !2757, !DIExpression(), !3901)
    #dbg_value(ptr %i.eb, !2759, !DIExpression(), !3901)
  call void @llvm.experimental.noalias.scope.decl(metadata !3902), !dbg !3905
    #dbg_value(ptr undef, !2918, !DIExpression(), !2949)
    #dbg_value(ptr %.sroa.095.0185, !2919, !DIExpression(), !2949)
    #dbg_value(ptr %i.eb, !2920, !DIExpression(), !2949)
  %i.ec = getelementptr i8, ptr %.sroa.095.0185, i64 8, !dbg !3906
  %.val.i40 = load ptr, ptr %i.ec, align 8, !dbg !3906, !alias.scope !3902, !noalias !3907 ; 2 uses
  %i.ed = getelementptr i8, ptr %.sroa.095.0185, i64 16, !dbg !3906
  %.val7.i = load i64, ptr %i.ed, align 8, !dbg !3906, !alias.scope !3902, !noalias !3907
    #dbg_value(ptr undef, !2900, !DIExpression(), !2928)
    #dbg_value(ptr poison, !2901, !DIExpression(), !2928)
    #dbg_declare(ptr poison, !3910, !DIExpression(), !3922)
    #dbg_declare(ptr poison, !3910, !DIExpression(), !3924)
    #dbg_value(ptr undef, !2894, !DIExpression(), !2912)
    #dbg_value(ptr undef, !2902, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3926)
  %.val.i75 = load ptr, ptr %1, align 8, !dbg !3927, !noalias !3928, !nonnull !136, !noundef !136 ; 3 uses
  %.val18.i76 = load ptr, ptr %i.de, align 8, !dbg !3927, !noalias !3928, !nonnull !136, !noundef !136
  call void @llvm.experimental.noalias.scope.decl(metadata !3931), !dbg !3927, !noalias !3934
    #dbg_value(ptr %i.dv, !3935, !DIExpression(), !3944)
    #dbg_value(ptr poison, !3938, !DIExpression(), !3944)
    #dbg_value(i1 %.sroa.9.0186, !3939, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3944)
    #dbg_value(ptr poison, !690, !DIExpression(), !3946)
    #dbg_value(ptr poison, !690, !DIExpression(), !3948)
  %i.ee = getelementptr inbounds nuw i8, ptr %.val18.i76, i64 56, !dbg !3950
  %i.ef = load ptr, ptr %i.ee, align 8, !dbg !3950, !invariant.load !136, !noalias !3952, !nonnull !136 ; 3 uses
  br i1 %.sroa.9.0186, label %.split.i.i83, label %.split9.i.i, !dbg !3953

.split9.i.i:                                      ; preds = %bb.ae
    #dbg_value(ptr @4, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3948)
    #dbg_value(i64 2, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3948)
  %i.eg = call noundef ptr %i.ef(ptr noundef nonnull %.val.i75, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2) #8, !dbg !3954, !noalias !3952, !inline_history !3955
  br label %bb.af, !dbg !3956

.split.i.i83:                                     ; preds = %bb.ae
    #dbg_value(ptr @0, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3946)
    #dbg_value(i64 1, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3946)
  %i.eh = call noundef ptr %i.ef(ptr noundef nonnull %.val.i75, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1) #8, !dbg !3957, !noalias !3952, !inline_history !3955
  br label %bb.af, !dbg !3956

bb.af:                                            ; preds = %.split.i.i83, %.split9.i.i
  %phi.call.i.i77 = phi ptr [ %i.eh, %.split.i.i83 ], [ %i.eg, %.split9.i.i ], !dbg !3958 ; 2 uses
  %.not.i.i78 = icmp eq ptr %phi.call.i.i77, null, !dbg !3959
  br i1 %.not.i.i78, label %bb.ag, label %.loopexit.i, !dbg !3960

bb.ag:                                            ; preds = %bb.af
  %i.ei = load i64, ptr %i.df, align 8, !dbg !3962, !alias.scope !3931, !noalias !3928, !noundef !136 ; 2 uses
  %i.ej = load ptr, ptr %i.dv, align 8, !dbg !3963, !alias.scope !3931, !noalias !3928, !nonnull !136, !noundef !136
  %i.ek = load i64, ptr %i.dw, align 8, !dbg !3963, !alias.scope !3931, !noalias !3928, !noundef !136
    #dbg_value(ptr poison, !611, !DIExpression(), !3964)
    #dbg_value(ptr poison, !646, !DIExpression(), !3969)
    #dbg_value(ptr poison, !653, !DIExpression(), !3970)
    #dbg_value(ptr poison, !592, !DIExpression(), !3971)
    #dbg_value(i64 %i.ei, !593, !DIExpression(), !3971)
    #dbg_value(ptr %i.ej, !594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3971)
    #dbg_value(i64 %i.ek, !594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3971)
    #dbg_value(i64 1, !661, !DIExpression(), !3972)
    #dbg_value(i64 1, !670, !DIExpression(), !3974)
    #dbg_value(i64 0, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3976)
    #dbg_value(i64 %i.ei, !595, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3976)
    #dbg_value(ptr undef, !653, !DIExpression(), !3970)
    #dbg_value(ptr undef, !646, !DIExpression(), !3969)
    #dbg_value(ptr undef, !611, !DIExpression(), !3964)
    #dbg_value(ptr undef, !621, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3977)
  %exitcond.not.i.i.i81328 = icmp eq i64 %i.ei, 0, !dbg !3978
  br i1 %exitcond.not.i.i.i81328, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1D_6marker4SendNtB2d_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i, label %.lr.ph331, !dbg !3979

bb.ah:                                            ; preds = %.lr.ph331
  %i.el = add i64 %.sroa.03.0.i.i.i80329, 1, !dbg !3980 ; 2 uses
    #dbg_value(i64 %i.el, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3976)
    #dbg_value(i64 %i.el, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3976)
    #dbg_value(ptr undef, !653, !DIExpression(), !3970)
    #dbg_value(ptr undef, !646, !DIExpression(), !3969)
    #dbg_value(ptr undef, !611, !DIExpression(), !3964)
    #dbg_value(ptr undef, !621, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3977)
  %exitcond.not.i.i.i81 = icmp eq i64 %i.el, %i.ei, !dbg !3978
  br i1 %exitcond.not.i.i.i81, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1D_6marker4SendNtB2d_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i, label %.lr.ph331, !dbg !3979

.lr.ph331:                                        ; preds = %bb.ag, %bb.ah
  %.sroa.03.0.i.i.i80329 = phi i64 [ %i.el, %bb.ah ], [ 0, %bb.ag ]
    #dbg_value(i64 %.sroa.03.0.i.i.i80329, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3976)
    #dbg_value(i64 %.sroa.03.0.i.i.i80329, !647, !DIExpression(), !3981)
    #dbg_value(i64 %.sroa.03.0.i.i.i80329, !667, !DIExpression(), !3972)
    #dbg_value(i64 %.sroa.03.0.i.i.i80329, !677, !DIExpression(), !3974)
    #dbg_value(i64 %.sroa.03.0.i.i.i80329, !595, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !3976)
    #dbg_value(ptr poison, !690, !DIExpression(), !3982)
    #dbg_value(ptr %i.ej, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3982)
    #dbg_value(i64 %i.ek, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3982)
  %i.em = call noundef ptr %i.ef(ptr noundef nonnull %.val.i75, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ej, i64 noundef range(i64 0, -9223372036854775808) %i.ek) #8, !dbg !3984, !noalias !3985, !inline_history !3988 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.em, null, !dbg !3989
  br i1 %.not.i.i.i82, label %bb.ah, label %.loopexit.i, !dbg !3990

.loopexit.i:                                      ; preds = %bb.af, %.lr.ph331
  %.sroa.0.0.i.ph.i = phi ptr [ %i.em, %.lr.ph331 ], [ %phi.call.i.i77, %bb.af ]
    #dbg_value(ptr %.sroa.0.0.i.ph.i, !3913, !DIExpression(), !3991)
    #dbg_value(ptr %.sroa.0.0.i.ph.i, !3916, !DIExpression(), !3992)
  %i.en = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i.ph.i), !dbg !3993, !noalias !3928
  br label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer14serialize_unitCsi2C7WdEh0SA_3h3i.exit, !dbg !3996

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1D_6marker4SendNtB2d_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i: ; preds = %bb.ah, %bb.ag
    #dbg_value(ptr null, !3913, !DIExpression(), !3991)
    #dbg_value(i8 2, !2740, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !3809)
  %.val21.i = load ptr, ptr %1, align 8, !dbg !3998, !noalias !3928, !nonnull !136, !noundef !136 ; 6 uses
  %.val22.i = load ptr, ptr %i.de, align 8, !dbg !3998, !noalias !3928, !nonnull !136, !align !284, !noundef !136
    #dbg_value(ptr poison, !3999, !DIExpression(), !4010)
    #dbg_value(ptr poison, !4007, !DIExpression(), !4010)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i40) ], !noalias !3934
  call void @llvm.experimental.noalias.scope.decl(metadata !4012), !dbg !4015, !noalias !3934
    #dbg_value(ptr poison, !4016, !DIExpression(), !4022)
    #dbg_value(ptr %.val.i40, !4021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4022)
    #dbg_value(i64 %.val7.i, !4021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4022)
  call void @llvm.experimental.noalias.scope.decl(metadata !4024), !dbg !4027, !noalias !3934
    #dbg_value(ptr poison, !3083, !DIExpression(), !4028)
    #dbg_value(ptr %.val.i40, !3088, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4028)
    #dbg_value(i64 %.val7.i, !3088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4028)
    #dbg_declare(ptr poison, !3091, !DIExpression(), !4030)
  call void @llvm.experimental.noalias.scope.decl(metadata !4032), !dbg !4035, !noalias !3934
end_hunk_0
begin_hunk_1_@_RINvXNtNtCsenfyI6F4F2A_10serde_json5value3serNtB5_5ValueNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB2h_6marker4SendNtB2R_4SyncEL_NtB1O_15PrettyFormatterEECsi2C7WdEh0SA_3h3i:bb.a
    #dbg_value(i64 %i.er, !3151, !DIExpression(), !4058)
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.er, %.sroa.5.0.ph.i.i.i.i.i.i, !dbg !4060
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RINvNtCsenfyI6F4F2A_10serde_json3ser27format_escaped_str_contentsQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB19_6marker4SendNtB1J_4SyncEL_NtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i, !dbg !4060

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i: ; preds = %.outer.i.i.i.i.i.i, %bb.aj
  %.sroa.010.0.i.i.i.i.i.i333 = phi i64 [ %i.er, %bb.aj ], [ 0, %.outer.i.i.i.i.i.i ] ; 6 uses
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i.i333, !3151, !DIExpression(), !4058)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i.i, !417, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4062)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i.i, !459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4064)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i.i, !417, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4062)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i.i, !459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4064)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i.i333, !454, !DIExpression(), !4062)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i.i333, !478, !DIExpression(), !4064)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i.i, !481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4066)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i.i, !481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4066)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i.i333, !484, !DIExpression(), !4066)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i.i333, !491, !DIExpression(), !4068)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i.i, !485, !DIExpression(), !4070)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i.i, !487, !DIExpression(), !4071)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i.i, !499, !DIExpression(), !4068)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i.i, !3153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4072)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i.i333, !3153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4072)
    #dbg_value(!DIArgList(ptr %.sroa.05.0.ph.i.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i.i333), !3155, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4072)
    #dbg_value(!DIArgList(i64 %.sroa.5.0.ph.i.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i.i333), !3155, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4072)
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i.i333, !dbg !4073
    #dbg_value(ptr %i.es, !3155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4072)
    #dbg_value(ptr %i.es, !3158, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4074)
    #dbg_value(!DIArgList(i64 %.sroa.5.0.ph.i.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i.i333), !3158, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4074)
  %i.et = load i8, ptr %i.es, align 1, !dbg !4075, !alias.scope !4076, !noalias !3928, !noundef !136 ; 3 uses
    #dbg_value(i8 %i.et, !3156, !DIExpression(), !4074)
  %i.eu = zext i8 %i.et to i64, !dbg !4077
  %i.ev = getelementptr inbounds nuw i8, ptr @_RNvNtCsenfyI6F4F2A_10serde_json3ser6ESCAPE, i64 %i.eu, !dbg !4078
  %i.ew = load i8, ptr %i.ev, align 1, !dbg !4078, !noalias !4079, !noundef !136 ; 3 uses
    #dbg_value(i8 %i.ew, !3159, !DIExpression(), !4080)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i.i333, !3151, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4058)
  %i.ex = icmp eq i8 %i.ew, 0, !dbg !4081
  br i1 %i.ex, label %bb.aj, label %bb.ak, !dbg !4081

bb.ak:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i.i333
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.fa = xor i64 %.sroa.010.0.i.i.i.i.i.i333, -1
  %i.fb = add i64 %.sroa.5.0.ph.i.i.i.i.i.i, %i.fa
    #dbg_value(ptr %i.ez, !3149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4057)
    #dbg_value(i64 %i.fb, !3149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4057)
    #dbg_value(i64 0, !3151, !DIExpression(), !4058)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i.i, !3161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4082)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i.i, !3202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4083)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i.i333, !3161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4082)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i.i333, !3202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4083)
  %i.fc = icmp eq i64 %.sroa.010.0.i.i.i.i.i.i333, 0, !dbg !4085
  br i1 %i.fc, label %bb.am, label %bb.al, !dbg !4086

bb.al:                                            ; preds = %bb.ak
    #dbg_value(ptr poison, !3209, !DIExpression(), !4087)
    #dbg_value(ptr poison, !3214, !DIExpression(), !4087)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i.i, !3215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4087)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i.i333, !3215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4087)
    #dbg_value(ptr poison, !690, !DIExpression(), !4089)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i.i, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4089)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i.i333, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4089)
  %i.fd = call noundef ptr %i.ep(ptr noundef nonnull %.val21.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.010.0.i.i.i.i.i.i333) #8, !dbg !4091, !noalias !3928, !inline_history !4092 ; 2 uses
  %.not41.i.i.i.i.i.i = icmp eq ptr %i.fd, null, !dbg !4093
  br i1 %.not41.i.i.i.i.i.i, label %bb.am, label %_RINvXs_NtNtCs9xKKqPmwf7Y_10serde_core3ser5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB7_9Serialize9serializeINtNtCsenfyI6F4F2A_10serde_json3ser16MapKeySerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB2J_6marker4SendNtB3j_4SyncEL_NtB1N_15PrettyFormatterEECsi2C7WdEh0SA_3h3i.exit.i, !dbg !4094

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fe = icmp eq i8 %i.ew, 117, !dbg !4095
  br i1 %i.fe, label %bb.an, label %bb.ao, !dbg !4095

bb.an:                                            ; preds = %bb.am
    #dbg_value(i8 8, !3167, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4096)
    #dbg_value(i8 %i.et, !3167, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4096)
    #dbg_value(i8 8, !3227, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4097)
    #dbg_value(i8 %i.et, !3227, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4097)
    #dbg_value(ptr poison, !3232, !DIExpression(), !4097)
    #dbg_value(ptr poison, !3233, !DIExpression(), !4097)
    #dbg_value(i8 117, !3234, !DIExpression(), !4099)
    #dbg_value(i8 %i.et, !3236, !DIExpression(), !4100)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4101, !noalias !4079
  %i.ff = and i8 %i.et, 15, !dbg !4102
  %i.fg = zext nneg i8 %i.ff to i64, !dbg !4102
  %i.fh = lshr i8 %i.et, 4, !dbg !4103
  %i.fi = zext nneg i8 %i.fh to i64, !dbg !4103
  %i.fj = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCsenfyI6F4F2A_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.fi, !dbg !4104
  %i.fk = load i8, ptr %i.fj, align 1, !dbg !4104, !noalias !4079, !noundef !136
  %i.fl = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCsenfyI6F4F2A_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.fg, !dbg !4105
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !4105, !noalias !4079, !noundef !136
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.b, align 4, !dbg !4101, !noalias !4079
  store i8 %i.fk, ptr %i.dy, align 4, !dbg !4101, !noalias !4079
  store i8 %i.fm, ptr %i.dz, align 1, !dbg !4101, !noalias !4079
    #dbg_value(ptr %i.b, !3238, !DIExpression(), !4106)
    #dbg_value(ptr poison, !690, !DIExpression(), !4107)
    #dbg_value(ptr %i.b, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4107)
    #dbg_value(i64 6, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4107)
  %i.fn = call noundef ptr %i.ep(ptr noundef nonnull %.val21.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 6) #8, !dbg !4109, !noalias !3928, !inline_history !4110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4111, !noalias !4079
  br label %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1y_6marker4SendNtB28_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i, !dbg !4112

bb.ao:                                            ; preds = %bb.am
    #dbg_value(i8 %i.ew, !3234, !DIExpression(), !4099)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4113, !noalias !4079
  store i8 92, ptr %i.a, align 1, !dbg !4113, !noalias !4079
  store i8 %i.ew, ptr %i.dx, align 1, !dbg !4113, !noalias !4079
    #dbg_value(ptr poison, !690, !DIExpression(), !4114)
    #dbg_value(ptr %i.a, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4114)
    #dbg_value(i64 2, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4114)
  %i.fo = call noundef ptr %i.ep(ptr noundef nonnull %.val21.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2) #8, !dbg !4116, !noalias !3928, !inline_history !4110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4117, !noalias !4079
  br label %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1y_6marker4SendNtB28_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i, !dbg !4117

_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1y_6marker4SendNtB28_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.sroa.02.0.i.i.i.i.i.i.i = phi ptr [ %i.fo, %bb.ao ], [ %i.fn, %bb.an ], !dbg !4099 ; 2 uses
  %.not42.i.i.i.i.i.i = icmp eq ptr %.sroa.02.0.i.i.i.i.i.i.i, null, !dbg !4118
  br i1 %.not42.i.i.i.i.i.i, label %.outer.i.i.i.i.i.i, label %_RINvXs_NtNtCs9xKKqPmwf7Y_10serde_core3ser5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB7_9Serialize9serializeINtNtCsenfyI6F4F2A_10serde_json3ser16MapKeySerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB2J_6marker4SendNtB3j_4SyncEL_NtB1N_15PrettyFormatterEECsi2C7WdEh0SA_3h3i.exit.i, !dbg !4119

_RINvNtCsenfyI6F4F2A_10serde_json3ser27format_escaped_str_contentsQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB19_6marker4SendNtB1J_4SyncEL_NtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i: ; preds = %bb.aj
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i.i, !3173, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4120)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i.i, !3202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4121)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i.i, !3173, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4120)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i.i, !3202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4121)
    #dbg_value(ptr poison, !3209, !DIExpression(), !4123)
    #dbg_value(ptr poison, !3214, !DIExpression(), !4123)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i.i, !3215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4123)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i.i, !3215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4123)
    #dbg_value(ptr poison, !690, !DIExpression(), !4125)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i.i, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4125)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i.i, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4125)
  %i.fp = call noundef ptr %i.ep(ptr noundef nonnull %.val21.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i.i.i.i.i.i) #8, !dbg !4127, !noalias !3928, !inline_history !4092 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.fp, null, !dbg !4054
  br i1 %.not10.i.i.i.i.i, label %_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB10_6marker4SendNtB1A_4SyncEL_NtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i.exit.i.i.i.i, label %_RINvXs_NtNtCs9xKKqPmwf7Y_10serde_core3ser5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB7_9Serialize9serializeINtNtCsenfyI6F4F2A_10serde_json3ser16MapKeySerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB2J_6marker4SendNtB3j_4SyncEL_NtB1N_15PrettyFormatterEECsi2C7WdEh0SA_3h3i.exit.i, !dbg !4050

_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB10_6marker4SendNtB1A_4SyncEL_NtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i.exit.i.i.i.i: ; preds = %.outer.i.i.i.i.i.i, %_RINvNtCsenfyI6F4F2A_10serde_json3ser27format_escaped_str_contentsQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB19_6marker4SendNtB1J_4SyncEL_NtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i
    #dbg_value(ptr poison, !3272, !DIExpression(), !4128)
    #dbg_value(ptr poison, !3275, !DIExpression(), !4128)
    #dbg_value(ptr poison, !690, !DIExpression(), !4130)
    #dbg_value(ptr @7, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4130)
    #dbg_value(i64 1, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4130)
  %i.fq = call noundef ptr %i.ep(ptr noundef nonnull %.val21.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 1) #8, !dbg !4132, !noalias !3928, !inline_history !4133 ; 2 uses
    #dbg_value(ptr %i.fq, !3094, !DIExpression(), !4134)
  %.not.i.i.i.i = icmp eq ptr %i.fq, null, !dbg !4135
  br i1 %.not.i.i.i.i, label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBZ_6marker4SendNtB1z_4SyncEL_NtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit, label %_RINvXs_NtNtCs9xKKqPmwf7Y_10serde_core3ser5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB7_9Serialize9serializeINtNtCsenfyI6F4F2A_10serde_json3ser16MapKeySerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB2J_6marker4SendNtB3j_4SyncEL_NtB1N_15PrettyFormatterEECsi2C7WdEh0SA_3h3i.exit.i, !dbg !4136, !prof !1771

_RINvXs_NtNtCs9xKKqPmwf7Y_10serde_core3ser5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB7_9Serialize9serializeINtNtCsenfyI6F4F2A_10serde_json3ser16MapKeySerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB2J_6marker4SendNtB3j_4SyncEL_NtB1N_15PrettyFormatterEECsi2C7WdEh0SA_3h3i.exit.i: ; preds = %_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB10_6marker4SendNtB1A_4SyncEL_NtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i.exit.i.i.i.i, %_RINvNtCsenfyI6F4F2A_10serde_json3ser27format_escaped_str_contentsQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB19_6marker4SendNtB1J_4SyncEL_NtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1D_6marker4SendNtB2d_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i, %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1y_6marker4SendNtB28_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i, %bb.al
  %.sroa.0.0.i3.i.i.i.i = phi ptr [ %i.fd, %bb.al ], [ %.sroa.02.0.i.i.i.i.i.i.i, %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1y_6marker4SendNtB28_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i ], [ %i.eq, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1D_6marker4SendNtB2d_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i ], [ %i.fp, %_RINvNtCsenfyI6F4F2A_10serde_json3ser27format_escaped_str_contentsQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB19_6marker4SendNtB1J_4SyncEL_NtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i ], [ %i.fq, %_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB10_6marker4SendNtB1A_4SyncEL_NtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i.exit.i.i.i.i ]
    #dbg_value(ptr %.sroa.0.0.i3.i.i.i.i, !3097, !DIExpression(), !4137)
  %i.fr = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i3.i.i.i.i), !dbg !4138, !noalias !3928
  br label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer14serialize_unitCsi2C7WdEh0SA_3h3i.exit, !dbg !4140

_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBZ_6marker4SendNtB1z_4SyncEL_NtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit: ; preds = %_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB10_6marker4SendNtB1A_4SyncEL_NtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i.exit.i.i.i.i
    #dbg_value(i8 2, !2740, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !3809)
    #dbg_value(ptr undef, !2935, !DIExpression(), !2948)
    #dbg_value(ptr %i.eb, !2936, !DIExpression(), !2948)
    #dbg_declare(ptr poison, !4142, !DIExpression(), !4154)
    #dbg_declare(ptr poison, !4142, !DIExpression(), !4156)
    #dbg_value(ptr undef, !2929, !DIExpression(), !2946)
  %.val.i72 = load ptr, ptr %1, align 8, !dbg !4158, !noalias !4159, !nonnull !136, !noundef !136
  %.val15.i = load ptr, ptr %i.de, align 8, !dbg !4158, !noalias !4159, !nonnull !136, !align !284, !noundef !136
    #dbg_value(ptr poison, !4163, !DIExpression(), !4167)
    #dbg_value(ptr poison, !4166, !DIExpression(), !4167)
    #dbg_value(ptr poison, !690, !DIExpression(), !4169)
    #dbg_value(ptr @5, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4169)
    #dbg_value(i64 2, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4169)
  %i.fs = getelementptr inbounds nuw i8, ptr %.val15.i, i64 56, !dbg !4171
  %i.ft = load ptr, ptr %i.fs, align 8, !dbg !4171, !invariant.load !136, !noalias !4172, !nonnull !136
  %i.fu = call noundef ptr %i.ft(ptr noundef nonnull %.val.i72, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 2) #8, !dbg !4175, !noalias !4159, !inline_history !4176 ; 2 uses
    #dbg_value(ptr %i.fu, !4145, !DIExpression(), !4177)
  %.not.i73 = icmp eq ptr %i.fu, null, !dbg !4178
  br i1 %.not.i73, label %bb.aq, label %bb.ap, !dbg !4179, !prof !1440

bb.ap:                                            ; preds = %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBZ_6marker4SendNtB1z_4SyncEL_NtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit
    #dbg_value(ptr %i.fu, !4148, !DIExpression(), !4180)
  %i.fv = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.fu), !dbg !4181, !noalias !4159, !inline_history !4184
  br label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer14serialize_unitCsi2C7WdEh0SA_3h3i.exit, !dbg !4185

bb.aq:                                            ; preds = %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBZ_6marker4SendNtB1z_4SyncEL_NtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit
  %i.fw = call fastcc noundef align 8 ptr @_RINvXNtNtCsenfyI6F4F2A_10serde_json5value3serNtB5_5ValueNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB2h_6marker4SendNtB2R_4SyncEL_NtB1O_15PrettyFormatterEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.eb, ptr noalias nofree noundef align 8 dereferenceable(48) %1) #8, !dbg !4187, !noalias !4188, !inline_history !4184 ; 2 uses
  %.not14.i = icmp eq ptr %i.fw, null, !dbg !4189
  br i1 %.not14.i, label %_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBT_6marker4SendNtB1t_4SyncEL_NtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECsi2C7WdEh0SA_3h3i.exit, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer14serialize_unitCsi2C7WdEh0SA_3h3i.exit, !dbg !4190

_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBT_6marker4SendNtB1t_4SyncEL_NtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECsi2C7WdEh0SA_3h3i.exit: ; preds = %bb.aq
    #dbg_value(ptr %i.dv, !4192, !DIExpression(), !4196)
    #dbg_value(ptr poison, !4195, !DIExpression(), !4196)
  store i8 1, ptr %i.di, align 8, !dbg !4198, !alias.scope !4199, !noalias !4188
    #dbg_value(ptr null, !4145, !DIExpression(), !4202)
    #dbg_value(i8 2, !2740, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !3809)
    #dbg_value(ptr %i.ea, !2755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3882)
    #dbg_value(ptr undef, !2888, !DIExpression(), !2892)
    #dbg_value(ptr undef, !1307, !DIExpression(), !2891)
    #dbg_value(i64 1, !2347, !DIExpression(), !3883)
    #dbg_declare(ptr poison, !2356, !DIExpression(), !3885)
    #dbg_value(ptr undef, !1258, !DIExpression(), !2883)
    #dbg_value(ptr %i.ea, !1275, !DIExpression(), !3887)
    #dbg_value(ptr %i.ea, !2353, !DIExpression(), !3883)
    #dbg_value(ptr %i.dt, !1277, !DIExpression(), !3888)
    #dbg_value(ptr poison, !2375, !DIExpression(), !3889)
    #dbg_value(ptr poison, !2381, !DIExpression(), !3891)
  %i.fx = icmp eq ptr %i.ea, %i.dt, !dbg !3892
  br i1 %i.fx, label %._crit_edge.thread, label %bb.ae, !dbg !3893

._crit_edge:                                      ; preds = %bb.ad
  %2 = icmp eq i64 %i.dd, 0, !dbg !3841
    #dbg_value(ptr poison, !2755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4203), !dbg !4206
    #dbg_value(ptr %1, !4207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4213)
    #dbg_value(i8 poison, !4207, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4213)
    #dbg_declare(ptr poison, !4215, !DIExpression(), !4223)
    #dbg_value(ptr %1, !4210, !DIExpression(), !4225)
    #dbg_value(i8 poison, !4212, !DIExpression(), !4225)
  br i1 %2, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer14serialize_unitCsi2C7WdEh0SA_3h3i.exit, label %._crit_edge.thread, !dbg !4226

._crit_edge.thread:                               ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBT_6marker4SendNtB1t_4SyncEL_NtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtB8_5value5ValueECsi2C7WdEh0SA_3h3i.exit, %._crit_edge
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !4227
  %.val.i43 = load ptr, ptr %1, align 8, !dbg !4228, !alias.scope !4203 ; 5 uses
  %.val7.i44 = load ptr, ptr %i.de, align 8, !dbg !4228, !alias.scope !4203 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4229), !dbg !4228
    #dbg_value(ptr %i.fy, !3777, !DIExpression(), !4232)
    #dbg_value(ptr poison, !3780, !DIExpression(), !4232)
  %i.fz = load i64, ptr %i.df, align 8, !dbg !4234, !alias.scope !4235, !noundef !136
  %i.ga = add i64 %i.fz, -1, !dbg !4234           ; 3 uses
  store i64 %i.ga, ptr %i.df, align 8, !dbg !4234, !alias.scope !4235
  %i.gb = load i8, ptr %i.di, align 8, !dbg !4236, !range !1459, !alias.scope !4235, !noundef !136
  %i.gc = trunc nuw i8 %i.gb to i1, !dbg !4236
  br i1 %i.gc, label %bb.ar, label %._RINvNtCsenfyI6F4F2A_10serde_json3ser6indentQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBN_6marker4SendNtB1n_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread_crit_edge.i.i, !dbg !4236

._RINvNtCsenfyI6F4F2A_10serde_json3ser6indentQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBN_6marker4SendNtB1n_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread_crit_edge.i.i: ; preds = %._crit_edge.thread
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val7.i44, i64 56
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !dbg !4237, !invariant.load !136, !noalias !4239
  br label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i45, !dbg !4236

bb.ar:                                            ; preds = %._crit_edge.thread
    #dbg_value(ptr poison, !690, !DIExpression(), !4242)
    #dbg_value(ptr @0, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4242)
    #dbg_value(i64 1, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4242)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i43) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i44) ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.val7.i44, i64 56, !dbg !4244
  %i.ge = load ptr, ptr %i.gd, align 8, !dbg !4244, !invariant.load !136, !noalias !4245, !nonnull !136 ; 4 uses
  %i.gf = call noundef ptr %i.ge(ptr noundef nonnull %.val.i43, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1) #8, !dbg !4248, !noalias !4235, !inline_history !4249 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.gf, null, !dbg !4250
  br i1 %.not.i.i48, label %bb.as, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread.i, !dbg !4251

bb.as:                                            ; preds = %bb.ar
  %i.gg = load ptr, ptr %i.fy, align 8, !dbg !4253, !alias.scope !4235, !nonnull !136, !noundef !136
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !4253
  %i.gi = load i64, ptr %i.gh, align 8, !dbg !4253, !alias.scope !4235, !noundef !136
    #dbg_value(ptr poison, !611, !DIExpression(), !4254)
    #dbg_value(ptr poison, !646, !DIExpression(), !4259)
    #dbg_value(ptr poison, !653, !DIExpression(), !4260)
    #dbg_value(ptr poison, !592, !DIExpression(), !4261)
    #dbg_value(i64 %i.ga, !593, !DIExpression(), !4261)
    #dbg_value(ptr %i.gg, !594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4261)
    #dbg_value(i64 %i.gi, !594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4261)
    #dbg_value(i64 1, !661, !DIExpression(), !4262)
    #dbg_value(i64 1, !670, !DIExpression(), !4264)
    #dbg_value(i64 0, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4266)
    #dbg_value(i64 %i.ga, !595, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4266)
    #dbg_value(ptr undef, !653, !DIExpression(), !4260)
    #dbg_value(ptr undef, !646, !DIExpression(), !4259)
    #dbg_value(ptr undef, !611, !DIExpression(), !4254)
    #dbg_value(ptr undef, !621, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4267)
  %exitcond.not.i.i.i49338 = icmp eq i64 %i.ga, 0, !dbg !4268
  br i1 %exitcond.not.i.i.i49338, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i45, label %.lr.ph341, !dbg !4269

bb.at:                                            ; preds = %.lr.ph341
  %i.gj = add i64 %.sroa.03.0.i.i.i339, 1, !dbg !4270 ; 2 uses
    #dbg_value(i64 %i.gj, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4266)
    #dbg_value(i64 %i.gj, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4266)
    #dbg_value(ptr undef, !653, !DIExpression(), !4260)
    #dbg_value(ptr undef, !646, !DIExpression(), !4259)
    #dbg_value(ptr undef, !611, !DIExpression(), !4254)
    #dbg_value(ptr undef, !621, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4267)
  %exitcond.not.i.i.i49 = icmp eq i64 %i.gj, %i.ga, !dbg !4268
  br i1 %exitcond.not.i.i.i49, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i45, label %.lr.ph341, !dbg !4269

.lr.ph341:                                        ; preds = %bb.as, %bb.at
  %.sroa.03.0.i.i.i339 = phi i64 [ %i.gj, %bb.at ], [ 0, %bb.as ]
    #dbg_value(i64 %.sroa.03.0.i.i.i339, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4266)
    #dbg_value(i64 %.sroa.03.0.i.i.i339, !647, !DIExpression(), !4271)
    #dbg_value(i64 %.sroa.03.0.i.i.i339, !667, !DIExpression(), !4262)
    #dbg_value(i64 %.sroa.03.0.i.i.i339, !677, !DIExpression(), !4264)
    #dbg_value(i64 %.sroa.03.0.i.i.i339, !595, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4266)
    #dbg_value(ptr poison, !690, !DIExpression(), !4272)
    #dbg_value(ptr %i.gg, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4272)
    #dbg_value(i64 %i.gi, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4272)
  %i.gk = call noundef ptr %i.ge(ptr noundef nonnull %.val.i43, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gg, i64 noundef range(i64 0, -9223372036854775808) %i.gi) #8, !dbg !4274, !noalias !4275, !inline_history !4278 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gk, null, !dbg !4279
  br i1 %.not.i.i.i, label %bb.at, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread.i, !dbg !4280

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i45: ; preds = %bb.at, %bb.as, %._RINvNtCsenfyI6F4F2A_10serde_json3ser6indentQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBN_6marker4SendNtB1n_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread_crit_edge.i.i
  %i.gl = phi ptr [ %.pre.i.i, %._RINvNtCsenfyI6F4F2A_10serde_json3ser6indentQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBN_6marker4SendNtB1n_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread_crit_edge.i.i ], [ %i.ge, %bb.as ], [ %i.ge, %bb.at ], !dbg !4237
    #dbg_value(ptr poison, !690, !DIExpression(), !4281)
    #dbg_value(ptr @1, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4281)
    #dbg_value(i64 1, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4281)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i43) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i44) ]
  %i.gm = call noundef ptr %i.gl(ptr noundef nonnull %.val.i43, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 1) #8, !dbg !4282, !noalias !4235, !inline_history !4249 ; 2 uses
    #dbg_value(ptr %i.gm, !4218, !DIExpression(), !4283)
  %.not.i46 = icmp eq ptr %i.gm, null, !dbg !4284
  br i1 %.not.i46, label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer14serialize_unitCsi2C7WdEh0SA_3h3i.exit, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread.i, !dbg !4285, !prof !1771

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.thread.i: ; preds = %.lr.ph341, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i45, %bb.ar
  %.sroa.0.0.i10.i = phi ptr [ %i.gm, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit.i45 ], [ %i.gf, %bb.ar ], [ %i.gk, %.lr.ph341 ]
    #dbg_value(ptr %.sroa.0.0.i10.i, !4221, !DIExpression(), !4286)
  %i.gn = call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i10.i), !dbg !4287, !noalias !4203
  br label %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer14serialize_unitCsi2C7WdEh0SA_3h3i.exit, !dbg !4290
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXs1q_NtNtCs9xKKqPmwf7Y_10serde_core3ser5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsjfnSKV9Rz3v_3h3i5frame17CloseTriggerFrameENtB9_9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQIBM_hENtB2x_15PrettyFormatterEECsi2C7WdEh0SA_3h3i(ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) initializes((32, 33)) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4291 {
bb.a:
    #dbg_value(ptr poison, !4580, !DIExpression(), !4584)
    #dbg_value(ptr %0, !4581, !DIExpression(), !4584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4585), !dbg !4588
    #dbg_declare(ptr poison, !4589, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !4632)
    #dbg_value(ptr poison, !4634, !DIExpression(), !4655)
    #dbg_value(ptr poison, !4642, !DIExpression(), !4711)
    #dbg_value(ptr poison, !4691, !DIExpression(), !4712)
    #dbg_value(ptr poison, !4707, !DIExpression(), !4713)
    #dbg_value(ptr poison, !4714, !DIExpression(), !4736)
    #dbg_value(ptr poison, !4689, !DIExpression(), !4712)
    #dbg_value(ptr poison, !4706, !DIExpression(), !4713)
    #dbg_value(ptr %0, !4596, !DIExpression(), !4738)
    #dbg_value(ptr poison, !4597, !DIExpression(), !4738)
    #dbg_value(ptr poison, !4739, !DIExpression(), !4744)
    #dbg_value(i64 %.16.val, !4746, !DIExpression(), !4767)
    #dbg_value(i64 %.16.val, !4773, !DIExpression(), !4780)
    #dbg_value(ptr %.8.val, !4771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4782)
    #dbg_value(ptr %.8.val, !4758, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4783)
    #dbg_value(i64 %.16.val, !4771, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4782)
    #dbg_value(i64 %.16.val, !4758, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4783)
    #dbg_value(ptr %.8.val, !4763, !DIExpression(), !4784)
    #dbg_value(ptr %.8.val, !4779, !DIExpression(), !4780)
  %.idx.i = mul nuw nsw i64 %.16.val, 160, !dbg !4785
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx.i, !dbg !4785
    #dbg_value(ptr %.8.val, !4598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4786)
    #dbg_value(ptr %i.a, !4598, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4786)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4787), !dbg !4790
    #dbg_value(ptr poison, !4791, !DIExpression(), !4798)
    #dbg_value(i64 1, !4820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4830)
    #dbg_value(i64 %.16.val, !4820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4830)
    #dbg_value(ptr %0, !4819, !DIExpression(), !4830)
    #dbg_value(ptr poison, !4794, !DIExpression(), !4831)
  %.val.i.i = load ptr, ptr %0, align 8, !dbg !4832, !alias.scope !4833, !noalias !4834, !nonnull !136, !align !284, !noundef !136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4836), !dbg !4832
    #dbg_value(ptr %0, !4839, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4843)
    #dbg_value(ptr poison, !4842, !DIExpression(), !4843)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4845 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !4845, !alias.scope !4846, !noalias !4834, !noundef !136 ; 2 uses
  %i.d = add i64 %i.c, 1, !dbg !4845
  store i64 %i.d, ptr %i.b, align 8, !dbg !4845, !alias.scope !4846, !noalias !4834
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4847 ; 2 uses
  store i8 0, ptr %i.e, align 8, !dbg !4847, !alias.scope !4846, !noalias !4834
    #dbg_value(ptr poison, !296, !DIExpression(), !4848)
    #dbg_value(ptr @2, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4848)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4848)
    #dbg_value(ptr %.val.i.i, !309, !DIExpression(), !4850)
    #dbg_value(ptr @2, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4850)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4850)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !4852, !noalias !4853
    #dbg_value(ptr undef, !4791, !DIExpression(), !4798)
  %cond.i = icmp eq i64 %.16.val, 0, !dbg !4854
  br i1 %cond.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i, label %.lr.ph.i.i.i, !dbg !4854

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4855), !dbg !4858
    #dbg_value(ptr %0, !4859, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4871)
    #dbg_value(ptr poison, !4862, !DIExpression(), !4871)
  store i64 %i.c, ptr %i.b, align 8, !dbg !4873, !alias.scope !4874, !noalias !4834
    #dbg_value(ptr poison, !296, !DIExpression(), !4875)
    #dbg_value(ptr @6, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4875)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4875)
    #dbg_value(ptr %.val.i.i, !309, !DIExpression(), !4877)
    #dbg_value(ptr @6, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4877)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4877)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !4879, !noalias !4880
    #dbg_value(ptr %0, !4589, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4881)
    #dbg_value(ptr undef, !4706, !DIExpression(), !4713)
    #dbg_value(ptr undef, !4707, !DIExpression(), !4713)
    #dbg_value(ptr undef, !4691, !DIExpression(), !4712)
    #dbg_value(ptr undef, !4689, !DIExpression(), !4712)
    #dbg_declare(ptr poison, !4690, !DIExpression(), !4882)
    #dbg_declare(ptr poison, !4692, !DIExpression(), !4883)
    #dbg_value(ptr undef, !4714, !DIExpression(), !4736)
    #dbg_value(i64 1, !4884, !DIExpression(), !4891)
    #dbg_value(ptr %.8.val, !4730, !DIExpression(), !4893)
    #dbg_value(ptr %.8.val, !4890, !DIExpression(), !4891)
    #dbg_value(ptr %i.a, !4732, !DIExpression(), !4894)
    #dbg_value(ptr poison, !4895, !DIExpression(), !4902)
    #dbg_value(ptr poison, !4901, !DIExpression(), !4904)
    #dbg_value(i8 poison, !4589, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4905), !dbg !4908
    #dbg_value(ptr %0, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4917)
    #dbg_value(i8 poison, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4917)
    #dbg_value(ptr %0, !4914, !DIExpression(), !4919)
    #dbg_value(i8 poison, !4916, !DIExpression(), !4919)
  br label %_RINvYQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB7_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIBR_NtNtCsjfnSKV9Rz3v_3h3i5frame17CloseTriggerFrameEECsi2C7WdEh0SA_3h3i.exit, !dbg !4920

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b, !dbg !4921

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame17CloseTriggerFrameINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2x_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3k_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3I_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i, %.lr.ph.i.i.i
  %i.h = phi i1 [ true, %.lr.ph.i.i.i ], [ false, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame17CloseTriggerFrameINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2x_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3k_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3I_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i ]
  %i.i = phi ptr [ %.8.val, %.lr.ph.i.i.i ], [ %i.j, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame17CloseTriggerFrameINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2x_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3k_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3I_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i ] ; 2 uses
    #dbg_value(ptr %i.i, !4730, !DIExpression(), !4893)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 160, !dbg !4922 ; 2 uses
    #dbg_value(ptr %i.j, !4598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4786)
    #dbg_value(ptr %i.i, !4693, !DIExpression(), !4923)
    #dbg_value(ptr poison, !4677, !DIExpression(DW_OP_deref), !4924)
    #dbg_declare(ptr poison, !4678, !DIExpression(), !4925)
    #dbg_value(ptr %i.i, !4676, !DIExpression(), !4924)
    #dbg_value(ptr poison, !4666, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4926)
    #dbg_value(ptr undef, !4665, !DIExpression(DW_OP_deref), !4926)
    #dbg_value(ptr undef, !4642, !DIExpression(), !4711)
    #dbg_value(ptr poison, !4643, !DIExpression(), !4711)
    #dbg_value(ptr undef, !4634, !DIExpression(), !4655)
    #dbg_value(ptr undef, !4644, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4927)
  %.val.i.i.i.i.i.i = load ptr, ptr %0, align 8, !dbg !4928, !alias.scope !4585, !noalias !4929, !nonnull !136, !noundef !136 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4942), !dbg !4928
    #dbg_value(ptr %i.f, !4945, !DIExpression(), !4956)
    #dbg_value(ptr poison, !4950, !DIExpression(), !4956)
    #dbg_value(i1 %i.h, !4951, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4956)
    #dbg_value(ptr poison, !296, !DIExpression(), !4958)
    #dbg_value(ptr poison, !296, !DIExpression(), !4960)
  br i1 %i.h, label %.split.i.i.i.i.i.i.i, label %.split9.i.i.i.i.i.i.i, !dbg !4962

.split9.i.i.i.i.i.i.i:                            ; preds = %bb.b
    #dbg_value(ptr @4, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4960)
    #dbg_value(i64 2, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4960)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !309, !DIExpression(), !4963)
    #dbg_value(ptr @4, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4963)
    #dbg_value(i64 2, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4963)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !4965, !noalias !4966
  br label %bb.c, !dbg !4967

.split.i.i.i.i.i.i.i:                             ; preds = %bb.b
    #dbg_value(ptr @0, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4958)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4958)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !309, !DIExpression(), !4968)
    #dbg_value(ptr @0, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4968)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4968)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !4970, !noalias !4966
  br label %bb.c, !dbg !4967

bb.c:                                             ; preds = %.split.i.i.i.i.i.i.i, %.split9.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.b, align 8, !dbg !4971, !alias.scope !4972, !noalias !4929, !noundef !136 ; 2 uses
  %i.l = load ptr, ptr %i.f, align 8, !dbg !4973, !alias.scope !4972, !noalias !4929, !nonnull !136, !noundef !136
  %i.m = load i64, ptr %i.g, align 8, !dbg !4973, !alias.scope !4972, !noalias !4929, !noundef !136
    #dbg_value(ptr poison, !708, !DIExpression(), !4974)
    #dbg_value(i64 %i.k, !709, !DIExpression(), !4974)
    #dbg_value(ptr %i.l, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4974)
    #dbg_value(i64 %i.m, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4974)
    #dbg_value(i64 1, !719, !DIExpression(), !4976)
    #dbg_value(i64 1, !736, !DIExpression(), !4980)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4982)
    #dbg_value(i64 %i.k, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4982)
    #dbg_value(ptr undef, !733, !DIExpression(), !4983)
    #dbg_value(ptr undef, !728, !DIExpression(), !4984)
    #dbg_value(ptr undef, !745, !DIExpression(), !4985)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4987)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0, !dbg !4988
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !dbg !4989

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.03.012.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i, !729, !DIExpression(), !4990)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i, !722, !DIExpression(), !4976)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i, !739, !DIExpression(), !4980)
  %i.n = add nuw i64 %.sroa.03.012.i.i.i.i.i.i.i.i, 1, !dbg !4991 ; 2 uses
    #dbg_value(i64 %i.n, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4982)
    #dbg_value(ptr poison, !296, !DIExpression(), !4992)
    #dbg_value(ptr %i.l, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4992)
    #dbg_value(i64 %i.m, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4992)
    #dbg_value(ptr %.val.i.i.i.i.i.i, !309, !DIExpression(), !4994)
    #dbg_value(ptr %i.l, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4994)
    #dbg_value(i64 %i.m, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4994)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef range(i64 0, -9223372036854775808) %i.m), !dbg !4996, !noalias !4997
    #dbg_value(ptr undef, !733, !DIExpression(), !4983)
    #dbg_value(ptr undef, !728, !DIExpression(), !4984)
    #dbg_value(ptr undef, !745, !DIExpression(), !4985)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4987)
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.n, %i.k, !dbg !4988
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !dbg !4989

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c
    #dbg_value(i8 2, !4589, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4881)
    #dbg_value(ptr poison, !5000, !DIExpression(), !5006)
    #dbg_value(ptr %0, !5005, !DIExpression(), !5006)
  %i.o = tail call noundef align 8 ptr @_RINvXNvNtCsjfnSKV9Rz3v_3h3i5frames_1__NtB5_17CloseTriggerFrameNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1U_15PrettyFormatterEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0), !dbg !5008, !noalias !5009 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null, !dbg !5010
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame17CloseTriggerFrameINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2x_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3k_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3I_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i, label %_RINvYQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB7_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIBR_NtNtCsjfnSKV9Rz3v_3h3i5frame17CloseTriggerFrameEECsi2C7WdEh0SA_3h3i.exit, !dbg !5011

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame17CloseTriggerFrameINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2x_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3k_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3I_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i: ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i
    #dbg_value(ptr %i.f, !5013, !DIExpression(), !5017)
    #dbg_value(ptr poison, !5016, !DIExpression(), !5017)
  store i8 1, ptr %i.e, align 8, !dbg !5019, !alias.scope !5020, !noalias !5009
    #dbg_value(ptr undef, !4714, !DIExpression(), !4736)
    #dbg_value(i64 1, !4884, !DIExpression(), !4891)
    #dbg_value(ptr %i.j, !4730, !DIExpression(), !4893)
    #dbg_value(ptr %i.j, !4890, !DIExpression(), !4891)
    #dbg_value(ptr %i.a, !4732, !DIExpression(), !4894)
    #dbg_value(ptr poison, !4895, !DIExpression(), !4902)
    #dbg_value(ptr poison, !4901, !DIExpression(), !4904)
  %i.p = icmp eq ptr %i.j, %i.a, !dbg !5023
  br i1 %i.p, label %bb.d, label %bb.b, !dbg !4921

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame17CloseTriggerFrameINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2x_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3k_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3I_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i
    #dbg_value(i8 2, !4589, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4881)
    #dbg_value(ptr %0, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4917)
    #dbg_value(i8 2, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4917)
    #dbg_value(ptr %0, !4914, !DIExpression(), !4919)
    #dbg_value(i8 2, !4916, !DIExpression(), !4919)
  %.val.i19.i = load ptr, ptr %0, align 8, !dbg !5024, !alias.scope !5025, !nonnull !136, !noundef !136 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5026), !dbg !5024
    #dbg_value(ptr %0, !4859, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5029)
    #dbg_value(ptr poison, !4862, !DIExpression(), !5029)
  %i.q = load i64, ptr %i.b, align 8, !dbg !5031, !alias.scope !5032, !noundef !136
  %i.r = add i64 %i.q, -1, !dbg !5031             ; 3 uses
  store i64 %i.r, ptr %i.b, align 8, !dbg !5031, !alias.scope !5032
    #dbg_value(ptr %i.f, !4859, !DIExpression(), !5029)
    #dbg_value(ptr poison, !296, !DIExpression(), !5033)
    #dbg_value(ptr @0, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5033)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5033)
    #dbg_value(ptr %.val.i19.i, !309, !DIExpression(), !5035)
    #dbg_value(ptr @0, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5035)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5035)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i19.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !5037, !noalias !5038
  %i.s = load ptr, ptr %i.f, align 8, !dbg !5039, !alias.scope !5032, !nonnull !136, !noundef !136
  %i.t = load i64, ptr %i.g, align 8, !dbg !5039, !alias.scope !5032, !noundef !136
    #dbg_value(ptr poison, !708, !DIExpression(), !5040)
    #dbg_value(i64 %i.r, !709, !DIExpression(), !5040)
    #dbg_value(ptr %i.s, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5040)
    #dbg_value(i64 %i.t, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5040)
    #dbg_value(i64 1, !719, !DIExpression(), !5042)
    #dbg_value(i64 1, !736, !DIExpression(), !5046)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5048)
    #dbg_value(i64 %i.r, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5048)
    #dbg_value(ptr undef, !733, !DIExpression(), !5049)
    #dbg_value(ptr undef, !728, !DIExpression(), !5050)
    #dbg_value(ptr undef, !745, !DIExpression(), !5051)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5053)
  %.not.i.i.i.i = icmp eq i64 %i.r, 0, !dbg !5054
  br i1 %.not.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i, label %.lr.ph.i.i.i.i, !dbg !5055

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.sroa.03.012.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
    #dbg_value(i64 %.sroa.03.012.i.i.i.i, !729, !DIExpression(), !5056)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i, !722, !DIExpression(), !5042)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i, !739, !DIExpression(), !5046)
  %i.u = add nuw i64 %.sroa.03.012.i.i.i.i, 1, !dbg !5057 ; 2 uses
    #dbg_value(i64 %i.u, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5048)
    #dbg_value(ptr poison, !296, !DIExpression(), !5058)
    #dbg_value(ptr %i.s, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5058)
    #dbg_value(i64 %i.t, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5058)
    #dbg_value(ptr %.val.i19.i, !309, !DIExpression(), !5060)
    #dbg_value(ptr %i.s, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5060)
    #dbg_value(i64 %i.t, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5060)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i19.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.t), !dbg !5062, !noalias !5063
    #dbg_value(ptr undef, !733, !DIExpression(), !5049)
    #dbg_value(ptr undef, !728, !DIExpression(), !5050)
    #dbg_value(ptr undef, !745, !DIExpression(), !5051)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5053)
  %exitcond.not.i.i.i.i = icmp eq i64 %i.u, %i.r, !dbg !5054
  br i1 %exitcond.not.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i, label %.lr.ph.i.i.i.i, !dbg !5055

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
    #dbg_value(ptr poison, !296, !DIExpression(), !5066)
    #dbg_value(ptr @6, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5066)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5066)
    #dbg_value(ptr %.val.i19.i, !309, !DIExpression(), !5068)
    #dbg_value(ptr @6, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5068)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5068)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i19.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !5070, !noalias !5038
  br label %_RINvYQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB7_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIBR_NtNtCsjfnSKV9Rz3v_3h3i5frame17CloseTriggerFrameEECsi2C7WdEh0SA_3h3i.exit, !dbg !5071

_RINvYQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB7_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIBR_NtNtCsjfnSKV9Rz3v_3h3i5frame17CloseTriggerFrameEECsi2C7WdEh0SA_3h3i.exit: ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i
  %.sroa.0.0.i = phi ptr [ null, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i ], [ null, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i ], [ %i.o, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i ], !dbg !5072
  ret ptr %.sroa.0.0.i, !dbg !5073
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBZ_6marker4SendNtB1z_4SyncEL_NtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 !dbg !5074 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [6 x i8], align 4                 ; 6 uses
    #dbg_value(ptr %0, !5078, !DIExpression(), !5092)
    #dbg_value(ptr %1, !5079, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5092)
    #dbg_value(i64 %2, !5079, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5092)
    #dbg_value(ptr poison, !5093, !DIExpression(), !5101)
    #dbg_value(i64 1, !5099, !DIExpression(), !5103)
    #dbg_declare(ptr poison, !5104, !DIExpression(), !5116)
    #dbg_declare(ptr poison, !5104, !DIExpression(), !5118)
    #dbg_value(ptr %0, !5080, !DIExpression(), !5120)
    #dbg_value(ptr %0, !5082, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5121)
    #dbg_value(ptr %0, !5096, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5122)
  %i.c = load ptr, ptr %0, align 8, !dbg !5123, !nonnull !136, !align !284, !noundef !136 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !5123
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5122 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !dbg !5122, !range !5124, !noundef !136
    #dbg_value(i8 %i.f, !5097, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5125)
  %i.g = icmp eq i8 %i.f, 1, !dbg !5126
  %.val = load ptr, ptr %i.c, align 8, !dbg !5127, !nonnull !136, !noundef !136 ; 3 uses
  %i.h = getelementptr i8, ptr %i.c, i64 8, !dbg !5127 ; 2 uses
  %.val18 = load ptr, ptr %i.h, align 8, !dbg !5127, !nonnull !136, !noundef !136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5128), !dbg !5127
    #dbg_value(ptr %i.d, !3935, !DIExpression(), !5131)
    #dbg_value(ptr poison, !3938, !DIExpression(), !5131)
    #dbg_value(i1 %i.g, !3939, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5131)
    #dbg_value(ptr poison, !690, !DIExpression(), !5133)
    #dbg_value(ptr poison, !690, !DIExpression(), !5135)
  %i.i = getelementptr inbounds nuw i8, ptr %.val18, i64 56, !dbg !5137
  %i.j = load ptr, ptr %i.i, align 8, !dbg !5137, !invariant.load !136, !noalias !5128, !nonnull !136 ; 3 uses
  br i1 %i.g, label %.split.i, label %.split9.i, !dbg !5139

.split9.i:                                        ; preds = %bb.a
    #dbg_value(ptr @4, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5135)
    #dbg_value(i64 2, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5135)
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2) #8, !dbg !5140, !noalias !5128, !inline_history !5141
  br label %bb.b, !dbg !5142

.split.i:                                         ; preds = %bb.a
    #dbg_value(ptr @0, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5133)
    #dbg_value(i64 1, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5133)
  %i.l = tail call noundef ptr %i.j(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1) #8, !dbg !5143, !noalias !5128, !inline_history !5141
  br label %bb.b, !dbg !5142

bb.b:                                             ; preds = %.split.i, %.split9.i
  %phi.call.i = phi ptr [ %i.l, %.split.i ], [ %i.k, %.split9.i ], !dbg !5144 ; 2 uses
  %.not.i = icmp eq ptr %phi.call.i, null, !dbg !5145
  br i1 %.not.i, label %bb.c, label %.loopexit, !dbg !5146

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !5147
  %i.n = load i64, ptr %i.m, align 8, !dbg !5147, !alias.scope !5128, !noundef !136 ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !dbg !5148, !alias.scope !5128, !nonnull !136, !noundef !136
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !5148
  %i.q = load i64, ptr %i.p, align 8, !dbg !5148, !alias.scope !5128, !noundef !136
    #dbg_value(ptr poison, !611, !DIExpression(), !5149)
    #dbg_value(ptr poison, !646, !DIExpression(), !5154)
    #dbg_value(ptr poison, !653, !DIExpression(), !5155)
    #dbg_value(ptr poison, !592, !DIExpression(), !5156)
    #dbg_value(i64 %i.n, !593, !DIExpression(), !5156)
    #dbg_value(ptr %i.o, !594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5156)
    #dbg_value(i64 %i.q, !594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5156)
    #dbg_value(i64 1, !661, !DIExpression(), !5157)
    #dbg_value(i64 1, !670, !DIExpression(), !5159)
    #dbg_value(i64 0, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5161)
    #dbg_value(i64 %i.n, !595, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5161)
    #dbg_value(ptr undef, !653, !DIExpression(), !5155)
    #dbg_value(ptr undef, !646, !DIExpression(), !5154)
    #dbg_value(ptr undef, !611, !DIExpression(), !5149)
    #dbg_value(ptr undef, !621, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5162)
  %exitcond.not.i.i53 = icmp eq i64 %i.n, 0, !dbg !5163
  br i1 %exitcond.not.i.i53, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1D_6marker4SendNtB2d_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit, label %.lr.ph, !dbg !5164

bb.d:                                             ; preds = %.lr.ph
  %i.r = add i64 %.sroa.03.0.i.i54, 1, !dbg !5165 ; 2 uses
    #dbg_value(i64 %i.r, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5161)
    #dbg_value(i64 %i.r, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5161)
    #dbg_value(ptr undef, !653, !DIExpression(), !5155)
    #dbg_value(ptr undef, !646, !DIExpression(), !5154)
    #dbg_value(ptr undef, !611, !DIExpression(), !5149)
    #dbg_value(ptr undef, !621, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5162)
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.n, !dbg !5163
  br i1 %exitcond.not.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1D_6marker4SendNtB2d_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit, label %.lr.ph, !dbg !5164

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.03.0.i.i54 = phi i64 [ %i.r, %bb.d ], [ 0, %bb.c ]
    #dbg_value(i64 %.sroa.03.0.i.i54, !595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5161)
    #dbg_value(i64 %.sroa.03.0.i.i54, !647, !DIExpression(), !5166)
    #dbg_value(i64 %.sroa.03.0.i.i54, !667, !DIExpression(), !5157)
    #dbg_value(i64 %.sroa.03.0.i.i54, !677, !DIExpression(), !5159)
    #dbg_value(i64 %.sroa.03.0.i.i54, !595, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5161)
    #dbg_value(ptr poison, !690, !DIExpression(), !5167)
    #dbg_value(ptr %i.o, !695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5167)
    #dbg_value(i64 %i.q, !695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5167)
  %i.s = tail call noundef ptr %i.j(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.q) #8, !dbg !5169, !noalias !5170, !inline_history !5173 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null, !dbg !5174
  br i1 %.not.i.i, label %bb.d, label %.loopexit, !dbg !5175

.loopexit:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.ph = phi ptr [ %phi.call.i, %bb.b ], [ %i.s, %.lr.ph ]
    #dbg_value(ptr %.sroa.0.0.i.ph, !5107, !DIExpression(), !5176)
    #dbg_value(ptr %.sroa.0.0.i.ph, !5110, !DIExpression(), !5177)
  %i.t = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i.ph), !dbg !5178
  br label %bb.l, !dbg !5181

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1D_6marker4SendNtB2d_4SyncEL_ECsi2C7WdEh0SA_3h3i.exit: ; preds = %bb.d, %bb.c
    #dbg_value(ptr null, !5107, !DIExpression(), !5176)
  store i8 2, ptr %i.e, align 8, !dbg !5183
  %.val19 = load ptr, ptr %i.c, align 8, !dbg !5184, !nonnull !136, !noundef !136 ; 6 uses
  %.val20 = load ptr, ptr %i.h, align 8, !dbg !5184, !nonnull !136, !align !284, !noundef !136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5185), !dbg !5184
    #dbg_value(ptr %1, !5188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5195)
    #dbg_value(i64 %2, !5188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5195)
    #dbg_value(ptr poison, !5194, !DIExpression(), !5195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5197), !dbg !5200
    #dbg_value(ptr poison, !4016, !DIExpression(), !5201)
    #dbg_value(ptr %1, !4021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5201)
    #dbg_value(i64 %2, !4021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5203), !dbg !5206
    #dbg_value(ptr poison, !3083, !DIExpression(), !5207)
    #dbg_value(ptr %1, !3088, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5207)
    #dbg_value(i64 %2, !3088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5207)
    #dbg_declare(ptr poison, !3091, !DIExpression(), !5209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5211), !dbg !5214
    #dbg_value(ptr poison, !3105, !DIExpression(), !5215)
    #dbg_value(ptr poison, !3110, !DIExpression(), !5215)
    #dbg_value(ptr %1, !3111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5215)
    #dbg_value(i64 %2, !3111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5215)
    #dbg_value(ptr poison, !3122, !DIExpression(), !5217)
    #dbg_value(ptr poison, !3125, !DIExpression(), !5217)
end_hunk_1
begin_hunk_2_@_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeIBN_NtNtCsjfnSKV9Rz3v_3h3i5frame18SerializableHeaderEECsi2C7WdEh0SA_3h3i:bb.a
    #dbg_value(ptr @5, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6751)
    #dbg_value(i64 2, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6751)
    #dbg_value(ptr %.val.i9, !309, !DIExpression(), !6753)
    #dbg_value(ptr @5, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6753)
    #dbg_value(i64 2, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6753)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !6755
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6756), !dbg !6759
    #dbg_value(ptr poison, !6760, !DIExpression(), !6767)
    #dbg_value(ptr %i.a, !6765, !DIExpression(), !6767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6769), !dbg !6772
    #dbg_declare(ptr poison, !6773, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !6806)
    #dbg_value(ptr poison, !6808, !DIExpression(), !6827)
    #dbg_value(ptr poison, !6815, !DIExpression(), !6883)
    #dbg_value(ptr poison, !6863, !DIExpression(), !6884)
    #dbg_value(ptr poison, !6879, !DIExpression(), !6885)
    #dbg_value(ptr poison, !6886, !DIExpression(), !6908)
    #dbg_value(ptr poison, !6861, !DIExpression(), !6884)
    #dbg_value(ptr poison, !6878, !DIExpression(), !6885)
    #dbg_value(ptr %i.a, !6780, !DIExpression(), !6910)
    #dbg_value(ptr poison, !6781, !DIExpression(), !6910)
    #dbg_value(ptr poison, !6911, !DIExpression(), !6916)
    #dbg_value(i64 %.val8, !6918, !DIExpression(), !6939)
    #dbg_value(i64 %.val8, !6945, !DIExpression(), !6952)
    #dbg_value(ptr %.val7, !6943, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6954)
    #dbg_value(ptr %.val7, !6930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6955)
    #dbg_value(i64 %.val8, !6943, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6954)
    #dbg_value(i64 %.val8, !6930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6955)
    #dbg_value(ptr %.val7, !6935, !DIExpression(), !6956)
    #dbg_value(ptr %.val7, !6951, !DIExpression(), !6952)
  %.idx.i.i.i = shl nuw nsw i64 %.val8, 3, !dbg !6957
  %i.o = getelementptr inbounds nuw i8, ptr %.val7, i64 %.idx.i.i.i, !dbg !6957
    #dbg_value(ptr %.val7, !6782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6958)
    #dbg_value(ptr %i.o, !6782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6958)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6959), !dbg !6962
    #dbg_value(ptr poison, !4791, !DIExpression(), !6963)
    #dbg_value(i64 1, !4820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6966)
    #dbg_value(i64 %.val8, !4820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6966)
    #dbg_value(ptr %i.a, !4819, !DIExpression(), !6966)
    #dbg_value(ptr poison, !4794, !DIExpression(), !6967)
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !dbg !6968, !alias.scope !6969, !noalias !6970, !nonnull !136, !align !284, !noundef !136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6972), !dbg !6968
    #dbg_value(ptr %i.a, !4839, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6975)
    #dbg_value(ptr poison, !4842, !DIExpression(), !6975)
  %i.p = load i64, ptr %i.f, align 8, !dbg !6977, !alias.scope !6978, !noalias !6970, !noundef !136 ; 2 uses
  %i.q = add i64 %i.p, 1, !dbg !6977
  store i64 %i.q, ptr %i.f, align 8, !dbg !6977, !alias.scope !6978, !noalias !6970
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !6979 ; 3 uses
  store i8 0, ptr %i.r, align 8, !dbg !6979, !alias.scope !6978, !noalias !6970
    #dbg_value(ptr poison, !296, !DIExpression(), !6980)
    #dbg_value(ptr @2, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6980)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6980)
    #dbg_value(ptr %.val.i.i.i.i, !309, !DIExpression(), !6982)
    #dbg_value(ptr @2, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6982)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6982)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !6984, !noalias !6985
    #dbg_value(ptr undef, !4791, !DIExpression(), !6963)
  %cond.i.i.i = icmp eq i64 %.val8, 0, !dbg !6986
  br i1 %cond.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !6986

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i: ; preds = %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6987), !dbg !6990
    #dbg_value(ptr %i.a, !4859, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6991)
    #dbg_value(ptr poison, !4862, !DIExpression(), !6991)
  store i64 %i.p, ptr %i.f, align 8, !dbg !6993, !alias.scope !6994, !noalias !6970
    #dbg_value(ptr poison, !296, !DIExpression(), !6995)
    #dbg_value(ptr @6, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6995)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6995)
    #dbg_value(ptr %.val.i.i.i.i, !309, !DIExpression(), !6997)
    #dbg_value(ptr @6, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6997)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6997)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !6999, !noalias !7000
    #dbg_value(ptr %i.a, !6773, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7001)
    #dbg_value(ptr undef, !6878, !DIExpression(), !6885)
    #dbg_value(ptr undef, !6879, !DIExpression(), !6885)
    #dbg_value(ptr undef, !6863, !DIExpression(), !6884)
    #dbg_value(ptr undef, !6861, !DIExpression(), !6884)
    #dbg_declare(ptr poison, !6862, !DIExpression(), !7002)
    #dbg_declare(ptr poison, !6864, !DIExpression(), !7003)
    #dbg_value(ptr undef, !6886, !DIExpression(), !6908)
    #dbg_value(i64 1, !7004, !DIExpression(), !7011)
    #dbg_value(ptr %.val7, !6902, !DIExpression(), !7013)
    #dbg_value(ptr %.val7, !7010, !DIExpression(), !7011)
    #dbg_value(ptr %i.o, !6904, !DIExpression(), !7014)
    #dbg_value(ptr poison, !7015, !DIExpression(), !7022)
    #dbg_value(ptr poison, !7021, !DIExpression(), !7024)
    #dbg_value(i8 poison, !6773, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !7001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7025), !dbg !7028
    #dbg_value(ptr %i.a, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7029)
    #dbg_value(i8 poison, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !7029)
    #dbg_value(ptr %i.a, !4914, !DIExpression(), !7031)
    #dbg_value(i8 poison, !4916, !DIExpression(), !7031)
  br label %bb.e, !dbg !7032

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame18SerializableHeaderINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2y_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3l_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3J_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i
  %i.s = phi i1 [ false, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame18SerializableHeaderINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2y_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3l_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3J_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i ], [ true, %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit ]
  %i.t = phi ptr [ %i.u, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame18SerializableHeaderINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2y_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3l_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3J_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i ], [ %.val7, %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit ] ; 2 uses
    #dbg_value(ptr %i.t, !6902, !DIExpression(), !7013)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !7033 ; 2 uses
    #dbg_value(ptr %i.u, !6782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6958)
    #dbg_value(ptr %i.t, !6865, !DIExpression(), !7034)
    #dbg_value(ptr poison, !6849, !DIExpression(DW_OP_deref), !7035)
    #dbg_declare(ptr poison, !6850, !DIExpression(), !7036)
    #dbg_value(ptr %i.t, !6848, !DIExpression(), !7035)
    #dbg_value(ptr poison, !6838, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7037)
    #dbg_value(ptr undef, !6837, !DIExpression(DW_OP_deref), !7037)
    #dbg_value(ptr undef, !6815, !DIExpression(), !6883)
    #dbg_value(ptr poison, !6816, !DIExpression(), !6883)
    #dbg_value(ptr undef, !6808, !DIExpression(), !6827)
    #dbg_value(ptr undef, !6817, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7038)
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !dbg !7039, !alias.scope !7040, !noalias !7041, !nonnull !136, !noundef !136 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7054), !dbg !7039
    #dbg_value(ptr %i.b, !4945, !DIExpression(), !7057)
    #dbg_value(ptr poison, !4950, !DIExpression(), !7057)
    #dbg_value(i1 %i.s, !4951, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7057)
    #dbg_value(ptr poison, !296, !DIExpression(), !7059)
    #dbg_value(ptr poison, !296, !DIExpression(), !7061)
  br i1 %i.s, label %.split.i.i.i.i.i.i.i.i.i, label %.split9.i.i.i.i.i.i.i.i.i, !dbg !7063

.split9.i.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i
    #dbg_value(ptr @4, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7061)
    #dbg_value(i64 2, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7061)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i, !309, !DIExpression(), !7064)
    #dbg_value(ptr @4, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7064)
    #dbg_value(i64 2, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7064)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !7066, !noalias !7067
  br label %bb.c, !dbg !7068

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i
    #dbg_value(ptr @0, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7059)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7059)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i, !309, !DIExpression(), !7069)
    #dbg_value(ptr @0, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7069)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7069)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !7071, !noalias !7067
  br label %bb.c, !dbg !7068

bb.c:                                             ; preds = %.split.i.i.i.i.i.i.i.i.i, %.split9.i.i.i.i.i.i.i.i.i
  %i.v = load i64, ptr %i.f, align 8, !dbg !7072, !alias.scope !7073, !noalias !7041, !noundef !136 ; 2 uses
  %i.w = load ptr, ptr %i.b, align 8, !dbg !7074, !alias.scope !7073, !noalias !7041, !nonnull !136, !noundef !136
  %i.x = load i64, ptr %i.i, align 8, !dbg !7074, !alias.scope !7073, !noalias !7041, !noundef !136
    #dbg_value(ptr poison, !708, !DIExpression(), !7075)
    #dbg_value(i64 %i.v, !709, !DIExpression(), !7075)
    #dbg_value(ptr %i.w, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7075)
    #dbg_value(i64 %i.x, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7075)
    #dbg_value(i64 1, !719, !DIExpression(), !7077)
    #dbg_value(i64 1, !736, !DIExpression(), !7081)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7083)
    #dbg_value(i64 %i.v, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7083)
    #dbg_value(ptr undef, !733, !DIExpression(), !7084)
    #dbg_value(ptr undef, !728, !DIExpression(), !7085)
    #dbg_value(ptr undef, !745, !DIExpression(), !7086)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7088)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.v, 0, !dbg !7089
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !dbg !7090

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.03.012.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i, !729, !DIExpression(), !7091)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i, !722, !DIExpression(), !7077)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i, !739, !DIExpression(), !7081)
  %i.y = add nuw i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i, 1, !dbg !7092 ; 2 uses
    #dbg_value(i64 %i.y, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7083)
    #dbg_value(ptr poison, !296, !DIExpression(), !7093)
    #dbg_value(ptr %i.w, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7093)
    #dbg_value(i64 %i.x, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7093)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i, !309, !DIExpression(), !7095)
    #dbg_value(ptr %i.w, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7095)
    #dbg_value(i64 %i.x, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7095)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef range(i64 0, -9223372036854775808) %i.x), !dbg !7097, !noalias !7098
    #dbg_value(ptr undef, !733, !DIExpression(), !7084)
    #dbg_value(ptr undef, !728, !DIExpression(), !7085)
    #dbg_value(ptr undef, !745, !DIExpression(), !7086)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7088)
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, %i.v, !dbg !7089
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !dbg !7090

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.c
    #dbg_value(i8 2, !6773, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !7001)
    #dbg_value(ptr poison, !7101, !DIExpression(), !7107)
    #dbg_value(ptr %i.a, !7106, !DIExpression(), !7107)
  %i.z = tail call noundef align 8 ptr @_RINvXs2_NtCsjfnSKV9Rz3v_3h3i5frameNtB6_18SerializableHeaderNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1R_15PrettyFormatterEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !dbg !7109, !noalias !7110 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null, !dbg !7111
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame18SerializableHeaderINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2y_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3l_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3J_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i, label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_valueIBT_NtNtCsjfnSKV9Rz3v_3h3i5frame18SerializableHeaderEECsi2C7WdEh0SA_3h3i.exit, !dbg !7112

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame18SerializableHeaderINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2y_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3l_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3J_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i: ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i
    #dbg_value(ptr %i.b, !5013, !DIExpression(), !7114)
    #dbg_value(ptr poison, !5016, !DIExpression(), !7114)
  store i8 1, ptr %i.r, align 8, !dbg !7116, !alias.scope !7117, !noalias !7110
    #dbg_value(ptr undef, !6886, !DIExpression(), !6908)
    #dbg_value(i64 1, !7004, !DIExpression(), !7011)
    #dbg_value(ptr %i.u, !6902, !DIExpression(), !7013)
    #dbg_value(ptr %i.u, !7010, !DIExpression(), !7011)
    #dbg_value(ptr %i.o, !6904, !DIExpression(), !7014)
    #dbg_value(ptr poison, !7015, !DIExpression(), !7022)
    #dbg_value(ptr poison, !7021, !DIExpression(), !7024)
  %i.aa = icmp eq ptr %i.u, %i.o, !dbg !7120
  br i1 %i.aa, label %bb.d, label %.lr.ph.i.i.i.i.i, !dbg !7121

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame18SerializableHeaderINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2y_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3l_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3J_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i
    #dbg_value(i8 2, !6773, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !7001)
    #dbg_value(ptr %i.a, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7029)
    #dbg_value(i8 2, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !7029)
    #dbg_value(ptr %i.a, !4914, !DIExpression(), !7031)
    #dbg_value(i8 2, !4916, !DIExpression(), !7031)
  %.val.i19.i.i.i = load ptr, ptr %i.a, align 8, !dbg !7122, !alias.scope !7123, !nonnull !136, !noundef !136 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7124), !dbg !7122
    #dbg_value(ptr %i.a, !4859, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7127)
    #dbg_value(ptr poison, !4862, !DIExpression(), !7127)
  %i.ab = load i64, ptr %i.f, align 8, !dbg !7129, !alias.scope !7130, !noundef !136
  %i.ac = add i64 %i.ab, -1, !dbg !7129           ; 3 uses
  store i64 %i.ac, ptr %i.f, align 8, !dbg !7129, !alias.scope !7130
    #dbg_value(ptr %i.b, !4859, !DIExpression(), !7127)
    #dbg_value(ptr poison, !296, !DIExpression(), !7131)
    #dbg_value(ptr @0, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7131)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7131)
    #dbg_value(ptr %.val.i19.i.i.i, !309, !DIExpression(), !7133)
    #dbg_value(ptr @0, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7133)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7133)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i19.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !7135, !noalias !7136
  %i.ad = load ptr, ptr %i.b, align 8, !dbg !7137, !alias.scope !7130, !nonnull !136, !noundef !136
  %i.ae = load i64, ptr %i.i, align 8, !dbg !7137, !alias.scope !7130, !noundef !136
    #dbg_value(ptr poison, !708, !DIExpression(), !7138)
    #dbg_value(i64 %i.ac, !709, !DIExpression(), !7138)
    #dbg_value(ptr %i.ad, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7138)
    #dbg_value(i64 %i.ae, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7138)
    #dbg_value(i64 1, !719, !DIExpression(), !7140)
    #dbg_value(i64 1, !736, !DIExpression(), !7144)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7146)
    #dbg_value(i64 %i.ac, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7146)
    #dbg_value(ptr undef, !733, !DIExpression(), !7147)
    #dbg_value(ptr undef, !728, !DIExpression(), !7148)
    #dbg_value(ptr undef, !745, !DIExpression(), !7149)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7151)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ac, 0, !dbg !7152
  br i1 %.not.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !7153

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.sroa.03.012.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.d ]
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i, !729, !DIExpression(), !7154)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i, !722, !DIExpression(), !7140)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i, !739, !DIExpression(), !7144)
  %i.af = add nuw i64 %.sroa.03.012.i.i.i.i.i.i, 1, !dbg !7155 ; 2 uses
    #dbg_value(i64 %i.af, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7146)
    #dbg_value(ptr poison, !296, !DIExpression(), !7156)
    #dbg_value(ptr %i.ad, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7156)
    #dbg_value(i64 %i.ae, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7156)
    #dbg_value(ptr %.val.i19.i.i.i, !309, !DIExpression(), !7158)
    #dbg_value(ptr %i.ad, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7158)
    #dbg_value(i64 %i.ae, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7158)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i19.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.ae), !dbg !7160, !noalias !7161
    #dbg_value(ptr undef, !733, !DIExpression(), !7147)
    #dbg_value(ptr undef, !728, !DIExpression(), !7148)
    #dbg_value(ptr undef, !745, !DIExpression(), !7149)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7151)
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.af, %i.ac, !dbg !7152
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !7153

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
    #dbg_value(ptr poison, !296, !DIExpression(), !7164)
    #dbg_value(ptr @6, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7164)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7164)
    #dbg_value(ptr %.val.i19.i.i.i, !309, !DIExpression(), !7166)
    #dbg_value(ptr @6, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7166)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7166)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i19.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !7168, !noalias !7136
  br label %bb.e, !dbg !7169

bb.e:                                             ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i
    #dbg_value(ptr %i.a, !6610, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7170)
    #dbg_value(ptr poison, !6613, !DIExpression(), !7170)
  store i8 1, ptr %i.r, align 8, !dbg !7172, !alias.scope !7173
  br label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_valueIBT_NtNtCsjfnSKV9Rz3v_3h3i5frame18SerializableHeaderEECsi2C7WdEh0SA_3h3i.exit, !dbg !7176

_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_valueIBT_NtNtCsjfnSKV9Rz3v_3h3i5frame18SerializableHeaderEECsi2C7WdEh0SA_3h3i.exit: ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.0.1.i = phi ptr [ null, %bb.e ], [ %i.z, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i ], !dbg !7177
  ret ptr %.sroa.0.1.i, !dbg !7178
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeIBN_NtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary21SerializablePathStatsEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7179 {
bb.a:
    #dbg_value(ptr %0, !7307, !DIExpression(), !7316)
    #dbg_value(ptr %1, !7308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7316)
    #dbg_value(i64 %2, !7308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7316)
    #dbg_value(ptr %3, !7309, !DIExpression(), !7316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7317), !dbg !7320
    #dbg_value(ptr %0, !6445, !DIExpression(), !7321)
    #dbg_value(ptr %1, !6450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7321)
    #dbg_value(i64 %2, !6450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7321)
    #dbg_value(ptr poison, !6465, !DIExpression(), !7323)
    #dbg_value(i64 1, !6471, !DIExpression(), !7325)
    #dbg_value(ptr %0, !6451, !DIExpression(), !7326)
    #dbg_value(ptr %0, !6453, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7327)
    #dbg_value(ptr %0, !6468, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7328)
  %i.a = load ptr, ptr %0, align 8, !dbg !7329, !alias.scope !7317, !noalias !7330, !nonnull !136, !align !284, !noundef !136 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7329 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7328 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !dbg !7328, !range !5124, !alias.scope !7317, !noalias !7330, !noundef !136
    #dbg_value(i8 %i.d, !6469, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7332)
  %i.e = icmp eq i8 %i.d, 1, !dbg !7333
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !7334, !noalias !7335, !nonnull !136, !noundef !136 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7336), !dbg !7334
    #dbg_value(ptr %i.b, !6489, !DIExpression(), !7339)
    #dbg_value(ptr poison, !6492, !DIExpression(), !7339)
    #dbg_value(i1 %i.e, !6493, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7339)
    #dbg_value(ptr poison, !296, !DIExpression(), !7341)
    #dbg_value(ptr poison, !296, !DIExpression(), !7343)
  br i1 %i.e, label %.split.i.i, label %.split9.i.i, !dbg !7345

.split9.i.i:                                      ; preds = %bb.a
    #dbg_value(ptr @4, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7343)
    #dbg_value(i64 2, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7343)
    #dbg_value(ptr %.val.i, !309, !DIExpression(), !7346)
    #dbg_value(ptr @4, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7346)
    #dbg_value(i64 2, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7346)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !7348, !noalias !7349
  br label %bb.b, !dbg !7350

.split.i.i:                                       ; preds = %bb.a
    #dbg_value(ptr @0, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7341)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7341)
    #dbg_value(ptr %.val.i, !309, !DIExpression(), !7351)
    #dbg_value(ptr @0, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7351)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7351)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !7353, !noalias !7349
  br label %bb.b, !dbg !7350

bb.b:                                             ; preds = %.split.i.i, %.split9.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !7354 ; 7 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !7354, !alias.scope !7336, !noalias !7335, !noundef !136 ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !dbg !7355, !alias.scope !7336, !noalias !7335, !nonnull !136, !noundef !136
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7355 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !7355, !alias.scope !7336, !noalias !7335, !noundef !136
    #dbg_value(ptr poison, !708, !DIExpression(), !7356)
    #dbg_value(i64 %i.g, !709, !DIExpression(), !7356)
    #dbg_value(ptr %i.h, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7356)
    #dbg_value(i64 %i.j, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7356)
    #dbg_value(i64 1, !719, !DIExpression(), !7358)
    #dbg_value(i64 1, !736, !DIExpression(), !7362)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7364)
    #dbg_value(i64 %i.g, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7364)
    #dbg_value(ptr undef, !733, !DIExpression(), !7365)
    #dbg_value(ptr undef, !728, !DIExpression(), !7366)
    #dbg_value(ptr undef, !745, !DIExpression(), !7367)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7369)
  %.not.i.i.i = icmp eq i64 %i.g, 0, !dbg !7370
  br i1 %.not.i.i.i, label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit, label %.lr.ph.i.i.i, !dbg !7371

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.03.012.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i ], [ 0, %bb.b ]
    #dbg_value(i64 %.sroa.03.012.i.i.i, !729, !DIExpression(), !7372)
    #dbg_value(i64 %.sroa.03.012.i.i.i, !722, !DIExpression(), !7358)
    #dbg_value(i64 %.sroa.03.012.i.i.i, !739, !DIExpression(), !7362)
  %i.k = add nuw i64 %.sroa.03.012.i.i.i, 1, !dbg !7373 ; 2 uses
    #dbg_value(i64 %i.k, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7364)
    #dbg_value(ptr poison, !296, !DIExpression(), !7374)
    #dbg_value(ptr %i.h, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7374)
    #dbg_value(i64 %i.j, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7374)
    #dbg_value(ptr %.val.i, !309, !DIExpression(), !7376)
    #dbg_value(ptr %i.h, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7376)
    #dbg_value(i64 %i.j, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7376)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.j), !dbg !7378, !noalias !7379
    #dbg_value(ptr undef, !733, !DIExpression(), !7365)
    #dbg_value(ptr undef, !728, !DIExpression(), !7366)
    #dbg_value(ptr undef, !745, !DIExpression(), !7367)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7369)
  %exitcond.not.i.i.i = icmp eq i64 %i.k, %i.g, !dbg !7370
  br i1 %exitcond.not.i.i.i, label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit, label %.lr.ph.i.i.i, !dbg !7371

_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  store i8 2, ptr %i.c, align 8, !dbg !7382, !alias.scope !7317, !noalias !7330
    #dbg_value(ptr %1, !6542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7383)
    #dbg_value(i64 %2, !6542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7383)
    #dbg_value(ptr %i.a, !6550, !DIExpression(), !7383)
    #dbg_value(ptr %i.a, !6555, !DIExpression(), !7385)
    #dbg_value(ptr %1, !6560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7385)
    #dbg_value(i64 %2, !6560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7385)
    #dbg_value(ptr %i.a, !6563, !DIExpression(), !7387)
    #dbg_value(ptr %1, !6568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7387)
    #dbg_value(i64 %2, !6568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7387)
  %i.l = tail call noundef ptr @_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.a, ptr noalias nofree nonnull readonly align 8 poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !7389, !noalias !7317 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !7390
  %.val7 = load ptr, ptr %i.m, align 8, !dbg !7390 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !7390
  %.val8 = load i64, ptr %i.n, align 8, !dbg !7390 ; 2 uses
    #dbg_value(ptr poison, !7391, !DIExpression(), !7409)
    #dbg_value(ptr poison, !7396, !DIExpression(), !7409)
    #dbg_value(ptr poison, !7397, !DIExpression(), !7411)
  %.val.i9 = load ptr, ptr %i.a, align 8, !dbg !7412, !nonnull !136, !align !284, !noundef !136
    #dbg_value(ptr poison, !6595, !DIExpression(), !7413)
    #dbg_value(ptr poison, !6598, !DIExpression(), !7413)
    #dbg_value(ptr poison, !296, !DIExpression(), !7415)
    #dbg_value(ptr @5, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7415)
    #dbg_value(i64 2, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7415)
    #dbg_value(ptr %.val.i9, !309, !DIExpression(), !7417)
    #dbg_value(ptr @5, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7417)
    #dbg_value(i64 2, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7417)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !7419
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7420), !dbg !7423
    #dbg_value(ptr poison, !7424, !DIExpression(), !7431)
    #dbg_value(ptr %i.a, !7429, !DIExpression(), !7431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7433), !dbg !7436
    #dbg_declare(ptr poison, !7437, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !7470)
    #dbg_value(ptr poison, !7472, !DIExpression(), !7491)
    #dbg_value(ptr poison, !7479, !DIExpression(), !7547)
    #dbg_value(ptr poison, !7527, !DIExpression(), !7548)
    #dbg_value(ptr poison, !7543, !DIExpression(), !7549)
    #dbg_value(ptr poison, !7550, !DIExpression(), !7572)
    #dbg_value(ptr poison, !7525, !DIExpression(), !7548)
    #dbg_value(ptr poison, !7542, !DIExpression(), !7549)
    #dbg_value(ptr %i.a, !7444, !DIExpression(), !7574)
    #dbg_value(ptr poison, !7445, !DIExpression(), !7574)
    #dbg_value(ptr poison, !7575, !DIExpression(), !7580)
    #dbg_value(i64 %.val8, !7582, !DIExpression(), !7603)
    #dbg_value(i64 %.val8, !7609, !DIExpression(), !7616)
    #dbg_value(ptr %.val7, !7607, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7618)
    #dbg_value(ptr %.val7, !7594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7619)
    #dbg_value(i64 %.val8, !7607, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7618)
    #dbg_value(i64 %.val8, !7594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7619)
    #dbg_value(ptr %.val7, !7599, !DIExpression(), !7620)
    #dbg_value(ptr %.val7, !7615, !DIExpression(), !7616)
  %.idx.i.i.i = shl nuw nsw i64 %.val8, 3, !dbg !7621
  %i.o = getelementptr inbounds nuw i8, ptr %.val7, i64 %.idx.i.i.i, !dbg !7621
    #dbg_value(ptr %.val7, !7446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7622)
    #dbg_value(ptr %i.o, !7446, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7622)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7623), !dbg !7626
    #dbg_value(ptr poison, !4791, !DIExpression(), !7627)
    #dbg_value(i64 1, !4820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7630)
    #dbg_value(i64 %.val8, !4820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7630)
    #dbg_value(ptr %i.a, !4819, !DIExpression(), !7630)
    #dbg_value(ptr poison, !4794, !DIExpression(), !7631)
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !dbg !7632, !alias.scope !7633, !noalias !7634, !nonnull !136, !align !284, !noundef !136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7636), !dbg !7632
    #dbg_value(ptr %i.a, !4839, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7639)
    #dbg_value(ptr poison, !4842, !DIExpression(), !7639)
  %i.p = load i64, ptr %i.f, align 8, !dbg !7641, !alias.scope !7642, !noalias !7634, !noundef !136 ; 2 uses
  %i.q = add i64 %i.p, 1, !dbg !7641
  store i64 %i.q, ptr %i.f, align 8, !dbg !7641, !alias.scope !7642, !noalias !7634
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !7643 ; 3 uses
  store i8 0, ptr %i.r, align 8, !dbg !7643, !alias.scope !7642, !noalias !7634
    #dbg_value(ptr poison, !296, !DIExpression(), !7644)
    #dbg_value(ptr @2, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7644)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7644)
    #dbg_value(ptr %.val.i.i.i.i, !309, !DIExpression(), !7646)
    #dbg_value(ptr @2, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7646)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7646)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !7648, !noalias !7649
    #dbg_value(ptr undef, !4791, !DIExpression(), !7627)
  %cond.i.i.i = icmp eq i64 %.val8, 0, !dbg !7650
  br i1 %cond.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !7650

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i: ; preds = %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7651), !dbg !7654
    #dbg_value(ptr %i.a, !4859, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7655)
    #dbg_value(ptr poison, !4862, !DIExpression(), !7655)
  store i64 %i.p, ptr %i.f, align 8, !dbg !7657, !alias.scope !7658, !noalias !7634
    #dbg_value(ptr poison, !296, !DIExpression(), !7659)
    #dbg_value(ptr @6, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7659)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7659)
    #dbg_value(ptr %.val.i.i.i.i, !309, !DIExpression(), !7661)
    #dbg_value(ptr @6, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7661)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7661)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !7663, !noalias !7664
    #dbg_value(ptr %i.a, !7437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7665)
    #dbg_value(ptr undef, !7542, !DIExpression(), !7549)
    #dbg_value(ptr undef, !7543, !DIExpression(), !7549)
    #dbg_value(ptr undef, !7527, !DIExpression(), !7548)
    #dbg_value(ptr undef, !7525, !DIExpression(), !7548)
    #dbg_declare(ptr poison, !7526, !DIExpression(), !7666)
    #dbg_declare(ptr poison, !7528, !DIExpression(), !7667)
    #dbg_value(ptr undef, !7550, !DIExpression(), !7572)
    #dbg_value(i64 1, !7668, !DIExpression(), !7675)
    #dbg_value(ptr %.val7, !7566, !DIExpression(), !7677)
    #dbg_value(ptr %.val7, !7674, !DIExpression(), !7675)
    #dbg_value(ptr %i.o, !7568, !DIExpression(), !7678)
    #dbg_value(ptr poison, !7679, !DIExpression(), !7686)
    #dbg_value(ptr poison, !7685, !DIExpression(), !7688)
    #dbg_value(i8 poison, !7437, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !7665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7689), !dbg !7692
    #dbg_value(ptr %i.a, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7693)
    #dbg_value(i8 poison, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !7693)
    #dbg_value(ptr %i.a, !4914, !DIExpression(), !7695)
    #dbg_value(i8 poison, !4916, !DIExpression(), !7695)
  br label %bb.e, !dbg !7696

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary21SerializablePathStatsINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3L_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i
  %i.s = phi i1 [ false, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary21SerializablePathStatsINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3L_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i ], [ true, %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit ]
  %i.t = phi ptr [ %i.u, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary21SerializablePathStatsINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3L_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i ], [ %.val7, %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit ] ; 2 uses
    #dbg_value(ptr %i.t, !7566, !DIExpression(), !7677)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !7697 ; 2 uses
    #dbg_value(ptr %i.u, !7446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7622)
    #dbg_value(ptr %i.t, !7529, !DIExpression(), !7698)
    #dbg_value(ptr poison, !7513, !DIExpression(DW_OP_deref), !7699)
    #dbg_declare(ptr poison, !7514, !DIExpression(), !7700)
    #dbg_value(ptr %i.t, !7512, !DIExpression(), !7699)
    #dbg_value(ptr poison, !7502, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7701)
    #dbg_value(ptr undef, !7501, !DIExpression(DW_OP_deref), !7701)
    #dbg_value(ptr undef, !7479, !DIExpression(), !7547)
    #dbg_value(ptr poison, !7480, !DIExpression(), !7547)
    #dbg_value(ptr undef, !7472, !DIExpression(), !7491)
    #dbg_value(ptr undef, !7481, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7702)
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !dbg !7703, !alias.scope !7704, !noalias !7705, !nonnull !136, !noundef !136 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7718), !dbg !7703
    #dbg_value(ptr %i.b, !4945, !DIExpression(), !7721)
    #dbg_value(ptr poison, !4950, !DIExpression(), !7721)
    #dbg_value(i1 %i.s, !4951, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7721)
    #dbg_value(ptr poison, !296, !DIExpression(), !7723)
    #dbg_value(ptr poison, !296, !DIExpression(), !7725)
  br i1 %i.s, label %.split.i.i.i.i.i.i.i.i.i, label %.split9.i.i.i.i.i.i.i.i.i, !dbg !7727

.split9.i.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i
    #dbg_value(ptr @4, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7725)
    #dbg_value(i64 2, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7725)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i, !309, !DIExpression(), !7728)
    #dbg_value(ptr @4, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7728)
    #dbg_value(i64 2, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7728)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !7730, !noalias !7731
  br label %bb.c, !dbg !7732

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i
    #dbg_value(ptr @0, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7723)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7723)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i, !309, !DIExpression(), !7733)
    #dbg_value(ptr @0, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7733)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7733)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !7735, !noalias !7731
  br label %bb.c, !dbg !7732

bb.c:                                             ; preds = %.split.i.i.i.i.i.i.i.i.i, %.split9.i.i.i.i.i.i.i.i.i
  %i.v = load i64, ptr %i.f, align 8, !dbg !7736, !alias.scope !7737, !noalias !7705, !noundef !136 ; 2 uses
  %i.w = load ptr, ptr %i.b, align 8, !dbg !7738, !alias.scope !7737, !noalias !7705, !nonnull !136, !noundef !136
  %i.x = load i64, ptr %i.i, align 8, !dbg !7738, !alias.scope !7737, !noalias !7705, !noundef !136
    #dbg_value(ptr poison, !708, !DIExpression(), !7739)
    #dbg_value(i64 %i.v, !709, !DIExpression(), !7739)
    #dbg_value(ptr %i.w, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7739)
    #dbg_value(i64 %i.x, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7739)
    #dbg_value(i64 1, !719, !DIExpression(), !7741)
    #dbg_value(i64 1, !736, !DIExpression(), !7745)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7747)
    #dbg_value(i64 %i.v, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7747)
    #dbg_value(ptr undef, !733, !DIExpression(), !7748)
    #dbg_value(ptr undef, !728, !DIExpression(), !7749)
    #dbg_value(ptr undef, !745, !DIExpression(), !7750)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7752)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.v, 0, !dbg !7753
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !dbg !7754

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.03.012.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i, !729, !DIExpression(), !7755)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i, !722, !DIExpression(), !7741)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i, !739, !DIExpression(), !7745)
  %i.y = add nuw i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i, 1, !dbg !7756 ; 2 uses
    #dbg_value(i64 %i.y, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7747)
    #dbg_value(ptr poison, !296, !DIExpression(), !7757)
    #dbg_value(ptr %i.w, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7757)
    #dbg_value(i64 %i.x, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7757)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i, !309, !DIExpression(), !7759)
    #dbg_value(ptr %i.w, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7759)
    #dbg_value(i64 %i.x, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7759)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef range(i64 0, -9223372036854775808) %i.x), !dbg !7761, !noalias !7762
    #dbg_value(ptr undef, !733, !DIExpression(), !7748)
    #dbg_value(ptr undef, !728, !DIExpression(), !7749)
    #dbg_value(ptr undef, !745, !DIExpression(), !7750)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7752)
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, %i.v, !dbg !7753
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !dbg !7754

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.c
    #dbg_value(i8 2, !7437, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !7665)
    #dbg_value(ptr poison, !7765, !DIExpression(), !7771)
    #dbg_value(ptr %i.a, !7770, !DIExpression(), !7771)
  %i.z = tail call noundef align 8 ptr @_RINvXs6_NtNtCsjfnSKV9Rz3v_3h3i6client18connection_summaryNtB6_21SerializablePathStatsNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2h_15PrettyFormatterEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !dbg !7773, !noalias !7774 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null, !dbg !7775
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary21SerializablePathStatsINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3L_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i, label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_valueIBT_NtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary21SerializablePathStatsEECsi2C7WdEh0SA_3h3i.exit, !dbg !7776

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary21SerializablePathStatsINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3L_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i: ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i
    #dbg_value(ptr %i.b, !5013, !DIExpression(), !7778)
    #dbg_value(ptr poison, !5016, !DIExpression(), !7778)
  store i8 1, ptr %i.r, align 8, !dbg !7780, !alias.scope !7781, !noalias !7774
    #dbg_value(ptr undef, !7550, !DIExpression(), !7572)
    #dbg_value(i64 1, !7668, !DIExpression(), !7675)
    #dbg_value(ptr %i.u, !7566, !DIExpression(), !7677)
    #dbg_value(ptr %i.u, !7674, !DIExpression(), !7675)
    #dbg_value(ptr %i.o, !7568, !DIExpression(), !7678)
    #dbg_value(ptr poison, !7679, !DIExpression(), !7686)
    #dbg_value(ptr poison, !7685, !DIExpression(), !7688)
  %i.aa = icmp eq ptr %i.u, %i.o, !dbg !7784
  br i1 %i.aa, label %bb.d, label %.lr.ph.i.i.i.i.i, !dbg !7785

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary21SerializablePathStatsINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2Y_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3L_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB49_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i
    #dbg_value(i8 2, !7437, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !7665)
    #dbg_value(ptr %i.a, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7693)
    #dbg_value(i8 2, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !7693)
    #dbg_value(ptr %i.a, !4914, !DIExpression(), !7695)
    #dbg_value(i8 2, !4916, !DIExpression(), !7695)
  %.val.i19.i.i.i = load ptr, ptr %i.a, align 8, !dbg !7786, !alias.scope !7787, !nonnull !136, !noundef !136 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7788), !dbg !7786
    #dbg_value(ptr %i.a, !4859, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7791)
    #dbg_value(ptr poison, !4862, !DIExpression(), !7791)
  %i.ab = load i64, ptr %i.f, align 8, !dbg !7793, !alias.scope !7794, !noundef !136
  %i.ac = add i64 %i.ab, -1, !dbg !7793           ; 3 uses
  store i64 %i.ac, ptr %i.f, align 8, !dbg !7793, !alias.scope !7794
    #dbg_value(ptr %i.b, !4859, !DIExpression(), !7791)
    #dbg_value(ptr poison, !296, !DIExpression(), !7795)
    #dbg_value(ptr @0, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7795)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7795)
    #dbg_value(ptr %.val.i19.i.i.i, !309, !DIExpression(), !7797)
    #dbg_value(ptr @0, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7797)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7797)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i19.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !7799, !noalias !7800
  %i.ad = load ptr, ptr %i.b, align 8, !dbg !7801, !alias.scope !7794, !nonnull !136, !noundef !136
  %i.ae = load i64, ptr %i.i, align 8, !dbg !7801, !alias.scope !7794, !noundef !136
    #dbg_value(ptr poison, !708, !DIExpression(), !7802)
    #dbg_value(i64 %i.ac, !709, !DIExpression(), !7802)
    #dbg_value(ptr %i.ad, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7802)
    #dbg_value(i64 %i.ae, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7802)
    #dbg_value(i64 1, !719, !DIExpression(), !7804)
    #dbg_value(i64 1, !736, !DIExpression(), !7808)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7810)
    #dbg_value(i64 %i.ac, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7810)
    #dbg_value(ptr undef, !733, !DIExpression(), !7811)
    #dbg_value(ptr undef, !728, !DIExpression(), !7812)
    #dbg_value(ptr undef, !745, !DIExpression(), !7813)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7815)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ac, 0, !dbg !7816
  br i1 %.not.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !7817

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.sroa.03.012.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.d ]
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i, !729, !DIExpression(), !7818)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i, !722, !DIExpression(), !7804)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i, !739, !DIExpression(), !7808)
  %i.af = add nuw i64 %.sroa.03.012.i.i.i.i.i.i, 1, !dbg !7819 ; 2 uses
    #dbg_value(i64 %i.af, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7810)
    #dbg_value(ptr poison, !296, !DIExpression(), !7820)
    #dbg_value(ptr %i.ad, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7820)
    #dbg_value(i64 %i.ae, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7820)
    #dbg_value(ptr %.val.i19.i.i.i, !309, !DIExpression(), !7822)
    #dbg_value(ptr %i.ad, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7822)
    #dbg_value(i64 %i.ae, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7822)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i19.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.ae), !dbg !7824, !noalias !7825
    #dbg_value(ptr undef, !733, !DIExpression(), !7811)
    #dbg_value(ptr undef, !728, !DIExpression(), !7812)
    #dbg_value(ptr undef, !745, !DIExpression(), !7813)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7815)
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.af, %i.ac, !dbg !7816
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !7817

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
    #dbg_value(ptr poison, !296, !DIExpression(), !7828)
    #dbg_value(ptr @6, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7828)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7828)
    #dbg_value(ptr %.val.i19.i.i.i, !309, !DIExpression(), !7830)
    #dbg_value(ptr @6, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7830)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7830)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i19.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !7832, !noalias !7800
  br label %bb.e, !dbg !7833

bb.e:                                             ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i
    #dbg_value(ptr %i.a, !6610, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7834)
    #dbg_value(ptr poison, !6613, !DIExpression(), !7834)
  store i8 1, ptr %i.r, align 8, !dbg !7836, !alias.scope !7837
  br label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_valueIBT_NtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary21SerializablePathStatsEECsi2C7WdEh0SA_3h3i.exit, !dbg !7840

_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_valueIBT_NtNtNtCsjfnSKV9Rz3v_3h3i6client18connection_summary21SerializablePathStatsEECsi2C7WdEh0SA_3h3i.exit: ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.0.1.i = phi ptr [ null, %bb.e ], [ %i.z, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i ], !dbg !7841
  ret ptr %.sroa.0.1.i, !dbg !7842
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeINtNtBR_6borrow3CoweEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7843 {
bb.a:
    #dbg_value(ptr %0, !7864, !DIExpression(), !7873)
    #dbg_value(ptr %1, !7865, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7873)
    #dbg_value(i64 %2, !7865, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7873)
    #dbg_value(ptr %3, !7866, !DIExpression(), !7873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7874), !dbg !7877
    #dbg_value(ptr %0, !6445, !DIExpression(), !7878)
    #dbg_value(ptr %1, !6450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7878)
    #dbg_value(i64 %2, !6450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7878)
    #dbg_value(ptr poison, !6465, !DIExpression(), !7880)
    #dbg_value(i64 1, !6471, !DIExpression(), !7882)
    #dbg_value(ptr %0, !6451, !DIExpression(), !7883)
    #dbg_value(ptr %0, !6453, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7884)
    #dbg_value(ptr %0, !6468, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7885)
  %i.a = load ptr, ptr %0, align 8, !dbg !7886, !alias.scope !7874, !noalias !7887, !nonnull !136, !align !284, !noundef !136 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7886
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7885 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !dbg !7885, !range !5124, !alias.scope !7874, !noalias !7887, !noundef !136
    #dbg_value(i8 %i.d, !6469, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7889)
  %i.e = icmp eq i8 %i.d, 1, !dbg !7890
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !7891, !noalias !7892, !nonnull !136, !noundef !136 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7893), !dbg !7891
    #dbg_value(ptr %i.b, !6489, !DIExpression(), !7896)
    #dbg_value(ptr poison, !6492, !DIExpression(), !7896)
    #dbg_value(i1 %i.e, !6493, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7896)
    #dbg_value(ptr poison, !296, !DIExpression(), !7898)
    #dbg_value(ptr poison, !296, !DIExpression(), !7900)
  br i1 %i.e, label %.split.i.i, label %.split9.i.i, !dbg !7902

.split9.i.i:                                      ; preds = %bb.a
    #dbg_value(ptr @4, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7900)
    #dbg_value(i64 2, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7900)
    #dbg_value(ptr %.val.i, !309, !DIExpression(), !7903)
    #dbg_value(ptr @4, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7903)
    #dbg_value(i64 2, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7903)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !7905, !noalias !7906
  br label %bb.b, !dbg !7907

.split.i.i:                                       ; preds = %bb.a
    #dbg_value(ptr @0, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7898)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7898)
    #dbg_value(ptr %.val.i, !309, !DIExpression(), !7908)
    #dbg_value(ptr @0, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7908)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7908)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !7910, !noalias !7906
  br label %bb.b, !dbg !7907

bb.b:                                             ; preds = %.split.i.i, %.split9.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !7911
  %i.g = load i64, ptr %i.f, align 8, !dbg !7911, !alias.scope !7893, !noalias !7892, !noundef !136 ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !dbg !7912, !alias.scope !7893, !noalias !7892, !nonnull !136, !noundef !136
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7912
  %i.j = load i64, ptr %i.i, align 8, !dbg !7912, !alias.scope !7893, !noalias !7892, !noundef !136
    #dbg_value(ptr poison, !708, !DIExpression(), !7913)
    #dbg_value(i64 %i.g, !709, !DIExpression(), !7913)
    #dbg_value(ptr %i.h, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7913)
    #dbg_value(i64 %i.j, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7913)
    #dbg_value(i64 1, !719, !DIExpression(), !7915)
    #dbg_value(i64 1, !736, !DIExpression(), !7919)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7921)
    #dbg_value(i64 %i.g, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7921)
    #dbg_value(ptr undef, !733, !DIExpression(), !7922)
    #dbg_value(ptr undef, !728, !DIExpression(), !7923)
    #dbg_value(ptr undef, !745, !DIExpression(), !7924)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7926)
  %.not.i.i.i = icmp eq i64 %i.g, 0, !dbg !7927
  br i1 %.not.i.i.i, label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit, label %.lr.ph.i.i.i, !dbg !7928

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.03.012.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i ], [ 0, %bb.b ]
    #dbg_value(i64 %.sroa.03.012.i.i.i, !729, !DIExpression(), !7929)
    #dbg_value(i64 %.sroa.03.012.i.i.i, !722, !DIExpression(), !7915)
    #dbg_value(i64 %.sroa.03.012.i.i.i, !739, !DIExpression(), !7919)
  %i.k = add nuw i64 %.sroa.03.012.i.i.i, 1, !dbg !7930 ; 2 uses
    #dbg_value(i64 %i.k, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7921)
    #dbg_value(ptr poison, !296, !DIExpression(), !7931)
    #dbg_value(ptr %i.h, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7931)
    #dbg_value(i64 %i.j, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7931)
    #dbg_value(ptr %.val.i, !309, !DIExpression(), !7933)
    #dbg_value(ptr %i.h, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7933)
    #dbg_value(i64 %i.j, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7933)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.j), !dbg !7935, !noalias !7936
    #dbg_value(ptr undef, !733, !DIExpression(), !7922)
    #dbg_value(ptr undef, !728, !DIExpression(), !7923)
    #dbg_value(ptr undef, !745, !DIExpression(), !7924)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7926)
  %exitcond.not.i.i.i = icmp eq i64 %i.k, %i.g, !dbg !7927
  br i1 %exitcond.not.i.i.i, label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit, label %.lr.ph.i.i.i, !dbg !7928

_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  store i8 2, ptr %i.c, align 8, !dbg !7939, !alias.scope !7874, !noalias !7887
    #dbg_value(ptr %1, !6542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7940)
    #dbg_value(i64 %2, !6542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7940)
    #dbg_value(ptr %i.a, !6550, !DIExpression(), !7940)
    #dbg_value(ptr %i.a, !6555, !DIExpression(), !7942)
    #dbg_value(ptr %1, !6560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7942)
    #dbg_value(i64 %2, !6560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7942)
    #dbg_value(ptr %i.a, !6563, !DIExpression(), !7944)
    #dbg_value(ptr %1, !6568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7944)
    #dbg_value(i64 %2, !6568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7944)
  %i.l = tail call noundef ptr @_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.a, ptr noalias nofree nonnull readonly align 8 poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !7946, !noalias !7874 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !7947
  %.val7 = load ptr, ptr %i.m, align 8, !dbg !7947 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !7947
  %.val8 = load i64, ptr %i.n, align 8, !dbg !7947
    #dbg_value(ptr poison, !7948, !DIExpression(), !7966)
    #dbg_value(ptr poison, !7953, !DIExpression(), !7966)
    #dbg_value(ptr poison, !7954, !DIExpression(), !7968)
  %.val.i9 = load ptr, ptr %i.a, align 8, !dbg !7969, !nonnull !136, !align !284, !noundef !136
    #dbg_value(ptr poison, !6595, !DIExpression(), !7970)
    #dbg_value(ptr poison, !6598, !DIExpression(), !7970)
    #dbg_value(ptr poison, !296, !DIExpression(), !7972)
    #dbg_value(ptr @5, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7972)
    #dbg_value(i64 2, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7972)
    #dbg_value(ptr %.val.i9, !309, !DIExpression(), !7974)
    #dbg_value(ptr @5, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7974)
    #dbg_value(i64 2, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7974)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !7976
    #dbg_value(ptr poison, !7977, !DIExpression(), !7985)
    #dbg_value(ptr %i.a, !7983, !DIExpression(), !7985)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
    #dbg_value(ptr %.val7, !7987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7994)
    #dbg_value(i64 %.val8, !7987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7994)
    #dbg_value(ptr %i.a, !7992, !DIExpression(), !7994)
end_hunk_2
begin_hunk_3_@_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyIBN_NtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameEEECsi2C7WdEh0SA_3h3i:bb.a
    #dbg_value(ptr %.val.i9.i.i.i.i.i.i.i.i, !309, !DIExpression(), !9823)
    #dbg_value(ptr @5, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9823)
    #dbg_value(i64 2, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9823)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i9.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !9825, !noalias !9826
  call void @llvm.experimental.noalias.scope.decl(metadata !9827), !dbg !9830
    #dbg_value(ptr poison, !9831, !DIExpression(), !9839)
    #dbg_value(ptr %i.c, !9836, !DIExpression(), !9839)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9841), !dbg !9844
    #dbg_value(ptr poison, !9845, !DIExpression(), !9852)
    #dbg_value(ptr %i.c, !9850, !DIExpression(), !9852)
  call void @llvm.experimental.noalias.scope.decl(metadata !9854), !dbg !9857
    #dbg_declare(ptr poison, !9858, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !9891)
    #dbg_value(ptr poison, !9893, !DIExpression(), !9912)
    #dbg_value(ptr poison, !9900, !DIExpression(), !9968)
    #dbg_value(ptr poison, !9948, !DIExpression(), !9969)
    #dbg_value(ptr poison, !9964, !DIExpression(), !9970)
    #dbg_value(ptr poison, !9971, !DIExpression(), !9993)
    #dbg_value(ptr poison, !9946, !DIExpression(), !9969)
    #dbg_value(ptr poison, !9963, !DIExpression(), !9970)
    #dbg_value(ptr %i.c, !9865, !DIExpression(), !9995)
    #dbg_value(ptr poison, !9866, !DIExpression(), !9995)
    #dbg_value(ptr poison, !9996, !DIExpression(), !10001)
    #dbg_value(i64 %.val13.i.i.i.i.i, !10003, !DIExpression(), !10024)
    #dbg_value(i64 %.val13.i.i.i.i.i, !10030, !DIExpression(), !10037)
    #dbg_value(ptr %.val12.i.i.i.i.i, !10028, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10039)
    #dbg_value(ptr %.val12.i.i.i.i.i, !10015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10040)
    #dbg_value(i64 %.val13.i.i.i.i.i, !10028, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10039)
    #dbg_value(i64 %.val13.i.i.i.i.i, !10015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10040)
    #dbg_value(ptr %.val12.i.i.i.i.i, !10020, !DIExpression(), !10041)
    #dbg_value(ptr %.val12.i.i.i.i.i, !10036, !DIExpression(), !10037)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.val13.i.i.i.i.i, 152, !dbg !10042
  %i.aj = getelementptr inbounds nuw i8, ptr %.val12.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !10042
    #dbg_value(ptr %.val12.i.i.i.i.i, !9867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10043)
    #dbg_value(ptr %i.aj, !9867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10043)
  call void @llvm.experimental.noalias.scope.decl(metadata !10044), !dbg !10047
    #dbg_value(ptr poison, !4791, !DIExpression(), !10048)
    #dbg_value(i64 1, !4820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10051)
    #dbg_value(i64 %.val13.i.i.i.i.i, !4820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10051)
    #dbg_value(ptr %i.c, !4819, !DIExpression(), !10051)
    #dbg_value(ptr poison, !4794, !DIExpression(), !10052)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !10053, !alias.scope !10054, !noalias !10055, !nonnull !136, !align !284, !noundef !136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10057), !dbg !10053
    #dbg_value(ptr %i.c, !4839, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10060)
    #dbg_value(ptr poison, !4842, !DIExpression(), !10060)
  %i.ak = load i64, ptr %i.h, align 8, !dbg !10062, !alias.scope !10063, !noalias !10055, !noundef !136 ; 2 uses
  %i.al = add i64 %i.ak, 1, !dbg !10062
  store i64 %i.al, ptr %i.h, align 8, !dbg !10062, !alias.scope !10063, !noalias !10055
  store i8 0, ptr %i.r, align 8, !dbg !10064, !alias.scope !10063, !noalias !10055
    #dbg_value(ptr poison, !296, !DIExpression(), !10065)
    #dbg_value(ptr @2, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10065)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10065)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, !309, !DIExpression(), !10067)
    #dbg_value(ptr @2, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10067)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10067)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !10069, !noalias !10070
    #dbg_value(ptr undef, !4791, !DIExpression(), !10048)
  %cond.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val13.i.i.i.i.i, 0, !dbg !10071
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !10071

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyRyECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10072), !dbg !10075
    #dbg_value(ptr %i.c, !4859, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10076)
    #dbg_value(ptr poison, !4862, !DIExpression(), !10076)
  store i64 %i.ak, ptr %i.h, align 8, !dbg !10078, !alias.scope !10079, !noalias !10055
    #dbg_value(ptr poison, !296, !DIExpression(), !10080)
    #dbg_value(ptr @6, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10080)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10080)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, !309, !DIExpression(), !10082)
    #dbg_value(ptr @6, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10082)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10082)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !10084, !noalias !10085
    #dbg_value(ptr %i.c, !9858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10086)
    #dbg_value(ptr undef, !9963, !DIExpression(), !9970)
    #dbg_value(ptr undef, !9964, !DIExpression(), !9970)
    #dbg_value(ptr undef, !9948, !DIExpression(), !9969)
    #dbg_value(ptr undef, !9946, !DIExpression(), !9969)
    #dbg_declare(ptr poison, !9947, !DIExpression(), !10087)
    #dbg_declare(ptr poison, !9949, !DIExpression(), !10088)
    #dbg_value(ptr undef, !9971, !DIExpression(), !9993)
    #dbg_value(i64 1, !10089, !DIExpression(), !10096)
    #dbg_value(ptr %.val12.i.i.i.i.i, !9987, !DIExpression(), !10098)
    #dbg_value(ptr %.val12.i.i.i.i.i, !10095, !DIExpression(), !10096)
    #dbg_value(ptr %i.aj, !9989, !DIExpression(), !10099)
    #dbg_value(ptr poison, !10100, !DIExpression(), !10107)
    #dbg_value(ptr poison, !10106, !DIExpression(), !10109)
    #dbg_value(i8 poison, !9858, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10086)
  call void @llvm.experimental.noalias.scope.decl(metadata !10110), !dbg !10113
    #dbg_value(ptr %i.c, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10114)
    #dbg_value(i8 poison, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10114)
    #dbg_value(ptr %i.c, !4914, !DIExpression(), !10116)
    #dbg_value(i8 poison, !4916, !DIExpression(), !10116)
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameEEINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2Z_3ser10SerializerQIB1p_hENtB3M_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i, !dbg !10117

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyRyECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3a_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3y_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.am = phi i1 [ false, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3a_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3y_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyRyECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i ]
  %i.an = phi ptr [ %i.ao, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3a_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3y_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val12.i.i.i.i.i, %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyRyECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i ] ; 2 uses
    #dbg_value(ptr %i.an, !9987, !DIExpression(), !10098)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 152, !dbg !10118 ; 2 uses
    #dbg_value(ptr %i.ao, !9867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10043)
    #dbg_value(ptr %i.an, !9950, !DIExpression(), !10119)
    #dbg_value(ptr poison, !9934, !DIExpression(DW_OP_deref), !10120)
    #dbg_declare(ptr poison, !9935, !DIExpression(), !10121)
    #dbg_value(ptr %i.an, !9933, !DIExpression(), !10120)
    #dbg_value(ptr poison, !9923, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !10122)
    #dbg_value(ptr undef, !9922, !DIExpression(DW_OP_deref), !10122)
    #dbg_value(ptr undef, !9900, !DIExpression(), !9968)
    #dbg_value(ptr poison, !9901, !DIExpression(), !9968)
    #dbg_value(ptr undef, !9893, !DIExpression(), !9912)
    #dbg_value(ptr undef, !9902, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10123)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !10124, !alias.scope !10125, !noalias !10126, !nonnull !136, !noundef !136 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10139), !dbg !10124
    #dbg_value(ptr %i.d, !4945, !DIExpression(), !10142)
    #dbg_value(ptr poison, !4950, !DIExpression(), !10142)
    #dbg_value(i1 %i.am, !4951, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10142)
    #dbg_value(ptr poison, !296, !DIExpression(), !10144)
    #dbg_value(ptr poison, !296, !DIExpression(), !10146)
  br i1 %i.am, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !10148

.split9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    #dbg_value(ptr @4, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10146)
    #dbg_value(i64 2, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10146)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !309, !DIExpression(), !10149)
    #dbg_value(ptr @4, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10149)
    #dbg_value(i64 2, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10149)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !10151, !noalias !10152
  br label %bb.d, !dbg !10153

.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    #dbg_value(ptr @0, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10144)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10144)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !309, !DIExpression(), !10154)
    #dbg_value(ptr @0, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10154)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10154)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !10156, !noalias !10152
  br label %bb.d, !dbg !10153

bb.d:                                             ; preds = %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = load i64, ptr %i.h, align 8, !dbg !10157, !alias.scope !10158, !noalias !10126, !noundef !136 ; 2 uses
  %i.aq = load ptr, ptr %i.d, align 8, !dbg !10159, !alias.scope !10158, !noalias !10126, !nonnull !136, !noundef !136
  %i.ar = load i64, ptr %i.k, align 8, !dbg !10159, !alias.scope !10158, !noalias !10126, !noundef !136
    #dbg_value(ptr poison, !708, !DIExpression(), !10160)
    #dbg_value(i64 %i.ap, !709, !DIExpression(), !10160)
    #dbg_value(ptr %i.aq, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10160)
    #dbg_value(i64 %i.ar, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10160)
    #dbg_value(i64 1, !719, !DIExpression(), !10162)
    #dbg_value(i64 1, !736, !DIExpression(), !10166)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10168)
    #dbg_value(i64 %i.ap, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10168)
    #dbg_value(ptr undef, !733, !DIExpression(), !10169)
    #dbg_value(ptr undef, !728, !DIExpression(), !10170)
    #dbg_value(ptr undef, !745, !DIExpression(), !10171)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10173)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ap, 0, !dbg !10174
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !10175

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.03.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.d ]
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !729, !DIExpression(), !10176)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !722, !DIExpression(), !10162)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !739, !DIExpression(), !10166)
  %i.as = add nuw i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1, !dbg !10177 ; 2 uses
    #dbg_value(i64 %i.as, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10168)
    #dbg_value(ptr poison, !296, !DIExpression(), !10178)
    #dbg_value(ptr %i.aq, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10178)
    #dbg_value(i64 %i.ar, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10178)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !309, !DIExpression(), !10180)
    #dbg_value(ptr %i.aq, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10180)
    #dbg_value(i64 %i.ar, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10180)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef range(i64 0, -9223372036854775808) %i.ar), !dbg !10182, !noalias !10183
    #dbg_value(ptr undef, !733, !DIExpression(), !10169)
    #dbg_value(ptr undef, !728, !DIExpression(), !10170)
    #dbg_value(ptr undef, !745, !DIExpression(), !10171)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10173)
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.as, %i.ap, !dbg !10174
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !10175

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
    #dbg_value(i8 2, !9858, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10086)
    #dbg_value(ptr poison, !10186, !DIExpression(), !10192)
    #dbg_value(ptr %i.c, !10191, !DIExpression(), !10192)
  %i.at = call noundef align 8 ptr @_RINvXs_NtCsjfnSKV9Rz3v_3h3i5frameNtB5_8H3iFrameNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1F_15PrettyFormatterEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !dbg !10194, !noalias !10195 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null, !dbg !10196
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3a_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3y_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs1I_NtNtCs9xKKqPmwf7Y_10serde_core3ser5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameEENtB9_9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQIB1H_hENtB3j_15PrettyFormatterEECsi2C7WdEh0SA_3h3i.exit.i, !dbg !10197

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3a_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3y_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    #dbg_value(ptr %i.d, !5013, !DIExpression(), !10199)
    #dbg_value(ptr poison, !5016, !DIExpression(), !10199)
  store i8 1, ptr %i.r, align 8, !dbg !10201, !alias.scope !10202, !noalias !10205
    #dbg_value(ptr undef, !9971, !DIExpression(), !9993)
    #dbg_value(i64 1, !10089, !DIExpression(), !10096)
    #dbg_value(ptr %i.ao, !9987, !DIExpression(), !10098)
    #dbg_value(ptr %i.ao, !10095, !DIExpression(), !10096)
    #dbg_value(ptr %i.aj, !9989, !DIExpression(), !10099)
    #dbg_value(ptr poison, !10100, !DIExpression(), !10107)
    #dbg_value(ptr poison, !10106, !DIExpression(), !10109)
  %i.au = icmp eq ptr %i.ao, %i.aj, !dbg !10206
  br i1 %i.au, label %bb.e, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !10207

bb.e:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2n_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3a_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB3y_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    #dbg_value(i8 2, !9858, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10086)
    #dbg_value(ptr %i.c, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10114)
    #dbg_value(i8 2, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10114)
    #dbg_value(ptr %i.c, !4914, !DIExpression(), !10116)
    #dbg_value(i8 2, !4916, !DIExpression(), !10116)
  %.val.i19.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !dbg !10208, !alias.scope !10209, !noalias !9818, !nonnull !136, !noundef !136 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10210), !dbg !10208
    #dbg_value(ptr %i.c, !4859, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10213)
    #dbg_value(ptr poison, !4862, !DIExpression(), !10213)
  %i.av = load i64, ptr %i.h, align 8, !dbg !10215, !alias.scope !10216, !noalias !9818, !noundef !136
  %i.aw = add i64 %i.av, -1, !dbg !10215          ; 3 uses
  store i64 %i.aw, ptr %i.h, align 8, !dbg !10215, !alias.scope !10216, !noalias !9818
    #dbg_value(ptr %i.d, !4859, !DIExpression(), !10213)
    #dbg_value(ptr poison, !296, !DIExpression(), !10217)
    #dbg_value(ptr @0, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10217)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10217)
    #dbg_value(ptr %.val.i19.i.i.i.i.i.i.i.i.i.i.i.i, !309, !DIExpression(), !10219)
    #dbg_value(ptr @0, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10219)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10219)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i19.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !10221, !noalias !10222
  %i.ax = load ptr, ptr %i.d, align 8, !dbg !10223, !alias.scope !10216, !noalias !9818, !nonnull !136, !noundef !136
  %i.ay = load i64, ptr %i.k, align 8, !dbg !10223, !alias.scope !10216, !noalias !9818, !noundef !136
    #dbg_value(ptr poison, !708, !DIExpression(), !10224)
    #dbg_value(i64 %i.aw, !709, !DIExpression(), !10224)
    #dbg_value(ptr %i.ax, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10224)
    #dbg_value(i64 %i.ay, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10224)
    #dbg_value(i64 1, !719, !DIExpression(), !10226)
    #dbg_value(i64 1, !736, !DIExpression(), !10230)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10232)
    #dbg_value(i64 %i.aw, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10232)
    #dbg_value(ptr undef, !733, !DIExpression(), !10233)
    #dbg_value(ptr undef, !728, !DIExpression(), !10234)
    #dbg_value(ptr undef, !745, !DIExpression(), !10235)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10237)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aw, 0, !dbg !10238
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !10239

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.03.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.e ]
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !729, !DIExpression(), !10240)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !722, !DIExpression(), !10226)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !739, !DIExpression(), !10230)
  %i.az = add nuw i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1, !dbg !10241 ; 2 uses
    #dbg_value(i64 %i.az, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10232)
    #dbg_value(ptr poison, !296, !DIExpression(), !10242)
    #dbg_value(ptr %i.ax, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10242)
    #dbg_value(i64 %i.ay, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10242)
    #dbg_value(ptr %.val.i19.i.i.i.i.i.i.i.i.i.i.i.i, !309, !DIExpression(), !10244)
    #dbg_value(ptr %i.ax, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10244)
    #dbg_value(i64 %i.ay, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10244)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i19.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef range(i64 0, -9223372036854775808) %i.ay), !dbg !10246, !noalias !10247
    #dbg_value(ptr undef, !733, !DIExpression(), !10233)
    #dbg_value(ptr undef, !728, !DIExpression(), !10234)
    #dbg_value(ptr undef, !745, !DIExpression(), !10235)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10237)
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.az, %i.aw, !dbg !10238
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !10239

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
    #dbg_value(ptr poison, !296, !DIExpression(), !10250)
    #dbg_value(ptr @6, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10250)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10250)
    #dbg_value(ptr %.val.i19.i.i.i.i.i.i.i.i.i.i.i.i, !309, !DIExpression(), !10252)
    #dbg_value(ptr @6, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10252)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10252)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i19.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !10254, !noalias !10222
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameEEINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2Z_3ser10SerializerQIB1p_hENtB3M_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i, !dbg !10255

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameEEINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2Z_3ser10SerializerQIB1p_hENtB3M_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i: ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
    #dbg_value(ptr %i.c, !6610, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10256)
    #dbg_value(ptr poison, !6613, !DIExpression(), !10256)
  store i8 1, ptr %i.r, align 8, !dbg !10258, !alias.scope !10259, !noalias !9818
    #dbg_value(ptr %i.b, !9491, !DIExpression(), !9508)
  %i.ba = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b), !dbg !9510, !noalias !9549 ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %i.ba, 0, !dbg !9516 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, null, !dbg !9517
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !9518

.thread.i.thread.i.i:                             ; preds = %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer13serialize_mapCsi2C7WdEh0SA_3h3i.exit.i.i.i
    #dbg_value(i8 poison, !9109, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !9488)
  call void @llvm.experimental.noalias.scope.decl(metadata !10262), !dbg !10265
    #dbg_value(ptr %i.c, !10266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10272)
    #dbg_value(i8 poison, !10266, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !10272)
    #dbg_value(ptr %i.c, !10269, !DIExpression(), !10274)
    #dbg_value(i8 poison, !10271, !DIExpression(), !10274)
    #dbg_value(ptr %i.c, !9523, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10275)
    #dbg_value(ptr poison, !9526, !DIExpression(), !10275)
  store i64 %i.p, ptr %i.h, align 8, !dbg !10277, !alias.scope !10278, !noalias !10281
  br label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i17.i.i.i, !dbg !10282

.thread.i.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRyRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameEEINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB2Z_3ser10SerializerQIB1p_hENtB3M_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapB1l_B1n_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyB1o_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i
  %.pre.i.i = load i8, ptr %i.r, align 8, !dbg !10282, !range !1459, !alias.scope !10283, !noalias !10281
  %i.bc = trunc nuw i8 %.pre.i.i to i1, !dbg !10282
  %.val.i16.i.i.i = load ptr, ptr %i.c, align 8, !dbg !10285, !alias.scope !10286, !noalias !10281 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10287), !dbg !10285
    #dbg_value(ptr %i.c, !9523, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10275)
    #dbg_value(ptr poison, !9526, !DIExpression(), !10275)
  %i.bd = load i64, ptr %i.h, align 8, !dbg !10277, !alias.scope !10283, !noalias !10281, !noundef !136
  %i.be = add i64 %i.bd, -1, !dbg !10277          ; 3 uses
  store i64 %i.be, ptr %i.h, align 8, !dbg !10277, !alias.scope !10283, !noalias !10281
  br i1 %i.bc, label %bb.f, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i17.i.i.i, !dbg !10282

bb.f:                                             ; preds = %.thread.i.i.i
    #dbg_value(ptr %i.d, !9523, !DIExpression(), !10275)
    #dbg_value(ptr poison, !296, !DIExpression(), !10288)
    #dbg_value(ptr @0, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10288)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10288)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.i.i.i) ]
    #dbg_value(ptr %.val.i16.i.i.i, !309, !DIExpression(), !10290)
    #dbg_value(ptr @0, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10290)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10290)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i16.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !10292, !noalias !10293
  %i.bf = load ptr, ptr %i.d, align 8, !dbg !10294, !alias.scope !10283, !noalias !10281, !nonnull !136, !noundef !136
  %i.bg = load i64, ptr %i.k, align 8, !dbg !10294, !alias.scope !10283, !noalias !10281, !noundef !136
    #dbg_value(ptr poison, !708, !DIExpression(), !10295)
    #dbg_value(i64 %i.be, !709, !DIExpression(), !10295)
    #dbg_value(ptr %i.bf, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10295)
    #dbg_value(i64 %i.bg, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10295)
    #dbg_value(i64 1, !719, !DIExpression(), !10297)
    #dbg_value(i64 1, !736, !DIExpression(), !10301)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10303)
    #dbg_value(i64 %i.be, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10303)
    #dbg_value(ptr undef, !733, !DIExpression(), !10304)
    #dbg_value(ptr undef, !728, !DIExpression(), !10305)
    #dbg_value(ptr undef, !745, !DIExpression(), !10306)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10308)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.be, 0, !dbg !10309
  br i1 %.not.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i17.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !10310

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %.sroa.03.012.i.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.f ]
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i, !729, !DIExpression(), !10311)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i, !722, !DIExpression(), !10297)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i, !739, !DIExpression(), !10301)
  %i.bh = add nuw i64 %.sroa.03.012.i.i.i.i.i.i, 1, !dbg !10312 ; 2 uses
    #dbg_value(i64 %i.bh, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10303)
    #dbg_value(ptr poison, !296, !DIExpression(), !10313)
    #dbg_value(ptr %i.bf, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10313)
    #dbg_value(i64 %i.bg, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10313)
    #dbg_value(ptr %.val.i16.i.i.i, !309, !DIExpression(), !10315)
    #dbg_value(ptr %i.bf, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10315)
    #dbg_value(i64 %i.bg, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10315)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i16.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef range(i64 0, -9223372036854775808) %i.bg), !dbg !10317, !noalias !10318
    #dbg_value(ptr undef, !733, !DIExpression(), !10304)
    #dbg_value(ptr undef, !728, !DIExpression(), !10305)
    #dbg_value(ptr undef, !745, !DIExpression(), !10306)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10308)
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bh, %i.be, !dbg !10309
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i17.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !10310

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i17.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.f, %.thread.i.i.i, %.thread.i.thread.i.i
  %.val.i16.i13.i.i = phi ptr [ %.val.i.i.i.i, %.thread.i.thread.i.i ], [ %.val.i16.i.i.i, %.thread.i.i.i ], [ %.val.i16.i.i.i, %bb.f ], [ %.val.i16.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
    #dbg_value(ptr poison, !296, !DIExpression(), !10321)
    #dbg_value(ptr @1, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10321)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10321)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.i13.i.i) ]
    #dbg_value(ptr %.val.i16.i13.i.i, !309, !DIExpression(), !10323)
    #dbg_value(ptr @1, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10323)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10323)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i16.i13.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !10325, !noalias !10293
  br label %bb.g, !dbg !10326

_RINvXs1I_NtNtCs9xKKqPmwf7Y_10serde_core3ser5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameEENtB9_9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQIB1H_hENtB3j_15PrettyFormatterEECsi2C7WdEh0SA_3h3i.exit.i: ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10327, !noalias !9401
  br label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyIBT_NtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameEEECsi2C7WdEh0SA_3h3i.exit, !dbg !10328

bb.g:                                             ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i17.i.i.i, %_RNvXs1_NtCsenfyI6F4F2A_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer13serialize_mapCsi2C7WdEh0SA_3h3i.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10327, !noalias !9401
    #dbg_value(ptr %i.c, !6610, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10330)
    #dbg_value(ptr poison, !6613, !DIExpression(), !10330)
  store i8 1, ptr %i.r, align 8, !dbg !10332, !alias.scope !10333, !noalias !9379
  br label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyIBT_NtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameEEECsi2C7WdEh0SA_3h3i.exit, !dbg !10336

_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyIBT_NtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameEEECsi2C7WdEh0SA_3h3i.exit: ; preds = %_RINvXs1I_NtNtCs9xKKqPmwf7Y_10serde_core3ser5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameEENtB9_9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQIB1H_hENtB3j_15PrettyFormatterEECsi2C7WdEh0SA_3h3i.exit.i, %bb.g
  %.sroa.0.1.i = phi ptr [ null, %bb.g ], [ %i.at, %_RINvXs1I_NtNtCs9xKKqPmwf7Y_10serde_core3ser5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsjfnSKV9Rz3v_3h3i5frame8H3iFrameEENtB9_9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQIB1H_hENtB3j_15PrettyFormatterEECsi2C7WdEh0SA_3h3i.exit.i ], !dbg !10337
  ret ptr %.sroa.0.1.i, !dbg !10338
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsjfnSKV9Rz3v_3h3i5frame10ComparatorECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %3) unnamed_addr #0 !dbg !10339 {
bb.a:
    #dbg_value(ptr %0, !10344, !DIExpression(), !10353)
    #dbg_value(ptr %1, !10345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10353)
    #dbg_value(i64 %2, !10345, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10353)
    #dbg_value(ptr %3, !10346, !DIExpression(), !10353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10354), !dbg !10357
    #dbg_value(ptr %0, !6445, !DIExpression(), !10358)
    #dbg_value(ptr %1, !6450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10358)
    #dbg_value(i64 %2, !6450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10358)
    #dbg_value(ptr poison, !6465, !DIExpression(), !10360)
    #dbg_value(i64 1, !6471, !DIExpression(), !10362)
    #dbg_value(ptr %0, !6451, !DIExpression(), !10363)
    #dbg_value(ptr %0, !6453, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10364)
    #dbg_value(ptr %0, !6468, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10365)
  %i.a = load ptr, ptr %0, align 8, !dbg !10366, !alias.scope !10354, !noalias !10367, !nonnull !136, !align !284, !noundef !136 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10366
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10365 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !dbg !10365, !range !5124, !alias.scope !10354, !noalias !10367, !noundef !136
    #dbg_value(i8 %i.d, !6469, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !10369)
  %i.e = icmp eq i8 %i.d, 1, !dbg !10370
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !10371, !noalias !10372, !nonnull !136, !noundef !136 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10373), !dbg !10371
    #dbg_value(ptr %i.b, !6489, !DIExpression(), !10376)
    #dbg_value(ptr poison, !6492, !DIExpression(), !10376)
    #dbg_value(i1 %i.e, !6493, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10376)
end_hunk_3
begin_hunk_4_@_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeRINtNtCskKLDkoKarTP_4core6option6OptionIBN_TyyEEEECsi2C7WdEh0SA_3h3i:bb.a
    #dbg_value(i64 %.val10.i.i.i.i.i.i.i.i, !9693, !DIExpression(), !12249)
    #dbg_declare(ptr %i.b, !9659, !DIExpression(), !12251)
    #dbg_value(i64 20, !9706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12252)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12257, !noalias !12258
    #dbg_value(ptr %i.b, !9682, !DIExpression(), !12259)
    #dbg_value(ptr %i.b, !9683, !DIExpression(), !12260)
    #dbg_value(ptr %i.b, !9700, !DIExpression(), !12249)
  %i.ai = call noundef i64 @_RNvXsu_Cs81LOaKauIia_4itoayNtB5_8Unsigned3fmt(i64 noundef %.val10.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull dereferenceable(20) %i.b), !dbg !12261, !noalias !12258 ; 2 uses
    #dbg_value(i64 %i.ae, !9701, !DIExpression(), !12262)
    #dbg_value(i64 %i.ae, !9755, !DIExpression(), !12263)
    #dbg_value(i64 %i.ae, !9746, !DIExpression(), !12264)
    #dbg_value(i64 %i.ae, !9738, !DIExpression(), !12265)
    #dbg_value(i64 %i.ae, !9706, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12252)
    #dbg_value(i64 %i.ae, !9770, !DIExpression(), !12266)
    #dbg_value(ptr %i.b, !9754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12263)
    #dbg_value(ptr %i.b, !9745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12264)
    #dbg_value(ptr %i.b, !9739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12265)
    #dbg_value(ptr %i.b, !9719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12252)
    #dbg_value(ptr %i.b, !9775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12266)
    #dbg_value(i64 20, !9754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12263)
    #dbg_value(i64 20, !9745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12264)
    #dbg_value(i64 20, !9739, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12265)
    #dbg_value(i64 20, !9719, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12252)
    #dbg_value(i64 20, !9775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12266)
  %i.aj = sub nuw i64 20, %i.ai, !dbg !12268
    #dbg_value(i64 %i.af, !9724, !DIExpression(), !12269)
    #dbg_value(i64 %i.af, !9776, !DIExpression(), !12266)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai, !dbg !12270
    #dbg_value(ptr %i.ag, !9668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12271)
    #dbg_value(i64 %i.af, !9668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12271)
    #dbg_value(ptr poison, !296, !DIExpression(), !12272)
    #dbg_value(ptr %i.ag, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12272)
    #dbg_value(i64 %i.af, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12272)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i, !309, !DIExpression(), !12274)
    #dbg_value(ptr %i.ag, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12274)
    #dbg_value(i64 %i.af, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12274)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef range(i64 0, -9223372036854775808) %i.aj), !dbg !12276, !noalias !12258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12277, !noalias !12258
    #dbg_value(ptr %i.d, !5013, !DIExpression(), !12278)
    #dbg_value(ptr poison, !5016, !DIExpression(), !12278)
  store i8 1, ptr %i.u, align 8, !dbg !12280, !alias.scope !12281, !noalias !12284
    #dbg_value(ptr undef, !12138, !DIExpression(), !12142)
    #dbg_value(ptr poison, !12139, !DIExpression(), !12142)
    #dbg_value(ptr undef, !12121, !DIExpression(), !12141)
    #dbg_value(ptr poison, !12122, !DIExpression(), !12141)
    #dbg_value(ptr undef, !12115, !DIExpression(), !12133)
    #dbg_value(ptr undef, !12123, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12285)
    #dbg_value(ptr %i.d, !4945, !DIExpression(), !12286)
    #dbg_value(ptr poison, !4950, !DIExpression(), !12286)
    #dbg_value(i1 false, !4951, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12286)
    #dbg_value(ptr poison, !296, !DIExpression(), !12288)
    #dbg_value(ptr poison, !296, !DIExpression(), !12290)
    #dbg_value(ptr @4, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12290)
    #dbg_value(i64 2, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12290)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i, !309, !DIExpression(), !12292)
    #dbg_value(ptr @4, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12292)
    #dbg_value(i64 2, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12292)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !12294, !noalias !12295
    #dbg_value(ptr poison, !708, !DIExpression(), !12302)
    #dbg_value(i64 %i.x, !709, !DIExpression(), !12302)
    #dbg_value(ptr %i.v, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12302)
    #dbg_value(i64 %i.w, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12302)
    #dbg_value(i64 1, !719, !DIExpression(), !12304)
    #dbg_value(i64 1, !736, !DIExpression(), !12308)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12310)
    #dbg_value(i64 %i.x, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12310)
    #dbg_value(ptr undef, !733, !DIExpression(), !12311)
    #dbg_value(ptr undef, !728, !DIExpression(), !12312)
    #dbg_value(ptr undef, !745, !DIExpression(), !12313)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12315)
  br label %.loopexit7.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !12316

.loopexit7.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i
    #dbg_value(i8 2, !12089, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !12185)
    #dbg_value(ptr poison, !12229, !DIExpression(), !12328)
    #dbg_value(ptr poison, !12234, !DIExpression(), !12328)
    #dbg_value(ptr poison, !12237, !DIExpression(), !12330)
    #dbg_value(i64 %.val11.i.i.i.i.i.i.i.i, !12242, !DIExpression(), !12330)
    #dbg_value(ptr poison, !9652, !DIExpression(), !12332)
    #dbg_value(ptr poison, !9657, !DIExpression(), !12332)
    #dbg_value(i64 %.val11.i.i.i.i.i.i.i.i, !9658, !DIExpression(), !12332)
    #dbg_value(i64 %.val11.i.i.i.i.i.i.i.i, !9672, !DIExpression(), !12334)
    #dbg_value(i64 %.val11.i.i.i.i.i.i.i.i, !9693, !DIExpression(), !12336)
    #dbg_declare(ptr %i.a, !9659, !DIExpression(), !12338)
    #dbg_value(i64 20, !9706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12339)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12344, !noalias !12345
    #dbg_value(ptr %i.a, !9682, !DIExpression(), !12346)
    #dbg_value(ptr %i.a, !9683, !DIExpression(), !12347)
    #dbg_value(ptr %i.a, !9700, !DIExpression(), !12336)
  %i.al = call noundef i64 @_RNvXsu_Cs81LOaKauIia_4itoayNtB5_8Unsigned3fmt(i64 noundef %.val11.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull dereferenceable(20) %i.a), !dbg !12348, !noalias !12345 ; 2 uses
    #dbg_value(i64 %i.al, !9701, !DIExpression(), !12349)
    #dbg_value(i64 %i.al, !9755, !DIExpression(), !12350)
    #dbg_value(i64 %i.al, !9746, !DIExpression(), !12351)
    #dbg_value(i64 %i.al, !9738, !DIExpression(), !12352)
    #dbg_value(i64 %i.al, !9706, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12339)
    #dbg_value(i64 %i.al, !9770, !DIExpression(), !12353)
    #dbg_value(ptr %i.a, !9754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12350)
    #dbg_value(ptr %i.a, !9745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12351)
    #dbg_value(ptr %i.a, !9739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12352)
    #dbg_value(ptr %i.a, !9719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12339)
    #dbg_value(ptr %i.a, !9775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12353)
    #dbg_value(i64 20, !9754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12350)
    #dbg_value(i64 20, !9745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12351)
    #dbg_value(i64 20, !9739, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12352)
    #dbg_value(i64 20, !9719, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12339)
    #dbg_value(i64 20, !9775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12353)
  %i.am = sub nuw i64 20, %i.al, !dbg !12355
    #dbg_value(i64 %i.am, !9724, !DIExpression(), !12356)
    #dbg_value(i64 %i.am, !9776, !DIExpression(), !12353)
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al, !dbg !12357
    #dbg_value(ptr %i.an, !9668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12358)
    #dbg_value(i64 %i.am, !9668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12358)
    #dbg_value(ptr poison, !296, !DIExpression(), !12359)
    #dbg_value(ptr %i.an, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12359)
    #dbg_value(i64 %i.am, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12359)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i, !309, !DIExpression(), !12361)
    #dbg_value(ptr %i.an, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12361)
    #dbg_value(i64 %i.am, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12361)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef range(i64 0, -9223372036854775808) %i.am), !dbg !12363, !noalias !12345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12364, !noalias !12345
    #dbg_value(ptr %i.d, !5013, !DIExpression(), !12365)
    #dbg_value(ptr poison, !5016, !DIExpression(), !12365)
  store i8 1, ptr %i.u, align 8, !dbg !12367, !alias.scope !12368, !noalias !12371
  call void @llvm.experimental.noalias.scope.decl(metadata !12372), !dbg !12375
    #dbg_value(ptr %i.c, !12376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12379)
    #dbg_value(i8 2, !12376, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !12379)
  call void @llvm.experimental.noalias.scope.decl(metadata !12381), !dbg !12384
    #dbg_value(ptr %i.c, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12385)
    #dbg_value(i8 2, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !12385)
    #dbg_value(ptr %i.c, !4914, !DIExpression(), !12387)
    #dbg_value(i8 2, !4916, !DIExpression(), !12387)
  call void @llvm.experimental.noalias.scope.decl(metadata !12388), !dbg !12391
    #dbg_value(ptr %i.c, !4859, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12392)
    #dbg_value(ptr poison, !4862, !DIExpression(), !12392)
  store i64 %i.t, ptr %i.h, align 8, !dbg !12394, !alias.scope !12395, !noalias !12396
    #dbg_value(ptr %i.d, !4859, !DIExpression(), !12392)
    #dbg_value(ptr poison, !296, !DIExpression(), !12397)
    #dbg_value(ptr @0, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12397)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12397)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i, !309, !DIExpression(), !12399)
    #dbg_value(ptr @0, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12399)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12399)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !12401, !noalias !12402
    #dbg_value(ptr poison, !708, !DIExpression(), !12403)
    #dbg_value(i64 %i.t, !709, !DIExpression(), !12403)
    #dbg_value(ptr %i.v, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12403)
    #dbg_value(i64 %i.w, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12403)
    #dbg_value(i64 1, !719, !DIExpression(), !12405)
    #dbg_value(i64 1, !736, !DIExpression(), !12409)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12411)
    #dbg_value(i64 %i.t, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12411)
    #dbg_value(ptr undef, !733, !DIExpression(), !12412)
    #dbg_value(ptr undef, !728, !DIExpression(), !12413)
    #dbg_value(ptr undef, !745, !DIExpression(), !12414)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12416)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRTyyEINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB1Q_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2D_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB31_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !12417

.lr.ph.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.loopexit7.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.03.012.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.loopexit7.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
    #dbg_value(i64 %.sroa.03.012.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i, !729, !DIExpression(), !12418)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i, !722, !DIExpression(), !12405)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i, !739, !DIExpression(), !12409)
  %i.ao = add nuw i64 %.sroa.03.012.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i, 1, !dbg !12419
    #dbg_value(i64 %i.ao, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12411)
    #dbg_value(ptr poison, !296, !DIExpression(), !12420)
    #dbg_value(ptr %i.v, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12420)
    #dbg_value(i64 %i.w, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12420)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i, !309, !DIExpression(), !12422)
    #dbg_value(ptr %i.v, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12422)
    #dbg_value(i64 %i.w, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12422)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.w), !dbg !12424, !noalias !12425
    #dbg_value(ptr undef, !733, !DIExpression(), !12412)
    #dbg_value(ptr undef, !728, !DIExpression(), !12413)
    #dbg_value(ptr undef, !745, !DIExpression(), !12414)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12416)
  %exitcond.not.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.03.012.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.s, !dbg !12428
  br i1 %exitcond.not.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRTyyEINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB1Q_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2D_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB31_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !12417

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRTyyEINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB1Q_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2D_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB31_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit7.i.i.i.i.i.i.i.i.i.i.i.i.i
    #dbg_value(ptr poison, !296, !DIExpression(), !12429)
    #dbg_value(ptr @6, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12429)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12429)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i, !309, !DIExpression(), !12431)
    #dbg_value(ptr @6, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12431)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12431)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !12433, !noalias !12402
    #dbg_value(ptr %i.d, !5013, !DIExpression(), !12434)
    #dbg_value(ptr poison, !5016, !DIExpression(), !12434)
  store i8 1, ptr %i.u, align 8, !dbg !12436, !alias.scope !12437, !noalias !12396
    #dbg_value(ptr undef, !11863, !DIExpression(), !11885)
    #dbg_value(i64 1, !11981, !DIExpression(), !11988)
    #dbg_value(ptr %i.aa, !11879, !DIExpression(), !11990)
    #dbg_value(ptr %i.aa, !11987, !DIExpression(), !11988)
    #dbg_value(ptr %i.r, !11881, !DIExpression(), !11991)
    #dbg_value(ptr poison, !11992, !DIExpression(), !11999)
    #dbg_value(ptr poison, !11998, !DIExpression(), !12001)
  %i.ap = icmp eq ptr %i.aa, %i.r, !dbg !12440
  br i1 %i.ap, label %bb.f, label %bb.d, !dbg !12011

bb.f:                                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRTyyEINtNtBe_6result6ResultuNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENCINvYQINtNtB1Q_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2D_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIB31_B1l_EE0E0Csi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i.i
    #dbg_value(i8 2, !11752, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !11978)
    #dbg_value(ptr %i.c, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12006)
    #dbg_value(i8 2, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !12006)
    #dbg_value(ptr %i.c, !4914, !DIExpression(), !12008)
    #dbg_value(i8 2, !4916, !DIExpression(), !12008)
  call void @llvm.experimental.noalias.scope.decl(metadata !12441), !dbg !12444
    #dbg_value(ptr %i.c, !4859, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12445)
    #dbg_value(ptr poison, !4862, !DIExpression(), !12445)
  store i64 %i.s, ptr %i.h, align 8, !dbg !12447, !alias.scope !12448, !noalias !11700
    #dbg_value(ptr %i.d, !4859, !DIExpression(), !12445)
    #dbg_value(ptr poison, !296, !DIExpression(), !12449)
    #dbg_value(ptr @0, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12449)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12449)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i, !309, !DIExpression(), !12451)
    #dbg_value(ptr @0, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12451)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12451)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !12453, !noalias !12454
    #dbg_value(ptr poison, !708, !DIExpression(), !12455)
    #dbg_value(i64 %i.s, !709, !DIExpression(), !12455)
    #dbg_value(ptr %i.v, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12455)
    #dbg_value(i64 %i.w, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12455)
    #dbg_value(i64 1, !719, !DIExpression(), !12457)
    #dbg_value(i64 1, !736, !DIExpression(), !12461)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12463)
    #dbg_value(i64 %i.s, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12463)
    #dbg_value(ptr undef, !733, !DIExpression(), !12464)
    #dbg_value(ptr undef, !728, !DIExpression(), !12465)
    #dbg_value(ptr undef, !745, !DIExpression(), !12466)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12468)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0, !dbg !12469
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !dbg !12470

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.03.012.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.f ]
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i, !729, !DIExpression(), !12471)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i, !722, !DIExpression(), !12457)
    #dbg_value(i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i, !739, !DIExpression(), !12461)
  %i.aq = add nuw i64 %.sroa.03.012.i.i.i.i.i.i.i.i.i, 1, !dbg !12472 ; 2 uses
    #dbg_value(i64 %i.aq, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12463)
    #dbg_value(ptr poison, !296, !DIExpression(), !12473)
    #dbg_value(ptr %i.v, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12473)
    #dbg_value(i64 %i.w, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12473)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i, !309, !DIExpression(), !12475)
    #dbg_value(ptr %i.v, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12475)
    #dbg_value(i64 %i.w, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12475)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.w), !dbg !12477, !noalias !12478
    #dbg_value(ptr undef, !733, !DIExpression(), !12464)
    #dbg_value(ptr undef, !728, !DIExpression(), !12465)
    #dbg_value(ptr undef, !745, !DIExpression(), !12466)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12468)
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aq, %i.s, !dbg !12469
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !dbg !12470

_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.f
    #dbg_value(ptr poison, !296, !DIExpression(), !12481)
    #dbg_value(ptr @6, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12481)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12481)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i, !309, !DIExpression(), !12483)
    #dbg_value(ptr @6, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12483)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12483)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !12485, !noalias !12454
  br label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_valueRINtNtCskKLDkoKarTP_4core6option6OptionIBT_TyyEEEECsi2C7WdEh0SA_3h3i.exit, !dbg !12486

bb.g:                                             ; preds = %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !dbg !12487, !alias.scope !11719, !noalias !11700, !nonnull !136, !align !284, !noundef !136
    #dbg_value(ptr poison, !8165, !DIExpression(), !12488)
    #dbg_value(ptr poison, !8172, !DIExpression(), !12490)
    #dbg_value(ptr poison, !8177, !DIExpression(), !12492)
    #dbg_value(ptr poison, !8180, !DIExpression(), !12492)
    #dbg_value(ptr poison, !296, !DIExpression(), !12494)
    #dbg_value(ptr @10, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12494)
    #dbg_value(i64 4, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12494)
    #dbg_value(ptr %.val.i.i.i, !309, !DIExpression(), !12496)
    #dbg_value(ptr @10, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12496)
    #dbg_value(i64 4, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12496)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 4), !dbg !12498, !noalias !12499
  br label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_valueRINtNtCskKLDkoKarTP_4core6option6OptionIBT_TyyEEEECsi2C7WdEh0SA_3h3i.exit, !dbg !12487

_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_valueRINtNtCskKLDkoKarTP_4core6option6OptionIBT_TyyEEEECsi2C7WdEh0SA_3h3i.exit: ; preds = %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i, %_RINvXsd_NtCsenfyI6F4F2A_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i20.i.i.i.i.i.i, %bb.g
    #dbg_value(ptr %i.c, !6610, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12500)
    #dbg_value(ptr poison, !6613, !DIExpression(), !12500)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !12502
  store i8 1, ptr %i.ar, align 8, !dbg !12502, !alias.scope !12503
  ret ptr null, !dbg !12506
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeRINtNtCskKLDkoKarTP_4core6option6OptionyEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 !dbg !12507 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
    #dbg_value(ptr %0, !12513, !DIExpression(), !12522)
    #dbg_value(ptr %1, !12514, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12522)
    #dbg_value(i64 %2, !12514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12522)
    #dbg_value(ptr %3, !12515, !DIExpression(), !12522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12523), !dbg !12526
    #dbg_value(ptr %0, !6445, !DIExpression(), !12527)
    #dbg_value(ptr %1, !6450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12527)
    #dbg_value(i64 %2, !6450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12527)
    #dbg_value(ptr poison, !6465, !DIExpression(), !12529)
    #dbg_value(i64 1, !6471, !DIExpression(), !12531)
    #dbg_value(ptr %0, !6451, !DIExpression(), !12532)
    #dbg_value(ptr %0, !6453, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12533)
    #dbg_value(ptr %0, !6468, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12534)
  %i.b = load ptr, ptr %0, align 8, !dbg !12535, !alias.scope !12523, !noalias !12536, !nonnull !136, !align !284, !noundef !136 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12535
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12534 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !dbg !12534, !range !5124, !alias.scope !12523, !noalias !12536, !noundef !136
    #dbg_value(i8 %i.e, !6469, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !12538)
  %i.f = icmp eq i8 %i.e, 1, !dbg !12539
  %.val.i = load ptr, ptr %i.b, align 8, !dbg !12540, !noalias !12541, !nonnull !136, !noundef !136 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12542), !dbg !12540
    #dbg_value(ptr %i.c, !6489, !DIExpression(), !12545)
    #dbg_value(ptr poison, !6492, !DIExpression(), !12545)
    #dbg_value(i1 %i.f, !6493, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12545)
    #dbg_value(ptr poison, !296, !DIExpression(), !12547)
    #dbg_value(ptr poison, !296, !DIExpression(), !12549)
  br i1 %i.f, label %.split.i.i, label %.split9.i.i, !dbg !12551

.split9.i.i:                                      ; preds = %bb.a
    #dbg_value(ptr @4, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12549)
    #dbg_value(i64 2, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12549)
    #dbg_value(ptr %.val.i, !309, !DIExpression(), !12552)
    #dbg_value(ptr @4, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12552)
    #dbg_value(i64 2, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12552)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !12554, !noalias !12555
  br label %bb.b, !dbg !12556

.split.i.i:                                       ; preds = %bb.a
    #dbg_value(ptr @0, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12547)
    #dbg_value(i64 1, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12547)
    #dbg_value(ptr %.val.i, !309, !DIExpression(), !12557)
    #dbg_value(ptr @0, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12557)
    #dbg_value(i64 1, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12557)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !12559, !noalias !12555
  br label %bb.b, !dbg !12556

bb.b:                                             ; preds = %.split.i.i, %.split9.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !12560
  %i.h = load i64, ptr %i.g, align 8, !dbg !12560, !alias.scope !12542, !noalias !12541, !noundef !136 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !dbg !12561, !alias.scope !12542, !noalias !12541, !nonnull !136, !noundef !136
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12561
  %i.k = load i64, ptr %i.j, align 8, !dbg !12561, !alias.scope !12542, !noalias !12541, !noundef !136
    #dbg_value(ptr poison, !708, !DIExpression(), !12562)
    #dbg_value(i64 %i.h, !709, !DIExpression(), !12562)
    #dbg_value(ptr %i.i, !710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12562)
    #dbg_value(i64 %i.k, !710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12562)
    #dbg_value(i64 1, !719, !DIExpression(), !12564)
    #dbg_value(i64 1, !736, !DIExpression(), !12568)
    #dbg_value(i64 0, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12570)
    #dbg_value(i64 %i.h, !711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12570)
    #dbg_value(ptr undef, !733, !DIExpression(), !12571)
    #dbg_value(ptr undef, !728, !DIExpression(), !12572)
    #dbg_value(ptr undef, !745, !DIExpression(), !12573)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12575)
  %.not.i.i.i = icmp eq i64 %i.h, 0, !dbg !12576
  br i1 %.not.i.i.i, label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit, label %.lr.ph.i.i.i, !dbg !12577

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.03.012.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i ], [ 0, %bb.b ]
    #dbg_value(i64 %.sroa.03.012.i.i.i, !729, !DIExpression(), !12578)
    #dbg_value(i64 %.sroa.03.012.i.i.i, !722, !DIExpression(), !12564)
    #dbg_value(i64 %.sroa.03.012.i.i.i, !739, !DIExpression(), !12568)
  %i.l = add nuw i64 %.sroa.03.012.i.i.i, 1, !dbg !12579 ; 2 uses
    #dbg_value(i64 %i.l, !711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12570)
    #dbg_value(ptr poison, !296, !DIExpression(), !12580)
    #dbg_value(ptr %i.i, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12580)
    #dbg_value(i64 %i.k, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12580)
    #dbg_value(ptr %.val.i, !309, !DIExpression(), !12582)
    #dbg_value(ptr %i.i, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12582)
    #dbg_value(i64 %i.k, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12582)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.k), !dbg !12584, !noalias !12585
    #dbg_value(ptr undef, !733, !DIExpression(), !12571)
    #dbg_value(ptr undef, !728, !DIExpression(), !12572)
    #dbg_value(ptr undef, !745, !DIExpression(), !12573)
    #dbg_value(ptr undef, !748, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12575)
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %i.h, !dbg !12576
  br i1 %exitcond.not.i.i.i, label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit, label %.lr.ph.i.i.i, !dbg !12577

_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsi2C7WdEh0SA_3h3i.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  store i8 2, ptr %i.d, align 8, !dbg !12588, !alias.scope !12523, !noalias !12536
    #dbg_value(ptr %1, !6542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12589)
    #dbg_value(i64 %2, !6542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12589)
    #dbg_value(ptr %i.b, !6550, !DIExpression(), !12589)
    #dbg_value(ptr %i.b, !6555, !DIExpression(), !12591)
    #dbg_value(ptr %1, !6560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12591)
    #dbg_value(i64 %2, !6560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12591)
    #dbg_value(ptr %i.b, !6563, !DIExpression(), !12593)
    #dbg_value(ptr %1, !6568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12593)
    #dbg_value(i64 %2, !6568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12593)
  %i.m = tail call noundef ptr @_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_15PrettyFormatterECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.b, ptr noalias nofree nonnull readonly align 8 poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !12595, !noalias !12523 ; 0 uses
  %.val7 = load ptr, ptr %3, align 8, !dbg !12596 ; 3 uses
    #dbg_value(ptr poison, !12597, !DIExpression(), !12615)
    #dbg_value(ptr poison, !12602, !DIExpression(), !12615)
    #dbg_value(ptr poison, !12603, !DIExpression(), !12617)
  %.val.i8 = load ptr, ptr %i.b, align 8, !dbg !12618, !nonnull !136, !align !284, !noundef !136
    #dbg_value(ptr poison, !6595, !DIExpression(), !12619)
    #dbg_value(ptr poison, !6598, !DIExpression(), !12619)
    #dbg_value(ptr poison, !296, !DIExpression(), !12621)
    #dbg_value(ptr @5, !304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12621)
    #dbg_value(i64 2, !304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12621)
    #dbg_value(ptr %.val.i8, !309, !DIExpression(), !12623)
    #dbg_value(ptr @5, !318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12623)
    #dbg_value(i64 2, !318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12623)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !12625
  %.val15.i = load ptr, ptr %i.b, align 8, !dbg !12626 ; 4 uses
end_hunk_4
