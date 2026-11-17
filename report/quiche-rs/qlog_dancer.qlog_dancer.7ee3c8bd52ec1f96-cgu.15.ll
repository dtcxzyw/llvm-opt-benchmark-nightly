Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.15?download=true
inline.NumInlined: 1411
inline.NumDeleted: 745
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvYNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend11draw_circleNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_value(i32 %3, !37103, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !35679)
    #dbg_value(ptr %5, !37105, !DIExpression(), !35679)
    #dbg_declare(ptr %i.bq, !37125, !DIExpression(), !35680)
    #dbg_declare(ptr %i.bo, !37127, !DIExpression(), !35681)
    #dbg_declare(ptr %i.bm, !37129, !DIExpression(), !35682)
    #dbg_declare(ptr %i.bk, !37131, !DIExpression(), !35683)
    #dbg_declare(ptr %i.bi, !37133, !DIExpression(), !35684)
    #dbg_declare(ptr %i.bg, !37135, !DIExpression(), !35685)
    #dbg_declare(ptr %i.be, !37137, !DIExpression(), !35686)
    #dbg_declare(ptr %i.bc, !37139, !DIExpression(), !35687)
    #dbg_declare(ptr %i.ba, !37141, !DIExpression(), !35688)
    #dbg_declare(ptr %i.ay, !37143, !DIExpression(), !35689)
    #dbg_declare(ptr %i.aw, !37145, !DIExpression(), !35690)
    #dbg_value(double 2.000000e+00, !37225, !DIExpression(), !35693)
    #dbg_value(double 2.000000e+00, !37228, !DIExpression(), !35696)
    #dbg_value(double 2.000000e+00, !37225, !DIExpression(), !35698)
    #dbg_value(double 2.000000e+00, !37228, !DIExpression(), !35700)
    #dbg_value(double 1.000000e-05, !37232, !DIExpression(), !35703)
    #dbg_value(ptr %5, !10489, !DIExpression(), !35705)
    #dbg_value(ptr %5, !10494, !DIExpression(), !35707)
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8, !dbg !37866
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 9, !dbg !37867
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 10, !dbg !37868
  %i.bu = load double, ptr %5, align 8, !dbg !37869, !alias.scope !37235, !noundef !3744 ; 6 uses
  %i.bv = fcmp oeq double %i.bu, 0.000000e+00, !dbg !37870
  br i1 %i.bv, label %bb.c, label %bb.b, !dbg !37870

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.e, label %bb.d, !dbg !37871

bb.c:                                             ; preds = %bb.a
  store i8 -2, ptr %0, align 8, !dbg !37872, !alias.scope !37207
  br label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_circleNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !37873

bb.d:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !37874
  %.val73.i = load i32, ptr %i.bw, align 8, !dbg !37874, !alias.scope !37208, !noundef !3744 ; 2 uses
  %i.bx = icmp eq i32 %.val73.i, 1, !dbg !37875
  br i1 %i.bx, label %bb.e, label %bb.f, !dbg !37875

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.b
  %.sroa.011.0.shrunk.i = phi i1 [ true, %bb.b ], [ false, %bb.d ], [ true, %bb.f ]
  %.sroa.0.0.i = phi i32 [ %4, %bb.b ], [ %4, %bb.d ], [ %i.cx, %bb.f ] ; 4 uses
    #dbg_value(i32 %.sroa.0.0.i, !37104, !DIExpression(), !35679)
    #dbg_value(i1 %.sroa.011.0.shrunk.i, !37106, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !35679)
    #dbg_value(i32 %.sroa.0.0.i, !37237, !DIExpression(), !35712)
  %i.by = uitofp i32 %.sroa.0.0.i to double, !dbg !37876 ; 4 uses
  %i.bz = fmul nnan double %i.by, f0x3FD2BEC333018866, !dbg !37877
    #dbg_value(double %i.bz, !37239, !DIExpression(), !35715)
    #dbg_value(double %i.bz, !37241, !DIExpression(), !35718)
  %i.ca = tail call double @llvm.ceil.f64(double %i.bz), !dbg !37878
  %i.cb = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.ca), !dbg !37877 ; 3 uses
    #dbg_value(i32 %i.cb, !37108, !DIExpression(), !35719)
    #dbg_value(i32 %.sroa.0.0.i, !37237, !DIExpression(), !35721)
  %i.cc = fmul nnan double %i.by, f0x3FFB504F333F9DE6, !dbg !37879
    #dbg_value(double %i.cc, !37243, !DIExpression(), !35724)
    #dbg_value(double %i.cc, !37245, !DIExpression(), !35727)
  %i.cd = tail call double @llvm.floor.f64(double %i.cc), !dbg !37880
  %i.ce = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.cd), !dbg !37879 ; 3 uses
    #dbg_value(i32 %i.ce, !37109, !DIExpression(), !35728)
    #dbg_value(i32 %i.cb, !37110, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35729)
    #dbg_value(i32 %i.ce, !37110, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !35729)
    #dbg_value(i8 0, !37110, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !35729)
    #dbg_value(!DIArgList(i32 %3, i32 %.sroa.0.0.i, i32 %i.cb), !37111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !35730)
    #dbg_value(!DIArgList(i32 %3, i32 0, i32 %.sroa.0.0.i), !37112, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !35730)
    #dbg_value(i32 %i.ce, !37113, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !35731)
    #dbg_value(i32 %i.cb, !37113, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35731)
    #dbg_value(i8 poison, !37113, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !35731)
    #dbg_value(ptr undef, !37221, !DIExpression(), !35678)
    #dbg_value(ptr undef, !37212, !DIExpression(), !35677)
  %.not.i74274.i = icmp sgt i32 %i.cb, %i.ce
  br i1 %.not.i74274.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !37881

.lr.ph.i:                                         ; preds = %bb.e
  %i.cf = fmul double %i.by, %i.by
  %i.cg = load i8, ptr %i.br, align 8, !alias.scope !37208 ; 11 uses
  %i.ch = load i8, ptr %i.bs, align 1, !alias.scope !37208 ; 11 uses
  %i.ci = load i8, ptr %i.bt, align 2, !alias.scope !37208 ; 11 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.4186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 9
  %.sroa.5187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.4189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 9
  %.sroa.5190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.4192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 9
  %.sroa.5193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4195.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  %.sroa.5196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 10
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.4.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 9
  %.sroa.5.0..sroa_idx.i78.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.4.0..sroa_idx.i103.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 9
  %.sroa.5.0..sroa_idx.i104.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  %i.cp = xor i32 %.sroa.0.0.i, -1
  %invariant.op.i = add i32 %3, %i.cp, !dbg !37882
  %.reass.i = add i32 %invariant.op.i, %i.cb
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.4.0..sroa_idx.i107.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 9
  %.sroa.5.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  %invariant.op272.i = add i32 %3, 1, !dbg !37882
  %i.cr = sub i32 %invariant.op272.i, %.sroa.0.0.i
  %.reass273.i = add i32 %i.cr, %i.ce
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.4198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 9
  %.sroa.5199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  %i.ct = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.4201.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 9
  %.sroa.5202.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 10
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.4204.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  %.sroa.5205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.cv = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.4207.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  %.sroa.5208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  br label %bb.fa, !dbg !37881

bb.f:                                             ; preds = %bb.d
  %i.cw = lshr i32 %.val73.i, 1, !dbg !37883      ; 3 uses
    #dbg_value(!DIArgList(i32 poison, i32 poison), !37107, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !35732)
  %i.cx = add i32 %i.cw, %4, !dbg !37884          ; 9 uses
    #dbg_value(i32 %i.cx, !37104, !DIExpression(), !35679)
  %.not.not.i = icmp ugt i32 %4, %i.cw, !dbg !37885
  br i1 %.not.not.i, label %bb.g, label %bb.e, !dbg !37885

bb.g:                                             ; preds = %bb.f
    #dbg_value(!DIArgList(i32 %4, i32 %i.cw), !37107, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !35732)
  %i.cy = sub nuw i32 %4, %i.cw, !dbg !37886      ; 11 uses
    #dbg_value(i32 %i.cy, !37107, !DIExpression(), !35732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37250), !dbg !37887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !37251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !37251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !37251
    #dbg_value(ptr %1, !37058, !DIExpression(), !35736)
  store ptr %1, ptr %i.au, align 8, !noalias !37252
  store i32 %2, ptr %i.at, align 4, !noalias !37252
  %i.cz = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 16 uses
  store i32 %3, ptr %i.cz, align 4, !noalias !37252
    #dbg_value(ptr %5, !37061, !DIExpression(), !35736)
  store ptr %5, ptr %i.as, align 8, !noalias !37252
    #dbg_declare(ptr %i.at, !37059, !DIExpression(), !35739)
    #dbg_value(i32 %i.cx, !37060, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35736)
    #dbg_value(i32 %i.cy, !37060, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !35736)
    #dbg_declare(ptr %i.ar, !37065, !DIExpression(), !35740)
    #dbg_declare(ptr %i.aq, !37067, !DIExpression(), !35741)
    #dbg_declare(ptr %i.ap, !37069, !DIExpression(), !35742)
    #dbg_declare(ptr %i.ao, !37071, !DIExpression(), !35743)
    #dbg_declare(ptr %i.an, !37075, !DIExpression(), !35744)
    #dbg_declare(ptr %i.am, !37077, !DIExpression(), !35745)
    #dbg_declare(ptr %i.al, !37079, !DIExpression(), !35746)
    #dbg_declare(ptr %i.aj, !37081, !DIExpression(), !35747)
    #dbg_declare(ptr %i.ah, !37086, !DIExpression(), !35748)
    #dbg_declare(ptr %i.af, !37088, !DIExpression(), !35749)
    #dbg_declare(ptr %i.ad, !37090, !DIExpression(), !35750)
    #dbg_declare(ptr %i.ab, !37092, !DIExpression(), !35751)
    #dbg_declare(ptr %i.z, !37094, !DIExpression(), !35752)
    #dbg_declare(ptr %i.x, !37096, !DIExpression(), !35753)
    #dbg_declare(ptr %i.v, !37098, !DIExpression(), !35754)
    #dbg_declare(ptr %i.t, !37100, !DIExpression(), !35755)
    #dbg_value(double 2.000000e+00, !37253, !DIExpression(), !35758)
    #dbg_value(double 2.000000e+00, !37256, !DIExpression(), !35761)
    #dbg_value(double 0.000000e+00, !37259, !DIExpression(), !35764)
    #dbg_value(double 2.000000e+00, !37253, !DIExpression(), !35766)
    #dbg_value(double 2.000000e+00, !37256, !DIExpression(), !35768)
    #dbg_value(double 2.000000e+00, !37253, !DIExpression(), !35770)
    #dbg_value(double 2.000000e+00, !37256, !DIExpression(), !35772)
  %i.da = sub i32 %i.cx, %i.cy, !dbg !37888
  %i.db = uitofp i32 %i.da to double, !dbg !37889
    #dbg_value(double %i.db, !37264, !DIExpression(), !35775)
  %i.dc = uitofp i32 %i.cx to double, !dbg !37890 ; 5 uses
  %i.dd = fmul nnan double %i.dc, f0x3FD2BEC333018868, !dbg !37890
    #dbg_value(double %i.dd, !37265, !DIExpression(), !35775)
  %i.de = tail call nsz double @llvm.minimumnum.f64(double %i.db, double %i.dd), !dbg !37891
    #dbg_value(double %i.de, !37062, !DIExpression(), !35776)
  %i.df = fsub double %i.dc, %i.de, !dbg !37892   ; 5 uses
  %i.dg = uitofp i32 %i.cy to double, !dbg !37893 ; 4 uses
  %i.dh = fsub double %i.df, %i.dg, !dbg !37894
    #dbg_value(double %i.dh, !37260, !DIExpression(), !35764)
  %i.di = tail call nsz double @llvm.maximumnum.f64(double %i.dh, double 0.000000e+00), !dbg !37895 ; 2 uses
    #dbg_value(double %i.di, !37063, !DIExpression(), !35777)
    #dbg_value(double %i.di, !37267, !DIExpression(), !35780)
    #dbg_value(double %i.di, !37269, !DIExpression(), !35783)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !37896, !noalias !37252
    #dbg_value(ptr %i.au, !37272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35795)
    #dbg_value(ptr %i.as, !37272, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35795)
    #dbg_value(ptr %i.at, !37272, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !35795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37293), !dbg !37897
    #dbg_declare(ptr poison, !37285, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !35798)
    #dbg_value(ptr poison, !37212, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35801)
    #dbg_value(ptr poison, !37212, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !35801)
    #dbg_value(ptr poison, !37221, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35802)
    #dbg_value(ptr poison, !37221, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !35802)
    #dbg_value(double %i.de, !37279, !DIExpression(), !35803)
    #dbg_value(i32 %i.cx, !37280, !DIExpression(), !35803)
    #dbg_declare(ptr %i.r, !37289, !DIExpression(), !35804)
  %i.dj = fmul double %i.dc, %i.dc, !dbg !37898   ; 6 uses
    #dbg_value(double %i.df, !37294, !DIExpression(), !35807)
    #dbg_value(double %i.df, !37296, !DIExpression(), !35810)
  %i.dk = fmul double %i.df, %i.df, !dbg !37899
  %i.dl = fsub double %i.dj, %i.dk, !dbg !37900
    #dbg_value(double %i.dl, !37299, !DIExpression(), !35813)
    #dbg_value(double %i.dl, !37301, !DIExpression(), !35816)
  %i.dm = tail call double @llvm.sqrt.f64(double %i.dl), !dbg !37901 ; 2 uses
    #dbg_value(double %i.dm, !37281, !DIExpression(), !35817)
    #dbg_value(double %i.dm, !37303, !DIExpression(), !35820)
    #dbg_value(double %i.dm, !37305, !DIExpression(), !35823)
  %i.dn = fneg double %i.dm, !dbg !37902
    #dbg_value(double %i.dn, !37294, !DIExpression(), !35825)
    #dbg_value(double %i.dn, !37296, !DIExpression(), !35827)
  %i.do = tail call double @llvm.ceil.f64(double %i.dn), !dbg !37903
  %i.dp = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.do), !dbg !37902 ; 5 uses
    #dbg_value(i32 %i.dp, !37282, !DIExpression(), !35828)
  %i.dq = tail call double @llvm.floor.f64(double %i.dm), !dbg !37904
  %i.dr = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.dq), !dbg !37905 ; 5 uses
    #dbg_value(i32 %i.dr, !37283, !DIExpression(), !35829)
  %i.ds = tail call double @llvm.ceil.f64(double %i.df), !dbg !37906 ; 4 uses
    #dbg_value(double %i.ds, !37284, !DIExpression(), !35830)
    #dbg_value(i32 %i.dp, !37285, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35831)
    #dbg_value(i32 %i.dr, !37285, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !35831)
    #dbg_value(i8 poison, !37285, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !35831)
    #dbg_value(ptr undef, !37221, !DIExpression(), !35802)
    #dbg_value(ptr undef, !37212, !DIExpression(), !35801)
  %.not.i23.i.i.i = icmp sgt i32 %i.dp, %i.dr     ; 4 uses
  br i1 %.not.i23.i.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %.lr.ph.i.i.i, !dbg !37907

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
  %.sroa.0.024.i.i.i = phi i32 [ %i.ee, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i ], [ %i.dp, %bb.g ] ; 3 uses
    #dbg_value(i32 %.sroa.0.024.i.i.i, !37307, !DIExpression(), !35835)
    #dbg_value(i32 %.sroa.0.024.i.i.i, !37313, !DIExpression(), !35838)
    #dbg_value(i64 1, !37310, !DIExpression(), !35835)
    #dbg_value(i32 1, !37311, !DIExpression(), !35839)
    #dbg_value(i32 1, !37314, !DIExpression(), !35838)
    #dbg_value(i32 poison, !37285, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35831)
    #dbg_value(i1 poison, !37285, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !35831)
    #dbg_value(i32 %.sroa.0.024.i.i.i, !37286, !DIExpression(), !35840)
  %i.dt = sitofp i32 %.sroa.0.024.i.i.i to double, !dbg !37908 ; 2 uses
  %i.du = fmul nnan double %i.dt, %i.dt, !dbg !37908
  %i.dv = fsub double %i.dj, %i.du, !dbg !37909
    #dbg_value(double %i.dv, !37299, !DIExpression(), !35842)
    #dbg_value(double %i.dv, !37301, !DIExpression(), !35844)
  %i.dw = tail call double @llvm.sqrt.f64(double %i.dv), !dbg !37910
    #dbg_value(double %i.dw, !37287, !DIExpression(), !35845)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !37911, !noalias !37318
    #dbg_value(ptr poison, !37320, !DIExpression(DW_OP_deref, DW_OP_deref), !35849)
    #dbg_value(ptr poison, !37326, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !35849)
    #dbg_value(ptr poison, !37327, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !35849)
    #dbg_value(i32 %.sroa.0.024.i.i.i, !37324, !DIExpression(), !35849)
    #dbg_value(double %i.ds, !37325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35849)
    #dbg_value(double %i.dw, !37325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35849)
  %i.dx = load ptr, ptr %i.au, align 8, !dbg !37912, !noalias !37329, !nonnull !3744, !align !4908, !noundef !3744
  %i.dy = load ptr, ptr %i.as, align 8, !dbg !37913, !noalias !37329, !nonnull !3744, !align !4908, !noundef !3744
  %i.dz = load i32, ptr %i.at, align 4, !dbg !37914, !noalias !37329, !noundef !3744
  %i.ea = load i32, ptr %i.cz, align 4, !dbg !37914, !noalias !37329, !noundef !3744
  call fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.r, ptr noalias nofree noundef align 8 dereferenceable(64) %i.dx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dy, i32 noundef %i.dz, i32 noundef %i.ea, i32 noundef 0, i32 noundef 1, i32 noundef %.sroa.0.024.i.i.i, double noundef %i.ds, double noundef %i.dw), !dbg !37915, !noalias !37330
    #dbg_value(ptr %i.r, !37331, !DIExpression(), !35855)
    #dbg_value(ptr %i.r, !37333, !DIExpression(), !35858)
  %i.eb = load i8, ptr %i.r, align 8, !dbg !37916, !range !10475, !noalias !37318, !noundef !3744
  %.not.i.i.i = icmp eq i8 %i.eb, -2, !dbg !37916
  br i1 %.not.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !37917

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i, %bb.g
    #dbg_value(i32 poison, !37285, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35831)
    #dbg_value(i8 poison, !37285, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !35831)
  store i8 -2, ptr %i.ar, align 8, !dbg !37918, !alias.scope !37293, !noalias !37252
    #dbg_value(ptr %i.ar, !37200, !DIExpression(), !35860)
    #dbg_value(ptr %i.ar, !37197, !DIExpression(), !35862)
  br label %bb.h, !dbg !37919

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ec = tail call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.024.i.i.i, i32 1), !dbg !37920 ; 2 uses
  %i.ed = extractvalue { i32, i1 } %i.ec, 1, !dbg !37921
    #dbg_value(i1 %i.ed, !37285, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !35831)
  %i.ee = extractvalue { i32, i1 } %i.ec, 0, !dbg !37921 ; 2 uses
    #dbg_value(i32 %i.ee, !37285, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35831)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !37922, !noalias !37318
    #dbg_value(i8 poison, !37285, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !35831)
    #dbg_value(ptr undef, !37221, !DIExpression(), !35802)
    #dbg_value(ptr undef, !37212, !DIExpression(), !35801)
  %.not.i.i.i.i = icmp sgt i32 %i.ee, %i.dr
  %or.cond.i.i.i = or i1 %i.ed, %.not.i.i.i.i, !dbg !37907
  br i1 %or.cond.i.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %.lr.ph.i.i.i, !dbg !37907

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %.lr.ph.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !37923, !noalias !37335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !37922, !noalias !37318
  %.pr.i.i = load i8, ptr %i.ar, align 8, !dbg !37924, !noalias !37252
    #dbg_value(ptr %i.ar, !37200, !DIExpression(), !35860)
    #dbg_value(ptr %i.ar, !37197, !DIExpression(), !35862)
  %.not.i.i = icmp eq i8 %.pr.i.i, -2, !dbg !37924
  br i1 %.not.i.i, label %bb.h, label %bb.i, !dbg !37919

bb.h:                                             ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !37925, !noalias !37252
    #dbg_value(ptr %i.au, !37336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35876)
    #dbg_value(ptr %i.as, !37336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35876)
    #dbg_value(ptr %i.at, !37336, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !35876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37357), !dbg !37926
    #dbg_declare(ptr poison, !37349, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !35879)
    #dbg_value(ptr poison, !37212, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35882)
    #dbg_value(ptr poison, !37212, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !35882)
    #dbg_value(ptr poison, !37221, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35883)
    #dbg_value(ptr poison, !37221, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !35883)
    #dbg_value(double %i.de, !37343, !DIExpression(), !35884)
    #dbg_value(i32 %i.cx, !37344, !DIExpression(), !35884)
    #dbg_declare(ptr %i.q, !37353, !DIExpression(), !35885)
    #dbg_value(double %i.dl, !37358, !DIExpression(), !35888)
    #dbg_value(double %i.dl, !37360, !DIExpression(), !35891)
    #dbg_value(double %i.dm, !37345, !DIExpression(), !35892)
    #dbg_value(i32 %i.dp, !37346, !DIExpression(), !35893)
    #dbg_value(i32 %i.dr, !37347, !DIExpression(), !35894)
    #dbg_value(double %i.ds, !37348, !DIExpression(), !35895)
    #dbg_value(i32 %i.dp, !37349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35896)
    #dbg_value(i32 %i.dr, !37349, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !35896)
    #dbg_value(i8 poison, !37349, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !35896)
    #dbg_value(ptr undef, !37221, !DIExpression(), !35883)
    #dbg_value(ptr undef, !37212, !DIExpression(), !35882)
  br i1 %.not.i23.i.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %.lr.ph.i63.i.i, !dbg !37927

.lr.ph.i63.i.i:                                   ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i66.i.i
  %.sroa.0.024.i64.i.i = phi i32 [ %i.eq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i66.i.i ], [ %i.dp, %bb.h ] ; 3 uses
    #dbg_value(i32 %.sroa.0.024.i64.i.i, !37307, !DIExpression(), !35898)
    #dbg_value(i32 %.sroa.0.024.i64.i.i, !37313, !DIExpression(), !35900)
    #dbg_value(i64 1, !37310, !DIExpression(), !35898)
    #dbg_value(i32 1, !37311, !DIExpression(), !35901)
    #dbg_value(i32 1, !37314, !DIExpression(), !35900)
    #dbg_value(i32 poison, !37349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35896)
    #dbg_value(i1 poison, !37349, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !35896)
    #dbg_value(i32 %.sroa.0.024.i64.i.i, !37350, !DIExpression(), !35902)
  %i.ef = sitofp i32 %.sroa.0.024.i64.i.i to double, !dbg !37928 ; 2 uses
  %i.eg = fmul nnan double %i.ef, %i.ef, !dbg !37928
  %i.eh = fsub double %i.dj, %i.eg, !dbg !37929
    #dbg_value(double %i.eh, !37358, !DIExpression(), !35904)
    #dbg_value(double %i.eh, !37360, !DIExpression(), !35906)
  %i.ei = tail call double @llvm.sqrt.f64(double %i.eh), !dbg !37930
    #dbg_value(double %i.ei, !37351, !DIExpression(), !35907)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !37931, !noalias !37363
    #dbg_value(ptr poison, !37365, !DIExpression(DW_OP_deref, DW_OP_deref), !35911)
    #dbg_value(ptr poison, !37371, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !35911)
    #dbg_value(ptr poison, !37372, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !35911)
    #dbg_value(i32 %.sroa.0.024.i64.i.i, !37369, !DIExpression(), !35911)
    #dbg_value(double %i.ds, !37370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35911)
    #dbg_value(double %i.ei, !37370, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35911)
  %i.ej = load ptr, ptr %i.au, align 8, !dbg !37932, !noalias !37374, !nonnull !3744, !align !4908, !noundef !3744
  %i.ek = load ptr, ptr %i.as, align 8, !dbg !37933, !noalias !37374, !nonnull !3744, !align !4908, !noundef !3744
  %i.el = load i32, ptr %i.at, align 4, !dbg !37934, !noalias !37374, !noundef !3744
  %i.em = load i32, ptr %i.cz, align 4, !dbg !37934, !noalias !37374, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.q, ptr noalias nofree noundef align 8 dereferenceable(64) %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ek, i32 noundef %i.el, i32 noundef %i.em, i32 noundef 0, i32 noundef -1, i32 noundef %.sroa.0.024.i64.i.i, double noundef %i.ds, double noundef %i.ei)
          to label %.noexc.i.i unwind label %.loopexit.split-lp299.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !37935, !noalias !37375

.noexc.i.i:                                       ; preds = %.lr.ph.i63.i.i
    #dbg_value(ptr %i.q, !37376, !DIExpression(), !35917)
    #dbg_value(ptr %i.q, !37378, !DIExpression(), !35920)
  %i.en = load i8, ptr %i.q, align 8, !dbg !37936, !range !10475, !noalias !37363, !noundef !3744
  %.not.i65.i.i = icmp eq i8 %i.en, -2, !dbg !37936
  br i1 %.not.i65.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i66.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !37937

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i66.i.i, %bb.h
    #dbg_value(i32 poison, !37349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35896)
    #dbg_value(i8 poison, !37349, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !35896)
  store i8 -2, ptr %i.aq, align 8, !dbg !37938, !alias.scope !37357, !noalias !37252
    #dbg_value(ptr %i.aq, !37200, !DIExpression(), !35922)
    #dbg_value(ptr %i.aq, !37197, !DIExpression(), !35924)
  br label %bb.k, !dbg !37939

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i66.i.i: ; preds = %.noexc.i.i
  %i.eo = tail call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.024.i64.i.i, i32 1), !dbg !37940 ; 2 uses
  %i.ep = extractvalue { i32, i1 } %i.eo, 1, !dbg !37941
    #dbg_value(i1 %i.ep, !37349, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !35896)
  %i.eq = extractvalue { i32, i1 } %i.eo, 0, !dbg !37941 ; 2 uses
    #dbg_value(i32 %i.eq, !37349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35896)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !37942, !noalias !37363
    #dbg_value(i8 poison, !37349, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !35896)
    #dbg_value(ptr undef, !37221, !DIExpression(), !35883)
    #dbg_value(ptr undef, !37212, !DIExpression(), !35882)
  %.not.i.i67.i.i = icmp sgt i32 %i.eq, %i.dr
  %or.cond.i68.i.i = or i1 %i.ep, %.not.i.i67.i.i, !dbg !37927
  br i1 %or.cond.i68.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %.lr.ph.i63.i.i, !dbg !37927

bb.i:                                             ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 64, i1 false), !dbg !37943, !noalias !37382
  br label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !37944

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit81.i.i: ; preds = %.loopexit.split-lp299.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit92.i.i
  %.pn60.i.i = phi { ptr, i32 } [ %.pn58.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit92.i.i ], [ %.pn58.i.i, %bb.m ], [ %lpad.loopexit.split-lp279, %.loopexit.split-lp299.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
    #dbg_value(ptr %i.ar, !10477, !DIExpression(), !35927)
  %i.er = load i8, ptr %i.ar, align 8, !dbg !37945, !range !10475, !alias.scope !37384, !noalias !37252, !noundef !3744
  %i.es = icmp eq i8 %i.er, -2, !dbg !37945
  br i1 %i.es, label %common.resume.i, label %bb.j, !dbg !37945

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit81.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ar)
          to label %common.resume.i unwind label %bb.el, !dbg !37945, !noalias !37375

.loopexit.split-lp299.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i63.i.i, %bb.ey, %bb.ei
  %lpad.loopexit.split-lp279 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit81.i.i

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %.noexc.i.i
end_hunk_0
