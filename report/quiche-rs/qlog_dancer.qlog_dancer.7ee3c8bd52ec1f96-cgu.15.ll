Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.15?download=true
inline.NumInlined: 1411
inline.NumDeleted: 745
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvYNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend11draw_circleNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer:bb.a
  %i.bh = alloca [16 x i8], align 8               ; 7 uses
  %i.bi = alloca [64 x i8], align 8               ; 12 uses
    #dbg_value(ptr poison, !37516, !DIExpression(), !35976)
  %i.bj = alloca [16 x i8], align 8               ; 7 uses
  %i.bk = alloca [64 x i8], align 8               ; 12 uses
  %i.bl = alloca [16 x i8], align 8               ; 7 uses
  %i.bm = alloca [64 x i8], align 8               ; 6 uses
  %i.bn = alloca [16 x i8], align 8               ; 7 uses
  %i.bo = alloca [64 x i8], align 8               ; 12 uses
  %i.bp = alloca [16 x i8], align 8               ; 7 uses
  %i.bq = alloca [64 x i8], align 8               ; 12 uses
    #dbg_value(ptr %1, !37317, !DIExpression(), !37519)
    #dbg_value(i32 %2, !37318, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !37519)
    #dbg_value(i32 %3, !37318, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !37519)
    #dbg_value(i32 %4, !37319, !DIExpression(), !37519)
    #dbg_value(ptr %5, !37320, !DIExpression(), !37519)
    #dbg_value(i1 %6, !37321, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !37519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37520), !dbg !38207
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37521), !dbg !38207
    #dbg_declare(ptr poison, !37426, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !35980)
    #dbg_value(ptr poison, !37525, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35986)
    #dbg_value(ptr poison, !37525, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !35986)
    #dbg_value(ptr poison, !37534, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35987)
    #dbg_value(ptr poison, !37534, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !35987)
    #dbg_value(i32 %4, !37417, !DIExpression(), !35988)
    #dbg_value(i1 %6, !37419, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !35988)
    #dbg_value(ptr %1, !37415, !DIExpression(), !35988)
    #dbg_value(i32 %2, !37416, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !35988)
    #dbg_value(i32 %3, !37416, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !35988)
    #dbg_value(ptr %5, !37418, !DIExpression(), !35988)
    #dbg_declare(ptr %i.bq, !37438, !DIExpression(), !35989)
    #dbg_declare(ptr %i.bo, !37440, !DIExpression(), !35990)
    #dbg_declare(ptr %i.bm, !37442, !DIExpression(), !35991)
    #dbg_declare(ptr %i.bk, !37444, !DIExpression(), !35992)
    #dbg_declare(ptr %i.bi, !37446, !DIExpression(), !35993)
    #dbg_declare(ptr %i.bg, !37448, !DIExpression(), !35994)
    #dbg_declare(ptr %i.be, !37450, !DIExpression(), !35995)
    #dbg_declare(ptr %i.bc, !37452, !DIExpression(), !35996)
    #dbg_declare(ptr %i.ba, !37454, !DIExpression(), !35997)
    #dbg_declare(ptr %i.ay, !37456, !DIExpression(), !35998)
    #dbg_declare(ptr %i.aw, !37458, !DIExpression(), !35999)
    #dbg_value(double 2.000000e+00, !37538, !DIExpression(), !36002)
    #dbg_value(double 2.000000e+00, !37541, !DIExpression(), !36005)
    #dbg_value(double 2.000000e+00, !37538, !DIExpression(), !36007)
    #dbg_value(double 2.000000e+00, !37541, !DIExpression(), !36009)
    #dbg_value(double 1.000000e-05, !37545, !DIExpression(), !36012)
    #dbg_value(ptr %5, !10489, !DIExpression(), !36014)
    #dbg_value(ptr %5, !10494, !DIExpression(), !36016)
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8, !dbg !38208
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 9, !dbg !38209
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 10, !dbg !38210
  %i.bu = load double, ptr %5, align 8, !dbg !38211, !alias.scope !37548, !noalias !37549, !noundef !3744 ; 6 uses
  %i.bv = fcmp oeq double %i.bu, 0.000000e+00, !dbg !38212
  br i1 %i.bv, label %bb.c, label %bb.b, !dbg !38212

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.e, label %bb.d, !dbg !38213

bb.c:                                             ; preds = %bb.a
  store i8 -2, ptr %0, align 8, !dbg !38214, !alias.scope !37520, !noalias !37550
  br label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_circleNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !38215

bb.d:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !38216
  %.val73.i = load i32, ptr %i.bw, align 8, !dbg !38216, !alias.scope !37521, !noalias !37552, !noundef !3744 ; 2 uses
  %i.bx = icmp eq i32 %.val73.i, 1, !dbg !38217
  br i1 %i.bx, label %bb.e, label %bb.f, !dbg !38217

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.b
  %.sroa.011.0.shrunk.i = phi i1 [ true, %bb.b ], [ false, %bb.d ], [ true, %bb.f ]
  %.sroa.0.0.i = phi i32 [ %4, %bb.b ], [ %4, %bb.d ], [ %i.cx, %bb.f ] ; 4 uses
    #dbg_value(i32 %.sroa.0.0.i, !37417, !DIExpression(), !35988)
    #dbg_value(i1 %.sroa.011.0.shrunk.i, !37419, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !35988)
    #dbg_value(i32 %.sroa.0.0.i, !37553, !DIExpression(), !36023)
  %i.by = uitofp i32 %.sroa.0.0.i to double, !dbg !38218 ; 4 uses
  %i.bz = fmul nnan double %i.by, f0x3FD2BEC333018866, !dbg !38219
    #dbg_value(double %i.bz, !37555, !DIExpression(), !36026)
    #dbg_value(double %i.bz, !37557, !DIExpression(), !36029)
  %i.ca = tail call double @llvm.ceil.f64(double %i.bz), !dbg !38220
  %i.cb = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.ca), !dbg !38219 ; 3 uses
    #dbg_value(i32 %i.cb, !37421, !DIExpression(), !36030)
    #dbg_value(i32 %.sroa.0.0.i, !37553, !DIExpression(), !36032)
  %i.cc = fmul nnan double %i.by, f0x3FFB504F333F9DE6, !dbg !38221
    #dbg_value(double %i.cc, !37559, !DIExpression(), !36035)
    #dbg_value(double %i.cc, !37561, !DIExpression(), !36038)
  %i.cd = tail call double @llvm.floor.f64(double %i.cc), !dbg !38222
  %i.ce = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.cd), !dbg !38221 ; 3 uses
    #dbg_value(i32 %i.ce, !37422, !DIExpression(), !36039)
    #dbg_value(i32 %i.cb, !37423, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36040)
    #dbg_value(i32 %i.ce, !37423, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36040)
    #dbg_value(i8 0, !37423, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36040)
    #dbg_value(!DIArgList(i32 %3, i32 %.sroa.0.0.i, i32 %i.cb), !37424, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !36041)
    #dbg_value(!DIArgList(i32 %3, i32 0, i32 %.sroa.0.0.i), !37425, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !36041)
    #dbg_value(i32 %i.ce, !37426, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36042)
    #dbg_value(i32 %i.cb, !37426, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36042)
    #dbg_value(i8 poison, !37426, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36042)
    #dbg_value(ptr undef, !37534, !DIExpression(), !35987)
    #dbg_value(ptr undef, !37525, !DIExpression(), !35986)
  %.not.i74250.i = icmp sgt i32 %i.cb, %i.ce
  br i1 %.not.i74250.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !38223

.lr.ph.i:                                         ; preds = %bb.e
  %i.cf = fmul double %i.by, %i.by
  %i.cg = load i8, ptr %i.br, align 8, !alias.scope !37521, !noalias !37552 ; 11 uses
  %i.ch = load i8, ptr %i.bs, align 1, !alias.scope !37521, !noalias !37552 ; 11 uses
  %i.ci = load i8, ptr %i.bt, align 2, !alias.scope !37521, !noalias !37552 ; 11 uses
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
  %invariant.op.i = add i32 %3, %i.cp, !dbg !38224
  %.reass.i = add i32 %invariant.op.i, %i.cb
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.4.0..sroa_idx.i107.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 9
  %.sroa.5.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  %invariant.op248.i = add i32 %3, 1, !dbg !38224
  %i.cr = sub i32 %invariant.op248.i, %.sroa.0.0.i
  %.reass249.i = add i32 %i.cr, %i.ce
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
  br label %bb.fc, !dbg !38223

bb.f:                                             ; preds = %bb.d
  %i.cw = lshr i32 %.val73.i, 1, !dbg !38225      ; 3 uses
    #dbg_value(!DIArgList(i32 poison, i32 poison), !37420, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !36043)
  %i.cx = add i32 %i.cw, %4, !dbg !38226          ; 9 uses
    #dbg_value(i32 %i.cx, !37417, !DIExpression(), !35988)
  %.not.not.i = icmp ugt i32 %4, %i.cw, !dbg !38227
  br i1 %.not.not.i, label %bb.g, label %bb.e, !dbg !38227

bb.g:                                             ; preds = %bb.f
    #dbg_value(!DIArgList(i32 %4, i32 %i.cw), !37420, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !36043)
  %i.cy = sub nuw i32 %4, %i.cw, !dbg !38228      ; 11 uses
    #dbg_value(i32 %i.cy, !37420, !DIExpression(), !36043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37566), !dbg !38229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !37567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !37567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !37567
    #dbg_value(ptr %1, !37371, !DIExpression(), !36046)
  store ptr %1, ptr %i.au, align 8, !noalias !37568
  store i32 %2, ptr %i.at, align 4, !noalias !37568
  %i.cz = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 16 uses
  store i32 %3, ptr %i.cz, align 4, !noalias !37568
    #dbg_value(ptr %5, !37374, !DIExpression(), !36046)
  store ptr %5, ptr %i.as, align 8, !noalias !37568
    #dbg_declare(ptr %i.at, !37372, !DIExpression(), !36049)
    #dbg_value(i32 %i.cx, !37373, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36046)
    #dbg_value(i32 %i.cy, !37373, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36046)
    #dbg_declare(ptr %i.ar, !37378, !DIExpression(), !36050)
    #dbg_declare(ptr %i.aq, !37380, !DIExpression(), !36051)
    #dbg_declare(ptr %i.ap, !37382, !DIExpression(), !36052)
    #dbg_declare(ptr %i.ao, !37384, !DIExpression(), !36053)
    #dbg_declare(ptr %i.an, !37388, !DIExpression(), !36054)
    #dbg_declare(ptr %i.am, !37390, !DIExpression(), !36055)
    #dbg_declare(ptr %i.al, !37392, !DIExpression(), !36056)
    #dbg_declare(ptr %i.aj, !37394, !DIExpression(), !36057)
    #dbg_declare(ptr %i.ah, !37399, !DIExpression(), !36058)
    #dbg_declare(ptr %i.af, !37401, !DIExpression(), !36059)
    #dbg_declare(ptr %i.ad, !37403, !DIExpression(), !36060)
    #dbg_declare(ptr %i.ab, !37405, !DIExpression(), !36061)
    #dbg_declare(ptr %i.z, !37407, !DIExpression(), !36062)
    #dbg_declare(ptr %i.x, !37409, !DIExpression(), !36063)
    #dbg_declare(ptr %i.v, !37411, !DIExpression(), !36064)
    #dbg_declare(ptr %i.t, !37413, !DIExpression(), !36065)
    #dbg_value(double 2.000000e+00, !37569, !DIExpression(), !36068)
    #dbg_value(double 2.000000e+00, !37572, !DIExpression(), !36071)
    #dbg_value(double 0.000000e+00, !37575, !DIExpression(), !36074)
    #dbg_value(double 2.000000e+00, !37569, !DIExpression(), !36076)
    #dbg_value(double 2.000000e+00, !37572, !DIExpression(), !36078)
    #dbg_value(double 2.000000e+00, !37569, !DIExpression(), !36080)
    #dbg_value(double 2.000000e+00, !37572, !DIExpression(), !36082)
  %i.da = sub i32 %i.cx, %i.cy, !dbg !38230
  %i.db = uitofp i32 %i.da to double, !dbg !38231
    #dbg_value(double %i.db, !37580, !DIExpression(), !36085)
  %i.dc = uitofp i32 %i.cx to double, !dbg !38232 ; 5 uses
    #dbg_value(double %i.dd, !37581, !DIExpression(), !36085)
    #dbg_value(double %i.de, !37375, !DIExpression(), !36086)
  %7 = uitofp i32 %i.cy to double, !dbg !38233    ; 4 uses
  %i.dd = fmul nnan double %i.dc, f0x3FD2BEC333018868, !dbg !38232
  %i.de = tail call nsz double @llvm.minimumnum.f64(double %i.db, double %i.dd), !dbg !38234
  %i.df = fsub double %i.dc, %i.de, !dbg !38235   ; 5 uses
  %i.dg = fsub double %i.df, %7, !dbg !38236
    #dbg_value(double %i.dg, !37576, !DIExpression(), !36074)
  %i.dh = tail call nsz double @llvm.maximumnum.f64(double %i.dg, double 0.000000e+00), !dbg !38237 ; 2 uses
    #dbg_value(double %i.dh, !37376, !DIExpression(), !36087)
    #dbg_value(double %i.dh, !37583, !DIExpression(), !36090)
    #dbg_value(double %i.dh, !37585, !DIExpression(), !36093)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !38238, !noalias !37568
    #dbg_value(ptr %i.au, !37588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36105)
    #dbg_value(ptr %i.as, !37588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36105)
    #dbg_value(ptr %i.at, !37588, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37609), !dbg !38239
    #dbg_declare(ptr poison, !37601, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !36108)
    #dbg_value(ptr poison, !37525, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36111)
    #dbg_value(ptr poison, !37525, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36111)
    #dbg_value(ptr poison, !37534, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36112)
    #dbg_value(ptr poison, !37534, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36112)
    #dbg_value(double %i.de, !37595, !DIExpression(), !36113)
    #dbg_value(i32 %i.cx, !37596, !DIExpression(), !36113)
    #dbg_declare(ptr %i.r, !37605, !DIExpression(), !36114)
  %i.di = fmul double %i.dc, %i.dc, !dbg !38240   ; 6 uses
    #dbg_value(double %i.df, !37610, !DIExpression(), !36117)
    #dbg_value(double %i.df, !37612, !DIExpression(), !36120)
  %i.dj = fmul double %i.df, %i.df, !dbg !38241
  %i.dk = fsub double %i.di, %i.dj, !dbg !38242
    #dbg_value(double %i.dk, !37615, !DIExpression(), !36123)
    #dbg_value(double %i.dk, !37617, !DIExpression(), !36126)
  %i.dl = tail call double @llvm.sqrt.f64(double %i.dk), !dbg !38243 ; 2 uses
    #dbg_value(double %i.dl, !37597, !DIExpression(), !36127)
    #dbg_value(double %i.dl, !37619, !DIExpression(), !36130)
    #dbg_value(double %i.dl, !37621, !DIExpression(), !36133)
  %i.dm = fneg double %i.dl, !dbg !38244
    #dbg_value(double %i.dm, !37610, !DIExpression(), !36135)
    #dbg_value(double %i.dm, !37612, !DIExpression(), !36137)
  %i.dn = tail call double @llvm.ceil.f64(double %i.dm), !dbg !38245
  %i.do = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.dn), !dbg !38244 ; 5 uses
    #dbg_value(i32 %i.do, !37598, !DIExpression(), !36138)
  %i.dp = tail call double @llvm.floor.f64(double %i.dl), !dbg !38246
  %i.dq = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.dp), !dbg !38247 ; 5 uses
    #dbg_value(i32 %i.dq, !37599, !DIExpression(), !36139)
  %i.dr = tail call double @llvm.ceil.f64(double %i.df), !dbg !38248 ; 4 uses
    #dbg_value(double %i.dr, !37600, !DIExpression(), !36140)
    #dbg_value(i32 %i.do, !37601, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36141)
    #dbg_value(i32 %i.dq, !37601, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36141)
    #dbg_value(i8 poison, !37601, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36141)
    #dbg_value(ptr undef, !37534, !DIExpression(), !36112)
    #dbg_value(ptr undef, !37525, !DIExpression(), !36111)
  %.not.i23.i.i.i = icmp sgt i32 %i.do, %i.dq     ; 4 uses
  br i1 %.not.i23.i.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %.lr.ph.i.i.i, !dbg !38249

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
  %.sroa.0.024.i.i.i = phi i32 [ %i.ed, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i ], [ %i.do, %bb.g ] ; 3 uses
    #dbg_value(i32 %.sroa.0.024.i.i.i, !37623, !DIExpression(), !36145)
    #dbg_value(i32 %.sroa.0.024.i.i.i, !37629, !DIExpression(), !36148)
    #dbg_value(i64 1, !37626, !DIExpression(), !36145)
    #dbg_value(i32 1, !37627, !DIExpression(), !36149)
    #dbg_value(i32 1, !37630, !DIExpression(), !36148)
    #dbg_value(i32 poison, !37601, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36141)
    #dbg_value(i1 poison, !37601, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !36141)
    #dbg_value(i32 %.sroa.0.024.i.i.i, !37602, !DIExpression(), !36150)
  %i.ds = sitofp i32 %.sroa.0.024.i.i.i to double, !dbg !38250 ; 2 uses
  %i.dt = fmul nnan double %i.ds, %i.ds, !dbg !38250
  %i.du = fsub double %i.di, %i.dt, !dbg !38251
    #dbg_value(double %i.du, !37615, !DIExpression(), !36152)
    #dbg_value(double %i.du, !37617, !DIExpression(), !36154)
  %i.dv = tail call double @llvm.sqrt.f64(double %i.du), !dbg !38252
    #dbg_value(double %i.dv, !37603, !DIExpression(), !36155)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !38253, !noalias !37634
    #dbg_value(ptr poison, !37636, !DIExpression(DW_OP_deref, DW_OP_deref), !36159)
    #dbg_value(ptr poison, !37642, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36159)
    #dbg_value(ptr poison, !37643, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36159)
    #dbg_value(i32 %.sroa.0.024.i.i.i, !37640, !DIExpression(), !36159)
    #dbg_value(double %i.dr, !37641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36159)
    #dbg_value(double %i.dv, !37641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36159)
  %i.dw = load ptr, ptr %i.au, align 8, !dbg !38254, !noalias !37645, !nonnull !3744, !align !4908, !noundef !3744
  %i.dx = load ptr, ptr %i.as, align 8, !dbg !38255, !noalias !37645, !nonnull !3744, !align !4908, !noundef !3744
  %i.dy = load i32, ptr %i.at, align 4, !dbg !38256, !noalias !37645, !noundef !3744
  %i.dz = load i32, ptr %i.cz, align 4, !dbg !38256, !noalias !37645, !noundef !3744
  call fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.r, ptr noalias nofree noundef align 8 dereferenceable(64) %i.dw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dx, i32 noundef %i.dy, i32 noundef %i.dz, i32 noundef 0, i32 noundef 1, i32 noundef %.sroa.0.024.i.i.i, double noundef %i.dr, double noundef %i.dv), !dbg !38257, !noalias !37646
    #dbg_value(ptr %i.r, !37647, !DIExpression(), !36165)
    #dbg_value(ptr %i.r, !37649, !DIExpression(), !36168)
  %i.ea = load i8, ptr %i.r, align 8, !dbg !38258, !range !10475, !noalias !37634, !noundef !3744
  %.not.i.i.i = icmp eq i8 %i.ea, -2, !dbg !38258
  br i1 %.not.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !38259

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i, %bb.g
    #dbg_value(i32 poison, !37601, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36141)
    #dbg_value(i8 poison, !37601, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36141)
  store i8 -2, ptr %i.ar, align 8, !dbg !38260, !alias.scope !37609, !noalias !37651
    #dbg_value(ptr %i.ar, !37513, !DIExpression(), !36170)
    #dbg_value(ptr %i.ar, !37510, !DIExpression(), !36172)
  br label %bb.h, !dbg !38261

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.eb = tail call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.024.i.i.i, i32 1), !dbg !38262 ; 2 uses
  %i.ec = extractvalue { i32, i1 } %i.eb, 1, !dbg !38263
    #dbg_value(i1 %i.ec, !37601, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !36141)
  %i.ed = extractvalue { i32, i1 } %i.eb, 0, !dbg !38263 ; 2 uses
    #dbg_value(i32 %i.ed, !37601, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36141)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !38264, !noalias !37634
    #dbg_value(i8 poison, !37601, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36141)
    #dbg_value(ptr undef, !37534, !DIExpression(), !36112)
    #dbg_value(ptr undef, !37525, !DIExpression(), !36111)
  %.not.i.i.i.i = icmp sgt i32 %i.ed, %i.dq
  %or.cond.i.i.i = or i1 %i.ec, %.not.i.i.i.i, !dbg !38249
  br i1 %or.cond.i.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %.lr.ph.i.i.i, !dbg !38249

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %.lr.ph.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !38265, !noalias !37651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !38264, !noalias !37634
  %.pr.i.i = load i8, ptr %i.ar, align 8, !dbg !38266, !noalias !37568
    #dbg_value(ptr %i.ar, !37513, !DIExpression(), !36170)
    #dbg_value(ptr %i.ar, !37510, !DIExpression(), !36172)
  %.not.i.i = icmp eq i8 %.pr.i.i, -2, !dbg !38266
  br i1 %.not.i.i, label %bb.h, label %bb.i, !dbg !38261

bb.h:                                             ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleE0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !38267, !noalias !37568
    #dbg_value(ptr %i.au, !37652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36186)
    #dbg_value(ptr %i.as, !37652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36186)
    #dbg_value(ptr %i.at, !37652, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37673), !dbg !38268
    #dbg_declare(ptr poison, !37665, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !36189)
    #dbg_value(ptr poison, !37525, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36192)
    #dbg_value(ptr poison, !37525, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36192)
    #dbg_value(ptr poison, !37534, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36193)
    #dbg_value(ptr poison, !37534, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36193)
    #dbg_value(double %i.de, !37659, !DIExpression(), !36194)
    #dbg_value(i32 %i.cx, !37660, !DIExpression(), !36194)
    #dbg_declare(ptr %i.q, !37669, !DIExpression(), !36195)
    #dbg_value(double %i.dk, !37674, !DIExpression(), !36198)
    #dbg_value(double %i.dk, !37676, !DIExpression(), !36201)
    #dbg_value(double %i.dl, !37661, !DIExpression(), !36202)
    #dbg_value(i32 %i.do, !37662, !DIExpression(), !36203)
    #dbg_value(i32 %i.dq, !37663, !DIExpression(), !36204)
    #dbg_value(double %i.dr, !37664, !DIExpression(), !36205)
    #dbg_value(i32 %i.do, !37665, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36206)
    #dbg_value(i32 %i.dq, !37665, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36206)
    #dbg_value(i8 poison, !37665, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36206)
    #dbg_value(ptr undef, !37534, !DIExpression(), !36193)
    #dbg_value(ptr undef, !37525, !DIExpression(), !36192)
  br i1 %.not.i23.i.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %.lr.ph.i63.i.i, !dbg !38269

.lr.ph.i63.i.i:                                   ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i66.i.i
  %.sroa.0.024.i64.i.i = phi i32 [ %i.ep, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i66.i.i ], [ %i.do, %bb.h ] ; 3 uses
    #dbg_value(i32 %.sroa.0.024.i64.i.i, !37623, !DIExpression(), !36208)
    #dbg_value(i32 %.sroa.0.024.i64.i.i, !37629, !DIExpression(), !36210)
    #dbg_value(i64 1, !37626, !DIExpression(), !36208)
    #dbg_value(i32 1, !37627, !DIExpression(), !36211)
    #dbg_value(i32 1, !37630, !DIExpression(), !36210)
    #dbg_value(i32 poison, !37665, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36206)
    #dbg_value(i1 poison, !37665, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !36206)
    #dbg_value(i32 %.sroa.0.024.i64.i.i, !37666, !DIExpression(), !36212)
  %i.ee = sitofp i32 %.sroa.0.024.i64.i.i to double, !dbg !38270 ; 2 uses
  %i.ef = fmul nnan double %i.ee, %i.ee, !dbg !38270
  %i.eg = fsub double %i.di, %i.ef, !dbg !38271
    #dbg_value(double %i.eg, !37674, !DIExpression(), !36214)
    #dbg_value(double %i.eg, !37676, !DIExpression(), !36216)
  %i.eh = tail call double @llvm.sqrt.f64(double %i.eg), !dbg !38272
    #dbg_value(double %i.eh, !37667, !DIExpression(), !36217)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !38273, !noalias !37679
    #dbg_value(ptr poison, !37681, !DIExpression(DW_OP_deref, DW_OP_deref), !36221)
    #dbg_value(ptr poison, !37687, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36221)
    #dbg_value(ptr poison, !37688, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36221)
    #dbg_value(i32 %.sroa.0.024.i64.i.i, !37685, !DIExpression(), !36221)
    #dbg_value(double %i.dr, !37686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36221)
    #dbg_value(double %i.eh, !37686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36221)
  %i.ei = load ptr, ptr %i.au, align 8, !dbg !38274, !noalias !37690, !nonnull !3744, !align !4908, !noundef !3744
  %i.ej = load ptr, ptr %i.as, align 8, !dbg !38275, !noalias !37690, !nonnull !3744, !align !4908, !noundef !3744
  %i.ek = load i32, ptr %i.at, align 4, !dbg !38276, !noalias !37690, !noundef !3744
  %i.el = load i32, ptr %i.cz, align 4, !dbg !38276, !noalias !37690, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.q, ptr noalias nofree noundef align 8 dereferenceable(64) %i.ei, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ej, i32 noundef %i.ek, i32 noundef %i.el, i32 noundef 0, i32 noundef -1, i32 noundef %.sroa.0.024.i64.i.i, double noundef %i.dr, double noundef %i.eh)
          to label %.noexc.i.i unwind label %.loopexit295.i.i, !dbg !38277, !noalias !37691

.noexc.i.i:                                       ; preds = %.lr.ph.i63.i.i
    #dbg_value(ptr %i.q, !37692, !DIExpression(), !36227)
    #dbg_value(ptr %i.q, !37694, !DIExpression(), !36230)
  %i.em = load i8, ptr %i.q, align 8, !dbg !38278, !range !10475, !noalias !37679, !noundef !3744
  %.not.i65.i.i = icmp eq i8 %i.em, -2, !dbg !38278
  br i1 %.not.i65.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i66.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !38279

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i66.i.i, %bb.h
    #dbg_value(i32 poison, !37665, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36206)
    #dbg_value(i8 poison, !37665, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36206)
  store i8 -2, ptr %i.aq, align 8, !dbg !38280, !alias.scope !37673, !noalias !37696
    #dbg_value(ptr %i.aq, !37513, !DIExpression(), !36232)
    #dbg_value(ptr %i.aq, !37510, !DIExpression(), !36234)
  br label %bb.k, !dbg !38281

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i66.i.i: ; preds = %.noexc.i.i
  %i.en = tail call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.024.i64.i.i, i32 1), !dbg !38282 ; 2 uses
  %i.eo = extractvalue { i32, i1 } %i.en, 1, !dbg !38283
    #dbg_value(i1 %i.eo, !37665, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !36206)
  %i.ep = extractvalue { i32, i1 } %i.en, 0, !dbg !38283 ; 2 uses
    #dbg_value(i32 %i.ep, !37665, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36206)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !38284, !noalias !37679
    #dbg_value(i8 poison, !37665, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36206)
    #dbg_value(ptr undef, !37534, !DIExpression(), !36193)
    #dbg_value(ptr undef, !37525, !DIExpression(), !36192)
  %.not.i.i67.i.i = icmp sgt i32 %i.ep, %i.dq
  %or.cond.i68.i.i = or i1 %i.eo, %.not.i.i67.i.i, !dbg !38269
end_hunk_0
begin_hunk_1_@llvm.ceil.v4f64
!38033 = !{!3882, !3882, !3882}
!38034 = !DISubroutineType(types: !38033)
!38035 = !DILocalVariable(name: "other", arg: 2, scope: !36810, file: !10410, line: 1133, type: !3882)
!38036 = !{!38032, !38035}
!38037 = !DITemplateTypeParameter(name: "Self", type: !3882)
!38038 = !{!38037}
!38039 = !DILexicalBlockFile(scope: !36066, file: !10434, discriminator: 6)
!38040 = !DILocalVariable(name: "self", arg: 1, scope: !36818, file: !10434, line: 74, type: !4240)
!38041 = !{!38040}
!38042 = !DILocalVariable(name: "x", arg: 1, scope: !36821, file: !10439, line: 1913, type: !4240)
!38043 = !{!38042}
!38044 = !DILexicalBlockFile(scope: !35867, file: !10403, discriminator: 0)
!38045 = !{!36828}
!38046 = !{!36829}
!38047 = !{!36828, !36045, !35978}
!38048 = !{!36829, !36045, !36048, !36047, !35978, !36019, !35979}
!38049 = !DILexicalBlockFile(scope: !37398, file: !10403, discriminator: 18)
!38050 = !DILexicalBlockFile(scope: !35955, file: !4878, discriminator: 18)
!38051 = !DILexicalBlockFile(scope: !35866, file: !6729, discriminator: 0)
!38052 = !{!36841}
!38053 = !{!36843}
!38054 = !{!36844}
!38055 = !{!36843, !36045, !35978}
!38056 = !{!36844, !36045, !36048, !36047, !35978, !36019, !35979}
!38057 = !DILexicalBlockFile(scope: !37400, file: !10403, discriminator: 20)
!38058 = !DILexicalBlockFile(scope: !35955, file: !4878, discriminator: 20)
!38059 = !DILexicalBlockFile(scope: !35865, file: !6729, discriminator: 0)
!38060 = !{!36856}
!38061 = !{!36858}
!38062 = !{!36859}
!38063 = !{!36858, !36045, !35978}
!38064 = !{!36859, !36045, !36048, !36047, !35978, !36019, !35979}
!38065 = !DILexicalBlockFile(scope: !37402, file: !10403, discriminator: 22)
!38066 = !DILexicalBlockFile(scope: !35955, file: !4878, discriminator: 22)
!38067 = !DILexicalBlockFile(scope: !35864, file: !6729, discriminator: 0)
!38068 = !{!36871}
!38069 = !{!36873}
!38070 = !{!36874}
!38071 = !{!36873, !36045, !35978}
!38072 = !{!36874, !36045, !36048, !36047, !35978, !36019, !35979}
!38073 = !DILexicalBlockFile(scope: !37404, file: !10403, discriminator: 24)
!38074 = !DILexicalBlockFile(scope: !35955, file: !4878, discriminator: 24)
!38075 = !DILexicalBlockFile(scope: !35863, file: !6729, discriminator: 0)
!38076 = !{!36886}
!38077 = !{!36888}
!38078 = !{!36889}
!38079 = !{!36888, !36045, !35978}
!38080 = !{!36889, !36045, !36048, !36047, !35978, !36019, !35979}
!38081 = !DILexicalBlockFile(scope: !37406, file: !10403, discriminator: 26)
!38082 = !DILexicalBlockFile(scope: !35955, file: !4878, discriminator: 26)
!38083 = !DILexicalBlockFile(scope: !35862, file: !6729, discriminator: 0)
!38084 = !{!36901}
!38085 = !{!36903}
!38086 = !{!36904}
!38087 = !{!36903, !36045, !35978}
!38088 = !{!36904, !36045, !36048, !36047, !35978, !36019, !35979}
!38089 = !DILexicalBlockFile(scope: !37408, file: !10403, discriminator: 28)
!38090 = !DILexicalBlockFile(scope: !35955, file: !4878, discriminator: 28)
!38091 = !DILexicalBlockFile(scope: !35861, file: !6729, discriminator: 0)
!38092 = !{!36916}
!38093 = !{!36918}
!38094 = !{!36919}
!38095 = !{!36918, !36045, !35978}
!38096 = !{!36919, !36045, !36048, !36047, !35978, !36019, !35979}
!38097 = !DILexicalBlockFile(scope: !37410, file: !10403, discriminator: 30)
!38098 = !DILexicalBlockFile(scope: !35955, file: !4878, discriminator: 30)
!38099 = !DILexicalBlockFile(scope: !35860, file: !6729, discriminator: 0)
!38100 = !{!36931}
!38101 = !{!36933}
!38102 = !{!36934}
!38103 = !{!36933, !36045, !35978}
!38104 = !{!36934, !36045, !36048, !36047, !35978, !36019, !35979}
!38105 = !DILexicalBlockFile(scope: !37412, file: !10403, discriminator: 32)
!38106 = !DILexicalBlockFile(scope: !35955, file: !4878, discriminator: 32)
!38107 = !{!36946}
!38108 = !{!36952}
!38109 = !{!36956}
!38110 = !{!36960}
!38111 = !{!36964}
!38112 = !{!36968}
!38113 = !{!36972}
!38114 = !{!36976}
!38115 = !{!36980}
!38116 = !{!36984}
!38117 = !{!36988}
!38118 = !{!36992}
!38119 = !{!36996}
!38120 = !{!37000}
!38121 = !{!37004}
!38122 = !{!37008}
!38123 = !{!37012}
!38124 = !{!37016}
!38125 = !{!37020}
!38126 = !{!37024}
!38127 = !{!37028}
!38128 = !{!37032}
!38129 = !{!37036}
!38130 = !{!37040}
!38131 = !{!37044}
!38132 = !{!37048}
!38133 = !{!37052}
!38134 = !{!37056}
!38135 = !{!37060}
!38136 = !{!37064}
!38137 = !DILocalVariable(name: "small", arg: 1, scope: !37073, file: !11057, line: 123, type: !3882)
!38138 = !{!38137}
!38139 = !DILexicalBlockFile(scope: !36000, file: !10434, discriminator: 4)
!38140 = !DILexicalBlockFile(scope: !36033, file: !10434, discriminator: 2)
!38141 = !DILexicalBlockFile(scope: !36033, file: !10434, discriminator: 4)
!38142 = !DILexicalBlockFile(scope: !36033, file: !10434, discriminator: 6)
!38143 = !DILexicalBlockFile(scope: !36033, file: !10434, discriminator: 8)
!38144 = !DILexicalBlockFile(scope: !36033, file: !10434, discriminator: 10)
!38145 = !DILexicalBlockFile(scope: !35893, file: !10403, discriminator: 0)
!38146 = !DILocalVariable(name: "self", arg: 1, scope: !37126, file: !4878, line: 647, type: !10470)
!38147 = !{!38146}
!38148 = !DILexicalBlockFile(scope: !37443, file: !10403, discriminator: 6)
!38149 = !DILocalVariable(name: "self", arg: 1, scope: !37129, file: !4878, line: 594, type: !10470)
!38150 = !{!38149}
!38151 = !DILexicalBlockFile(scope: !37126, file: !4878, discriminator: 6)
!38152 = !{!37137}
!38153 = !{!37138, !35978, !36019, !35979}
!38154 = !DILexicalBlockFile(scope: !35889, file: !6729, discriminator: 0)
!38155 = !{!37146}
!38156 = !DILexicalBlockFile(scope: !37445, file: !10403, discriminator: 8)
!38157 = !DILexicalBlockFile(scope: !37126, file: !4878, discriminator: 8)
!38158 = !DILexicalBlockFile(scope: !35888, file: !6729, discriminator: 0)
!38159 = !{!37158}
!38160 = !DILexicalBlockFile(scope: !37447, file: !10403, discriminator: 10)
!38161 = !DILexicalBlockFile(scope: !37126, file: !4878, discriminator: 10)
!38162 = !DILexicalBlockFile(scope: !35887, file: !6729, discriminator: 0)
!38163 = !DILexicalBlockFile(scope: !37449, file: !10403, discriminator: 12)
!38164 = !DILexicalBlockFile(scope: !37126, file: !4878, discriminator: 12)
!38165 = !{!37178}
!38166 = !{!37184}
!38167 = !{!37188}
!38168 = !{!37192}
!38169 = !DILexicalBlockFile(scope: !37451, file: !10403, discriminator: 14)
!38170 = !DILexicalBlockFile(scope: !37126, file: !4878, discriminator: 14)
!38171 = !{!37204}
!38172 = !{!37208}
!38173 = !DILexicalBlockFile(scope: !35893, file: !6729, discriminator: 0)
!38174 = !DILexicalBlockFile(scope: !35892, file: !6729, discriminator: 0)
!38175 = !{!37212}
!38176 = !{!37218}
!38177 = !{!37219, !35978, !36019, !35979}
!38178 = !DILexicalBlockFile(scope: !37439, file: !10403, discriminator: 2)
!38179 = !DILexicalBlockFile(scope: !37126, file: !4878, discriminator: 2)
!38180 = !DILexicalBlockFile(scope: !35891, file: !6729, discriminator: 0)
!38181 = !{!37227}
!38182 = !{!37233}
!38183 = !{!37234, !35978, !36019, !35979}
!38184 = !DILexicalBlockFile(scope: !37441, file: !10403, discriminator: 4)
!38185 = !DILexicalBlockFile(scope: !37126, file: !4878, discriminator: 4)
!38186 = !{!37242}
!38187 = !{!37248}
!38188 = !{!37252}
!38189 = !DILexicalBlockFile(scope: !35885, file: !6729, discriminator: 0)
!38190 = !{!37256}
!38191 = !DILexicalBlockFile(scope: !37453, file: !10403, discriminator: 16)
!38192 = !DILexicalBlockFile(scope: !37126, file: !4878, discriminator: 16)
!38193 = !DILexicalBlockFile(scope: !35884, file: !6729, discriminator: 0)
!38194 = !{!37268}
!38195 = !DILexicalBlockFile(scope: !37455, file: !10403, discriminator: 18)
!38196 = !DILexicalBlockFile(scope: !37126, file: !4878, discriminator: 18)
!38197 = !DILexicalBlockFile(scope: !35883, file: !6729, discriminator: 0)
!38198 = !DILexicalBlockFile(scope: !37457, file: !10403, discriminator: 20)
!38199 = !DILexicalBlockFile(scope: !37126, file: !4878, discriminator: 20)
!38200 = !{!37288}
!38201 = !{!37294}
!38202 = !{!37298}
!38203 = !{!37302}
!38204 = !{!37306}
!38205 = !{!37310}
!38206 = !{!37314}
!38207 = !DILocation(line: 204, column: 9, scope: !35834)
!38208 = !DILocation(line: 73, column: 19, scope: !1929, inlinedAt: !36015)
!38209 = !DILocation(line: 73, column: 27, scope: !1929, inlinedAt: !36015)
!38210 = !DILocation(line: 73, column: 35, scope: !1929, inlinedAt: !36015)
!38211 = !DILocation(line: 74, column: 20, scope: !1929, inlinedAt: !36015)
!38212 = !DILocation(line: 281, column: 8, scope: !35909, inlinedAt: !35911)
!38213 = !DILocation(line: 285, column: 9, scope: !35909, inlinedAt: !35911)
!38214 = !DILocation(line: 282, column: 16, scope: !35909, inlinedAt: !35911)
!38215 = !DILocation(line: 0, scope: !37551, inlinedAt: !35911)
!38216 = !DILocation(line: 285, column: 23, scope: !35909, inlinedAt: !35911)
!38217 = !DILocation(line: 285, column: 17, scope: !35909, inlinedAt: !35911)
!38218 = !DILocation(line: 126, column: 17, scope: !36021, inlinedAt: !36022)
!38219 = !DILocation(line: 295, column: 15, scope: !35909, inlinedAt: !35911)
!38220 = !DILocation(line: 1914, column: 9, scope: !36027, inlinedAt: !36028)
!38221 = !DILocation(line: 296, column: 15, scope: !35908, inlinedAt: !35911)
!38222 = !DILocation(line: 1886, column: 9, scope: !36036, inlinedAt: !36037)
!38223 = !DILocation(line: 577, column: 9, scope: !35981, inlinedAt: !35985)
!38224 = !DILocation(line: 305, column: 5, scope: !35903, inlinedAt: !35911)
!38225 = !DILocation(line: 286, column: 37, scope: !35909, inlinedAt: !35911)
!38226 = !DILocation(line: 287, column: 9, scope: !35910, inlinedAt: !35911)
!38227 = !DILocation(line: 288, column: 12, scope: !35910, inlinedAt: !35911)
!38228 = !DILocation(line: 286, column: 28, scope: !35909, inlinedAt: !35911)
!38229 = !DILocation(line: 289, column: 20, scope: !35910, inlinedAt: !35911)
!38230 = !DILocation(line: 130, column: 15, scope: !35874, inlinedAt: !35912)
!38231 = !DILocation(line: 130, column: 14, scope: !35874, inlinedAt: !35912)
!38232 = !DILocation(line: 130, column: 49, scope: !35874, inlinedAt: !35912)
!38233 = !DILocation(line: 131, column: 38, scope: !35875, inlinedAt: !35912)
!38234 = !DILocation(line: 1086, column: 9, scope: !36083, inlinedAt: !36084)
!38235 = !DILocation(line: 131, column: 15, scope: !35875, inlinedAt: !35912)
!38236 = !DILocation(line: 131, column: 14, scope: !35875, inlinedAt: !35912)
!38237 = !DILocation(line: 1059, column: 9, scope: !36072, inlinedAt: !36073)
!38238 = !DILocation(line: 20, column: 13, scope: !37587, inlinedAt: !35912)
!38239 = !DILocation(line: 133, column: 19, scope: !35876, inlinedAt: !35912)
!38240 = !DILocation(line: 11, column: 23, scope: !36103, inlinedAt: !36104)
!38241 = !DILocation(line: 12, column: 11, scope: !36103, inlinedAt: !36104)
!38242 = !DILocation(line: 11, column: 22, scope: !36103, inlinedAt: !36104)
!38243 = !DILocation(line: 2205, column: 9, scope: !36124, inlinedAt: !36125)
!38244 = !DILocation(line: 15, column: 14, scope: !36102, inlinedAt: !36104)
!38245 = !DILocation(line: 1914, column: 9, scope: !36118, inlinedAt: !36136)
!38246 = !DILocation(line: 1886, column: 9, scope: !36131, inlinedAt: !36132)
!38247 = !DILocation(line: 16, column: 14, scope: !36101, inlinedAt: !36104)
!38248 = !DILocation(line: 1914, column: 9, scope: !36118, inlinedAt: !36119)
!38249 = !DILocation(line: 577, column: 9, scope: !35981, inlinedAt: !36110)
!38250 = !DILocation(line: 21, column: 51, scope: !36097, inlinedAt: !36104)
!38251 = !DILocation(line: 21, column: 18, scope: !36097, inlinedAt: !36104)
!38252 = !DILocation(line: 2205, column: 9, scope: !36124, inlinedAt: !36153)
!38253 = !DILocation(line: 20, column: 13, scope: !37635, inlinedAt: !36104)
!38254 = !DILocation(line: 134, column: 9, scope: !36157, inlinedAt: !36158)
!38255 = !DILocation(line: 135, column: 9, scope: !36157, inlinedAt: !36158)
!38256 = !DILocation(line: 136, column: 9, scope: !36157, inlinedAt: !36158)
!38257 = !DILocation(line: 133, column: 60, scope: !36157, inlinedAt: !36158)
!38258 = !DILocation(line: 595, column: 18, scope: !36166, inlinedAt: !36167)
!38259 = !DILocation(line: 22, column: 12, scope: !37604, inlinedAt: !36104)
!38260 = !DILocation(line: 25, column: 5, scope: !36099, inlinedAt: !36104)
!38261 = !DILocation(line: 22, column: 12, scope: !37377, inlinedAt: !35912)
!38262 = !DILocation(line: 2553, column: 26, scope: !36173, inlinedAt: !36174)
!38263 = !DILocation(line: 1535, column: 22, scope: !35983, inlinedAt: !36109)
!38264 = !DILocation(line: 23, column: 5, scope: !36096, inlinedAt: !36104)
!38265 = !DILocation(line: 23, column: 20, scope: !37604, inlinedAt: !36104)
!38266 = !DILocation(line: 595, column: 18, scope: !35954, inlinedAt: !36171)
!38267 = !DILocation(line: 20, column: 13, scope: !37377, inlinedAt: !35912)
!38268 = !DILocation(line: 141, column: 19, scope: !35877, inlinedAt: !35912)
!38269 = !DILocation(line: 577, column: 9, scope: !35981, inlinedAt: !36191)
!38270 = !DILocation(line: 21, column: 51, scope: !36178, inlinedAt: !36185)
!38271 = !DILocation(line: 21, column: 18, scope: !36178, inlinedAt: !36185)
!38272 = !DILocation(line: 2205, column: 9, scope: !36199, inlinedAt: !36215)
!38273 = !DILocation(line: 20, column: 13, scope: !37680, inlinedAt: !36185)
!38274 = !DILocation(line: 142, column: 9, scope: !36219, inlinedAt: !36220)
!38275 = !DILocation(line: 143, column: 9, scope: !36219, inlinedAt: !36220)
!38276 = !DILocation(line: 144, column: 9, scope: !36219, inlinedAt: !36220)
!38277 = !DILocation(line: 141, column: 60, scope: !36219, inlinedAt: !36220)
!38278 = !DILocation(line: 595, column: 18, scope: !36228, inlinedAt: !36229)
!38279 = !DILocation(line: 22, column: 12, scope: !37668, inlinedAt: !36185)
!38280 = !DILocation(line: 25, column: 5, scope: !36180, inlinedAt: !36185)
!38281 = !DILocation(line: 22, column: 12, scope: !37379, inlinedAt: !35912)
!38282 = !DILocation(line: 2553, column: 26, scope: !36173, inlinedAt: !36235)
!38283 = !DILocation(line: 1535, column: 22, scope: !35983, inlinedAt: !36190)
!38284 = !DILocation(line: 23, column: 5, scope: !36177, inlinedAt: !36185)
!38285 = !DILocation(line: 23, column: 20, scope: !37377, inlinedAt: !35912)
!38286 = !DILocation(line: 0, scope: !37700, inlinedAt: !35912)
!38287 = !DILocation(line: 848, column: 1, scope: !1927, inlinedAt: !36236)
!38288 = !DILocation(line: 23, column: 20, scope: !37668, inlinedAt: !36185)
!38289 = !DILocation(line: 595, column: 18, scope: !35954, inlinedAt: !36233)
!38290 = !DILocation(line: 20, column: 13, scope: !37379, inlinedAt: !35912)
!38291 = !DILocation(line: 149, column: 19, scope: !35878, inlinedAt: !35912)
!38292 = !DILocation(line: 577, column: 9, scope: !35981, inlinedAt: !36256)
!38293 = !DILocation(line: 21, column: 51, scope: !36243, inlinedAt: !36250)
!38294 = !DILocation(line: 21, column: 18, scope: !36243, inlinedAt: !36250)
!38295 = !DILocation(line: 2205, column: 9, scope: !36264, inlinedAt: !36280)
!38296 = !DILocation(line: 20, column: 13, scope: !37730, inlinedAt: !36250)
!38297 = !DILocation(line: 150, column: 9, scope: !36284, inlinedAt: !36285)
!38298 = !DILocation(line: 151, column: 9, scope: !36284, inlinedAt: !36285)
!38299 = !DILocation(line: 152, column: 9, scope: !36284, inlinedAt: !36285)
!38300 = !DILocation(line: 149, column: 60, scope: !36284, inlinedAt: !36285)
!38301 = !DILocation(line: 595, column: 18, scope: !36293, inlinedAt: !36294)
!38302 = !DILocation(line: 22, column: 12, scope: !37718, inlinedAt: !36250)
!38303 = !DILocation(line: 25, column: 5, scope: !36245, inlinedAt: !36250)
!38304 = !DILocation(line: 22, column: 12, scope: !37381, inlinedAt: !35912)
!38305 = !DILocation(line: 2553, column: 26, scope: !36173, inlinedAt: !36300)
!38306 = !DILocation(line: 1535, column: 22, scope: !35983, inlinedAt: !36255)
!38307 = !DILocation(line: 23, column: 5, scope: !36242, inlinedAt: !36250)
!38308 = !DILocation(line: 23, column: 20, scope: !37379, inlinedAt: !35912)
!38309 = !DILocation(line: 0, scope: !37748, inlinedAt: !35912)
!38310 = !DILocation(line: 848, column: 1, scope: !1927, inlinedAt: !36301)
!38311 = !DILocation(line: 23, column: 20, scope: !37718, inlinedAt: !36250)
!38312 = !DILocation(line: 595, column: 18, scope: !35954, inlinedAt: !36298)
!38313 = !DILocation(line: 20, column: 13, scope: !37381, inlinedAt: !35912)
!38314 = !DILocation(line: 157, column: 19, scope: !35879, inlinedAt: !35912)
!38315 = !DILocation(line: 577, column: 9, scope: !35981, inlinedAt: !36321)
!38316 = !DILocation(line: 21, column: 51, scope: !36308, inlinedAt: !36315)
!38317 = !DILocation(line: 21, column: 18, scope: !36308, inlinedAt: !36315)
!38318 = !DILocation(line: 2205, column: 9, scope: !36329, inlinedAt: !36345)
!38319 = !DILocation(line: 20, column: 13, scope: !37778, inlinedAt: !36315)
!38320 = !DILocation(line: 158, column: 9, scope: !36349, inlinedAt: !36350)
!38321 = !DILocation(line: 159, column: 9, scope: !36349, inlinedAt: !36350)
!38322 = !DILocation(line: 160, column: 9, scope: !36349, inlinedAt: !36350)
!38323 = !DILocation(line: 157, column: 60, scope: !36349, inlinedAt: !36350)
!38324 = !DILocation(line: 595, column: 18, scope: !36358, inlinedAt: !36359)
!38325 = !DILocation(line: 22, column: 12, scope: !37766, inlinedAt: !36315)
!38326 = !DILocation(line: 25, column: 5, scope: !36310, inlinedAt: !36315)
!38327 = !DILocation(line: 22, column: 12, scope: !37383, inlinedAt: !35912)
!38328 = !DILocation(line: 2553, column: 26, scope: !36173, inlinedAt: !36365)
!38329 = !DILocation(line: 1535, column: 22, scope: !35983, inlinedAt: !36320)
!38330 = !DILocation(line: 23, column: 5, scope: !36307, inlinedAt: !36315)
!38331 = !DILocation(line: 23, column: 20, scope: !37381, inlinedAt: !35912)
!38332 = !DILocation(line: 0, scope: !37796, inlinedAt: !35912)
!38333 = !DILocation(line: 848, column: 1, scope: !1927, inlinedAt: !36366)
!38334 = !DILocation(line: 23, column: 20, scope: !37766, inlinedAt: !36315)
!38335 = !DILocation(line: 595, column: 18, scope: !35954, inlinedAt: !36363)
!38336 = !DILocation(line: 166, column: 8, scope: !35880, inlinedAt: !35912)
!38337 = !DILocation(line: 23, column: 20, scope: !37383, inlinedAt: !35912)
!38338 = !DILocation(line: 0, scope: !37798, inlinedAt: !35912)
!38339 = !DILocation(line: 20, column: 13, scope: !37383, inlinedAt: !35912)
!38340 = !DILocation(line: 200, column: 19, scope: !35880, inlinedAt: !35912)
!38341 = !DILocation(line: 51, column: 21, scope: !35940, inlinedAt: !35944)
!38342 = !DILocation(line: 53, column: 21, scope: !35941, inlinedAt: !35944)
!38343 = !DILocation(line: 1914, column: 9, scope: !36416, inlinedAt: !36417)
!38344 = !DILocation(line: 1886, column: 9, scope: !36410, inlinedAt: !36411)
!38345 = !DILocation(line: 53, column: 49, scope: !35941, inlinedAt: !35944)
!38346 = !DILocation(line: 2192, column: 50, scope: !35920, inlinedAt: !36375)
!38347 = !DILocation(line: 1100, column: 12, scope: !35923, inlinedAt: !36374)
!38348 = !DILocation(line: 71, column: 14, scope: !35942, inlinedAt: !35944)
!38349 = !DILocation(line: 2192, column: 50, scope: !35920, inlinedAt: !35947)
!38350 = !DILocation(line: 1100, column: 12, scope: !35923, inlinedAt: !35946)
!38351 = !DILocation(line: 2553, column: 26, scope: !36423, inlinedAt: !36424)
!38352 = !DILocation(line: 56, column: 63, scope: !35938, inlinedAt: !35944)
!38353 = !DILocation(line: 56, column: 24, scope: !35938, inlinedAt: !35944)
!38354 = !DILocation(line: 2205, column: 9, scope: !36386, inlinedAt: !36428)
!38355 = !DILocation(line: 1086, column: 9, scope: !36431, inlinedAt: !36432)
!38356 = !DILocation(line: 61, column: 12, scope: !35934, inlinedAt: !35944)
!38357 = !DILocation(line: 83, column: 5, scope: !35942, inlinedAt: !35944)
!38358 = !DILocation(line: 22, column: 12, scope: !37387, inlinedAt: !35912)
!38359 = !DILocation(line: 72, column: 63, scope: !35932, inlinedAt: !35944)
!38360 = !DILocation(line: 72, column: 24, scope: !35932, inlinedAt: !35944)
!38361 = !DILocation(line: 2205, column: 9, scope: !36386, inlinedAt: !36455)
!38362 = !DILocation(line: 1086, column: 9, scope: !36431, inlinedAt: !36458)
!38363 = !DILocation(line: 77, column: 12, scope: !35928, inlinedAt: !35944)
!38364 = !DILocation(line: 20, column: 13, scope: !37842, inlinedAt: !35944)
!38365 = !DILocation(line: 78, column: 40, scope: !35928, inlinedAt: !35944)
!38366 = !DILocation(line: 203, column: 32, scope: !36463, inlinedAt: !36464)
!38367 = !DILocation(line: 203, column: 35, scope: !36463, inlinedAt: !36464)
!38368 = !DILocation(line: 203, column: 42, scope: !36463, inlinedAt: !36464)
!38369 = !DILocation(line: 203, column: 16, scope: !36463, inlinedAt: !36464)
!38370 = !DILocation(line: 595, column: 18, scope: !36472, inlinedAt: !36473)
!38371 = !DILocation(line: 22, column: 12, scope: !37502, inlinedAt: !35944)
!38372 = !DILocation(line: 20, column: 13, scope: !37502, inlinedAt: !35944)
!38373 = !DILocation(line: 79, column: 32, scope: !35927, inlinedAt: !35944)
!38374 = !DILocation(line: 203, column: 32, scope: !36463, inlinedAt: !36475)
!38375 = !DILocation(line: 203, column: 35, scope: !36463, inlinedAt: !36475)
!38376 = !DILocation(line: 203, column: 42, scope: !36463, inlinedAt: !36475)
!38377 = !DILocation(line: 203, column: 16, scope: !36463, inlinedAt: !36475)
!38378 = !DILocation(line: 23, column: 20, scope: !37502, inlinedAt: !35944)
!38379 = !DILocation(line: 0, scope: !37861, inlinedAt: !35944)
!38380 = !DILocation(line: 848, column: 1, scope: !1927, inlinedAt: !36480)
!38381 = !DILocation(line: 595, column: 18, scope: !36472, inlinedAt: !36486)
!38382 = !DILocation(line: 22, column: 12, scope: !37504, inlinedAt: !35944)
!38383 = !DILocation(line: 23, column: 20, scope: !37504, inlinedAt: !35944)
!38384 = !DILocation(line: 80, column: 9, scope: !35927, inlinedAt: !35944)
!38385 = !DILocation(line: 848, column: 1, scope: !1927, inlinedAt: !36488)
!38386 = !DILocation(line: 848, column: 1, scope: !1927, inlinedAt: !36494)
!38387 = !DILocation(line: 80, column: 9, scope: !35928, inlinedAt: !35944)
!38388 = !DILocation(line: 77, column: 9, scope: !35928, inlinedAt: !35944)
!38389 = !DILocation(line: 0, scope: !37867, inlinedAt: !35944)
!38390 = !DILocation(line: 43, column: 1, scope: !35940, inlinedAt: !35944)
!38391 = !DILocation(line: 1914, column: 9, scope: !36416, inlinedAt: !36443)
!38392 = !DILocation(line: 63, column: 16, scope: !35934, inlinedAt: !35944)
!38393 = !DILocation(line: 0, scope: !35936, inlinedAt: !35944)
!38394 = !DILocation(line: 20, column: 13, scope: !37868, inlinedAt: !35944)
!38395 = !DILocation(line: 203, column: 32, scope: !36463, inlinedAt: !36498)
!38396 = !DILocation(line: 203, column: 35, scope: !36463, inlinedAt: !36498)
!38397 = !DILocation(line: 203, column: 42, scope: !36463, inlinedAt: !36498)
!38398 = !DILocation(line: 203, column: 16, scope: !36463, inlinedAt: !36498)
!38399 = !DILocation(line: 595, column: 18, scope: !36472, inlinedAt: !36505)
!38400 = !DILocation(line: 22, column: 12, scope: !37494, inlinedAt: !35944)
!38401 = !DILocation(line: 69, column: 5, scope: !35934, inlinedAt: !35944)
!38402 = !DILocation(line: 55, column: 5, scope: !35939, inlinedAt: !35944)
!38403 = !DILocation(line: 23, column: 20, scope: !37494, inlinedAt: !35944)
!38404 = !DILocation(line: 1886, column: 9, scope: !36091, inlinedAt: !36092)
!38405 = !DILocation(line: 1886, column: 9, scope: !36529, inlinedAt: !36530)
!38406 = !DILocation(line: 37, column: 14, scope: !36513, inlinedAt: !36515)
!38407 = !DILocation(line: 1886, column: 9, scope: !36529, inlinedAt: !36535)
!38408 = !DILocation(line: 37, column: 45, scope: !36513, inlinedAt: !36515)
!38409 = !DILocation(line: 577, column: 9, scope: !35981, inlinedAt: !36522)
!38410 = !DILocation(line: 2553, column: 26, scope: !36173, inlinedAt: !36543)
!38411 = !DILocation(line: 1535, column: 22, scope: !35983, inlinedAt: !36521)
!38412 = !DILocation(line: 20, column: 13, scope: !37892, inlinedAt: !36515)
!38413 = !DILocation(line: 20, column: 13, scope: !37915, inlinedAt: !36553)
!38414 = !DILocation(line: 173, column: 31, scope: !36549, inlinedAt: !36553)
!38415 = !DILocation(line: 174, column: 22, scope: !36549, inlinedAt: !36553)
!38416 = !DILocation(line: 174, column: 36, scope: !36549, inlinedAt: !36553)
!38417 = !DILocation(line: 175, column: 36, scope: !36549, inlinedAt: !36553)
!38418 = !DILocation(line: 176, column: 22, scope: !36549, inlinedAt: !36553)
!38419 = !DILocation(line: 176, column: 28, scope: !36549, inlinedAt: !36553)
!38420 = !DILocation(line: 73, column: 19, scope: !1929, inlinedAt: !36573)
!38421 = !DILocation(line: 73, column: 27, scope: !1929, inlinedAt: !36573)
!38422 = !DILocation(line: 73, column: 35, scope: !1929, inlinedAt: !36573)
!38423 = !DILocation(line: 74, column: 20, scope: !1929, inlinedAt: !36573)
!38424 = !DILocation(line: 72, column: 9, scope: !1929, inlinedAt: !36573)
!38425 = !DILocation(line: 173, column: 33, scope: !36549, inlinedAt: !36553)
!38426 = !DILocation(line: 20, column: 24, scope: !37915, inlinedAt: !36553)
!38427 = !DILocation(line: 595, column: 18, scope: !36578, inlinedAt: !36579)
!38428 = !DILocation(line: 22, column: 12, scope: !37904, inlinedAt: !36553)
!38429 = !DILocation(line: 23, column: 20, scope: !37904, inlinedAt: !36553)
!38430 = !DILocation(line: 0, scope: !37925, inlinedAt: !36553)
!38431 = !DILocation(line: 848, column: 1, scope: !1927, inlinedAt: !36582)
!38432 = !DILocation(line: 20, column: 13, scope: !37904, inlinedAt: !36553)
!38433 = !DILocation(line: 178, column: 31, scope: !36548, inlinedAt: !36553)
!38434 = !DILocation(line: 179, column: 22, scope: !36548, inlinedAt: !36553)
!38435 = !DILocation(line: 179, column: 36, scope: !36548, inlinedAt: !36553)
end_hunk_1
