Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i.h3i.d225fd212855c992-cgu.04?download=true
inline.NumInlined: 466
inline.NumDeleted: 170
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i:bb.a
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
    #dbg_value(ptr %.sroa.01.024, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14547)
    #dbg_value(ptr %.sroa.01.024, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14547)
    #dbg_value(ptr %.sroa.01.024, !3920, !DIExpression(), !14560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14561), !dbg !14568
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14484)
  %exitcond.not = icmp eq i64 %i.l, %umax, !dbg !14569
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, label %bb.c, !dbg !14569

bb.c:                                             ; preds = %.lr.ph
    #dbg_value(ptr %i.g, !3937, !DIExpression(), !14484)
    #dbg_value(ptr %.sroa.01.024, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14547)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l, !dbg !14570
  %i.n = load i8, ptr %i.m, align 1, !dbg !14570, !noalias !14562, !noundef !1364
    #dbg_value(i8 %i.n, !3938, !DIExpression(), !14486)
  %i.o = add i64 %i.l, 1, !dbg !14571             ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !dbg !14571, !alias.scope !14561
    #dbg_value(i8 %i.n, !3923, !DIExpression(), !14563)
  %i.p = load i8, ptr %.sroa.01.024, align 1, !dbg !14572, !noundef !1364
  %.not = icmp eq i8 %i.n, %i.p, !dbg !14573
  br i1 %.not, label %bb.b, label %bb.d, !dbg !14573, !prof !3841

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14574
  store i64 5, ptr %i.b, align 8, !dbg !14574
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14576
  br label %.loopexit, !dbg !14577

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14578
  store i64 9, ptr %i.a, align 8, !dbg !14578
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !14579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14580
  br label %.loopexit, !dbg !14581

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ], !dbg !14582
  ret ptr %.sroa.0.1, !dbg !14583
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12parse_numberCsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 !dbg !14591 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
    #dbg_value(ptr %1, !14683, !DIExpression(), !14694)
    #dbg_value(ptr %1, !14695, !DIExpression(), !14700)
    #dbg_value(ptr %1, !14701, !DIExpression(), !14704)
    #dbg_value(i1 %2, !14684, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14694)
    #dbg_value(i64 %3, !14685, !DIExpression(), !14694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14705), !dbg !14762
    #dbg_value(ptr %1, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14599)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !14763 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !14763, !alias.scope !14705, !noundef !1364 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !14764
  %i.j = load i64, ptr %i.i, align 8, !dbg !14764, !alias.scope !14705, !noundef !1364 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j, !dbg !14763
  br i1 %i.k, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !14763

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !14765
    #dbg_value(ptr %i.l, !3128, !DIExpression(), !14599)
  %i.m = load ptr, ptr %i.l, align 8, !dbg !14766, !alias.scope !14705, !nonnull !1364, !noundef !1364 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h, !dbg !14766
  %i.o = load i8, ptr %i.n, align 1, !dbg !14766, !noalias !14706, !noundef !1364
  switch i8 %i.o, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ], !dbg !14767

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v, !dbg !14768

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14769
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14708), !dbg !14770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14709), !dbg !14770
    #dbg_value(i64 %3, !14710, !DIExpression(), !14618)
    #dbg_value(ptr %1, !14712, !DIExpression(), !14618)
    #dbg_value(ptr %1, !14728, !DIExpression(), !14621)
    #dbg_value(ptr %1, !14730, !DIExpression(), !14628)
    #dbg_value(ptr %1, !14736, !DIExpression(), !14631)
    #dbg_value(ptr %1, !14728, !DIExpression(), !14633)
    #dbg_value(ptr %1, !14736, !DIExpression(), !14635)
    #dbg_value(ptr %1, !14730, !DIExpression(), !14637)
    #dbg_value(ptr %1, !14736, !DIExpression(), !14639)
    #dbg_value(i1 %2, !14713, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14618)
    #dbg_value(i32 0, !14714, !DIExpression(), !14618)
    #dbg_value(i64 -1, !14720, !DIExpression(), !14640)
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14642)
  %i.p = add nuw i64 %i.h, 1, !dbg !14771         ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !dbg !14771, !alias.scope !14739
    #dbg_value(i32 0, !14715, !DIExpression(), !14645)
  %i.q = icmp ult i64 %i.p, %i.j, !dbg !14772
  br i1 %i.q, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i, !dbg !14772

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14642)
  %i.r = trunc i64 %i.h to i32, !dbg !14772
  %i.s = add i32 %i.r, 1, !dbg !14772
  %i.t = trunc i64 %i.j to i32, !dbg !14772
  %i.u = sub i32 %i.s, %i.t, !dbg !14772          ; 2 uses
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i, !dbg !14772

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.078.i = phi i64 [ %3, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.077.i = phi i32 [ 0, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
    #dbg_value(i64 %.sroa.0.078.i, !14710, !DIExpression(), !14618)
    #dbg_value(i32 %.sroa.07.077.i, !14715, !DIExpression(), !14645)
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v, !dbg !14773
  %i.x = load i8, ptr %i.w, align 1, !dbg !14773, !noalias !14740, !noundef !1364 ; 2 uses
    #dbg_value(i8 poison, !14718, !DIExpression(), !14650)
  %i.y = add i8 %i.x, -48, !dbg !14774            ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10, !dbg !14774
  br i1 %or.cond.i, label %bb.d, label %bb.c, !dbg !14774

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.077.i, 0, !dbg !14775
  br i1 %i.z, label %bb.e, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i, !dbg !14775

.thread.i:                                        ; preds = %bb.n
    #dbg_value(i8 poison, !14718, !DIExpression(), !14650)
  %i.aa = icmp eq i32 %i.u, 0, !dbg !14775
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i, !dbg !14775

bb.d:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64, !dbg !14776
    #dbg_value(i64 %i.ab, !14719, !DIExpression(), !14651)
  %i.ac = icmp ugt i64 %.sroa.0.078.i, 1844674407370955160, !dbg !14777
  br i1 %i.ac, label %bb.m, label %bb.n, !dbg !14777

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14653)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14778, !noalias !14741
  store i64 13, ptr %i.d, align 8, !dbg !14778, !noalias !14741
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !14779, !noalias !14708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14780, !noalias !14741
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14781
  store ptr %i.ad, ptr %i.ae, align 8, !dbg !14781, !alias.scope !14708
  store i64 1, ptr %i.f, align 8, !dbg !14781, !alias.scope !14708
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsi2C7WdEh0SA_3h3i.exit, !dbg !14782

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
    #dbg_value(ptr %1, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14653)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14783, !noalias !14741
  store i64 5, ptr %i.c, align 8, !dbg !14783, !noalias !14741
  %i.af = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !14784, !noalias !14708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14785, !noalias !14741
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14786
  store ptr %i.af, ptr %i.ag, align 8, !dbg !14786, !alias.scope !14708
  store i64 1, ptr %i.f, align 8, !dbg !14786, !alias.scope !14708
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsi2C7WdEh0SA_3h3i.exit, !dbg !14787

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i: ; preds = %bb.c
    #dbg_value(i32 %.sroa.07.077.i, !14724, !DIExpression(), !14654)
    #dbg_value(ptr %1, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14656)
  switch i8 %i.x, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ], !dbg !14788

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i, %.thread.i
  %.sroa.07.076.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.077.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i ] ; 3 uses
  %.sroa.0.073.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.078.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14743), !dbg !14789
    #dbg_value(i32 %.sroa.07.076.i, !4265, !DIExpression(), !14660)
    #dbg_value(ptr %1, !4267, !DIExpression(), !14660)
    #dbg_value(i1 %2, !4268, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14660)
    #dbg_value(i64 %.sroa.0.073.i, !4269, !DIExpression(), !14660)
  %i.ah = uitofp i64 %.sroa.0.073.i to double, !dbg !14790 ; 2 uses
    #dbg_value(double %i.ah, !4270, !DIExpression(), !14661)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !4273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14663)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !4295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14665)
    #dbg_value(i64 309, !4273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14663)
    #dbg_value(i64 309, !4295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14665)
    #dbg_value(i32 %.sroa.07.076.i, !4303, !DIExpression(), !14667)
  %.sroa.012.028.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.076.i, i1 false), !dbg !14791 ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.028.i.i, 309, !dbg !14792
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !14792

.lr.ph.i.i:                                       ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i, %bb.g
  %.sroa.0.030.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.076.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ] ; 2 uses
  %.sroa.04.029.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i.i, !4265, !DIExpression(), !14660)
    #dbg_value(double %.sroa.04.029.i.i, !4270, !DIExpression(), !14661)
  %i.aj = fcmp oeq double %.sroa.04.029.i.i, 0.000000e+00, !dbg !14793
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f, !dbg !14793

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ], [ %i.ap, %bb.g ], !dbg !14794 ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.076.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.028.i.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i ], [ %.sroa.012.0.i.i, %bb.g ], !dbg !14791
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64, !dbg !14795
    #dbg_value(i32 %.sroa.012.0.lcssa.i.i, !4290, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !14663)
    #dbg_value(i32 %.sroa.012.0.lcssa.i.i, !4300, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !14665)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.ak, !dbg !14796
  %i.am = load double, ptr %i.al, align 8, !dbg !14797, !noalias !14744, !noundef !1364 ; 2 uses
    #dbg_value(double %i.am, !4271, !DIExpression(), !14669)
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1, !dbg !14798
  br i1 %i.an, label %bb.j, label %bb.i, !dbg !14798

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.030.i.i, -1, !dbg !14799
  br i1 %i.ao, label %bb.h, label %bb.g, !dbg !14799, !prof !3954

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.029.i.i, 1.000000e+308, !dbg !14800 ; 2 uses
    #dbg_value(double %i.ap, !4270, !DIExpression(), !14661)
  %i.aq = add nsw i32 %.sroa.0.030.i.i, 308, !dbg !14801 ; 3 uses
    #dbg_value(i32 %i.aq, !4265, !DIExpression(), !14660)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !4273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14663)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !4295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14665)
    #dbg_value(i64 309, !4273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14663)
    #dbg_value(i64 309, !4295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14665)
    #dbg_value(i32 %i.aq, !4303, !DIExpression(), !14667)
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true), !dbg !14791 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i.i, !4290, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !14663)
    #dbg_value(i32 %.sroa.012.0.i.i, !4300, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !14665)
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309, !dbg !14792
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !14792

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14802, !noalias !14744
  store i64 14, ptr %i.a, align 8, !dbg !14802, !noalias !14744
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !14803, !noalias !14745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14804, !noalias !14744
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14805
  store ptr %i.as, ptr %i.at, align 8, !dbg !14805, !alias.scope !14745
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsi2C7WdEh0SA_3h3i.exit.i, !dbg !14806

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.029.i.i, %.lr.ph.i.i ], !dbg !14794 ; 2 uses
    #dbg_value(double %.sroa.04.1.i.i, !4270, !DIExpression(), !14661)
  %i.au = fneg double %.sroa.04.1.i.i, !dbg !14807
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au, !dbg !14807
    #dbg_value(double %.sroa.04.2.i.i, !4270, !DIExpression(), !14661)
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14808
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !dbg !14808, !alias.scope !14745
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsi2C7WdEh0SA_3h3i.exit.i, !dbg !14809

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = fdiv double %.sroa.04.0.lcssa.i.i, %i.am, !dbg !14810
    #dbg_value(double %i.aw, !4270, !DIExpression(), !14661)
  br label %.loopexit.i.i, !dbg !14811

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = fmul double %.sroa.04.0.lcssa.i.i, %i.am, !dbg !14812 ; 2 uses
    #dbg_value(double %i.ax, !4270, !DIExpression(), !14661)
    #dbg_value(double %i.ax, !4310, !DIExpression(), !14671)
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax), !dbg !14813
  %i.az = fcmp oeq double %i.ay, +inf, !dbg !14813
  br i1 %i.az, label %bb.k, label %.loopexit.i.i, !dbg !14814, !prof !3954

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14815, !noalias !14744
  store i64 14, ptr %i.b, align 8, !dbg !14815, !noalias !14744
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !14816, !noalias !14745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14817, !noalias !14744
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14818
  store ptr %i.ba, ptr %i.bb, align 8, !dbg !14818, !alias.scope !14745
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsi2C7WdEh0SA_3h3i.exit.i, !dbg !14806

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsi2C7WdEh0SA_3h3i.exit.i: ; preds = %bb.k, %.loopexit.i.i, %bb.h
  %storemerge.i.i = phi i64 [ 0, %.loopexit.i.i ], [ 1, %bb.k ], [ 1, %bb.h ], !dbg !14819
  store i64 %storemerge.i.i, ptr %i.f, align 8, !dbg !14819, !alias.scope !14745
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsi2C7WdEh0SA_3h3i.exit, !dbg !14820

bb.l:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.078.i, i32 noundef %.sroa.07.077.i), !dbg !14821
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsi2C7WdEh0SA_3h3i.exit, !dbg !14822

bb.m:                                             ; preds = %bb.d
  %i.bc = icmp ne i64 %.sroa.0.078.i, 1844674407370955161, !dbg !14823
  %i.bd = icmp samesign ugt i8 %i.y, 5
  %or.cond1.i = or i1 %i.bc, %i.bd, !dbg !14823
  br i1 %or.cond1.i, label %bb.o, label %bb.n, !dbg !14823, !prof !4312

bb.n:                                             ; preds = %bb.m, %bb.d
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14673)
  %i.be = add i64 %i.v, 1, !dbg !14824            ; 3 uses
  store i64 %i.be, ptr %i.g, align 8, !dbg !14824, !alias.scope !14746
  %i.bf = mul nuw i64 %.sroa.0.078.i, 10, !dbg !14825
  %i.bg = add i64 %i.bf, %i.ab, !dbg !14826       ; 2 uses
    #dbg_value(i64 %i.bg, !14710, !DIExpression(), !14618)
  %i.bh = add i32 %.sroa.07.077.i, -1, !dbg !14827
    #dbg_value(i32 %i.bh, !14715, !DIExpression(), !14645)
    #dbg_value(ptr %1, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14676)
  %exitcond.not.i = icmp eq i64 %i.be, %i.j, !dbg !14772
  br i1 %exitcond.not.i, label %.thread.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i, !dbg !14772

bb.o:                                             ; preds = %bb.m
    #dbg_value(i32 %.sroa.07.077.i, !14721, !DIExpression(), !14677)
  call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE22parse_decimal_overflowCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.078.i, i32 noundef %.sroa.07.077.i) #22, !dbg !14828
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsi2C7WdEh0SA_3h3i.exit, !dbg !14829

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsi2C7WdEh0SA_3h3i.exit: ; preds = %bb.e, %.thread.thread.i, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsi2C7WdEh0SA_3h3i.exit.i, %bb.l, %bb.o
  %i.bi = load i64, ptr %i.f, align 8, !dbg !14769, !range !3968, !noundef !1364
  %i.bj = trunc nuw i64 %i.bi to i1, !dbg !14767
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14830 ; 2 uses
  br i1 %i.bj, label %bb.q, label %bb.r, !dbg !14767

bb.p:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14831
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef 0), !dbg !14832
  %i.bl = load i64, ptr %i.e, align 8, !dbg !14831, !range !3968, !noundef !1364
  %i.bm = trunc nuw i64 %i.bl to i1, !dbg !14767
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !14830 ; 2 uses
  br i1 %i.bm, label %bb.t, label %bb.u, !dbg !14767

bb.q:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsi2C7WdEh0SA_3h3i.exit
  %i.bo = load ptr, ptr %i.bk, align 8, !dbg !14833, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_value(ptr %i.bo, !14689, !DIExpression(), !14748)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14834
  store ptr %i.bo, ptr %i.bp, align 8, !dbg !14834
  store i64 -1, ptr %0, align 8, !dbg !14834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14835
  br label %bb.x, !dbg !14836

bb.r:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsi2C7WdEh0SA_3h3i.exit
  %i.bq = load i64, ptr %i.bk, align 8, !dbg !14837, !noundef !1364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14835
  br label %bb.s, !dbg !14835

bb.s:                                             ; preds = %bb.v, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, %bb.w, %bb.u, %bb.r
  %.sroa.9.0 = phi i64 [ %i.bt, %bb.u ], [ %i.by, %bb.w ], [ %3, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], [ %i.bq, %bb.r ], [ %i.bu, %bb.v ], !dbg !14694
  %.sroa.0.0 = phi i64 [ 0, %bb.u ], [ 0, %bb.w ], [ 1, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], [ 0, %bb.r ], [ 2, %bb.v ], !dbg !14694
  store i64 %.sroa.0.0, ptr %0, align 8, !dbg !14838
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14838
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !14838
  br label %bb.x, !dbg !14839

bb.t:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.bn, align 8, !dbg !14833, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_value(ptr %i.br, !14691, !DIExpression(), !14750)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14840
  store ptr %i.br, ptr %i.bs, align 8, !dbg !14840
  store i64 -1, ptr %0, align 8, !dbg !14840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14841
  br label %bb.x, !dbg !14836

bb.u:                                             ; preds = %bb.p
  %i.bt = load i64, ptr %i.bn, align 8, !dbg !14837, !noundef !1364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14841
  br label %bb.s, !dbg !14841

bb.v:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
    #dbg_value(i64 %3, !14751, !DIExpression(), !14757)
  %i.bu = sub i64 0, %3, !dbg !14842              ; 2 uses
    #dbg_value(i64 %i.bu, !14692, !DIExpression(), !14761)
  %i.bv = icmp sgt i64 %i.bu, -1, !dbg !14843
  br i1 %i.bv, label %bb.w, label %bb.s, !dbg !14843

bb.w:                                             ; preds = %bb.v
  %i.bw = uitofp i64 %3 to double, !dbg !14844
  %i.bx = fneg double %i.bw, !dbg !14845
  %i.by = bitcast double %i.bx to i64, !dbg !14846
  br label %bb.s, !dbg !14847

bb.x:                                             ; preds = %bb.q, %bb.t, %bb.s
  ret void, !dbg !14839
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #0 !dbg !14863 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !14896, !DIExpression(), !14914)
    #dbg_value(ptr %1, !14915, !DIExpression(), !14918)
    #dbg_value(ptr %1, !14919, !DIExpression(), !14926)
    #dbg_value(ptr %1, !14927, !DIExpression(), !14930)
    #dbg_value(ptr %1, !14919, !DIExpression(), !14932)
    #dbg_value(ptr %1, !14927, !DIExpression(), !14935)
    #dbg_value(ptr %1, !14936, !DIExpression(), !14939)
    #dbg_value(i1 %2, !14897, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14914)
    #dbg_value(i64 -1, !14910, !DIExpression(), !14940)
    #dbg_value(i8 0, !14941, !DIExpression(), !14947)
    #dbg_value(i8 0, !14941, !DIExpression(), !14949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14950), !dbg !14965
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14878)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !14966 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !14966, !alias.scope !14950, !noundef !1364 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !14967
  %i.h = load i64, ptr %i.g, align 8, !dbg !14967, !alias.scope !14950, !noundef !1364 ; 4 uses
  %i.i = icmp ult i64 %i.f, %i.h, !dbg !14966
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !14966

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !14968
    #dbg_value(ptr %i.j, !3937, !DIExpression(), !14878)
  %i.k = load ptr, ptr %i.j, align 8, !dbg !14969, !alias.scope !14950, !nonnull !1364, !noundef !1364 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f, !dbg !14969
  %i.m = load i8, ptr %i.l, align 1, !dbg !14969, !noalias !14951, !noundef !1364 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsi2C7WdEh0SA_3h3i:bb.a

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i: ; preds = %.preheader.i, %bb.l
  %i.cc = phi i64 [ %i.ch, %bb.l ], [ %i.bx, %.preheader.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cc, !dbg !15490
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !15490, !noalias !15410, !noundef !1364
    #dbg_value(i8 1, !15388, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15228)
    #dbg_value(i8 poison, !15388, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !15228)
  %i.cf = add i8 %i.ce, -48, !dbg !15491
  %i.cg = icmp ult i8 %i.cf, 10, !dbg !15491
  br i1 %i.cg, label %bb.l, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsi2C7WdEh0SA_3h3i.exit, !dbg !15492

bb.l:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i
    #dbg_value(ptr %0, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15253)
  %i.ch = add i64 %i.cc, 1, !dbg !15493           ; 3 uses
  store i64 %i.ch, ptr %i.f, align 8, !dbg !15493, !alias.scope !15411
    #dbg_value(ptr %0, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15256)
  %exitcond.not.i = icmp eq i64 %i.ch, %i.i, !dbg !15485
  br i1 %exitcond.not.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsi2C7WdEh0SA_3h3i.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i, !dbg !15485

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsi2C7WdEh0SA_3h3i.exit.loopexit89: ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !dbg !15440, !alias.scope !15330
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsi2C7WdEh0SA_3h3i.exit, !dbg !15494

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsi2C7WdEh0SA_3h3i.exit: ; preds = %bb.e, %bb.l, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i, %bb.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i.i, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsi2C7WdEh0SA_3h3i.exit.loopexit89, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i, %.preheader.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i, %.preheader.i.i, %.loopexit.i, %.thread.thread.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit56, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread, %bb.d
  %.sroa.0.3 = phi ptr [ %i.x, %bb.d ], [ null, %.preheader.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit56 ], [ %i.aa, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread ], [ null, %bb.i ], [ null, %.loopexit.i ], [ null, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsi2C7WdEh0SA_3h3i.exit.loopexit89 ], [ %i.at, %.thread.thread.i ], [ %i.bh, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i ], [ null, %.preheader.i.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], [ %i.cb, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i ], [ null, %bb.l ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i.i ], [ null, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit39.i ], [ null, %bb.e ], !dbg !15495
  ret ptr %.sroa.0.3, !dbg !15494
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 !dbg !15512 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !15565, !DIExpression(), !15586)
    #dbg_value(ptr %1, !15587, !DIExpression(), !15590)
    #dbg_value(ptr %1, !15591, !DIExpression(), !15598)
    #dbg_value(ptr %1, !15599, !DIExpression(), !15602)
    #dbg_value(ptr %1, !15587, !DIExpression(), !15604)
    #dbg_value(ptr %1, !15587, !DIExpression(), !15606)
    #dbg_value(ptr %1, !15607, !DIExpression(), !15610)
    #dbg_value(ptr %1, !15591, !DIExpression(), !15612)
    #dbg_value(ptr %1, !15599, !DIExpression(), !15615)
    #dbg_value(ptr %1, !15587, !DIExpression(), !15617)
    #dbg_value(i1 %2, !15566, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15586)
    #dbg_value(i64 %3, !15567, !DIExpression(), !15586)
    #dbg_value(i32 %4, !15568, !DIExpression(), !15586)
    #dbg_value(i32 %4, !15618, !DIExpression(), !15624)
    #dbg_value(i32 %4, !15625, !DIExpression(), !15629)
    #dbg_value(i32 2147483647, !15582, !DIExpression(), !15630)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !15652 ; 2 uses
    #dbg_value(ptr %i.e, !3132, !DIExpression(), !15524)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !15653 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !15653, !alias.scope !15631, !noundef !1364 ; 2 uses
  %i.h = add i64 %i.g, 1, !dbg !15653             ; 5 uses
  store i64 %i.h, ptr %i.f, align 8, !dbg !15653, !alias.scope !15631
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15632), !dbg !15654
    #dbg_value(ptr %i.e, !3128, !DIExpression(), !15530)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !15655
  %i.j = load i64, ptr %i.i, align 8, !dbg !15655, !alias.scope !15632, !noundef !1364 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j, !dbg !15656
  br i1 %i.k, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !15656

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !dbg !15657, !alias.scope !15632, !nonnull !1364, !noundef !1364
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h, !dbg !15657
  %i.n = load i8, ptr %i.m, align 1, !dbg !15657, !noalias !15633, !noundef !1364
  switch i8 %i.n, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread [
    i8 43, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split
    i8 45, label %bb.b
  ], !dbg !15658

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
    #dbg_value(ptr %i.e, !3132, !DIExpression(), !15533)
    #dbg_value(i8 0, !15569, !DIExpression(), !15635)
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split, !dbg !15659

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, %bb.b
  %.sroa.0.0.ph = phi i1 [ false, %bb.b ], [ true, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ]
  %i.o = add i64 %i.g, 2, !dbg !15660             ; 2 uses
  store i64 %i.o, ptr %i.f, align 8, !dbg !15660
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !15661

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split, %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.p = phi i64 [ %i.h, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ], [ %i.h, %bb.a ], [ %i.o, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split ], !dbg !15662 ; 3 uses
  %.sroa.0.0 = phi i1 [ true, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ], [ true, %bb.a ], [ %.sroa.0.0.ph, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split ], !dbg !15586 ; 2 uses
    #dbg_value(i8 poison, !15569, !DIExpression(), !15635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15637), !dbg !15661
    #dbg_value(ptr %i.e, !3937, !DIExpression(), !15537)
  %i.q = icmp ult i64 %i.p, %i.j, !dbg !15662
  br i1 %i.q, label %bb.c, label %bb.d, !dbg !15662

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
  %i.r = load ptr, ptr %i.e, align 8, !dbg !15663, !alias.scope !15637, !nonnull !1364, !noundef !1364 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p, !dbg !15663
  %i.t = load i8, ptr %i.s, align 1, !dbg !15663, !noalias !15638, !noundef !1364
    #dbg_value(i8 %i.t, !3938, !DIExpression(), !15539)
  %i.u = add nuw i64 %i.p, 1, !dbg !15664         ; 3 uses
  store i64 %i.u, ptr %i.f, align 8, !dbg !15664, !alias.scope !15637
    #dbg_value(i8 %i.t, !15572, !DIExpression(), !15639)
    #dbg_value(i8 %i.t, !15577, !DIExpression(), !15640)
  %i.v = add i8 %i.t, -48, !dbg !15665            ; 2 uses
  %or.cond = icmp ult i8 %i.v, 10, !dbg !15665
  br i1 %or.cond, label %bb.f, label %bb.e, !dbg !15665, !prof !3878

bb.d:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15666
  store i64 5, ptr %i.d, align 8, !dbg !15666
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !15667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15668
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15669
  store ptr %i.w, ptr %i.x, align 8, !dbg !15669
  store i64 1, ptr %0, align 8, !dbg !15670
  br label %bb.q, !dbg !15671

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15672
  store i64 13, ptr %i.c, align 8, !dbg !15672
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !15673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15674
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15675
  store ptr %i.y, ptr %i.z, align 8, !dbg !15675
  store i64 1, ptr %0, align 8, !dbg !15675
  br label %bb.q, !dbg !15676

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32, !dbg !15677   ; 2 uses
    #dbg_value(i32 %i.aa, !15626, !DIExpression(), !15629)
    #dbg_value(i32 %i.aa, !15621, !DIExpression(), !15624)
    #dbg_value(i32 %i.aa, !15576, !DIExpression(), !15642)
  %i.ab = icmp ult i64 %i.u, %i.j, !dbg !15678
  br i1 %i.ab, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, !dbg !15678

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45: ; preds = %bb.f, %bb.s
  %.sroa.08.071 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
    #dbg_value(i32 %.sroa.08.071, !15626, !DIExpression(), !15629)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac, !dbg !15679
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !15679, !noalias !15643, !noundef !1364
    #dbg_value(i8 poison, !15580, !DIExpression(), !15644)
  %i.af = add i8 %i.ae, -48, !dbg !15680          ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10, !dbg !15680
  br i1 %or.cond1, label %bb.g, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, !dbg !15680

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.071, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45 ], !dbg !15639 ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h, !dbg !15681

bb.g:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45
    #dbg_value(ptr %i.e, !3132, !DIExpression(), !15545)
  %i.ag = add i64 %i.ac, 1, !dbg !15682           ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !dbg !15682, !alias.scope !15645
  %i.ah = zext nneg i8 %i.af to i32, !dbg !15683
    #dbg_value(i32 %i.ah, !15581, !DIExpression(), !15646)
  %i.ai = icmp sgt i32 %.sroa.08.071, 214748363, !dbg !15684
  br i1 %i.ai, label %bb.r, label %bb.s, !dbg !15684

bb.h:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa), !dbg !15685
    #dbg_value(i32 %i.aj, !15584, !DIExpression(), !15647)
  br label %bb.j, !dbg !15686

bb.i:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa), !dbg !15687
    #dbg_value(i32 %i.ak, !15584, !DIExpression(), !15647)
  br label %bb.j, !dbg !15686

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ], !dbg !15642 ; 3 uses
    #dbg_value(i32 %.sroa.015.0, !15584, !DIExpression(), !15647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15648), !dbg !15688
    #dbg_value(i32 %.sroa.015.0, !4265, !DIExpression(), !15551)
    #dbg_value(ptr %1, !4267, !DIExpression(), !15551)
    #dbg_value(i1 %2, !4268, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15551)
    #dbg_value(i64 %3, !4269, !DIExpression(), !15551)
  %i.al = uitofp i64 %3 to double, !dbg !15689    ; 2 uses
    #dbg_value(double %i.al, !4270, !DIExpression(), !15552)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !4273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15554)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !4295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15556)
    #dbg_value(i64 309, !4273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15554)
    #dbg_value(i64 309, !4295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15556)
    #dbg_value(i32 %.sroa.015.0, !4303, !DIExpression(), !15558)
  %.sroa.012.028.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false), !dbg !15690 ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.028.i, 309, !dbg !15691
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i, !dbg !15691

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.030.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.029.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
    #dbg_value(i32 %.sroa.0.030.i, !4265, !DIExpression(), !15551)
    #dbg_value(double %.sroa.04.029.i, !4270, !DIExpression(), !15552)
  %i.an = fcmp oeq double %.sroa.04.029.i, 0.000000e+00, !dbg !15692
  br i1 %i.an, label %.loopexit.i, label %bb.k, !dbg !15692

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ], !dbg !15693 ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.028.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ], !dbg !15690
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64, !dbg !15694
    #dbg_value(i32 %.sroa.012.0.lcssa.i, !4290, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !15554)
    #dbg_value(i32 %.sroa.012.0.lcssa.i, !4300, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !15556)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, i64 %i.ao, !dbg !15695
  %i.aq = load double, ptr %i.ap, align 8, !dbg !15696, !noalias !15649, !noundef !1364 ; 2 uses
    #dbg_value(double %i.aq, !4271, !DIExpression(), !15560)
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1, !dbg !15697
  br i1 %i.ar, label %bb.o, label %bb.n, !dbg !15697

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.030.i, -1, !dbg !15698
  br i1 %i.as, label %bb.m, label %bb.l, !dbg !15698, !prof !3954

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.029.i, 1.000000e+308, !dbg !15699 ; 2 uses
    #dbg_value(double %i.at, !4270, !DIExpression(), !15552)
  %i.au = add nsw i32 %.sroa.0.030.i, 308, !dbg !15700 ; 3 uses
    #dbg_value(i32 %i.au, !4265, !DIExpression(), !15551)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !4273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15554)
    #dbg_value(ptr @_RNvNtCsenfyI6F4F2A_10serde_json2de5POW10, !4295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15556)
    #dbg_value(i64 309, !4273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15554)
    #dbg_value(i64 309, !4295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15556)
    #dbg_value(i32 %i.au, !4303, !DIExpression(), !15558)
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true), !dbg !15690 ; 2 uses
    #dbg_value(i32 %.sroa.012.0.i, !4290, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !15554)
    #dbg_value(i32 %.sroa.012.0.i, !4300, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !15556)
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309, !dbg !15691
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i, !dbg !15691

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15701, !noalias !15649
  store i64 14, ptr %i.a, align 8, !dbg !15701, !noalias !15649
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !15702, !noalias !15648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15703, !noalias !15649
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15704
  store ptr %i.aw, ptr %i.ax, align 8, !dbg !15704, !alias.scope !15648
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsi2C7WdEh0SA_3h3i.exit, !dbg !15705

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.029.i, %.lr.ph.i ], !dbg !15693 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !4270, !DIExpression(), !15552)
  %i.ay = fneg double %.sroa.04.1.i, !dbg !15706
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay, !dbg !15706
    #dbg_value(double %.sroa.04.2.i, !4270, !DIExpression(), !15552)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15707
  store double %.sroa.04.2.i, ptr %i.az, align 8, !dbg !15707, !alias.scope !15648
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsi2C7WdEh0SA_3h3i.exit, !dbg !15708

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq, !dbg !15709
    #dbg_value(double %i.ba, !4270, !DIExpression(), !15552)
  br label %.loopexit.i, !dbg !15710

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq, !dbg !15711 ; 2 uses
    #dbg_value(double %i.bb, !4270, !DIExpression(), !15552)
    #dbg_value(double %i.bb, !4310, !DIExpression(), !15562)
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb), !dbg !15712
  %i.bd = fcmp oeq double %i.bc, +inf, !dbg !15712
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !dbg !15713, !prof !3954

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15714, !noalias !15649
  store i64 14, ptr %i.b, align 8, !dbg !15714, !noalias !15649
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !15715, !noalias !15648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15716, !noalias !15649
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15717
  store ptr %i.be, ptr %i.bf, align 8, !dbg !15717, !alias.scope !15648
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsi2C7WdEh0SA_3h3i.exit, !dbg !15705

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsi2C7WdEh0SA_3h3i.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ], !dbg !15718
  store i64 %storemerge.i, ptr %0, align 8, !dbg !15718, !alias.scope !15648
  br label %bb.q, !dbg !15719

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsi2C7WdEh0SA_3h3i.exit
  ret void, !dbg !15719

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.071, 214748364, !dbg !15720
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh, !dbg !15720
  br i1 %or.cond2, label %bb.t, label %bb.s, !dbg !15720, !prof !4312

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.071, 10, !dbg !15721
  %i.bj = add i32 %i.bi, %i.ah, !dbg !15722       ; 2 uses
    #dbg_value(i32 %i.bj, !15626, !DIExpression(), !15629)
    #dbg_value(i32 %i.bj, !15621, !DIExpression(), !15624)
    #dbg_value(i32 %i.bj, !15576, !DIExpression(), !15642)
    #dbg_value(ptr %i.e, !3128, !DIExpression(), !15563)
  %exitcond.not = icmp eq i64 %i.ag, %i.j, !dbg !15678
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, !dbg !15678

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0, !dbg !15723
    #dbg_value(i1 %i.bk, !15583, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15650)
  tail call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #22, !dbg !15724
  br label %bb.q, !dbg !15725
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 !dbg !583 {
bb.a:
    #dbg_value(ptr %1, !3096, !DIExpression(), !15735)
    #dbg_value(ptr %1, !3115, !DIExpression(), !15737)
    #dbg_value(ptr %1, !3118, !DIExpression(), !15739)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !15740, !noundef !1364 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c, !dbg !15744
  br i1 %i.d, label %.lr.ph, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !15744

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !15740, !nonnull !1364, !noundef !1364
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !15741
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b, !dbg !15744

._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !dbg !15745, !alias.scope !15741
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !15744

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !15745
  store i8 0, ptr %i.i, align 1, !dbg !15745, !alias.scope !15741
  br label %bb.d, !dbg !15746

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15741), !dbg !15747
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15740), !dbg !15747
    #dbg_value(ptr %i.e, !3128, !DIExpression(), !15730)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j, !dbg !15748
  %i.l = load i8, ptr %i.k, align 1, !dbg !15748, !noalias !15742, !noundef !1364 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ], !dbg !15746

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15732)
  %i.m = add i64 %i.j, 1, !dbg !15749             ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !dbg !15749, !alias.scope !15743
    #dbg_value(ptr %1, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15730)
  %exitcond.not = icmp eq i64 %i.m, %i.c, !dbg !15744
  br i1 %exitcond.not, label %._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, label %bb.b, !dbg !15744

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !dbg !15745, !alias.scope !15741
  br label %bb.d, !dbg !15750

bb.d:                                             ; preds = %.loopexit, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8, !dbg !15745
  ret void, !dbg !15750
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 !dbg !15763 {
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
    #dbg_value(ptr %0, !15873, !DIExpression(), !15886)
    #dbg_value(ptr %0, !15887, !DIExpression(), !15892)
    #dbg_value(ptr %0, !15893, !DIExpression(), !15896)
    #dbg_value(ptr %0, !15897, !DIExpression(), !15901)
    #dbg_value(ptr %0, !15902, !DIExpression(), !15905)
    #dbg_value(ptr %0, !15902, !DIExpression(), !15907)
    #dbg_value(ptr %0, !15902, !DIExpression(), !15909)
    #dbg_value(ptr %0, !15902, !DIExpression(), !15911)
    #dbg_value(ptr %0, !15902, !DIExpression(), !15913)
    #dbg_value(ptr %0, !15897, !DIExpression(), !15915)
    #dbg_value(ptr %1, !15874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15886)
    #dbg_value(ptr %2, !15874, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15886)
    #dbg_declare(ptr %i.m, !15879, !DIExpression(), !15916)
    #dbg_declare(ptr %i.l, !15881, !DIExpression(), !15917)
    #dbg_value(i8 1, !15898, !DIExpression(), !15901)
    #dbg_value(i8 0, !15898, !DIExpression(), !15915)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !15981 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15918), !dbg !15982
    #dbg_value(ptr %i.q, !3128, !DIExpression(), !15773)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !15983 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !15983, !alias.scope !15918, !noundef !1364 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !15984
end_hunk_1
