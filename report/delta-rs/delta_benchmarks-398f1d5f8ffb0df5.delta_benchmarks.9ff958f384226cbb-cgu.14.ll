inline.NumInlined: 2497
inline.NumDeleted: 1001
begin_hunk_0_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks:bb.a
    i64 28, label %bb.af
    i64 29, label %bb.ag
    i64 30, label %bb.ak
    i64 31, label %bb.am
    i64 32, label %tailrecurse.backedge.sink.split
  ]

bb.b:                                             ; preds = %tailrecurse
  unreachable

bb.c:                                             ; preds = %tailrecurse
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXs8_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret261

bb.d:                                             ; preds = %tailrecurse
  %i.bv = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3230)
  %i.bw = load i64, ptr %i.bv, align 8, !range !165, !alias.scope !3230, !noalias !3233, !noundef !16
  %i.bx = icmp ne i64 %i.bw, 3                    ; 2 uses
  %i.by = zext i1 %i.bx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !3235
  store i64 %i.by, ptr %i.bn, align 8, !noalias !3235
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef 8) #47, !noalias !3230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !3235
  br i1 %i.bx, label %bb.e, label %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47
  br label %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.d, %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !3230, !noalias !3233, !nonnull !16, !noundef !16
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !3230, !noalias !3233, !noundef !16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cc) #47, !noalias !3230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !3240
  store i8 -1, ptr %i.bm, align 1, !noalias !3240
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef 1) #47, !noalias !3247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !3240
  br label %common.ret261

bb.f:                                             ; preds = %tailrecurse
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ce = load ptr, ptr %i.cd, align 16, !nonnull !16, !noundef !16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cf, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ch = load ptr, ptr %i.cg, align 16, !nonnull !16, !noundef !16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !3248
  store i64 %i.cj, ptr %i.bl, align 8, !noalias !3248
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !3248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3253)
  %.idx.i = mul nuw nsw i64 %i.cj, 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i
  %i.cl = icmp eq i64 %i.cj, 0
  br i1 %i.cl, label %common.ret261, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.04.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %i.ch, %bb.f ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 24 ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.0.04.i, i64 8
  %.sroa.0.0.val.i = load ptr, ptr %i.cn, align 8, !alias.scope !3253, !noalias !3256, !nonnull !16, !noundef !16
  %i.co = getelementptr i8, ptr %.sroa.0.04.i, i64 16
  %.sroa.0.0.val3.i = load i64, ptr %i.co, align 8, !alias.scope !3253, !noalias !3256, !noundef !16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val.i, i64 noundef %.sroa.0.0.val3.i) #47, !noalias !3253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !3258
  store i8 -1, ptr %i.bk, align 1, !noalias !3258
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef 1) #47, !noalias !3267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !3258
  %i.cp = icmp eq ptr %i.cm, %i.ck
  br i1 %i.cp, label %common.ret261, label %.lr.ph.i

bb.g:                                             ; preds = %tailrecurse
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.cq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.cs = load ptr, ptr %i.cr, align 16, !noundef !16 ; 2 uses
  %i.ct = icmp ne ptr %i.cs, null                 ; 2 uses
  %i.cu = zext i1 %i.ct to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !3268
  store i64 %i.cu, ptr %i.bj, align 8, !noalias !3268
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !3268
  br i1 %i.ct, label %bb.ao, label %common.ret261

bb.h:                                             ; preds = %tailrecurse
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3273)
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !3273, !noalias !3276, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.cw, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !3273, !inline_history !3278
  %i.cx = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.cy = load i8, ptr %i.cx, align 8, !range !1296, !alias.scope !3273, !noalias !3276, !noundef !16
  %i.cz = zext nneg i8 %i.cy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !3279
  store i64 %i.cz, ptr %i.al, align 8, !noalias !3279
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 8) #47, !noalias !3273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !3279
  br label %tailrecurse.backedge.sink.split

tailrecurse.backedge.sink.split:                  ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %bb.m, %bb.h
  %.sink138 = phi i64 [ 16, %bb.h ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 24, %bb.m ], [ 8, %tailrecurse ]
  %i.da = getelementptr inbounds nuw i8, ptr %.tr, i64 %.sink138
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !16, !noundef !16
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.sink.split, %bb.p
  %.tr.be = phi ptr [ %i.ep, %bb.p ], [ %i.db, %tailrecurse.backedge.sink.split ]
  br label %tailrecurse

bb.i:                                             ; preds = %tailrecurse
  %i.dc = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3284)
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr, i64 28
  %i.de = load i8, ptr %i.dd, align 4, !range !51, !alias.scope !3284, !noalias !3287, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !3289
  store i8 %i.de, ptr %i.ah, align 1, !noalias !3289
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 1) #47, !noalias !3284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3289
  %i.df = load ptr, ptr %i.dc, align 8, !alias.scope !3284, !noalias !3287, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.df, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !3284, !inline_history !3292
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !3284, !noalias !3287, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !3284, !inline_history !3292
  %i.di = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.dj = load i32, ptr %i.di, align 8, !range !3293, !alias.scope !3284, !noalias !3287, !noundef !16 ; 2 uses
  %i.dk = icmp ne i32 %i.dj, 1114112              ; 2 uses
  %i.dl = zext i1 %i.dk to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !3294
  store i64 %i.dl, ptr %i.ai, align 8, !noalias !3294
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 8) #47, !noalias !3284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3294
  br i1 %i.dk, label %bb.j, label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !3299
  store i32 %i.dj, ptr %i.aj, align 4, !noalias !3299
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 4) #47, !noalias !3284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3299
  br label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.i, %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr, i64 29
  %i.dn = load i8, ptr %i.dm, align 1, !range !51, !alias.scope !3284, !noalias !3287, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3302
  store i8 %i.dn, ptr %i.ak, align 1, !noalias !3302
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef 1) #47, !noalias !3284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3302
  br label %common.ret261

bb.k:                                             ; preds = %tailrecurse
  %i.do = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3305)
  %i.dp = getelementptr inbounds nuw i8, ptr %.tr, i64 28
  %i.dq = load i8, ptr %i.dp, align 4, !range !51, !alias.scope !3305, !noalias !3308, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3310
  store i8 %i.dq, ptr %i.ad, align 1, !noalias !3310
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 1) #47, !noalias !3305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3310
  %i.dr = load ptr, ptr %i.do, align 8, !alias.scope !3305, !noalias !3308, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dr, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !3305, !inline_history !3292
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !3305, !noalias !3308, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dt, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !3305, !inline_history !3292
  %i.du = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !range !3293, !alias.scope !3305, !noalias !3308, !noundef !16 ; 2 uses
  %i.dw = icmp ne i32 %i.dv, 1114112              ; 2 uses
  %i.dx = zext i1 %i.dw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3313
  store i64 %i.dx, ptr %i.ae, align 8, !noalias !3313
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8) #47, !noalias !3305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3313
  br i1 %i.dw, label %bb.l, label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit1

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3318
  store i32 %i.dv, ptr %i.af, align 4, !noalias !3318
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 4) #47, !noalias !3305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3318
  br label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit1

_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit1: ; preds = %bb.k, %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %.tr, i64 29
  %i.dz = load i8, ptr %i.dy, align 1, !range !51, !alias.scope !3305, !noalias !3308, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3321
  store i8 %i.dz, ptr %i.ag, align 1, !noalias !3321
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef 1) #47, !noalias !3305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3321
  br label %common.ret261

bb.m:                                             ; preds = %tailrecurse
  %i.ea = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3324)
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !3324, !noalias !3327, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eb, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !3324, !inline_history !3329
  %i.ec = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ed = load i8, ptr %i.ec, align 8, !range !51, !alias.scope !3324, !noalias !3327, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3330
  store i8 %i.ed, ptr %i.ac, align 1, !noalias !3330
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 1) #47, !noalias !3324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3330
  %i.ee = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !3324, !noalias !3327, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ef, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !3324, !inline_history !3329
  br label %tailrecurse.backedge.sink.split

bb.n:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3333)
  %i.eg = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !3333, !noalias !3336, !align !1291, !noundef !16 ; 2 uses
  %i.ei = icmp ne ptr %i.eh, null                 ; 2 uses
  %i.ej = zext i1 %i.ei to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3338
  store i64 %i.ej, ptr %i.z, align 8, !noalias !3338
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 8) #47, !noalias !3333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3338
  br i1 %i.ei, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !3333, !inline_history !3343
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ek = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !3333, !noalias !3336, !nonnull !16, !noundef !16
  %i.em = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !3333, !noalias !3336, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3344
  store i64 %i.en, ptr %i.aa, align 8, !noalias !3344
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #47, !noalias !3333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3344
  tail call void @_RINvYTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.el, i64 noundef %i.en, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3333, !inline_history !3343
  %i.eo = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !3333, !noalias !3336, !align !1291, !noundef !16 ; 2 uses
  %i.eq = icmp ne ptr %i.ep, null                 ; 2 uses
  %i.er = zext i1 %i.eq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3349
  store i64 %i.er, ptr %i.ab, align 8, !noalias !3349
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8) #47, !noalias !3333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3349
  br i1 %i.eq, label %tailrecurse.backedge, label %common.ret261

common.ret261:                                    ; preds = %bb.bc, %bb.bb, %bb.az, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.w, %bb.v, %bb.f, %bb.ao, %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit2, %bb.ae, %bb.ac, %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.s, %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit1, %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.g, %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.c, %.lr.ph.i, %bb.p, %bb.ad, %bb.ab, %bb.r, %bb.q
  ret void

bb.q:                                             ; preds = %tailrecurse
  %i.es = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3354)
  %i.et = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !3354, !noalias !3357, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eu, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !3354, !inline_history !3359
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.es, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !3359
  br label %common.ret261

bb.r:                                             ; preds = %tailrecurse
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3360)
  %i.ew = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !3360, !noalias !3363, !nonnull !16, !noundef !16
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ex, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !3360, !inline_history !3365
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ev, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !3365
  br label %common.ret261

bb.s:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3366)
  %i.ey = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !3366, !noalias !3369, !nonnull !16, !noundef !16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3371)
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !3371, !noalias !3374, !nonnull !16, !noundef !16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !3371, !noalias !3374, !nonnull !16, !align !456, !noundef !16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !range !457, !invariant.load !16, !noalias !3376
  %i.fg = add nsw i64 %i.ff, -1
  %i.fh = and i64 %i.fg, -16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8, !invariant.load !16, !noalias !3376, !nonnull !16
  tail call void %i.fl(ptr noundef nonnull %i.fj, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @31) #47, !noalias !3377, !inline_history !3378
  %i.fm = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !3366, !noalias !3369, !nonnull !16, !noundef !16
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !3366, !noalias !3369, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !3379
  store i64 %i.fp, ptr %i.bi, align 8, !noalias !3379
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef 8) #47, !noalias !3366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !3379
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.fn, i64 noundef %i.fp, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3366
  br label %common.ret261

bb.t:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3384)
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !3384, !noalias !3387, !nonnull !16, !noundef !16 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3389)
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !3389, !noalias !3392, !nonnull !16, !noundef !16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !3389, !noalias !3392, !nonnull !16, !align !456, !noundef !16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !range !457, !invariant.load !16, !noalias !3394
  %i.fy = add nsw i64 %i.fx, -1
  %i.fz = and i64 %i.fy, -16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8, !invariant.load !16, !noalias !3394, !nonnull !16
  tail call void %i.gd(ptr noundef nonnull %i.gb, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @31) #47, !noalias !3395, !inline_history !3396
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3397)
  %i.ge = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !3397, !noalias !3400, !nonnull !16, !noundef !16
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !3397, !noalias !3400, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3402
  store i64 %i.gh, ptr %i.y, align 8, !noalias !3402
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #47, !noalias !3397, !inline_history !3407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3402
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.gf, i64 noundef %i.gh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3397, !inline_history !3407
  %i.gi = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.gj = load i8, ptr %i.gi, align 8, !range !51, !alias.scope !3397, !noalias !3400, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3408
  store i8 %i.gj, ptr %i.x, align 1, !noalias !3408
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 1) #47, !noalias !3397, !inline_history !3407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3408
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !3397, !noalias !3400, !align !1291, !noundef !16 ; 2 uses
  %i.gm = icmp ne ptr %i.gl, null                 ; 2 uses
  %i.gn = zext i1 %i.gm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3411
  store i64 %i.gn, ptr %i.w, align 8, !noalias !3411
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8) #47, !noalias !3397, !inline_history !3407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3411
  br i1 %i.gm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.gl, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !3397, !inline_history !3407
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.go = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.gp = load ptr, ptr %i.go, align 8, !alias.scope !3397, !noalias !3400, !nonnull !16, !noundef !16
  %i.gq = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !3397, !noalias !3400, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3416
  store i64 %i.gr, ptr %i.v, align 8, !noalias !3416
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #47, !noalias !3397, !inline_history !3407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3416
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.gp, i64 noundef %i.gr, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3397, !inline_history !3407
  %i.gs = getelementptr inbounds nuw i8, ptr %.tr, i64 65
  %i.gt = load i8, ptr %i.gs, align 1, !range !58, !alias.scope !3397, !noalias !3400, !noundef !16 ; 2 uses
  %i.gu = icmp ne i8 %i.gt, 2                     ; 2 uses
  %i.gv = zext i1 %i.gu to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3421
  store i64 %i.gv, ptr %i.u, align 8, !noalias !3421
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 8) #47, !noalias !3397, !inline_history !3407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3421
  br i1 %i.gu, label %bb.w, label %common.ret261

bb.w:                                             ; preds = %bb.v
  %i.gw = zext nneg i8 %i.gt to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3426
  store i64 %i.gw, ptr %i.t, align 8, !noalias !3426
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 8) #47, !noalias !3397, !inline_history !3407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3426
  br label %common.ret261

bb.x:                                             ; preds = %tailrecurse
  %i.gx = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !nonnull !16, !noundef !16 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3433)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 272
  %.val.i = load i64, ptr %i.gz, align 8, !range !15, !alias.scope !3433, !noalias !3436, !noundef !16
  %i.ha = getelementptr i8, ptr %i.gy, i64 280
  %.val1.i = load ptr, ptr %i.ha, align 8, !alias.scope !3433, !noalias !3436 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3438
  store i64 %.val.i, ptr %i.h, align 8, !noalias !3438
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #47, !noalias !3433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3438
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !3433
  %i.hb = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !3445, !nonnull !16, !noundef !16
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !3445, !nonnull !16, !align !456, !noundef !16 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !range !457, !invariant.load !16, !noalias !3445
  %i.hh = add nsw i64 %i.hg, -1
  %i.hi = and i64 %i.hh, -16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8, !invariant.load !16, !noalias !3445, !nonnull !16
  tail call void %i.hm(ptr noundef nonnull %i.hk, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @31) #47, !noalias !3433, !inline_history !3446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3447)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gy, i64 184
  %i.ho = load ptr, ptr %i.hn, align 8, !alias.scope !3447, !noalias !3450, !nonnull !16, !noundef !16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gy, i64 192
  %i.hq = load i64, ptr %i.hp, align 16, !alias.scope !3447, !noalias !3450, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3452
  store i64 %i.hq, ptr %i.s, align 8, !noalias !3452
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 8) #47, !noalias !3447, !inline_history !3457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3452
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ho, i64 noundef %i.hq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3447, !inline_history !3457
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gy, i64 208
  %i.hs = load ptr, ptr %i.hr, align 16, !alias.scope !3447, !noalias !3450, !nonnull !16, !noundef !16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gy, i64 216
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !3447, !noalias !3450, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3458
  store i64 %i.hu, ptr %i.r, align 8, !noalias !3458
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8) #47, !noalias !3447, !inline_history !3457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3458
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.hs, i64 noundef %i.hu, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3447, !inline_history !3457
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gy, i64 232
  %i.hw = load ptr, ptr %i.hv, align 8, !alias.scope !3447, !noalias !3450, !nonnull !16, !noundef !16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gy, i64 240
  %i.hy = load i64, ptr %i.hx, align 16, !alias.scope !3447, !noalias !3450, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3463
  store i64 %i.hy, ptr %i.q, align 8, !noalias !3463
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 8) #47, !noalias !3447, !inline_history !3457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3463
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.hw, i64 noundef %i.hy, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3447, !inline_history !3457
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3468)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gy, i64 161
  %i.ia = load i8, ptr %i.hz, align 1, !range !58, !alias.scope !3471, !noalias !3472, !noundef !16
end_hunk_0
begin_hunk_1_@_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  store i64 %i.fy, ptr %i.ar, align 8, !noalias !4456
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef 8) #47, !noalias !4445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !4456
  %i.fz = getelementptr inbounds nuw i8, ptr %.tr, i64 177
  %i.ga = load i8, ptr %i.fz, align 1, !range !51, !alias.scope !4418, !noalias !4421, !noundef !16
  %i.gb = zext nneg i8 %i.ga to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !4459
  store i64 %i.gb, ptr %i.at, align 8, !noalias !4459
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !4459
  br label %common.ret

bb.k:                                             ; preds = %tailrecurse
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4464)
  %i.gd = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !4464, !noalias !4467, !nonnull !16, !noundef !16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.gf, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !4464, !inline_history !4469
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4470)
  %i.gg = load i64, ptr %i.gc, align 8, !range !2979, !alias.scope !4470, !noalias !4473, !noundef !16 ; 3 uses
  %i.gh = icmp ne i64 %i.gg, -9223372036854775807
  tail call void @llvm.assume(i1 %i.gh)
  %i.gi = xor i64 %i.gg, -9223372036854775808
  %i.gj = icmp slt i64 %i.gg, 0
  %i.gk = select i1 %i.gj, i64 %i.gi, i64 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !4475
  store i64 %i.gk, ptr %i.am, align 8, !noalias !4475
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef 8) #47, !noalias !4470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !4475
  switch i64 %i.gk, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.gl = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !4470, !noalias !4473, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !4480
  store i64 %i.gm, ptr %i.al, align 8, !noalias !4480
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 8) #47, !noalias !4470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !4480
  br label %common.ret

bb.n:                                             ; preds = %bb.k
  %i.gn = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !4470, !noalias !4473, !nonnull !16, !noundef !16
  %i.gp = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !4470, !noalias !4473, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !4483
  store i64 %i.gq, ptr %i.ak, align 8, !noalias !4483
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef 8) #47, !noalias !4470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !4483
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.go, i64 noundef %i.gq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4470
  %i.gr = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !4470, !noalias !4473, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4488
  store i64 %i.gs, ptr %i.aj, align 8, !noalias !4488
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 8) #47, !noalias !4470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4488
  br label %common.ret

bb.o:                                             ; preds = %bb.k
  %i.gt = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !4470, !noalias !4473, !nonnull !16, !noundef !16
  %i.gv = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !4470, !noalias !4473, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4491
  store i64 %i.gw, ptr %i.ai, align 8, !noalias !4491
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 8) #47, !noalias !4470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4491
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.gu, i64 noundef %i.gw, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4470
  br label %common.ret

bb.p:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4496)
  %i.gx = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !4496, !noalias !4499, !nonnull !16, !noundef !16
  %i.gz = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !4496, !noalias !4499, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !4501
  store i64 %i.ha, ptr %i.bs, align 8, !noalias !4501
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef 8) #47, !noalias !4496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !4501
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gy, i64 noundef %i.ha, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4496
  %i.hb = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !4496, !noalias !4499, !nonnull !16, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4506)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !4506, !noalias !4509, !nonnull !16, !noundef !16 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !4511, !nonnull !16, !noundef !16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hi = load i64, ptr %i.hh, align 8, !noalias !4511, !noundef !16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !4512
  store i64 %i.hi, ptr %i.br, align 8, !noalias !4512
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef 8) #47, !noalias !4517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !4512
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.hj, i64 noundef %i.hi, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4517
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  %i.hl = load i64, ptr %i.hk, align 8, !noalias !4517, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !4518
  store i64 %i.hl, ptr %i.bq, align 8, !noalias !4518
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef 8) #47, !noalias !4517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !4518
  br label %common.ret

bb.q:                                             ; preds = %tailrecurse
  %i.hm = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXsh_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.hm, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.r:                                             ; preds = %tailrecurse
  %i.hn = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %.val = load ptr, ptr %i.hn, align 8            ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val1 = load i8, ptr %i.ho, align 8, !range !51, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !4521
  store i8 %.val1, ptr %i.bp, align 1, !noalias !4521
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef 1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !4521
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4526)
  %i.hp = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.hq = load ptr, ptr %i.hp, align 8, !alias.scope !4526, !noalias !4529, !nonnull !16, !noundef !16 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !4531, !nonnull !16, !noundef !16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hu = load i64, ptr %i.ht, align 8, !noalias !4531, !noundef !16 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !4532
  store i64 %i.hu, ptr %i.bo, align 8, !noalias !4532
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef 8) #47, !noalias !4526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !4532
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.hv, i64 noundef %i.hu, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4526
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 56
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !4526, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !4537
  store i64 %i.hx, ptr %i.bn, align 8, !noalias !4537
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef 8) #47, !noalias !4526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !4537
  br label %common.ret

bb.s:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4540)
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !4540, !noalias !4543, !nonnull !16, !noundef !16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ia, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !4540, !inline_history !3582
  %i.ib = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !alias.scope !4540, !noalias !4543, !nonnull !16, !noundef !16
  %i.id = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ie = load i64, ptr %i.id, align 8, !alias.scope !4540, !noalias !4543, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !4545
  store i64 %i.ie, ptr %i.bm, align 8, !noalias !4545
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef 8) #47, !noalias !4540, !inline_history !3582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !4545
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ic, i64 noundef %i.ie, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4540, !inline_history !3582
  br label %common.ret

bb.t:                                             ; preds = %tailrecurse
  %i.if = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4550)
  %i.ig = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !4550, !noalias !4553, !nonnull !16, !noundef !16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ii, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !4550, !inline_history !4555
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.if, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !4555
  %i.ij = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.ik = load ptr, ptr %i.ij, align 8, !alias.scope !4550, !noalias !4553, !nonnull !16, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4556)
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
  %i.im = load ptr, ptr %i.il, align 8, !alias.scope !4556, !noalias !4559, !nonnull !16, !noundef !16 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !noalias !4561, !nonnull !16, !noundef !16
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.iq = load i64, ptr %i.ip, align 8, !noalias !4561, !noundef !16 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !4562
  store i64 %i.iq, ptr %i.ah, align 8, !noalias !4562
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 8) #47, !noalias !4567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4562
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ir, i64 noundef %i.iq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4567
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 56
  %i.it = load i64, ptr %i.is, align 8, !noalias !4567, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4568
  store i64 %i.it, ptr %i.ag, align 8, !noalias !4568
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef 8) #47, !noalias !4567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4568
  br label %common.ret

bb.u:                                             ; preds = %tailrecurse
  %i.iu = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4571)
  %i.iv = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !alias.scope !4571, !noalias !4574, !align !1291, !noundef !16 ; 2 uses
  %i.ix = icmp ne ptr %i.iw, null                 ; 2 uses
  %i.iy = zext i1 %i.ix to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4576
  store i64 %i.iy, ptr %i.ae, align 8, !noalias !4576
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8) #47, !noalias !4571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4576
  br i1 %i.ix, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.iw, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !4571, !inline_history !4581
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.iz = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !4571, !noalias !4574, !align !1291, !noundef !16 ; 2 uses
  %i.jb = icmp ne ptr %i.ja, null                 ; 2 uses
  %i.jc = zext i1 %i.jb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4582
  store i64 %i.jc, ptr %i.af, align 8, !noalias !4582
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 8) #47, !noalias !4571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4582
  br i1 %i.jb, label %bb.x, label %tailrecurse.backedge

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ja, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !4571, !inline_history !4581
  br label %tailrecurse.backedge

bb.y:                                             ; preds = %tailrecurse
  %i.jd = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4587)
  %i.je = load i64, ptr %i.jd, align 8, !range !2446, !alias.scope !4587, !noalias !4590, !noundef !16 ; 3 uses
  %i.jf = icmp ne i64 %i.je, -9223372036854775804
  tail call void @llvm.assume(i1 %i.jf)
  %i.jg = xor i64 %i.je, -9223372036854775808
  %i.jh = icmp slt i64 %i.je, 0
  %i.ji = select i1 %i.jh, i64 %i.jg, i64 4       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4592
  store i64 %i.ji, ptr %i.ad, align 8, !noalias !4592
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 8) #47, !noalias !4587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4592
  switch i64 %i.ji, label %bb.z [
    i64 0, label %bb.aa
    i64 1, label %bb.ab
    i64 2, label %bb.ac
    i64 3, label %bb.ad
    i64 4, label %bb.ae
    i64 5, label %bb.af
    i64 6, label %bb.ag
  ]

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.jj = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val.i = load i8, ptr %i.jj, align 1, !range !51, !alias.scope !4587, !noalias !4590, !noundef !16
  %i.jk = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %.val1.i = load i8, ptr %i.jk, align 1, !alias.scope !4587, !noalias !4590
  tail call fastcc void @_RINvXsx_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_16TransactionStartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(i8 %.val.i, i8 %.val1.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !4587, !inline_history !4597
  br label %common.ret

bb.ab:                                            ; preds = %bb.y
  %i.jl = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val2.i = load i8, ptr %i.jl, align 1, !range !51, !alias.scope !4587, !noalias !4590, !noundef !16
  %i.jm = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %.val3.i = load i8, ptr %i.jm, align 1, !alias.scope !4587, !noalias !4590
  tail call fastcc void @_RINvXsE_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_14TransactionEndNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(i8 %.val2.i, i8 %.val3.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !4587, !inline_history !4597
  br label %common.ret

bb.ac:                                            ; preds = %bb.y
  %i.jn = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXsL_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_11SetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jn, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !4597
  br label %common.ret

bb.ad:                                            ; preds = %bb.y
  %i.jo = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val4.i = load ptr, ptr %i.jo, align 8, !alias.scope !4587, !noalias !4590, !nonnull !16, !noundef !16
  %i.jp = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.val5.i = load i64, ptr %i.jp, align 8, !alias.scope !4587, !noalias !4590, !noundef !16
  tail call fastcc void @_RINvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_13ResetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr %.val4.i, i64 %.val5.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !4587, !inline_history !4597
  br label %common.ret

bb.ae:                                            ; preds = %bb.y
  tail call fastcc void @_RINvXsZ_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_7PrepareNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jd, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !4597
  br label %common.ret

bb.af:                                            ; preds = %bb.y
  %i.jq = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXs16_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_7ExecuteNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jq, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !inline_history !4597
  br label %common.ret

bb.ag:                                            ; preds = %bb.y
  %i.jr = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val6.i = load ptr, ptr %i.jr, align 8, !alias.scope !4587, !noalias !4590, !nonnull !16, !noundef !16
  %i.js = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.val7.i = load i64, ptr %i.js, align 8, !alias.scope !4587, !noalias !4590, !noundef !16
  tail call fastcc void @_RINvXs1d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_10DeallocateNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr %.val6.i, i64 %.val7.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !4587, !inline_history !4597
  br label %common.ret

bb.ah:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4598)
  %i.jt = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ju = load ptr, ptr %i.jt, align 8, !alias.scope !4598, !noalias !4601, !nonnull !16, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4603)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 64
  %i.jw = load ptr, ptr %i.jv, align 8, !alias.scope !4603, !noalias !4606, !nonnull !16, !noundef !16 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !noalias !4608, !nonnull !16, !noundef !16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.ka = load i64, ptr %i.jz, align 8, !noalias !4608, !noundef !16 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !4609
  store i64 %i.ka, ptr %i.bl, align 8, !noalias !4609
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef 8) #47, !noalias !4614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !4609
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.kb, i64 noundef %i.ka, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4614
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 56
  %i.kd = load i64, ptr %i.kc, align 8, !noalias !4614, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !4615
  store i64 %i.kd, ptr %i.bk, align 8, !noalias !4615
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef 8) #47, !noalias !4614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !4615
  %i.ke = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !alias.scope !4598, !noalias !4601, !nonnull !16, !noundef !16
  %i.kg = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.kh = load i64, ptr %i.kg, align 8, !alias.scope !4598, !noalias !4601, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !4618
  store i64 %i.kh, ptr %i.bj, align 8, !noalias !4618
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef 8) #47, !noalias !4598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !4618
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.kf, i64 noundef %i.kh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4598
  br label %common.ret

bb.ai:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4623)
  %i.ki = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.kj = load i8, ptr %i.ki, align 8, !range !51, !alias.scope !4623, !noalias !4626, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4628
  store i8 %i.kj, ptr %i.x, align 1, !noalias !4628
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 1) #47, !noalias !4623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4628
  %i.kk = getelementptr inbounds nuw i8, ptr %.tr, i64 50
  %i.kl = load i8, ptr %i.kk, align 2, !range !1380, !alias.scope !4623, !noalias !4626, !noundef !16
  %i.km = zext nneg i8 %i.kl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4631
  store i64 %i.km, ptr %i.y, align 8, !noalias !4631
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #47, !noalias !4623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4631
  %i.kn = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !alias.scope !4623, !noalias !4626, !nonnull !16, !noundef !16
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.kp, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !4623, !inline_history !4636
  %i.kq = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !alias.scope !4623, !noalias !4626, !nonnull !16, !noundef !16
  %i.ks = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.kt = load i64, ptr %i.ks, align 8, !alias.scope !4623, !noalias !4626, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4637
  store i64 %i.kt, ptr %i.z, align 8, !noalias !4637
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 8) #47, !noalias !4623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4637
  tail call void @_RINvYNtNtCsjhHCjzi9uUI_17datafusion_common7display15StringifiedPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.kr, i64 noundef %i.kt, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4623, !inline_history !4636
  %i.ku = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.kv = load ptr, ptr %i.ku, align 8, !alias.scope !4623, !noalias !4626, !nonnull !16, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4642)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 64
  %i.kx = load ptr, ptr %i.kw, align 8, !alias.scope !4642, !noalias !4645, !nonnull !16, !noundef !16 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !noalias !4647, !nonnull !16, !noundef !16
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.lb = load i64, ptr %i.la, align 8, !noalias !4647, !noundef !16 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4648
  store i64 %i.lb, ptr %i.ab, align 8, !noalias !4648
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8) #47, !noalias !4653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4648
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.lc, i64 noundef %i.lb, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4653
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kx, i64 56
  %i.le = load i64, ptr %i.ld, align 8, !noalias !4653, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4654
  store i64 %i.le, ptr %i.aa, align 8, !noalias !4654
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #47, !noalias !4653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4654
  %i.lf = getelementptr inbounds nuw i8, ptr %.tr, i64 49
  %i.lg = load i8, ptr %i.lf, align 1, !range !51, !alias.scope !4623, !noalias !4626, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4657
  store i8 %i.lg, ptr %i.ac, align 1, !noalias !4657
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 1) #47, !noalias !4623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !4657
  br label %common.ret

bb.aj:                                            ; preds = %tailrecurse
  %i.lh = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4660)
  %i.li = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.lj = load i8, ptr %i.li, align 8, !range !51, !alias.scope !4660, !noalias !4663, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4665
  store i8 %i.lj, ptr %i.u, align 1, !noalias !4665
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 1) #47, !noalias !4660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4665
  %i.lk = load ptr, ptr %i.lh, align 8, !alias.scope !4660, !noalias !4663, !nonnull !16, !noundef !16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ll, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #47, !noalias !4660, !inline_history !4668
  %i.lm = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !alias.scope !4660, !noalias !4663, !nonnull !16, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4669)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 64
  %i.lp = load ptr, ptr %i.lo, align 8, !alias.scope !4669, !noalias !4672, !nonnull !16, !noundef !16 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !noalias !4674, !nonnull !16, !noundef !16
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.lt = load i64, ptr %i.ls, align 8, !noalias !4674, !noundef !16 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4675
  store i64 %i.lt, ptr %i.w, align 8, !noalias !4675
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8) #47, !noalias !4680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4675
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.lu, i64 noundef %i.lt, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4680
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lp, i64 56
  %i.lw = load i64, ptr %i.lv, align 8, !noalias !4680, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4681
  store i64 %i.lw, ptr %i.v, align 8, !noalias !4681
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #47, !noalias !4680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4681
  br label %common.ret

bb.ak:                                            ; preds = %tailrecurse
  %i.lx = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %.val2 = load ptr, ptr %i.lx, align 8, !nonnull !16, !noundef !16
  %i.ly = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val3 = load ptr, ptr %i.ly, align 8, !nonnull !16, !align !456, !noundef !16 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.ma = load i64, ptr %i.lz, align 8, !range !457, !invariant.load !16, !noalias !4684
  %i.mb = add nsw i64 %i.ma, -1
  %i.mc = and i64 %i.mb, -16
  %i.md = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = getelementptr inbounds nuw i8, ptr %.val3, i64 112
  %i.mg = load ptr, ptr %i.mf, align 8, !invariant.load !16, !noalias !4684, !nonnull !16
  tail call void %i.mg(ptr noundef nonnull %i.me, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @31) #47, !inline_history !4687
  br label %common.ret

bb.al:                                            ; preds = %tailrecurse
  %i.mh = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4688)
  %i.mi = load i64, ptr %i.mh, align 8, !range !17, !alias.scope !4688, !noalias !4691, !noundef !16
  %i.mj = icmp ne i64 %i.mi, -9223372036854775808 ; 2 uses
  %i.mk = zext i1 %i.mj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4693
  store i64 %i.mk, ptr %i.t, align 8, !noalias !4693
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 8) #47, !noalias !4688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4693
  br i1 %i.mj, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4698)
  %i.ml = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8, !alias.scope !4698, !noalias !4701, !nonnull !16, !noundef !16
  %i.mn = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.mo = load i64, ptr %i.mn, align 8, !alias.scope !4698, !noalias !4701, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4703
  store i64 %i.mo, ptr %i.f, align 8, !noalias !4703
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8) #47, !noalias !4698, !inline_history !4708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4703
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.mm, i64 noundef %i.mo, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4698, !inline_history !4708
end_hunk_1
begin_hunk_2_@_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
    i64 29, label %bb.w
    i64 30, label %bb.x
    i64 31, label %bb.y
    i64 32, label %tailrecurse.backedge
  ]

_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse.backedge, %bb.ac, %bb.a, %bb.ah, %bb.s, %bb.r, %bb.aj, %bb.ai, %bb.af, %bb.ag, %bb.ad, %bb.f, %bb.aa, %bb.z, %bb.ak, %bb.ae, %bb.ab, %bb.x, %bb.w, %bb.u, %bb.t, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c
  %.sroa.0.0 = phi i1 [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.dk, %bb.ab ], [ false, %bb.z ], [ %i.ch, %bb.u ], [ %.mux, %bb.ac ], [ %i.dt, %bb.ae ], [ false, %bb.f ], [ false, %bb.a ], [ false, %bb.aa ], [ %i.ac, %bb.g ], [ %i.af, %bb.h ], [ %i.ai, %bb.i ], [ false, %bb.ah ], [ false, %bb.r ], [ %i.cb, %bb.s ], [ false, %bb.af ], [ %i.dz, %bb.ai ], [ true, %bb.ad ], [ false, %bb.ag ], [ %i.ed, %bb.ak ], [ %i.cs, %bb.x ], [ %i.cp, %bb.w ], [ %i.aw, %bb.j ], [ %i.az, %bb.k ], [ %i.bc, %bb.l ], [ %i.bf, %bb.m ], [ %i.bi, %bb.n ], [ %i.bl, %bb.o ], [ %i.bq, %bb.p ], [ %i.bt, %bb.q ], [ false, %bb.aj ], [ %i.ce, %bb.t ], [ false, %tailrecurse.backedge ]
  ret i1 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs1b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.n) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.q) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr83, i64 32
  %i.t = load ptr, ptr %i.s, align 16, !nonnull !16, !noundef !16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.tr1384, i64 32
  %i.v = load ptr, ptr %i.u, align 16, !nonnull !16, !noundef !16 ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.aa, label %bb.z

bb.f:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.tr83, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.tr1384, i64 16
  %i.z = tail call noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.x, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.y)
  br i1 %i.z, label %bb.ac, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXs1g_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_10BinaryExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXs1u_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ai = tail call fastcc noundef zeroext i1 @_RNvXs1u_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse.backedge:                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.tr13.be.in = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %.tr13.be = load ptr, ptr %.tr13.be.in, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %.tr.be.in = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %.tr.be = load ptr, ptr %.tr.be.in, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.aj = load i64, ptr %.tr.be, align 16, !range !127, !noundef !16 ; 3 uses
  %i.ak = icmp ne i64 %i.aj, 35
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i64 %i.aj, -4
  %i.am = icmp samesign ugt i64 %i.aj, 3
  %i.an = select i1 %i.am, i64 %i.al, i64 31      ; 2 uses
  %i.ao = load i64, ptr %.tr13.be, align 16, !range !127, !noundef !16 ; 3 uses
  %i.ap = icmp ne i64 %i.ao, 35
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nsw i64 %i.ao, -4
  %i.ar = icmp samesign ugt i64 %i.ao, 3
  %i.as = select i1 %i.ar, i64 %i.aq, i64 31
  %i.at = icmp eq i64 %i.an, %i.as
  br i1 %i.at, label %.lr.ph, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXs1B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7BetweenNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.az = tail call fastcc noundef zeroext i1 @_RNvXs1o_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CaseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ay) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXs1V_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bb) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bf = tail call fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bi = tail call fastcc noundef zeroext i1 @_RNvXs1I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bl = tail call fastcc noundef zeroext i1 @_RNvXs2g_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_17AggregateFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bk) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !16, !noundef !16
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !16, !noundef !16
  %i.bq = tail call fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.bn, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.bp) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bt = tail call fastcc noundef zeroext i1 @_RNvXs2W_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6InListNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bs) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7469)
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr83, i64 64
  %i.bv = load i8, ptr %i.bu, align 8, !range !51, !alias.scope !7466, !noalias !7469, !noundef !16
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr1384, i64 64
  %i.bx = load i8, ptr %i.bw, align 8, !range !51, !alias.scope !7469, !noalias !7466, !noundef !16
  %i.by = icmp eq i8 %i.bv, %i.bx
  br i1 %i.by, label %bb.s, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cb = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bz) #47, !inline_history !7471
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ce = tail call fastcc noundef zeroext i1 @_RNvXs33_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_10InSubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cd) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ch = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cg) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr83, i64 8 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !range !165, !noundef !16
  %.not = icmp eq i64 %i.cj, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !range !165, !noundef !16
  %i.cm = icmp eq i64 %i.cl, 3                    ; 2 uses
  br i1 %.not, label %bb.ag, label %bb.af

bb.w:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.cp = tail call fastcc noundef zeroext i1 @_RNvXs3h_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_11GroupingSetNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.co) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.cs = tail call fastcc noundef zeroext i1 @_RNvXs3a_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_11PlaceholderNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cr) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %.lr.ph
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr83, i64 104
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr1384, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.ak, label %bb.aj

bb.z:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.da = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cz)
  br i1 %i.da, label %bb.aa, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.e, %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %.tr83, i64 24
  %i.dc = load i64, ptr %i.db, align 8, !noundef !16 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr1384, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !noundef !16
  %i.df = icmp eq i64 %i.dc, %i.de
  br i1 %i.df, label %bb.ab, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr1384, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !16, !noundef !16
  %i.di = getelementptr inbounds nuw i8, ptr %.tr83, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !16, !noundef !16
  %i.dk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dh, i64 noundef %i.dc)
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr83, i64 80
  %i.dm = load ptr, ptr %i.dl, align 16, !noundef !16 ; 3 uses
  %.not11 = icmp eq ptr %i.dm, null               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr1384, i64 80
  %i.do = load ptr, ptr %i.dn, align 16, !noundef !16 ; 3 uses
  %i.dp = icmp eq ptr %i.do, null                 ; 2 uses
  %brmerge = or i1 %.not11, %i.dp
  %.mux = and i1 %.not11, %i.dp
  br i1 %brmerge, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = icmp eq ptr %i.dm, %i.do
  br i1 %i.dq, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dt = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringB18_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds)
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.v
  br i1 %i.cm, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ah

bb.ag:                                            ; preds = %bb.v
  br i1 %i.cm, label %bb.ai, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.af
  %i.du = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ck) #47
  br i1 %i.du, label %bb.ai, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr83, i64 64
  %i.dw = load ptr, ptr %i.dv, align 16, !nonnull !16, !noundef !16
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr1384, i64 64
  %i.dy = load ptr, ptr %i.dx, align 16, !nonnull !16, !noundef !16
  %i.dz = tail call fastcc noundef zeroext i1 @_RNvXs3o_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_15WildcardOptionsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.dy) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.ec = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eb)
  br i1 %i.ec, label %bb.ak, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.y, %bb.aj
  %i.ed = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.tr83, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.tr1384) #47
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7472, !noundef !16 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !7472, !nonnull !16, !noundef !16
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !7472, !noundef !16 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !7472
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !7475
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7478, !noalias !7475, !noundef !16 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !7478, !noalias !7475, !nonnull !16, !noundef !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !7478, !noalias !7475
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !7478, !noalias !7475
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7485)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !7488, !nonnull !16, !noundef !16 ; 2 uses
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !7488 ; 2 uses
  %i.c = icmp eq ptr %.promoted.i.i, %i.b
  br i1 %i.c, label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans0_0ENtNtNtB9_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.backedge.i.i
  %i.d = phi ptr [ %i.e, %.backedge.i.i ], [ %.promoted.i.i, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 4 uses
  %i.f = load i64, ptr %i.d, align 16, !range !127, !noalias !7488, !noundef !16 ; 3 uses
  %i.g = icmp ne i64 %i.f, 35
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -4
  %i.i = icmp samesign ugt i64 %i.f, 3
  %i.j = select i1 %i.i, i64 %i.h, i64 31
  switch i64 %i.j, label %bb.b [
    i64 0, label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtBV_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans0_0INtB7_5FnMutTRRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8call_mutCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
    i64 22, label %.backedge.i.i
  ]

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtBV_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans0_0INtB7_5FnMutTRRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8call_mutCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !noalias !7488, !nonnull !16, !noundef !16
  %i.m = load i64, ptr %i.l, align 16, !range !127, !noalias !7488, !noundef !16 ; 2 uses
  %i.n = icmp ne i64 %i.m, 35
  tail call void @llvm.assume(i1 %i.n)
  %.not.i.i = icmp eq i64 %i.m, 26
end_hunk_2
