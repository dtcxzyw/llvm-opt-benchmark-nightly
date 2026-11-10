Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/netlog-0413cb358f6d608a.netlog.c940049af7b502f1-cgu.0?download=true
inline.NumInlined: 3033
inline.NumDeleted: 1427
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog:bb.a
    #dbg_value(ptr %i.c, !101399, !DIExpression(), !101447)
    #dbg_value(ptr poison, !101449, !DIExpression(), !101456)
    #dbg_value(ptr poison, !101453, !DIExpression(), !101457)
  %i.i = icmp samesign eq i64 %2, 0, !dbg !101464
  br i1 %i.i, label %.loopexit, label %.lr.ph, !dbg !101455

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.024, i64 1, !dbg !101465 ; 2 uses
    #dbg_value(ptr %i.j, !4946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !101445)
    #dbg_value(ptr %i.j, !4946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !101445)
    #dbg_value(ptr undef, !101387, !DIExpression(), !101404)
    #dbg_value(ptr %i.j, !101398, !DIExpression(), !101446)
    #dbg_value(ptr %i.j, !101432, !DIExpression(), !101435)
    #dbg_value(ptr %i.c, !101399, !DIExpression(), !101447)
    #dbg_value(ptr poison, !101449, !DIExpression(), !101456)
    #dbg_value(ptr poison, !101453, !DIExpression(), !101457)
  %i.k = icmp eq ptr %i.j, %i.c, !dbg !101464
  br i1 %i.k, label %.loopexit, label %.lr.ph, !dbg !101455

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.024 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
    #dbg_value(ptr %.sroa.01.024, !4946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !101445)
    #dbg_value(ptr %.sroa.01.024, !4946, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !101445)
    #dbg_value(ptr %.sroa.01.024, !4948, !DIExpression(), !101458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101459), !dbg !101466
    #dbg_value(ptr %0, !4965, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101382)
  %exitcond.not = icmp eq i64 %i.l, %umax, !dbg !101467
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, label %bb.c, !dbg !101467

bb.c:                                             ; preds = %.lr.ph
    #dbg_value(ptr %i.g, !4965, !DIExpression(), !101382)
    #dbg_value(ptr %.sroa.01.024, !4946, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !101445)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l, !dbg !101468
  %i.n = load i8, ptr %i.m, align 1, !dbg !101468, !noalias !101460, !noundef !1865
    #dbg_value(i8 %i.n, !4966, !DIExpression(), !101384)
  %i.o = add i64 %i.l, 1, !dbg !101469            ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !dbg !101469, !alias.scope !101459
    #dbg_value(i8 %i.n, !4951, !DIExpression(), !101461)
  %i.p = load i8, ptr %.sroa.01.024, align 1, !dbg !101470, !noundef !1865
  %.not = icmp eq i8 %i.n, %i.p, !dbg !101471
  br i1 %.not, label %bb.b, label %bb.d, !dbg !101471, !prof !4805

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !101472
  store i64 5, ptr %i.b, align 8, !dbg !101472
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !101473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !101474
  br label %.loopexit, !dbg !101475

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !101476
  store i64 9, ptr %i.a, align 8, !dbg !101476
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !101477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !101478
  br label %.loopexit, !dbg !101479

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ], !dbg !101480
  ret ptr %.sroa.0.1, !dbg !101481
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 !dbg !101494 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(i64 %3, !101537, !DIExpression(), !101552)
    #dbg_value(ptr %1, !101535, !DIExpression(), !101552)
    #dbg_value(ptr %1, !101553, !DIExpression(), !101556)
    #dbg_value(ptr %1, !101557, !DIExpression(), !101564)
    #dbg_value(ptr %1, !101565, !DIExpression(), !101568)
    #dbg_value(ptr %1, !101553, !DIExpression(), !101570)
    #dbg_value(ptr %1, !101565, !DIExpression(), !101572)
    #dbg_value(ptr %1, !101557, !DIExpression(), !101574)
    #dbg_value(ptr %1, !101565, !DIExpression(), !101577)
    #dbg_value(i1 %2, !101536, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !101552)
    #dbg_value(i32 %4, !101538, !DIExpression(), !101552)
    #dbg_value(i64 -1, !101544, !DIExpression(), !101578)
    #dbg_value(ptr %1, !3462, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101503)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !101592 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !101592, !alias.scope !101579, !noundef !1865 ; 2 uses
  %i.g = add i64 %i.f, 1, !dbg !101592            ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !dbg !101592, !alias.scope !101579
    #dbg_value(i32 0, !101539, !DIExpression(), !101580)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !101581, !noundef !1865 ; 3 uses
  %i.j = icmp ult i64 %i.g, %i.i, !dbg !101593
  br i1 %i.j, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %.thread.thread, !dbg !101593

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !101594
    #dbg_value(ptr %i.k, !3462, !DIExpression(), !101503)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !101581, !nonnull !1865, !noundef !1865
  %i.m = trunc i64 %i.f to i32, !dbg !101593
  %i.n = add i32 %i.m, 1, !dbg !101593            ; 2 uses
  %i.o = trunc i64 %i.i to i32, !dbg !101593      ; 2 uses
  %i.p = sub i32 %i.n, %i.o, !dbg !101593
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !101593

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, %bb.o
  %.sroa.0.077 = phi i64 [ %3, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.be, %bb.o ] ; 6 uses
  %.sroa.07.076 = phi i32 [ 0, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bf, %bb.o ] ; 4 uses
  %i.q = phi i64 [ %i.g, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bc, %bb.o ] ; 2 uses
    #dbg_value(i64 %.sroa.0.077, !101537, !DIExpression(), !101552)
    #dbg_value(i32 %.sroa.07.076, !101539, !DIExpression(), !101580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101581), !dbg !101595
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q, !dbg !101596
  %i.s = load i8, ptr %i.r, align 1, !dbg !101596, !noalias !101582, !noundef !1865 ; 2 uses
    #dbg_value(i8 poison, !101542, !DIExpression(), !101583)
  %i.t = add i8 %i.s, -48, !dbg !101597           ; 3 uses
  %or.cond = icmp ult i8 %i.t, 10, !dbg !101597
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !101597

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.u = icmp eq i32 %.sroa.07.076, 0, !dbg !101598
  br i1 %i.u, label %bb.d, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, !dbg !101598

.thread:                                          ; preds = %bb.o
    #dbg_value(i8 poison, !101542, !DIExpression(), !101583)
  %i.v = icmp eq i32 %i.n, %i.o, !dbg !101598
  br i1 %i.v, label %.thread.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, !dbg !101598

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread: ; preds = %.thread
  %i.w = add i32 %i.p, %4, !dbg !101599
    #dbg_value(i32 %i.w, !101548, !DIExpression(), !101584)
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101511)
  br label %bb.e, !dbg !101600

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.x = zext nneg i8 %i.t to i64, !dbg !101601
    #dbg_value(i64 %i.x, !101543, !DIExpression(), !101586)
  %i.y = icmp ugt i64 %.sroa.0.077, 1844674407370955160, !dbg !101602
  br i1 %i.y, label %bb.n, label %bb.o, !dbg !101602

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !101603
  store i64 13, ptr %i.d, align 8, !dbg !101603
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !101604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !101605
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !101606
  store ptr %i.z, ptr %i.aa, align 8, !dbg !101606
  store i64 1, ptr %0, align 8, !dbg !101606
  br label %bb.m, !dbg !101607

.thread.thread:                                   ; preds = %bb.a, %.thread
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !101608
  store i64 5, ptr %i.c, align 8, !dbg !101608
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !101609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !101610
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !101611
  store ptr %i.ab, ptr %i.ac, align 8, !dbg !101611
  store i64 1, ptr %0, align 8, !dbg !101611
  br label %bb.m, !dbg !101612

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45: ; preds = %bb.b
  %i.ad = add i32 %.sroa.07.076, %4, !dbg !101599 ; 2 uses
    #dbg_value(i32 %i.ad, !101548, !DIExpression(), !101584)
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101511)
  switch i8 %i.s, label %bb.e [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ], !dbg !101600

bb.e:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45
  %.sroa.0.073 = phi i64 [ %i.be, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread ], [ %.sroa.0.077, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45 ]
  %i.ae = phi i32 [ %i.w, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread ], [ %i.ad, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101587), !dbg !101613
    #dbg_value(i32 %i.ae, !6504, !DIExpression(), !101517)
    #dbg_value(ptr %1, !6506, !DIExpression(), !101517)
    #dbg_value(i1 %2, !6507, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !101517)
    #dbg_value(i64 %.sroa.0.073, !6508, !DIExpression(), !101517)
  %i.af = uitofp i64 %.sroa.0.073 to double, !dbg !101614 ; 2 uses
    #dbg_value(double %i.af, !6509, !DIExpression(), !101518)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !101520)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !101522)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !101520)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !101522)
    #dbg_value(i32 %i.ae, !6543, !DIExpression(), !101524)
  %.sroa.012.028.i = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 false), !dbg !101615 ; 2 uses
  %i.ag = icmp ult i32 %.sroa.012.028.i, 309, !dbg !101616
  br i1 %i.ag, label %._crit_edge.i, label %.lr.ph.i, !dbg !101616

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.sroa.0.030.i = phi i32 [ %i.ao, %bb.g ], [ %i.ae, %bb.e ] ; 2 uses
  %.sroa.04.029.i = phi double [ %i.an, %bb.g ], [ %i.af, %bb.e ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i, !6504, !DIExpression(), !101517)
    #dbg_value(double %.sroa.04.029.i, !6509, !DIExpression(), !101518)
  %i.ah = fcmp oeq double %.sroa.04.029.i, 0.000000e+00, !dbg !101617
  br i1 %i.ah, label %.loopexit.i, label %bb.f, !dbg !101617

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  %.sroa.04.0.lcssa.i = phi double [ %i.af, %bb.e ], [ %i.an, %bb.g ], !dbg !101618 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %i.ae, %bb.e ], [ %i.ao, %bb.g ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.028.i, %bb.e ], [ %.sroa.012.0.i, %bb.g ], !dbg !101615
  %i.ai = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !101619
    #dbg_value(i64 %i.ai, !6529, !DIExpression(), !101520)
    #dbg_value(i64 %i.ai, !6539, !DIExpression(), !101522)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.ai, !dbg !101620
  %i.ak = load double, ptr %i.aj, align 8, !dbg !101621, !noalias !101588, !noundef !1865 ; 2 uses
    #dbg_value(double %i.ak, !6510, !DIExpression(), !101526)
  %i.al = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !101622
  br i1 %i.al, label %bb.j, label %bb.i, !dbg !101622

bb.f:                                             ; preds = %.lr.ph.i
  %i.am = icmp sgt i32 %.sroa.0.030.i, -1, !dbg !101623
  br i1 %i.am, label %bb.h, label %bb.g, !dbg !101623, !prof !4857

bb.g:                                             ; preds = %bb.f
  %i.an = fdiv double %.sroa.04.029.i, 1.000000e+308, !dbg !101624 ; 2 uses
    #dbg_value(double %i.an, !6509, !DIExpression(), !101518)
  %i.ao = add nsw i32 %.sroa.0.030.i, 308, !dbg !101625 ; 3 uses
    #dbg_value(i32 %i.ao, !6504, !DIExpression(), !101517)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !101520)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !101522)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !101520)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !101522)
    #dbg_value(i32 %i.ao, !6543, !DIExpression(), !101524)
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.ao, i1 true), !dbg !101615 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !6529, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !101520)
    #dbg_value(i32 %.sroa.012.0.i, !6539, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !101522)
  %i.ap = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !101616
  br i1 %i.ap, label %._crit_edge.i, label %.lr.ph.i, !dbg !101616

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !101626, !noalias !101588
  store i64 14, ptr %i.a, align 8, !dbg !101626, !noalias !101588
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !101627, !noalias !101587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !101628, !noalias !101588
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !101629
  store ptr %i.aq, ptr %i.ar, align 8, !dbg !101629, !alias.scope !101587
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !101630

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.j, %bb.i
  %.sroa.04.1.i = phi double [ %i.av, %bb.j ], [ %i.au, %bb.i ], [ %.sroa.04.029.i, %.lr.ph.i ], !dbg !101618 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6509, !DIExpression(), !101518)
  %i.as = fneg double %.sroa.04.1.i, !dbg !101631
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.as, !dbg !101631
    #dbg_value(double %.sroa.04.2.i, !6509, !DIExpression(), !101518)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !101632
  store double %.sroa.04.2.i, ptr %i.at, align 8, !dbg !101632, !alias.scope !101587
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !101633

bb.i:                                             ; preds = %._crit_edge.i
  %i.au = fdiv double %.sroa.04.0.lcssa.i, %i.ak, !dbg !101634
    #dbg_value(double %i.au, !6509, !DIExpression(), !101518)
  br label %.loopexit.i, !dbg !101635

bb.j:                                             ; preds = %._crit_edge.i
  %i.av = fmul double %.sroa.04.0.lcssa.i, %i.ak, !dbg !101636 ; 2 uses
    #dbg_value(double %i.av, !6509, !DIExpression(), !101518)
    #dbg_value(double %i.av, !6551, !DIExpression(), !101528)
  %i.aw = tail call double @llvm.fabs.f64(double %i.av), !dbg !101637
  %i.ax = fcmp oeq double %i.aw, +inf, !dbg !101637
  br i1 %i.ax, label %bb.k, label %.loopexit.i, !dbg !101638, !prof !4857

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !101639, !noalias !101588
  store i64 14, ptr %i.b, align 8, !dbg !101639, !noalias !101588
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !101640, !noalias !101587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !101641, !noalias !101588
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !101642
  store ptr %i.ay, ptr %i.az, align 8, !dbg !101642, !alias.scope !101587
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !101630

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.h, %.loopexit.i, %bb.k
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.k ], [ 1, %bb.h ], !dbg !101643
  store i64 %storemerge.i, ptr %0, align 8, !dbg !101643, !alias.scope !101587
  br label %bb.m, !dbg !101644

bb.l:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45
  tail call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.077, i32 noundef %i.ad), !dbg !101645
  br label %bb.m, !dbg !101646

bb.m:                                             ; preds = %bb.d, %.thread.thread, %bb.p, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, %bb.l
  ret void, !dbg !101647

bb.n:                                             ; preds = %bb.c
  %i.ba = icmp ne i64 %.sroa.0.077, 1844674407370955161, !dbg !101648
  %i.bb = icmp samesign ugt i8 %i.t, 5
  %or.cond1 = or i1 %i.ba, %i.bb, !dbg !101648
  br i1 %or.cond1, label %bb.p, label %bb.o, !dbg !101648, !prof !4861

bb.o:                                             ; preds = %bb.n, %bb.c
    #dbg_value(ptr %1, !3462, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101530)
  %i.bc = add i64 %i.q, 1, !dbg !101649           ; 3 uses
  store i64 %i.bc, ptr %i.e, align 8, !dbg !101649, !alias.scope !101589
  %i.bd = mul nuw i64 %.sroa.0.077, 10, !dbg !101650
  %i.be = add i64 %i.bd, %i.x, !dbg !101651       ; 2 uses
    #dbg_value(i64 %i.be, !101537, !DIExpression(), !101552)
  %i.bf = add i32 %.sroa.07.076, -1, !dbg !101652
    #dbg_value(i32 %i.bf, !101539, !DIExpression(), !101580)
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101533)
  %exitcond.not = icmp eq i64 %i.bc, %i.i, !dbg !101593
  br i1 %exitcond.not, label %.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !101593

bb.p:                                             ; preds = %bb.n
  %i.bg = add i32 %.sroa.07.076, %4, !dbg !101653
    #dbg_value(i32 %i.bg, !101545, !DIExpression(), !101590)
  tail call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE22parse_decimal_overflowCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.077, i32 noundef %i.bg) #19, !dbg !101654
  br label %bb.m, !dbg !101655
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #0 !dbg !101671 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !101754, !DIExpression(), !101772)
    #dbg_value(ptr %1, !101773, !DIExpression(), !101776)
    #dbg_value(ptr %1, !101777, !DIExpression(), !101784)
    #dbg_value(ptr %1, !101785, !DIExpression(), !101788)
    #dbg_value(ptr %1, !101777, !DIExpression(), !101790)
    #dbg_value(ptr %1, !101785, !DIExpression(), !101793)
    #dbg_value(ptr %1, !101794, !DIExpression(), !101797)
    #dbg_value(i1 %2, !101755, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !101772)
    #dbg_value(i64 -1, !101768, !DIExpression(), !101798)
    #dbg_value(i8 0, !101799, !DIExpression(), !101805)
    #dbg_value(i8 0, !101799, !DIExpression(), !101807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101808), !dbg !101858
    #dbg_value(ptr %1, !4965, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101686)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !101859 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !101859, !alias.scope !101808, !noundef !1865 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !101860
  %i.l = load i64, ptr %i.k, align 8, !dbg !101860, !alias.scope !101808, !noundef !1865 ; 5 uses
  %i.m = icmp ult i64 %i.j, %i.l, !dbg !101859
  br i1 %i.m, label %bb.b, label %bb.c, !dbg !101859

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !101861
    #dbg_value(ptr %i.n, !4965, !DIExpression(), !101686)
  %i.o = load ptr, ptr %i.n, align 8, !dbg !101862, !alias.scope !101808, !nonnull !1865, !noundef !1865 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j, !dbg !101862
  %i.q = load i8, ptr %i.p, align 1, !dbg !101862, !noalias !101809, !noundef !1865 ; 3 uses
    #dbg_value(i8 %i.q, !4966, !DIExpression(), !101688)
  %i.r = add nuw i64 %i.j, 1, !dbg !101863        ; 7 uses
  store i64 %i.r, ptr %i.i, align 8, !dbg !101863, !alias.scope !101808
    #dbg_value(i8 %i.q, !101756, !DIExpression(), !101810)
    #dbg_value(i8 %i.q, !101762, !DIExpression(), !101811)
  %i.s = icmp eq i8 %i.q, 48, !dbg !101864
  br i1 %i.s, label %bb.d, label %bb.e, !dbg !101864

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !101865
  store i64 5, ptr %i.h, align 8, !dbg !101865
  %i.t = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !dbg !101866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !101867
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !101868
  store ptr %i.t, ptr %i.u, align 8, !dbg !101868
  store i64 -1, ptr %0, align 8, !dbg !101869
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12parse_numberCshhfsHpF03Qr_6netlog.exit, !dbg !101870

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101690)
  %i.v = icmp ult i64 %i.r, %i.l, !dbg !101871
  br i1 %i.v, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !101871

bb.e:                                             ; preds = %bb.b
  %i.w = add i8 %i.q, -49, !dbg !101872
  %or.cond1 = icmp ult i8 %i.w, 9, !dbg !101872
  br i1 %or.cond1, label %bb.o, label %bb.n, !dbg !101872, !prof !4846

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r, !dbg !101873
  %i.y = load i8, ptr %i.x, align 1, !dbg !101873, !noalias !101813, !noundef !1865
    #dbg_value(i8 1, !101800, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !101805)
    #dbg_value(i8 poison, !101800, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !101805)
  %i.z = add i8 %i.y, -48, !dbg !101874
  %i.aa = icmp ult i8 %i.z, 10, !dbg !101874
  br i1 %i.aa, label %bb.m, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i, !dbg !101875, !prof !4969

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101814), !dbg !101876
    #dbg_value(ptr %1, !101815, !DIExpression(), !101705)
    #dbg_value(ptr %1, !101829, !DIExpression(), !101710)
    #dbg_value(ptr %1, !101833, !DIExpression(), !101713)
    #dbg_value(i1 %2, !101819, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !101705)
    #dbg_value(i64 0, !101820, !DIExpression(), !101705)
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101715)
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i, !dbg !101877

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %1, !101815, !DIExpression(), !101705)
    #dbg_value(ptr %1, !101829, !DIExpression(), !101710)
    #dbg_value(ptr %1, !101833, !DIExpression(), !101713)
    #dbg_value(i1 %2, !101819, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !101705)
    #dbg_value(i64 0, !101820, !DIExpression(), !101705)
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !101715)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r, !dbg !101878
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !101878, !noalias !101835, !noundef !1865
  switch i8 %i.ac, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i [
    i8 46, label %bb.f
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCshhfsHpF03Qr_6netlog:bb.a

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i: ; preds = %.preheader.i, %bb.l
  %i.cc = phi i64 [ %i.ch, %bb.l ], [ %i.bx, %.preheader.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cc, !dbg !102426
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !102426, !noalias !102346, !noundef !1865
    #dbg_value(i8 1, !102324, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !102164)
    #dbg_value(i8 poison, !102324, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !102164)
  %i.cf = add i8 %i.ce, -48, !dbg !102427
  %i.cg = icmp ult i8 %i.cf, 10, !dbg !102427
  br i1 %i.cg, label %bb.l, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCshhfsHpF03Qr_6netlog.exit, !dbg !102428

bb.l:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i
    #dbg_value(ptr %0, !3462, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !102189)
  %i.ch = add nuw i64 %i.cc, 1, !dbg !102429      ; 3 uses
  store i64 %i.ch, ptr %i.f, align 8, !dbg !102429, !alias.scope !102347
    #dbg_value(ptr %0, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !102192)
  %exitcond.not.i = icmp eq i64 %i.ch, %i.i, !dbg !102421
  br i1 %exitcond.not.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCshhfsHpF03Qr_6netlog.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i, !dbg !102421

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCshhfsHpF03Qr_6netlog.exit.loopexit89: ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !dbg !102376, !alias.scope !102266
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCshhfsHpF03Qr_6netlog.exit, !dbg !102430

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.e, %bb.l, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i, %bb.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i.i, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCshhfsHpF03Qr_6netlog.exit.loopexit89, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i, %.preheader.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i, %.preheader.i.i, %.loopexit.i, %.thread.thread.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit56, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread, %bb.d
  %.sroa.0.3 = phi ptr [ %i.x, %bb.d ], [ null, %.preheader.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit56 ], [ %i.aa, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread ], [ null, %bb.i ], [ null, %.loopexit.i ], [ null, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCshhfsHpF03Qr_6netlog.exit.loopexit89 ], [ %i.at, %.thread.thread.i ], [ %i.bh, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i ], [ null, %.preheader.i.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], [ %i.cb, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i ], [ null, %bb.l ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i ], [ null, %bb.e ], !dbg !102431
  ret ptr %.sroa.0.3, !dbg !102430
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 !dbg !102448 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !102501, !DIExpression(), !102522)
    #dbg_value(ptr %1, !102523, !DIExpression(), !102526)
    #dbg_value(ptr %1, !102527, !DIExpression(), !102534)
    #dbg_value(ptr %1, !102535, !DIExpression(), !102538)
    #dbg_value(ptr %1, !102523, !DIExpression(), !102540)
    #dbg_value(ptr %1, !102523, !DIExpression(), !102542)
    #dbg_value(ptr %1, !102543, !DIExpression(), !102546)
    #dbg_value(ptr %1, !102527, !DIExpression(), !102548)
    #dbg_value(ptr %1, !102535, !DIExpression(), !102551)
    #dbg_value(ptr %1, !102523, !DIExpression(), !102553)
    #dbg_value(i1 %2, !102502, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !102522)
    #dbg_value(i64 %3, !102503, !DIExpression(), !102522)
    #dbg_value(i32 %4, !102504, !DIExpression(), !102522)
    #dbg_value(i32 %4, !102554, !DIExpression(), !102560)
    #dbg_value(i32 %4, !102561, !DIExpression(), !102565)
    #dbg_value(i32 2147483647, !102518, !DIExpression(), !102566)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !102588 ; 2 uses
    #dbg_value(ptr %i.e, !3462, !DIExpression(), !102460)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !102589 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !102589, !alias.scope !102567, !noundef !1865 ; 2 uses
  %i.h = add i64 %i.g, 1, !dbg !102589            ; 5 uses
  store i64 %i.h, ptr %i.f, align 8, !dbg !102589, !alias.scope !102567
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102568), !dbg !102590
    #dbg_value(ptr %i.e, !3458, !DIExpression(), !102466)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !102591
  %i.j = load i64, ptr %i.i, align 8, !dbg !102591, !alias.scope !102568, !noundef !1865 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j, !dbg !102592
  br i1 %i.k, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !102592

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !dbg !102593, !alias.scope !102568, !nonnull !1865, !noundef !1865
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h, !dbg !102593
  %i.n = load i8, ptr %i.m, align 1, !dbg !102593, !noalias !102569, !noundef !1865
  switch i8 %i.n, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread [
    i8 43, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split
    i8 45, label %bb.b
  ], !dbg !102594

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %i.e, !3462, !DIExpression(), !102469)
    #dbg_value(i8 0, !102505, !DIExpression(), !102571)
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split, !dbg !102595

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, %bb.b
  %.sroa.0.0.ph = phi i1 [ false, %bb.b ], [ true, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ]
  %i.o = add i64 %i.g, 2, !dbg !102596            ; 2 uses
  store i64 %i.o, ptr %i.f, align 8, !dbg !102596
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !102597

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split, %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.p = phi i64 [ %i.h, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ], [ %i.h, %bb.a ], [ %i.o, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split ], !dbg !102598 ; 3 uses
  %.sroa.0.0 = phi i1 [ true, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ], [ true, %bb.a ], [ %.sroa.0.0.ph, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split ], !dbg !102522 ; 2 uses
    #dbg_value(i8 poison, !102505, !DIExpression(), !102571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102573), !dbg !102597
    #dbg_value(ptr %i.e, !4965, !DIExpression(), !102473)
  %i.q = icmp ult i64 %i.p, %i.j, !dbg !102598
  br i1 %i.q, label %bb.c, label %bb.d, !dbg !102598

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
  %i.r = load ptr, ptr %i.e, align 8, !dbg !102599, !alias.scope !102573, !nonnull !1865, !noundef !1865 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p, !dbg !102599
  %i.t = load i8, ptr %i.s, align 1, !dbg !102599, !noalias !102574, !noundef !1865
    #dbg_value(i8 %i.t, !4966, !DIExpression(), !102475)
  %i.u = add nuw i64 %i.p, 1, !dbg !102600        ; 3 uses
  store i64 %i.u, ptr %i.f, align 8, !dbg !102600, !alias.scope !102573
    #dbg_value(i8 %i.t, !102508, !DIExpression(), !102575)
    #dbg_value(i8 %i.t, !102513, !DIExpression(), !102576)
  %i.v = add i8 %i.t, -48, !dbg !102601           ; 2 uses
  %or.cond = icmp ult i8 %i.v, 10, !dbg !102601
  br i1 %or.cond, label %bb.f, label %bb.e, !dbg !102601, !prof !4846

bb.d:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !102602
  store i64 5, ptr %i.d, align 8, !dbg !102602
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !102603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !102604
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !102605
  store ptr %i.w, ptr %i.x, align 8, !dbg !102605
  store i64 1, ptr %0, align 8, !dbg !102606
  br label %bb.q, !dbg !102607

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !102608
  store i64 13, ptr %i.c, align 8, !dbg !102608
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !102609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !102610
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !102611
  store ptr %i.y, ptr %i.z, align 8, !dbg !102611
  store i64 1, ptr %0, align 8, !dbg !102611
  br label %bb.q, !dbg !102612

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32, !dbg !102613  ; 2 uses
    #dbg_value(i32 %i.aa, !102562, !DIExpression(), !102565)
    #dbg_value(i32 %i.aa, !102557, !DIExpression(), !102560)
    #dbg_value(i32 %i.aa, !102512, !DIExpression(), !102578)
  %i.ab = icmp ult i64 %i.u, %i.j, !dbg !102614
  br i1 %i.ab, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, !dbg !102614

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45: ; preds = %bb.f, %bb.s
  %.sroa.08.071 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
    #dbg_value(i32 %.sroa.08.071, !102562, !DIExpression(), !102565)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac, !dbg !102615
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !102615, !noalias !102579, !noundef !1865
    #dbg_value(i8 poison, !102516, !DIExpression(), !102580)
  %i.af = add i8 %i.ae, -48, !dbg !102616         ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10, !dbg !102616
  br i1 %or.cond1, label %bb.g, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, !dbg !102616

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.071, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45 ], !dbg !102575 ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h, !dbg !102617

bb.g:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45
    #dbg_value(ptr %i.e, !3462, !DIExpression(), !102481)
  %i.ag = add i64 %i.ac, 1, !dbg !102618          ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !dbg !102618, !alias.scope !102581
  %i.ah = zext nneg i8 %i.af to i32, !dbg !102619
    #dbg_value(i32 %i.ah, !102517, !DIExpression(), !102582)
  %i.ai = icmp sgt i32 %.sroa.08.071, 214748363, !dbg !102620
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !102620

bb.h:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa), !dbg !102621
    #dbg_value(i32 %i.aj, !102520, !DIExpression(), !102583)
  br label %bb.j, !dbg !102622

bb.i:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa), !dbg !102623
    #dbg_value(i32 %i.ak, !102520, !DIExpression(), !102583)
  br label %bb.j, !dbg !102622

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ], !dbg !102578 ; 3 uses
    #dbg_value(i32 %.sroa.015.0, !102520, !DIExpression(), !102583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102584), !dbg !102624
    #dbg_value(i32 %.sroa.015.0, !6504, !DIExpression(), !102487)
    #dbg_value(ptr %1, !6506, !DIExpression(), !102487)
    #dbg_value(i1 %2, !6507, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !102487)
    #dbg_value(i64 %3, !6508, !DIExpression(), !102487)
  %i.al = uitofp i64 %3 to double, !dbg !102625   ; 2 uses
    #dbg_value(double %i.al, !6509, !DIExpression(), !102488)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102490)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102492)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !102490)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !102492)
    #dbg_value(i32 %.sroa.015.0, !6543, !DIExpression(), !102494)
  %.sroa.012.028.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false), !dbg !102626 ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.028.i, 309, !dbg !102627
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i, !dbg !102627

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.030.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.029.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i, !6504, !DIExpression(), !102487)
    #dbg_value(double %.sroa.04.029.i, !6509, !DIExpression(), !102488)
  %i.an = fcmp oeq double %.sroa.04.029.i, 0.000000e+00, !dbg !102628
  br i1 %i.an, label %.loopexit.i, label %bb.k, !dbg !102628

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ], !dbg !102629 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.028.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ], !dbg !102626
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !102630
    #dbg_value(i64 %i.ao, !6529, !DIExpression(), !102490)
    #dbg_value(i64 %i.ao, !6539, !DIExpression(), !102492)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.ao, !dbg !102631
  %i.aq = load double, ptr %i.ap, align 8, !dbg !102632, !noalias !102585, !noundef !1865 ; 2 uses
    #dbg_value(double %i.aq, !6510, !DIExpression(), !102496)
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !102633
  br i1 %i.ar, label %bb.o, label %bb.n, !dbg !102633

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.030.i, -1, !dbg !102634
  br i1 %i.as, label %bb.m, label %bb.l, !dbg !102634, !prof !4857

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.029.i, 1.000000e+308, !dbg !102635 ; 2 uses
    #dbg_value(double %i.at, !6509, !DIExpression(), !102488)
  %i.au = add nsw i32 %.sroa.0.030.i, 308, !dbg !102636 ; 3 uses
    #dbg_value(i32 %i.au, !6504, !DIExpression(), !102487)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102490)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102492)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !102490)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !102492)
    #dbg_value(i32 %i.au, !6543, !DIExpression(), !102494)
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true), !dbg !102626 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !6529, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !102490)
    #dbg_value(i32 %.sroa.012.0.i, !6539, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !102492)
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !102627
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i, !dbg !102627

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !102637, !noalias !102585
  store i64 14, ptr %i.a, align 8, !dbg !102637, !noalias !102585
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !102638, !noalias !102584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !102639, !noalias !102585
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !102640
  store ptr %i.aw, ptr %i.ax, align 8, !dbg !102640, !alias.scope !102584
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !102641

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.029.i, %.lr.ph.i ], !dbg !102629 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6509, !DIExpression(), !102488)
  %i.ay = fneg double %.sroa.04.1.i, !dbg !102642
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay, !dbg !102642
    #dbg_value(double %.sroa.04.2.i, !6509, !DIExpression(), !102488)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !102643
  store double %.sroa.04.2.i, ptr %i.az, align 8, !dbg !102643, !alias.scope !102584
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !102644

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq, !dbg !102645
    #dbg_value(double %i.ba, !6509, !DIExpression(), !102488)
  br label %.loopexit.i, !dbg !102646

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq, !dbg !102647 ; 2 uses
    #dbg_value(double %i.bb, !6509, !DIExpression(), !102488)
    #dbg_value(double %i.bb, !6551, !DIExpression(), !102498)
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb), !dbg !102648
  %i.bd = fcmp oeq double %i.bc, +inf, !dbg !102648
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !dbg !102649, !prof !4857

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !102650, !noalias !102585
  store i64 14, ptr %i.b, align 8, !dbg !102650, !noalias !102585
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !102651, !noalias !102584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !102652, !noalias !102585
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !102653
  store ptr %i.be, ptr %i.bf, align 8, !dbg !102653, !alias.scope !102584
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !102641

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ], !dbg !102654
  store i64 %storemerge.i, ptr %0, align 8, !dbg !102654, !alias.scope !102584
  br label %bb.q, !dbg !102655

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit
  ret void, !dbg !102655

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.071, 214748364, !dbg !102656
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh, !dbg !102656
  br i1 %or.cond2, label %bb.t, label %bb.s, !dbg !102656, !prof !4861

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.071, 10, !dbg !102657
  %i.bj = add i32 %i.bi, %i.ah, !dbg !102658      ; 2 uses
    #dbg_value(i32 %i.bj, !102562, !DIExpression(), !102565)
    #dbg_value(i32 %i.bj, !102557, !DIExpression(), !102560)
    #dbg_value(i32 %i.bj, !102512, !DIExpression(), !102578)
    #dbg_value(ptr %i.e, !3458, !DIExpression(), !102499)
  %exitcond.not = icmp eq i64 %i.ag, %i.j, !dbg !102614
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, !dbg !102614

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0, !dbg !102659
    #dbg_value(i1 %i.bk, !102519, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !102586)
  tail call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #19, !dbg !102660
  br label %bb.q, !dbg !102661
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 !dbg !621 {
bb.a:
    #dbg_value(ptr %1, !3426, !DIExpression(), !102671)
    #dbg_value(ptr %1, !3445, !DIExpression(), !102673)
    #dbg_value(ptr %1, !3448, !DIExpression(), !102675)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !102676, !noundef !1865 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c, !dbg !102680
  br i1 %i.d, label %.lr.ph, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !102680

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !102676, !nonnull !1865, !noundef !1865
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !102677
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b, !dbg !102680

._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !dbg !102681, !alias.scope !102677
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !102680

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !102681
  store i8 0, ptr %i.i, align 1, !dbg !102681, !alias.scope !102677
  br label %bb.d, !dbg !102682

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102677), !dbg !102683
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102676), !dbg !102683
    #dbg_value(ptr %i.e, !3458, !DIExpression(), !102666)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j, !dbg !102684
  %i.l = load i8, ptr %i.k, align 1, !dbg !102684, !noalias !102678, !noundef !1865 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ], !dbg !102682

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !3462, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !102668)
  %i.m = add i64 %i.j, 1, !dbg !102685            ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !dbg !102685, !alias.scope !102679
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !102666)
  %exitcond.not = icmp eq i64 %i.m, %i.c, !dbg !102680
  br i1 %exitcond.not, label %._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, label %bb.b, !dbg !102680

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !dbg !102681, !alias.scope !102677
  br label %bb.d, !dbg !102686

bb.d:                                             ; preds = %.loopexit, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8, !dbg !102681
  ret void, !dbg !102686
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 !dbg !102699 {
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
    #dbg_value(ptr %0, !102809, !DIExpression(), !102822)
    #dbg_value(ptr %0, !102823, !DIExpression(), !102828)
    #dbg_value(ptr %0, !102829, !DIExpression(), !102832)
    #dbg_value(ptr %0, !102833, !DIExpression(), !102838)
    #dbg_value(ptr %0, !102839, !DIExpression(), !102842)
    #dbg_value(ptr %0, !102839, !DIExpression(), !102844)
    #dbg_value(ptr %0, !102839, !DIExpression(), !102846)
    #dbg_value(ptr %0, !102839, !DIExpression(), !102848)
    #dbg_value(ptr %0, !102839, !DIExpression(), !102850)
    #dbg_value(ptr %0, !102833, !DIExpression(), !102852)
    #dbg_value(ptr %1, !102810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102822)
    #dbg_value(ptr %2, !102810, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !102822)
    #dbg_declare(ptr %i.m, !102815, !DIExpression(), !102853)
    #dbg_declare(ptr %i.l, !102817, !DIExpression(), !102854)
    #dbg_value(i8 1, !102835, !DIExpression(), !102838)
    #dbg_value(i8 0, !102835, !DIExpression(), !102852)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !102918 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102855), !dbg !102919
    #dbg_value(ptr %i.q, !3458, !DIExpression(), !102709)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !102920 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !102920, !alias.scope !102855, !noundef !1865 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !102921
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCshhfsHpF03Qr_6netlog:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !102989
  store i8 7, ptr %i.p, align 8, !dbg !102989
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !102990
    #dbg_value(ptr %i.cb, !102811, !DIExpression(), !102912)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !102991
  br label %bb.ae, !dbg !102991

bb.ae:                                            ; preds = %bb.al, %.thread73, %bb.ai, %bb.ag, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit47, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit39, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread73 ], [ %i.cb, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit ], [ %i.ce, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit39 ], [ %i.cg, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit47 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ], !dbg !102822
    #dbg_value(ptr %.sroa.02.0, !102811, !DIExpression(), !102912)
    #dbg_value(ptr %0, !4863, !DIExpression(), !102797)
    #dbg_value(ptr %.sroa.02.0, !4867, !DIExpression(), !102797)
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECshhfsHpF03Qr_6netlog(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0), !dbg !102992
    #dbg_value(ptr %i.cc, !102812, !DIExpression(), !102913)
    #dbg_value(ptr %i.cc, !102813, !DIExpression(), !102914)
    #dbg_value(ptr %i.cc, !102814, !DIExpression(), !102915)
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit.thread, !dbg !102993

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit39: ; preds = %bb.p
    #dbg_value(ptr poison, !4946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102745)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !102994
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !102994
  store i8 1, ptr %i.cd, align 1, !dbg !102994
  store i8 0, ptr %i.o, align 8, !dbg !102994
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !102995
    #dbg_value(ptr %i.ce, !102811, !DIExpression(), !102912)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !102996
  br label %bb.ae, !dbg !102996

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit47: ; preds = %bb.y
    #dbg_value(ptr poison, !4946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102769)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !102997
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !102997
  store i8 0, ptr %i.cf, align 1, !dbg !102997
  store i8 0, ptr %i.n, align 8, !dbg !102997
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !102998
    #dbg_value(ptr %i.cg, !102811, !DIExpression(), !102912)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !102999
  br label %bb.ae, !dbg !102999

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !103000
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !103000, !nonnull !1865, !align !4802, !noundef !1865
    #dbg_value(ptr %i.ci, !102812, !DIExpression(), !102913)
    #dbg_value(ptr %i.ci, !102813, !DIExpression(), !102914)
    #dbg_value(ptr %i.ci, !102814, !DIExpression(), !102915)
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit.thread, !dbg !103001

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !103002
    #dbg_value(ptr %i.cj, !102811, !DIExpression(), !102912)
  br label %bb.ae, !dbg !103003

bb.ah:                                            ; preds = %bb.ab
    #dbg_value(ptr %i.by, !102812, !DIExpression(), !102913)
    #dbg_value(ptr %i.by, !102813, !DIExpression(), !102914)
    #dbg_value(ptr %i.by, !102814, !DIExpression(), !102915)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !103004
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit.thread, !dbg !103001

bb.ai:                                            ; preds = %bb.ab
    #dbg_value(i64 %i.bv, !102819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !102917)
    #dbg_value(ptr %i.by, !102819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !102917)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !103005
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !103005
    #dbg_value(i64 %.sroa.6.0.copyload, !102819, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !102917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !103006
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !103006
  store ptr %i.by, ptr %i.ck, align 8, !dbg !103006
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !103006
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8, !dbg !103006
  store i8 5, ptr %i.j, align 8, !dbg !103006
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !103007
    #dbg_value(ptr %i.cm, !102811, !DIExpression(), !102912)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !103008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !103004
  br label %bb.ae, !dbg !103004

.thread73:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !103009
  store i64 10, ptr %i.g, align 8, !dbg !103009
  %i.cn = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !103010
    #dbg_value(ptr %i.cn, !102811, !DIExpression(), !102912)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !103011
  br label %bb.ae, !dbg !103011

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true), !dbg !103012
  %i.co = load i64, ptr %i.l, align 8, !dbg !103013, !range !4845, !noundef !1865
  %i.cp = icmp eq i64 %i.co, -1, !dbg !103013
  br i1 %i.cp, label %bb.ak, label %bb.al, !dbg !103014, !prof !4805

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !103015
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !103015, !nonnull !1865, !align !4802, !noundef !1865
    #dbg_value(ptr %i.cr, !102812, !DIExpression(), !102913)
    #dbg_value(ptr %i.cr, !102813, !DIExpression(), !102914)
    #dbg_value(ptr %i.cr, !102814, !DIExpression(), !102915)
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit.thread, !dbg !103001

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !103016
    #dbg_value(ptr %i.cs, !102811, !DIExpression(), !102912)
  br label %bb.ae, !dbg !103017

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCshhfsHpF03Qr_6netlog.exit.thread: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46, %bb.z, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i38, %bb.q, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i38 ], [ %i.bo, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46 ], [ %i.bp, %bb.z ], !dbg !102822
    #dbg_value(ptr %.sroa.0.1, !102814, !DIExpression(), !102915)
    #dbg_value(ptr %.sroa.0.1, !102813, !DIExpression(), !102914)
    #dbg_value(ptr %.sroa.0.1, !102812, !DIExpression(), !102913)
  ret ptr %.sroa.0.1, !dbg !102993
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE18parse_long_integerCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #4 !dbg !103021 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !103054, !DIExpression(), !103061)
    #dbg_value(ptr %1, !103062, !DIExpression(), !103067)
    #dbg_value(ptr %1, !103068, !DIExpression(), !103071)
    #dbg_value(ptr %1, !103072, !DIExpression(), !103075)
    #dbg_value(i1 %2, !103055, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !103061)
    #dbg_value(i64 %3, !103056, !DIExpression(), !103061)
    #dbg_value(i32 0, !103057, !DIExpression(), !103076)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !103077, !noundef !1865 ; 3 uses
  %.promoted = load i64, ptr %i.c, align 8        ; 3 uses
  %i.f = icmp ult i64 %.promoted, %i.e, !dbg !103083
  br i1 %i.f, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %.thread, !dbg !103083

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !103077, !nonnull !1865, !noundef !1865
  %i.i = trunc i64 %i.e to i32, !dbg !103083
  %i.j = trunc i64 %.promoted to i32, !dbg !103083
  %i.k = sub i32 %i.i, %i.j, !dbg !103083
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !103083

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, %bb.c
  %.sroa.0.030 = phi i32 [ 0, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.q, %bb.c ] ; 4 uses
  %i.l = phi i64 [ %.promoted, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.p, %bb.c ] ; 2 uses
    #dbg_value(i32 %.sroa.0.030, !103057, !DIExpression(), !103076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103077), !dbg !103084
    #dbg_value(ptr %i.g, !3458, !DIExpression(), !103030)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l, !dbg !103085
  %i.n = load i8, ptr %i.m, align 1, !dbg !103085, !noalias !103078, !noundef !1865 ; 2 uses
  %i.o = add i8 %i.n, -48, !dbg !103086
  %or.cond = icmp ult i8 %i.o, 10, !dbg !103086
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !103086

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  switch i8 %i.n, label %.thread [
    i8 46, label %bb.j
    i8 101, label %bb.k
    i8 69, label %bb.k
  ], !dbg !103087

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %1, !3462, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !103033)
  %i.p = add i64 %i.l, 1, !dbg !103088            ; 3 uses
  store i64 %i.p, ptr %i.c, align 8, !dbg !103088, !alias.scope !103080
  %i.q = add i32 %.sroa.0.030, 1, !dbg !103089
    #dbg_value(i32 %i.q, !103057, !DIExpression(), !103076)
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !103030)
  %exitcond.not = icmp eq i64 %i.p, %i.e, !dbg !103083
  br i1 %exitcond.not, label %.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !103083

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.028 = phi i32 [ %.sroa.0.030, %bb.b ], [ 0, %bb.a ], [ %i.k, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103081), !dbg !103090
    #dbg_value(i32 %.sroa.0.028, !6504, !DIExpression(), !103039)
    #dbg_value(ptr %1, !6506, !DIExpression(), !103039)
    #dbg_value(i1 %2, !6507, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !103039)
    #dbg_value(i64 %3, !6508, !DIExpression(), !103039)
  %i.r = uitofp i64 %3 to double, !dbg !103091    ; 2 uses
    #dbg_value(double %i.r, !6509, !DIExpression(), !103040)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103042)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103044)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103042)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103044)
    #dbg_value(i32 %.sroa.0.028, !6543, !DIExpression(), !103046)
  %.sroa.012.028.i = tail call i32 @llvm.abs.i32(i32 %.sroa.0.028, i1 false), !dbg !103092 ; 2 uses
  %i.s = icmp ult i32 %.sroa.012.028.i, 309, !dbg !103093
  br i1 %i.s, label %._crit_edge.i, label %.lr.ph.i, !dbg !103093

.lr.ph.i:                                         ; preds = %.thread, %bb.e
  %.sroa.0.030.i = phi i32 [ %i.aa, %bb.e ], [ %.sroa.0.028, %.thread ] ; 2 uses
  %.sroa.04.029.i = phi double [ %i.z, %bb.e ], [ %i.r, %.thread ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i, !6504, !DIExpression(), !103039)
    #dbg_value(double %.sroa.04.029.i, !6509, !DIExpression(), !103040)
  %i.t = fcmp oeq double %.sroa.04.029.i, 0.000000e+00, !dbg !103094
  br i1 %i.t, label %.loopexit.i, label %bb.d, !dbg !103094

._crit_edge.i:                                    ; preds = %bb.e, %.thread
  %.sroa.04.0.lcssa.i = phi double [ %i.r, %.thread ], [ %i.z, %bb.e ], !dbg !103095 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.0.028, %.thread ], [ %i.aa, %bb.e ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.028.i, %.thread ], [ %.sroa.012.0.i, %bb.e ], !dbg !103092
  %i.u = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !103096
    #dbg_value(i64 %i.u, !6529, !DIExpression(), !103042)
    #dbg_value(i64 %i.u, !6539, !DIExpression(), !103044)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.u, !dbg !103097
  %i.w = load double, ptr %i.v, align 8, !dbg !103098, !noalias !103082, !noundef !1865 ; 2 uses
    #dbg_value(double %i.w, !6510, !DIExpression(), !103048)
  %i.x = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !103099
  br i1 %i.x, label %bb.h, label %bb.g, !dbg !103099

bb.d:                                             ; preds = %.lr.ph.i
  %i.y = icmp sgt i32 %.sroa.0.030.i, -1, !dbg !103100
  br i1 %i.y, label %bb.f, label %bb.e, !dbg !103100, !prof !4857

bb.e:                                             ; preds = %bb.d
  %i.z = fdiv double %.sroa.04.029.i, 1.000000e+308, !dbg !103101 ; 2 uses
    #dbg_value(double %i.z, !6509, !DIExpression(), !103040)
  %i.aa = add nsw i32 %.sroa.0.030.i, 308, !dbg !103102 ; 3 uses
    #dbg_value(i32 %i.aa, !6504, !DIExpression(), !103039)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103042)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103044)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103042)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103044)
    #dbg_value(i32 %i.aa, !6543, !DIExpression(), !103046)
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.aa, i1 true), !dbg !103092 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !6529, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !103042)
    #dbg_value(i32 %.sroa.012.0.i, !6539, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !103044)
  %i.ab = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !103093
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i, !dbg !103093

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !103103, !noalias !103082
  store i64 14, ptr %i.a, align 8, !dbg !103103, !noalias !103082
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !103104, !noalias !103081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !103105, !noalias !103082
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103106
  store ptr %i.ac, ptr %i.ad, align 8, !dbg !103106, !alias.scope !103081
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !103107

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.h, %bb.g
  %.sroa.04.1.i = phi double [ %i.ah, %bb.h ], [ %i.ag, %bb.g ], [ %.sroa.04.029.i, %.lr.ph.i ], !dbg !103095 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6509, !DIExpression(), !103040)
  %i.ae = fneg double %.sroa.04.1.i, !dbg !103108
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ae, !dbg !103108
    #dbg_value(double %.sroa.04.2.i, !6509, !DIExpression(), !103040)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103109
  store double %.sroa.04.2.i, ptr %i.af, align 8, !dbg !103109, !alias.scope !103081
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !103110

bb.g:                                             ; preds = %._crit_edge.i
  %i.ag = fdiv double %.sroa.04.0.lcssa.i, %i.w, !dbg !103111
    #dbg_value(double %i.ag, !6509, !DIExpression(), !103040)
  br label %.loopexit.i, !dbg !103112

bb.h:                                             ; preds = %._crit_edge.i
  %i.ah = fmul double %.sroa.04.0.lcssa.i, %i.w, !dbg !103113 ; 2 uses
    #dbg_value(double %i.ah, !6509, !DIExpression(), !103040)
    #dbg_value(double %i.ah, !6551, !DIExpression(), !103050)
  %i.ai = tail call double @llvm.fabs.f64(double %i.ah), !dbg !103114
  %i.aj = fcmp oeq double %i.ai, +inf, !dbg !103114
  br i1 %i.aj, label %bb.i, label %.loopexit.i, !dbg !103115, !prof !4857

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !103116, !noalias !103082
  store i64 14, ptr %i.b, align 8, !dbg !103116, !noalias !103082
  %i.ak = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !103117, !noalias !103081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !103118, !noalias !103082
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103119
  store ptr %i.ak, ptr %i.al, align 8, !dbg !103119, !alias.scope !103081
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !103107

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.f, %.loopexit.i, %bb.i
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.i ], [ 1, %bb.f ], !dbg !103120
  store i64 %storemerge.i, ptr %0, align 8, !dbg !103120, !alias.scope !103081
  br label %bb.l, !dbg !103121

bb.j:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %.sroa.0.030), !dbg !103122
  br label %bb.l, !dbg !103123

bb.k:                                             ; preds = %bb.b, %bb.b
  tail call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %.sroa.0.030), !dbg !103124
  br label %bb.l, !dbg !103125

bb.l:                                             ; preds = %bb.k, %bb.j, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit
  ret void, !dbg !103126
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE22parse_decimal_overflowCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #4 !dbg !103131 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !103169, !DIExpression(), !103178)
    #dbg_value(ptr %1, !103179, !DIExpression(), !103186)
    #dbg_value(ptr %1, !103187, !DIExpression(), !103190)
    #dbg_value(ptr %1, !103179, !DIExpression(), !103192)
    #dbg_value(ptr %1, !103187, !DIExpression(), !103195)
    #dbg_value(ptr %1, !103196, !DIExpression(), !103199)
    #dbg_value(i1 %2, !103170, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !103178)
    #dbg_value(i64 %3, !103171, !DIExpression(), !103178)
    #dbg_value(i32 %4, !103172, !DIExpression(), !103178)
    #dbg_value(i8 0, !103200, !DIExpression(), !103206)
    #dbg_value(i8 0, !103200, !DIExpression(), !103208)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !103209, !noundef !1865 ; 2 uses
  %.promoted = load i64, ptr %i.c, align 8        ; 2 uses
  %i.f = icmp ult i64 %.promoted, %i.e, !dbg !103215
  br i1 %i.f, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread, !dbg !103215

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !103209, !nonnull !1865, !noundef !1865
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !103215

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, %bb.b
  %i.i = phi i64 [ %.promoted, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103209), !dbg !103216
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i, !dbg !103217
  %i.k = load i8, ptr %i.j, align 1, !dbg !103217, !noalias !103210, !noundef !1865 ; 2 uses
    #dbg_value(i8 1, !103201, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !103206)
    #dbg_value(i8 poison, !103201, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !103206)
  %i.l = add i8 %i.k, -48, !dbg !103218
  %i.m = icmp ult i8 %i.l, 10, !dbg !103218
  br i1 %i.m, label %bb.b, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26, !dbg !103219

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %i.g, !3462, !DIExpression(), !103147)
  %i.n = add i64 %i.i, 1, !dbg !103220            ; 3 uses
  store i64 %i.n, ptr %i.c, align 8, !dbg !103220, !alias.scope !103211
    #dbg_value(ptr %i.g, !3458, !DIExpression(), !103150)
  %exitcond.not = icmp eq i64 %i.n, %i.e, !dbg !103215
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !103215

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %i.g, !3458, !DIExpression(), !103152)
    #dbg_value(i8 1, !103201, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !103208)
    #dbg_value(i8 poison, !103201, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !103208)
  switch i8 %i.k, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread [
    i8 101, label %bb.i
    i8 69, label %bb.i
  ], !dbg !103221

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread: ; preds = %bb.b, %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103213), !dbg !103222
    #dbg_value(i32 %4, !6504, !DIExpression(), !103156)
    #dbg_value(ptr %1, !6506, !DIExpression(), !103156)
    #dbg_value(i1 %2, !6507, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !103156)
    #dbg_value(i64 %3, !6508, !DIExpression(), !103156)
  %i.o = uitofp i64 %3 to double, !dbg !103223    ; 2 uses
    #dbg_value(double %i.o, !6509, !DIExpression(), !103157)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103159)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103161)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103159)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103161)
    #dbg_value(i32 %4, !6543, !DIExpression(), !103163)
  %.sroa.012.028.i = tail call i32 @llvm.abs.i32(i32 %4, i1 false), !dbg !103224 ; 2 uses
  %i.p = icmp ult i32 %.sroa.012.028.i, 309, !dbg !103225
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph.i, !dbg !103225

.lr.ph.i:                                         ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread, %bb.d
  %.sroa.0.030.i = phi i32 [ %i.x, %bb.d ], [ %4, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread ] ; 2 uses
  %.sroa.04.029.i = phi double [ %i.w, %bb.d ], [ %i.o, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i, !6504, !DIExpression(), !103156)
    #dbg_value(double %.sroa.04.029.i, !6509, !DIExpression(), !103157)
  %i.q = fcmp oeq double %.sroa.04.029.i, 0.000000e+00, !dbg !103226
  br i1 %i.q, label %.loopexit.i, label %bb.c, !dbg !103226

._crit_edge.i:                                    ; preds = %bb.d, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread
  %.sroa.04.0.lcssa.i = phi double [ %i.o, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread ], [ %i.w, %bb.d ], !dbg !103227 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %4, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread ], [ %i.x, %bb.d ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.028.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.thread ], [ %.sroa.012.0.i, %bb.d ], !dbg !103224
  %i.r = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !103228
    #dbg_value(i64 %i.r, !6529, !DIExpression(), !103159)
    #dbg_value(i64 %i.r, !6539, !DIExpression(), !103161)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.r, !dbg !103229
  %i.t = load double, ptr %i.s, align 8, !dbg !103230, !noalias !103214, !noundef !1865 ; 2 uses
    #dbg_value(double %i.t, !6510, !DIExpression(), !103165)
  %i.u = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !103231
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !103231

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = icmp sgt i32 %.sroa.0.030.i, -1, !dbg !103232
  br i1 %i.v, label %bb.e, label %bb.d, !dbg !103232, !prof !4857

bb.d:                                             ; preds = %bb.c
  %i.w = fdiv double %.sroa.04.029.i, 1.000000e+308, !dbg !103233 ; 2 uses
    #dbg_value(double %i.w, !6509, !DIExpression(), !103157)
  %i.x = add nsw i32 %.sroa.0.030.i, 308, !dbg !103234 ; 3 uses
    #dbg_value(i32 %i.x, !6504, !DIExpression(), !103156)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103159)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !6534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103161)
    #dbg_value(i64 309, !6512, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103159)
    #dbg_value(i64 309, !6534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103161)
    #dbg_value(i32 %i.x, !6543, !DIExpression(), !103163)
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true), !dbg !103224 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !6529, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !103159)
    #dbg_value(i32 %.sroa.012.0.i, !6539, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !103161)
  %i.y = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !103225
  br i1 %i.y, label %._crit_edge.i, label %.lr.ph.i, !dbg !103225

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !103235, !noalias !103214
  store i64 14, ptr %i.a, align 8, !dbg !103235, !noalias !103214
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !103236, !noalias !103213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !103237, !noalias !103214
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103238
  store ptr %i.z, ptr %i.aa, align 8, !dbg !103238, !alias.scope !103213
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !103239

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.g, %bb.f
  %.sroa.04.1.i = phi double [ %i.ae, %bb.g ], [ %i.ad, %bb.f ], [ %.sroa.04.029.i, %.lr.ph.i ], !dbg !103227 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !6509, !DIExpression(), !103157)
  %i.ab = fneg double %.sroa.04.1.i, !dbg !103240
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ab, !dbg !103240
    #dbg_value(double %.sroa.04.2.i, !6509, !DIExpression(), !103157)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103241
  store double %.sroa.04.2.i, ptr %i.ac, align 8, !dbg !103241, !alias.scope !103213
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !103242

bb.f:                                             ; preds = %._crit_edge.i
  %i.ad = fdiv double %.sroa.04.0.lcssa.i, %i.t, !dbg !103243
    #dbg_value(double %i.ad, !6509, !DIExpression(), !103157)
  br label %.loopexit.i, !dbg !103244

bb.g:                                             ; preds = %._crit_edge.i
  %i.ae = fmul double %.sroa.04.0.lcssa.i, %i.t, !dbg !103245 ; 2 uses
    #dbg_value(double %i.ae, !6509, !DIExpression(), !103157)
    #dbg_value(double %i.ae, !6551, !DIExpression(), !103167)
  %i.af = tail call double @llvm.fabs.f64(double %i.ae), !dbg !103246
  %i.ag = fcmp oeq double %i.af, +inf, !dbg !103246
  br i1 %i.ag, label %bb.h, label %.loopexit.i, !dbg !103247, !prof !4857

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !103248, !noalias !103214
  store i64 14, ptr %i.b, align 8, !dbg !103248, !noalias !103214
  %i.ah = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !103249, !noalias !103213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !103250, !noalias !103214
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103251
  store ptr %i.ah, ptr %i.ai, align 8, !dbg !103251, !alias.scope !103213
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, !dbg !103239

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.e, %.loopexit.i, %bb.h
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.h ], [ 1, %bb.e ], !dbg !103252
  store i64 %storemerge.i, ptr %0, align 8, !dbg !103252, !alias.scope !103213
  br label %bb.j, !dbg !103222

bb.i:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26
  tail call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4), !dbg !103253
  br label %bb.j, !dbg !103253

bb.j:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCshhfsHpF03Qr_6netlog.exit, %bb.i
  ret void, !dbg !103254
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #4 !dbg !103257 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !103277, !DIExpression(), !103284)
    #dbg_value(ptr %1, !103285, !DIExpression(), !103290)
    #dbg_value(ptr %1, !103291, !DIExpression(), !103294)
    #dbg_value(ptr %1, !103295, !DIExpression(), !103298)
    #dbg_value(i1 %2, !103278, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !103284)
    #dbg_value(i1 %3, !103279, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !103284)
    #dbg_value(i1 %4, !103280, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !103284)
    #dbg_value(i8 0, !103299, !DIExpression(), !103304)
  %.not = xor i1 %4, true, !dbg !103310
  %brmerge = or i1 %3, %.not, !dbg !103310
  br i1 %brmerge, label %.preheader, label %bb.b, !dbg !103310, !prof !103305

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !103306, !noundef !1865 ; 2 uses
  %.promoted = load i64, ptr %i.b, align 8        ; 2 uses
  %i.e = icmp ult i64 %.promoted, %i.d, !dbg !103311
  br i1 %i.e, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !103311

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !103312
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !103306, !nonnull !1865, !noundef !1865
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !103311

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !103313
  store i64 14, ptr %i.a, align 8, !dbg !103313
  %i.h = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !103314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !103315
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103316
  store ptr %i.h, ptr %i.i, align 8, !dbg !103316
  br label %bb.c, !dbg !103317

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], !dbg !103284
  store i64 %storemerge, ptr %0, align 8, !dbg !103284
  ret void, !dbg !103318

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, %bb.d
  %i.j = phi i64 [ %.promoted, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103306), !dbg !103319
    #dbg_value(ptr %i.f, !3458, !DIExpression(), !103268)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j, !dbg !103320
  %i.l = load i8, ptr %i.k, align 1, !dbg !103320, !noalias !103308, !noundef !1865
    #dbg_value(i8 1, !103300, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !103304)
    #dbg_value(i8 poison, !103300, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !103304)
  %i.m = add i8 %i.l, -48, !dbg !103321
  %i.n = icmp ult i8 %i.m, 10, !dbg !103321
  br i1 %i.n, label %bb.d, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !103322

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, %bb.d, %.preheader
  %. = select i1 %2, double 0.000000e+00, double -0.000000e+00, !dbg !103323
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !103324
  store double %., ptr %i.o, align 8, !dbg !103324
  br label %bb.c, !dbg !103318

bb.d:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %1, !3462, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !103271)
  %i.p = add i64 %i.j, 1, !dbg !103325            ; 3 uses
  store i64 %i.p, ptr %i.b, align 8, !dbg !103325, !alias.scope !103309
    #dbg_value(ptr %1, !3458, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !103268)
  %exitcond.not = icmp eq i64 %i.p, %i.d, !dbg !103311
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !103311
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !103327 {
bb.a:
    #dbg_value(ptr %0, !103329, !DIExpression(), !103333)
    #dbg_declare(ptr %1, !103330, !DIExpression(), !103334)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !103336
  %i.b = invoke { i64, i64 } @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d, !dbg !103337 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0, !dbg !103336
  %i.d = extractvalue { i64, i64 } %i.b, 1, !dbg !103336
    #dbg_value(i64 %i.c, !103331, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !103335)
    #dbg_value(i64 %i.d, !103331, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !103335)
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d), !dbg !103338
  ret ptr %i.e, !dbg !103339

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f, !dbg !103340

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error9ErrorCodeECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #14
          to label %bb.c unwind label %bb.e, !dbg !103341

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !103340
  unreachable, !dbg !103340
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 !dbg !103344 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !103369, !DIExpression(), !103373)
    #dbg_value(ptr %0, !103374, !DIExpression(), !103377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103378), !dbg !103384
    #dbg_value(ptr %0, !3426, !DIExpression(), !103349)
    #dbg_value(ptr %0, !3445, !DIExpression(), !103351)
    #dbg_value(ptr %0, !3448, !DIExpression(), !103353)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !103379, !noundef !1865 ; 2 uses
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !103378 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i, %i.f, !dbg !103385
end_hunk_2
