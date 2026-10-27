Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/netlog-0413cb358f6d608a.netlog.c940049af7b502f1-cgu.0?download=true
inline.NumInlined: 3033
inline.NumDeleted: 1427
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog:bb.a
    #dbg_value(ptr %i.c, !101420, !DIExpression(), !101468)
    #dbg_value(ptr poison, !101470, !DIExpression(), !101477)
    #dbg_value(ptr poison, !101474, !DIExpression(), !101478)
  %i.i = icmp samesign eq i64 %2, 0, !dbg !101485
  br i1 %i.i, label %.loopexit, label %.lr.ph, !dbg !101476

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.024, i64 1, !dbg !101486 ; 2 uses
    #dbg_value(ptr %i.j, !4946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !101466)
    #dbg_value(ptr %i.j, !4946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !101466)
    #dbg_value(ptr undef, !101408, !DIExpression(), !101425)
    #dbg_value(ptr %i.j, !101419, !DIExpression(), !101467)
    #dbg_value(ptr %i.j, !101453, !DIExpression(), !101456)
    #dbg_value(ptr %i.c, !101420, !DIExpression(), !101468)
    #dbg_value(ptr poison, !101470, !DIExpression(), !101477)
    #dbg_value(ptr poison, !101474, !DIExpression(), !101478)
  %i.k = icmp eq ptr %i.j, %i.c, !dbg !101485
  br i1 %i.k, label %.loopexit, label %.lr.ph, !dbg !101476

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.024 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
    #dbg_value(ptr %.sroa.01.024, !4946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !101466)
    #dbg_value(ptr %.sroa.01.024, !4946, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !101466)
    #dbg_value(ptr %.sroa.01.024, !4948, !DIExpression(), !101479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101480), !dbg !101487
    #dbg_value(ptr %0, !4965, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101403)
  %exitcond.not = icmp eq i64 %i.l, %umax, !dbg !101488
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, label %bb.c, !dbg !101488

bb.c:                                             ; preds = %.lr.ph
    #dbg_value(ptr %i.g, !4965, !DIExpression(), !101403)
    #dbg_value(ptr %.sroa.01.024, !4946, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !101466)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l, !dbg !101489
  %i.n = load i8, ptr %i.m, align 1, !dbg !101489, !noalias !101481, !noundef !1865
    #dbg_value(i8 %i.n, !4966, !DIExpression(), !101405)
  %i.o = add i64 %i.l, 1, !dbg !101490            ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !dbg !101490, !alias.scope !101480
    #dbg_value(i8 %i.n, !4951, !DIExpression(), !101482)
  %i.p = load i8, ptr %.sroa.01.024, align 1, !dbg !101491, !noundef !1865
  %.not = icmp eq i8 %i.n, %i.p, !dbg !101492
  br i1 %.not, label %bb.b, label %bb.d, !dbg !101492, !prof !4805

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !101493
  store i64 5, ptr %i.b, align 8, !dbg !101493
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !101494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !101495
  br label %.loopexit, !dbg !101496

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !101497
  store i64 9, ptr %i.a, align 8, !dbg !101497
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !101498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !101499
  br label %.loopexit, !dbg !101500

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ], !dbg !101501
  ret ptr %.sroa.0.1, !dbg !101502
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 !dbg !101515 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(i64 %3, !101558, !DIExpression(), !101573)
    #dbg_value(ptr %1, !101556, !DIExpression(), !101573)
    #dbg_value(ptr %1, !101574, !DIExpression(), !101577)
    #dbg_value(ptr %1, !101578, !DIExpression(), !101585)
    #dbg_value(ptr %1, !101586, !DIExpression(), !101589)
    #dbg_value(ptr %1, !101574, !DIExpression(), !101591)
    #dbg_value(ptr %1, !101586, !DIExpression(), !101593)
    #dbg_value(ptr %1, !101578, !DIExpression(), !101595)
    #dbg_value(ptr %1, !101586, !DIExpression(), !101598)
    #dbg_value(i1 %2, !101557, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !101573)
    #dbg_value(i32 %4, !101559, !DIExpression(), !101573)
    #dbg_value(i64 -1, !101565, !DIExpression(), !101599)
    #dbg_value(ptr %1, !3462, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101524)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !101613 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !101613, !alias.scope !101600, !noundef !1865 ; 2 uses
  %i.g = add i64 %i.f, 1, !dbg !101613            ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !dbg !101613, !alias.scope !101600
    #dbg_value(i32 0, !101560, !DIExpression(), !101601)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !101602, !noundef !1865 ; 3 uses
  %i.j = icmp ult i64 %i.g, %i.i, !dbg !101614
  br i1 %i.j, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %.thread.thread, !dbg !101614

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !101615
    #dbg_value(ptr %i.k, !3462, !DIExpression(), !101524)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !101602, !nonnull !1865, !noundef !1865
  %i.m = trunc i64 %i.f to i32, !dbg !101614
  %i.n = add i32 %i.m, 1, !dbg !101614            ; 2 uses
  %i.o = trunc i64 %i.i to i32, !dbg !101614      ; 2 uses
  %i.p = sub i32 %i.n, %i.o, !dbg !101614
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !101614

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, %bb.o
  %.sroa.0.077 = phi i64 [ %3, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.be, %bb.o ] ; 6 uses
  %.sroa.07.076 = phi i32 [ 0, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bf, %bb.o ] ; 4 uses
  %i.q = phi i64 [ %i.g, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bc, %bb.o ] ; 2 uses
    #dbg_value(i64 %.sroa.0.077, !101558, !DIExpression(), !101573)
    #dbg_value(i32 %.sroa.07.076, !101560, !DIExpression(), !101601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101602), !dbg !101616
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q, !dbg !101617
  %i.s = load i8, ptr %i.r, align 1, !dbg !101617, !noalias !101603, !noundef !1865 ; 2 uses
    #dbg_value(i8 poison, !101563, !DIExpression(), !101604)
  %i.t = add i8 %i.s, -48, !dbg !101618           ; 3 uses
  %or.cond = icmp ult i8 %i.t, 10, !dbg !101618
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !101618

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.u = icmp eq i32 %.sroa.07.076, 0, !dbg !101619
  br i1 %i.u, label %bb.d, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, !dbg !101619

.thread:                                          ; preds = %bb.o
    #dbg_value(i8 poison, !101563, !DIExpression(), !101604)
  %i.v = icmp eq i32 %i.n, %i.o, !dbg !101619
  br i1 %i.v, label %.thread.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, !dbg !101619

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread: ; preds = %.thread
  %i.w = add i32 %i.p, %4, !dbg !101620
    #dbg_value(i32 %i.w, !101569, !DIExpression(), !101605)
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101532)
  br label %bb.e, !dbg !101621

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.x = zext nneg i8 %i.t to i64, !dbg !101622
    #dbg_value(i64 %i.x, !101564, !DIExpression(), !101607)
  %i.y = icmp ugt i64 %.sroa.0.077, 1844674407370955160, !dbg !101623
  br i1 %i.y, label %bb.n, label %bb.o, !dbg !101623

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101534)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !101624
  store i64 13, ptr %i.d, align 8, !dbg !101624
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !101625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !101626
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !101627
  store ptr %i.z, ptr %i.aa, align 8, !dbg !101627
  store i64 1, ptr %0, align 8, !dbg !101627
  br label %bb.m, !dbg !101628

.thread.thread:                                   ; preds = %bb.a, %.thread
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101534)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !101629
  store i64 5, ptr %i.c, align 8, !dbg !101629
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !101630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !101631
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !101632
  store ptr %i.ab, ptr %i.ac, align 8, !dbg !101632
  store i64 1, ptr %0, align 8, !dbg !101632
  br label %bb.m, !dbg !101633

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45: ; preds = %bb.b
  %i.ad = add i32 %.sroa.07.076, %4, !dbg !101620 ; 2 uses
    #dbg_value(i32 %i.ad, !101569, !DIExpression(), !101605)
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101532)
  switch i8 %i.s, label %bb.e [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ], !dbg !101621

bb.e:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45
  %.sroa.0.073 = phi i64 [ %i.be, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread ], [ %.sroa.0.077, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45 ]
  %i.ae = phi i32 [ %i.w, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread ], [ %i.ad, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101608), !dbg !101634
    #dbg_value(i32 %i.ae, !6504, !DIExpression(), !101538)
    #dbg_value(ptr %1, !6506, !DIExpression(), !101538)
    #dbg_value(i1 %2, !6507, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !101538)
    #dbg_value(i64 %.sroa.0.073, !6508, !DIExpression(), !101538)
  %i.af = uitofp i64 %.sroa.0.073 to double, !dbg !101635 ; 2 uses
    #dbg_value(double %i.af, !6509, !DIExpression(), !101539)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !101541)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !101543)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !101541)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !101543)
    #dbg_value(i32 %i.ae, !6543, !DIExpression(), !101545)
  %.sroa.012.028.i = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 false), !dbg !101636 ; 2 uses
  %i.ag = icmp ult i32 %.sroa.012.028.i, 309, !dbg !101637
  br i1 %i.ag, label %._crit_edge.i, label %.lr.ph.i, !dbg !101637

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.sroa.0.030.i = phi i32 [ %i.ao, %bb.g ], [ %i.ae, %bb.e ] ; 2 uses
  %.sroa.04.029.i = phi double [ %i.an, %bb.g ], [ %i.af, %bb.e ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i, !6504, !DIExpression(), !101538)
    #dbg_value(double %.sroa.04.029.i, !6509, !DIExpression(), !101539)
  %i.ah = fcmp oeq double %.sroa.04.029.i, 0.000000e+00, !dbg !101638
  br i1 %i.ah, label %.loopexit.i, label %bb.f, !dbg !101638

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  %.sroa.04.0.lcssa.i = phi double [ %i.af, %bb.e ], [ %i.an, %bb.g ], !dbg !101639 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %i.ae, %bb.e ], [ %i.ao, %bb.g ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.028.i, %bb.e ], [ %.sroa.012.0.i, %bb.g ], !dbg !101636
  %i.ai = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !101640
    #dbg_value(i64 %i.ai, !6529, !DIExpression(), !101541)
    #dbg_value(i64 %i.ai, !6539, !DIExpression(), !101543)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.ai, !dbg !101641
  %i.ak = load double, ptr %i.aj, align 8, !dbg !101642, !noalias !101609, !noundef !1865 ; 2 uses
    #dbg_value(double %i.ak, !6510, !DIExpression(), !101547)
  %i.al = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !101643
  br i1 %i.al, label %bb.j, label %bb.i, !dbg !101643

bb.f:                                             ; preds = %.lr.ph.i
  %i.am = icmp sgt i32 %.sroa.0.030.i, -1, !dbg !101644
  br i1 %i.am, label %bb.h, label %bb.g, !dbg !101644, !prof !4857

bb.g:                                             ; preds = %bb.f
  %i.an = fdiv double %.sroa.04.029.i, 1.000000e+308, !dbg !101645 ; 2 uses
    #dbg_value(double %i.an, !6509, !DIExpression(), !101539)
  %i.ao = add nsw i32 %.sroa.0.030.i, 308, !dbg !101646 ; 3 uses
    #dbg_value(i32 %i.ao, !6504, !DIExpression(), !101538)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !101541)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !101543)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !101541)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !101543)
    #dbg_value(i32 %i.ao, !6543, !DIExpression(), !101545)
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.ao, i1 true), !dbg !101636 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !6529, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !101541)
    #dbg_value(i32 %.sroa.012.0.i, !6539, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !101543)
  %i.ap = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !101637
  br i1 %i.ap, label %._crit_edge.i, label %.lr.ph.i, !dbg !101637

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !101647, !noalias !101609
  store i64 14, ptr %i.a, align 8, !dbg !101647, !noalias !101609
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !101648, !noalias !101608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !101649, !noalias !101609
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !101650
  store ptr %i.aq, ptr %i.ar, align 8, !dbg !101650, !alias.scope !101608
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !101651

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.j, %bb.i
  %.sroa.04.1.i = phi double [ %i.av, %bb.j ], [ %i.au, %bb.i ], [ %.sroa.04.029.i, %.lr.ph.i ], !dbg !101639 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6509, !DIExpression(), !101539)
  %i.as = fneg double %.sroa.04.1.i, !dbg !101652
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.as, !dbg !101652
    #dbg_value(double %.sroa.04.2.i, !6509, !DIExpression(), !101539)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !101653
  store double %.sroa.04.2.i, ptr %i.at, align 8, !dbg !101653, !alias.scope !101608
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !101654

bb.i:                                             ; preds = %._crit_edge.i
  %i.au = fdiv double %.sroa.04.0.lcssa.i, %i.ak, !dbg !101655
    #dbg_value(double %i.au, !6509, !DIExpression(), !101539)
  br label %.loopexit.i, !dbg !101656

bb.j:                                             ; preds = %._crit_edge.i
  %i.av = fmul double %.sroa.04.0.lcssa.i, %i.ak, !dbg !101657 ; 2 uses
    #dbg_value(double %i.av, !6509, !DIExpression(), !101539)
    #dbg_value(double %i.av, !6551, !DIExpression(), !101549)
  %i.aw = tail call double @llvm.fabs.f64(double %i.av), !dbg !101658
  %i.ax = fcmp oeq double %i.aw, +inf, !dbg !101658
  br i1 %i.ax, label %bb.k, label %.loopexit.i, !dbg !101659, !prof !4857

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !101660, !noalias !101609
  store i64 14, ptr %i.b, align 8, !dbg !101660, !noalias !101609
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !101661, !noalias !101608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !101662, !noalias !101609
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !101663
  store ptr %i.ay, ptr %i.az, align 8, !dbg !101663, !alias.scope !101608
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !101651

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.h, %.loopexit.i, %bb.k
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.k ], [ 1, %bb.h ], !dbg !101664
  store i64 %storemerge.i, ptr %0, align 8, !dbg !101664, !alias.scope !101608
  br label %bb.m, !dbg !101665

bb.l:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45
  tail call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.077, i32 noundef %i.ad), !dbg !101666
  br label %bb.m, !dbg !101667

bb.m:                                             ; preds = %bb.d, %.thread.thread, %bb.p, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, %bb.l
  ret void, !dbg !101668

bb.n:                                             ; preds = %bb.c
  %i.ba = icmp ne i64 %.sroa.0.077, 1844674407370955161, !dbg !101669
  %i.bb = icmp samesign ugt i8 %i.t, 5
  %or.cond1 = or i1 %i.ba, %i.bb, !dbg !101669
  br i1 %or.cond1, label %bb.p, label %bb.o, !dbg !101669, !prof !4861

bb.o:                                             ; preds = %bb.n, %bb.c
    #dbg_value(ptr %1, !3462, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101551)
  %i.bc = add i64 %i.q, 1, !dbg !101670           ; 3 uses
  store i64 %i.bc, ptr %i.e, align 8, !dbg !101670, !alias.scope !101610
  %i.bd = mul nuw i64 %.sroa.0.077, 10, !dbg !101671
  %i.be = add i64 %i.bd, %i.x, !dbg !101672       ; 2 uses
    #dbg_value(i64 %i.be, !101558, !DIExpression(), !101573)
  %i.bf = add i32 %.sroa.07.076, -1, !dbg !101673
    #dbg_value(i32 %i.bf, !101560, !DIExpression(), !101601)
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101554)
  %exitcond.not = icmp eq i64 %i.bc, %i.i, !dbg !101614
  br i1 %exitcond.not, label %.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !101614

bb.p:                                             ; preds = %bb.n
  %i.bg = add i32 %.sroa.07.076, %4, !dbg !101674
    #dbg_value(i32 %i.bg, !101566, !DIExpression(), !101611)
  tail call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE22parse_decimal_overflowCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.077, i32 noundef %i.bg) #19, !dbg !101675
  br label %bb.m, !dbg !101676
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #0 !dbg !101692 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !101775, !DIExpression(), !101793)
    #dbg_value(ptr %1, !101794, !DIExpression(), !101797)
    #dbg_value(ptr %1, !101798, !DIExpression(), !101805)
    #dbg_value(ptr %1, !101806, !DIExpression(), !101809)
    #dbg_value(ptr %1, !101798, !DIExpression(), !101811)
    #dbg_value(ptr %1, !101806, !DIExpression(), !101814)
    #dbg_value(ptr %1, !101815, !DIExpression(), !101818)
    #dbg_value(i1 %2, !101776, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !101793)
    #dbg_value(i64 -1, !101789, !DIExpression(), !101819)
    #dbg_value(i8 0, !101820, !DIExpression(), !101826)
    #dbg_value(i8 0, !101820, !DIExpression(), !101828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101829), !dbg !101879
    #dbg_value(ptr %1, !4965, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101707)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !101880 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !101880, !alias.scope !101829, !noundef !1865 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !101881
  %i.l = load i64, ptr %i.k, align 8, !dbg !101881, !alias.scope !101829, !noundef !1865 ; 5 uses
  %i.m = icmp ult i64 %i.j, %i.l, !dbg !101880
  br i1 %i.m, label %bb.b, label %bb.c, !dbg !101880

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !101882
    #dbg_value(ptr %i.n, !4965, !DIExpression(), !101707)
  %i.o = load ptr, ptr %i.n, align 8, !dbg !101883, !alias.scope !101829, !nonnull !1865, !noundef !1865 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j, !dbg !101883
  %i.q = load i8, ptr %i.p, align 1, !dbg !101883, !noalias !101830, !noundef !1865 ; 3 uses
    #dbg_value(i8 %i.q, !4966, !DIExpression(), !101709)
  %i.r = add nuw i64 %i.j, 1, !dbg !101884        ; 7 uses
  store i64 %i.r, ptr %i.i, align 8, !dbg !101884, !alias.scope !101829
    #dbg_value(i8 %i.q, !101777, !DIExpression(), !101831)
    #dbg_value(i8 %i.q, !101783, !DIExpression(), !101832)
  %i.s = icmp eq i8 %i.q, 48, !dbg !101885
  br i1 %i.s, label %bb.d, label %bb.e, !dbg !101885

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !101886
  store i64 5, ptr %i.h, align 8, !dbg !101886
  %i.t = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !dbg !101887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !101888
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !101889
  store ptr %i.t, ptr %i.u, align 8, !dbg !101889
  store i64 -1, ptr %0, align 8, !dbg !101890
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12parse_numberCshhfsHpF03Qr_6netlog.exit, !dbg !101891

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101711)
  %i.v = icmp ult i64 %i.r, %i.l, !dbg !101892
  br i1 %i.v, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !101892

bb.e:                                             ; preds = %bb.b
  %i.w = add i8 %i.q, -49, !dbg !101893
  %or.cond1 = icmp ult i8 %i.w, 9, !dbg !101893
  br i1 %or.cond1, label %bb.o, label %bb.n, !dbg !101893, !prof !4846

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r, !dbg !101894
  %i.y = load i8, ptr %i.x, align 1, !dbg !101894, !noalias !101834, !noundef !1865
    #dbg_value(i8 1, !101821, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !101826)
    #dbg_value(i8 poison, !101821, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !101826)
  %i.z = add i8 %i.y, -48, !dbg !101895
  %i.aa = icmp ult i8 %i.z, 10, !dbg !101895
  br i1 %i.aa, label %bb.m, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i, !dbg !101896, !prof !4969

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101835), !dbg !101897
    #dbg_value(ptr %1, !101836, !DIExpression(), !101726)
    #dbg_value(ptr %1, !101850, !DIExpression(), !101731)
    #dbg_value(ptr %1, !101854, !DIExpression(), !101734)
    #dbg_value(i1 %2, !101840, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !101726)
    #dbg_value(i64 0, !101841, !DIExpression(), !101726)
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101736)
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i, !dbg !101898

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %1, !101836, !DIExpression(), !101726)
    #dbg_value(ptr %1, !101850, !DIExpression(), !101731)
    #dbg_value(ptr %1, !101854, !DIExpression(), !101734)
    #dbg_value(i1 %2, !101840, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !101726)
    #dbg_value(i64 0, !101841, !DIExpression(), !101726)
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101736)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r, !dbg !101899
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !101899, !noalias !101856, !noundef !1865
  switch i8 %i.ac, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i [
    i8 46, label %bb.f
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCshhfsHpF03Qr_6netlog:bb.a

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i: ; preds = %.preheader.i, %bb.l
  %i.cc = phi i64 [ %i.ch, %bb.l ], [ %i.bx, %.preheader.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cc, !dbg !102447
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !102447, !noalias !102367, !noundef !1865
    #dbg_value(i8 1, !102345, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !102185)
    #dbg_value(i8 poison, !102345, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !102185)
  %i.cf = add i8 %i.ce, -48, !dbg !102448
  %i.cg = icmp ult i8 %i.cf, 10, !dbg !102448
  br i1 %i.cg, label %bb.l, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCshhfsHpF03Qr_6netlog.exit, !dbg !102449

bb.l:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i
    #dbg_value(ptr %0, !3462, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !102210)
  %i.ch = add i64 %i.cc, 1, !dbg !102450          ; 3 uses
  store i64 %i.ch, ptr %i.f, align 8, !dbg !102450, !alias.scope !102368
    #dbg_value(ptr %0, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !102213)
  %exitcond.not.i = icmp eq i64 %i.ch, %i.i, !dbg !102442
  br i1 %exitcond.not.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCshhfsHpF03Qr_6netlog.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i, !dbg !102442

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCshhfsHpF03Qr_6netlog.exit.loopexit89: ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !dbg !102397, !alias.scope !102287
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCshhfsHpF03Qr_6netlog.exit, !dbg !102451

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.e, %bb.l, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i, %bb.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i.i, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCshhfsHpF03Qr_6netlog.exit.loopexit89, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i, %.preheader.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i, %.preheader.i.i, %.loopexit.i, %.thread.thread.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit56, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread, %bb.d
  %.sroa.0.3 = phi ptr [ %i.x, %bb.d ], [ null, %.preheader.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit56 ], [ %i.aa, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread ], [ null, %bb.i ], [ null, %.loopexit.i ], [ null, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCshhfsHpF03Qr_6netlog.exit.loopexit89 ], [ %i.at, %.thread.thread.i ], [ %i.bh, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i ], [ null, %.preheader.i.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], [ %i.cb, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i ], [ null, %bb.l ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i ], [ null, %bb.e ], !dbg !102452
  ret ptr %.sroa.0.3, !dbg !102451
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 !dbg !102469 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !102522, !DIExpression(), !102543)
    #dbg_value(ptr %1, !102544, !DIExpression(), !102547)
    #dbg_value(ptr %1, !102548, !DIExpression(), !102555)
    #dbg_value(ptr %1, !102556, !DIExpression(), !102559)
    #dbg_value(ptr %1, !102544, !DIExpression(), !102561)
    #dbg_value(ptr %1, !102544, !DIExpression(), !102563)
    #dbg_value(ptr %1, !102564, !DIExpression(), !102567)
    #dbg_value(ptr %1, !102548, !DIExpression(), !102569)
    #dbg_value(ptr %1, !102556, !DIExpression(), !102572)
    #dbg_value(ptr %1, !102544, !DIExpression(), !102574)
    #dbg_value(i1 %2, !102523, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !102543)
    #dbg_value(i64 %3, !102524, !DIExpression(), !102543)
    #dbg_value(i32 %4, !102525, !DIExpression(), !102543)
    #dbg_value(i32 %4, !102575, !DIExpression(), !102581)
    #dbg_value(i32 %4, !102582, !DIExpression(), !102586)
    #dbg_value(i32 2147483647, !102539, !DIExpression(), !102587)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !102609 ; 2 uses
    #dbg_value(ptr %i.e, !3462, !DIExpression(), !102481)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !102610 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !102610, !alias.scope !102588, !noundef !1865 ; 2 uses
  %i.h = add i64 %i.g, 1, !dbg !102610            ; 5 uses
  store i64 %i.h, ptr %i.f, align 8, !dbg !102610, !alias.scope !102588
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102589), !dbg !102611
    #dbg_value(ptr %i.e, !3458, !DIExpression(), !102487)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102612
  %i.j = load i64, ptr %i.i, align 8, !dbg !102612, !alias.scope !102589, !noundef !1865 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j, !dbg !102613
  br i1 %i.k, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !102613

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !dbg !102614, !alias.scope !102589, !nonnull !1865, !noundef !1865
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h, !dbg !102614
  %i.n = load i8, ptr %i.m, align 1, !dbg !102614, !noalias !102590, !noundef !1865
  switch i8 %i.n, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread [
    i8 43, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split
    i8 45, label %bb.b
  ], !dbg !102615

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %i.e, !3462, !DIExpression(), !102490)
    #dbg_value(i8 0, !102526, !DIExpression(), !102592)
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split, !dbg !102616

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, %bb.b
  %.sroa.0.0.ph = phi i1 [ false, %bb.b ], [ true, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ]
  %i.o = add i64 %i.g, 2, !dbg !102617            ; 2 uses
  store i64 %i.o, ptr %i.f, align 8, !dbg !102617
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !102618

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split, %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.p = phi i64 [ %i.h, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ], [ %i.h, %bb.a ], [ %i.o, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split ], !dbg !102619 ; 3 uses
  %.sroa.0.0 = phi i1 [ true, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ], [ true, %bb.a ], [ %.sroa.0.0.ph, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split ], !dbg !102543 ; 2 uses
    #dbg_value(i8 poison, !102526, !DIExpression(), !102592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102594), !dbg !102618
    #dbg_value(ptr %i.e, !4965, !DIExpression(), !102494)
  %i.q = icmp ult i64 %i.p, %i.j, !dbg !102619
  br i1 %i.q, label %bb.c, label %bb.d, !dbg !102619

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
  %i.r = load ptr, ptr %i.e, align 8, !dbg !102620, !alias.scope !102594, !nonnull !1865, !noundef !1865 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p, !dbg !102620
  %i.t = load i8, ptr %i.s, align 1, !dbg !102620, !noalias !102595, !noundef !1865
    #dbg_value(i8 %i.t, !4966, !DIExpression(), !102496)
  %i.u = add nuw i64 %i.p, 1, !dbg !102621        ; 3 uses
  store i64 %i.u, ptr %i.f, align 8, !dbg !102621, !alias.scope !102594
    #dbg_value(i8 %i.t, !102529, !DIExpression(), !102596)
    #dbg_value(i8 %i.t, !102534, !DIExpression(), !102597)
  %i.v = add i8 %i.t, -48, !dbg !102622           ; 2 uses
  %or.cond = icmp ult i8 %i.v, 10, !dbg !102622
  br i1 %or.cond, label %bb.f, label %bb.e, !dbg !102622, !prof !4846

bb.d:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !102623
  store i64 5, ptr %i.d, align 8, !dbg !102623
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !102624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !102625
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !102626
  store ptr %i.w, ptr %i.x, align 8, !dbg !102626
  store i64 1, ptr %0, align 8, !dbg !102627
  br label %bb.q, !dbg !102628

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !102629
  store i64 13, ptr %i.c, align 8, !dbg !102629
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !102630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !102631
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !102632
  store ptr %i.y, ptr %i.z, align 8, !dbg !102632
  store i64 1, ptr %0, align 8, !dbg !102632
  br label %bb.q, !dbg !102633

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32, !dbg !102634  ; 2 uses
    #dbg_value(i32 %i.aa, !102583, !DIExpression(), !102586)
    #dbg_value(i32 %i.aa, !102578, !DIExpression(), !102581)
    #dbg_value(i32 %i.aa, !102533, !DIExpression(), !102599)
  %i.ab = icmp ult i64 %i.u, %i.j, !dbg !102635
  br i1 %i.ab, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, !dbg !102635

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45: ; preds = %bb.f, %bb.s
  %.sroa.08.071 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
    #dbg_value(i32 %.sroa.08.071, !102583, !DIExpression(), !102586)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac, !dbg !102636
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !102636, !noalias !102600, !noundef !1865
    #dbg_value(i8 poison, !102537, !DIExpression(), !102601)
  %i.af = add i8 %i.ae, -48, !dbg !102637         ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10, !dbg !102637
  br i1 %or.cond1, label %bb.g, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, !dbg !102637

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.071, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45 ], !dbg !102596 ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h, !dbg !102638

bb.g:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45
    #dbg_value(ptr %i.e, !3462, !DIExpression(), !102502)
  %i.ag = add i64 %i.ac, 1, !dbg !102639          ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !dbg !102639, !alias.scope !102602
  %i.ah = zext nneg i8 %i.af to i32, !dbg !102640
    #dbg_value(i32 %i.ah, !102538, !DIExpression(), !102603)
  %i.ai = icmp sgt i32 %.sroa.08.071, 214748363, !dbg !102641
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !102641

bb.h:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa), !dbg !102642
    #dbg_value(i32 %i.aj, !102541, !DIExpression(), !102604)
  br label %bb.j, !dbg !102643

bb.i:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa), !dbg !102644
    #dbg_value(i32 %i.ak, !102541, !DIExpression(), !102604)
  br label %bb.j, !dbg !102643

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ], !dbg !102599 ; 3 uses
    #dbg_value(i32 %.sroa.015.0, !102541, !DIExpression(), !102604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102605), !dbg !102645
    #dbg_value(i32 %.sroa.015.0, !6504, !DIExpression(), !102508)
    #dbg_value(ptr %1, !6506, !DIExpression(), !102508)
    #dbg_value(i1 %2, !6507, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !102508)
    #dbg_value(i64 %3, !6508, !DIExpression(), !102508)
  %i.al = uitofp i64 %3 to double, !dbg !102646   ; 2 uses
    #dbg_value(double %i.al, !6509, !DIExpression(), !102509)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102511)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102513)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !102511)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !102513)
    #dbg_value(i32 %.sroa.015.0, !6543, !DIExpression(), !102515)
  %.sroa.012.028.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false), !dbg !102647 ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.028.i, 309, !dbg !102648
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i, !dbg !102648

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.030.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.029.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i, !6504, !DIExpression(), !102508)
    #dbg_value(double %.sroa.04.029.i, !6509, !DIExpression(), !102509)
  %i.an = fcmp oeq double %.sroa.04.029.i, 0.000000e+00, !dbg !102649
  br i1 %i.an, label %.loopexit.i, label %bb.k, !dbg !102649

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ], !dbg !102650 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.028.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ], !dbg !102647
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !102651
    #dbg_value(i64 %i.ao, !6529, !DIExpression(), !102511)
    #dbg_value(i64 %i.ao, !6539, !DIExpression(), !102513)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.ao, !dbg !102652
  %i.aq = load double, ptr %i.ap, align 8, !dbg !102653, !noalias !102606, !noundef !1865 ; 2 uses
    #dbg_value(double %i.aq, !6510, !DIExpression(), !102517)
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !102654
  br i1 %i.ar, label %bb.o, label %bb.n, !dbg !102654

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.030.i, -1, !dbg !102655
  br i1 %i.as, label %bb.m, label %bb.l, !dbg !102655, !prof !4857

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.029.i, 1.000000e+308, !dbg !102656 ; 2 uses
    #dbg_value(double %i.at, !6509, !DIExpression(), !102509)
  %i.au = add nsw i32 %.sroa.0.030.i, 308, !dbg !102657 ; 3 uses
    #dbg_value(i32 %i.au, !6504, !DIExpression(), !102508)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102511)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102513)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !102511)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !102513)
    #dbg_value(i32 %i.au, !6543, !DIExpression(), !102515)
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true), !dbg !102647 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !6529, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !102511)
    #dbg_value(i32 %.sroa.012.0.i, !6539, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !102513)
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !102648
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i, !dbg !102648

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !102658, !noalias !102606
  store i64 14, ptr %i.a, align 8, !dbg !102658, !noalias !102606
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !102659, !noalias !102605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !102660, !noalias !102606
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !102661
  store ptr %i.aw, ptr %i.ax, align 8, !dbg !102661, !alias.scope !102605
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !102662

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.029.i, %.lr.ph.i ], !dbg !102650 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6509, !DIExpression(), !102509)
  %i.ay = fneg double %.sroa.04.1.i, !dbg !102663
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay, !dbg !102663
    #dbg_value(double %.sroa.04.2.i, !6509, !DIExpression(), !102509)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !102664
  store double %.sroa.04.2.i, ptr %i.az, align 8, !dbg !102664, !alias.scope !102605
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !102665

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq, !dbg !102666
    #dbg_value(double %i.ba, !6509, !DIExpression(), !102509)
  br label %.loopexit.i, !dbg !102667

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq, !dbg !102668 ; 2 uses
    #dbg_value(double %i.bb, !6509, !DIExpression(), !102509)
    #dbg_value(double %i.bb, !6551, !DIExpression(), !102519)
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb), !dbg !102669
  %i.bd = fcmp oeq double %i.bc, +inf, !dbg !102669
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !dbg !102670, !prof !4857

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !102671, !noalias !102606
  store i64 14, ptr %i.b, align 8, !dbg !102671, !noalias !102606
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !102672, !noalias !102605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !102673, !noalias !102606
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !102674
  store ptr %i.be, ptr %i.bf, align 8, !dbg !102674, !alias.scope !102605
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !102662

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ], !dbg !102675
  store i64 %storemerge.i, ptr %0, align 8, !dbg !102675, !alias.scope !102605
  br label %bb.q, !dbg !102676

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit
  ret void, !dbg !102676

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.071, 214748364, !dbg !102677
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh, !dbg !102677
  br i1 %or.cond2, label %bb.t, label %bb.s, !dbg !102677, !prof !4861

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.071, 10, !dbg !102678
  %i.bj = add i32 %i.bi, %i.ah, !dbg !102679      ; 2 uses
    #dbg_value(i32 %i.bj, !102583, !DIExpression(), !102586)
    #dbg_value(i32 %i.bj, !102578, !DIExpression(), !102581)
    #dbg_value(i32 %i.bj, !102533, !DIExpression(), !102599)
    #dbg_value(ptr %i.e, !3458, !DIExpression(), !102520)
  %exitcond.not = icmp eq i64 %i.ag, %i.j, !dbg !102635
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, !dbg !102635

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0, !dbg !102680
    #dbg_value(i1 %i.bk, !102540, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !102607)
  tail call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #19, !dbg !102681
  br label %bb.q, !dbg !102682
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 !dbg !621 {
bb.a:
    #dbg_value(ptr %1, !3426, !DIExpression(), !102692)
    #dbg_value(ptr %1, !3445, !DIExpression(), !102694)
    #dbg_value(ptr %1, !3448, !DIExpression(), !102696)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !102697, !noundef !1865 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c, !dbg !102701
  br i1 %i.d, label %.lr.ph, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !102701

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !102697, !nonnull !1865, !noundef !1865
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !102698
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b, !dbg !102701

._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !dbg !102702, !alias.scope !102698
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !102701

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !102702
  store i8 0, ptr %i.i, align 1, !dbg !102702, !alias.scope !102698
  br label %bb.d, !dbg !102703

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102698), !dbg !102704
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102697), !dbg !102704
    #dbg_value(ptr %i.e, !3458, !DIExpression(), !102687)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j, !dbg !102705
  %i.l = load i8, ptr %i.k, align 1, !dbg !102705, !noalias !102699, !noundef !1865 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ], !dbg !102703

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !3462, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !102689)
  %i.m = add i64 %i.j, 1, !dbg !102706            ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !dbg !102706, !alias.scope !102700
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !102687)
  %exitcond.not = icmp eq i64 %i.m, %i.c, !dbg !102701
  br i1 %exitcond.not, label %._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, label %bb.b, !dbg !102701

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !dbg !102702, !alias.scope !102698
  br label %bb.d, !dbg !102707

bb.d:                                             ; preds = %.loopexit, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8, !dbg !102702
  ret void, !dbg !102707
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 !dbg !102720 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !102830, !DIExpression(), !102843)
    #dbg_value(ptr %0, !102844, !DIExpression(), !102849)
    #dbg_value(ptr %0, !102850, !DIExpression(), !102853)
    #dbg_value(ptr %0, !102854, !DIExpression(), !102859)
    #dbg_value(ptr %0, !102860, !DIExpression(), !102863)
    #dbg_value(ptr %0, !102860, !DIExpression(), !102865)
    #dbg_value(ptr %0, !102860, !DIExpression(), !102867)
    #dbg_value(ptr %0, !102860, !DIExpression(), !102869)
    #dbg_value(ptr %0, !102860, !DIExpression(), !102871)
    #dbg_value(ptr %0, !102854, !DIExpression(), !102873)
    #dbg_value(ptr %1, !102831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102843)
    #dbg_value(ptr %2, !102831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !102843)
    #dbg_declare(ptr %i.m, !102836, !DIExpression(), !102874)
    #dbg_declare(ptr %i.l, !102838, !DIExpression(), !102875)
    #dbg_value(i8 1, !102856, !DIExpression(), !102859)
    #dbg_value(i8 0, !102856, !DIExpression(), !102873)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !102939 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102876), !dbg !102940
    #dbg_value(ptr %i.q, !3458, !DIExpression(), !102730)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !102941 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !102941, !alias.scope !102876, !noundef !1865 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !102942
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCshhfsHpF03Qr_6netlog:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !103010
  store i8 7, ptr %i.p, align 8, !dbg !103010
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !103011
    #dbg_value(ptr %i.cb, !102832, !DIExpression(), !102933)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !103012
  br label %bb.ae, !dbg !103012

bb.ae:                                            ; preds = %bb.al, %.thread73, %bb.ai, %bb.ag, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit47, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit39, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread73 ], [ %i.cb, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit ], [ %i.ce, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit39 ], [ %i.cg, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit47 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ], !dbg !102843
    #dbg_value(ptr %.sroa.02.0, !102832, !DIExpression(), !102933)
    #dbg_value(ptr %0, !4863, !DIExpression(), !102818)
    #dbg_value(ptr %.sroa.02.0, !4867, !DIExpression(), !102818)
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECshhfsHpF03Qr_6netlog(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0), !dbg !103013
    #dbg_value(ptr %i.cc, !102833, !DIExpression(), !102934)
    #dbg_value(ptr %i.cc, !102834, !DIExpression(), !102935)
    #dbg_value(ptr %i.cc, !102835, !DIExpression(), !102936)
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit.thread, !dbg !103014

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit39: ; preds = %bb.p
    #dbg_value(ptr poison, !4946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102766)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !103015
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !103015
  store i8 1, ptr %i.cd, align 1, !dbg !103015
  store i8 0, ptr %i.o, align 8, !dbg !103015
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !103016
    #dbg_value(ptr %i.ce, !102832, !DIExpression(), !102933)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !103017
  br label %bb.ae, !dbg !103017

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit47: ; preds = %bb.y
    #dbg_value(ptr poison, !4946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102790)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !103018
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !103018
  store i8 0, ptr %i.cf, align 1, !dbg !103018
  store i8 0, ptr %i.n, align 8, !dbg !103018
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !103019
    #dbg_value(ptr %i.cg, !102832, !DIExpression(), !102933)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !103020
  br label %bb.ae, !dbg !103020

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !103021
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !103021, !nonnull !1865, !align !4802, !noundef !1865
    #dbg_value(ptr %i.ci, !102833, !DIExpression(), !102934)
    #dbg_value(ptr %i.ci, !102834, !DIExpression(), !102935)
    #dbg_value(ptr %i.ci, !102835, !DIExpression(), !102936)
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit.thread, !dbg !103022

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !103023
    #dbg_value(ptr %i.cj, !102832, !DIExpression(), !102933)
  br label %bb.ae, !dbg !103024

bb.ah:                                            ; preds = %bb.ab
    #dbg_value(ptr %i.by, !102833, !DIExpression(), !102934)
    #dbg_value(ptr %i.by, !102834, !DIExpression(), !102935)
    #dbg_value(ptr %i.by, !102835, !DIExpression(), !102936)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !103025
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit.thread, !dbg !103022

bb.ai:                                            ; preds = %bb.ab
    #dbg_value(i64 %i.bv, !102840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102938)
    #dbg_value(ptr %i.by, !102840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !102938)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !103026
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !103026
    #dbg_value(i64 %.sroa.6.0.copyload, !102840, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !102938)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !103027
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !103027
  store ptr %i.by, ptr %i.ck, align 8, !dbg !103027
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !103027
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8, !dbg !103027
  store i8 5, ptr %i.j, align 8, !dbg !103027
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !103028
    #dbg_value(ptr %i.cm, !102832, !DIExpression(), !102933)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !103029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !103025
  br label %bb.ae, !dbg !103025

.thread73:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !103030
  store i64 10, ptr %i.g, align 8, !dbg !103030
  %i.cn = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !103031
    #dbg_value(ptr %i.cn, !102832, !DIExpression(), !102933)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !103032
  br label %bb.ae, !dbg !103032

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true), !dbg !103033
  %i.co = load i64, ptr %i.l, align 8, !dbg !103034, !range !4845, !noundef !1865
  %i.cp = icmp eq i64 %i.co, -1, !dbg !103034
  br i1 %i.cp, label %bb.ak, label %bb.al, !dbg !103035, !prof !4805

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !103036
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !103036, !nonnull !1865, !align !4802, !noundef !1865
    #dbg_value(ptr %i.cr, !102833, !DIExpression(), !102934)
    #dbg_value(ptr %i.cr, !102834, !DIExpression(), !102935)
    #dbg_value(ptr %i.cr, !102835, !DIExpression(), !102936)
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit.thread, !dbg !103022

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !103037
    #dbg_value(ptr %i.cs, !102832, !DIExpression(), !102933)
  br label %bb.ae, !dbg !103038

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit.thread: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46, %bb.z, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i38, %bb.q, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i38 ], [ %i.bo, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46 ], [ %i.bp, %bb.z ], !dbg !102843
    #dbg_value(ptr %.sroa.0.1, !102835, !DIExpression(), !102936)
    #dbg_value(ptr %.sroa.0.1, !102834, !DIExpression(), !102935)
    #dbg_value(ptr %.sroa.0.1, !102833, !DIExpression(), !102934)
  ret ptr %.sroa.0.1, !dbg !103014
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE18parse_long_integerCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #4 !dbg !103042 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !103075, !DIExpression(), !103082)
    #dbg_value(ptr %1, !103083, !DIExpression(), !103088)
    #dbg_value(ptr %1, !103089, !DIExpression(), !103092)
    #dbg_value(ptr %1, !103093, !DIExpression(), !103096)
    #dbg_value(i1 %2, !103076, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !103082)
    #dbg_value(i64 %3, !103077, !DIExpression(), !103082)
    #dbg_value(i32 0, !103078, !DIExpression(), !103097)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !103098, !noundef !1865 ; 3 uses
  %.promoted = load i64, ptr %i.c, align 8        ; 3 uses
  %i.f = icmp ult i64 %.promoted, %i.e, !dbg !103104
  br i1 %i.f, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %.thread, !dbg !103104

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !103098, !nonnull !1865, !noundef !1865
  %i.i = trunc i64 %i.e to i32, !dbg !103104
  %i.j = trunc i64 %.promoted to i32, !dbg !103104
  %i.k = sub i32 %i.i, %i.j, !dbg !103104
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !103104

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, %bb.c
  %.sroa.0.030 = phi i32 [ 0, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.q, %bb.c ] ; 4 uses
  %i.l = phi i64 [ %.promoted, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.p, %bb.c ] ; 2 uses
    #dbg_value(i32 %.sroa.0.030, !103078, !DIExpression(), !103097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103098), !dbg !103105
    #dbg_value(ptr %i.g, !3458, !DIExpression(), !103051)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l, !dbg !103106
  %i.n = load i8, ptr %i.m, align 1, !dbg !103106, !noalias !103099, !noundef !1865 ; 2 uses
  %i.o = add i8 %i.n, -48, !dbg !103107
  %or.cond = icmp ult i8 %i.o, 10, !dbg !103107
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !103107

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  switch i8 %i.n, label %.thread [
    i8 46, label %bb.j
    i8 101, label %bb.k
    i8 69, label %bb.k
  ], !dbg !103108

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %1, !3462, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !103054)
  %i.p = add i64 %i.l, 1, !dbg !103109            ; 3 uses
  store i64 %i.p, ptr %i.c, align 8, !dbg !103109, !alias.scope !103101
  %i.q = add i32 %.sroa.0.030, 1, !dbg !103110
    #dbg_value(i32 %i.q, !103078, !DIExpression(), !103097)
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !103051)
  %exitcond.not = icmp eq i64 %i.p, %i.e, !dbg !103104
  br i1 %exitcond.not, label %.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !103104

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.028 = phi i32 [ %.sroa.0.030, %bb.b ], [ 0, %bb.a ], [ %i.k, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103102), !dbg !103111
    #dbg_value(i32 %.sroa.0.028, !6504, !DIExpression(), !103060)
    #dbg_value(ptr %1, !6506, !DIExpression(), !103060)
    #dbg_value(i1 %2, !6507, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !103060)
    #dbg_value(i64 %3, !6508, !DIExpression(), !103060)
  %i.r = uitofp i64 %3 to double, !dbg !103112    ; 2 uses
    #dbg_value(double %i.r, !6509, !DIExpression(), !103061)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103063)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103065)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103063)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103065)
    #dbg_value(i32 %.sroa.0.028, !6543, !DIExpression(), !103067)
  %.sroa.012.028.i = tail call i32 @llvm.abs.i32(i32 %.sroa.0.028, i1 false), !dbg !103113 ; 2 uses
  %i.s = icmp ult i32 %.sroa.012.028.i, 309, !dbg !103114
  br i1 %i.s, label %._crit_edge.i, label %.lr.ph.i, !dbg !103114

.lr.ph.i:                                         ; preds = %.thread, %bb.e
  %.sroa.0.030.i = phi i32 [ %i.aa, %bb.e ], [ %.sroa.0.028, %.thread ] ; 2 uses
  %.sroa.04.029.i = phi double [ %i.z, %bb.e ], [ %i.r, %.thread ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i, !6504, !DIExpression(), !103060)
    #dbg_value(double %.sroa.04.029.i, !6509, !DIExpression(), !103061)
  %i.t = fcmp oeq double %.sroa.04.029.i, 0.000000e+00, !dbg !103115
  br i1 %i.t, label %.loopexit.i, label %bb.d, !dbg !103115

._crit_edge.i:                                    ; preds = %bb.e, %.thread
  %.sroa.04.0.lcssa.i = phi double [ %i.r, %.thread ], [ %i.z, %bb.e ], !dbg !103116 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.0.028, %.thread ], [ %i.aa, %bb.e ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.028.i, %.thread ], [ %.sroa.012.0.i, %bb.e ], !dbg !103113
  %i.u = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !103117
    #dbg_value(i64 %i.u, !6529, !DIExpression(), !103063)
    #dbg_value(i64 %i.u, !6539, !DIExpression(), !103065)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.u, !dbg !103118
  %i.w = load double, ptr %i.v, align 8, !dbg !103119, !noalias !103103, !noundef !1865 ; 2 uses
    #dbg_value(double %i.w, !6510, !DIExpression(), !103069)
  %i.x = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !103120
  br i1 %i.x, label %bb.h, label %bb.g, !dbg !103120

bb.d:                                             ; preds = %.lr.ph.i
  %i.y = icmp sgt i32 %.sroa.0.030.i, -1, !dbg !103121
  br i1 %i.y, label %bb.f, label %bb.e, !dbg !103121, !prof !4857

bb.e:                                             ; preds = %bb.d
  %i.z = fdiv double %.sroa.04.029.i, 1.000000e+308, !dbg !103122 ; 2 uses
    #dbg_value(double %i.z, !6509, !DIExpression(), !103061)
  %i.aa = add nsw i32 %.sroa.0.030.i, 308, !dbg !103123 ; 3 uses
    #dbg_value(i32 %i.aa, !6504, !DIExpression(), !103060)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103063)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103065)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103063)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103065)
    #dbg_value(i32 %i.aa, !6543, !DIExpression(), !103067)
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.aa, i1 true), !dbg !103113 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !6529, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !103063)
    #dbg_value(i32 %.sroa.012.0.i, !6539, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !103065)
  %i.ab = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !103114
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i, !dbg !103114

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !103124, !noalias !103103
  store i64 14, ptr %i.a, align 8, !dbg !103124, !noalias !103103
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !103125, !noalias !103102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !103126, !noalias !103103
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103127
  store ptr %i.ac, ptr %i.ad, align 8, !dbg !103127, !alias.scope !103102
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !103128

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.h, %bb.g
  %.sroa.04.1.i = phi double [ %i.ah, %bb.h ], [ %i.ag, %bb.g ], [ %.sroa.04.029.i, %.lr.ph.i ], !dbg !103116 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6509, !DIExpression(), !103061)
  %i.ae = fneg double %.sroa.04.1.i, !dbg !103129
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ae, !dbg !103129
    #dbg_value(double %.sroa.04.2.i, !6509, !DIExpression(), !103061)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103130
  store double %.sroa.04.2.i, ptr %i.af, align 8, !dbg !103130, !alias.scope !103102
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !103131

bb.g:                                             ; preds = %._crit_edge.i
  %i.ag = fdiv double %.sroa.04.0.lcssa.i, %i.w, !dbg !103132
    #dbg_value(double %i.ag, !6509, !DIExpression(), !103061)
  br label %.loopexit.i, !dbg !103133

bb.h:                                             ; preds = %._crit_edge.i
  %i.ah = fmul double %.sroa.04.0.lcssa.i, %i.w, !dbg !103134 ; 2 uses
    #dbg_value(double %i.ah, !6509, !DIExpression(), !103061)
    #dbg_value(double %i.ah, !6551, !DIExpression(), !103071)
  %i.ai = tail call double @llvm.fabs.f64(double %i.ah), !dbg !103135
  %i.aj = fcmp oeq double %i.ai, +inf, !dbg !103135
  br i1 %i.aj, label %bb.i, label %.loopexit.i, !dbg !103136, !prof !4857

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !103137, !noalias !103103
  store i64 14, ptr %i.b, align 8, !dbg !103137, !noalias !103103
  %i.ak = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !103138, !noalias !103102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !103139, !noalias !103103
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103140
  store ptr %i.ak, ptr %i.al, align 8, !dbg !103140, !alias.scope !103102
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !103128

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.f, %.loopexit.i, %bb.i
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.i ], [ 1, %bb.f ], !dbg !103141
  store i64 %storemerge.i, ptr %0, align 8, !dbg !103141, !alias.scope !103102
  br label %bb.l, !dbg !103142

bb.j:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %.sroa.0.030), !dbg !103143
  br label %bb.l, !dbg !103144

bb.k:                                             ; preds = %bb.b, %bb.b
  tail call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %.sroa.0.030), !dbg !103145
  br label %bb.l, !dbg !103146

bb.l:                                             ; preds = %bb.k, %bb.j, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit
  ret void, !dbg !103147
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE22parse_decimal_overflowCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #4 !dbg !103152 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !103190, !DIExpression(), !103199)
    #dbg_value(ptr %1, !103200, !DIExpression(), !103207)
    #dbg_value(ptr %1, !103208, !DIExpression(), !103211)
    #dbg_value(ptr %1, !103200, !DIExpression(), !103213)
    #dbg_value(ptr %1, !103208, !DIExpression(), !103216)
    #dbg_value(ptr %1, !103217, !DIExpression(), !103220)
    #dbg_value(i1 %2, !103191, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !103199)
    #dbg_value(i64 %3, !103192, !DIExpression(), !103199)
    #dbg_value(i32 %4, !103193, !DIExpression(), !103199)
    #dbg_value(i8 0, !103221, !DIExpression(), !103227)
    #dbg_value(i8 0, !103221, !DIExpression(), !103229)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !103230, !noundef !1865 ; 2 uses
  %.promoted = load i64, ptr %i.c, align 8        ; 2 uses
  %i.f = icmp ult i64 %.promoted, %i.e, !dbg !103236
  br i1 %i.f, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread, !dbg !103236

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !103230, !nonnull !1865, !noundef !1865
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !103236

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, %bb.b
  %i.i = phi i64 [ %.promoted, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103230), !dbg !103237
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i, !dbg !103238
  %i.k = load i8, ptr %i.j, align 1, !dbg !103238, !noalias !103231, !noundef !1865 ; 2 uses
    #dbg_value(i8 1, !103222, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !103227)
    #dbg_value(i8 poison, !103222, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !103227)
  %i.l = add i8 %i.k, -48, !dbg !103239
  %i.m = icmp ult i8 %i.l, 10, !dbg !103239
  br i1 %i.m, label %bb.b, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26, !dbg !103240

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %i.g, !3462, !DIExpression(), !103168)
  %i.n = add i64 %i.i, 1, !dbg !103241            ; 3 uses
  store i64 %i.n, ptr %i.c, align 8, !dbg !103241, !alias.scope !103232
    #dbg_value(ptr %i.g, !3458, !DIExpression(), !103171)
  %exitcond.not = icmp eq i64 %i.n, %i.e, !dbg !103236
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !103236

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %i.g, !3458, !DIExpression(), !103173)
    #dbg_value(i8 1, !103222, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !103229)
    #dbg_value(i8 poison, !103222, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !103229)
  switch i8 %i.k, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread [
    i8 101, label %bb.i
    i8 69, label %bb.i
  ], !dbg !103242

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread: ; preds = %bb.b, %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103234), !dbg !103243
    #dbg_value(i32 %4, !6504, !DIExpression(), !103177)
    #dbg_value(ptr %1, !6506, !DIExpression(), !103177)
    #dbg_value(i1 %2, !6507, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !103177)
    #dbg_value(i64 %3, !6508, !DIExpression(), !103177)
  %i.o = uitofp i64 %3 to double, !dbg !103244    ; 2 uses
    #dbg_value(double %i.o, !6509, !DIExpression(), !103178)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103180)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103182)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103180)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103182)
    #dbg_value(i32 %4, !6543, !DIExpression(), !103184)
  %.sroa.012.028.i = tail call i32 @llvm.abs.i32(i32 %4, i1 false), !dbg !103245 ; 2 uses
  %i.p = icmp ult i32 %.sroa.012.028.i, 309, !dbg !103246
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph.i, !dbg !103246

.lr.ph.i:                                         ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread, %bb.d
  %.sroa.0.030.i = phi i32 [ %i.x, %bb.d ], [ %4, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread ] ; 2 uses
  %.sroa.04.029.i = phi double [ %i.w, %bb.d ], [ %i.o, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i, !6504, !DIExpression(), !103177)
    #dbg_value(double %.sroa.04.029.i, !6509, !DIExpression(), !103178)
  %i.q = fcmp oeq double %.sroa.04.029.i, 0.000000e+00, !dbg !103247
  br i1 %i.q, label %.loopexit.i, label %bb.c, !dbg !103247

._crit_edge.i:                                    ; preds = %bb.d, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread
  %.sroa.04.0.lcssa.i = phi double [ %i.o, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread ], [ %i.w, %bb.d ], !dbg !103248 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %4, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread ], [ %i.x, %bb.d ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.028.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread ], [ %.sroa.012.0.i, %bb.d ], !dbg !103245
  %i.r = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !103249
    #dbg_value(i64 %i.r, !6529, !DIExpression(), !103180)
    #dbg_value(i64 %i.r, !6539, !DIExpression(), !103182)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.r, !dbg !103250
  %i.t = load double, ptr %i.s, align 8, !dbg !103251, !noalias !103235, !noundef !1865 ; 2 uses
    #dbg_value(double %i.t, !6510, !DIExpression(), !103186)
  %i.u = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !103252
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !103252

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = icmp sgt i32 %.sroa.0.030.i, -1, !dbg !103253
  br i1 %i.v, label %bb.e, label %bb.d, !dbg !103253, !prof !4857

bb.d:                                             ; preds = %bb.c
  %i.w = fdiv double %.sroa.04.029.i, 1.000000e+308, !dbg !103254 ; 2 uses
    #dbg_value(double %i.w, !6509, !DIExpression(), !103178)
  %i.x = add nsw i32 %.sroa.0.030.i, 308, !dbg !103255 ; 3 uses
    #dbg_value(i32 %i.x, !6504, !DIExpression(), !103177)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103180)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103182)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103180)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103182)
    #dbg_value(i32 %i.x, !6543, !DIExpression(), !103184)
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true), !dbg !103245 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !6529, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !103180)
    #dbg_value(i32 %.sroa.012.0.i, !6539, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !103182)
  %i.y = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !103246
  br i1 %i.y, label %._crit_edge.i, label %.lr.ph.i, !dbg !103246

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !103256, !noalias !103235
  store i64 14, ptr %i.a, align 8, !dbg !103256, !noalias !103235
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !103257, !noalias !103234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !103258, !noalias !103235
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103259
  store ptr %i.z, ptr %i.aa, align 8, !dbg !103259, !alias.scope !103234
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !103260

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.g, %bb.f
  %.sroa.04.1.i = phi double [ %i.ae, %bb.g ], [ %i.ad, %bb.f ], [ %.sroa.04.029.i, %.lr.ph.i ], !dbg !103248 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6509, !DIExpression(), !103178)
  %i.ab = fneg double %.sroa.04.1.i, !dbg !103261
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ab, !dbg !103261
    #dbg_value(double %.sroa.04.2.i, !6509, !DIExpression(), !103178)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103262
  store double %.sroa.04.2.i, ptr %i.ac, align 8, !dbg !103262, !alias.scope !103234
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !103263

bb.f:                                             ; preds = %._crit_edge.i
  %i.ad = fdiv double %.sroa.04.0.lcssa.i, %i.t, !dbg !103264
    #dbg_value(double %i.ad, !6509, !DIExpression(), !103178)
  br label %.loopexit.i, !dbg !103265

bb.g:                                             ; preds = %._crit_edge.i
  %i.ae = fmul double %.sroa.04.0.lcssa.i, %i.t, !dbg !103266 ; 2 uses
    #dbg_value(double %i.ae, !6509, !DIExpression(), !103178)
    #dbg_value(double %i.ae, !6551, !DIExpression(), !103188)
  %i.af = tail call double @llvm.fabs.f64(double %i.ae), !dbg !103267
  %i.ag = fcmp oeq double %i.af, +inf, !dbg !103267
  br i1 %i.ag, label %bb.h, label %.loopexit.i, !dbg !103268, !prof !4857

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !103269, !noalias !103235
  store i64 14, ptr %i.b, align 8, !dbg !103269, !noalias !103235
  %i.ah = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !103270, !noalias !103234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !103271, !noalias !103235
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103272
  store ptr %i.ah, ptr %i.ai, align 8, !dbg !103272, !alias.scope !103234
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !103260

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.e, %.loopexit.i, %bb.h
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.h ], [ 1, %bb.e ], !dbg !103273
  store i64 %storemerge.i, ptr %0, align 8, !dbg !103273, !alias.scope !103234
  br label %bb.j, !dbg !103243

bb.i:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26
  tail call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4), !dbg !103274
  br label %bb.j, !dbg !103274

bb.j:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, %bb.i
  ret void, !dbg !103275
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #4 !dbg !103278 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !103298, !DIExpression(), !103305)
    #dbg_value(ptr %1, !103306, !DIExpression(), !103311)
    #dbg_value(ptr %1, !103312, !DIExpression(), !103315)
    #dbg_value(ptr %1, !103316, !DIExpression(), !103319)
    #dbg_value(i1 %2, !103299, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !103305)
    #dbg_value(i1 %3, !103300, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !103305)
    #dbg_value(i1 %4, !103301, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !103305)
    #dbg_value(i8 0, !103320, !DIExpression(), !103325)
  %.not = xor i1 %4, true, !dbg !103331
  %brmerge = or i1 %3, %.not, !dbg !103331
  br i1 %brmerge, label %.preheader, label %bb.b, !dbg !103331, !prof !103326

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !103327, !noundef !1865 ; 2 uses
  %.promoted = load i64, ptr %i.b, align 8        ; 2 uses
  %i.e = icmp ult i64 %.promoted, %i.d, !dbg !103332
  br i1 %i.e, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !103332

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !103333
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !103327, !nonnull !1865, !noundef !1865
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !103332

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !103334
  store i64 14, ptr %i.a, align 8, !dbg !103334
  %i.h = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !103335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !103336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103337
  store ptr %i.h, ptr %i.i, align 8, !dbg !103337
  br label %bb.c, !dbg !103338

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], !dbg !103305
  store i64 %storemerge, ptr %0, align 8, !dbg !103305
  ret void, !dbg !103339

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, %bb.d
  %i.j = phi i64 [ %.promoted, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103327), !dbg !103340
    #dbg_value(ptr %i.f, !3458, !DIExpression(), !103289)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j, !dbg !103341
  %i.l = load i8, ptr %i.k, align 1, !dbg !103341, !noalias !103329, !noundef !1865
    #dbg_value(i8 1, !103321, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !103325)
    #dbg_value(i8 poison, !103321, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !103325)
  %i.m = add i8 %i.l, -48, !dbg !103342
  %i.n = icmp ult i8 %i.m, 10, !dbg !103342
  br i1 %i.n, label %bb.d, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !103343

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, %bb.d, %.preheader
  %. = select i1 %2, double 0.000000e+00, double -0.000000e+00, !dbg !103344
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103345
  store double %., ptr %i.o, align 8, !dbg !103345
  br label %bb.c, !dbg !103339

bb.d:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %1, !3462, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !103292)
  %i.p = add i64 %i.j, 1, !dbg !103346            ; 3 uses
  store i64 %i.p, ptr %i.b, align 8, !dbg !103346, !alias.scope !103330
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !103289)
  %exitcond.not = icmp eq i64 %i.p, %i.d, !dbg !103332
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !103332
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !103348 {
bb.a:
    #dbg_value(ptr %0, !103350, !DIExpression(), !103354)
    #dbg_declare(ptr %1, !103351, !DIExpression(), !103355)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !103357
  %i.b = invoke { i64, i64 } @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d, !dbg !103358 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0, !dbg !103357
  %i.d = extractvalue { i64, i64 } %i.b, 1, !dbg !103357
    #dbg_value(i64 %i.c, !103352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103356)
    #dbg_value(i64 %i.d, !103352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103356)
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d), !dbg !103359
  ret ptr %i.e, !dbg !103360

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f, !dbg !103361

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error9ErrorCodeECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #14
          to label %bb.c unwind label %bb.e, !dbg !103362

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !103361
  unreachable, !dbg !103361
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 !dbg !103365 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !103390, !DIExpression(), !103394)
    #dbg_value(ptr %0, !103395, !DIExpression(), !103398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103399), !dbg !103405
    #dbg_value(ptr %0, !3426, !DIExpression(), !103370)
    #dbg_value(ptr %0, !3445, !DIExpression(), !103372)
    #dbg_value(ptr %0, !3448, !DIExpression(), !103374)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !103400, !noundef !1865 ; 2 uses
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !103399 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i, %i.f, !dbg !103406
end_hunk_2
