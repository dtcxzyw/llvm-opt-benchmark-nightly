Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/perf-b8ae0e33403d20a0.perf.5b1007c131bc3bb7-cgu.06?download=true
inline.NumInlined: 222
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE14record_n_innerCs7OITKvp9Irj_4perf:bb.a
    #dbg_value(ptr undef, !4758, !DIExpression(DW_OP_deref), !4777)
    #dbg_value(i64 %2, !4957, !DIExpression(), !4960)
  %i.az = tail call i64 @llvm.uadd.sat.i64(i64 %i.ay, i64 %2), !dbg !5021
  store i64 %i.az, ptr %i.ax, align 8, !dbg !5022
  br label %bb.z, !dbg !5023

bb.h:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !5024
  %i.bb = load i8, ptr %i.ba, align 8, !dbg !5024, !range !1732, !noundef !989
  %i.bc = trunc nuw i8 %i.bb to i1, !dbg !5024
  br i1 %i.bc, label %bb.k, label %bb.z, !dbg !5024

bb.i:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5025
  %i.be = load i64, ptr %i.bd, align 8, !dbg !5025, !noundef !989 ; 2 uses
  %i.bf = icmp ugt i64 %1, %i.be, !dbg !5026
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5026
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !5026
  %.sroa.0.1 = select i1 %i.bf, i64 %i.be, i64 %i.bh, !dbg !5026 ; 3 uses
    #dbg_value(i64 %.sroa.0.1, !4757, !DIExpression(), !4777)
    #dbg_value(ptr %0, !4838, !DIExpression(), !4592)
    #dbg_value(ptr %0, !4844, !DIExpression(), !4594)
    #dbg_value(ptr %0, !4855, !DIExpression(), !4596)
    #dbg_value(ptr %0, !4858, !DIExpression(), !4598)
    #dbg_value(ptr %0, !4862, !DIExpression(), !4601)
    #dbg_value(i64 %.sroa.0.1, !4842, !DIExpression(), !4592)
    #dbg_value(i64 %.sroa.0.1, !4848, !DIExpression(), !4594)
    #dbg_value(i64 %.sroa.0.1, !4856, !DIExpression(), !4596)
    #dbg_value(i64 %.sroa.0.1, !4859, !DIExpression(), !4598)
    #dbg_value(i32 -1, !4880, !DIExpression(), !4603)
  %i.bi = or i64 %.sroa.0.1, %i.d, !dbg !5027
    #dbg_value(i64 %i.bi, !4888, !DIExpression(), !4605)
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 false), !dbg !5028
  %i.bk = trunc nuw nsw i64 %i.bj to i8, !dbg !5027
  %i.bl = sub i8 %i.b, %i.bk, !dbg !5029          ; 2 uses
    #dbg_value(i8 %i.bl, !4849, !DIExpression(), !4606)
    #dbg_value(i8 %i.bl, !4860, !DIExpression(), !4598)
    #dbg_value(i8 %i.bl, !4890, !DIExpression(), !4608)
  %i.bm = add i8 %i.bl, %i.j, !dbg !5030
  %i.bn = and i8 %i.bm, 63, !dbg !5031
  %i.bo = zext nneg i8 %i.bn to i64, !dbg !5031
  %i.bp = lshr i64 %.sroa.0.1, %i.bo, !dbg !5031
  %i.bq = trunc i64 %i.bp to i32, !dbg !5031
    #dbg_value(i32 %i.bq, !4850, !DIExpression(), !4609)
  %i.br = zext i8 %i.bl to i32, !dbg !5032
  %i.bs = add nuw nsw i32 %i.br, 1, !dbg !5033
  %i.bt = shl i32 %i.bs, %i.u, !dbg !5033
    #dbg_value(i32 %i.bt, !4851, !DIExpression(), !4610)
  %i.bu = sub i32 %i.bq, %i.x, !dbg !5034
    #dbg_value(i32 %i.bu, !4852, !DIExpression(), !4611)
  %i.bv = add i32 %i.bu, %i.bt, !dbg !5035        ; 2 uses
    #dbg_value(i32 %i.bv, !4853, !DIExpression(), !4612)
    #dbg_value(ptr poison, !4885, !DIExpression(), !4613)
  %i.bw = icmp sgt i32 %i.bv, -1, !dbg !5036
  br i1 %i.bw, label %bb.j, label %bb.ab, !dbg !5036

bb.j:                                             ; preds = %bb.i
  %i.bx = zext nneg i32 %i.bv to i64, !dbg !5037  ; 2 uses
    #dbg_value(i64 %i.bx, !4876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4614)
    #dbg_value(i64 1, !4876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4614)
    #dbg_value(ptr %0, !4877, !DIExpression(), !4614)
    #dbg_value(i64 %i.bx, !4878, !DIExpression(), !4615)
    #dbg_value(i64 %i.bx, !4868, !DIExpression(), !4601)
    #dbg_value(i64 %i.bx, !4895, !DIExpression(), !4617)
    #dbg_value(i64 %i.bx, !4906, !DIExpression(), !4619)
    #dbg_value(ptr %0, !4911, !DIExpression(), !4621)
    #dbg_value(ptr %0, !4916, !DIExpression(), !4623)
    #dbg_value(ptr %0, !4919, !DIExpression(), !4625)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5038
  %i.bz = load i64, ptr %i.by, align 8, !dbg !5038, !alias.scope !4961, !noundef !989
    #dbg_value(ptr poison, !4901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4617)
    #dbg_value(ptr poison, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4619)
    #dbg_value(i64 %i.bz, !4901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4617)
    #dbg_value(i64 %i.bz, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4619)
  %i.ca = icmp ugt i64 %i.bz, %i.bx, !dbg !5039
  br i1 %i.ca, label %bb.aa, label %bb.ab, !dbg !5039

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4962), !dbg !5040
    #dbg_value(ptr %0, !1733, !DIExpression(), !4631)
    #dbg_value(ptr %0, !1763, !DIExpression(), !4633)
    #dbg_value(ptr %0, !1769, !DIExpression(), !4635)
    #dbg_value(i64 %1, !1748, !DIExpression(), !4631)
    #dbg_value(i64 %1, !1765, !DIExpression(), !4633)
    #dbg_value(i32 -1, !1775, !DIExpression(), !4637)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5041
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !5041, !alias.scope !4962, !noundef !989
  %i.cd = shl i64 %i.cc, 1, !dbg !5042
  %.not.i = icmp ult i64 %1, %i.cd, !dbg !5043
  br i1 %.not.i, label %bb.l, label %bb.m, !dbg !5043, !prof !1647

bb.l:                                             ; preds = %bb.k
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25, !dbg !5044, !noalias !4962
  unreachable, !dbg !5044

bb.m:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !5045
  %i.cf = load i32, ptr %i.ce, align 8, !dbg !5045, !alias.scope !4962, !noundef !989
    #dbg_value(i32 %i.cf, !4963, !DIExpression(), !4640)
  %i.cg = zext i32 %i.cf to i64, !dbg !5046
  %i.ch = and i8 %i.j, 63, !dbg !5047
  %i.ci = zext nneg i8 %i.ch to i64, !dbg !5047
  %i.cj = shl i64 %i.cg, %i.ci, !dbg !5047        ; 2 uses
    #dbg_value(i64 %i.cj, !1766, !DIExpression(), !4641)
    #dbg_value(i8 1, !1767, !DIExpression(), !4642)
  %.not2022.i = icmp ugt i64 %i.cj, %1, !dbg !5048
  br i1 %.not2022.i, label %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE6resizeCs7OITKvp9Irj_4perf.exit, label %.lr.ph.i, !dbg !5048

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.sroa.08.024.i = phi i8 [ %i.cm, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %.sroa.05.023.i = phi i64 [ %i.cl, %bb.n ], [ %i.cj, %bb.m ] ; 2 uses
    #dbg_value(i8 %.sroa.08.024.i, !1767, !DIExpression(), !4642)
    #dbg_value(i64 %.sroa.05.023.i, !1766, !DIExpression(), !4641)
  %i.ck = icmp slt i64 %.sroa.05.023.i, 0, !dbg !5049
  br i1 %i.ck, label %bb.o, label %bb.n, !dbg !5049

bb.n:                                             ; preds = %.lr.ph.i
  %i.cl = shl nuw i64 %.sroa.05.023.i, 1, !dbg !5050 ; 2 uses
    #dbg_value(i64 %i.cl, !1766, !DIExpression(), !4641)
  %i.cm = add i8 %.sroa.08.024.i, 1, !dbg !5051   ; 2 uses
    #dbg_value(i8 %i.cm, !1767, !DIExpression(), !4642)
  %.not20.i = icmp ugt i64 %i.cl, %1, !dbg !5048
  br i1 %.not20.i, label %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE6resizeCs7OITKvp9Irj_4perf.exit, label %.lr.ph.i, !dbg !5048

bb.o:                                             ; preds = %.lr.ph.i
  %i.cn = add i8 %.sroa.08.024.i, 1, !dbg !5052
    #dbg_value(i8 %i.cn, !1749, !DIExpression(), !4643)
  br label %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE6resizeCs7OITKvp9Irj_4perf.exit, !dbg !5053

_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE6resizeCs7OITKvp9Irj_4perf.exit: ; preds = %bb.n, %bb.m, %bb.o
  %.sroa.0.0.i52 = phi i8 [ %i.cn, %bb.o ], [ 1, %bb.m ], [ %i.cm, %bb.n ], !dbg !5054 ; 2 uses
    #dbg_value(i8 %.sroa.0.0.i52, !1749, !DIExpression(), !4643)
    #dbg_value(i8 %.sroa.0.0.i52, !1773, !DIExpression(), !4635)
    #dbg_value(i8 %.sroa.0.0.i52, !1785, !DIExpression(), !4645)
  %i.co = zext i8 %.sroa.0.0.i52 to i32, !dbg !5055
  %i.cp = add nuw nsw i32 %i.co, 1, !dbg !5056
  %i.cq = mul i32 %i.cp, %i.x, !dbg !5056
    #dbg_value(ptr poison, !1780, !DIExpression(), !4646)
  %i.cr = zext i32 %i.cq to i64, !dbg !5057
    #dbg_value(i64 %i.cr, !1750, !DIExpression(), !4647)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 90, !dbg !5058
  store i8 %.sroa.0.0.i52, ptr %i.cs, align 2, !dbg !5058, !alias.scope !4962
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5059 ; 2 uses
  store i64 %1, ptr %i.ct, align 8, !dbg !5059, !alias.scope !4962
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyE6resizeCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.cr, i64 noundef 0), !dbg !5060
    #dbg_value(ptr %0, !4965, !DIExpression(), !4968)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5061
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !5061, !noundef !989 ; 5 uses
    #dbg_value(i64 %i.cv, !4817, !DIExpression(), !4820)
  %i.cw = icmp ult i64 %i.cv, 1152921504606846976, !dbg !5062
  tail call void @llvm.assume(i1 %i.cw), !dbg !5063
  %i.cx = icmp eq i64 %i.cv, 0, !dbg !5064
  br i1 %i.cx, label %bb.r, label %bb.p, !dbg !5064, !prof !1647

bb.p:                                             ; preds = %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE6resizeCs7OITKvp9Irj_4perf.exit
    #dbg_value(i64 %i.cv, !4825, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4829)
    #dbg_value(i64 1, !4825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4969), !dbg !5065
    #dbg_value(ptr %0, !1794, !DIExpression(), !4652)
    #dbg_value(ptr %0, !1803, !DIExpression(), !4654)
    #dbg_value(i64 %i.cv, !1798, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4652)
    #dbg_value(i64 4294967295, !1811, !DIExpression(), !4656)
    #dbg_value(ptr @17, !1827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4658)
    #dbg_value(i64 21, !1827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4658)
    #dbg_value(!DIArgList(i64 poison, i8 poison), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shr, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4659)
    #dbg_value(ptr poison, !1825, !DIExpression(), !4660)
  %i.cy = icmp samesign ult i64 %i.cv, 4294967297, !dbg !5066
  br i1 %i.cy, label %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE9value_forCs7OITKvp9Irj_4perf.exit, label %bb.q, !dbg !5066, !prof !1835

bb.q:                                             ; preds = %bb.p
    #dbg_value(i32 poison, !1831, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4658)
    #dbg_value(i32 poison, !1831, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4658)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #25, !dbg !5067, !noalias !4969
  unreachable, !dbg !5067

_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE9value_forCs7OITKvp9Irj_4perf.exit: ; preds = %bb.p
  %i.cz = add nsw i64 %i.cv, -1, !dbg !5068       ; 2 uses
    #dbg_value(i64 %i.cz, !4825, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4829)
    #dbg_value(i64 %i.cz, !1798, !DIExpression(), !4652)
  %i.da = load i8, ptr %i.r, align 1, !dbg !5069, !alias.scope !4969, !noundef !989 ; 2 uses
    #dbg_value(!DIArgList(i64 %i.cz, i8 %i.da), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shr, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4659)
  %i.db = and i8 %i.da, 63, !dbg !5070
    #dbg_value(!DIArgList(i64 %i.cz, i8 %i.db), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shr, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4659)
  %i.dc = zext nneg i8 %i.db to i64, !dbg !5070
    #dbg_value(!DIArgList(i64 %i.cz, i64 %i.dc), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4659)
  %i.dd = lshr i64 %i.cz, %i.dc, !dbg !5070       ; 2 uses
    #dbg_value(i64 %i.dd, !1800, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !4659)
  %i.de = trunc nuw i64 %i.cz to i32, !dbg !5071
    #dbg_value(i32 %i.de, !1831, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4658)
    #dbg_value(i32 1, !1831, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4658)
  %i.df = load i32, ptr %i.w, align 4, !dbg !5072, !alias.scope !4969, !noundef !989 ; 3 uses
  %i.dg = add i32 %i.df, -1, !dbg !5073
  %i.dh = and i32 %i.dg, %i.de, !dbg !5074
    #dbg_value(!DIArgList(i32 %i.dh, i32 %i.df), !1801, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !4661)
    #dbg_value(!DIArgList(i32 %i.dh, i32 %i.df), !1808, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !4654)
    #dbg_value(!DIArgList(i32 %i.dh, i32 %i.df), !1841, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !4663)
  %i.di = icmp eq i64 %i.dd, 0, !dbg !5075
  %i.dj = select i1 %i.di, i32 0, i32 %i.df, !dbg !5075
  %spec.select.i = add i32 %i.dj, %i.dh, !dbg !5075
  %i.dk = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 1), !dbg !5075
    #dbg_value(i64 %i.dk, !1800, !DIExpression(DW_OP_plus_uconst, 255, DW_OP_stack_value), !4659)
    #dbg_value(i32 %spec.select.i, !1841, !DIExpression(), !4663)
    #dbg_value(i32 %spec.select.i, !1808, !DIExpression(), !4654)
    #dbg_value(i32 %spec.select.i, !1801, !DIExpression(), !4661)
  %i.dl = trunc i64 %i.dk to i8, !dbg !5076
    #dbg_value(i8 %i.dl, !1807, !DIExpression(DW_OP_plus_uconst, 63, DW_OP_stack_value), !4654)
  %i.dm = zext i32 %spec.select.i to i64, !dbg !5077
  %i.dn = load i8, ptr %i.i, align 1, !dbg !5078, !alias.scope !4969, !noundef !989 ; 3 uses
  %i.do = add i8 %i.dn, 63, !dbg !5076
  %i.dp = add i8 %i.do, %i.dl, !dbg !5079
  %i.dq = and i8 %i.dp, 63, !dbg !5080
  %i.dr = zext nneg i8 %i.dq to i64, !dbg !5080
  %i.ds = shl i64 %i.dm, %i.dr, !dbg !5080        ; 3 uses
    #dbg_value(i64 %i.ds, !4791, !DIExpression(), !4794)
  %i.dt = icmp eq i64 %i.ds, -1, !dbg !5081
  %.pre = load i8, ptr %i.a, align 4, !dbg !5082  ; 2 uses
  %.pre64 = load i64, ptr %i.c, align 8, !dbg !5083 ; 2 uses
  br i1 %i.dt, label %bb.t, label %bb.s, !dbg !5081

bb.r:                                             ; preds = %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE6resizeCs7OITKvp9Irj_4perf.exit
    #dbg_value(i64 poison, !4825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4829)
    #dbg_value(i64 poison, !4825, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4829)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25, !dbg !5084
  unreachable, !dbg !5084

bb.s:                                             ; preds = %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE9value_forCs7OITKvp9Irj_4perf.exit
    #dbg_value(ptr %0, !1845, !DIExpression(), !4668)
    #dbg_value(ptr %0, !1849, !DIExpression(), !4670)
    #dbg_value(ptr %0, !1855, !DIExpression(), !4672)
    #dbg_value(ptr %0, !1858, !DIExpression(), !4674)
    #dbg_value(ptr %0, !1862, !DIExpression(), !4676)
    #dbg_value(ptr %0, !1866, !DIExpression(), !4678)
    #dbg_value(ptr %0, !1855, !DIExpression(), !4680)
    #dbg_value(i64 %i.ds, !1847, !DIExpression(), !4668)
    #dbg_value(i64 %i.ds, !1851, !DIExpression(), !4670)
    #dbg_value(i64 %i.ds, !1856, !DIExpression(), !4672)
    #dbg_value(i64 %i.ds, !1859, !DIExpression(), !4674)
    #dbg_value(i64 %i.ds, !1868, !DIExpression(), !4678)
    #dbg_value(i64 %i.ds, !1856, !DIExpression(), !4680)
  %i.du = or i64 %.pre64, %i.ds, !dbg !5085
    #dbg_value(i64 %i.du, !1871, !DIExpression(), !4682)
  %i.dv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.du, i1 false), !dbg !5086
  %i.dw = trunc nuw nsw i64 %i.dv to i8, !dbg !5085
    #dbg_value(!DIArgList(i8 %.pre, i8 0, i8 %i.dw), !1852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !4683)
    #dbg_value(!DIArgList(i8 %.pre, i8 0, i8 %i.dw), !1860, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !4674)
    #dbg_value(!DIArgList(i8 %.pre, i8 0, i8 %i.dw), !1863, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !4676)
  %i.dx = add i8 %.pre, %i.dn, !dbg !5087
  %i.dy = sub i8 %i.dx, %i.dw, !dbg !5088
  %i.dz = and i8 %i.dy, 63, !dbg !5089
  %i.ea = zext nneg i8 %i.dz to i64, !dbg !5089   ; 3 uses
  %i.eb = lshr i64 %i.ds, %i.ea, !dbg !5089
  %i.ec = and i64 %i.eb, 4294967295, !dbg !5090
    #dbg_value(i64 %i.eb, !1853, !DIExpression(), !4685)
    #dbg_value(i64 %i.eb, !1864, !DIExpression(), !4676)
    #dbg_value(i64 %i.eb, !1874, !DIExpression(), !4686)
  %i.ed = shl i64 %i.ec, %i.ea, !dbg !5091
    #dbg_value(i64 %i.ed, !1876, !DIExpression(), !4688)
    #dbg_value(i64 %i.du, !1871, !DIExpression(), !4690)
    #dbg_value(!DIArgList(i8 %.pre, i8 0, i8 %i.dw), !1869, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !4691)
  %i.ee = shl nuw i64 1, %i.ea, !dbg !5092
    #dbg_value(i64 %i.ee, !1877, !DIExpression(), !4688)
  %i.ef = tail call noundef range(i64 1, 0) i64 @llvm.uadd.sat.i64(i64 %i.ed, i64 %i.ee), !dbg !5093
  %i.eg = add i64 %i.ef, -1, !dbg !5094
  br label %bb.t, !dbg !5095

bb.t:                                             ; preds = %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE9value_forCs7OITKvp9Irj_4perf.exit, %bb.s
  %.sroa.014.0 = phi i64 [ %i.eg, %bb.s ], [ -1, %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE9value_forCs7OITKvp9Irj_4perf.exit ], !dbg !4794
  store i64 %.sroa.014.0, ptr %i.ct, align 8, !dbg !5096
    #dbg_value(ptr %0, !4838, !DIExpression(), !4692)
    #dbg_value(ptr %0, !4844, !DIExpression(), !4693)
    #dbg_value(ptr %0, !4855, !DIExpression(), !4694)
    #dbg_value(ptr %0, !4858, !DIExpression(), !4696)
    #dbg_value(ptr %0, !4862, !DIExpression(), !4699)
    #dbg_value(i64 %1, !4842, !DIExpression(), !4692)
    #dbg_value(i64 %1, !4848, !DIExpression(), !4693)
    #dbg_value(i64 %1, !4856, !DIExpression(), !4694)
    #dbg_value(i64 %1, !4859, !DIExpression(), !4696)
    #dbg_value(i32 -1, !4880, !DIExpression(), !4701)
  %i.eh = or i64 %.pre64, %1, !dbg !5097
    #dbg_value(i64 %i.eh, !4888, !DIExpression(), !4703)
  %i.ei = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eh, i1 false), !dbg !5098
  %i.ej = trunc nuw nsw i64 %i.ei to i8, !dbg !5097
  %i.ek = sub i8 %.pre, %i.ej, !dbg !5082         ; 2 uses
    #dbg_value(i8 %i.ek, !4849, !DIExpression(), !4704)
    #dbg_value(i8 %i.ek, !4860, !DIExpression(), !4696)
    #dbg_value(i8 %i.ek, !4890, !DIExpression(), !4706)
  %i.el = add i8 %i.ek, %i.dn, !dbg !5099
  %i.em = and i8 %i.el, 63, !dbg !5100
  %i.en = zext nneg i8 %i.em to i64, !dbg !5100
  %i.eo = lshr i64 %1, %i.en, !dbg !5100
  %i.ep = trunc i64 %i.eo to i32, !dbg !5100
    #dbg_value(i32 %i.ep, !4850, !DIExpression(), !4707)
  %i.eq = zext i8 %i.ek to i32, !dbg !5101
  %i.er = add nuw nsw i32 %i.eq, 1, !dbg !5102
  %i.es = and i8 %i.da, 31, !dbg !5102
  %i.et = zext nneg i8 %i.es to i32, !dbg !5102
  %i.eu = shl i32 %i.er, %i.et, !dbg !5102
    #dbg_value(i32 %i.eu, !4851, !DIExpression(), !4708)
  %i.ev = sub i32 %i.ep, %i.df, !dbg !5103
    #dbg_value(i32 %i.ev, !4852, !DIExpression(), !4709)
  %i.ew = add i32 %i.ev, %i.eu, !dbg !5104        ; 2 uses
    #dbg_value(i32 %i.ew, !4853, !DIExpression(), !4710)
    #dbg_value(ptr poison, !4885, !DIExpression(), !4711)
  %i.ex = icmp sgt i32 %i.ew, -1, !dbg !5105
  br i1 %i.ex, label %bb.u, label %bb.w, !dbg !5105

bb.u:                                             ; preds = %bb.t
  %i.ey = zext nneg i32 %i.ew to i64, !dbg !5106  ; 2 uses
    #dbg_value(i64 %i.ey, !4876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4712)
    #dbg_value(i64 1, !4876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4712)
    #dbg_value(ptr %0, !4877, !DIExpression(), !4712)
    #dbg_value(i64 %i.ey, !4878, !DIExpression(), !4713)
    #dbg_value(i64 %i.ey, !4868, !DIExpression(), !4699)
    #dbg_value(i64 %i.ey, !4895, !DIExpression(), !4715)
    #dbg_value(i64 %i.ey, !4906, !DIExpression(), !4717)
    #dbg_value(ptr %0, !4911, !DIExpression(), !4719)
    #dbg_value(ptr %0, !4916, !DIExpression(), !4721)
    #dbg_value(ptr %0, !4919, !DIExpression(), !4723)
    #dbg_value(ptr poison, !4901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4715)
    #dbg_value(ptr poison, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4717)
    #dbg_value(i64 %i.cv, !4901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4715)
    #dbg_value(i64 %i.cv, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4717)
  %i.ez = icmp samesign ugt i64 %i.cv, %i.ey, !dbg !5107
  br i1 %i.ez, label %bb.v, label %bb.w, !dbg !5107

bb.v:                                             ; preds = %bb.u
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5108
  %i.fb = load ptr, ptr %i.fa, align 8, !dbg !5108, !alias.scope !4970, !nonnull !989, !noundef !989
    #dbg_value(ptr %i.fb, !4901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4715)
    #dbg_value(ptr %i.fb, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4717)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ey, !dbg !5109 ; 2 uses
    #dbg_value(ptr %i.fc, !4808, !DIExpression(), !4831)
    #dbg_value(ptr %i.fc, !4766, !DIExpression(), !4971)
    #dbg_value(ptr undef, !4758, !DIExpression(DW_OP_deref), !4777)
  %.val48 = load i64, ptr %i.fc, align 8, !dbg !5110, !noundef !989 ; 2 uses
    #dbg_value(ptr poison, !4973, !DIExpression(), !4731)
    #dbg_value(ptr poison, !4978, !DIExpression(), !4731)
    #dbg_value(i64 %.val48, !4980, !DIExpression(), !4734)
    #dbg_value(i64 %2, !4981, !DIExpression(), !4734)
  %i.fd = add i64 %.val48, %2, !dbg !5111         ; 2 uses
  %.not = icmp ult i64 %i.fd, %.val48, !dbg !5111
    #dbg_value(i1 %.not, !4833, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !4837)
    #dbg_value(i64 poison, !4833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4837)
  br i1 %.not, label %bb.y, label %bb.x, !dbg !5112, !prof !1647

bb.w:                                             ; preds = %bb.t, %bb.u
    #dbg_value(ptr null, !4808, !DIExpression(), !4831)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25, !dbg !5113
  unreachable, !dbg !5113

bb.x:                                             ; preds = %bb.v
    #dbg_value(i64 %i.fd, !4833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4837)
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !5114
  br label %bb.e, !dbg !5115

bb.y:                                             ; preds = %bb.v
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #25, !dbg !5116
  unreachable, !dbg !5116

bb.z:                                             ; preds = %bb.h, %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE14update_min_maxCs7OITKvp9Irj_4perf.exit
  %.sroa.06.1 = phi i8 [ 2, %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE14update_min_maxCs7OITKvp9Irj_4perf.exit ], [ 0, %bb.h ], !dbg !4935
  ret i8 %.sroa.06.1, !dbg !5023

bb.aa:                                            ; preds = %bb.j
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5117
  %i.ff = load ptr, ptr %i.fe, align 8, !dbg !5117, !alias.scope !4961, !nonnull !989, !noundef !989
    #dbg_value(ptr %i.ff, !4901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4617)
    #dbg_value(ptr %i.ff, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4619)
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.bx, !dbg !5118 ; 2 uses
    #dbg_value(ptr %i.fg, !4808, !DIExpression(), !4813)
    #dbg_value(ptr %i.fg, !4763, !DIExpression(), !4984)
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !5119, !noundef !989
    #dbg_value(i64 %i.fh, !4926, !DIExpression(), !4739)
    #dbg_value(i64 %i.fh, !4932, !DIExpression(), !4741)
    #dbg_value(i64 %2, !4930, !DIExpression(), !4739)
    #dbg_value(i64 %2, !4933, !DIExpression(), !4741)
  %i.fi = tail call noundef i64 @llvm.uadd.sat.i64(i64 %i.fh, i64 %2), !dbg !5120
  store i64 %i.fi, ptr %i.fg, align 8, !dbg !5121
  br label %bb.e, !dbg !5115

bb.ab:                                            ; preds = %bb.i, %bb.j
    #dbg_value(ptr null, !4808, !DIExpression(), !4813)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 63, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25, !dbg !5122
  unreachable, !dbg !5122
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE15new_with_boundsCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5142 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 23 uses
    #dbg_value(i64 %1, !5215, !DIExpression(), !5239)
    #dbg_value(i64 %2, !5216, !DIExpression(), !5239)
    #dbg_value(i8 %3, !5217, !DIExpression(), !5239)
    #dbg_value(i8 %3, !5240, !DIExpression(), !5243)
    #dbg_declare(ptr %i.a, !5226, !DIExpression(), !5244)
    #dbg_value(i32 10, !5245, !DIExpression(), !5249)
    #dbg_value(i32 10, !5250, !DIExpression(), !5255)
  %i.b = icmp eq i64 %1, 0, !dbg !5332
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !5332

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE15new_with_boundsCs7OITKvp9Irj_4perf:bb.a
  %.sroa.05.023.i = phi i64 [ %i.bj, %bb.n ], [ %i.bd, %bb.m ] ; 2 uses
    #dbg_value(i8 %.sroa.08.024.i, !1767, !DIExpression(), !5193)
    #dbg_value(i64 %.sroa.05.023.i, !1766, !DIExpression(), !5192)
  %i.be = icmp slt i64 %.sroa.05.023.i, 0, !dbg !5372
  br i1 %i.be, label %bb.o, label %bb.n, !dbg !5372

.loopexit.i:                                      ; preds = %bb.n, %bb.o, %bb.m
  %.sroa.0.0.i33 = phi i8 [ %i.bl, %bb.o ], [ 1, %bb.m ], [ %i.bk, %bb.n ], !dbg !5373 ; 2 uses
    #dbg_value(i8 %.sroa.0.0.i33, !1749, !DIExpression(), !5194)
    #dbg_value(i8 %.sroa.0.0.i33, !1773, !DIExpression(), !5189)
    #dbg_value(i8 %.sroa.0.0.i33, !1785, !DIExpression(), !5196)
  %i.bf = zext i8 %.sroa.0.0.i33 to i32, !dbg !5374
  %i.bg = add nuw nsw i32 %i.bf, 1, !dbg !5375
  %i.bh = mul i32 %i.bg, %i.aj, !dbg !5375
    #dbg_value(ptr poison, !1780, !DIExpression(), !5197)
  %i.bi = zext i32 %i.bh to i64, !dbg !5376
    #dbg_value(i64 %i.bi, !1750, !DIExpression(), !5198)
  store i8 %.sroa.0.0.i33, ptr %i.as, align 2, !dbg !5377, !alias.scope !5330
  store i64 %2, ptr %i.ap, align 8, !dbg !5378, !alias.scope !5330
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyE6resizeCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a, i64 noundef %i.bi, i64 noundef 0)
          to label %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE6resizeCs7OITKvp9Irj_4perf.exit unwind label %bb.q, !dbg !5379

bb.n:                                             ; preds = %.lr.ph.i32
  %i.bj = shl nuw i64 %.sroa.05.023.i, 1, !dbg !5380 ; 2 uses
    #dbg_value(i64 %i.bj, !1766, !DIExpression(), !5192)
  %i.bk = add i8 %.sroa.08.024.i, 1, !dbg !5381   ; 2 uses
    #dbg_value(i8 %i.bk, !1767, !DIExpression(), !5193)
  %.not20.i = icmp ugt i64 %i.bj, %2, !dbg !5371
  br i1 %.not20.i, label %.loopexit.i, label %.lr.ph.i32, !dbg !5371

bb.o:                                             ; preds = %.lr.ph.i32
  %i.bl = add i8 %.sroa.08.024.i, 1, !dbg !5382
    #dbg_value(i8 %i.bl, !1749, !DIExpression(), !5194)
  br label %.loopexit.i, !dbg !5383

bb.p:                                             ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5384
  store i8 4, ptr %i.bm, align 8, !dbg !5384
  store i64 -1, ptr %0, align 8, !dbg !5384
  br label %bb.r, !dbg !5385

bb.q:                                             ; preds = %.loopexit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsgR93kpVnVos_12hdrhistogram9HistogramyEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(96) %i.a) #23
          to label %bb.t unwind label %bb.s, !dbg !5386

_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE6resizeCs7OITKvp9Irj_4perf.exit: ; preds = %.loopexit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !5387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5386
  br label %bb.r, !dbg !5388

bb.r:                                             ; preds = %bb.p, %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE6resizeCs7OITKvp9Irj_4perf.exit, %bb.l, %bb.g, %bb.e, %bb.c
  ret void, !dbg !5388

bb.s:                                             ; preds = %bb.q
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !5389
  unreachable, !dbg !5389

bb.t:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.bn, !dbg !5389
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE17value_at_quantileCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, double noundef %1) unnamed_addr #0 !dbg !5398 {
bb.a:
    #dbg_value(ptr poison, !5480, !DIExpression(), !5490)
    #dbg_value(ptr poison, !5502, !DIExpression(), !5505)
    #dbg_value(ptr poison, !5497, !DIExpression(), !5506)
    #dbg_value(double %1, !5466, !DIExpression(), !5507)
    #dbg_value(double %1, !5467, !DIExpression(), !5508)
    #dbg_value(ptr %0, !5465, !DIExpression(), !5507)
    #dbg_value(ptr %0, !5509, !DIExpression(), !5515)
    #dbg_value(ptr %0, !5516, !DIExpression(), !5520)
    #dbg_value(ptr %0, !5521, !DIExpression(), !5526)
    #dbg_value(ptr %0, !5527, !DIExpression(), !5532)
    #dbg_value(ptr %0, !5533, !DIExpression(), !5537)
    #dbg_value(i64 1, !5538, !DIExpression(), !5545)
    #dbg_value(i64 1, !5546, !DIExpression(), !5552)
  %i.a = fcmp ogt double %1, 1.000000e+00, !dbg !5611
  %spec.store.select = select i1 %i.a, double 1.000000e+00, double %1, !dbg !5611 ; 2 uses
    #dbg_value(double %spec.store.select, !5466, !DIExpression(), !5507)
    #dbg_value(double %spec.store.select, !5467, !DIExpression(), !5508)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !5612
  %i.c = load i64, ptr %i.b, align 8, !dbg !5612, !noundef !989
  %i.d = uitofp i64 %i.c to double, !dbg !5612
  %i.e = fmul double %spec.store.select, %i.d, !dbg !5613
    #dbg_value(double %i.e, !5468, !DIExpression(), !5553)
    #dbg_value(double %i.e, !5554, !DIExpression(), !5557)
    #dbg_value(double %i.e, !5558, !DIExpression(), !5561)
  %i.f = tail call double @llvm.ceil.f64(double %i.e), !dbg !5614
  %i.g = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.f), !dbg !5615
    #dbg_value(i64 %i.g, !5469, !DIExpression(), !5562)
  %spec.store.select1 = tail call i64 @llvm.umax.i64(i64 %i.g, i64 1), !dbg !5616
    #dbg_value(i64 %spec.store.select1, !5469, !DIExpression(), !5562)
    #dbg_value(i64 0, !5470, !DIExpression(), !5563)
    #dbg_value(ptr %0, !5564, !DIExpression(), !5567)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5617
  %i.i = load i64, ptr %i.h, align 8, !dbg !5617, !noundef !989 ; 3 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976, !dbg !5618
  tail call void @llvm.assume(i1 %i.j), !dbg !5619
    #dbg_value(i64 0, !5471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5568)
    #dbg_value(i64 %i.i, !5471, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5568)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !989
    #dbg_value(i64 0, !5470, !DIExpression(), !5563)
    #dbg_value(i64 0, !5471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5568)
    #dbg_value(ptr undef, !5497, !DIExpression(), !5506)
    #dbg_value(ptr undef, !5502, !DIExpression(), !5505)
    #dbg_value(ptr undef, !5480, !DIExpression(), !5490)
    #dbg_value(ptr undef, !5484, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5570)
  %exitcond.not31 = icmp eq i64 %i.i, 0, !dbg !5620
  br i1 %exitcond.not31, label %.loopexit, label %.lr.ph, !dbg !5489

bb.b:                                             ; preds = %.lr.ph
  %i.m = add nuw nsw i64 %.sroa.09.032, 1, !dbg !5621 ; 2 uses
    #dbg_value(i64 %i.m, !5471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5568)
    #dbg_value(i64 %i.o, !5470, !DIExpression(), !5563)
    #dbg_value(i64 %i.m, !5471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5568)
    #dbg_value(ptr undef, !5497, !DIExpression(), !5506)
    #dbg_value(ptr undef, !5502, !DIExpression(), !5505)
    #dbg_value(ptr undef, !5480, !DIExpression(), !5490)
    #dbg_value(ptr undef, !5484, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5570)
  %exitcond.not = icmp eq i64 %i.m, %i.i, !dbg !5620
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !dbg !5489

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.f, %bb.g, %bb.e
  %.sroa.04.0 = phi i64 [ -1, %bb.e ], [ %i.bb, %bb.f ], [ %i.bs, %bb.g ], [ 0, %bb.a ], [ 0, %bb.b ], !dbg !5563
  ret i64 %.sroa.04.0, !dbg !5622

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.07.033 = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]
  %.sroa.09.032 = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ] ; 5 uses
    #dbg_value(i64 %.sroa.07.033, !5470, !DIExpression(), !5563)
    #dbg_value(i64 %.sroa.09.032, !5471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5568)
    #dbg_value(i64 %.sroa.09.032, !5503, !DIExpression(), !5571)
    #dbg_value(i64 %.sroa.09.032, !5542, !DIExpression(), !5545)
    #dbg_value(i64 %.sroa.09.032, !5549, !DIExpression(), !5552)
    #dbg_value(i64 %.sroa.09.032, !5471, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5568)
    #dbg_value(i64 %.sroa.09.032, !5472, !DIExpression(), !5572)
    #dbg_value(i64 %.sroa.09.032, !5573, !DIExpression(), !5581)
    #dbg_value(i64 %.sroa.09.032, !5582, !DIExpression(), !5589)
    #dbg_value(i64 %.sroa.09.032, !5590, !DIExpression(), !5596)
    #dbg_value(ptr %0, !5577, !DIExpression(), !5597)
    #dbg_value(i64 %i.i, !5586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5589)
    #dbg_value(i64 %i.i, !5593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5596)
    #dbg_value(ptr %i.l, !5586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5589)
    #dbg_value(ptr %i.l, !5593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5596)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.09.032, !dbg !5623
  %.val = load i64, ptr %i.n, align 8, !dbg !5624, !noundef !989
  %i.o = add i64 %.val, %.sroa.07.033, !dbg !5625 ; 2 uses
    #dbg_value(i64 %i.o, !5470, !DIExpression(), !5563)
  %.not = icmp ult i64 %i.o, %spec.store.select1, !dbg !5626
  br i1 %.not, label %bb.b, label %bb.c, !dbg !5626

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5598), !dbg !5627
    #dbg_value(ptr %0, !1794, !DIExpression(), !5421)
    #dbg_value(ptr %0, !1803, !DIExpression(), !5423)
    #dbg_value(i64 %.sroa.09.032, !1798, !DIExpression(), !5421)
    #dbg_value(i64 4294967295, !1811, !DIExpression(), !5425)
    #dbg_value(ptr @17, !1827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5427)
    #dbg_value(i64 21, !1827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5427)
    #dbg_value(!DIArgList(i64 poison, i8 poison), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shr, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5428)
    #dbg_value(ptr poison, !1825, !DIExpression(), !5429)
  %i.p = icmp samesign ult i64 %.sroa.09.032, 4294967296, !dbg !5628
  br i1 %i.p, label %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE9value_forCs7OITKvp9Irj_4perf.exit, label %bb.d, !dbg !5628, !prof !1835

bb.d:                                             ; preds = %bb.c
    #dbg_value(i32 poison, !1831, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5427)
    #dbg_value(i32 poison, !1831, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5427)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #25, !dbg !5629, !noalias !5598
  unreachable, !dbg !5629

_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE9value_forCs7OITKvp9Irj_4perf.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 91, !dbg !5630
  %i.r = load i8, ptr %i.q, align 1, !dbg !5630, !alias.scope !5598, !noundef !989
    #dbg_value(!DIArgList(i64 %.sroa.09.032, i8 %i.r), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shr, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5428)
  %i.s = and i8 %i.r, 63, !dbg !5631
    #dbg_value(!DIArgList(i64 %.sroa.09.032, i8 %i.s), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shr, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5428)
  %i.t = zext nneg i8 %i.s to i64, !dbg !5631
    #dbg_value(!DIArgList(i64 %.sroa.09.032, i64 %i.t), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5428)
  %i.u = lshr i64 %.sroa.09.032, %i.t, !dbg !5631 ; 2 uses
    #dbg_value(i64 %i.u, !1800, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5428)
  %i.v = trunc nuw i64 %.sroa.09.032 to i32, !dbg !5632
    #dbg_value(i32 %i.v, !1831, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5427)
    #dbg_value(i32 1, !1831, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5427)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 84, !dbg !5633
  %i.x = load i32, ptr %i.w, align 4, !dbg !5633, !alias.scope !5598, !noundef !989 ; 2 uses
  %i.y = add i32 %i.x, -1, !dbg !5634
  %i.z = and i32 %i.y, %i.v, !dbg !5635
    #dbg_value(!DIArgList(i32 %i.z, i32 %i.x), !1801, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !5430)
    #dbg_value(!DIArgList(i32 %i.z, i32 %i.x), !1808, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !5423)
    #dbg_value(!DIArgList(i32 %i.z, i32 %i.x), !1841, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !5432)
  %i.aa = icmp eq i64 %i.u, 0, !dbg !5636
  %i.ab = select i1 %i.aa, i32 0, i32 %i.x, !dbg !5636
  %spec.select.i = add i32 %i.ab, %i.z, !dbg !5636
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1), !dbg !5636
    #dbg_value(i64 %i.ac, !1800, !DIExpression(DW_OP_plus_uconst, 255, DW_OP_stack_value), !5428)
    #dbg_value(i32 %spec.select.i, !1841, !DIExpression(), !5432)
    #dbg_value(i32 %spec.select.i, !1808, !DIExpression(), !5423)
    #dbg_value(i32 %spec.select.i, !1801, !DIExpression(), !5430)
  %i.ad = trunc i64 %i.ac to i8, !dbg !5637
    #dbg_value(i8 %i.ad, !1807, !DIExpression(DW_OP_plus_uconst, 63, DW_OP_stack_value), !5423)
  %i.ae = zext i32 %spec.select.i to i64, !dbg !5638
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 93, !dbg !5639
  %i.ag = load i8, ptr %i.af, align 1, !dbg !5639, !alias.scope !5598, !noundef !989 ; 3 uses
  %i.ah = add i8 %i.ag, 63, !dbg !5637
  %i.ai = add i8 %i.ah, %i.ad, !dbg !5640
  %i.aj = and i8 %i.ai, 63, !dbg !5641
  %i.ak = zext nneg i8 %i.aj to i64, !dbg !5641
  %i.al = shl i64 %i.ae, %i.ak, !dbg !5641        ; 5 uses
    #dbg_value(i64 %i.al, !5473, !DIExpression(), !5599)
    #dbg_value(i64 %i.al, !5510, !DIExpression(), !5515)
    #dbg_value(i64 %i.al, !5517, !DIExpression(), !5520)
    #dbg_value(i64 %i.al, !5522, !DIExpression(), !5526)
    #dbg_value(i64 %i.al, !5534, !DIExpression(), !5537)
  %i.am = fcmp oeq double %spec.store.select, 0.000000e+00, !dbg !5642
  br i1 %i.am, label %bb.f, label %bb.e, !dbg !5642

bb.e:                                             ; preds = %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE9value_forCs7OITKvp9Irj_4perf.exit
  %i.an = icmp eq i64 %i.al, -1, !dbg !5643
  br i1 %i.an, label %.loopexit, label %bb.g, !dbg !5643

bb.f:                                             ; preds = %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE9value_forCs7OITKvp9Irj_4perf.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 92, !dbg !5644
  %i.ap = load i8, ptr %i.ao, align 4, !dbg !5644, !noundef !989
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !5645
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !5645, !noundef !989
  %i.as = or i64 %i.ar, %i.al, !dbg !5646
    #dbg_value(i64 %i.as, !5600, !DIExpression(), !5603)
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.as, i1 false), !dbg !5647
  %i.au = trunc nuw nsw i64 %i.at to i8, !dbg !5646
    #dbg_value(!DIArgList(i8 %i.ap, i8 0, i8 %i.au), !5511, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !5604)
    #dbg_value(!DIArgList(i8 %i.ap, i8 0, i8 %i.au), !5523, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !5526)
    #dbg_value(!DIArgList(i8 %i.ap, i8 0, i8 %i.au), !5528, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !5532)
  %i.av = add i8 %i.ap, %i.ag, !dbg !5644
  %i.aw = sub i8 %i.av, %i.au, !dbg !5648
  %i.ax = and i8 %i.aw, 63, !dbg !5649
  %i.ay = zext nneg i8 %i.ax to i64, !dbg !5649   ; 2 uses
  %i.az = lshr i64 %i.al, %i.ay, !dbg !5649
  %i.ba = and i64 %i.az, 4294967295, !dbg !5650
    #dbg_value(i64 %i.az, !5512, !DIExpression(), !5608)
    #dbg_value(i64 %i.az, !5529, !DIExpression(), !5532)
    #dbg_value(i64 %i.az, !5605, !DIExpression(), !5609)
  %i.bb = shl i64 %i.ba, %i.ay, !dbg !5607
  br label %.loopexit, !dbg !5651

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr %0, !1845, !DIExpression(), !5436)
    #dbg_value(ptr %0, !1849, !DIExpression(), !5438)
    #dbg_value(ptr %0, !1855, !DIExpression(), !5440)
    #dbg_value(ptr %0, !1858, !DIExpression(), !5442)
    #dbg_value(ptr %0, !1862, !DIExpression(), !5444)
    #dbg_value(ptr %0, !1866, !DIExpression(), !5446)
    #dbg_value(ptr %0, !1855, !DIExpression(), !5448)
    #dbg_value(i64 %i.al, !1847, !DIExpression(), !5436)
    #dbg_value(i64 %i.al, !1851, !DIExpression(), !5438)
    #dbg_value(i64 %i.al, !1856, !DIExpression(), !5440)
    #dbg_value(i64 %i.al, !1859, !DIExpression(), !5442)
    #dbg_value(i64 %i.al, !1868, !DIExpression(), !5446)
    #dbg_value(i64 %i.al, !1856, !DIExpression(), !5448)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 92, !dbg !5652
  %i.bd = load i8, ptr %i.bc, align 4, !dbg !5652, !alias.scope !5610, !noundef !989
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !5653
  %i.bf = load i64, ptr %i.be, align 8, !dbg !5653, !alias.scope !5610, !noundef !989
  %i.bg = or i64 %i.bf, %i.al, !dbg !5654
    #dbg_value(i64 %i.bg, !1871, !DIExpression(), !5452)
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 false), !dbg !5655
  %i.bi = trunc nuw nsw i64 %i.bh to i8, !dbg !5654
    #dbg_value(!DIArgList(i8 %i.bd, i8 0, i8 %i.bi), !1852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !5453)
    #dbg_value(!DIArgList(i8 %i.bd, i8 0, i8 %i.bi), !1860, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !5442)
    #dbg_value(!DIArgList(i8 %i.bd, i8 0, i8 %i.bi), !1863, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !5444)
  %i.bj = add i8 %i.bd, %i.ag, !dbg !5652
  %i.bk = sub i8 %i.bj, %i.bi, !dbg !5656
  %i.bl = and i8 %i.bk, 63, !dbg !5657
  %i.bm = zext nneg i8 %i.bl to i64, !dbg !5657   ; 3 uses
  %i.bn = lshr i64 %i.al, %i.bm, !dbg !5657
  %i.bo = and i64 %i.bn, 4294967295, !dbg !5658
    #dbg_value(i64 %i.bn, !1853, !DIExpression(), !5455)
    #dbg_value(i64 %i.bn, !1864, !DIExpression(), !5444)
    #dbg_value(i64 %i.bn, !1874, !DIExpression(), !5456)
  %i.bp = shl i64 %i.bo, %i.bm, !dbg !5659
    #dbg_value(i64 %i.bp, !1876, !DIExpression(), !5458)
    #dbg_value(i64 %i.bg, !1871, !DIExpression(), !5460)
    #dbg_value(!DIArgList(i8 %i.bd, i8 0, i8 %i.bi), !1869, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !5461)
  %i.bq = shl nuw i64 1, %i.bm, !dbg !5660
    #dbg_value(i64 %i.bq, !1877, !DIExpression(), !5458)
  %i.br = tail call noundef range(i64 1, 0) i64 @llvm.uadd.sat.i64(i64 %i.bp, i64 %i.bq), !dbg !5661
  %i.bs = add i64 %i.br, -1, !dbg !5662
  br label %.loopexit, !dbg !5663
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE4meanCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5664 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !5740, !DIExpression(), !5673)
    #dbg_value(ptr %0, !5738, !DIExpression(), !5779)
    #dbg_value(ptr %0, !5780, !DIExpression(), !5786)
    #dbg_value(ptr %0, !5788, !DIExpression(), !5792)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !5850
  %i.d = load i64, ptr %i.c, align 8, !dbg !5850, !noundef !989 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !5850
  br i1 %i.e, label %bb.e, label %bb.b, !dbg !5850

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5851
  call void @_RNvMs0_NtCsgR93kpVnVos_12hdrhistogram9iteratorsINtB5_17HistogramIteratoryNtNtB5_8recorded4IterE3newCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef 0, i64 undef), !dbg !5852
    #dbg_value(ptr undef, !5738, !DIExpression(DW_OP_deref), !5779)
    #dbg_value(ptr undef, !5780, !DIExpression(DW_OP_deref), !5786)
    #dbg_value(ptr undef, !5788, !DIExpression(DW_OP_deref), !5792)
    #dbg_value(ptr undef, !5740, !DIExpression(), !5673)
    #dbg_declare(ptr %i.b, !5764, !DIExpression(), !5676)
    #dbg_value(double 0.000000e+00, !5765, !DIExpression(), !5673)
    #dbg_value(double 0.000000e+00, !5766, !DIExpression(), !5677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5853, !noalias !5793
  call void @_RNvXs1_NtCsgR93kpVnVos_12hdrhistogram9iteratorsINtB5_17HistogramIteratoryNtNtB5_8recorded4IterENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.b), !dbg !5854, !noalias !5794
  %i.f = load i64, ptr %i.a, align 8, !dbg !5853, !range !1645, !noalias !5793, !noundef !989
  %i.g = trunc nuw i64 %i.f to i1, !dbg !5855
  br i1 %i.g, label %.lr.ph.i, label %_RINvYINtNtCsgR93kpVnVos_12hdrhistogram9iterators17HistogramIteratoryNtNtB6_8recorded4IterENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folddNCNvMB8_INtB8_9HistogramyE4mean0ECs7OITKvp9Irj_4perf.exit, !dbg !5855

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.l = load i8, ptr %i.i, align 4, !alias.scope !5795, !noalias !5794, !noundef !989
  %i.m = load i64, ptr %i.j, align 8, !alias.scope !5795, !noalias !5794, !noundef !989
  %i.n = load i8, ptr %i.k, align 1, !alias.scope !5795, !noalias !5794, !noundef !989
  %i.o = add i8 %i.n, %i.l
  %i.p = uitofp i64 %i.d to double
  br label %bb.c, !dbg !5855

bb.c:                                             ; preds = %_RNCNvMCsgR93kpVnVos_12hdrhistogramINtB4_9HistogramyE4mean0Cs7OITKvp9Irj_4perf.exit.i, %.lr.ph.i
  %.sroa.0.012.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.ah, %_RNCNvMCsgR93kpVnVos_12hdrhistogramINtB4_9HistogramyE4mean0Cs7OITKvp9Irj_4perf.exit.i ]
    #dbg_value(double %.sroa.0.012.i, !5766, !DIExpression(), !5677)
  %.sroa.08.0.copyload.i = load i64, ptr %i.h, align 8, !dbg !5856, !noalias !5793 ; 2 uses
    #dbg_value(i64 %.sroa.08.0.copyload.i, !5767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5683)
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !dbg !5856, !noalias !5793
    #dbg_value(i64 %.sroa.59.0.copyload.i, !5767, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5683)
    #dbg_value(i64 poison, !5767, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5683)
    #dbg_value(ptr poison, !5796, !DIExpression(DW_OP_deref, DW_OP_deref), !5686)
    #dbg_value(double %.sroa.0.012.i, !5800, !DIExpression(), !5686)
    #dbg_declare(ptr poison, !5801, !DIExpression(), !5687)
  call void @llvm.experimental.noalias.scope.decl(metadata !5795), !dbg !5857
    #dbg_value(ptr %0, !5803, !DIExpression(), !5690)
    #dbg_value(ptr %0, !5807, !DIExpression(), !5695)
    #dbg_value(ptr %0, !5812, !DIExpression(), !5698)
    #dbg_value(ptr %0, !5815, !DIExpression(), !5701)
    #dbg_value(ptr %0, !5819, !DIExpression(), !5704)
    #dbg_value(ptr %0, !5823, !DIExpression(), !5708)
    #dbg_value(ptr %0, !5812, !DIExpression(), !5710)
    #dbg_value(i64 %.sroa.08.0.copyload.i, !5805, !DIExpression(), !5690)
    #dbg_value(i64 %.sroa.08.0.copyload.i, !5808, !DIExpression(), !5695)
    #dbg_value(i64 %.sroa.08.0.copyload.i, !5813, !DIExpression(), !5698)
    #dbg_value(i64 %.sroa.08.0.copyload.i, !5816, !DIExpression(), !5701)
    #dbg_value(i64 %.sroa.08.0.copyload.i, !5824, !DIExpression(), !5708)
    #dbg_value(i64 %.sroa.08.0.copyload.i, !5813, !DIExpression(), !5710)
    #dbg_value(ptr @13, !5827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5714)
    #dbg_value(i64 37, !5827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5714)
  %i.q = or i64 %i.m, %.sroa.08.0.copyload.i, !dbg !5858
    #dbg_value(i64 %i.q, !5831, !DIExpression(), !5717)
  %i.r = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 false), !dbg !5859
  %i.s = trunc nuw nsw i64 %i.r to i8, !dbg !5858
    #dbg_value(!DIArgList(i8 %i.l, i8 0, i8 %i.s), !5809, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !5718)
    #dbg_value(!DIArgList(i8 %i.l, i8 0, i8 %i.s), !5817, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !5701)
    #dbg_value(!DIArgList(i8 %i.l, i8 0, i8 %i.s), !5820, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !5704)
  %i.t = sub i8 %i.o, %i.s, !dbg !5860
  %i.u = and i8 %i.t, 63, !dbg !5861
  %i.v = zext nneg i8 %i.u to i64, !dbg !5861     ; 3 uses
  %i.w = lshr i64 %.sroa.08.0.copyload.i, %i.v, !dbg !5861
  %i.x = and i64 %i.w, 4294967295, !dbg !5862
    #dbg_value(i64 %i.w, !5810, !DIExpression(), !5721)
    #dbg_value(i64 %i.w, !5821, !DIExpression(), !5704)
    #dbg_value(i64 %i.w, !5833, !DIExpression(), !5722)
  %i.y = shl i64 %i.x, %i.v, !dbg !5863           ; 2 uses
    #dbg_value(i64 %i.y, !5835, !DIExpression(), !5725)
    #dbg_value(i64 %i.q, !5831, !DIExpression(), !5727)
    #dbg_value(!DIArgList(i8 %i.l, i8 0, i8 %i.s), !5825, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !5728)
  %i.z = shl nuw i64 1, %i.v, !dbg !5864
  %i.aa = lshr i64 %i.z, 1, !dbg !5865
    #dbg_value(i64 %i.aa, !5836, !DIExpression(), !5725)
  %i.ab = add i64 %i.y, %i.aa, !dbg !5866         ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.y, !dbg !5866
    #dbg_value(i1 %i.ac, !5839, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5731)
  br i1 %i.ac, label %bb.d, label %_RNCNvMCsgR93kpVnVos_12hdrhistogramINtB4_9HistogramyE4mean0Cs7OITKvp9Irj_4perf.exit.i, !dbg !5867, !prof !1647

bb.d:                                             ; preds = %bb.c
    #dbg_value(i64 poison, !5828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5714)
    #dbg_value(i64 poison, !5828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5714)
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #25, !dbg !5868, !noalias !5841
  unreachable, !dbg !5868

_RNCNvMCsgR93kpVnVos_12hdrhistogramINtB4_9HistogramyE4mean0Cs7OITKvp9Irj_4perf.exit.i: ; preds = %bb.c
    #dbg_value(i64 %i.ab, !5828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5714)
    #dbg_value(i64 1, !5828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5714)
  %i.ad = uitofp i64 %i.ab to double, !dbg !5869
    #dbg_value(ptr poison, !5843, !DIExpression(), !5734)
  %i.ae = uitofp i64 %.sroa.59.0.copyload.i to double, !dbg !5870
  %i.af = fmul nnan double %i.ae, %i.ad, !dbg !5869
  %i.ag = fdiv double %i.af, %i.p, !dbg !5869
  %i.ah = fadd double %.sroa.0.012.i, %i.ag, !dbg !5871 ; 2 uses
    #dbg_value(double %i.ah, !5766, !DIExpression(), !5677)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5872, !noalias !5793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5853, !noalias !5793
  call void @_RNvXs1_NtCsgR93kpVnVos_12hdrhistogram9iteratorsINtB5_17HistogramIteratoryNtNtB5_8recorded4IterENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.b), !dbg !5854, !noalias !5794
  %i.ai = load i64, ptr %i.a, align 8, !dbg !5853, !range !1645, !noalias !5793, !noundef !989
  %i.aj = trunc nuw i64 %i.ai to i1, !dbg !5855
  br i1 %i.aj, label %bb.c, label %_RINvYINtNtCsgR93kpVnVos_12hdrhistogram9iterators17HistogramIteratoryNtNtB6_8recorded4IterENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folddNCNvMB8_INtB8_9HistogramyE4mean0ECs7OITKvp9Irj_4perf.exit, !dbg !5855

_RINvYINtNtCsgR93kpVnVos_12hdrhistogram9iterators17HistogramIteratoryNtNtB6_8recorded4IterENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folddNCNvMB8_INtB8_9HistogramyE4mean0ECs7OITKvp9Irj_4perf.exit: ; preds = %_RNCNvMCsgR93kpVnVos_12hdrhistogramINtB4_9HistogramyE4mean0Cs7OITKvp9Irj_4perf.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi double [ 0.000000e+00, %bb.b ], [ %i.ah, %_RNCNvMCsgR93kpVnVos_12hdrhistogramINtB4_9HistogramyE4mean0Cs7OITKvp9Irj_4perf.exit.i ], !dbg !5873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5872, !noalias !5793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5874
  br label %bb.e, !dbg !5875

bb.e:                                             ; preds = %bb.a, %_RINvYINtNtCsgR93kpVnVos_12hdrhistogram9iterators17HistogramIteratoryNtNtB6_8recorded4IterENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folddNCNvMB8_INtB8_9HistogramyE4mean0ECs7OITKvp9Irj_4perf.exit
  %.sroa.0.0 = phi double [ %.sroa.0.0.lcssa.i, %_RINvYINtNtCsgR93kpVnVos_12hdrhistogram9iterators17HistogramIteratoryNtNtB6_8recorded4IterENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folddNCNvMB8_INtB8_9HistogramyE4mean0ECs7OITKvp9Irj_4perf.exit ], [ 0.000000e+00, %bb.a ], !dbg !5779
  ret double %.sroa.0.0, !dbg !5875
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE9value_forCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 !dbg !193 {
bb.a:
    #dbg_value(ptr %0, !1794, !DIExpression(), !5876)
    #dbg_value(ptr %0, !1803, !DIExpression(), !5878)
    #dbg_value(i64 %1, !1798, !DIExpression(), !5876)
    #dbg_value(i64 4294967295, !1811, !DIExpression(), !5880)
    #dbg_value(ptr @17, !1827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5882)
    #dbg_value(i64 21, !1827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5882)
    #dbg_value(!DIArgList(i64 poison, i8 poison), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shr, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5883)
    #dbg_value(ptr poison, !1825, !DIExpression(), !5884)
  %i.a = icmp ult i64 %1, 4294967296, !dbg !5888
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !5888, !prof !1835

bb.b:                                             ; preds = %bb.a
    #dbg_value(i32 poison, !1831, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5882)
    #dbg_value(i32 poison, !1831, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5882)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #25, !dbg !5889
  unreachable, !dbg !5889

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 91, !dbg !5890
  %i.c = load i8, ptr %i.b, align 1, !dbg !5890, !noundef !989
    #dbg_value(!DIArgList(i64 %1, i8 %i.c), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shr, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5883)
  %i.d = and i8 %i.c, 63, !dbg !5891
    #dbg_value(!DIArgList(i64 %1, i8 %i.d), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shr, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5883)
  %i.e = zext nneg i8 %i.d to i64, !dbg !5891
    #dbg_value(!DIArgList(i64 %1, i64 %i.e), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5883)
  %i.f = lshr i64 %1, %i.e, !dbg !5891            ; 2 uses
    #dbg_value(i64 %i.f, !1800, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5883)
    #dbg_value(i64 %i.f, !1800, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5883)
  %i.g = trunc nuw i64 %1 to i32, !dbg !5892
    #dbg_value(i32 %i.g, !1831, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5882)
    #dbg_value(i32 1, !1831, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5882)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84, !dbg !5893
  %i.i = load i32, ptr %i.h, align 4, !dbg !5893, !noundef !989 ; 2 uses
  %i.j = add i32 %i.i, -1, !dbg !5894
  %i.k = and i32 %i.j, %i.g, !dbg !5895
    #dbg_value(!DIArgList(i32 %i.k, i32 %i.i), !1801, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !5885)
    #dbg_value(!DIArgList(i32 %i.k, i32 %i.i), !1808, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !5878)
    #dbg_value(!DIArgList(i32 %i.k, i32 %i.i), !1841, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !5887)
  %i.l = icmp eq i64 %i.f, 0, !dbg !5896
  %i.m = select i1 %i.l, i32 0, i32 %i.i, !dbg !5896
  %spec.select = add i32 %i.m, %i.k, !dbg !5896
  %i.n = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1), !dbg !5896
    #dbg_value(i64 %i.n, !1800, !DIExpression(DW_OP_plus_uconst, 255, DW_OP_stack_value), !5883)
    #dbg_value(i32 %spec.select, !1841, !DIExpression(), !5887)
    #dbg_value(i32 %spec.select, !1808, !DIExpression(), !5878)
    #dbg_value(i32 %spec.select, !1801, !DIExpression(), !5885)
  %i.o = trunc i64 %i.n to i8, !dbg !5897
    #dbg_value(i8 %i.o, !1807, !DIExpression(DW_OP_plus_uconst, 63, DW_OP_stack_value), !5878)
  %i.p = zext i32 %spec.select to i64, !dbg !5898
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 93, !dbg !5899
  %i.r = load i8, ptr %i.q, align 1, !dbg !5899, !noundef !989
  %i.s = add i8 %i.r, 63, !dbg !5897
  %i.t = add i8 %i.s, %i.o, !dbg !5900
  %i.u = and i8 %i.t, 63, !dbg !5886
  %i.v = zext nneg i8 %i.u to i64, !dbg !5886
  %i.w = shl i64 %i.p, %i.v, !dbg !5886
  ret i64 %i.w, !dbg !5901
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCskKLDkoKarTP_4core3anyNtCs7OITKvp9Irj_4perf19CongestionAlgorithmNtB2_3Any7type_idBt_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #2 !dbg !5902 {
bb.a:
    #dbg_value(ptr poison, !5906, !DIExpression(), !5908)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @20, i64 16, i1 false), !dbg !5911
  ret void, !dbg !5912
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtB4_3net11socket_addr10SocketAddrNtB2_3Any7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 4 captures(none) %1) unnamed_addr #2 !dbg !5913 {
bb.a:
    #dbg_value(ptr poison, !5918, !DIExpression(), !5920)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @21, i64 16, i1 false), !dbg !5923
  ret void, !dbg !5924
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCskKLDkoKarTP_4core3anyNtNtNtB4_3net7ip_addr6IpAddrNtB2_3Any7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #2 !dbg !5925 {
bb.a:
    #dbg_value(ptr poison, !5930, !DIExpression(), !5932)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @22, i64 16, i1 false), !dbg !5935
  ret void, !dbg !5936
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCskKLDkoKarTP_4core3anytNtB2_3Any7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 2 captures(none) %1) unnamed_addr #2 !dbg !5937 {
bb.a:
    #dbg_value(ptr poison, !5942, !DIExpression(), !5944)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @23, i64 16, i1 false), !dbg !5947
  ret void, !dbg !5948
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCskKLDkoKarTP_4core3anyyNtB2_3Any7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #2 !dbg !5949 {
bb.a:
    #dbg_value(ptr poison, !5953, !DIExpression(), !5955)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @24, i64 16, i1 false), !dbg !5958
  ret void, !dbg !5959
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs0_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserNtB5_11ValueParserINtNtCskKLDkoKarTP_4core7convert4FromNvCs7OITKvp9Irj_4perf15parse_byte_sizeE4fromB1S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !5960 {
bb.a:
  store i64 4, ptr %0, align 8, !dbg !5971
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5971
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !5971
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5971
  store ptr @28, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5971
  ret void, !dbg !5972
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !231 {
bb.a:
    #dbg_value(ptr %1, !1951, !DIExpression(), !6000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6001), !dbg !6005
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6002), !dbg !6005
    #dbg_value(ptr %1, !1957, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !5977)
    #dbg_value(ptr %1, !1961, !DIExpression(), !5977)
    #dbg_value(ptr %1, !1967, !DIExpression(), !5979)
    #dbg_value(i64 1, !1981, !DIExpression(), !5981)
  %i.a = load ptr, ptr %1, align 8, !dbg !6006, !alias.scope !6002, !nonnull !989, !noundef !989 ; 3 uses
    #dbg_value(ptr %i.a, !1977, !DIExpression(), !5982)
    #dbg_value(ptr %i.a, !1985, !DIExpression(), !5981)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6007
  %i.c = load ptr, ptr %i.b, align 8, !dbg !6007, !alias.scope !6002, !nonnull !989, !noundef !989
    #dbg_value(ptr %i.c, !1978, !DIExpression(), !5983)
    #dbg_value(ptr poison, !1988, !DIExpression(), !5985)
    #dbg_value(ptr poison, !1991, !DIExpression(), !5986)
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !6008
  br i1 %i.d, label %bb.b, label %switch.lookup, !dbg !6009

switch.lookup:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !6010
  store ptr %i.e, ptr %1, align 8, !dbg !6011, !alias.scope !6002
    #dbg_value(ptr %i.a, !1962, !DIExpression(), !5987)
    #dbg_value(ptr undef, !1957, !DIExpression(DW_OP_deref), !5977)
  %.val.i = load i8, ptr %i.a, align 1, !dbg !6012, !range !1993, !noalias !6003, !noundef !989 ; 2 uses
    #dbg_value(ptr poison, !1994, !DIExpression(), !5989)
    #dbg_value(ptr poison, !2002, !DIExpression(), !5989)
    #dbg_value(ptr poison, !2006, !DIExpression(), !5991)
    #dbg_value(ptr poison, !2009, !DIExpression(), !5991)
    #dbg_value(ptr poison, !2011, !DIExpression(), !5993)
  store i64 0, ptr %0, align 8, !dbg !6013, !alias.scope !6004
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6013
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !6013, !alias.scope !6004
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6013
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !dbg !6013, !alias.scope !6004
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6013
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !6013, !alias.scope !6004
  %i.f = zext nneg i8 %.val.i to i64, !dbg !6013
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.53, i64 %i.f, !dbg !6013
  %switch.load = load ptr, ptr %switch.gep, align 8, !dbg !6013
  %i.g = zext nneg i8 %.val.i to i64, !dbg !6013
  %switch.gep1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB2j_15EnumValueParserB1u_ENtB2j_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1w_.54, i64 %i.g, !dbg !6013
  %switch.load2 = load i8, ptr %switch.gep1, align 1, !dbg !6013
  %switch.ext = zext i8 %switch.load2 to i64, !dbg !6013
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !6013
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !6013
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !6013
  store ptr %switch.load, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !dbg !6013, !alias.scope !6004
  store i64 %switch.ext, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !dbg !6013, !alias.scope !6004
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !dbg !6013, !alias.scope !6004
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs172jLVBUT4Z_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2p_12value_parserINtB3F_15EnumValueParserBQ_ENtB3F_16TypedValueParser15possible_values0EBS_.exit, !dbg !6014

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !dbg !6015, !alias.scope !6001
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs172jLVBUT4Z_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2p_12value_parserINtB3F_15EnumValueParserBQ_ENtB3F_16TypedValueParser15possible_values0EBS_.exit, !dbg !6016

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs172jLVBUT4Z_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2p_12value_parserINtB3F_15EnumValueParserBQ_ENtB3F_16TypedValueParser15possible_values0EBS_.exit: ; preds = %switch.lookup, %bb.b
  ret void, !dbg !6017
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB2p_15EnumValueParserB1A_ENtB2p_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 !dbg !6019 {
bb.a:
    #dbg_value(ptr %1, !6041, !DIExpression(), !6044)
  %.val = load ptr, ptr %1, align 8, !dbg !6072, !nonnull !989, !noundef !989
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6072
  %.val2 = load ptr, ptr %i.a, align 8, !dbg !6072, !nonnull !989, !noundef !989
    #dbg_value(ptr poison, !6046, !DIExpression(), !6025)
    #dbg_value(i64 1, !6053, !DIExpression(), !6033)
    #dbg_value(ptr %.val2, !6051, !DIExpression(), !6034)
    #dbg_value(ptr %.val2, !6068, !DIExpression(), !6035)
    #dbg_value(ptr %.val, !6069, !DIExpression(), !6035)
    #dbg_value(ptr %.val2, !6062, !DIExpression(), !6036)
    #dbg_value(ptr %.val, !6063, !DIExpression(), !6036)
    #dbg_value(ptr %.val, !6057, !DIExpression(), !6037)
    #dbg_value(ptr %.val2, !6056, !DIExpression(), !6037)
  %i.b = ptrtoint ptr %.val2 to i64, !dbg !6073
  %i.c = ptrtoint ptr %.val to i64, !dbg !6073
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !6073
    #dbg_value(i64 1, !6042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6071)
    #dbg_value(i64 %i.d, !6042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6071)
  store i64 0, ptr %0, align 8, !dbg !6074
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6074
  store i64 1, ptr %i.e, align 8, !dbg !6074
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6074
  store i64 %i.d, ptr %i.f, align 8, !dbg !6074
  ret void, !dbg !6075
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1M_NtCsexYYUdYSQU6_5alloc6stringxNtB6_12SpecToString14spec_to_string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 %.0.val) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !6078 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  %i.d = alloca [19 x i8], align 1                ; 3 uses
    #dbg_value(ptr poison, !6160, !DIExpression(), !6167)
    #dbg_declare(ptr %i.d, !6164, !DIExpression(), !6168)
    #dbg_declare(ptr %i.c, !6165, !DIExpression(), !6169)
    #dbg_value(i64 20, !6170, !DIExpression(), !6176)
    #dbg_value(i64 20, !6177, !DIExpression(), !6183)
    #dbg_value(i64 20, !6184, !DIExpression(), !6188)
    #dbg_value(i64 20, !6189, !DIExpression(), !6193)
    #dbg_value(i64 19, !6170, !DIExpression(), !6195)
    #dbg_value(i64 19, !6177, !DIExpression(), !6198)
    #dbg_value(i64 19, !6184, !DIExpression(), !6201)
    #dbg_value(i64 19, !6189, !DIExpression(), !6204)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6280
  %i.e = icmp slt i64 %.0.val, 0, !dbg !6281
  br i1 %i.e, label %.noexc38, label %.noexc, !dbg !6281

.noexc:                                           ; preds = %bb.a
    #dbg_value(i64 19, !6205, !DIExpression(), !6087)
    #dbg_value(i64 19, !6211, !DIExpression(), !6090)
    #dbg_value(i64 1, !6207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6087)
    #dbg_value(i64 1, !6214, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6090)
    #dbg_value(i64 1, !6207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6087)
    #dbg_value(i64 1, !6214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6090)
    #dbg_value(i64 0, !6213, !DIExpression(), !6090)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6282
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 19, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !6282
  %i.f = load i64, ptr %i.b, align 8, !dbg !6282, !range !1645, !noundef !989
  %i.g = trunc nuw i64 %i.f to i1, !dbg !6283
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6284
  %i.i = load i64, ptr %i.h, align 8, !dbg !6284, !range !1646, !noundef !989 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !6284 ; 2 uses
  br i1 %i.g, label %.noexc37, label %bb.b, !dbg !6283, !prof !1647

.noexc37:                                         ; preds = %.noexc
  %i.k = load i64, ptr %i.j, align 8, !dbg !6285
end_hunk_1
