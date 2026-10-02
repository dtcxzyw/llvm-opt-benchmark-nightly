Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.15?download=true
inline.NumInlined: 752
inline.NumDeleted: 395
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCs5yXxDE1DkoT_4tera5value6number3pow:bb.a
  tail call void @llvm.assume(i1 %i.af), !dbg !20705
  %i.ag = add nsw i8 %i.ae, -2, !dbg !20705
  %i.ah = icmp samesign ugt i8 %i.ae, 1, !dbg !20705
  %narrow.i120 = select i1 %i.ah, i8 %i.ag, i8 8, !dbg !20705
  switch i8 %narrow.i120, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126 [
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
  ], !dbg !20706

bb.h:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit
    #dbg_value(ptr %2, !5614, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20380)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20707
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !20707, !alias.scope !20581, !noalias !20582, !noundef !1418
  %i.ak = zext i64 %i.aj to i128, !dbg !20707
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126, !dbg !20708

bb.i:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit
    #dbg_value(ptr %2, !5615, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20381)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20709
  %i.am = load i64, ptr %i.al, align 8, !dbg !20709, !alias.scope !20581, !noalias !20582, !noundef !1418
  %i.an = sext i64 %i.am to i128, !dbg !20709
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126, !dbg !20710

bb.j:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit
    #dbg_value(ptr %2, !5616, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20382)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20711
  %i.ap = load double, ptr %i.ao, align 8, !dbg !20711, !alias.scope !20581, !noalias !20582, !noundef !1418
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126, !dbg !20712

bb.k:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit
    #dbg_value(ptr %2, !5617, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20383)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20713
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !20713, !alias.scope !20581, !noalias !20582, !nonnull !1418, !noundef !1418
  %i.as = load i128, ptr %i.ar, align 16, !dbg !20713, !noalias !20583, !noundef !1418 ; 2 uses
    #dbg_value(i128 %i.as, !5641, !DIExpression(), !20385)
  %i.at = icmp slt i128 %i.as, 0, !dbg !20714
  br i1 %i.at, label %bb.m, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126, !dbg !20714

bb.l:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit
    #dbg_value(ptr %2, !5618, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20386)
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20715
  %i.av = load ptr, ptr %i.au, align 8, !dbg !20715, !alias.scope !20581, !noalias !20582, !nonnull !1418, !noundef !1418
  %i.aw = load i128, ptr %i.av, align 16, !dbg !20715, !noalias !20583, !noundef !1418
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126, !dbg !20716

bb.m:                                             ; preds = %bb.k
    #dbg_value(i128 poison, !5637, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !20387)
    #dbg_value(i128 poison, !5637, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !20387)
  br label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126, !dbg !20717

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126: ; preds = %bb.k, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m
  %.sroa.10130.0 = phi i128 [ %i.aw, %bb.l ], [ %i.ak, %bb.h ], [ %i.an, %bb.i ], [ undef, %bb.j ], [ undef, %bb.m ], [ undef, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit ], [ %i.as, %bb.k ] ; 7 uses
  %.sroa.8129.0 = phi double [ undef, %bb.l ], [ undef, %bb.h ], [ undef, %bb.i ], [ %i.ap, %bb.j ], [ undef, %bb.m ], [ undef, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit ], [ undef, %bb.k ] ; 2 uses
  %.not116 = phi i1 [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ true, %bb.m ], [ true, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit ], [ false, %bb.k ], !dbg !20718
  %i.ax = phi i1 [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ false, %bb.m ], [ false, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit ], [ false, %bb.k ], !dbg !20718 ; 3 uses
  br i1 %.not115, label %bb.o, label %bb.n, !dbg !20719

bb.n:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126
  br i1 %.not116, label %bb.r, label %bb.q, !dbg !20719

bb.o:                                             ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit126
    #dbg_value(ptr %1, !20475, !DIExpression(), !20566)
  tail call fastcc void @_RNvNtNtCs5yXxDE1DkoT_4tera5value6number9arg_error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !20720
  br label %bb.p, !dbg !20721

bb.p:                                             ; preds = %bb.ae, %bb.ad, %bb.r, %bb.o
  ret void, !dbg !20722

bb.q:                                             ; preds = %bb.n
    #dbg_value(i64 poison, !20477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20584)
    #dbg_value(i64 poison, !20585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20592)
    #dbg_value(double %.sroa.8127.0, !20477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %.sroa.8127.0, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20592)
    #dbg_value(i128 %.sroa.10.0, !20477, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !20584)
    #dbg_value(i128 %.sroa.10.0, !20585, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !20592)
    #dbg_value(i64 poison, !20478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20584)
    #dbg_value(i64 poison, !20585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20594)
    #dbg_value(double %.sroa.8129.0, !20478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %.sroa.8129.0, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20594)
    #dbg_value(i128 %.sroa.10130.0, !20478, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !20584)
    #dbg_value(i128 %.sroa.10130.0, !20585, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !20594)
  %i.ay = icmp sgt i128 %.sroa.10130.0, -1
  %or.cond.not = or i1 %i.ay, %i.ax, !dbg !20723
  br i1 %or.cond.not, label %bb.s, label %bb.t, !dbg !20723

bb.r:                                             ; preds = %bb.n
    #dbg_value(ptr %2, !20476, !DIExpression(), !20566)
  tail call fastcc void @_RNvNtNtCs5yXxDE1DkoT_4tera5value6number9arg_error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2), !dbg !20724
  br label %bb.p, !dbg !20725

bb.s:                                             ; preds = %bb.q
    #dbg_value(i8 0, !20479, !DIExpression(), !20595)
  br i1 %cond, label %bb.v, label %bb.u, !dbg !20726

bb.t:                                             ; preds = %bb.q
    #dbg_value(i8 1, !20479, !DIExpression(), !20595)
  br i1 %cond118, label %bb.w, label %.thread133, !dbg !20726

bb.u:                                             ; preds = %bb.s
  br i1 %i.ax, label %.thread134, label %bb.x, !dbg !20727

.thread134:                                       ; preds = %bb.u
    #dbg_value(i128 %.sroa.10.0, !20587, !DIExpression(), !20596)
  %i.az = sitofp i128 %.sroa.10.0 to double, !dbg !20728
    #dbg_value(double %i.az, !20477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %i.az, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20592)
    #dbg_value(i64 1, !20477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20584)
    #dbg_value(i64 1, !20585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20592)
  br label %.thread, !dbg !20729

bb.v:                                             ; preds = %bb.s
  br i1 %i.ax, label %.thread, label %.thread133, !dbg !20729

bb.w:                                             ; preds = %bb.t
    #dbg_value(i128 %.sroa.10.0, !20587, !DIExpression(), !20596)
  %i.ba = sitofp i128 %.sroa.10.0 to double, !dbg !20728
    #dbg_value(double %i.ba, !20477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %i.ba, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20592)
    #dbg_value(i64 1, !20477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20584)
    #dbg_value(i64 1, !20585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20592)
    #dbg_value(i128 %.sroa.10130.0, !20589, !DIExpression(), !20597)
  %i.bb = sitofp i128 %.sroa.10130.0 to double, !dbg !20730
    #dbg_value(double %i.bb, !20478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %i.bb, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20594)
    #dbg_value(i64 1, !20478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20584)
    #dbg_value(i64 1, !20585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20594)
  br label %.thread, !dbg !20731

.thread133:                                       ; preds = %bb.t, %bb.v
    #dbg_value(i128 %.sroa.10130.0, !20589, !DIExpression(), !20597)
  %i.bc = sitofp i128 %.sroa.10130.0 to double, !dbg !20730
    #dbg_value(double %i.bc, !20478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %i.bc, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20594)
    #dbg_value(i64 1, !20478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20584)
    #dbg_value(i64 1, !20585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20594)
  br label %.thread, !dbg !20731

.thread:                                          ; preds = %bb.v, %.thread134, %.thread133, %bb.w
  %.sroa.1020.0 = phi double [ %i.bb, %bb.w ], [ %i.bc, %.thread133 ], [ %.sroa.8129.0, %.thread134 ], [ %.sroa.8129.0, %bb.v ], !dbg !20566
  %.sroa.7.1 = phi double [ %i.ba, %bb.w ], [ %.sroa.8127.0, %.thread133 ], [ %i.az, %.thread134 ], [ %.sroa.8127.0, %bb.v ], !dbg !20566
    #dbg_value(double %.sroa.7.1, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20592)
    #dbg_value(double %.sroa.7.1, !20477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %.sroa.1020.0, !20585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20594)
    #dbg_value(double %.sroa.1020.0, !20478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20584)
    #dbg_value(double %.sroa.7.1, !20598, !DIExpression(), !20602)
    #dbg_value(double %.sroa.7.1, !20494, !DIExpression(), !20603)
    #dbg_value(double %.sroa.1020.0, !20599, !DIExpression(), !20602)
    #dbg_value(double %.sroa.1020.0, !20495, !DIExpression(), !20603)
  %i.bd = tail call double @llvm.pow.f64(double %.sroa.7.1, double %.sroa.1020.0), !dbg !20732
    #dbg_value(double %i.bd, !20604, !DIExpression(), !20607)
  store i8 7, ptr %i.i, align 8, !dbg !20733
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !20733
  store double %i.bd, ptr %.sroa.488.0..sroa_idx, align 8, !dbg !20733
  br label %bb.ae, !dbg !20734

bb.x:                                             ; preds = %bb.u
    #dbg_value(i128 %.sroa.10.0, !20484, !DIExpression(), !20608)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !20735
    #dbg_value(i128 %.sroa.10130.0, !20485, !DIExpression(), !20608)
    #dbg_value(i128 %.sroa.10130.0, !20572, !DIExpression(), !20609)
  store i128 %.sroa.10130.0, ptr %i.h, align 16, !dbg !20735
  %or.cond.not137 = icmp ult i128 %.sroa.10130.0, 4294967296, !dbg !20736
  br i1 %or.cond.not137, label %bb.y, label %bb.af, !dbg !20736

bb.y:                                             ; preds = %bb.x
    #dbg_value(i128 %.sroa.10130.0, !20540, !DIExpression(DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !20611)
    #dbg_value(i8 0, !20540, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20611)
    #dbg_value(ptr %i.h, !20559, !DIExpression(), !20611)
    #dbg_value(i128 %.sroa.10130.0, !20530, !DIExpression(DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !20612)
    #dbg_value(i8 -1, !20530, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20612)
    #dbg_value(i128 %.sroa.10130.0, !20486, !DIExpression(DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !20614)
    #dbg_value(i128 %.sroa.10.0, !20615, !DIExpression(), !20415)
    #dbg_value(i128 %.sroa.10.0, !20634, !DIExpression(), !20416)
    #dbg_value(i128 %.sroa.10.0, !20636, !DIExpression(), !20417)
    #dbg_value(i128 %.sroa.10.0, !20620, !DIExpression(), !20419)
    #dbg_value(i128 %.sroa.10.0, !20615, !DIExpression(), !20421)
    #dbg_value(i128 %.sroa.10.0, !20620, !DIExpression(), !20423)
    #dbg_value(i128 %.sroa.10.0, !20615, !DIExpression(), !20425)
    #dbg_value(i128 %.sroa.10.0, !20620, !DIExpression(), !20426)
    #dbg_value(i128 %.sroa.10130.0, !20635, !DIExpression(DW_OP_LLVM_convert, 128, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !20416)
    #dbg_value(i128 -1, !20648, !DIExpression(), !20429)
    #dbg_value(i128 -1, !20651, !DIExpression(), !20432)
    #dbg_value(i128 1, !20648, !DIExpression(), !20434)
    #dbg_value(i128 1, !20651, !DIExpression(), !20436)
    #dbg_value(i128 1, !20616, !DIExpression(), !20439)
    #dbg_value(i128 1, !20637, !DIExpression(), !20440)
    #dbg_value(i128 1, !20619, !DIExpression(), !20442)
    #dbg_value(i128 1, !20616, !DIExpression(), !20444)
    #dbg_value(i128 1, !20619, !DIExpression(), !20423)
    #dbg_value(i128 1, !20616, !DIExpression(), !20425)
    #dbg_value(i128 1, !20619, !DIExpression(), !20445)
  %i.be = icmp eq i128 %.sroa.10130.0, 0, !dbg !20737
  br i1 %i.be, label %_RNvMs2_NtCsf3Ta7LF998c_4core3numn11checked_pow.exit, label %.preheader88.i.preheader, !dbg !20737

.preheader88.i.preheader:                         ; preds = %bb.y
  %i.bf = trunc nuw i128 %.sroa.10130.0 to i32, !dbg !20738
    #dbg_value(i32 %i.bf, !20540, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !20611)
    #dbg_value(i32 %i.bf, !20486, !DIExpression(), !20614)
    #dbg_value(i32 %i.bf, !20530, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !20612)
    #dbg_value(i32 %i.bf, !20635, !DIExpression(), !20416)
  br label %.preheader88.i, !dbg !20739

.preheader88.i:                                   ; preds = %.preheader88.i.preheader, %bb.ac
  %.sroa.033.0.i = phi i128 [ %.sroa.033.1.i, %bb.ac ], [ 1, %.preheader88.i.preheader ], !dbg !20740 ; 2 uses
  %.sroa.016.0.i = phi i32 [ %i.bo, %bb.ac ], [ %i.bf, %.preheader88.i.preheader ] ; 3 uses
  %.sroa.0.0.i = phi i128 [ %i.bn, %bb.ac ], [ %.sroa.10.0, %.preheader88.i.preheader ] ; 3 uses
    #dbg_value(i128 %.sroa.0.0.i, !20620, !DIExpression(), !20419)
    #dbg_value(i128 %.sroa.0.0.i, !20636, !DIExpression(), !20417)
    #dbg_value(i128 %.sroa.0.0.i, !20634, !DIExpression(), !20416)
    #dbg_value(i128 %.sroa.0.0.i, !20615, !DIExpression(), !20415)
    #dbg_value(i32 %.sroa.016.0.i, !20635, !DIExpression(), !20416)
    #dbg_value(i128 %.sroa.033.0.i, !20619, !DIExpression(), !20442)
    #dbg_value(i128 %.sroa.033.0.i, !20637, !DIExpression(), !20440)
    #dbg_value(i128 %.sroa.033.0.i, !20616, !DIExpression(), !20439)
  %i.bg = and i32 %.sroa.016.0.i, 1, !dbg !20739
  %.not.i = icmp eq i32 %i.bg, 0, !dbg !20739
  br i1 %.not.i, label %bb.ab, label %bb.z, !dbg !20739

bb.z:                                             ; preds = %.preheader88.i
    #dbg_value(i128 %.sroa.0.0.i, !20615, !DIExpression(), !20439)
    #dbg_value(i128 %.sroa.0.0.i, !20620, !DIExpression(), !20445)
  %i.bh = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.sroa.033.0.i, i128 %.sroa.0.0.i), !dbg !20741 ; 2 uses
  %i.bi = extractvalue { i128, i1 } %i.bh, 1, !dbg !20741
    #dbg_value(i128 poison, !20627, !DIExpression(), !20446)
    #dbg_value(i1 %i.bi, !20658, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20449)
    #dbg_value(i1 %i.bi, !20628, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20446)
  br i1 %i.bi, label %.split, label %bb.aa, !dbg !20742, !prof !4698

bb.aa:                                            ; preds = %bb.z
  %i.bj = extractvalue { i128, i1 } %i.bh, 0, !dbg !20741 ; 2 uses
    #dbg_value(i128 %i.bj, !20627, !DIExpression(), !20446)
    #dbg_value(i128 %i.bj, !20616, !DIExpression(), !20439)
    #dbg_value(i128 %i.bj, !20637, !DIExpression(), !20440)
    #dbg_value(i128 %i.bj, !20619, !DIExpression(), !20442)
    #dbg_value(i128 %i.bj, !20616, !DIExpression(), !20444)
    #dbg_value(i128 %i.bj, !20619, !DIExpression(), !20423)
    #dbg_value(i128 %i.bj, !20616, !DIExpression(), !20425)
    #dbg_value(i128 %i.bj, !20619, !DIExpression(), !20445)
  %i.bk = icmp eq i32 %.sroa.016.0.i, 1, !dbg !20743
  br i1 %i.bk, label %_RNvMs2_NtCsf3Ta7LF998c_4core3numn11checked_pow.exit, label %bb.ab, !dbg !20743

bb.ab:                                            ; preds = %bb.aa, %.preheader88.i
  %.sroa.033.1.i = phi i128 [ %i.bj, %bb.aa ], [ %.sroa.033.0.i, %.preheader88.i ], !dbg !20740
    #dbg_value(i128 %.sroa.033.1.i, !20619, !DIExpression(), !20442)
    #dbg_value(i128 %.sroa.033.1.i, !20637, !DIExpression(), !20440)
    #dbg_value(i128 %.sroa.033.1.i, !20616, !DIExpression(), !20439)
    #dbg_value(i32 poison, !20635, !DIExpression(), !20416)
    #dbg_value(i128 %.sroa.0.0.i, !20616, !DIExpression(), !20415)
    #dbg_value(i128 %.sroa.0.0.i, !20619, !DIExpression(), !20426)
  %i.bl = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.sroa.0.0.i, i128 %.sroa.0.0.i), !dbg !20744 ; 2 uses
  %i.bm = extractvalue { i128, i1 } %i.bl, 1, !dbg !20744
    #dbg_value(i128 poison, !20629, !DIExpression(), !20450)
    #dbg_value(i1 %i.bm, !20658, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20452)
    #dbg_value(i1 %i.bm, !20630, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20450)
  br i1 %i.bm, label %.split, label %bb.ac, !dbg !20745, !prof !4698

bb.ac:                                            ; preds = %bb.ab
  %i.bn = extractvalue { i128, i1 } %i.bl, 0, !dbg !20744
    #dbg_value(i128 %i.bn, !20629, !DIExpression(), !20450)
  %i.bo = lshr i32 %.sroa.016.0.i, 1, !dbg !20746
    #dbg_value(i32 %i.bo, !20635, !DIExpression(), !20416)
    #dbg_value(i128 %i.bn, !20615, !DIExpression(), !20415)
    #dbg_value(i128 %i.bn, !20634, !DIExpression(), !20416)
    #dbg_value(i128 %i.bn, !20636, !DIExpression(), !20417)
    #dbg_value(i128 %i.bn, !20620, !DIExpression(), !20419)
    #dbg_value(i128 %i.bn, !20615, !DIExpression(), !20421)
    #dbg_value(i128 %i.bn, !20620, !DIExpression(), !20423)
    #dbg_value(i128 %i.bn, !20615, !DIExpression(), !20425)
    #dbg_value(i128 %i.bn, !20620, !DIExpression(), !20426)
  br label %.preheader88.i, !dbg !20747

_RNvMs2_NtCsf3Ta7LF998c_4core3numn11checked_pow.exit: ; preds = %bb.aa, %bb.y
  %.sroa.17.0 = phi i128 [ 1, %bb.y ], [ %i.bj, %bb.aa ], !dbg !20748
    #dbg_value(i128 %.sroa.17.0, !20489, !DIExpression(), !20662)
  call void @_RNvXsp_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromnE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i128 noundef %.sroa.17.0), !dbg !20749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !20750
  br label %bb.ae, !dbg !20750

.split:                                           ; preds = %bb.z, %bb.ab
    #dbg_value(ptr %i.k, !20491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20663)
    #dbg_value(ptr %i.j, !20491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !20751
  store ptr %i.k, ptr %i.f, align 8, !dbg !20751
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !20751
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB6_7Display3fmtBA_, ptr %.sroa.479.0..sroa_idx, align 8, !dbg !20751
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !20751
  store ptr %i.j, ptr %i.bp, align 8, !dbg !20751
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !20751
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB6_7Display3fmtBA_, ptr %.sroa.483.0..sroa_idx, align 8, !dbg !20751
    #dbg_value(ptr @21, !20664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20668)
    #dbg_value(ptr %i.f, !20664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20668)
    #dbg_value(ptr null, !4712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20455)
    #dbg_value(i64 undef, !4712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20455)
    #dbg_value(ptr poison, !4728, !DIExpression(), !20455)
    #dbg_declare(ptr poison, !4729, !DIExpression(), !20456)
    #dbg_value(ptr poison, !4732, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20458)
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @21, ptr noundef nonnull %i.f), !dbg !20752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !20753
  call void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error7messageNtNtCsgCecv3eZDcN_5alloc6string6StringEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !20754
  br label %bb.ad, !dbg !20755

bb.ad:                                            ; preds = %bb.af, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !20750
  br label %bb.p, !dbg !20722

bb.ae:                                            ; preds = %_RNvMs2_NtCsf3Ta7LF998c_4core3numn11checked_pow.exit, %.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !20756
  store i8 -1, ptr %0, align 8, !dbg !20756
  br label %bb.p, !dbg !20757

bb.af:                                            ; preds = %bb.x
    #dbg_value(i8 poison, !20540, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !20611)
    #dbg_value(ptr %i.h, !20559, !DIExpression(), !20611)
    #dbg_value(i8 poison, !20561, !DIExpression(), !20670)
    #dbg_value(ptr %i.h, !20485, !DIExpression(DW_OP_deref), !20608)
    #dbg_value(ptr %i.h, !20572, !DIExpression(DW_OP_deref), !20609)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20758
    #dbg_value(ptr poison, !20674, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20463)
    #dbg_value(i8 poison, !20678, !DIExpression(), !20463)
    #dbg_value(ptr %i.h, !20675, !DIExpression(), !20464)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20758, !noalias !20680
  store ptr %i.h, ptr %i.a, align 8, !dbg !20758, !noalias !20680
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20758
  store ptr @_RNvXs_NtNtCsf3Ta7LF998c_4core3fmt3numnNtB6_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !20758, !noalias !20680
    #dbg_value(ptr @1, !20681, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20469)
    #dbg_value(ptr %i.a, !20681, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20469)
    #dbg_value(ptr null, !4712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20471)
    #dbg_value(i64 undef, !4712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20471)
    #dbg_value(ptr poison, !4728, !DIExpression(), !20471)
    #dbg_declare(ptr poison, !4729, !DIExpression(), !20472)
    #dbg_value(ptr poison, !4732, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20474)
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @1, ptr noundef nonnull %i.a), !dbg !20759, !noalias !20680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20760, !noalias !20680
  call void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error7messageNtNtCsgCecv3eZDcN_5alloc6string6StringEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !20761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20762
  %.sroa.036.0.copyload = load i8, ptr %i.c, align 8, !dbg !20763
    #dbg_value(i8 %.sroa.036.0.copyload, !20530, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20612)
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4, !dbg !20763
  %.sroa.640.0.copyload = load i32, ptr %.sroa.640.0..sroa_idx, align 4, !dbg !20763
    #dbg_value(i32 %.sroa.640.0.copyload, !20530, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !20612)
    #dbg_value(i8 %.sroa.036.0.copyload, !20506, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20684)
    #dbg_value(i32 %.sroa.640.0.copyload, !20506, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !20684)
    #dbg_value(i8 %.sroa.036.0.copyload, !20499, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20685)
    #dbg_value(i8 %.sroa.036.0.copyload, !20487, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20686)
    #dbg_value(i32 %.sroa.640.0.copyload, !20499, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !20685)
    #dbg_value(i32 %.sroa.640.0.copyload, !20487, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !20686)
    #dbg_value(i8 %.sroa.036.0.copyload, !20498, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !20687)
    #dbg_value(i32 %.sroa.640.0.copyload, !20498, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !20687)
  store i8 %.sroa.036.0.copyload, ptr %0, align 8, !dbg !20764
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !20764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.473.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %i.d, i64 3, i1 false), !dbg !20764
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !20764
  store i32 %.sroa.640.0.copyload, ptr %.sroa.574.0..sroa_idx, align 4, !dbg !20764
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.675.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !dbg !20764
  br label %bb.ad, !dbg !20765
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs5yXxDE1DkoT_4tera5value6number3rem(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20773 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !20873, !DIExpression(), !20878)
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
    #dbg_value(ptr %1, !20858, !DIExpression(), !20879)
  store ptr %1, ptr %i.g, align 8
    #dbg_value(ptr %2, !20859, !DIExpression(), !20879)
  store ptr %2, ptr %i.f, align 8
    #dbg_declare(ptr %i.d, !20862, !DIExpression(), !20880)
    #dbg_value(ptr @19, !20881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20884)
    #dbg_value(i64 18, !20881, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20884)
    #dbg_value(ptr @19, !20885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20889)
    #dbg_value(i64 18, !20885, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20889)
    #dbg_value(ptr @19, !20886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20890)
    #dbg_value(i64 18, !20886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20890)
    #dbg_value(ptr @19, !20891, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20894)
    #dbg_value(i64 18, !20891, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20894)
    #dbg_value(ptr @19, !20895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20898)
    #dbg_value(i64 18, !20895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20898)
    #dbg_declare(ptr poison, !20899, !DIExpression(), !20905)
    #dbg_declare(ptr poison, !20910, !DIExpression(), !20916)
    #dbg_declare(ptr poison, !20917, !DIExpression(), !20921)
    #dbg_declare(ptr poison, !20922, !DIExpression(), !20926)
    #dbg_declare(ptr poison, !20927, !DIExpression(), !20934)
    #dbg_value(i64 0, !20935, !DIExpression(), !20941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20942), !dbg !21055
    #dbg_value(ptr %1, !5601, !DIExpression(), !20797)
    #dbg_declare(ptr poison, !5623, !DIExpression(), !20799)
  %i.h = load i8, ptr %1, align 8, !dbg !21056, !range !2967, !alias.scope !20942, !noalias !20943, !noundef !1418 ; 3 uses
  %i.i = icmp ne i8 %i.h, 10, !dbg !21056
  tail call void @llvm.assume(i1 %i.i), !dbg !21056
  %i.j = add nsw i8 %i.h, -2, !dbg !21056
  %i.k = icmp samesign ugt i8 %i.h, 1, !dbg !21056
  %narrow.i = select i1 %i.k, i8 %i.j, i8 8, !dbg !21056
end_hunk_0
