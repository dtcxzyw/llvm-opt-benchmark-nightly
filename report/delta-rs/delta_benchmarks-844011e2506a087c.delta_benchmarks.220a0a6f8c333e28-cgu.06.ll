inline.NumInlined: 4054
inline.NumDeleted: 1735
begin_hunk_0_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks:bb.a
  unreachable

bb.c:                                             ; preds = %tailrecurse
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3555)
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr, i64 88
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !3555, !noalias !3558, !nonnull !17, !noundef !17
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.cb, ptr noalias noundef align 8 dereferenceable(72) %1) #42, !noalias !3555, !inline_history !3560
  %i.cc = load i64, ptr %i.bz, align 8, !range !83, !alias.scope !3555, !noalias !3558, !noundef !17
  %i.cd = icmp ne i64 %i.cc, 3                    ; 2 uses
  %i.ce = zext i1 %i.cd to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !3561
  store i64 %i.ce, ptr %i.bi, align 8, !noalias !3561
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef 8) #42, !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !3561
  br i1 %i.cd, label %bb.d, label %_RINvXs8_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bz, ptr noalias noundef align 8 dereferenceable(72) %1) #42, !inline_history !3560
  br label %_RINvXs8_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvXs8_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.d
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !3555, !noalias !3558, !nonnull !17, !noundef !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !3555, !noalias !3558, !noundef !17
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef %i.ci) #42, !noalias !3555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !3566
  store i8 -1, ptr %i.bj, align 1, !noalias !3566
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef 1) #42, !noalias !3573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !3566
  br label %common.ret

bb.e:                                             ; preds = %tailrecurse
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3574)
  %i.ck = load i64, ptr %i.cj, align 8, !range !83, !alias.scope !3574, !noalias !3577, !noundef !17
  %i.cl = icmp ne i64 %i.ck, 3                    ; 2 uses
  %i.cm = zext i1 %i.cl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !3579
  store i64 %i.cm, ptr %i.bs, align 8, !noalias !3579
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef 8) #42, !noalias !3574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !3579
  br i1 %i.cl, label %bb.f, label %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cj, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42
  br label %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.e, %bb.f
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !3574, !noalias !3577, !nonnull !17, !noundef !17
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !3574, !noalias !3577, !noundef !17
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.cq) #42, !noalias !3574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !3584
  store i8 -1, ptr %i.br, align 1, !noalias !3584
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef 1) #42, !noalias !3591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !3584
  br label %common.ret

bb.g:                                             ; preds = %tailrecurse
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.cs = load ptr, ptr %i.cr, align 16, !nonnull !17, !noundef !17
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ct, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.cu = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.cv = load ptr, ptr %i.cu, align 16, !nonnull !17, !noundef !17
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !3592
  store i64 %i.cx, ptr %i.bq, align 8, !noalias !3592
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef 8) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !3592
  tail call void @_RINvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cv, i64 noundef %i.cx, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.h:                                             ; preds = %tailrecurse
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.cy, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.cz = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.da = load ptr, ptr %i.cz, align 16, !noundef !17 ; 2 uses
  %i.db = icmp ne ptr %i.da, null                 ; 2 uses
  %i.dc = zext i1 %i.db to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !3597
  store i64 %i.dc, ptr %i.bp, align 8, !noalias !3597
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef 8) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !3597
  br i1 %i.db, label %bb.ap, label %common.ret

bb.i:                                             ; preds = %tailrecurse
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3602)
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !3602, !noalias !3605, !nonnull !17, !noundef !17
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.de, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3602, !inline_history !3607
  %i.df = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.dg = load i8, ptr %i.df, align 8, !range !3608, !alias.scope !3602, !noalias !3605, !noundef !17
  %i.dh = zext nneg i8 %i.dg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !3609
  store i64 %i.dh, ptr %i.bh, align 8, !noalias !3609
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef 8) #42, !noalias !3602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !3609
  br label %tailrecurse.backedge.sink.split

tailrecurse.backedge.sink.split:                  ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %bb.n, %bb.i
  %.sink196 = phi i64 [ 16, %bb.i ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 8, %tailrecurse ], [ 24, %bb.n ], [ 8, %tailrecurse ]
  %i.di = getelementptr inbounds nuw i8, ptr %.tr, i64 %.sink196
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !17, !noundef !17
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.sink.split, %bb.q
  %.tr.be = phi ptr [ %i.ex, %bb.q ], [ %i.dj, %tailrecurse.backedge.sink.split ]
  br label %tailrecurse

bb.j:                                             ; preds = %tailrecurse
  %i.dk = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3614)
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr, i64 28
  %i.dm = load i8, ptr %i.dl, align 4, !range !2603, !alias.scope !3614, !noalias !3617, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !3619
  store i8 %i.dm, ptr %i.bd, align 1, !noalias !3619
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef 1) #42, !noalias !3614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !3619
  %i.dn = load ptr, ptr %i.dk, align 8, !alias.scope !3614, !noalias !3617, !nonnull !17, !noundef !17
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dn, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3614, !inline_history !3622
  %i.do = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !3614, !noalias !3617, !nonnull !17, !noundef !17
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dp, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3614, !inline_history !3622
  %i.dq = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.dr = load i32, ptr %i.dq, align 8, !range !2103, !alias.scope !3614, !noalias !3617, !noundef !17 ; 2 uses
  %i.ds = icmp ne i32 %i.dr, 1114112              ; 2 uses
  %i.dt = zext i1 %i.ds to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !3623
  store i64 %i.dt, ptr %i.be, align 8, !noalias !3623
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef 8) #42, !noalias !3614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3623
  br i1 %i.ds, label %bb.k, label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !3628
  store i32 %i.dr, ptr %i.bf, align 4, !noalias !3628
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef 4) #42, !noalias !3614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !3628
  br label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.j, %bb.k
  %i.du = getelementptr inbounds nuw i8, ptr %.tr, i64 29
  %i.dv = load i8, ptr %i.du, align 1, !range !2603, !alias.scope !3614, !noalias !3617, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !3631
  store i8 %i.dv, ptr %i.bg, align 1, !noalias !3631
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef 1) #42, !noalias !3614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !3631
  br label %common.ret

bb.l:                                             ; preds = %tailrecurse
  %i.dw = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3634)
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr, i64 28
  %i.dy = load i8, ptr %i.dx, align 4, !range !2603, !alias.scope !3634, !noalias !3637, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !3639
  store i8 %i.dy, ptr %i.az, align 1, !noalias !3639
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef 1) #42, !noalias !3634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3639
  %i.dz = load ptr, ptr %i.dw, align 8, !alias.scope !3634, !noalias !3637, !nonnull !17, !noundef !17
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dz, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3634, !inline_history !3622
  %i.ea = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !3634, !noalias !3637, !nonnull !17, !noundef !17
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eb, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3634, !inline_history !3622
  %i.ec = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ed = load i32, ptr %i.ec, align 8, !range !2103, !alias.scope !3634, !noalias !3637, !noundef !17 ; 2 uses
  %i.ee = icmp ne i32 %i.ed, 1114112              ; 2 uses
  %i.ef = zext i1 %i.ee to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !3642
  store i64 %i.ef, ptr %i.ba, align 8, !noalias !3642
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef 8) #42, !noalias !3634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !3642
  br i1 %i.ee, label %bb.m, label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit1

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !3647
  store i32 %i.ed, ptr %i.bb, align 4, !noalias !3647
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef 4) #42, !noalias !3634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !3647
  br label %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit1

_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit1: ; preds = %bb.l, %bb.m
  %i.eg = getelementptr inbounds nuw i8, ptr %.tr, i64 29
  %i.eh = load i8, ptr %i.eg, align 1, !range !2603, !alias.scope !3634, !noalias !3637, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !3650
  store i8 %i.eh, ptr %i.bc, align 1, !noalias !3650
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef 1) #42, !noalias !3634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !3650
  br label %common.ret

bb.n:                                             ; preds = %tailrecurse
  %i.ei = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3653)
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !3653, !noalias !3656, !nonnull !17, !noundef !17
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ej, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3653, !inline_history !3658
  %i.ek = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.el = load i8, ptr %i.ek, align 16, !range !2603, !alias.scope !3653, !noalias !3656, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !3659
  store i8 %i.el, ptr %i.ay, align 1, !noalias !3659
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef 1) #42, !noalias !3653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !3659
  %i.em = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.en = load ptr, ptr %i.em, align 16, !alias.scope !3653, !noalias !3656, !nonnull !17, !noundef !17
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.en, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3653, !inline_history !3658
  br label %tailrecurse.backedge.sink.split

bb.o:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3662)
  %i.eo = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ep = load ptr, ptr %i.eo, align 16, !alias.scope !3662, !noalias !3665, !align !72, !noundef !17 ; 2 uses
  %i.eq = icmp ne ptr %i.ep, null                 ; 2 uses
  %i.er = zext i1 %i.eq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !3667
  store i64 %i.er, ptr %i.av, align 8, !noalias !3667
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef 8) #42, !noalias !3662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !3667
  br i1 %i.eq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ep, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3662, !inline_history !3672
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.et = load ptr, ptr %i.es, align 16, !alias.scope !3662, !noalias !3665, !nonnull !17, !noundef !17
  %i.eu = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !3662, !noalias !3665, !noundef !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !3673
  store i64 %i.ev, ptr %i.aw, align 8, !noalias !3673
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef 8) #42, !noalias !3662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !3673
  tail call void @_RINvYTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.et, i64 noundef %i.ev, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !3662, !inline_history !3672
  %i.ew = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !3662, !noalias !3665, !align !72, !noundef !17 ; 2 uses
  %i.ey = icmp ne ptr %i.ex, null                 ; 2 uses
  %i.ez = zext i1 %i.ey to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !3678
  store i64 %i.ez, ptr %i.ax, align 8, !noalias !3678
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef 8) #42, !noalias !3662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !3678
  br i1 %i.ey, label %tailrecurse.backedge, label %common.ret

common.ret:                                       ; preds = %bb.bc, %bb.bb, %bb.aj, %bb.ai, %bb.af, %bb.t, %_RINvXs8_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.g, %bb.h, %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit1, %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit10, %_RINvXs2U_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_8SubqueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvXs2U_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_8SubqueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit15, %_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit2, %bb.ap, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.x, %bb.ak, %bb.al, %bb.am, %_RINvXs3z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, %.lr.ph89, %.lr.ph71, %.lr.ph69, %.lr.ph, %bb.q, %bb.s, %bb.r
  ret void

bb.r:                                             ; preds = %tailrecurse
  %i.fa = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3683)
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !3683, !noalias !3686, !nonnull !17, !noundef !17
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.fc, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3683, !inline_history !3688
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fa, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !inline_history !3688
  br label %common.ret

bb.s:                                             ; preds = %tailrecurse
  %i.fd = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3689)
  %i.fe = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !3689, !noalias !3692, !nonnull !17, !noundef !17
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ff, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3689, !inline_history !3694
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fd, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !inline_history !3694
  br label %common.ret

bb.t:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3695)
  %i.fg = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !3695, !noalias !3698, !nonnull !17, !noundef !17 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3700)
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !3700, !noalias !3703, !nonnull !17, !noundef !17
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !3700, !noalias !3703, !nonnull !17, !align !89, !noundef !17 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !range !222, !invariant.load !17, !noalias !3705
  %i.fo = add nsw i64 %i.fn, -1
  %i.fp = and i64 %i.fo, -16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8, !invariant.load !17, !noalias !3705, !nonnull !17
  tail call void %i.ft(ptr noundef nonnull %i.fr, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @138) #42, !noalias !3706, !inline_history !3707
  %i.fu = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !3695, !noalias !3698, !nonnull !17, !noundef !17 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !3695, !noalias !3698, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !3708
  store i64 %i.fx, ptr %i.au, align 8, !noalias !3708
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef 8) #42, !noalias !3695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3708
  %.idx100 = mul nuw nsw i64 %i.fx, 112
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx100
  %i.fz = icmp eq i64 %i.fx, 0
  br i1 %i.fz, label %common.ret, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.t, %.lr.ph89
  %.sroa.0.0.i88 = phi ptr [ %i.ga, %.lr.ph89 ], [ %i.fv, %bb.t ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i88, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i88, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3695, !inline_history !3713
  %i.gb = icmp eq ptr %i.ga, %i.fy
  br i1 %i.gb, label %common.ret, label %.lr.ph89

bb.u:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3714)
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.gd = load ptr, ptr %i.gc, align 8, !alias.scope !3714, !noalias !3717, !nonnull !17, !noundef !17 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3719)
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !3719, !noalias !3722, !nonnull !17, !noundef !17
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !3719, !noalias !3722, !nonnull !17, !align !89, !noundef !17 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !range !222, !invariant.load !17, !noalias !3724
  %i.gk = add nsw i64 %i.gj, -1
  %i.gl = and i64 %i.gk, -16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %i.gp = load ptr, ptr %i.go, align 8, !invariant.load !17, !noalias !3724, !nonnull !17
  tail call void %i.gp(ptr noundef nonnull %i.gn, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @138) #42, !noalias !3725, !inline_history !3726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3727)
  %i.gq = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !3727, !noalias !3730, !nonnull !17, !noundef !17 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !3727, !noalias !3730, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !3732
  store i64 %i.gt, ptr %i.at, align 8, !noalias !3732
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef 8) #42, !noalias !3727, !inline_history !3737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3732
  %.idx98 = mul nuw nsw i64 %i.gt, 112
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.idx98
  %i.gv = icmp eq i64 %i.gt, 0
  br i1 %i.gv, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.u, %.lr.ph85
  %.sroa.0.0.i.i84 = phi ptr [ %i.gw, %.lr.ph85 ], [ %i.gr, %bb.u ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i84, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i.i84, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3727, !inline_history !3738
  %i.gx = icmp eq ptr %i.gw, %i.gu
  br i1 %i.gx, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %.lr.ph85

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.lr.ph85, %bb.u
  %i.gy = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.gz = load i8, ptr %i.gy, align 8, !range !2603, !alias.scope !3727, !noalias !3730, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !3739
  store i8 %i.gz, ptr %i.as, align 1, !noalias !3739
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef 1) #42, !noalias !3727, !inline_history !3737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3739
  %i.ha = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.hb = load ptr, ptr %i.ha, align 8, !alias.scope !3727, !noalias !3730, !align !72, !noundef !17 ; 2 uses
  %i.hc = icmp ne ptr %i.hb, null                 ; 2 uses
  %i.hd = zext i1 %i.hc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !3742
  store i64 %i.hd, ptr %i.ar, align 8, !noalias !3742
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef 8) #42, !noalias !3727, !inline_history !3737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !3742
  br i1 %i.hc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.hb, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3727, !inline_history !3737
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.he = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !3727, !noalias !3730, !nonnull !17, !noundef !17 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !3727, !noalias !3730, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3747
  store i64 %i.hh, ptr %i.aq, align 8, !noalias !3747
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef 8) #42, !noalias !3727, !inline_history !3737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3747
  %.idx99 = shl nuw nsw i64 %i.hh, 7
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.idx99
  %i.hj = icmp eq i64 %i.hh, 0
  br i1 %i.hj, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.w, %.lr.ph87
  %.sroa.0.0.i1.i86 = phi ptr [ %i.hk, %.lr.ph87 ], [ %i.hf, %bb.w ] ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i86, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3752)
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.0.0.i1.i86, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3727, !inline_history !3755
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i86, i64 112
  %i.hm = load i8, ptr %i.hl, align 16, !range !2603, !alias.scope !3752, !noalias !3756, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3758
  store i8 %i.hm, ptr %i.l, align 1, !noalias !3758
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 1) #42, !noalias !3727, !inline_history !3755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3758
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i86, i64 113
  %i.ho = load i8, ptr %i.hn, align 1, !range !2603, !alias.scope !3752, !noalias !3756, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3761
  store i8 %i.ho, ptr %i.k, align 1, !noalias !3761
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1) #42, !noalias !3727, !inline_history !3755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3761
  %i.hp = icmp eq ptr %i.hk, %i.hi
  br i1 %i.hp, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %.lr.ph87

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.lr.ph87, %bb.w
  %i.hq = getelementptr inbounds nuw i8, ptr %.tr, i64 65
  %i.hr = load i8, ptr %i.hq, align 1, !range !3393, !alias.scope !3727, !noalias !3730, !noundef !17 ; 2 uses
  %i.hs = icmp ne i8 %i.hr, 2                     ; 2 uses
  %i.ht = zext i1 %i.hs to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3764
  store i64 %i.ht, ptr %i.ap, align 8, !noalias !3764
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef 8) #42, !noalias !3727, !inline_history !3737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3764
  br i1 %i.hs, label %bb.x, label %common.ret

bb.x:                                             ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.hu = zext nneg i8 %i.hr to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3769
  store i64 %i.hu, ptr %i.ao, align 8, !noalias !3769
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef 8) #42, !noalias !3727, !inline_history !3737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3769
  br label %common.ret

bb.y:                                             ; preds = %tailrecurse
  %i.hv = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !nonnull !17, !noundef !17 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3776)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 272
  %.val.i = load i64, ptr %i.hx, align 8, !range !446, !alias.scope !3776, !noalias !3779, !noundef !17
  %i.hy = getelementptr i8, ptr %i.hw, i64 280
  %.val1.i = load ptr, ptr %i.hy, align 8, !alias.scope !3776, !noalias !3779 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3781
  store i64 %.val.i, ptr %i.ac, align 8, !noalias !3781
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8) #42, !noalias !3776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3781
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !3776
  %i.hz = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !3788, !nonnull !17, !noundef !17
  %i.ib = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !3788, !nonnull !17, !align !89, !noundef !17 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !range !222, !invariant.load !17, !noalias !3788
  %i.if = add nsw i64 %i.ie, -1
  %i.ig = and i64 %i.if, -16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %i.ik = load ptr, ptr %i.ij, align 8, !invariant.load !17, !noalias !3788, !nonnull !17
  tail call void %i.ik(ptr noundef nonnull %i.ii, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @138) #42, !noalias !3776, !inline_history !3789
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3790)
  %i.il = getelementptr inbounds nuw i8, ptr %i.hw, i64 184
  %i.im = load ptr, ptr %i.il, align 8, !alias.scope !3790, !noalias !3793, !nonnull !17, !noundef !17 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.hw, i64 192
  %i.io = load i64, ptr %i.in, align 16, !alias.scope !3790, !noalias !3793, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !3795
  store i64 %i.io, ptr %i.an, align 8, !noalias !3795
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 8) #42, !noalias !3790, !inline_history !3800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3795
  %.idx95 = mul nuw nsw i64 %i.io, 112
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 %.idx95
  %i.iq = icmp eq i64 %i.io, 0
  br i1 %i.iq, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i5, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.y, %.lr.ph79
  %.sroa.0.0.i.i478 = phi ptr [ %i.ir, %.lr.ph79 ], [ %i.im, %bb.y ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i478, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i.i478, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3790, !inline_history !3801
  %i.is = icmp eq ptr %i.ir, %i.ip
  br i1 %i.is, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i5, label %.lr.ph79

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i5: ; preds = %.lr.ph79, %bb.y
  %i.it = getelementptr inbounds nuw i8, ptr %i.hw, i64 208
  %i.iu = load ptr, ptr %i.it, align 16, !alias.scope !3790, !noalias !3793, !nonnull !17, !noundef !17 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hw, i64 216
  %i.iw = load i64, ptr %i.iv, align 8, !alias.scope !3790, !noalias !3793, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3802
  store i64 %i.iw, ptr %i.am, align 8, !noalias !3802
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef 8) #42, !noalias !3790, !inline_history !3800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3802
  %.idx96 = mul nuw nsw i64 %i.iw, 112
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 %.idx96
  %i.iy = icmp eq i64 %i.iw, 0
  br i1 %i.iy, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit2.i, label %.lr.ph81

.lr.ph81:                                         ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i5, %.lr.ph81
  %.sroa.0.0.i1.i680 = phi ptr [ %i.iz, %.lr.ph81 ], [ %i.iu, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i5 ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i680, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i1.i680, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3790, !inline_history !3801
  %i.ja = icmp eq ptr %i.iz, %i.ix
  br i1 %i.ja, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit2.i, label %.lr.ph81

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit2.i: ; preds = %.lr.ph81, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i5
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hw, i64 232
  %i.jc = load ptr, ptr %i.jb, align 8, !alias.scope !3790, !noalias !3793, !nonnull !17, !noundef !17 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hw, i64 240
  %i.je = load i64, ptr %i.jd, align 16, !alias.scope !3790, !noalias !3793, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !3807
  store i64 %i.je, ptr %i.al, align 8, !noalias !3807
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 8) #42, !noalias !3790, !inline_history !3800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !3807
  %.idx97 = shl nuw nsw i64 %i.je, 7
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.idx97
  %i.jg = icmp eq i64 %i.je, 0
  br i1 %i.jg, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i7, label %.lr.ph83

.lr.ph83:                                         ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit2.i, %.lr.ph83
  %.sroa.0.0.i3.i82 = phi ptr [ %i.jh, %.lr.ph83 ], [ %i.jc, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit2.i ] ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i82, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3812)
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.0.0.i3.i82, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3790, !inline_history !3815
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i82, i64 112
  %i.jj = load i8, ptr %i.ji, align 16, !range !2603, !alias.scope !3812, !noalias !3816, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3818
  store i8 %i.jj, ptr %i.j, align 1, !noalias !3818
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 1) #42, !noalias !3790, !inline_history !3815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3818
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i82, i64 113
  %i.jl = load i8, ptr %i.jk, align 1, !range !2603, !alias.scope !3812, !noalias !3816, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3821
  store i8 %i.jl, ptr %i.i, align 1, !noalias !3821
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1) #42, !noalias !3790, !inline_history !3815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3821
  %i.jm = icmp eq ptr %i.jh, %i.jf
  br i1 %i.jm, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i7, label %.lr.ph83

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i7: ; preds = %.lr.ph83, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3824)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hw, i64 161
  %i.jo = load i8, ptr %i.jn, align 1, !range !3393, !alias.scope !3827, !noalias !3828, !noundef !17
  %i.jp = zext nneg i8 %i.jo to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3830
  store i64 %i.jp, ptr %i.ak, align 8, !noalias !3830
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef 8) #42, !noalias !3827, !inline_history !3800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3835)
  %i.jq = load i128, ptr %i.hw, align 16, !range !746, !alias.scope !3838, !noalias !3839, !noundef !17 ; 2 uses
  %i.jr = trunc nuw nsw i128 %i.jq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !3841
  store i64 %i.jr, ptr %i.aj, align 8, !noalias !3841
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 8) #42, !noalias !3838, !inline_history !3800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3841
  %i.js = icmp eq i128 %i.jq, 1
  br i1 %i.js, label %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i7
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.jt, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !3800
  br label %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.sink.split.i.i.i, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i7
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hw, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3846)
  %i.jv = load i128, ptr %i.ju, align 16, !range !746, !alias.scope !3849, !noalias !3850, !noundef !17 ; 2 uses
  %i.jw = trunc nuw nsw i128 %i.jv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !3852
  store i64 %i.jw, ptr %i.ai, align 8, !noalias !3852
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 8) #42, !noalias !3846, !inline_history !3800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3852
  %i.jx = icmp eq i128 %i.jv, 1
  br i1 %i.jx, label %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %.sink.split.i1.i.i

.sink.split.i1.i.i:                               ; preds = %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hw, i64 96
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.jy, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !inline_history !3800
  br label %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i

_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.sink.split.i1.i.i, %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hw, i64 160
  %i.ka = load i8, ptr %i.jz, align 16, !range !2603, !alias.scope !3827, !noalias !3828, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !3857
  store i8 %i.ka, ptr %i.ah, align 1, !noalias !3857
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 1) #42, !inline_history !3800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3857
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hw, i64 248 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !alias.scope !3790, !noalias !3793, !align !72, !noundef !17
  %i.kd = icmp ne ptr %i.kc, null                 ; 2 uses
  %i.ke = zext i1 %i.kd to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3860
  store i64 %i.ke, ptr %i.ag, align 8, !noalias !3860
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef 8) #42, !inline_history !3800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3860
  br i1 %i.kd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.kf = load ptr, ptr %i.kb, align 8, !alias.scope !3790, !noalias !3793, !nonnull !17, !noundef !17
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.kf, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !inline_history !3800
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RINvXsc_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_11WindowFrameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.hw, i64 257 ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 1, !range !3393, !alias.scope !3790, !noalias !3793, !noundef !17
  %i.ki = icmp ne i8 %i.kh, 2                     ; 2 uses
  %i.kj = zext i1 %i.ki to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3865
  store i64 %i.kj, ptr %i.af, align 8, !noalias !3865
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 8) #42, !inline_history !3800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3865
  br i1 %i.ki, label %bb.ab, label %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

bb.ab:                                            ; preds = %bb.aa
  %.val.i8 = load i8, ptr %i.kg, align 1, !range !2603, !alias.scope !3790, !noalias !3793, !noundef !17
  %i.kk = zext nneg i8 %.val.i8 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3870
  store i64 %i.kk, ptr %i.ae, align 8, !noalias !3870
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 8) #42, !inline_history !3800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3870
  br label %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.aa, %bb.ab
  %i.kl = getelementptr inbounds nuw i8, ptr %i.hw, i64 256
  %i.km = load i8, ptr %i.kl, align 16, !range !2603, !alias.scope !3790, !noalias !3793, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3877
  store i8 %i.km, ptr %i.ad, align 1, !noalias !3877
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 1) #42, !inline_history !3800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3877
  br label %common.ret

bb.ac:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3880)
  %i.kn = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !alias.scope !3880, !noalias !3883, !nonnull !17, !noundef !17
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ko, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3880, !inline_history !3885
  %i.kp = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !alias.scope !3880, !noalias !3883, !nonnull !17, !noundef !17 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ks = load i64, ptr %i.kr, align 8, !alias.scope !3880, !noalias !3883, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3886
  store i64 %i.ks, ptr %i.aa, align 8, !noalias !3886
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #42, !noalias !3880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3886
  %.idx94 = mul nuw nsw i64 %i.ks, 112
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 %.idx94
  %i.ku = icmp eq i64 %i.ks, 0
  br i1 %i.ku, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit10, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.ac, %.lr.ph77
  %.sroa.0.0.i976 = phi ptr [ %i.kv, %.lr.ph77 ], [ %i.kq, %bb.ac ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i976, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i976, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3880, !inline_history !3891
  %i.kw = icmp eq ptr %i.kv, %i.kt
  br i1 %i.kw, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit10, label %.lr.ph77

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit10: ; preds = %.lr.ph77, %bb.ac
  %i.kx = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.ky = load i8, ptr %i.kx, align 8, !range !2603, !alias.scope !3880, !noalias !3883, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3892
  store i8 %i.ky, ptr %i.ab, align 1, !noalias !3892
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 1) #42, !noalias !3880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3892
  br label %common.ret

bb.ad:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3895)
  %i.kz = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.la = load ptr, ptr %i.kz, align 8, !alias.scope !3895, !noalias !3898, !nonnull !17, !noundef !17
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.lb, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !3895, !inline_history !3900
  %i.lc = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !alias.scope !3895, !noalias !3898, !nonnull !17, !noundef !17 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.lf = load i64, ptr %i.le, align 8, !alias.scope !3895, !noalias !3898, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3901
  store i64 %i.lf, ptr %i.y, align 8, !noalias !3901
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #42, !noalias !3895, !inline_history !3900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3901
  %.idx93 = mul nuw nsw i64 %i.lf, 112
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 %.idx93
  %i.lh = icmp eq i64 %i.lf, 0
  br i1 %i.lh, label %_RINvXs2U_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_8SubqueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.ad, %.lr.ph75
  %.sroa.0.0.i.i1174 = phi ptr [ %i.li, %.lr.ph75 ], [ %i.ld, %bb.ad ] ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i1174, i64 112 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks:bb.a
  switch i64 %i.hq, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.hr = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !4814, !noalias !4817, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !4825
  store i64 %i.hs, ptr %i.ao, align 8, !noalias !4825
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef 8) #42, !noalias !4814, !inline_history !4824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !4825
  br label %common.ret

bb.n:                                             ; preds = %bb.k
  %i.ht = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !4814, !noalias !4817, !nonnull !17, !noundef !17 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !4814, !noalias !4817, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !4828
  store i64 %i.hw, ptr %i.an, align 8, !noalias !4828
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 8) #42, !noalias !4814, !inline_history !4824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !4828
  %.idx83 = mul nuw nsw i64 %i.hw, 112
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.idx83
  %i.hy = icmp eq i64 %i.hw, 0
  br i1 %i.hy, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.n, %.lr.ph69
  %.sroa.0.0.i.i68 = phi ptr [ %i.hz, %.lr.ph69 ], [ %i.hu, %bb.n ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i68, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i.i68, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !4814, !inline_history !4833
  %i.ia = icmp eq ptr %i.hz, %i.hx
  br i1 %i.ia, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %.lr.ph69

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.lr.ph69, %bb.n
  %i.ib = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !4814, !noalias !4817, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !4834
  store i64 %i.ic, ptr %i.am, align 8, !noalias !4834
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef 8) #42, !noalias !4814, !inline_history !4824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !4834
  br label %common.ret

bb.o:                                             ; preds = %bb.k
  %i.id = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ie = load ptr, ptr %i.id, align 8, !alias.scope !4814, !noalias !4817, !nonnull !17, !noundef !17 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ig = load i64, ptr %i.if, align 8, !alias.scope !4814, !noalias !4817, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !4837
  store i64 %i.ig, ptr %i.al, align 8, !noalias !4837
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 8) #42, !noalias !4814, !inline_history !4824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !4837
  %.idx82 = mul nuw nsw i64 %i.ig, 112
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.idx82
  %i.ii = icmp eq i64 %i.ig, 0
  br i1 %i.ii, label %common.ret, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.o, %.lr.ph67
  %.sroa.0.0.i1.i66 = phi ptr [ %i.ij, %.lr.ph67 ], [ %i.ie, %bb.o ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i66, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i1.i66, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !4814, !inline_history !4833
  %i.ik = icmp eq ptr %i.ij, %i.ih
  br i1 %i.ik, label %common.ret, label %.lr.ph67

bb.p:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4842)
  %i.il = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !alias.scope !4842, !noalias !4845, !nonnull !17, !noundef !17
  %i.in = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.io = load i64, ptr %i.in, align 8, !alias.scope !4842, !noalias !4845, !noundef !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !4847
  store i64 %i.io, ptr %i.bv, align 8, !noalias !4847
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef 8) #42, !noalias !4842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !4847
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.im, i64 noundef %i.io, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4842
  %i.ip = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !alias.scope !4842, !noalias !4845, !nonnull !17, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4852)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  %i.is = load ptr, ptr %i.ir, align 8, !alias.scope !4852, !noalias !4855, !nonnull !17, !noundef !17 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !noalias !4857, !nonnull !17, !noundef !17
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iw = load i64, ptr %i.iv, align 8, !noalias !4857, !noundef !17 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !4858
  store i64 %i.iw, ptr %i.bu, align 8, !noalias !4858
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef 8) #42, !noalias !4863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !4858
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ix, i64 noundef %i.iw, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4863
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 56
  %i.iz = load i64, ptr %i.iy, align 8, !noalias !4863, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !4864
  store i64 %i.iz, ptr %i.bt, align 8, !noalias !4864
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bt, i64 noundef 8) #42, !noalias !4863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !4864
  br label %common.ret

bb.q:                                             ; preds = %tailrecurse
  %i.ja = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXsh_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ja, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %common.ret

bb.r:                                             ; preds = %tailrecurse
  %i.jb = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %.val = load ptr, ptr %i.jb, align 8            ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val1 = load i8, ptr %i.jc, align 8, !range !2603, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !4867
  store i8 %.val1, ptr %i.bs, align 1, !noalias !4867
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef 1) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !4867
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4872)
  %i.jd = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.je = load ptr, ptr %i.jd, align 8, !alias.scope !4872, !noalias !4875, !nonnull !17, !noundef !17 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !noalias !4877, !nonnull !17, !noundef !17
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.ji = load i64, ptr %i.jh, align 8, !noalias !4877, !noundef !17 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !4878
  store i64 %i.ji, ptr %i.br, align 8, !noalias !4878
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef 8) #42, !noalias !4872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !4878
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.jj, i64 noundef %i.ji, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4872
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 56
  %i.jl = load i64, ptr %i.jk, align 8, !noalias !4872, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !4883
  store i64 %i.jl, ptr %i.bq, align 8, !noalias !4883
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef 8) #42, !noalias !4872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !4883
  br label %common.ret

bb.s:                                             ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4886)
  %i.jm = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.jn = load ptr, ptr %i.jm, align 8, !alias.scope !4886, !noalias !4889, !nonnull !17, !noundef !17
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.jo, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !4886, !inline_history !3941
  %i.jp = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !alias.scope !4886, !noalias !4889, !nonnull !17, !noundef !17 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.js = load i64, ptr %i.jr, align 8, !alias.scope !4886, !noalias !4889, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !4891
  store i64 %i.js, ptr %i.ak, align 8, !noalias !4891
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef 8) #42, !noalias !4886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !4891
  %.idx = mul nuw nsw i64 %i.js, 112
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.idx
  %i.ju = icmp eq i64 %i.js, 0
  br i1 %i.ju, label %common.ret, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %.sroa.0.0.i1465 = phi ptr [ %i.jv, %.lr.ph ], [ %i.jq, %bb.s ] ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1465, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i1465, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !4886, !inline_history !3947
  %i.jw = icmp eq ptr %i.jv, %i.jt
  br i1 %i.jw, label %common.ret, label %.lr.ph

bb.t:                                             ; preds = %tailrecurse
  %i.jx = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4896)
  %i.jy = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.jz = load ptr, ptr %i.jy, align 8, !alias.scope !4896, !noalias !4899, !nonnull !17, !noundef !17
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ka, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !4896, !inline_history !4901
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jx, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !inline_history !4901
  %i.kb = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.kc = load ptr, ptr %i.kb, align 8, !alias.scope !4896, !noalias !4899, !nonnull !17, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4902)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !4902, !noalias !4905, !nonnull !17, !noundef !17 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !4907, !nonnull !17, !noundef !17
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.ki = load i64, ptr %i.kh, align 8, !noalias !4907, !noundef !17 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4908
  store i64 %i.ki, ptr %i.aj, align 8, !noalias !4908
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 8) #42, !noalias !4913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4908
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.kj, i64 noundef %i.ki, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4913
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %i.kl = load i64, ptr %i.kk, align 8, !noalias !4913, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4914
  store i64 %i.kl, ptr %i.ai, align 8, !noalias !4914
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 8) #42, !noalias !4913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4914
  br label %common.ret

bb.u:                                             ; preds = %tailrecurse
  %i.km = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4917)
  %i.kn = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ko = load ptr, ptr %i.kn, align 16, !alias.scope !4917, !noalias !4920, !align !72, !noundef !17 ; 2 uses
  %i.kp = icmp ne ptr %i.ko, null                 ; 2 uses
  %i.kq = zext i1 %i.kp to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4922
  store i64 %i.kq, ptr %i.ag, align 8, !noalias !4922
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef 8) #42, !noalias !4917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4922
  br i1 %i.kp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ko, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !4917, !inline_history !4927
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.kr = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8, !alias.scope !4917, !noalias !4920, !align !72, !noundef !17 ; 2 uses
  %i.kt = icmp ne ptr %i.ks, null                 ; 2 uses
  %i.ku = zext i1 %i.kt to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !4928
  store i64 %i.ku, ptr %i.ah, align 8, !noalias !4928
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 8) #42, !noalias !4917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4928
  br i1 %i.kt, label %bb.x, label %tailrecurse.backedge

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ks, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !4917, !inline_history !4927
  br label %tailrecurse.backedge

bb.y:                                             ; preds = %tailrecurse
  %i.kv = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4933)
  %i.kw = load i64, ptr %i.kv, align 8, !range !4936, !alias.scope !4933, !noalias !4937, !noundef !17 ; 3 uses
  %i.kx = icmp ne i64 %i.kw, -9223372036854775804
  tail call void @llvm.assume(i1 %i.kx)
  %i.ky = xor i64 %i.kw, -9223372036854775808
  %i.kz = icmp slt i64 %i.kw, 0
  %i.la = select i1 %i.kz, i64 %i.ky, i64 4       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4939
  store i64 %i.la, ptr %i.af, align 8, !noalias !4939
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 8) #42, !noalias !4933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4939
  switch i64 %i.la, label %bb.z [
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
  %i.lb = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val.i = load i8, ptr %i.lb, align 8, !range !2603, !alias.scope !4933, !noalias !4937, !noundef !17
  %i.lc = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %.val1.i = load i8, ptr %i.lc, align 1, !alias.scope !4933, !noalias !4937
  tail call fastcc void @_RINvXsx_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_16TransactionStartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(i8 %.val.i, i8 %.val1.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !4933, !inline_history !4944
  br label %common.ret

bb.ab:                                            ; preds = %bb.y
  %i.ld = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val2.i = load i8, ptr %i.ld, align 8, !range !2603, !alias.scope !4933, !noalias !4937, !noundef !17
  %i.le = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %.val3.i = load i8, ptr %i.le, align 1, !alias.scope !4933, !noalias !4937
  tail call fastcc void @_RINvXsE_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_14TransactionEndNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(i8 %.val2.i, i8 %.val3.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !4933, !inline_history !4944
  br label %common.ret

bb.ac:                                            ; preds = %bb.y
  %i.lf = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXsL_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_11SetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lf, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !inline_history !4944
  br label %common.ret

bb.ad:                                            ; preds = %bb.y
  %i.lg = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val4.i = load ptr, ptr %i.lg, align 8, !alias.scope !4933, !noalias !4937, !nonnull !17, !noundef !17
  %i.lh = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.val5.i = load i64, ptr %i.lh, align 8, !alias.scope !4933, !noalias !4937, !noundef !17
  tail call fastcc void @_RINvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_13ResetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr %.val4.i, i64 %.val5.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !4933, !inline_history !4944
  br label %common.ret

bb.ae:                                            ; preds = %bb.y
  tail call fastcc void @_RINvXsZ_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_7PrepareNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.kv, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !inline_history !4944
  br label %common.ret

bb.af:                                            ; preds = %bb.y
  %i.li = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXs16_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_7ExecuteNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.li, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !inline_history !4944
  br label %common.ret

bb.ag:                                            ; preds = %bb.y
  %i.lj = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val6.i = load ptr, ptr %i.lj, align 8, !alias.scope !4933, !noalias !4937, !nonnull !17, !noundef !17
  %i.lk = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.val7.i = load i64, ptr %i.lk, align 8, !alias.scope !4933, !noalias !4937, !noundef !17
  tail call fastcc void @_RINvXs1d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_10DeallocateNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr %.val6.i, i64 %.val7.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !4933, !inline_history !4944
  br label %common.ret

bb.ah:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4945)
  %i.ll = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.lm = load ptr, ptr %i.ll, align 8, !alias.scope !4945, !noalias !4948, !nonnull !17, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4950)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 64
  %i.lo = load ptr, ptr %i.ln, align 8, !alias.scope !4950, !noalias !4953, !nonnull !17, !noundef !17 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !noalias !4955, !nonnull !17, !noundef !17
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.ls = load i64, ptr %i.lr, align 8, !noalias !4955, !noundef !17 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !4956
  store i64 %i.ls, ptr %i.bp, align 8, !noalias !4956
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef 8) #42, !noalias !4961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !4956
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.lt, i64 noundef %i.ls, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4961
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lo, i64 56
  %i.lv = load i64, ptr %i.lu, align 8, !noalias !4961, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !4962
  store i64 %i.lv, ptr %i.bo, align 8, !noalias !4962
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef 8) #42, !noalias !4961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !4962
  %i.lw = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !alias.scope !4945, !noalias !4948, !nonnull !17, !noundef !17
  %i.ly = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.lz = load i64, ptr %i.ly, align 8, !alias.scope !4945, !noalias !4948, !noundef !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !4965
  store i64 %i.lz, ptr %i.bn, align 8, !noalias !4965
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef 8) #42, !noalias !4945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !4965
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.lx, i64 noundef %i.lz, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4945
  br label %common.ret

bb.ai:                                            ; preds = %tailrecurse
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4970)
  %i.ma = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.mb = load i8, ptr %i.ma, align 8, !range !2603, !alias.scope !4970, !noalias !4973, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4975
  store i8 %i.mb, ptr %i.z, align 1, !noalias !4975
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 1) #42, !noalias !4970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4975
  %i.mc = getelementptr inbounds nuw i8, ptr %.tr, i64 50
  %i.md = load i8, ptr %i.mc, align 2, !range !3395, !alias.scope !4970, !noalias !4973, !noundef !17
  %i.me = zext nneg i8 %i.md to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4978
  store i64 %i.me, ptr %i.aa, align 8, !noalias !4978
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #42, !noalias !4970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4978
  %i.mf = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.mg = load ptr, ptr %i.mf, align 8, !alias.scope !4970, !noalias !4973, !nonnull !17, !noundef !17
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.mh, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !4970, !inline_history !4983
  %i.mi = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !alias.scope !4970, !noalias !4973, !nonnull !17, !noundef !17
  %i.mk = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ml = load i64, ptr %i.mk, align 8, !alias.scope !4970, !noalias !4973, !noundef !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4984
  store i64 %i.ml, ptr %i.ab, align 8, !noalias !4984
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8) #42, !noalias !4970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4984
  tail call void @_RINvYNtNtCsjhHCjzi9uUI_17datafusion_common7display15StringifiedPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.mj, i64 noundef %i.ml, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !4970, !inline_history !4983
  %i.mm = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.mn = load ptr, ptr %i.mm, align 8, !alias.scope !4970, !noalias !4973, !nonnull !17, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4989)
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 64
  %i.mp = load ptr, ptr %i.mo, align 8, !alias.scope !4989, !noalias !4992, !nonnull !17, !noundef !17 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !noalias !4994, !nonnull !17, !noundef !17
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mt = load i64, ptr %i.ms, align 8, !noalias !4994, !noundef !17 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4995
  store i64 %i.mt, ptr %i.ad, align 8, !noalias !4995
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 8) #42, !noalias !5000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4995
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.mu, i64 noundef %i.mt, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !5000
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mp, i64 56
  %i.mw = load i64, ptr %i.mv, align 8, !noalias !5000, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5001
  store i64 %i.mw, ptr %i.ac, align 8, !noalias !5001
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8) #42, !noalias !5000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5001
  %i.mx = getelementptr inbounds nuw i8, ptr %.tr, i64 49
  %i.my = load i8, ptr %i.mx, align 1, !range !2603, !alias.scope !4970, !noalias !4973, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !5004
  store i8 %i.my, ptr %i.ae, align 1, !noalias !5004
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 1) #42, !noalias !4970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5004
  br label %common.ret

bb.aj:                                            ; preds = %tailrecurse
  %i.mz = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5007)
  %i.na = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.nb = load i8, ptr %i.na, align 8, !range !2603, !alias.scope !5007, !noalias !5010, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5012
  store i8 %i.nb, ptr %i.w, align 1, !noalias !5012
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 1) #42, !noalias !5007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5012
  %i.nc = load ptr, ptr %i.mz, align 8, !alias.scope !5007, !noalias !5010, !nonnull !17, !noundef !17
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.nd, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) #42, !noalias !5007, !inline_history !5015
  %i.ne = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8, !alias.scope !5007, !noalias !5010, !nonnull !17, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5016)
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 64
  %i.nh = load ptr, ptr %i.ng, align 8, !alias.scope !5016, !noalias !5019, !nonnull !17, !noundef !17 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !noalias !5021, !nonnull !17, !noundef !17
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nl = load i64, ptr %i.nk, align 8, !noalias !5021, !noundef !17 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5022
  store i64 %i.nl, ptr %i.y, align 8, !noalias !5022
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #42, !noalias !5027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5022
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.nm, i64 noundef %i.nl, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !5027
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nh, i64 56
  %i.no = load i64, ptr %i.nn, align 8, !noalias !5027, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !5028
  store i64 %i.no, ptr %i.x, align 8, !noalias !5028
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 8) #42, !noalias !5027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5028
  br label %common.ret

bb.ak:                                            ; preds = %tailrecurse
  %i.np = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %.val2 = load ptr, ptr %i.np, align 8, !nonnull !17, !noundef !17
  %i.nq = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val3 = load ptr, ptr %i.nq, align 8, !nonnull !17, !align !89, !noundef !17 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.ns = load i64, ptr %i.nr, align 8, !range !222, !invariant.load !17, !noalias !5031
  %i.nt = add nsw i64 %i.ns, -1
  %i.nu = and i64 %i.nt, -16
  %i.nv = getelementptr inbounds nuw i8, ptr %.val2, i64 %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = getelementptr inbounds nuw i8, ptr %.val3, i64 112
  %i.ny = load ptr, ptr %i.nx, align 8, !invariant.load !17, !noalias !5031, !nonnull !17
  tail call void %i.ny(ptr noundef nonnull %i.nw, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @138) #42, !inline_history !5034
  br label %common.ret

bb.al:                                            ; preds = %tailrecurse
  %i.nz = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5035)
  %i.oa = load i64, ptr %i.nz, align 8, !range !67, !alias.scope !5035, !noalias !5038, !noundef !17
  %i.ob = icmp ne i64 %i.oa, -9223372036854775808 ; 2 uses
  %i.oc = zext i1 %i.ob to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5040
  store i64 %i.oc, ptr %i.v, align 8, !noalias !5040
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8) #42, !noalias !5035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5040
  br i1 %i.ob, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5045)
  %i.od = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.oe = load ptr, ptr %i.od, align 8, !alias.scope !5045, !noalias !5048, !nonnull !17, !noundef !17 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.og = load i64, ptr %i.of, align 8, !alias.scope !5045, !noalias !5048, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5050
  store i64 %i.og, ptr %i.h, align 8, !noalias !5050
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8) #42, !noalias !5045, !inline_history !5055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5050
  %.idx.i = mul nuw nsw i64 %i.og, 112
end_hunk_1
begin_hunk_2_@_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, label %_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !6558, !noalias !6557, !nonnull !17, !noundef !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !6557, !noalias !6558, !nonnull !17, !noundef !17
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.q, ptr nonnull %i.o, i64 %i.j), !noalias !6559
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.r, label %bb.g, label %_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.g:                                             ; preds = %_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6563)
  %i.u = load i64, ptr %i.s, align 8, !range !83, !alias.scope !6565, !noalias !6566, !noundef !17
  %.not.i1.i.i = icmp eq i64 %i.u, 3
  %i.v = load i64, ptr %i.t, align 8, !range !83, !alias.scope !6566, !noalias !6565, !noundef !17
  %i.w = icmp eq i64 %i.v, 3                      ; 2 uses
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.w, label %_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %bb.j

bb.i:                                             ; preds = %bb.g
  br i1 %i.w, label %bb.k, label %_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.x = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t) #42
  br i1 %i.x, label %bb.k, label %_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6565, !noalias !6566, !noundef !17 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !6566, !noalias !6565, !noundef !17
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4.i.i, label %_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4.i.i: ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !6566, !noalias !6565, !nonnull !17, !noundef !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !6565, !noalias !6566, !nonnull !17, !noundef !17
  %bcmp.i3.i.i = tail call i32 @bcmp(ptr nonnull %i.ag, ptr nonnull %i.ae, i64 %i.z), !noalias !6567
  %i.ah = icmp eq i32 %bcmp.i3.i.i, 0
  br i1 %i.ah, label %_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !6568, !noalias !6569, !noundef !17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !6569, !noalias !6568, !noundef !17
  %.not = icmp eq i64 %i.aj, %i.al
  br i1 %.not, label %bb.b, label %_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %bb.b, %_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit, %_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4.i.i, %_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.e, %bb.d, %bb.f, %bb.c, %bb.i, %bb.k, %bb.h, %bb.j, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.e ], [ false, %_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit4.i.i ], [ false, %_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nounwind nonlazybind memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #12 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.01.06 ; 5 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %.sroa.01.06 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6578)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !6580, !noalias !6581, !noundef !17 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !6581, !noalias !6580, !noundef !17
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !6581, !noalias !6580, !nonnull !17, !noundef !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !6580, !noalias !6581, !nonnull !17, !noundef !17
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.k, i64 %i.f), !noalias !6582
  %i.n = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.n, label %bb.d, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.p = load i8, ptr %i.o, align 8, !range !3395, !alias.scope !6580, !noalias !6581, !noundef !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.r = load i8, ptr %i.q, align 8, !range !3395, !alias.scope !6581, !noalias !6580, !noundef !17
  %i.s = icmp eq i8 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !6580, !noalias !6581, !noundef !17 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !6581, !noalias !6580, !noundef !17
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !6581, !noalias !6580, !nonnull !17, !noundef !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !6580, !noalias !6581, !nonnull !17, !noundef !17
  %bcmp4.i.i = tail call i32 @bcmp(ptr nonnull %i.ab, ptr nonnull %i.z, i64 %i.u), !noalias !6582
  %.not = icmp eq i32 %bcmp4.i.i, 0
  br i1 %.not, label %bb.b, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %bb.b, %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit, %bb.c, %.lr.ph, %bb.d, %bb.e, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.e ], [ false, %bb.d ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBD_EINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [224 x i8], ptr %0, i64 %.sroa.01.06 ; 2 uses
  %i.d = getelementptr inbounds nuw [224 x i8], ptr %1, i64 %.sroa.01.06 ; 2 uses
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(224) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(224) %i.d) #42, !inline_history !6583
  br i1 %i.e, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.g) #42, !inline_history !6583
  br i1 %i.h, label %bb.b, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %bb.b, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBx_ENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.01.06 ; 4 uses
  %i.d = getelementptr inbounds nuw [144 x i8], ptr %1, i64 %.sroa.01.06 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6597)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.f = load i8, ptr %i.e, align 16, !range !2603, !alias.scope !6599, !noalias !6600, !noundef !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.h = load i8, ptr %i.g, align 16, !range !2603, !alias.scope !6600, !noalias !6599, !noundef !17
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 113
  %i.k = load i8, ptr %i.j, align 1, !range !2603, !alias.scope !6599, !noalias !6600, !noundef !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 113
  %i.m = load i8, ptr %i.l, align 1, !range !2603, !alias.scope !6600, !noalias !6599, !noundef !17
  %i.n = icmp eq i8 %i.k, %i.m
  br i1 %i.n, label %_RNvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RNvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.c
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.d) #42, !inline_history !6601
  br i1 %i.o, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.val.i = load i8, ptr %i.p, align 16, !range !2603, !alias.scope !6584, !noalias !6587, !noundef !17
  %.val1.i = load i8, ptr %i.q, align 16, !range !2603, !alias.scope !6587, !noalias !6584, !noundef !17
  %.not = icmp eq i8 %.val.i, %.val1.i
  br i1 %.not, label %bb.b, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %bb.b, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit, %_RNvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.c, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %_RNvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ false, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2d_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9AlterTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.i.i = alloca [56 x i8], align 8        ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.01.i.i.i = alloca [56 x i8], align 8     ; 5 uses
  %.sroa.0.i.i.i = alloca [56 x i8], align 8      ; 5 uses
  %.sroa.4.i.i = alloca [56 x i8], align 8        ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.0.i = alloca [56 x i8], align 8          ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !6602)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.f = load i64, ptr %1, align 8, !range !549, !alias.scope !6602, !noalias !6605, !noundef !17 ; 5 uses
  %i.g = icmp ne i64 %i.f, 4
  call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -3
  %i.i = icmp samesign ugt i64 %i.f, 2
  %i.j = select i1 %i.i, i64 %i.h, i64 1
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i32, ptr %i.l, align 8, !range !2103, !alias.scope !6602, !noalias !6605, !noundef !17
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !6605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i, i64 56, i1 false)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !6607)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.p = load i8, ptr %i.o, align 8, !range !2603, !alias.scope !6610, !noalias !6611, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6613
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %.noexc1 unwind label %bb.m

.noexc1:                                          ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.s = load i32, ptr %i.r, align 8, !range !2103, !alias.scope !6610, !noalias !6611, !noundef !17 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !6611
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %i.s, ptr %i.v, align 8, !noalias !6613
  %.not.i.i = icmp eq i64 %i.f, 2
  br i1 %.not.i.i, label %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc1
  call void @llvm.experimental.noalias.scope.decl(metadata !6614)
  %i.w = trunc nuw i64 %i.f to i1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.i), !noalias !6617
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.01.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %.noexc.i.i unwind label %bb.h, !noalias !6611

.noexc.i.i:                                       ; preds = %bb.f
  %i.aa = load i32, ptr %i.y, align 8, !range !2103, !alias.scope !6619, !noalias !6620, !noundef !17
  %.sroa.01.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.24..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !6620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.01.i.i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i), !noalias !6617
  br label %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i), !noalias !6617
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %.noexc4.i.i unwind label %bb.h, !noalias !6611

.noexc4.i.i:                                      ; preds = %bb.g
  %i.ab = load i32, ptr %i.y, align 8, !range !2103, !alias.scope !6619, !noalias !6620, !noundef !17
  %.sroa.0.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !6620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i), !noalias !6617
  br label %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(64) %i.c) #38
          to label %.body unwind label %bb.i, !noalias !6611

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !6611
  unreachable

_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %.noexc4.i.i, %.noexc.i.i, %.noexc1
  %.sroa.5.sroa.4.0.i.i = phi i32 [ undef, %.noexc1 ], [ %i.aa, %.noexc.i.i ], [ %i.ab, %.noexc4.i.i ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.noexc1 ], [ 1, %.noexc.i.i ], [ 0, %.noexc4.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %.sroa.6.i.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %.sroa.6.i.sroa.5.4.copyload = load i32, ptr %.sroa.6.i.sroa.5.4..sroa_idx, align 4, !noalias !6621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6613
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6625
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ae)
          to label %.noexc2 unwind label %bb.m

.noexc2:                                          ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !range !2103, !alias.scope !6627, !noalias !6628, !noundef !17 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !6628
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.ag, ptr %i.aj, align 8, !noalias !6625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6625
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
          to label %_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.k, !noalias !6628

bb.k:                                             ; preds = %.noexc2
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(64) %i.b) #38
          to label %.body unwind label %bb.l, !noalias !6628

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35, !noalias !6628
  unreachable

_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %.noexc2
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ao = load i32, ptr %i.an, align 8, !range !2103, !alias.scope !6627, !noalias !6628, !noundef !17
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.0.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ap, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %.sroa.06.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aq = load i32, ptr %.sroa.06.i.sroa.5.0..sroa_idx, align 4, !noalias !6629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6625
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.d, %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.k, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.ac, %bb.h ], [ %i.al, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.d) #38
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %.noexc
  %.sroa.11.sroa.0.0 = phi i32 [ undef, %.noexc ], [ undef, %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.aq, %_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.133.0 = phi i8 [ undef, %.noexc ], [ %i.p, %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.13.0 = phi i32 [ undef, %.noexc ], [ %.sroa.6.i.sroa.5.4.copyload, %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.12.0 = phi i32 [ undef, %.noexc ], [ %i.s, %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ao, %_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.9.0 = phi i32 [ %i.m, %.noexc ], [ %.sroa.5.sroa.4.0.i.i, %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ag, %_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.0.0 = phi i64 [ 3, %.noexc ], [ %.sroa.0.0.i.i, %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 5, %_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i.i, i64 56, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
end_hunk_2
begin_hunk_3_@_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
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
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs1b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.n) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.q) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr83, i64 32
  %i.t = load ptr, ptr %i.s, align 16, !nonnull !17, !noundef !17 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.tr1384, i64 32
  %i.v = load ptr, ptr %i.u, align 16, !nonnull !17, !noundef !17 ; 2 uses
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
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXs1g_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_10BinaryExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXs1u_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ai = tail call fastcc noundef zeroext i1 @_RNvXs1u_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse.backedge:                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.tr13.be.in = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %.tr13.be = load ptr, ptr %.tr13.be.in, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %.tr.be.in = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %.tr.be = load ptr, ptr %.tr.be.in, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.aj = load i64, ptr %.tr.be, align 16, !range !804, !noundef !17 ; 3 uses
  %i.ak = icmp ne i64 %i.aj, 35
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i64 %i.aj, -4
  %i.am = icmp samesign ugt i64 %i.aj, 3
  %i.an = select i1 %i.am, i64 %i.al, i64 31      ; 2 uses
  %i.ao = load i64, ptr %.tr13.be, align 16, !range !804, !noundef !17 ; 3 uses
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
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXs1B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7BetweenNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.az = tail call fastcc noundef zeroext i1 @_RNvXs1o_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CaseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ay) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXs1V_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bb) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bf = tail call fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bi = tail call fastcc noundef zeroext i1 @_RNvXs1I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bl = tail call fastcc noundef zeroext i1 @_RNvXs2g_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_17AggregateFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bk) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !17, !noundef !17
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !17, !noundef !17
  %i.bq = tail call fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.bn, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.bp) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bt = tail call fastcc noundef zeroext i1 @_RNvXs2W_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6InListNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bs) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7925)
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr83, i64 64
  %i.bv = load i8, ptr %i.bu, align 8, !range !2603, !alias.scope !7922, !noalias !7925, !noundef !17
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr1384, i64 64
  %i.bx = load i8, ptr %i.bw, align 8, !range !2603, !alias.scope !7925, !noalias !7922, !noundef !17
  %i.by = icmp eq i8 %i.bv, %i.bx
  br i1 %i.by, label %bb.s, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cb = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bz) #42, !inline_history !7927
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ce = tail call fastcc noundef zeroext i1 @_RNvXs33_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_10InSubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cd) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ch = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cg) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr83, i64 8 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !range !83, !noundef !17
  %.not = icmp eq i64 %i.cj, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !range !83, !noundef !17
  %i.cm = icmp eq i64 %i.cl, 3                    ; 2 uses
  br i1 %.not, label %bb.ag, label %bb.af

bb.w:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.cp = tail call fastcc noundef zeroext i1 @_RNvXs3h_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_11GroupingSetNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.co) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.cs = tail call fastcc noundef zeroext i1 @_RNvXs3a_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_11PlaceholderNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cr) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %.lr.ph
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr83, i64 104
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr1384, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.ak, label %bb.aj

bb.z:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.da = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cz)
  br i1 %i.da, label %bb.aa, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.e, %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %.tr83, i64 24
  %i.dc = load i64, ptr %i.db, align 8, !noundef !17 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr1384, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !noundef !17
  %i.df = icmp eq i64 %i.dc, %i.de
  br i1 %i.df, label %bb.ab, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr1384, i64 16
  %i.dh = load ptr, ptr %i.dg, align 16, !nonnull !17, !noundef !17
  %i.di = getelementptr inbounds nuw i8, ptr %.tr83, i64 16
  %i.dj = load ptr, ptr %i.di, align 16, !nonnull !17, !noundef !17
  %i.dk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dh, i64 noundef %i.dc)
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr83, i64 80
  %i.dm = load ptr, ptr %i.dl, align 16, !noundef !17 ; 3 uses
  %.not11 = icmp eq ptr %i.dm, null               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr1384, i64 80
  %i.do = load ptr, ptr %i.dn, align 16, !noundef !17 ; 3 uses
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
  %i.dt = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringB18_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds)
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.v
  br i1 %i.cm, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ah

bb.ag:                                            ; preds = %bb.v
  br i1 %i.cm, label %bb.ai, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.af
  %i.du = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ck) #42
  br i1 %i.du, label %bb.ai, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr83, i64 64
  %i.dw = load ptr, ptr %i.dv, align 16, !nonnull !17, !noundef !17
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr1384, i64 64
  %i.dy = load ptr, ptr %i.dx, align 16, !nonnull !17, !noundef !17
  %i.dz = tail call fastcc noundef zeroext i1 @_RNvXs3o_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_15WildcardOptionsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.dy) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.ec = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eb)
  br i1 %i.ec, label %bb.ak, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.y, %bb.aj
  %i.ed = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.tr83, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.tr1384) #42
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7928, !noundef !17 ; 2 uses
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
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !7928, !nonnull !17, !noundef !17
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !7928, !noundef !17 ; 2 uses
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
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !7928
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !7931
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7934, !noalias !7931, !noundef !17 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !7934, !noalias !7931, !nonnull !17, !noundef !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !7934, !noalias !7931
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !7934, !noalias !7931
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsat_NtCs4lawaffTVVK_9sqlparser3astNtB6_19RaiseStatementValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(336) initializes((0, 336)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !446, !noundef !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.b) #42
  store i64 %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsb7_NtCs4lawaffTVVK_9sqlparser3astNtB6_18CreateTableOptionsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !151, !noundef !17 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  store i64 %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsbL_NtCs4lawaffTVVK_9sqlparser3astNtB6_3SetNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(336) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
end_hunk_3
