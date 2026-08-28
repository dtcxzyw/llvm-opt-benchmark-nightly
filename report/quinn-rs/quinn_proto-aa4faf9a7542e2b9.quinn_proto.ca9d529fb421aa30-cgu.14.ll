Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.14?download=true
inline.NumInlined: 504
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB2_5Pacer5delay:bb.a

bb.k:                                             ; preds = %bb.j
    #dbg_value(i64 2, !8750, !DIExpression(), !8830)
    #dbg_value(ptr poison, !8765, !DIExpression(), !8831)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !8791, !DIExpression(), !8792)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !3609, !DIExpression(), !8832)
    #dbg_value(i8 0, !3615, !DIExpression(), !8832)
  %i.bc = load atomic i64, ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !8834, !noalias !8825 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 6, !dbg !8835
  call void @llvm.assume(i1 %i.bd), !dbg !8835
    #dbg_value(ptr poison, !8766, !DIExpression(), !8836)
    #dbg_value(i8 poison, !8775, !DIExpression(), !8837)
    #dbg_value(i8 poison, !8814, !DIExpression(), !8838)
    #dbg_value(i8 poison, !8772, !DIExpression(), !8843)
  %i.be = icmp samesign ugt i64 %i.bc, 1, !dbg !8844
  br i1 %i.be, label %bb.l, label %_RNCNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB6_5Pacer5delay00Ba_.exit.i, !dbg !8845

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr @_RNvNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB6_5Pacer5delay010___CALLSITE, align 8, !dbg !8846, !noalias !8825, !nonnull !64, !align !3512, !noundef !64 ; 3 uses
    #dbg_value(ptr %i.bf, !8751, !DIExpression(), !8847)
    #dbg_value(ptr %i.bf, !8848, !DIExpression(), !8851)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8854, !noalias !8825
    #dbg_value(ptr undef, !8736, !DIExpression(), !8758)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32, !dbg !8855
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !8855, !nonnull !64, !noundef !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 40, !dbg !8855
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !8855, !noundef !64
    #dbg_value(ptr undef, !8729, !DIExpression(), !8732)
  store i64 2, ptr %i.a, align 8, !dbg !8732, !noalias !8825
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8732
  store ptr %i.bh, ptr %i.bk, align 8, !dbg !8732, !noalias !8825
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8732
  store i64 %i.bj, ptr %i.bl, align 8, !dbg !8732, !noalias !8825
  %i.bm = call { ptr, ptr } @_RNvCsfFi4e9Agq2S_3log6logger(), !dbg !8761 ; 2 uses
  %i.bn = extractvalue { ptr, ptr } %i.bm, 0, !dbg !8761 ; 2 uses
  %i.bo = extractvalue { ptr, ptr } %i.bm, 1, !dbg !8761 ; 2 uses
    #dbg_value(ptr %i.bn, !8754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8856)
    #dbg_value(ptr %i.bo, !8754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8856)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24, !dbg !8857
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !8857, !invariant.load !64, !nonnull !64
  %i.br = call noundef zeroext i1 %i.bq(ptr noundef %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #35, !dbg !8857, !inline_history !8858
  br i1 %i.br, label %bb.m, label %bb.n, !dbg !8857

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bf, ptr noundef nonnull %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h), !dbg !8857
  br label %bb.n, !dbg !8857

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8854, !noalias !8825
  br label %_RNCNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB6_5Pacer5delay00Ba_.exit.i, !dbg !8845

_RNCNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB6_5Pacer5delay00Ba_.exit.i: ; preds = %bb.n, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !8678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !8678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !8678
  br label %_RNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB4_5Pacer5delay0B8_.exit, !dbg !8678

bb.o:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
    #dbg_value(ptr poison, !8623, !DIExpression(), !8859)
    #dbg_value(i8 -1, !8860, !DIExpression(), !8863)
    #dbg_value(i8 -1, !8631, !DIExpression(), !8867)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !8641, !DIExpression(), !8642)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !7948, !DIExpression(), !8868)
    #dbg_value(i8 0, !7953, !DIExpression(), !8868)
  %i.bs = load atomic i8, ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS monotonic, align 1, !dbg !8870
  %.not.i = icmp eq i8 %i.bs, 0, !dbg !8871
  br i1 %.not.i, label %bb.p, label %_RNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB4_5Pacer5delay0B8_.exit, !dbg !8678

bb.p:                                             ; preds = %bb.o
    #dbg_value(i64 2, !8408, !DIExpression(), !8872)
    #dbg_value(ptr poison, !8623, !DIExpression(), !8873)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !8570, !DIExpression(), !8647)
    #dbg_value(ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER, !3609, !DIExpression(), !8874)
    #dbg_value(i8 0, !3615, !DIExpression(), !8874)
  %i.bt = load atomic i64, ptr @_RNvCsfFi4e9Agq2S_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !8876 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 6, !dbg !8877
  call void @llvm.assume(i1 %i.bu), !dbg !8877
    #dbg_value(ptr poison, !8624, !DIExpression(), !8878)
    #dbg_value(i8 poison, !8634, !DIExpression(), !8879)
    #dbg_value(i8 poison, !8860, !DIExpression(), !8880)
    #dbg_value(i8 poison, !8631, !DIExpression(), !8885)
  %i.bv = icmp samesign ugt i64 %i.bt, 1, !dbg !8886
  br i1 %i.bv, label %bb.q, label %_RNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB4_5Pacer5delay0B8_.exit, !dbg !8887

bb.q:                                             ; preds = %bb.p
    #dbg_value(ptr @_RNvNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB6_5Pacer5delay010___CALLSITE, !8616, !DIExpression(), !8888)
  %i.bw = load ptr, ptr @_RNvNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB6_5Pacer5delay010___CALLSITE, align 8, !dbg !8891, !nonnull !64, !align !3512, !noundef !64 ; 3 uses
    #dbg_value(ptr %i.bw, !8410, !DIExpression(), !8892)
    #dbg_value(ptr %i.bw, !8893, !DIExpression(), !8896)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !8899
    #dbg_value(ptr undef, !8388, !DIExpression(), !8431)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32, !dbg !8900
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !8900, !nonnull !64, !noundef !64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 40, !dbg !8900
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !8900, !noundef !64
    #dbg_value(ptr undef, !8381, !DIExpression(), !8384)
  store i64 2, ptr %i.e, align 8, !dbg !8384
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !8384
  store ptr %i.by, ptr %i.cb, align 8, !dbg !8384
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !8384
  store i64 %i.ca, ptr %i.cc, align 8, !dbg !8384
  %i.cd = call { ptr, ptr } @_RNvCsfFi4e9Agq2S_3log6logger(), !dbg !8566 ; 2 uses
  %i.ce = extractvalue { ptr, ptr } %i.cd, 0, !dbg !8566 ; 2 uses
  %i.cf = extractvalue { ptr, ptr } %i.cd, 1, !dbg !8566 ; 2 uses
    #dbg_value(ptr %i.ce, !8414, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8901)
    #dbg_value(ptr %i.cf, !8414, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8901)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24, !dbg !8902
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !8902, !invariant.load !64, !nonnull !64
  %i.ci = call noundef zeroext i1 %i.ch(ptr noundef %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) #35, !dbg !8902, !inline_history !8903
  br i1 %i.ci, label %bb.r, label %bb.s, !dbg !8902

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !8902
  %i.cj = load ptr, ptr @_RNvNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB6_5Pacer5delay010___CALLSITE, align 8, !dbg !8904, !nonnull !64, !align !3512, !noundef !64
    #dbg_value(ptr %i.cj, !8683, !DIExpression(), !8905)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48, !dbg !8908
    #dbg_value(ptr %i.ck, !8693, !DIExpression(), !8909)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8902
    #dbg_value(ptr @0, !8718, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8912)
    #dbg_value(i64 66, !8718, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8912)
  store ptr @0, ptr %i.b, align 8, !dbg !8915
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !8915
  store ptr inttoptr (i64 133 to ptr), ptr %i.cl, align 8, !dbg !8915
  store ptr %i.b, ptr %i.c, align 8, !dbg !8902
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !8902
  store ptr @1, ptr %i.cm, align 8, !dbg !8902
    #dbg_value(ptr %i.c, !8700, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8909)
    #dbg_value(i64 1, !8700, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8909)
  store i64 1, ptr %i.d, align 8, !dbg !8916
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !8916
  store ptr %i.c, ptr %.sroa.413.0..sroa_idx.i, align 8, !dbg !8916
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !8916
  store i64 1, ptr %.sroa.514.0..sroa_idx.i, align 8, !dbg !8916
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !8916
  store ptr %i.ck, ptr %i.cn, align 8, !dbg !8916
  call void @_RNvNtCs44jvQwX3bAX_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bw, ptr noundef nonnull %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cf, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d), !dbg !8902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8902
  br label %bb.s, !dbg !8902

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !8899
  br label %_RNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB4_5Pacer5delay0B8_.exit, !dbg !8887

_RNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB4_5Pacer5delay0B8_.exit: ; preds = %bb.s, %bb.p, %bb.o, %_RNCNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB6_5Pacer5delay00Ba_.exit.i, %bb.e
  %.sroa.64.0 = phi i32 [ %i.an, %bb.e ], [ 0, %_RNCNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB6_5Pacer5delay00Ba_.exit.i ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.s ], !dbg !8548 ; 2 uses
  %.sroa.03.0 = phi double [ %i.ap, %bb.e ], [ 0.000000e+00, %_RNCNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB6_5Pacer5delay00Ba_.exit.i ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.s ], !dbg !8548
    #dbg_value(i64 poison, !8373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8551)
    #dbg_value(i32 %.sroa.64.0, !8373, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8551)
    #dbg_value(ptr poison, !8917, !DIExpression(), !8920)
  %i.co = zext i64 %1 to i128, !dbg !8922
  %i.cp = mul nuw nsw i128 %i.co, 1000000000, !dbg !8922
  %i.cq = zext nneg i32 %2 to i128, !dbg !8923
  %i.cr = or i128 %i.cp, %i.cq, !dbg !8924
  %i.cs = icmp eq i128 %i.cr, 0, !dbg !8924
  br i1 %i.cs, label %bb.ab, label %bb.t, !dbg !8924

bb.t:                                             ; preds = %_RNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB4_5Pacer5delay0B8_.exit
    #dbg_value(ptr undef, !8485, !DIExpression(), !8491)
  %i.ct = icmp ult i32 %.sroa.64.0, 1000000000, !dbg !8925
  call void @llvm.assume(i1 %i.ct), !dbg !8925
  %i.cu = uitofp nneg i32 %.sroa.64.0 to double, !dbg !8932
    #dbg_value(ptr poison, !8485, !DIExpression(), !8933)
  %i.cv = uitofp i64 %1 to double, !dbg !8935
  %i.cw = uitofp nneg i32 %2 to double, !dbg !8936
  %i.cx = insertelement <2 x double> poison, double %i.cu, i64 0, !dbg !8932
  %i.cy = insertelement <2 x double> %i.cx, double %i.cw, i64 1, !dbg !8932
  %i.cz = fdiv nnan <2 x double> %i.cy, splat (double 1.000000e+09), !dbg !8932
  %i.da = insertelement <2 x double> poison, double %.sroa.03.0, i64 0, !dbg !8552
  %i.db = insertelement <2 x double> %i.da, double %i.cv, i64 1, !dbg !8552
  %i.dc = fadd nnan <2 x double> %i.db, %i.cz, !dbg !8552 ; 2 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0, !dbg !8937
  %i.de = extractelement <2 x double> %i.dc, i64 1, !dbg !8937
  %i.df = fdiv double %i.dd, %i.de, !dbg !8937
    #dbg_value(double poison, !8375, !DIExpression(), !8938)
  %i.dg = uitofp i32 %i.ai to double, !dbg !8939
  %i.dh = fmul nnan double %i.dg, 1.250000e+00, !dbg !8939
  %i.di = fmul double %i.dh, %i.df, !dbg !8939
    #dbg_value(double %i.di, !8377, !DIExpression(), !8940)
    #dbg_value(i64 %i.q, !8941, !DIExpression(), !8946)
  %i.dj = call i64 @llvm.fptoui.sat.i64.f64(double %i.di), !dbg !8948
    #dbg_value(i64 %i.dj, !8945, !DIExpression(), !8946)
  %i.dk = call i64 @llvm.uadd.sat.i64(i64 %i.q, i64 %i.dj), !dbg !8949
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8950
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !8950, !noundef !64 ; 2 uses
    #dbg_value(ptr undef, !8527, !DIExpression(DW_OP_deref), !8951)
    #dbg_value(ptr undef, !8532, !DIExpression(DW_OP_deref), !8951)
  %..i66 = call noundef i64 @llvm.umin.i64(i64 %i.dm, i64 %i.dk), !dbg !8953 ; 3 uses
  store i64 %..i66, ptr %i.r, align 8, !dbg !8954
  store i64 %6, ptr %0, align 8, !dbg !8955
  store i32 %7, ptr %i.ak, align 8, !dbg !8955
  %.not60 = icmp ult i64 %..i66, %3, !dbg !8956
  br i1 %.not60, label %bb.u, label %bb.ab, !dbg !8956

bb.u:                                             ; preds = %bb.t
    #dbg_value(ptr undef, !8957, !DIExpression(DW_OP_deref), !8961)
    #dbg_value(ptr undef, !8960, !DIExpression(DW_OP_deref), !8961)
  %..i67 = call noundef i64 @llvm.umax.i64(i64 %i.dm, i64 %3), !dbg !8963
  %i.dn = sub nuw i64 %..i67, %..i66, !dbg !8964
    #dbg_value(i64 %1, !8965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8982)
    #dbg_value(i32 %2, !8965, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8982)
  %i.do = and i64 %i.dn, 4294967295, !dbg !8984   ; 2 uses
    #dbg_value(i64 %i.dn, !8971, !DIExpression(), !8982)
    #dbg_value(i64 %i.do, !8985, !DIExpression(), !8994)
    #dbg_value(i64 %i.do, !8996, !DIExpression(), !9006)
    #dbg_value(!DIArgList(i32 %2, i64 %i.do), !8972, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !9008)
    #dbg_value(i64 poison, !8974, !DIExpression(), !9009)
    #dbg_value(i64 poison, !9010, !DIExpression(), !9014)
    #dbg_value(i64 poison, !8976, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9016)
    #dbg_value(i64 %1, !8990, !DIExpression(), !8994)
    #dbg_value(i64 %1, !9005, !DIExpression(), !9006)
  %i.dp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %i.do), !dbg !9017 ; 2 uses
  %i.dq = extractvalue { i64, i1 } %i.dp, 1, !dbg !9017
    #dbg_value(i64 poison, !8991, !DIExpression(), !9018)
    #dbg_value(i1 %i.dq, !8993, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9018)
    #dbg_value(i1 %i.dq, !9019, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9026)
  br i1 %i.dq, label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_mul.exit, label %bb.v, !dbg !9028, !prof !3640

bb.v:                                             ; preds = %bb.u
  %i.dr = zext nneg i32 %2 to i64, !dbg !9029
    #dbg_value(!DIArgList(i64 %i.dr, i64 %i.do), !8972, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !9008)
  %i.ds = mul nuw nsw i64 %i.do, %i.dr, !dbg !9029 ; 2 uses
    #dbg_value(i64 %i.ds, !8972, !DIExpression(), !9008)
  %i.dt = urem i64 %i.ds, 1000000000, !dbg !9030
    #dbg_value(i64 %i.dt, !8976, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9016)
  %i.du = trunc nuw nsw i64 %i.dt to i32, !dbg !9030
    #dbg_value(i32 %i.du, !8976, !DIExpression(), !9016)
  %i.dv = extractvalue { i64, i1 } %i.dp, 0, !dbg !9017 ; 2 uses
    #dbg_value(i64 %i.dv, !8991, !DIExpression(), !9018)
  %i.dw = udiv i64 %i.ds, 1000000000, !dbg !9031
    #dbg_value(i64 %i.dw, !8974, !DIExpression(), !9009)
    #dbg_value(i64 %i.dw, !9010, !DIExpression(), !9014)
    #dbg_value(i64 %i.dv, !8978, !DIExpression(), !9032)
    #dbg_value(i64 %i.dv, !9013, !DIExpression(), !9014)
  %i.dx = add i64 %i.dv, %i.dw, !dbg !9033        ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dv, !dbg !9033
    #dbg_value(i1 %i.dy, !9019, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9034)
  %spec.select.i = select i1 %i.dy, i32 -1, i32 %i.du, !dbg !9036, !prof !3640
  br label %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_mul.exit, !dbg !9036

_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_mul.exit: ; preds = %bb.u, %bb.v
  %.sroa.3.0.i = phi i32 [ -1, %bb.u ], [ %spec.select.i, %bb.v ], !dbg !9016 ; 2 uses
  %.sroa.0.0.i = phi i64 [ undef, %bb.u ], [ %i.dx, %bb.v ], !dbg !9016
    #dbg_value(i64 poison, !8471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8496)
    #dbg_value(i32 %.sroa.3.0.i, !8471, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8496)
    #dbg_value(i64 poison, !8464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8544)
    #dbg_value(i32 poison, !8464, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8544)
    #dbg_value(i64 poison, !9037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9048)
    #dbg_value(i32 poison, !9037, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !9048)
    #dbg_value(i32 %i.ai, !9041, !DIExpression(), !9048)
  %i.dz = icmp eq i64 %5, 0, !dbg !9050
  br i1 %i.dz, label %bb.z, label %bb.w, !dbg !9050

bb.w:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_mul.exit
  %.not61 = icmp eq i32 %.sroa.3.0.i, -1, !dbg !9051 ; 2 uses
  %.sroa.08.0 = select i1 %.not61, i64 -1, i64 %.sroa.0.0.i, !dbg !9052 ; 2 uses
    #dbg_value(i64 %.sroa.08.0, !8464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8544)
    #dbg_value(i64 %.sroa.08.0, !9037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9048)
  %.sroa.59.0 = select i1 %.not61, i32 999999999, i32 %.sroa.3.0.i, !dbg !9052 ; 2 uses
    #dbg_value(i32 %.sroa.59.0, !8464, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8544)
    #dbg_value(i32 %.sroa.59.0, !9037, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !9048)
  %i.ea = udiv i64 %.sroa.08.0, %5, !dbg !9053    ; 3 uses
    #dbg_value(i64 %i.ea, !9042, !DIExpression(), !9054)
    #dbg_value(i64 poison, !9044, !DIExpression(), !9054)
    #dbg_value(i32 poison, !9045, !DIExpression(), !9055)
    #dbg_value(i32 poison, !9047, !DIExpression(), !9055)
  %i.eb = urem i64 %.sroa.08.0, %5, !dbg !9056
    #dbg_value(i64 %i.eb, !9044, !DIExpression(), !9054)
  %i.ec = mul nuw nsw i64 %i.eb, 1000000000, !dbg !9057
  %i.ed = urem i32 %.sroa.59.0, %i.ai, !dbg !9058
    #dbg_value(i32 %i.ed, !9047, !DIExpression(), !9055)
  %i.ee = zext nneg i32 %i.ed to i64, !dbg !9059
  %i.ef = add nuw nsw i64 %i.ec, %i.ee, !dbg !9060
  %i.eg = udiv i32 %.sroa.59.0, %i.ai, !dbg !9061
    #dbg_value(i32 %i.eg, !9045, !DIExpression(), !9055)
  %i.eh = udiv i64 %i.ef, %5, !dbg !9062
  %i.ei = trunc i64 %i.eh to i32, !dbg !9062
  %i.ej = add i32 %i.eg, %i.ei, !dbg !9063        ; 4 uses
    #dbg_value(i32 %i.ej, !9045, !DIExpression(), !9055)
    #dbg_value(i64 %i.ea, !9064, !DIExpression(), !9075)
    #dbg_value(i64 %i.ea, !9077, !DIExpression(), !9081)
    #dbg_value(i32 %i.ej, !9070, !DIExpression(), !9075)
    #dbg_value(ptr @23, !9083, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9092)
    #dbg_value(i64 25, !9083, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9092)
  %i.ek = icmp ult i32 %i.ej, 1000000000, !dbg !9094
  br i1 %i.ek, label %bb.aa, label %bb.x, !dbg !9094

bb.x:                                             ; preds = %bb.w
  %i.el = udiv i32 %i.ej, 1000000000, !dbg !9095
  %i.em = urem i32 %i.ej, 1000000000, !dbg !9096
  %i.en = zext nneg i32 %i.el to i64, !dbg !9095
    #dbg_value(i64 %i.en, !9080, !DIExpression(), !9081)
  %i.eo = add i64 %i.ea, %i.en, !dbg !9097        ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.ea, !dbg !9097
    #dbg_value(i1 %i.ep, !9098, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9101)
  br i1 %i.ep, label %bb.y, label %bb.aa, !dbg !9103, !prof !3640

bb.y:                                             ; preds = %bb.x
    #dbg_value(i64 poison, !9089, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9092)
    #dbg_value(i64 poison, !9089, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9092)
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #36, !dbg !9104
  unreachable, !dbg !9104

bb.z:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core4timeNtB2_8Duration11checked_mul.exit
    #dbg_value(i64 poison, !8432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8497)
    #dbg_value(i32 -1, !8432, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8497)
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #36, !dbg !9105
  unreachable, !dbg !9105

bb.aa:                                            ; preds = %bb.x, %bb.w
  %.sroa.3.0.i68.ph = phi i32 [ %i.ej, %bb.w ], [ %i.em, %bb.x ] ; 2 uses
  %.sroa.0.0.i69.ph = phi i64 [ %i.ea, %bb.w ], [ %i.eo, %bb.x ] ; 2 uses
    #dbg_value(i32 %.sroa.3.0.i68.ph, !8432, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8497)
    #dbg_value(i64 %.sroa.0.0.i69.ph, !8432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8497)
    #dbg_value(i64 %.sroa.0.0.i69.ph, !8379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9106)
    #dbg_value(i64 %.sroa.0.0.i69.ph, !8464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8498)
    #dbg_value(i32 %.sroa.3.0.i68.ph, !8379, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !9106)
    #dbg_value(i32 %.sroa.3.0.i68.ph, !8464, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8498)
    #dbg_value(i64 %.sroa.0.0.i69.ph, !9037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9107)
    #dbg_value(i32 %.sroa.3.0.i68.ph, !9037, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !9107)
    #dbg_value(i32 5, !9041, !DIExpression(), !9107)
    #dbg_value(i64 poison, !9042, !DIExpression(), !9109)
    #dbg_value(i64 poison, !9044, !DIExpression(), !9109)
    #dbg_value(i32 poison, !9045, !DIExpression(), !9110)
    #dbg_value(i32 poison, !9047, !DIExpression(), !9110)
    #dbg_value(i64 poison, !9044, !DIExpression(), !9109)
    #dbg_value(i32 poison, !9047, !DIExpression(), !9110)
    #dbg_value(i32 poison, !9045, !DIExpression(), !9110)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !9045, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9110)
    #dbg_value(i64 poison, !9064, !DIExpression(), !9111)
    #dbg_value(i64 poison, !9077, !DIExpression(), !9113)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !9070, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9111)
    #dbg_value(ptr @23, !9083, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9115)
    #dbg_value(i64 25, !9083, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9115)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !8432, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !8499)
    #dbg_value(i64 poison, !8432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8499)
    #dbg_value(i64 poison, !8452, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8500)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !8452, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !8500)
    #dbg_value(i64 poison, !8965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9117)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !8965, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !9117)
    #dbg_value(i32 4, !8971, !DIExpression(), !9117)
    #dbg_value(i64 4, !8985, !DIExpression(), !9119)
    #dbg_value(i64 4, !8996, !DIExpression(), !9121)
    #dbg_value(!DIArgList(i32 poison, i64 poison, i32 poison), !8972, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !9123)
    #dbg_value(i64 poison, !8974, !DIExpression(), !9124)
    #dbg_value(i64 poison, !9010, !DIExpression(), !9125)
    #dbg_value(i64 poison, !8976, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9127)
    #dbg_value(i64 poison, !8990, !DIExpression(), !9119)
    #dbg_value(i64 poison, !9005, !DIExpression(), !9121)
    #dbg_value(i64 poison, !8991, !DIExpression(), !9128)
    #dbg_value(i1 false, !8993, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9128)
    #dbg_value(i1 false, !9019, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9129)
    #dbg_value(i64 poison, !9042, !DIExpression(), !9109)
    #dbg_value(i64 poison, !9064, !DIExpression(), !9111)
    #dbg_value(i64 poison, !9077, !DIExpression(), !9113)
    #dbg_value(i64 poison, !8452, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8500)
    #dbg_value(i64 poison, !8432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8499)
    #dbg_value(i64 poison, !8965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9117)
    #dbg_value(i64 poison, !8990, !DIExpression(), !9119)
    #dbg_value(i64 poison, !9005, !DIExpression(), !9121)
    #dbg_value(i32 poison, !9045, !DIExpression(), !9110)
    #dbg_value(i64 poison, !9044, !DIExpression(), !9109)
    #dbg_value(i32 poison, !9047, !DIExpression(), !9110)
    #dbg_value(!DIArgList(i32 poison, i64 poison, i32 poison), !8972, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !9123)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !8965, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !9117)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !8452, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !8500)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !8432, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !8499)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !9070, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9111)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !9045, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9110)
    #dbg_value(!DIArgList(i32 poison, i64 poison, i32 poison), !8972, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !9123)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !9045, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9110)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !9070, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9111)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !8432, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !8499)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !8452, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !8500)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !8965, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !9117)
    #dbg_value(!DIArgList(i32 poison, i64 poison, i32 poison), !8972, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !9123)
    #dbg_value(!DIArgList(i32 poison, i32 poison), !8972, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !9123)
    #dbg_value(i32 poison, !8976, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9127)
    #dbg_value(i32 poison, !8976, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9127)
    #dbg_value(i64 poison, !8991, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !9128)
    #dbg_value(i32 poison, !8974, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !9124)
    #dbg_value(i32 poison, !9010, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !9125)
    #dbg_value(i64 poison, !8978, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !9131)
    #dbg_value(i64 poison, !9013, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !9125)
    #dbg_value(i1 false, !9019, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9132)
  %i.eq = udiv i64 %.sroa.0.0.i69.ph, 5, !dbg !9134
    #dbg_value(i64 %i.eq, !9005, !DIExpression(), !9121)
    #dbg_value(i64 %i.eq, !8990, !DIExpression(), !9119)
    #dbg_value(i64 %i.eq, !8965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9117)
    #dbg_value(i64 %i.eq, !8432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8499)
    #dbg_value(i64 %i.eq, !8452, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8500)
    #dbg_value(i64 %i.eq, !9077, !DIExpression(), !9113)
    #dbg_value(i64 %i.eq, !9064, !DIExpression(), !9111)
    #dbg_value(i64 %i.eq, !9042, !DIExpression(), !9109)
    #dbg_value(i64 %i.eq, !9013, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !9125)
    #dbg_value(i64 %i.eq, !8978, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !9131)
    #dbg_value(i64 %i.eq, !8991, !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !9128)
  %i.er = shl nuw i64 %i.eq, 2, !dbg !9135
    #dbg_value(i64 %i.er, !8991, !DIExpression(), !9128)
    #dbg_value(i64 %i.er, !8978, !DIExpression(), !9131)
    #dbg_value(i64 %i.er, !9013, !DIExpression(), !9125)
  %i.es = udiv i32 %.sroa.3.0.i68.ph, 5, !dbg !9136
    #dbg_value(i32 %i.es, !9045, !DIExpression(), !9110)
  %i.et = urem i64 %.sroa.0.0.i69.ph, 5, !dbg !9137
    #dbg_value(i64 %i.et, !9044, !DIExpression(), !9109)
  %i.eu = trunc nuw nsw i64 %i.et to i32, !dbg !9138
  %i.ev = mul nuw i32 %i.eu, 1000000000, !dbg !9138
  %i.ew = urem i32 %.sroa.3.0.i68.ph, 5, !dbg !9139
    #dbg_value(i32 %i.ew, !9047, !DIExpression(), !9110)
  %.lhs.trunc = or disjoint i32 %i.ev, %i.ew, !dbg !9138
  %i.ex = udiv i32 %.lhs.trunc, 5, !dbg !9138
    #dbg_value(!DIArgList(i32 %i.es, i32 %i.ex), !8972, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !9123)
    #dbg_value(!DIArgList(i32 %i.es, i32 %i.ex), !9045, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9110)
    #dbg_value(!DIArgList(i32 %i.es, i32 %i.ex), !9070, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9111)
    #dbg_value(!DIArgList(i32 %i.es, i32 %i.ex), !8432, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !8499)
    #dbg_value(!DIArgList(i32 %i.es, i32 %i.ex), !8452, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !8500)
    #dbg_value(!DIArgList(i32 %i.es, i32 %i.ex), !8965, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !9117)
  %i.ey = add nuw nsw i32 %i.ex, %i.es, !dbg !9140 ; 2 uses
    #dbg_value(i32 %i.ey, !8965, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !9117)
    #dbg_value(i32 %i.ey, !8452, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8500)
    #dbg_value(i32 %i.ey, !8432, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8499)
    #dbg_value(i32 %i.ey, !9070, !DIExpression(), !9111)
    #dbg_value(i32 %i.ey, !9045, !DIExpression(), !9110)
    #dbg_value(i32 %i.ey, !8972, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !9123)
    #dbg_value(i32 %i.ey, !8972, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !9123)
  %.lhs.trunc87 = shl nuw i32 %i.ey, 2, !dbg !9141
    #dbg_value(i32 %i.ey, !8972, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value), !9123)
  %i.ez = udiv i32 %i.ey, 250000000, !dbg !9142
    #dbg_value(i32 %i.ez, !9010, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !9125)
    #dbg_value(i32 %i.ez, !8974, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !9124)
  %.zext88 = zext nneg i32 %i.ez to i64, !dbg !9142
    #dbg_value(i64 %.zext88, !8974, !DIExpression(), !9124)
    #dbg_value(i64 %.zext88, !9010, !DIExpression(), !9125)
  %i.fa = add nuw i64 %i.er, %.zext88, !dbg !9143
  %i.fb = urem i32 %.lhs.trunc87, 1000000000, !dbg !9144
    #dbg_value(i32 %i.fb, !8976, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9127)
    #dbg_value(i32 %i.fb, !8976, !DIExpression(), !9127)
    #dbg_value(i32 %i.fb, !8432, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8501)
    #dbg_value(i64 %i.fa, !8432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8501)
  %i.fc = call { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %6, i32 noundef %7, i64 noundef %i.fa, i32 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32), !dbg !9145 ; 2 uses
  %i.fd = extractvalue { i64, i32 } %i.fc, 0, !dbg !9145
  %i.fe = extractvalue { i64, i32 } %i.fc, 1, !dbg !9145
  br label %bb.ab, !dbg !9146

bb.ab:                                            ; preds = %bb.t, %_RNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB4_5Pacer5delay0B8_.exit, %bb.b, %bb.aa
  %.sroa.6.1 = phi i32 [ %i.fe, %bb.aa ], [ -1, %bb.b ], [ -1, %bb.t ], [ -1, %_RNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB4_5Pacer5delay0B8_.exit ], !dbg !8493
  %.sroa.0.1 = phi i64 [ %i.fd, %bb.aa ], [ undef, %bb.b ], [ undef, %bb.t ], [ undef, %_RNCNvMNtNtCshovLROGBtMy_11quinn_proto10connection6pacingNtB4_5Pacer5delay0B8_.exit ], !dbg !8493
  %i.ff = insertvalue { i64, i32 } poison, i64 %.sroa.0.1, 0, !dbg !9146
  %i.fg = insertvalue { i64, i32 } %i.ff, i32 %.sroa.6.1, 1, !dbg !9146
  ret { i64, i32 } %i.fg, !dbg !9146
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCs7IHJO2Xhr2x_4qlog8streamer12QlogStreamerE4lockCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 !dbg !9147 {
bb.a:
    #dbg_value(ptr %1, !9177, !DIExpression(), !9178)
    #dbg_value(ptr %1, !9179, !DIExpression(), !9183)
    #dbg_value(i32 0, !9185, !DIExpression(), !9210)
    #dbg_value(i32 1, !9207, !DIExpression(), !9210)
    #dbg_value(i8 2, !9208, !DIExpression(), !9210)
    #dbg_value(i8 0, !9209, !DIExpression(), !9210)
    #dbg_value(ptr %1, !9215, !DIExpression(), !9217)
    #dbg_value(ptr %1, !9206, !DIExpression(), !9218)
    #dbg_value(ptr %1, !9219, !DIExpression(), !9231)
    #dbg_value(i32 0, !9224, !DIExpression(), !9231)
    #dbg_value(i32 1, !9225, !DIExpression(), !9231)
    #dbg_value(i8 2, !9226, !DIExpression(), !9231)
    #dbg_value(i8 0, !9227, !DIExpression(), !9231)
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !dbg !9233
  %i.b = extractvalue { i32, i1 } %i.a, 1, !dbg !9233
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !9234, !prof !3620

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1), !dbg !9235
  br label %bb.c, !dbg !9235

bb.c:                                             ; preds = %bb.a, %bb.b
    #dbg_value(ptr %1, !9236, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !9264)
    #dbg_value(ptr %1, !9266, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !9272)
    #dbg_value(i8 0, !9274, !DIExpression(), !9278)
    #dbg_value(i8 0, !9286, !DIExpression(), !9290)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !9277, !DIExpression(), !9278)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !3609, !DIExpression(), !9292)
    #dbg_value(i8 0, !3615, !DIExpression(), !9292)
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !9294
  %i.d = and i64 %i.c, 9223372036854775807, !dbg !9295
  %i.e = icmp eq i64 %i.d, 0, !dbg !9295
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !dbg !9295, !prof !3620

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31, !dbg !9296
  %i.g = xor i1 %i.f, true, !dbg !9297
  %i.h = zext i1 %i.g to i8, !dbg !9298
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, !dbg !9296

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ], !dbg !9299
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !9300
    #dbg_value(ptr %i.i, !9236, !DIExpression(), !9264)
    #dbg_value(ptr %i.i, !9266, !DIExpression(), !9272)
    #dbg_value(i8 %.sroa.01.0.i, !9262, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9301)
    #dbg_value(ptr %i.i, !9289, !DIExpression(), !9302)
    #dbg_value(ptr %i.i, !7948, !DIExpression(), !9303)
    #dbg_value(i8 0, !7953, !DIExpression(), !9303)
  %i.j = load atomic i8, ptr %i.i monotonic, align 4, !dbg !9305
  %.not.i = icmp ne i8 %i.j, 0, !dbg !9306
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtCs7IHJO2Xhr2x_4qlog8streamer12QlogStreamerENCNvMs9_BZ_BW_3new0ECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1), !dbg !9307
  ret void, !dbg !9308
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateE4lockB10_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 !dbg !9309 {
bb.a:
    #dbg_value(ptr %1, !9409, !DIExpression(), !9410)
    #dbg_value(ptr %1, !9411, !DIExpression(), !9415)
    #dbg_value(i32 0, !9417, !DIExpression(), !9424)
    #dbg_value(i32 1, !9421, !DIExpression(), !9424)
    #dbg_value(i8 2, !9422, !DIExpression(), !9424)
    #dbg_value(i8 0, !9423, !DIExpression(), !9424)
    #dbg_value(ptr %1, !9428, !DIExpression(), !9430)
    #dbg_value(ptr %1, !9420, !DIExpression(), !9431)
    #dbg_value(ptr %1, !9219, !DIExpression(), !9432)
    #dbg_value(i32 0, !9224, !DIExpression(), !9432)
    #dbg_value(i32 1, !9225, !DIExpression(), !9432)
    #dbg_value(i8 2, !9226, !DIExpression(), !9432)
    #dbg_value(i8 0, !9227, !DIExpression(), !9432)
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !dbg !9434
  %i.b = extractvalue { i32, i1 } %i.a, 1, !dbg !9434
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !9435, !prof !3620

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1), !dbg !9436
  br label %bb.c, !dbg !9436

bb.c:                                             ; preds = %bb.a, %bb.b
    #dbg_value(ptr %1, !9236, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !9437)
    #dbg_value(ptr %1, !9266, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !9439)
    #dbg_value(i8 0, !9274, !DIExpression(), !9441)
    #dbg_value(i8 0, !9286, !DIExpression(), !9446)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !9277, !DIExpression(), !9441)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !3609, !DIExpression(), !9448)
    #dbg_value(i8 0, !3615, !DIExpression(), !9448)
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !9450
  %i.d = and i64 %i.c, 9223372036854775807, !dbg !9451
  %i.e = icmp eq i64 %i.d, 0, !dbg !9451
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !dbg !9451, !prof !3620

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31, !dbg !9452
  %i.g = xor i1 %i.f, true, !dbg !9453
  %i.h = zext i1 %i.g to i8, !dbg !9454
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, !dbg !9452

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ], !dbg !9455
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !9456
    #dbg_value(ptr %i.i, !9236, !DIExpression(), !9437)
    #dbg_value(ptr %i.i, !9266, !DIExpression(), !9439)
    #dbg_value(i8 %.sroa.01.0.i, !9262, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9457)
    #dbg_value(ptr %i.i, !9289, !DIExpression(), !9458)
    #dbg_value(ptr %i.i, !7948, !DIExpression(), !9459)
    #dbg_value(i8 0, !7953, !DIExpression(), !9459)
  %i.j = load atomic i8, ptr %i.i monotonic, align 4, !dbg !9461
  %.not.i = icmp ne i8 %i.j, 0, !dbg !9462
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtCshovLROGBtMy_11quinn_proto15bloom_token_log5StateENCNvMs9_BZ_BW_3new0EB1q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1), !dbg !9463
  ret void, !dbg !9464
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB4_12StreamsState10retransmit(ptr noalias nofree noundef align 8 dereferenceable(456) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #3 !dbg !9465 {
bb.a:
    #dbg_value(ptr %0, !9470, !DIExpression(), !9476)
    #dbg_declare(ptr %1, !9471, !DIExpression(), !9477)
    #dbg_declare(ptr poison, !9478, !DIExpression(), !9518)
    #dbg_value(ptr %0, !9520, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !9529)
    #dbg_value(ptr %1, !9528, !DIExpression(), !9531)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !9532
  %i.b = tail call noundef align 8 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIdINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtBQ_10connection7streams4send4SendEENtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherE7get_mutBO_EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !dbg !9533 ; 4 uses
    #dbg_value(ptr %i.b, !9515, !DIExpression(), !9534)
  %.not = icmp eq ptr %i.b, null, !dbg !9535
  br i1 %.not, label %bb.d, label %bb.b, !dbg !9536

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !9516, !DIExpression(), !9537)
    #dbg_value(ptr %i.b, !9538, !DIExpression(), !9543)
    #dbg_value(ptr %i.b, !9545, !DIExpression(), !9553)
  %i.c = load ptr, ptr %i.b, align 8, !dbg !9555, !align !3512, !noundef !64 ; 9 uses
  %.not9 = icmp eq ptr %i.c, null, !dbg !9555
  br i1 %.not9, label %bb.d, label %bb.c, !dbg !9556

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.b, !9472, !DIExpression(), !9557)
    #dbg_value(ptr %i.c, !9558, !DIExpression(), !9566)
    #dbg_value(ptr %i.c, !9568, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !9576)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64, !dbg !9578
  %i.e = load i64, ptr %i.d, align 8, !dbg !9578, !noundef !64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56, !dbg !9579
  %i.g = load i64, ptr %i.f, align 8, !dbg !9579, !noundef !64
  %.not10 = icmp eq i64 %i.e, %i.g, !dbg !9578
  br i1 %.not10, label %bb.e, label %bb.h, !dbg !9578

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.h
  ret void, !dbg !9580

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %i.c, !9581, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !9589)
    #dbg_value(ptr %i.c, !9591, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !9599)
    #dbg_value(ptr %i.c, !9601, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !9607)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !9609
  %i.i = load i64, ptr %i.h, align 8, !dbg !9609, !noundef !64
  %.not11 = icmp eq i64 %i.i, 0, !dbg !9610
  br i1 %.not11, label %bb.f, label %bb.h, !dbg !9611

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 132, !dbg !9612
  %i.k = load i8, ptr %i.j, align 4, !dbg !9612, !range !3513, !noundef !64
  %i.l = trunc nuw i8 %i.k to i1, !dbg !9612
  br i1 %i.l, label %bb.h, label %bb.g, !dbg !9613

bb.g:                                             ; preds = %bb.f
  %i.m = load i64, ptr %1, align 8, !dbg !9614, !noundef !64
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto10congestion5cubicNtB5_5CubicNtB7_10Controller6on_ack:bb.a

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.0.i = phi i32 [ %i.al, %bb.j ], [ %i.ah, %bb.h ], !dbg !21252 ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.ak, %bb.j ], [ %i.af, %bb.h ], !dbg !21252
    #dbg_value(i32 %.sroa.4.0.i, !21071, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !21148)
    #dbg_value(i64 %.sroa.0.0.i, !21071, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21148)
    #dbg_value(i64 %.sroa.0.0.i, !21164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21281)
    #dbg_value(i32 %.sroa.4.0.i, !21164, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !21281)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !21282
  %i.an = load i64, ptr %i.am, align 8, !dbg !21282, !noundef !64 ; 3 uses
    #dbg_value(i64 %i.an, !21165, !DIExpression(), !21281)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21283
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !21283
  %i.aq = load <2 x double>, ptr %i.ap, align 8, !dbg !21283
  %i.ar = uitofp i64 %i.an to double, !dbg !21284 ; 2 uses
    #dbg_value(double poison, !21166, !DIExpression(), !21285)
    #dbg_value(ptr poison, !21286, !DIExpression(), !21289)
  %i.as = uitofp i64 %.sroa.0.0.i to double, !dbg !21291
  %i.at = icmp ult i32 %.sroa.4.0.i, 1000000000, !dbg !21292
  tail call void @llvm.assume(i1 %i.at), !dbg !21292
  %i.au = uitofp nneg i32 %.sroa.4.0.i to double, !dbg !21295
  %i.av = fdiv double %i.au, 1.000000e+09, !dbg !21295
  %i.aw = fadd double %i.av, %i.as, !dbg !21291
  %i.ax = load double, ptr %i.ao, align 8, !dbg !21296, !noundef !64
  %i.ay = fsub double %i.aw, %i.ax, !dbg !21297
    #dbg_value(double %i.ay, !21154, !DIExpression(), !21155)
    #dbg_value(double %i.ay, !21171, !DIExpression(), !21172)
  %i.az = tail call double @llvm.powi.f64.i32(double %i.ay, i32 3), !dbg !21298
    #dbg_value(double poison, !21063, !DIExpression(), !21299)
    #dbg_value(ptr %0, !21300, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !21311)
    #dbg_value(i64 %i.w, !21306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21313)
    #dbg_value(i32 %i.x, !21306, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !21313)
    #dbg_value(i32 %spec.select68, !21307, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !21313)
    #dbg_value(i32 %spec.select68, !21094, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !21233)
    #dbg_value(i64 %spec.select69, !21307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21313)
    #dbg_value(i64 %spec.select69, !21094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21233)
    #dbg_value(i64 %i.an, !21308, !DIExpression(), !21313)
    #dbg_value(double poison, !21309, !DIExpression(), !21314)
    #dbg_value(ptr poison, !21286, !DIExpression(), !21315)
  %i.ba = insertelement <2 x i64> poison, i64 %i.w, i64 0, !dbg !21317
  %i.bb = insertelement <2 x i64> %i.ba, i64 %spec.select69, i64 1, !dbg !21317
  %i.bc = uitofp <2 x i64> %i.bb to <2 x double>, !dbg !21317
  %i.bd = icmp ult i32 %i.x, 1000000000, !dbg !21318
  tail call void @llvm.assume(i1 %i.bd), !dbg !21318
  %i.be = uitofp nneg i32 %i.x to double, !dbg !21321
    #dbg_value(ptr poison, !21286, !DIExpression(), !21322)
  %i.bf = icmp samesign ult i32 %spec.select68, 1000000000, !dbg !21324
  tail call void @llvm.assume(i1 %i.bf), !dbg !21324
  %i.bg = uitofp nneg i32 %spec.select68 to double, !dbg !21327
  %i.bh = insertelement <2 x double> poison, double %i.be, i64 0, !dbg !21321
  %i.bi = insertelement <2 x double> %i.bh, double %i.bg, i64 1, !dbg !21321
  %i.bj = fdiv <2 x double> %i.bi, splat (double 1.000000e+09), !dbg !21321
  %i.bk = fadd <2 x double> %i.bj, %i.bc, !dbg !21317 ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0, !dbg !21328
  %i.bm = fmul nnan double %i.bl, f0x3FE0F0F0F0F0F0F2, !dbg !21328
  %i.bn = insertelement <2 x double> %i.aq, double %i.bm, i64 1, !dbg !21283
  %i.bo = insertelement <2 x double> %i.bk, double %i.ar, i64 0, !dbg !21283 ; 2 uses
  %i.bp = fdiv <2 x double> %i.bn, %i.bo, !dbg !21283 ; 2 uses
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 poison, i32 0>, !dbg !21329
  %i.br = insertelement <2 x double> %i.bq, double %i.az, i64 0, !dbg !21329
  %i.bs = fmul <2 x double> %i.br, <double 4.000000e-01, double f0x3FE6666666666666>, !dbg !21329
  %i.bt = fadd <2 x double> %i.bp, %i.bs, !dbg !21330
  %i.bu = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !21330
  %i.bv = fmul <2 x double> %i.bt, %i.bu, !dbg !21330 ; 2 uses
    #dbg_value(double poison, !21065, !DIExpression(), !21331)
    #dbg_value(i64 %i.u, !21067, !DIExpression(), !21332)
    #dbg_value(i64 %i.u, !21333, !DIExpression(), !21337)
    #dbg_value(i64 %i.u, !21339, !DIExpression(), !21343)
  %i.bw = extractelement <2 x double> %i.bv, i64 0, !dbg !21345 ; 3 uses
  %i.bx = extractelement <2 x double> %i.bv, i64 1, !dbg !21345 ; 2 uses
  %i.by = fcmp olt double %i.bw, %i.bx, !dbg !21345
  br i1 %i.by, label %bb.n, label %bb.m, !dbg !21345

bb.l:                                             ; preds = %bb.i, %bb.g
    #dbg_value(i64 poison, !21071, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21148)
    #dbg_value(i32 -1, !21071, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !21148)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #36, !dbg !21346
  unreachable, !dbg !21346

bb.m:                                             ; preds = %bb.k
  %i.bz = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bw), !dbg !21347
  %i.ca = icmp ult i64 %i.u, %i.bz, !dbg !21348
  br i1 %i.ca, label %bb.o, label %bb.p, !dbg !21348

bb.n:                                             ; preds = %bb.k
  %i.cb = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bx), !dbg !21349
    #dbg_value(i64 %i.cb, !21336, !DIExpression(), !21337)
    #dbg_value(ptr undef, !8957, !DIExpression(DW_OP_deref), !21350)
    #dbg_value(ptr undef, !8960, !DIExpression(DW_OP_deref), !21350)
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.cb, i64 %i.u), !dbg !21352
    #dbg_value(i64 %..i, !21067, !DIExpression(), !21332)
    #dbg_value(i64 %..i, !21333, !DIExpression(), !21337)
    #dbg_value(i64 %..i, !21339, !DIExpression(), !21343)
  br label %bb.p, !dbg !21353

bb.o:                                             ; preds = %bb.m
  %i.cc = uitofp i64 %i.u to double, !dbg !21354  ; 2 uses
  %i.cd = fsub double %i.bw, %i.cc, !dbg !21355
  %i.ce = fdiv double %i.cd, %i.cc, !dbg !21355
  %i.cf = fmul double %i.ce, %i.ar, !dbg !21355
    #dbg_value(double %i.cf, !21069, !DIExpression(), !21356)
  %i.cg = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.cf), !dbg !21357
    #dbg_value(i64 %i.cg, !21342, !DIExpression(), !21343)
  %i.ch = tail call i64 @llvm.uadd.sat.i64(i64 %i.u, i64 %i.cg), !dbg !21358
    #dbg_value(i64 %i.ch, !21067, !DIExpression(), !21332)
    #dbg_value(i64 %i.ch, !21333, !DIExpression(), !21337)
    #dbg_value(i64 %i.ch, !21339, !DIExpression(), !21343)
  br label %bb.p, !dbg !21359

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.n
  %.sroa.07.0 = phi i64 [ %..i, %bb.n ], [ %i.ch, %bb.o ], [ %i.u, %bb.m ], !dbg !21331
    #dbg_value(i64 %.sroa.07.0, !21339, !DIExpression(), !21343)
    #dbg_value(i64 %.sroa.07.0, !21333, !DIExpression(), !21337)
    #dbg_value(i64 %.sroa.07.0, !21067, !DIExpression(), !21332)
  %i.ci = sub i64 %.sroa.07.0, %i.u, !dbg !21360
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21361 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !21361, !noundef !64
  %i.cl = add i64 %i.ck, %i.ci, !dbg !21361       ; 2 uses
  store i64 %i.cl, ptr %i.cj, align 8, !dbg !21361
  %.not67 = icmp ult i64 %i.cl, %i.an, !dbg !21362
  br i1 %.not67, label %bb.r, label %bb.q, !dbg !21362

bb.q:                                             ; preds = %bb.p
  %i.cm = add i64 %i.an, %i.u, !dbg !21363
  store i64 %i.cm, ptr %0, align 8, !dbg !21363
  store i64 0, ptr %i.cj, align 8, !dbg !21364
  br label %bb.r, !dbg !21365

bb.r:                                             ; preds = %bb.c, %bb.a, %bb.e, %bb.p, %bb.q
  ret void, !dbg !21366
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto10congestion5cubicNtB5_5CubicNtB7_10Controller6window(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #7 !dbg !21367 {
bb.a:
    #dbg_value(ptr %0, !21369, !DIExpression(), !21370)
  %i.a = load i64, ptr %0, align 8, !dbg !21371, !noundef !64
  ret i64 %i.a, !dbg !21372
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto10congestion5cubicNtB5_5CubicNtB7_10Controller7metrics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24), (32, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #8 !dbg !21373 {
bb.a:
    #dbg_value(ptr %1, !21382, !DIExpression(), !21383)
    #dbg_value(ptr %1, !21384, !DIExpression(), !21387)
  %i.a = load i64, ptr %1, align 8, !dbg !21389, !noundef !64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21390
  %i.c = load i64, ptr %i.b, align 8, !dbg !21390, !noundef !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21391
  store i64 %i.a, ptr %i.d, align 8, !dbg !21391
  store i64 1, ptr %0, align 8, !dbg !21391
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21391
  store i64 %i.c, ptr %i.e, align 8, !dbg !21391
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21391
  store i64 0, ptr %i.f, align 8, !dbg !21391
  ret void, !dbg !21392
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto10congestion5cubicNtB5_5CubicNtB7_10Controller8into_any(ptr noalias noundef nonnull align 8 %0) unnamed_addr #10 !dbg !21393 {
bb.a:
    #dbg_value(ptr %0, !21404, !DIExpression(), !21405)
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0, !dbg !21406
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @115, 1, !dbg !21406
  ret { ptr, ptr } %i.b, !dbg !21406
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto10congestion5cubicNtB5_5CubicNtB7_10Controller9clone_box(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !21407 {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 9 uses
    #dbg_value(ptr %0, !21411, !DIExpression(), !21412)
    #dbg_value(ptr %0, !21413, !DIExpression(), !21419)
    #dbg_value(i64 1, !21421, !DIExpression(), !21427)
    #dbg_value(i8 0, !21426, !DIExpression(), !21427)
    #dbg_value(i64 1, !21438, !DIExpression(), !21443)
    #dbg_value(i8 0, !21442, !DIExpression(), !21443)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21445
    #dbg_value(ptr %0, !21434, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !21446)
    #dbg_value(ptr %0, !21447, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !21450)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !21452
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21452, !nonnull !64, !noundef !64 ; 3 uses
    #dbg_value(ptr %i.c, !21425, !DIExpression(), !21455)
    #dbg_value(ptr %i.c, !21441, !DIExpression(), !21443)
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !dbg !21456
    #dbg_value(i64 %i.d, !21435, !DIExpression(), !21457)
  %i.e = icmp slt i64 %i.d, 0, !dbg !21458
  br i1 %i.e, label %bb.g, label %bb.b, !dbg !21458

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !21459, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !21468)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !21471
  %i.g = load i32, ptr %i.f, align 8, !dbg !21471, !range !7238, !noundef !64 ; 2 uses
  %.not = icmp eq i32 %i.g, -1, !dbg !21471
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !21472
  %i.i = load i64, ptr %i.h, align 8, !dbg !21472
  %.sroa.0.0 = select i1 %.not, i64 undef, i64 %i.i, !dbg !21472
    #dbg_value(ptr %0, !21473, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !21479)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21479
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !21479
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !21437
  %i.m = load i64, ptr %i.l, align 8, !dbg !21437, !noundef !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !21437 ; 2 uses
  store ptr %i.c, ptr %i.n, align 16, !dbg !21437
  %i.o = load <2 x i64>, ptr %0, align 8, !dbg !21437
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !21437
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !21437
  store i64 %.sroa.0.0, ptr %i.p, align 8, !dbg !21437
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !21437
  store i32 %i.g, ptr %i.q, align 16, !dbg !21437
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !21437
  store i64 %i.m, ptr %i.r, align 8, !dbg !21437
    #dbg_declare(ptr %i.a, !21482, !DIExpression(), !21491)
    #dbg_value(i64 8, !21493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21500)
    #dbg_value(i64 8, !21502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21508)
    #dbg_value(i64 8, !21510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21518)
    #dbg_value(i64 72, !21493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21500)
    #dbg_value(i64 72, !21502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21508)
    #dbg_value(i64 72, !21510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21518)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !21507, !DIExpression(), !21508)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !21516, !DIExpression(), !21518)
    #dbg_value(i8 0, !21517, !DIExpression(), !21518)
    #dbg_value(i64 8, !21520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21550)
    #dbg_value(i64 8, !21552, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21555)
    #dbg_value(i64 72, !21520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21550)
    #dbg_value(i64 72, !21552, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21555)
    #dbg_value(i1 false, !21526, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21550)
    #dbg_value(i64 72, !21527, !DIExpression(), !21557)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !21558, !noalias !21559
  %i.s = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 56, 545) 72, i64 noundef range(i64 8, 17) 8) #33, !dbg !21562, !noalias !21559 ; 3 uses
  %i.t = icmp eq ptr %i.s, null, !dbg !21563
  br i1 %i.t, label %bb.c, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCshovLROGBtMy_11quinn_proto10congestion5cubic5CubicE3newBK_.exit, !dbg !21564, !prof !3640

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #37
          to label %.noexc unwind label %bb.d, !dbg !21565

.noexc:                                           ; preds = %bb.c
  unreachable, !dbg !21565

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !3913, !DIExpression(), !21566)
    #dbg_value(ptr %i.n, !3921, !DIExpression(), !21568)
    #dbg_value(ptr %i.n, !3935, !DIExpression(), !21570)
    #dbg_value(i64 1, !3950, !DIExpression(), !21572)
    #dbg_value(i8 1, !3954, !DIExpression(), !21572)
    #dbg_value(i64 1, !3957, !DIExpression(), !21574)
    #dbg_value(i8 1, !3961, !DIExpression(), !21574)
    #dbg_value(ptr %i.c, !3953, !DIExpression(), !21576)
    #dbg_value(ptr %i.c, !3960, !DIExpression(), !21574)
  %i.v = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !21577, !noalias !21578
  %i.w = icmp eq i64 %i.v, 1, !dbg !21585
  br i1 %i.w, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion5cubic5CubicEBH_.exit, !dbg !21585

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !3890, !DIExpression(), !21586)
  fence acquire, !dbg !21588
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshovLROGBtMy_11quinn_proto10congestion5cubic11CubicConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion5cubic5CubicEBH_.exit unwind label %bb.f, !dbg !21589

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !21590
  unreachable, !dbg !21590

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion5cubic5CubicEBH_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.u, !dbg !21590

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCshovLROGBtMy_11quinn_proto10congestion5cubic5CubicE3newBK_.exit: ; preds = %bb.b
    #dbg_value(ptr %i.s, !21488, !DIExpression(), !21591)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 16 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !21592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21593
  %i.y = insertvalue { ptr, ptr } poison, ptr %i.s, 0, !dbg !21594
  %i.z = insertvalue { ptr, ptr } %i.y, ptr @116, 1, !dbg !21594
  ret { ptr, ptr } %i.z, !dbg !21594

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !21595
  unreachable, !dbg !21595
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtNtNtBb_3ops5range5RangeyEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !21596 {
bb.a:
    #dbg_value(ptr %1, !21613, !DIExpression(), !21615)
    #dbg_declare(ptr poison, !21616, !DIExpression(), !21638)
    #dbg_value(ptr %1, !21647, !DIExpression(), !21658)
    #dbg_value(ptr %1, !21660, !DIExpression(), !21666)
    #dbg_value(ptr %1, !21668, !DIExpression(), !21680)
    #dbg_value(i64 1, !21674, !DIExpression(), !21680)
    #dbg_value(i64 1, !21682, !DIExpression(), !21687)
    #dbg_value(i64 -1, !21689, !DIExpression(), !21696)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21698 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !21698, !alias.scope !21699, !nonnull !64, !noundef !64 ; 2 uses
    #dbg_value(ptr %i.b, !21656, !DIExpression(), !21702)
    #dbg_value(ptr %1, !21703, !DIExpression(), !21707)
    #dbg_value(ptr poison, !21706, !DIExpression(), !21709)
  %i.c = load ptr, ptr %1, align 8, !dbg !21710, !alias.scope !21699, !nonnull !64, !noundef !64
  %i.d = icmp eq ptr %i.c, %i.b, !dbg !21710
  br i1 %i.d, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshovLROGBtMy_11quinn_proto.exit.thread, label %bb.b, !dbg !21711

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !21677, !DIExpression(), !21712)
    #dbg_value(ptr %i.b, !21686, !DIExpression(), !21687)
    #dbg_value(ptr %i.b, !21695, !DIExpression(), !21696)
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -16, !dbg !21713 ; 2 uses
    #dbg_value(ptr %i.e, !21686, !DIExpression(), !21687)
    #dbg_value(ptr %i.e, !21695, !DIExpression(), !21696)
  store ptr %i.e, ptr %i.a, align 8, !dbg !21714, !alias.scope !21699
    #dbg_value(ptr %i.e, !21645, !DIExpression(), !21715)
    #dbg_value(ptr %i.e, !21635, !DIExpression(), !21716)
    #dbg_value(ptr %i.e, !21636, !DIExpression(), !21717)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21718
  %i.g = load <2 x i64>, ptr %i.e, align 8, !dbg !21719
  store <2 x i64> %i.g, ptr %i.f, align 8, !dbg !21718
  br label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshovLROGBtMy_11quinn_proto.exit.thread, !dbg !21730

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshovLROGBtMy_11quinn_proto.exit.thread: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !21716
  store i64 %storemerge, ptr %0, align 8, !dbg !21716
  ret void, !dbg !21731
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1X_CseEeXhZwqjpo_16rustls_pki_typesNtB6_8UnixTimeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 !dbg !21732 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !21738, !DIExpression(), !21740)
    #dbg_value(ptr %1, !21739, !DIExpression(), !21740)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21741
  store ptr %0, ptr %i.a, align 8, !dbg !21741
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @117), !dbg !21742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21743
  ret i1 %i.b, !dbg !21744
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, float } @_RNvXs1_NtNtCshovLROGBtMy_11quinn_proto10congestion8new_renoNtB5_13NewRenoConfigNtNtCskKLDkoKarTP_4core7default7Default7default() unnamed_addr #10 !dbg !21745 {
bb.a:
  ret { i64, float } { i64 12000, float 5.000000e-01 }, !dbg !21750
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNCNvMs_NtB1N_5stateNtB2Y_12StreamsState20can_send_stream_data0E0INtB7_5FnMutTuB1K_EE8call_mutB1R_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !21751 {
bb.a:
    #dbg_value(ptr %1, !21779, !DIExpression(), !21787)
    #dbg_value(ptr %0, !21778, !DIExpression(), !21787)
  %i.a = load ptr, ptr %0, align 8, !dbg !21788, !nonnull !64, !align !3512, !noundef !64
  %.val = load ptr, ptr %i.a, align 8, !dbg !21789, !nonnull !64, !align !3512, !noundef !64 ; 4 uses
    #dbg_value(ptr poison, !21790, !DIExpression(DW_OP_deref), !21799)
    #dbg_declare(ptr poison, !21796, !DIExpression(), !21801)
    #dbg_value(ptr %1, !21795, !DIExpression(), !21799)
    #dbg_value(ptr poison, !21802, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !21809)
    #dbg_value(ptr %1, !21808, !DIExpression(), !21809)
    #dbg_declare(ptr poison, !21811, !DIExpression(), !21838)
    #dbg_declare(ptr poison, !21840, !DIExpression(), !21852)
    #dbg_value(ptr %.val, !21854, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !21861)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21863 ; 2 uses
    #dbg_value(ptr %i.b, !21860, !DIExpression(), !21864)
    #dbg_value(ptr %.val, !21865, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !21877)
    #dbg_value(ptr %i.b, !21872, !DIExpression(), !21877)
    #dbg_value(ptr %i.b, !21879, !DIExpression(), !21883)
    #dbg_value(ptr %.val, !21885, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !21891)
    #dbg_value(ptr %.val, !21893, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !21899)
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 168, !dbg !21901
  %i.d = load i64, ptr %i.c, align 8, !dbg !21901, !alias.scope !21902, !noalias !21905, !noundef !64
  %i.e = icmp eq i64 %i.d, 0, !dbg !21911
  br i1 %i.e, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRNtNtNtCshovLROGBtMy_11quinn_proto10connection7streams13PendingStreamNCNvMs_NtB1e_5stateNtB2p_12StreamsState20can_send_stream_data0E0B1i_.exit, label %bb.b, !dbg !21912

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 144, !dbg !21913
    #dbg_value(ptr %i.f, !21865, !DIExpression(), !21877)
    #dbg_value(ptr %i.f, !21885, !DIExpression(), !21891)
    #dbg_value(ptr %i.f, !21893, !DIExpression(), !21899)
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 176, !dbg !21914
    #dbg_value(ptr %i.g, !21882, !DIExpression(), !21883)
  %i.h = tail call noundef i64 @_RINvYNtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtCshovLROGBtMy_11quinn_proto8StreamIdEB1B_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !21915 ; 2 uses
    #dbg_value(i64 %i.h, !21873, !DIExpression(), !21916)
    #dbg_value(i64 %i.h, !21917, !DIExpression(), !21943)
    #dbg_value(ptr %i.f, !21939, !DIExpression(), !21943)
    #dbg_value(ptr %i.b, !21940, !DIExpression(), !21943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21945), !dbg !21948
    #dbg_value(ptr poison, !16543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21949)
    #dbg_value(ptr %i.b, !21971, !DIExpression(), !21977)
    #dbg_value(ptr %i.f, !21969, !DIExpression(), !21977)
    #dbg_value(i64 %i.h, !21970, !DIExpression(), !21977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21978), !dbg !21981
    #dbg_value(ptr poison, !16622, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !21982)
    #dbg_value(ptr poison, !16639, !DIExpression(), !21984)
    #dbg_value(ptr %i.f, !16556, !DIExpression(), !21949)
    #dbg_value(ptr %i.f, !16649, !DIExpression(), !21986)
    #dbg_value(ptr %i.f, !16658, !DIExpression(), !21988)
    #dbg_value(i64 %i.h, !16557, !DIExpression(), !21949)
    #dbg_value(i64 %i.h, !16668, !DIExpression(), !21990)
    #dbg_value(i64 %i.h, !16655, !DIExpression(), !21986)
    #dbg_value(ptr undef, !16543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21949)
    #dbg_value(ptr poison, !16543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21949)
    #dbg_value(i8 -1, !16677, !DIExpression(), !21992)
  %i.i = lshr i64 %i.h, 57, !dbg !21995
  %i.j = trunc nuw nsw i64 %i.i to i8, !dbg !21996
    #dbg_value(i8 %i.j, !16558, !DIExpression(), !21997)
    #dbg_value(i8 %i.j, !16677, !DIExpression(), !21998)
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 152, !dbg !22000
  %i.l = load i64, ptr %i.k, align 8, !dbg !22000, !alias.scope !22001, !noalias !22002, !noundef !64 ; 2 uses
    #dbg_value(!DIArgList(i64 %i.h, i64 %i.l), !16564, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22005)
    #dbg_value(i64 0, !16564, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22005)
  %i.m = load ptr, ptr %i.f, align 8, !alias.scope !22001, !noalias !22002, !nonnull !64, !noundef !64 ; 2 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !22006

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.e ], !dbg !21997
  %.pn.i.i.i.i = phi i64 [ %i.h, %bb.b ], [ %i.ag, %bb.e ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.l, !dbg !21997 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i.i.i.i, !16564, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22005)
    #dbg_value(i64 %.sroa.9.0.i.i.i.i.i, !16564, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22005)
    #dbg_value(i64 %.sroa.01.0.i.i.i.i.i, !16665, !DIExpression(), !21988)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i.i.i, !dbg !22007
    #dbg_value(ptr %i.p, !16713, !DIExpression(), !22009)
    #dbg_value(ptr %i.p, !16722, !DIExpression(), !22011)
    #dbg_value(<2 x i64> zeroinitializer, !16730, !DIExpression(), !22013)
    #dbg_value(ptr %i.p, !16735, !DIExpression(), !22014)
    #dbg_value(ptr undef, !16738, !DIExpression(), !22014)
    #dbg_value(i64 16, !16739, !DIExpression(), !22014)
  %.sroa.0.0.copyload.i29.i.i.i.i = load <16 x i8>, ptr %i.p, align 1, !dbg !22016, !noalias !22017 ; 2 uses
    #dbg_value(<2 x i64> poison, !16730, !DIExpression(), !22013)
    #dbg_value(<2 x i64> poison, !16570, !DIExpression(), !22020)
    #dbg_value(<2 x i64> poison, !16684, !DIExpression(), !21998)
    #dbg_value(<2 x i64> poison, !16696, !DIExpression(), !22021)
    #dbg_value(<2 x i64> poison, !16684, !DIExpression(), !21992)
    #dbg_declare(ptr poison, !16748, !DIExpression(), !22022)
    #dbg_declare(ptr poison, !16753, !DIExpression(), !22024)
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i.i.i, %i.o, !dbg !22025
    #dbg_value(<16 x i8> poison, !16685, !DIExpression(), !22026)
    #dbg_declare(ptr poison, !16759, !DIExpression(), !22027)
    #dbg_value(<16 x i8> poison, !16764, !DIExpression(), !22029)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !16773, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !22030)
  %i.r = bitcast <16 x i1> %i.q to i16, !dbg !22031 ; 2 uses
    #dbg_value(i16 %i.r, !16583, !DIExpression(), !22032)
    #dbg_value(ptr undef, !16622, !DIExpression(), !21982)
    #dbg_value(i16 %i.r, !16781, !DIExpression(), !22033)
  %.not.i.not35.i.i.i.i = icmp eq i16 %i.r, 0, !dbg !22035
  br i1 %.not.i.not35.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !dbg !22036

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.sroa.06.0.i36.i.i.i.i = phi i16 [ %i.ae, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i, !16583, !DIExpression(), !22032)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i, !16787, !DIExpression(), !22037)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i, !16801, !DIExpression(), !22038)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i, !16811, !DIExpression(), !22040)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i, !16820, !DIExpression(), !22042)
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i36.i.i.i.i, i1 true), !dbg !22044
  %i.t = zext nneg i16 %i.s to i64, !dbg !22045
    #dbg_value(i64 %i.t, !16630, !DIExpression(), !22046)
    #dbg_value(i16 %.sroa.06.0.i36.i.i.i.i, !16832, !DIExpression(), !22047)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i.i.i.i, i16 %.sroa.06.0.i36.i.i.i.i), !16583, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !22032)
    #dbg_value(i64 %i.t, !16585, !DIExpression(), !22049)
  %i.u = add i64 %.sroa.01.0.i.i.i.i.i, %i.t, !dbg !22050
  %i.v = and i64 %i.u, %i.l, !dbg !22050
    #dbg_value(i64 %i.v, !16587, !DIExpression(), !22051)
    #dbg_value(ptr poison, !22052, !DIExpression(DW_OP_deref, DW_OP_deref), !22060)
    #dbg_value(ptr poison, !22059, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !22060)
    #dbg_value(i64 %i.v, !22058, !DIExpression(), !22060)
    #dbg_value(i64 %i.v, !22062, !DIExpression(), !22076)
    #dbg_value(i64 %i.v, !22078, !DIExpression(), !22088)
    #dbg_value(i64 %i.v, !22090, !DIExpression(), !22097)
    #dbg_value(i64 1, !22096, !DIExpression(), !22099)
    #dbg_value(ptr %.val, !22068, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !22076)
    #dbg_value(ptr %i.m, !22084, !DIExpression(), !22088)
    #dbg_value(ptr %i.m, !22095, !DIExpression(), !22097)
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCshovLROGBtMy_11quinn_proto10congestion8new_renoNtB4_7NewRenoNtB6_10Controller6on_ack:bb.a
    #dbg_value(ptr %0, !25932, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !25947)
    #dbg_value(ptr %0, !25939, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !25940)
    #dbg_value(ptr %0, !25945, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !25946)
    #dbg_value(ptr poison, !25948, !DIExpression(), !25952)
    #dbg_value(ptr %0, !25951, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !25952)
    #dbg_value(ptr poison, !25953, !DIExpression(), !25959)
    #dbg_value(ptr %0, !25956, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !25959)
    #dbg_value(ptr poison, !25960, !DIExpression(), !25964)
    #dbg_value(ptr %0, !25963, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !25965)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !25966
  %i.b = load i64, ptr %i.a, align 8, !dbg !25966, !noundef !64 ; 2 uses
  %i.c = icmp eq i64 %3, %i.b, !dbg !25959
  %i.d = icmp sle i64 %3, %i.b, !dbg !25967
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !25959
  %i.f = load i32, ptr %i.e, align 8, !dbg !25959, !range !8546
  %i.g = icmp samesign ule i32 %4, %i.f, !dbg !25959
  %.sroa.01.0 = select i1 %i.c, i1 %i.g, i1 %i.d, !dbg !25959
    #dbg_value(i8 poison, !25924, !DIExpression(), !25974)
    #dbg_value(i8 poison, !25925, !DIExpression(), !25975)
    #dbg_value(i8 poison, !25970, !DIExpression(), !25976)
  br i1 %.sroa.01.0, label %bb.h, label %bb.c, !dbg !25933

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25977 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !25977, !noundef !64 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25978
  %i.k = load i64, ptr %i.j, align 8, !dbg !25978, !noundef !64 ; 3 uses
  %i.l = icmp ult i64 %i.i, %i.k, !dbg !25977
  br i1 %i.l, label %bb.e, label %bb.d, !dbg !25977

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25979 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !25979, !noundef !64
  %i.o = add i64 %i.n, %5, !dbg !25979            ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !dbg !25979
  %.not = icmp ult i64 %i.o, %i.i, !dbg !25980
  br i1 %.not, label %bb.h, label %bb.f, !dbg !25980

bb.e:                                             ; preds = %bb.c
  %i.p = add i64 %i.i, %5, !dbg !25981            ; 3 uses
  store i64 %i.p, ptr %i.h, align 8, !dbg !25981
  %.not16 = icmp ult i64 %i.p, %i.k, !dbg !25982
  br i1 %.not16, label %bb.h, label %bb.g, !dbg !25982

bb.f:                                             ; preds = %bb.d
  %i.q = sub nuw i64 %i.o, %i.i, !dbg !25983
  store i64 %i.q, ptr %i.m, align 8, !dbg !25983
  %i.r = load i64, ptr %0, align 8, !dbg !25984, !noundef !64
  %i.s = add i64 %i.r, %i.i, !dbg !25985
  store i64 %i.s, ptr %i.h, align 8, !dbg !25985
  br label %bb.h, !dbg !25986

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25987
  %i.u = sub nuw i64 %i.p, %i.k, !dbg !25987
  store i64 %i.u, ptr %i.t, align 8, !dbg !25987
  br label %bb.h, !dbg !25988

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.f, %bb.a, %bb.b
  ret void, !dbg !25989
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs_NtNtCshovLROGBtMy_11quinn_proto10congestion8new_renoNtB4_7NewRenoNtB6_10Controller6window(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #7 !dbg !25990 {
bb.a:
    #dbg_value(ptr %0, !25992, !DIExpression(), !25993)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25994
  %i.b = load i64, ptr %i.a, align 8, !dbg !25994, !noundef !64
  ret i64 %i.b, !dbg !25995
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs_NtNtCshovLROGBtMy_11quinn_proto10congestion8new_renoNtB4_7NewRenoNtB6_10Controller7metrics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24), (32, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #8 !dbg !25996 {
bb.a:
    #dbg_value(ptr %1, !26000, !DIExpression(), !26001)
    #dbg_value(ptr %1, !26002, !DIExpression(), !26005)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26007
  %i.b = load i64, ptr %i.a, align 8, !dbg !26007, !noundef !64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !26008
  %i.d = load i64, ptr %i.c, align 8, !dbg !26008, !noundef !64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26009
  store i64 %i.b, ptr %i.e, align 8, !dbg !26009
  store i64 1, ptr %0, align 8, !dbg !26009
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26009
  store i64 %i.d, ptr %i.f, align 8, !dbg !26009
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26009
  store i64 0, ptr %i.g, align 8, !dbg !26009
  ret void, !dbg !26010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs_NtNtCshovLROGBtMy_11quinn_proto10congestion8new_renoNtB4_7NewRenoNtB6_10Controller8into_any(ptr noalias noundef nonnull align 8 %0) unnamed_addr #10 !dbg !26011 {
bb.a:
    #dbg_value(ptr %0, !26015, !DIExpression(), !26016)
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0, !dbg !26017
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @143, 1, !dbg !26017
  ret { ptr, ptr } %i.b, !dbg !26017
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtCshovLROGBtMy_11quinn_proto10congestion8new_renoNtB4_7NewRenoNtB6_10Controller9clone_box(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !26018 {
bb.a:
  %i.a = alloca [56 x i8], align 16               ; 8 uses
    #dbg_value(ptr %0, !26022, !DIExpression(), !26023)
    #dbg_value(ptr %0, !26024, !DIExpression(), !26030)
    #dbg_value(i64 1, !26032, !DIExpression(), !26037)
    #dbg_value(i8 0, !26036, !DIExpression(), !26037)
    #dbg_value(i64 1, !26047, !DIExpression(), !26052)
    #dbg_value(i8 0, !26051, !DIExpression(), !26052)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26054
    #dbg_value(ptr %0, !26043, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !26055)
    #dbg_value(ptr %0, !26056, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !26059)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26061
  %i.c = load ptr, ptr %i.b, align 8, !dbg !26061, !nonnull !64, !noundef !64 ; 3 uses
    #dbg_value(ptr %i.c, !26035, !DIExpression(), !26064)
    #dbg_value(ptr %i.c, !26050, !DIExpression(), !26052)
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !dbg !26065
    #dbg_value(i64 %i.d, !26044, !DIExpression(), !26066)
  %i.e = icmp slt i64 %i.d, 0, !dbg !26067
  br i1 %i.e, label %bb.g, label %bb.b, !dbg !26067

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26046
    #dbg_value(ptr %0, !26068, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !26074)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !26074
  %i.h = load i64, ptr %i.g, align 8, !dbg !26074, !noundef !64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !26074
  %i.j = load i32, ptr %i.i, align 8, !dbg !26074, !range !8546, !noundef !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !26046 ; 2 uses
  store ptr %i.c, ptr %i.k, align 16, !dbg !26046
  %i.l = load <2 x i64>, ptr %0, align 8, !dbg !26046
  store <2 x i64> %i.l, ptr %i.a, align 16, !dbg !26046
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !26046
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !26046
  store i64 %i.h, ptr %i.n, align 8, !dbg !26046
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !26046
  store i32 %i.j, ptr %i.o, align 16, !dbg !26046
  %i.p = load <2 x i64>, ptr %i.f, align 8, !dbg !26046
  store <2 x i64> %i.p, ptr %i.m, align 16, !dbg !26046
    #dbg_declare(ptr %i.a, !22781, !DIExpression(), !26077)
    #dbg_value(i64 8, !21493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26079)
    #dbg_value(i64 8, !21502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26081)
    #dbg_value(i64 8, !21510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26083)
    #dbg_value(i64 56, !21493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26079)
    #dbg_value(i64 56, !21502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26081)
    #dbg_value(i64 56, !21510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26083)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !21507, !DIExpression(), !26081)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !21516, !DIExpression(), !26083)
    #dbg_value(i8 0, !21517, !DIExpression(), !26083)
    #dbg_value(i64 8, !21520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26085)
    #dbg_value(i64 8, !21552, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26087)
    #dbg_value(i64 56, !21520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26085)
    #dbg_value(i64 56, !21552, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26087)
    #dbg_value(i1 false, !21526, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !26085)
    #dbg_value(i64 56, !21527, !DIExpression(), !26089)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !26090, !noalias !26091
  %i.q = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 56, 545) 56, i64 noundef range(i64 8, 17) 8) #33, !dbg !26094, !noalias !26091 ; 3 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !26095
  br i1 %i.r, label %bb.c, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCshovLROGBtMy_11quinn_proto10congestion8new_reno7NewRenoE3newBK_.exit, !dbg !26096, !prof !3640

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc unwind label %bb.d, !dbg !26097

.noexc:                                           ; preds = %bb.c
  unreachable, !dbg !26097

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !3984, !DIExpression(), !26098)
    #dbg_value(ptr %i.k, !3992, !DIExpression(), !26100)
    #dbg_value(ptr %i.k, !4006, !DIExpression(), !26102)
    #dbg_value(i64 1, !4021, !DIExpression(), !26104)
    #dbg_value(i8 1, !4025, !DIExpression(), !26104)
    #dbg_value(i64 1, !4028, !DIExpression(), !26106)
    #dbg_value(i8 1, !4032, !DIExpression(), !26106)
    #dbg_value(ptr %i.c, !4024, !DIExpression(), !26108)
    #dbg_value(ptr %i.c, !4031, !DIExpression(), !26106)
  %i.t = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !26109, !noalias !26110
  %i.u = icmp eq i64 %i.t, 1, !dbg !26117
  br i1 %i.u, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion8new_reno7NewRenoEBH_.exit, !dbg !26117

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !3890, !DIExpression(), !26118)
  fence acquire, !dbg !26120
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshovLROGBtMy_11quinn_proto10congestion8new_reno13NewRenoConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion8new_reno7NewRenoEBH_.exit unwind label %bb.f, !dbg !26121

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !26122
  unreachable, !dbg !26122

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion8new_reno7NewRenoEBH_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.s, !dbg !26122

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCshovLROGBtMy_11quinn_proto10congestion8new_reno7NewRenoE3newBK_.exit: ; preds = %bb.b
    #dbg_value(ptr %i.q, !22787, !DIExpression(), !26123)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 16 dereferenceable(56) %i.a, i64 56, i1 false), !dbg !26124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26125
  %i.w = insertvalue { ptr, ptr } poison, ptr %i.q, 0, !dbg !26126
  %i.x = insertvalue { ptr, ptr } %i.w, ptr @126, 1, !dbg !26126
  ret { ptr, ptr } %i.x, !dbg !26126

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !26127
  unreachable, !dbg !26127
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtCshovLROGBtMy_11quinn_proto6crypto9ring_likeNtNtCs8shshkhJObF_4ring4hkdf3PrkNtB6_17HandshakeTokenKey14aead_from_hkdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !26128 {
_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCs8shshkhJObF_4ring4hkdf3OkmNtBK_9AlgorithmENtNtNtBM_5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %.sroa.218 = alloca [536 x i8], align 8         ; 2 uses
    #dbg_declare(ptr %.sroa.218, !26230, !DIExpression(DW_OP_LLVM_fragment, 64, 4288), !26241)
  %i.b = alloca [544 x i8], align 16              ; 6 uses
    #dbg_declare(ptr poison, !26243, !DIExpression(DW_OP_LLVM_fragment, 64, 4288), !26268)
    #dbg_declare(ptr poison, !26224, !DIExpression(DW_OP_LLVM_fragment, 64, 4288), !26270)
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 1                ; 5 uses
    #dbg_value(ptr %0, !26196, !DIExpression(), !26271)
    #dbg_value(ptr %1, !26197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26271)
    #dbg_value(i64 %2, !26197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26271)
    #dbg_declare(ptr %i.d, !26198, !DIExpression(), !26272)
    #dbg_declare(ptr %i.c, !26200, !DIExpression(), !26273)
    #dbg_declare(ptr %i.b, !26274, !DIExpression(), !26326)
    #dbg_value(ptr @_RNvNtNtCs8shshkhJObF_4ring4aead9algorithm11AES_256_GCM, !26334, !DIExpression(), !26341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !26342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !dbg !26343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !26344
  store ptr %1, ptr %i.c, align 8, !dbg !26345
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !26345
  store i64 %2, ptr %i.e, align 8, !dbg !26345
  %i.f = load ptr, ptr @_RNvNtCs8shshkhJObF_4ring4hkdf11HKDF_SHA256, align 8, !dbg !26346, !nonnull !64, !align !3512, !noundef !64
    #dbg_value(ptr %i.f, !26347, !DIExpression(), !26373)
    #dbg_value(ptr %0, !26369, !DIExpression(), !26373)
    #dbg_value(ptr %i.c, !26370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26373)
    #dbg_value(i64 1, !26370, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26373)
    #dbg_value(ptr poison, !26375, !DIExpression(), !26382)
    #dbg_value(ptr %i.f, !26384, !DIExpression(), !26391)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 89, !dbg !26393
  %i.h = load i8, ptr %i.g, align 1, !dbg !26393, !range !26394, !alias.scope !26395, !noalias !26398, !noundef !64
    #dbg_value(i8 %i.h, !26402, !DIExpression(), !26408)
  %i.i = zext nneg i8 %i.h to i64, !dbg !26410
    #dbg_value(ptr %0, !26203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26411)
    #dbg_value(ptr %0, !26412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26433)
    #dbg_value(ptr %i.c, !26203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26411)
    #dbg_value(ptr %i.c, !26412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26433)
    #dbg_value(i64 1, !26203, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26411)
    #dbg_value(i64 1, !26412, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26433)
    #dbg_value(ptr %i.f, !26203, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26411)
    #dbg_value(ptr %i.f, !26412, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26433)
    #dbg_value(i64 %i.i, !26203, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26411)
    #dbg_value(i64 %i.i, !26412, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26433)
    #dbg_value(ptr %i.d, !26432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26433)
    #dbg_value(i64 32, !26432, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26433)
  %i.j = call noundef zeroext i1 @_RNvNtCs8shshkhJObF_4ring4hkdf8fill_okm(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef 1, ptr noalias nofree noundef nonnull %i.d, i64 noundef 32, i64 noundef %i.i), !dbg !26435, !noalias !26436
    #dbg_value(i1 %i.j, !26439, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !26449)
    #dbg_declare(ptr %i.a, !26447, !DIExpression(), !26451)
  br i1 %i.j, label %bb.a, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCs8shshkhJObF_4ring5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit, !dbg !26452, !prof !3640

bb.a:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCs8shshkhJObF_4ring4hkdf3OkmNtBK_9AlgorithmENtNtNtBM_5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #36, !dbg !26453
  unreachable, !dbg !26453

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCs8shshkhJObF_4ring5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCs8shshkhJObF_4ring4hkdf3OkmNtBK_9AlgorithmENtNtNtBM_5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit
    #dbg_value(ptr %i.d, !26335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26341)
    #dbg_value(i64 32, !26335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26327
  call void @_RNvNtNtNtCs8shshkhJObF_4ring3cpu5intel12featureflags11get_or_init(), !dbg !26454
  call void @_RNvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB2_11LessSafeKey4new_(ptr noalias nofree noundef nonnull sret([544 x i8]) align 16 captures(none) dereferenceable(544) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @_RNvNtNtCs8shshkhJObF_4ring4aead9algorithm11AES_256_GCM, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 32), !dbg !26327
  %i.k = load i64, ptr %i.b, align 16, !dbg !26460, !range !26461, !noundef !64 ; 2 uses
  %i.l = icmp eq i64 %i.k, -2, !dbg !26460
  br i1 %i.l, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCs8shshkhJObF_4ring4aead11unbound_key10UnboundKeyNtNtNtBN_5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit, !dbg !26462

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCs8shshkhJObF_4ring5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26463
    #dbg_value(i64 -2, !26243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26464)
    #dbg_declare(ptr %i.a, !26266, !DIExpression(), !26465)
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #36, !dbg !26466, !noalias !26467
  unreachable, !dbg !26466

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCs8shshkhJObF_4ring4aead11unbound_key10UnboundKeyNtNtNtBN_5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCs8shshkhJObF_4ring5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !26471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.sroa.218, ptr noundef nonnull align 8 dereferenceable(536) %.sroa.2.0..sroa_idx, i64 536, i1 false), !dbg !26471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26463
    #dbg_value(i64 %i.k, !26243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26464)
    #dbg_declare(ptr %i.a, !26266, !DIExpression(), !26465)
    #dbg_value(i64 %i.k, !26224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26472)
    #dbg_value(i64 %i.k, !26230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26473)
    #dbg_value(i64 16, !21493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26474)
    #dbg_value(i64 16, !21502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26476)
    #dbg_value(i64 16, !21510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26478)
    #dbg_value(i64 544, !21493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26474)
    #dbg_value(i64 544, !21502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26476)
    #dbg_value(i64 544, !21510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26478)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !21507, !DIExpression(), !26476)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !21516, !DIExpression(), !26478)
    #dbg_value(i8 0, !21517, !DIExpression(), !26478)
    #dbg_value(i64 16, !21520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26480)
    #dbg_value(i64 16, !21552, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26482)
    #dbg_value(i64 544, !21520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26480)
    #dbg_value(i64 544, !21552, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26482)
    #dbg_value(i1 false, !21526, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !26480)
    #dbg_value(i64 544, !21527, !DIExpression(), !26484)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !26485, !noalias !26486
  %i.m = call noundef align 16 dereferenceable_or_null(544) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 56, 545) 544, i64 noundef range(i64 8, 17) 16) #33, !dbg !26489, !noalias !26486 ; 4 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !26490
  br i1 %i.n, label %bb.c, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !26491, !prof !3640

bb.c:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCs8shshkhJObF_4ring4aead11unbound_key10UnboundKeyNtNtNtBN_5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit
  call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 544) #37, !dbg !26492, !noalias !26486
  unreachable, !dbg !26492

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCs8shshkhJObF_4ring4aead11unbound_key10UnboundKeyNtNtNtBN_5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit
    #dbg_value(ptr %i.m, !26236, !DIExpression(), !26493)
  store i64 %i.k, ptr %i.m, align 16, !dbg !26494
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !26494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.sroa.218.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(536) %.sroa.218, i64 536, i1 false), !dbg !26494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !26495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !26496
  %i.o = insertvalue { ptr, ptr } poison, ptr %i.m, 0, !dbg !26497
  %i.p = insertvalue { ptr, ptr } %i.o, ptr @147, 1, !dbg !26497
  ret { ptr, ptr } %i.p, !dbg !26497
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtNtBa_3ops5range5RangeyEEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !26498 {
bb.a:
    #dbg_value(ptr %1, !26500, !DIExpression(), !26501)
    #dbg_declare(ptr poison, !26502, !DIExpression(), !26508)
    #dbg_value(ptr %1, !26514, !DIExpression(), !26523)
    #dbg_value(i64 1, !26525, !DIExpression(), !26529)
  %i.a = load ptr, ptr %1, align 8, !dbg !26531, !alias.scope !26532, !nonnull !64, !noundef !64 ; 3 uses
    #dbg_value(ptr %i.a, !26517, !DIExpression(), !26535)
    #dbg_value(ptr %i.a, !26528, !DIExpression(), !26529)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26536
  %i.c = load ptr, ptr %i.b, align 8, !dbg !26536, !alias.scope !26532, !nonnull !64, !noundef !64
    #dbg_value(ptr %i.c, !26519, !DIExpression(), !26537)
    #dbg_value(ptr poison, !26538, !DIExpression(), !26542)
    #dbg_value(ptr poison, !26541, !DIExpression(), !26544)
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !26545
  br i1 %i.d, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.thread, label %bb.b, !dbg !26546

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !26547
  store ptr %i.e, ptr %1, align 8, !dbg !26548, !alias.scope !26532
    #dbg_value(ptr %i.a, !26512, !DIExpression(), !26549)
    #dbg_value(ptr %i.a, !26505, !DIExpression(), !26550)
    #dbg_value(ptr %i.a, !26506, !DIExpression(), !26551)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26552
  %i.g = load <2 x i64>, ptr %i.a, align 8, !dbg !26553
  store <2 x i64> %i.g, ptr %i.f, align 8, !dbg !26552
  br label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.thread, !dbg !26556

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.thread: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !26550
  store i64 %storemerge, ptr %0, align 8, !dbg !26550
  ret void, !dbg !26557
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtNtBa_3ops5range5RangeyEEENtNtNtB8_6traits8iterator8Iterator9size_hintCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 !dbg !26558 {
bb.a:
    #dbg_value(ptr %1, !26563, !DIExpression(), !26564)
  %.val = load ptr, ptr %1, align 8, !dbg !26565, !nonnull !64, !noundef !64
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26565
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !26565, !nonnull !64, !noundef !64
    #dbg_value(ptr poison, !26566, !DIExpression(), !26578)
    #dbg_value(i64 16, !26580, !DIExpression(), !26586)
    #dbg_value(ptr %.val1, !26576, !DIExpression(), !26598)
    #dbg_value(ptr %.val1, !26595, !DIExpression(), !26599)
    #dbg_value(ptr %.val, !26596, !DIExpression(), !26599)
    #dbg_value(ptr %.val1, !26590, !DIExpression(), !26600)
    #dbg_value(ptr %.val, !26591, !DIExpression(), !26600)
    #dbg_value(ptr %.val, !26585, !DIExpression(), !26601)
    #dbg_value(ptr %.val1, !26584, !DIExpression(), !26601)
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !26602
  %i.c = ptrtoint ptr %.val to i64, !dbg !26602
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !26602
  %i.e = lshr exact i64 %i.d, 4, !dbg !26602      ; 2 uses
    #dbg_value(i64 %i.e, !26572, !DIExpression(), !26603)
  store i64 %i.e, ptr %0, align 8, !dbg !26604, !alias.scope !26605
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26604
  store i64 1, ptr %i.f, align 8, !dbg !26604, !alias.scope !26605
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26604
  store i64 %i.e, ptr %i.g, align 8, !dbg !26604, !alias.scope !26605
  ret void, !dbg !26608
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtCshovLROGBtMy_11quinn_proto3DirEENtNtNtB8_6traits8iterator8Iterator4nextB1t_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #11 !dbg !26609 {
bb.a:
    #dbg_value(ptr %0, !26613, !DIExpression(), !26615)
    #dbg_declare(ptr poison, !26616, !DIExpression(), !26642)
    #dbg_value(ptr %0, !26651, !DIExpression(), !26662)
    #dbg_value(i64 1, !26664, !DIExpression(), !26671)
  %i.a = load ptr, ptr %0, align 8, !dbg !26673, !alias.scope !26674, !nonnull !64, !noundef !64 ; 3 uses
    #dbg_value(ptr %i.a, !26656, !DIExpression(), !26677)
end_hunk_2
