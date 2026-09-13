Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2t_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2v_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1A_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2v_:bb.a
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2B_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2D_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1H_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2D_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16810), !noalias !16809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16811), !noalias !16809
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTjmINtNtNtB8_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2A_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2C_6format6pbfile14ColumnMetadataEINtNtB8_6result6ResultINtNtB1G_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2C_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.am = getelementptr [32 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !16812, !noalias !16813
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !16814, !noalias !16815
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !16812, !noalias !16813
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !16814, !noalias !16815
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !16816, !noalias !16813
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !16817, !noalias !16815
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !16816, !noalias !16813
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !16817, !noalias !16815
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2B_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2D_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1H_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2D_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE7reverseCsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE7reverseCsaSXGKSfiU2E_10lance_file.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !62
  %.not29 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !62 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.161 to i1
  %i.br = or i64 %i.bj, %.sroa.023.161
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2D_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2F_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1J_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2F_(ptr noalias noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 288230376151711744) %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16796
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16819)
  %i.ca = icmp eq i64 %i.bk, 0
  %i.cb = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2w_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1B_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2w_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.cc = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cc, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2w_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1B_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2w_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cd, ptr %i.bo
  %i.ce = shl nuw nsw i64 %.sroa.0.0.i.i35, 5     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ce, i1 false), !alias.scope !16820
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cg = phi ptr [ %i.cs, %.preheader.i ], [ %i.cf, %.critedge.i ] ; 2 uses
  %i.ch = phi ptr [ %i.cq, %.preheader.i ], [ %i.cd, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -32 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -32 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cg, i64 -16
  %.val.i.i = load i64, ptr %i.cl, align 8, !alias.scope !16819, !noalias !16821, !noundef !62
  %i.cm = getelementptr i8, ptr %i.ch, i64 -16
  %.val10.i.i = load i64, ptr %i.cm, align 8, !alias.scope !16818, !noalias !16822, !noundef !62
  %i.cn = icmp ult i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cn, ptr %i.ci, ptr %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !16820, !noalias !16823
  %i.co = xor i1 %i.cn, true
  %i.cp = zext i1 %i.co to i64
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.cp ; 3 uses
  %i.cr = zext i1 %i.cn to i64
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.cr ; 3 uses
  %i.ct = icmp eq ptr %i.cq, %i.bo
  %i.cu = icmp eq ptr %i.cs, %2
  %or.cond.i.i = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTjmINtNtNtBb_3ops5range5RangeyEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2V_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2X_6format6pbfile14ColumnMetadataEINtNtBb_6result6ResultINtNtB21_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2X_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cv = phi ptr [ %i.df, %.lr.ph.i.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %i.cd, %.critedge.i ] ; 3 uses
  %i.cw = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.cx = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val.i.i = load i64, ptr %i.cx, align 8, !alias.scope !16818, !noalias !16824, !noundef !62
  %i.cy = getelementptr i8, ptr %i.cw, i64 16
  %.val.i19.i = load i64, ptr %i.cy, align 8, !alias.scope !16819, !noalias !16825, !noundef !62
  %i.cz = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.da = xor i1 %i.cz, true
  %spec.select.i.i = select i1 %i.cz, ptr %.sroa.0.02.i.i, ptr %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i.i, i64 32, i1 false), !alias.scope !16820, !noalias !16826
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cz to i64
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  %i.dg = icmp ne ptr %i.dc, %i.cf
  %i.dh = icmp ne ptr %i.de, %i.m
  %or.cond.i20.i = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTjmINtNtNtBb_3ops5range5RangeyEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2V_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2X_6format6pbfile14ColumnMetadataEINtNtBb_6result6ResultINtNtB21_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2X_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTjmINtNtNtBb_3ops5range5RangeyEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2V_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2X_6format6pbfile14ColumnMetadataEINtNtBb_6result6ResultINtNtB21_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2X_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.df, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cs, %.preheader.i ], [ %i.cf, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dc, %.lr.ph.i.i ] ; 2 uses
  %i.di = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dk, i1 false), !alias.scope !16820, !noalias !16827
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2w_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1B_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2w_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2w_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1B_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2w_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTjmINtNtNtBb_3ops5range5RangeyEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2V_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2X_6format6pbfile14ColumnMetadataEINtNtBb_6result6ResultINtNtB21_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2X_.exit.i
  %i.dl = shl nuw nsw i64 %i.bm, 1
  %i.dm = or disjoint i64 %i.dl, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit

bb.z:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bk
  %i.do = or i64 %i.bl, 1
  %i.dp = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.do, i1 true)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 1
  %i.ds = xor i32 %i.dr, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2D_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2F_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1J_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2F_(ptr noalias noundef nonnull align 8 %i.dn, i64 noundef range(i64 0, 288230376151711744) %i.bl, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16796
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2E_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2G_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1K_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2G_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2w_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1B_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2w_.exit
  %.sroa.0.0.i = phi i64 [ %i.dm, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2w_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1B_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2w_.exit ], [ %i.bu, %bb.u ] ; 2 uses
  %i.dt = icmp ugt i64 %i.bd, 1
  br i1 %i.dt, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.du = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dv = lshr i64 %.sroa.018.0, 1
  %i.dw = add nuw i64 %i.dv, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dx = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dx, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dy = or i64 %1, 1
  %i.dz = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = xor i32 %i.eb, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2D_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2F_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1J_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2F_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16796
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB3p_11collections5btree3mapINtB4b_8BTreeMaplBY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB5a_8adapters3map3MapINtNtB66_6filter6FilterINtNtNtB5a_7sources7from_fn6FromFnNCNvB1T_12visit_fields0ENCNvMB1T_NtB1T_19StatisticsCollector7try_new0ENCB7O_s_0EE0E0EB21_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 25620477880152156) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph64, label %._crit_edge

.lr.ph64:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [360 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [360 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 360
  %.val10.i = load i32, ptr %i.q, align 8, !alias.scope !16857, !noalias !16858, !noundef !62 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 8, !alias.scope !16857, !noalias !16858, !noundef !62
  %i.r = icmp slt i32 %.val10.i, %.val11.i        ; 2 uses
  %.not71 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader49

.preheader49:                                     ; preds = %bb.k
  br i1 %.not71, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not71, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96, label %.lr.ph58

.lr.ph:                                           ; preds = %.preheader49, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader49 ]
  %.sroa.01.0.i.i54 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader49 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [360 x i8], ptr %i.o, i64 %.sroa.01.0.i.i54
  %.val8.i = load i32, ptr %i.s, align 8, !alias.scope !16857, !noalias !16858, !noundef !62 ; 2 uses
  %i.t = icmp slt i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i54, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i, label %.lr.ph

.lr.ph58:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i57 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [360 x i8], ptr %i.o, i64 %.sroa.01.1.i.i57
  %.val.i = load i32, ptr %i.v, align 8, !alias.scope !16857, !noalias !16858, !noundef !62 ; 2 uses
  %i.w = icmp slt i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i

bb.m:                                             ; preds = %.lr.ph58
  %i.x = add nuw i64 %.sroa.01.1.i.i57, 1         ; 2 uses
  %exitcond78.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond78.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i, label %.lr.ph58

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph58
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i57, %.lr.ph58 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i54, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 25620477880152156) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i39, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 25620477880152156) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3y_11collections5btree3mapINtB4l_8BTreeMaplB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5l_8adapters3map3MapINtNtB6i_6filter6FilterINtNtNtB5l_7sources7from_fn6FromFnNCNvB22_12visit_fields0ENCNvMB22_NtB22_19StatisticsCollector7try_new0ENCB80_s_0EE0E0EB2a_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(360) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16832
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4447 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4447, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16859), !noalias !16858
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16860), !noalias !16858
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [360 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ah = xor i64 %.sroa.0.016.i.i, -1
  %i.ai = getelementptr inbounds nuw [360 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.aj = getelementptr [360 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i37
  %.sroa.0.04.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i37 ], [ %i.aq, %.preheader.i.i.i.i.i ] ; 5 uses
  %i.ak = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.0.04.i.i.i.i.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.0.04.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16861), !noalias !16858
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16862), !noalias !16858
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !16863, !noalias !16864
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !16865, !noalias !16866
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.al, align 8, !alias.scope !16863, !noalias !16864
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.am, align 8, !alias.scope !16865, !noalias !16866
  %i.an = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16867), !noalias !16858
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16868), !noalias !16858
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ao, align 8, !alias.scope !16869, !noalias !16870
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ap, align 8, !alias.scope !16871, !noalias !16872
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.ao, align 8, !alias.scope !16869, !noalias !16870
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.ap, align 8, !alias.scope !16871, !noalias !16872
  %i.aq = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.an ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.an ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16873), !noalias !16858
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16874), !noalias !16858
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.2 = load i64, ptr %i.ar, align 8, !alias.scope !16875, !noalias !16876
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.2 = load i64, ptr %i.as, align 8, !alias.scope !16877, !noalias !16878
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.2, ptr %i.ar, align 8, !alias.scope !16875, !noalias !16876
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.2, ptr %i.as, align 8, !alias.scope !16877, !noalias !16878
  %exitcond.not.i.i.i.i.i.i.2 = icmp eq i64 %i.aq, 45
  br i1 %exitcond.not.i.i.i.i.i.i.2, label %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i, label %.preheader.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i: ; preds = %.preheader.i.i.i.i.i
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit, label %.lr.ph.i.i37

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ad, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph64, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit
  %.sroa.02.163 = phi i64 [ %.sroa.02.0, %.lr.ph64 ], [ %i.bd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit ] ; 2 uses
  %.sroa.023.162 = phi i64 [ %.sroa.023.0, %.lr.ph64 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.163, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !62
  %.not29 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.162, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.163, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !62 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.162, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [360 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.162 to i1
  %i.br = or i64 %i.bj, %.sroa.023.162
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3y_11collections5btree3mapINtB4l_8BTreeMaplB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5l_8adapters3map3MapINtNtB6i_6filter6FilterINtNtNtB5l_7sources7from_fn6FromFnNCNvB22_12visit_fields0ENCNvMB22_NtB22_19StatisticsCollector7try_new0ENCB80_s_0EE0E0EB2a_(ptr noalias noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 25620477880152156) %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i32 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(360) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16845
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16880)
  %i.ca = icmp eq i64 %i.bk, 0
  %i.cb = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.cc = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cc, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw [360 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cd, ptr %i.bo
  %i.ce = mul nuw nsw i64 %.sroa.0.0.i.i35, 360   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ce, i1 false), !alias.scope !16881
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cg = phi ptr [ %i.cq, %.preheader.i ], [ %i.cf, %.critedge.i ]
  %i.ch = phi ptr [ %i.co, %.preheader.i ], [ %i.cd, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -360 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -360 ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -360 ; 2 uses
  %.val.i.i = load i32, ptr %i.cj, align 4, !alias.scope !16880, !noalias !16882, !noundef !62
  %.val10.i.i = load i32, ptr %i.ci, align 4, !alias.scope !16879, !noalias !16883, !noundef !62
  %i.cl = icmp slt i32 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cl, ptr %i.ci, ptr %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ck, ptr noundef nonnull align 8 dereferenceable(360) %..i.i, i64 360, i1 false), !alias.scope !16881, !noalias !16884
  %i.cm = xor i1 %i.cl, true
  %i.cn = zext i1 %i.cm to i64
  %i.co = getelementptr inbounds nuw [360 x i8], ptr %i.ci, i64 %i.cn ; 3 uses
  %i.cp = zext i1 %i.cl to i64
  %i.cq = getelementptr inbounds nuw [360 x i8], ptr %i.cj, i64 %i.cp ; 3 uses
  %i.cr = icmp eq ptr %i.co, %i.bo
  %i.cs = icmp eq ptr %i.cq, %2
  %or.cond.i.i = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB3Q_11collections5btree3mapINtB4D_8BTreeMaplB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB5D_8adapters3map3MapINtNtB6A_6filter6FilterINtNtNtB5D_7sources7from_fn6FromFnNCNvB27_12visit_fields0ENCNvMB27_NtB27_19StatisticsCollector7try_new0ENCB8i_s_0EE0E0EB2f_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.ct = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.cd, %.critedge.i ] ; 3 uses
  %i.cu = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !16879, !noalias !16885, !noundef !62
  %.val.i19.i = load i32, ptr %i.cu, align 4, !alias.scope !16880, !noalias !16886, !noundef !62
  %i.cv = icmp slt i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.cw = xor i1 %i.cv, true
  %spec.select.i.i = select i1 %i.cv, ptr %.sroa.0.02.i.i, ptr %i.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ct, ptr noundef nonnull align 8 dereferenceable(360) %spec.select.i.i, i64 360, i1 false), !alias.scope !16881, !noalias !16887
  %i.cx = zext i1 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [360 x i8], ptr %i.cu, i64 %i.cx ; 3 uses
  %i.cz = zext i1 %i.cv to i64
  %i.da = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.02.i.i, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 360 ; 2 uses
  %i.dc = icmp ne ptr %i.cy, %i.cf
  %i.dd = icmp ne ptr %i.da, %i.m
  %or.cond.i20.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB3Q_11collections5btree3mapINtB4D_8BTreeMaplB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB5D_8adapters3map3MapINtNtB6A_6filter6FilterINtNtNtB5D_7sources7from_fn6FromFnNCNvB27_12visit_fields0ENCNvMB27_NtB27_19StatisticsCollector7try_new0ENCB8i_s_0EE0E0EB2f_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB3Q_11collections5btree3mapINtB4D_8BTreeMaplB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB5D_8adapters3map3MapINtNtB6A_6filter6FilterINtNtNtB5D_7sources7from_fn6FromFnNCNvB27_12visit_fields0ENCNvMB27_NtB27_19StatisticsCollector7try_new0ENCB8i_s_0EE0E0EB2f_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.co, %.preheader.i ], [ %i.db, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.cf, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cy, %.lr.ph.i.i ] ; 2 uses
  %i.de = ptrtoint ptr %.sroa.7.0.i to i64
  %i.df = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dg = sub nuw i64 %i.de, %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dg, i1 false), !alias.scope !16881, !noalias !16888
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB3Q_11collections5btree3mapINtB4D_8BTreeMaplB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB5D_8adapters3map3MapINtNtB6A_6filter6FilterINtNtNtB5D_7sources7from_fn6FromFnNCNvB27_12visit_fields0ENCNvMB27_NtB27_19StatisticsCollector7try_new0ENCB8i_s_0EE0E0EB2f_.exit.i
  %i.dh = shl nuw nsw i64 %i.bm, 1
  %i.di = or disjoint i64 %i.dh, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit

bb.z:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw [360 x i8], ptr %i.bo, i64 %i.bk
  %i.dk = or i64 %i.bl, 1
  %i.dl = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.dk, i1 true)
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 1
  %i.do = xor i32 %i.dn, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3y_11collections5btree3mapINtB4l_8BTreeMaplB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5l_8adapters3map3MapINtNtB6i_6filter6FilterINtNtNtB5l_7sources7from_fn6FromFnNCNvB22_12visit_fields0ENCNvMB22_NtB22_19StatisticsCollector7try_new0ENCB80_s_0EE0E0EB2a_(ptr noalias noundef nonnull align 8 %i.dj, i64 noundef range(i64 0, 25620477880152156) %i.bl, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i32 noundef %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(360) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16845
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit
  %.sroa.0.0.i = phi i64 [ %i.di, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit ], [ %i.bu, %bb.u ] ; 2 uses
  %i.dp = icmp ugt i64 %i.bd, 1
  br i1 %i.dp, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.dq = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dr = lshr i64 %.sroa.018.0, 1
  %i.ds = add nuw i64 %i.dr, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dt = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dt, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.du = or i64 %1, 1
  %i.dv = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = xor i32 %i.dx, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3y_11collections5btree3mapINtB4l_8BTreeMaplB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5l_8adapters3map3MapINtNtB6i_6filter6FilterINtNtNtB5l_7sources7from_fn6FromFnNCNvB22_12visit_fields0ENCNvMB22_NtB22_19StatisticsCollector7try_new0ENCB80_s_0EE0E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 25620477880152156) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i32 noundef %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(360) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16845
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB1U_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtNtB3N_3zip3ZipINtNtNtB18_3vec9into_iter8IntoIterlEB4F_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5s_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dz, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dx, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load i32, ptr %i.q, align 4, !alias.scope !16911, !noalias !16912, !noundef !62 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 4, !alias.scope !16911, !noalias !16912, !noundef !62
  %i.r = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %.val8.i = load i32, ptr %i.s, align 4, !alias.scope !16911, !noalias !16912, !noundef !62 ; 2 uses
  %i.t = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %.val.i = load i32, ptr %i.v, align 4, !alias.scope !16911, !noalias !16912, !noundef !62 ; 2 uses
  %i.w = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4Q_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5D_(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16893
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i ], [ %i.ay, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.ac = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.al, i64 %i.ac ; 2 uses
  %i.af = load i64, ptr %i.ae, align 4, !alias.scope !16913, !noalias !16914
  %i.ag = load <2 x i32>, ptr %i.ad, align 4, !alias.scope !16915, !noalias !16916
  store i64 %i.af, ptr %i.ad, align 4, !alias.scope !16915, !noalias !16916
  store <2 x i32> %i.ag, ptr %i.ae, align 4, !alias.scope !16913, !noalias !16914
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader ]
  %i.ah = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit

bb.q:                                             ; preds = %bb.n
  %i.aj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16917), !noalias !16912
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16918), !noalias !16912
  %.not.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94, %bb.q
  %i.ak = phi i64 [ %i.aj, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 3 uses
  %xtraiter = and i64 %i.ak, 1
  %i.am = icmp eq i64 %i.ak, 1
  br i1 %i.am, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ak, 9223372036854775806
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new ], [ %i.ay, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ]
  %i.an = xor i64 %.sroa.0.016.i.i, -1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.al, i64 %i.an ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 4, !alias.scope !16913, !noalias !16914
  %i.ar = load <2 x i32>, ptr %i.ao, align 4, !alias.scope !16915, !noalias !16916
  store i64 %i.aq, ptr %i.ao, align 4, !alias.scope !16915, !noalias !16916
  store <2 x i32> %i.ar, ptr %i.ap, align 4, !alias.scope !16913, !noalias !16914
  %i.as = xor i64 %.sroa.0.016.i.i, -2
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.al, i64 %i.as ; 2 uses
  %i.aw = load i64, ptr %i.av, align 4, !alias.scope !16913, !noalias !16914
  %i.ax = load <2 x i32>, ptr %i.au, align 4, !alias.scope !16915, !noalias !16916
  store i64 %i.aw, ptr %i.au, align 4, !alias.scope !16915, !noalias !16916
  store <2 x i32> %i.ax, ptr %i.av, align 4, !alias.scope !16913, !noalias !16914
  %i.ay = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ai, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bi, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit ] ; 4 uses
  %i.bi = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !62
  %.not29 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !62 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 8 uses
  %i.bq = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 4 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs ; 6 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.161 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.161
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bv, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4Q_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5D_(ptr noalias noundef nonnull align 4 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.bp, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ce, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16899
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16920)
  %i.cf = icmp eq i64 %i.bp, 0
  %i.cg = icmp eq i64 %i.bq, 0
  %or.cond.i = or i1 %i.cg, %i.cf
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4G_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5t_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 range(i64 0, -9223372036854775808) %i.bp) ; 2 uses
  %i.ch = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.ch, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4G_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5t_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bp, %i.bq  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.ci, ptr %i.bt
  %i.cj = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.cj, i1 false), !alias.scope !16921
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cl = phi ptr [ %i.cw, %.preheader.i ], [ %i.ck, %.critedge.i ]
  %i.cm = phi ptr [ %i.cu, %.preheader.i ], [ %i.ci, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cp, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 -8 ; 3 uses
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load i32, ptr %i.co, align 4, !alias.scope !16920, !noalias !16922, !noundef !62
  %.val10.i.i = load i32, ptr %i.cn, align 4, !alias.scope !16919, !noalias !16923, !noundef !62
  %i.cq = icmp ult i32 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cq, ptr %i.cn, ptr %i.co
  %i.cr = load i64, ptr %..i.i, align 4, !alias.scope !16921, !noalias !16924
  store i64 %i.cr, ptr %i.cp, align 4, !alias.scope !16919, !noalias !16923
  %i.cs = xor i1 %i.cq, true
  %i.ct = zext i1 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ct ; 3 uses
  %i.cv = zext i1 %i.cq to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cv ; 3 uses
  %i.cx = icmp eq ptr %i.cu, %i.bt
  %i.cy = icmp eq ptr %i.cw, %2
  %or.cond.i.i = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB58_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5V_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cz = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.bt, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dh, %.lr.ph.i.i ], [ %i.ci, %.critedge.i ] ; 3 uses
  %i.da = phi ptr [ %i.df, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !16919, !noalias !16925, !noundef !62
  %.val.i19.i = load i32, ptr %i.da, align 4, !alias.scope !16920, !noalias !16926, !noundef !62
  %i.db = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.dc = xor i1 %i.db, true
  %spec.select.i.i = select i1 %i.db, ptr %.sroa.0.02.i.i, ptr %i.da
  %i.dd = load i64, ptr %spec.select.i.i, align 4, !alias.scope !16921, !noalias !16927
  store i64 %i.dd, ptr %i.cz, align 4, !alias.scope !16919, !noalias !16925
  %i.de = zext i1 %i.dc to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.de ; 3 uses
  %i.dg = zext i1 %i.db to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.dj = icmp ne ptr %i.df, %i.ck
  %i.dk = icmp ne ptr %i.dh, %i.m
  %or.cond.i20.i = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB58_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5V_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB58_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5V_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cu, %.preheader.i ], [ %i.di, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cw, %.preheader.i ], [ %i.ck, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.df, %.lr.ph.i.i ] ; 2 uses
  %i.dl = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dm = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dn = sub nuw i64 %i.dl, %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.dn, i1 false), !alias.scope !16921, !noalias !16928
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4G_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5t_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4G_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5t_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB58_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5V_.exit.i
  %i.do = shl nuw nsw i64 %i.br, 1
  %i.dp = or disjoint i64 %i.do, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit

bb.z:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp
  %i.dr = or i64 %i.bq, 1
  %i.ds = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dr, i1 true)
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 1
  %i.dv = xor i32 %i.du, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4Q_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5D_(ptr noalias noundef nonnull align 4 %i.dq, i64 noundef range(i64 0, 1152921504606846976) %i.bq, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dv, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16899
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4R_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5E_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4G_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5t_.exit
  %.sroa.0.0.i = phi i64 [ %i.dp, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4G_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5t_.exit ], [ %i.bz, %bb.u ] ; 2 uses
  %i.dw = icmp ugt i64 %i.bi, 1
  br i1 %i.dw, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.dx = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dy = lshr i64 %.sroa.018.0, 1
  %i.dz = add nuw i64 %i.dy, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ea = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ea, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eb = or i64 %1, 1
  %i.ec = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.eb, i1 true)
  %i.ed = trunc nuw nsw i64 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 1
  %i.ef = xor i32 %i.ee, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4Q_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5D_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ef, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16899
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB1U_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB3N_3zip3ZipINtNtNtB18_3vec9into_iter8IntoIterlEB4r_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5e_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dz, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dx, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5n_.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5n_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5n_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread94, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load i32, ptr %i.q, align 4, !alias.scope !16951, !noalias !16952, !noundef !62 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 4, !alias.scope !16951, !noalias !16952, !noundef !62
  %i.r = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %.val8.i = load i32, ptr %i.s, align 4, !alias.scope !16951, !noalias !16952, !noundef !62 ; 2 uses
  %i.t = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %.val.i = load i32, ptr %i.v, align 4, !alias.scope !16951, !noalias !16952, !noundef !62 ; 2 uses
  %i.w = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5n_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters3map3MapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4C_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5p_(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16933
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5n_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i ], [ %i.ay, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.ac = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.al, i64 %i.ac ; 2 uses
  %i.af = load i64, ptr %i.ae, align 4, !alias.scope !16953, !noalias !16954
  %i.ag = load <2 x i32>, ptr %i.ad, align 4, !alias.scope !16955, !noalias !16956
  store i64 %i.af, ptr %i.ad, align 4, !alias.scope !16955, !noalias !16956
  store <2 x i32> %i.ag, ptr %i.ae, align 4, !alias.scope !16953, !noalias !16954
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader ]
  %i.ah = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5n_.exit

bb.q:                                             ; preds = %bb.n
  %i.aj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16957), !noalias !16952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16958), !noalias !16952
  %.not.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread94, %bb.q
  %i.ak = phi i64 [ %i.aj, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5m_.exit.i.thread94 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 3 uses
  %xtraiter = and i64 %i.ak, 1
  %i.am = icmp eq i64 %i.ak, 1
  br i1 %i.am, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ak, 9223372036854775806
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new ], [ %i.ay, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ]
  %i.an = xor i64 %.sroa.0.016.i.i, -1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.al, i64 %i.an ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 4, !alias.scope !16953, !noalias !16954
  %i.ar = load <2 x i32>, ptr %i.ao, align 4, !alias.scope !16955, !noalias !16956
  store i64 %i.aq, ptr %i.ao, align 4, !alias.scope !16955, !noalias !16956
  store <2 x i32> %i.ar, ptr %i.ap, align 4, !alias.scope !16953, !noalias !16954
  %i.as = xor i64 %.sroa.0.016.i.i, -2
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.al, i64 %i.as ; 2 uses
  %i.aw = load i64, ptr %i.av, align 4, !alias.scope !16953, !noalias !16954
  %i.ax = load <2 x i32>, ptr %i.au, align 4, !alias.scope !16955, !noalias !16956
  store i64 %i.aw, ptr %i.au, align 4, !alias.scope !16955, !noalias !16956
  store <2 x i32> %i.ax, ptr %i.av, align 4, !alias.scope !16953, !noalias !16954
  %i.ay = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5n_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ai, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bi, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit ] ; 4 uses
  %i.bi = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !62
  %.not29 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !62 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 8 uses
  %i.bq = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 4 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs ; 6 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.161 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.161
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bv, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters3map3MapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4C_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5p_(ptr noalias noundef nonnull align 4 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.bp, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ce, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16939
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16960)
  %i.cf = icmp eq i64 %i.bp, 0
  %i.cg = icmp eq i64 %i.bq, 0
  %or.cond.i = or i1 %i.cg, %i.cf
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5f_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 range(i64 0, -9223372036854775808) %i.bp) ; 2 uses
  %i.ch = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.ch, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5f_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bp, %i.bq  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.ci, ptr %i.bt
  %i.cj = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.cj, i1 false), !alias.scope !16961
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cl = phi ptr [ %i.cw, %.preheader.i ], [ %i.ck, %.critedge.i ]
  %i.cm = phi ptr [ %i.cu, %.preheader.i ], [ %i.ci, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cp, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 -8 ; 3 uses
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load i32, ptr %i.co, align 4, !alias.scope !16960, !noalias !16962, !noundef !62
  %.val10.i.i = load i32, ptr %i.cn, align 4, !alias.scope !16959, !noalias !16963, !noundef !62
  %i.cq = icmp ult i32 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cq, ptr %i.cn, ptr %i.co
  %i.cr = load i64, ptr %..i.i, align 4, !alias.scope !16961, !noalias !16964
  store i64 %i.cr, ptr %i.cp, align 4, !alias.scope !16959, !noalias !16963
  %i.cs = xor i1 %i.cq, true
  %i.ct = zext i1 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ct ; 3 uses
  %i.cv = zext i1 %i.cq to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cv ; 3 uses
  %i.cx = icmp eq ptr %i.cu, %i.bt
  %i.cy = icmp eq ptr %i.cw, %2
  %or.cond.i.i = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters3map3MapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB4U_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5H_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cz = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.bt, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dh, %.lr.ph.i.i ], [ %i.ci, %.critedge.i ] ; 3 uses
  %i.da = phi ptr [ %i.df, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !16959, !noalias !16965, !noundef !62
  %.val.i19.i = load i32, ptr %i.da, align 4, !alias.scope !16960, !noalias !16966, !noundef !62
  %i.db = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.dc = xor i1 %i.db, true
  %spec.select.i.i = select i1 %i.db, ptr %.sroa.0.02.i.i, ptr %i.da
  %i.dd = load i64, ptr %spec.select.i.i, align 4, !alias.scope !16961, !noalias !16967
  store i64 %i.dd, ptr %i.cz, align 4, !alias.scope !16959, !noalias !16965
  %i.de = zext i1 %i.dc to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.de ; 3 uses
  %i.dg = zext i1 %i.db to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.dj = icmp ne ptr %i.df, %i.ck
  %i.dk = icmp ne ptr %i.dh, %i.m
  %or.cond.i20.i = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters3map3MapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB4U_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5H_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters3map3MapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB4U_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5H_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cu, %.preheader.i ], [ %i.di, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cw, %.preheader.i ], [ %i.ck, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.df, %.lr.ph.i.i ] ; 2 uses
  %i.dl = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dm = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dn = sub nuw i64 %i.dl, %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.dn, i1 false), !alias.scope !16961, !noalias !16968
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5f_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5f_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters3map3MapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB4U_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5H_.exit.i
  %i.do = shl nuw nsw i64 %i.br, 1
  %i.dp = or disjoint i64 %i.do, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit

bb.z:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp
  %i.dr = or i64 %i.bq, 1
  %i.ds = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dr, i1 true)
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 1
  %i.dv = xor i32 %i.du, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters3map3MapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4C_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5p_(ptr noalias noundef nonnull align 4 %i.dq, i64 noundef range(i64 0, 1152921504606846976) %i.bq, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dv, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16939
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5q_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5f_.exit
  %.sroa.0.0.i = phi i64 [ %i.dp, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5f_.exit ], [ %i.bz, %bb.u ] ; 2 uses
  %i.dw = icmp ugt i64 %i.bi, 1
  br i1 %i.dw, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.dx = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dy = lshr i64 %.sroa.018.0, 1
  %i.dz = add nuw i64 %i.dy, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ea = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ea, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eb = or i64 %1, 1
  %i.ec = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.eb, i1 true)
  %i.ed = trunc nuw nsw i64 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 1
  %i.ef = xor i32 %i.ee, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters3map3MapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4C_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions2v124field_id_to_column_index0EE0E0EB5p_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ef, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16939
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB1U_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB3N_3zip3ZipINtNtNtB18_3vec9into_iter8IntoIterlEB4r_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5e_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dz, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dx, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5n_.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5n_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5n_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread94, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load i32, ptr %i.q, align 4, !alias.scope !16991, !noalias !16992, !noundef !62 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 4, !alias.scope !16991, !noalias !16992, !noundef !62
  %i.r = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %.val8.i = load i32, ptr %i.s, align 4, !alias.scope !16991, !noalias !16992, !noundef !62 ; 2 uses
  %i.t = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %.val.i = load i32, ptr %i.v, align 4, !alias.scope !16991, !noalias !16992, !noundef !62 ; 2 uses
  %i.w = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5n_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters3map3MapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4C_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5p_(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16973
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5n_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i ], [ %i.ay, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.ac = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.al, i64 %i.ac ; 2 uses
  %i.af = load i64, ptr %i.ae, align 4, !alias.scope !16993, !noalias !16994
  %i.ag = load <2 x i32>, ptr %i.ad, align 4, !alias.scope !16995, !noalias !16996
  store i64 %i.af, ptr %i.ad, align 4, !alias.scope !16995, !noalias !16996
  store <2 x i32> %i.ag, ptr %i.ae, align 4, !alias.scope !16993, !noalias !16994
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader ]
  %i.ah = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5n_.exit

bb.q:                                             ; preds = %bb.n
  %i.aj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16997), !noalias !16992
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16998), !noalias !16992
  %.not.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread94, %bb.q
  %i.ak = phi i64 [ %i.aj, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4z_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5m_.exit.i.thread94 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 3 uses
  %xtraiter = and i64 %i.ak, 1
  %i.am = icmp eq i64 %i.ak, 1
  br i1 %i.am, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i.epil.preheader, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ak, 9223372036854775806
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new ], [ %i.ay, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i ]
  %i.an = xor i64 %.sroa.0.016.i.i, -1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.al, i64 %i.an ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 4, !alias.scope !16993, !noalias !16994
  %i.ar = load <2 x i32>, ptr %i.ao, align 4, !alias.scope !16995, !noalias !16996
  store i64 %i.aq, ptr %i.ao, align 4, !alias.scope !16995, !noalias !16996
  store <2 x i32> %i.ar, ptr %i.ap, align 4, !alias.scope !16993, !noalias !16994
  %i.as = xor i64 %.sroa.0.016.i.i, -2
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.al, i64 %i.as ; 2 uses
  %i.aw = load i64, ptr %i.av, align 4, !alias.scope !16993, !noalias !16994
  %i.ax = load <2 x i32>, ptr %i.au, align 4, !alias.scope !16995, !noalias !16996
  store i64 %i.aw, ptr %i.au, align 4, !alias.scope !16995, !noalias !16996
  store <2 x i32> %i.ax, ptr %i.av, align 4, !alias.scope !16993, !noalias !16994
  %i.ay = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit.loopexit.unr-lcssa, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4A_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5n_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ai, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bi, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit ] ; 4 uses
  %i.bi = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !62
  %.not29 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !62 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 8 uses
  %i.bq = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 4 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs ; 6 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.161 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.161
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bv, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters3map3MapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4C_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5p_(ptr noalias noundef nonnull align 4 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.bp, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ce, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16979
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17000)
  %i.cf = icmp eq i64 %i.bp, 0
  %i.cg = icmp eq i64 %i.bq, 0
  %or.cond.i = or i1 %i.cg, %i.cf
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5f_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 range(i64 0, -9223372036854775808) %i.bp) ; 2 uses
  %i.ch = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.ch, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5f_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bp, %i.bq  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.ci, ptr %i.bt
  %i.cj = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.cj, i1 false), !alias.scope !17001
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cl = phi ptr [ %i.cw, %.preheader.i ], [ %i.ck, %.critedge.i ]
  %i.cm = phi ptr [ %i.cu, %.preheader.i ], [ %i.ci, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cp, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 -8 ; 3 uses
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load i32, ptr %i.co, align 4, !alias.scope !17000, !noalias !17002, !noundef !62
  %.val10.i.i = load i32, ptr %i.cn, align 4, !alias.scope !16999, !noalias !17003, !noundef !62
  %i.cq = icmp ult i32 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cq, ptr %i.cn, ptr %i.co
  %i.cr = load i64, ptr %..i.i, align 4, !alias.scope !17001, !noalias !17004
  store i64 %i.cr, ptr %i.cp, align 4, !alias.scope !16999, !noalias !17003
  %i.cs = xor i1 %i.cq, true
  %i.ct = zext i1 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ct ; 3 uses
  %i.cv = zext i1 %i.cq to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cv ; 3 uses
  %i.cx = icmp eq ptr %i.cu, %i.bt
  %i.cy = icmp eq ptr %i.cw, %2
  %or.cond.i.i = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters3map3MapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB4U_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5H_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cz = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.bt, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dh, %.lr.ph.i.i ], [ %i.ci, %.critedge.i ] ; 3 uses
  %i.da = phi ptr [ %i.df, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !16999, !noalias !17005, !noundef !62
  %.val.i19.i = load i32, ptr %i.da, align 4, !alias.scope !17000, !noalias !17006, !noundef !62
  %i.db = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.dc = xor i1 %i.db, true
  %spec.select.i.i = select i1 %i.db, ptr %.sroa.0.02.i.i, ptr %i.da
  %i.dd = load i64, ptr %spec.select.i.i, align 4, !alias.scope !17001, !noalias !17007
  store i64 %i.dd, ptr %i.cz, align 4, !alias.scope !16999, !noalias !17005
  %i.de = zext i1 %i.dc to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.de ; 3 uses
  %i.dg = zext i1 %i.db to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.dj = icmp ne ptr %i.df, %i.ck
  %i.dk = icmp ne ptr %i.dh, %i.m
  %or.cond.i20.i = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters3map3MapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB4U_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5H_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters3map3MapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB4U_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5H_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cu, %.preheader.i ], [ %i.di, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cw, %.preheader.i ], [ %i.ck, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.df, %.lr.ph.i.i ] ; 2 uses
  %i.dl = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dm = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dn = sub nuw i64 %i.dl, %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.dn, i1 false), !alias.scope !17001, !noalias !17008
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5f_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5f_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTmmEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapmmEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters3map3MapINtNtB4g_3zip3ZipINtNtNtB1z_3vec9into_iter8IntoIterlEB4U_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5H_.exit.i
  %i.do = shl nuw nsw i64 %i.br, 1
  %i.dp = or disjoint i64 %i.do, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit

bb.z:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp
  %i.dr = or i64 %i.bq, 1
  %i.ds = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dr, i1 true)
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 1
  %i.dv = xor i32 %i.du, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters3map3MapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4C_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5p_(ptr noalias noundef nonnull align 4 %i.dq, i64 noundef range(i64 0, 1152921504606846976) %i.bq, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dv, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16979
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters3map3MapINtNtB3Z_3zip3ZipINtNtNtB1i_3vec9into_iter8IntoIterlEB4D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5q_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5f_.exit
  %.sroa.0.0.i = phi i64 [ %i.dp, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters3map3MapINtNtB3O_3zip3ZipINtNtNtB19_3vec9into_iter8IntoIterlEB4s_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5f_.exit ], [ %i.bz, %bb.u ] ; 2 uses
  %i.dw = icmp ugt i64 %i.bi, 1
  br i1 %i.dw, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.dx = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dy = lshr i64 %.sroa.018.0, 1
  %i.dz = add nuw i64 %i.dy, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ea = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ea, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eb = or i64 %1, 1
  %i.ec = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.eb, i1 true)
  %i.ed = trunc nuw nsw i64 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 1
  %i.ef = xor i32 %i.ee, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters3map3MapINtNtB3Y_3zip3ZipINtNtNtB1h_3vec9into_iter8IntoIterlEB4C_ENCNvNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_024field_id_to_column_index0EE0E0EB5p_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ef, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !16979
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2D_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2F_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1J_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2F_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(32) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph104 = phi ptr [ %i.hy, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph103 = phi i64 [ %i.hj, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph102 = phi i32 [ %i.eq, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph101 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph104, i64 16
  %i.d = ptrtoint ptr %.sroa.0.0.ph104 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph101, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph101, i64 16
  %i.f = icmp eq i32 %.sroa.025.0.ph102, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph250

bb.b:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit
  %i.g = icmp eq i32 %i.eq, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph250

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit, %bb.a
  %.sroa.0.0.ph.lcssa95 = phi ptr [ %.sroa.0.0.ph104, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit ], [ %0, %bb.a ], [ %i.hy, %.outer ] ; 16 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTjmINtNtNtB4_3ops5range5RangeyEE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit ], [ %1, %bb.a ], [ %i.hj, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17047)
  call void @llvm.experimental.noalias.scope.decl(metadata !17048)
  %i.h = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.h, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB30_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB32_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB26_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB32_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.i = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.j = icmp samesign ult i64 %3, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i64 %.sroa.16.0.lcssa, 1            ; 10 uses
  %i.l = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.l, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.sroa.0.0.ph.lcssa95, i64 48
  %.val8.i.i = load i64, ptr %i.m, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.n = getelementptr i8, ptr %.sroa.0.0.ph.lcssa95, i64 16
  %.val9.i.i = load i64, ptr %i.n, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.o = icmp ult i64 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.0.0.ph.lcssa95, i64 112
  %.val6.i.i = load i64, ptr %i.p, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.q = getelementptr i8, ptr %.sroa.0.0.ph.lcssa95, i64 80
  %.val7.i.i = load i64, ptr %i.q, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.r = icmp ult i64 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.s = zext i1 %i.o to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.s ; 3 uses
  %i.u = xor i1 %i.o, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.x ; 4 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val4.i.i = load i64, ptr %i.ab, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.ac = getelementptr i8, ptr %i.t, i64 16
  %.val5.i.i = load i64, ptr %i.ac, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.ad = icmp ult i64 %.val4.i.i, %.val5.i.i     ; 3 uses
  %i.ae = getelementptr i8, ptr %i.aa, i64 16
  %.val2.i.i = load i64, ptr %i.ae, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.af = getelementptr i8, ptr %i.w, i64 16
  %.val3.i.i = load i64, ptr %i.af, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.ag = icmp ult i64 %.val2.i.i, %.val3.i.i     ; 3 uses
  %i.ah = select i1 %i.ad, ptr %i.y, ptr %i.t, !unpredictable !62
  %i.ai = select i1 %i.ag, ptr %i.w, ptr %i.aa, !unpredictable !62
  %i.aj = select i1 %i.ag, ptr %i.y, ptr %i.w, !unpredictable !62
  %i.ak = select i1 %i.ad, ptr %i.t, ptr %i.aj, !unpredictable !62 ; 3 uses
  %i.al = select i1 %i.ad, ptr %i.w, ptr %i.y, !unpredictable !62
  %i.am = select i1 %i.ag, ptr %i.aa, ptr %i.al, !unpredictable !62 ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.ao = getelementptr i8, ptr %i.ak, i64 16
  %.val1.i.i = load i64, ptr %i.ao, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.ap = icmp ult i64 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.aq = select i1 %i.ap, ptr %i.am, ptr %i.ak, !unpredictable !62
  %i.ar = select i1 %i.ap, ptr %i.ak, ptr %i.am, !unpredictable !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !alias.scope !17049
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !alias.scope !17049
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false), !alias.scope !17049
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !alias.scope !17049
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.k ; 8 uses
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.k ; 4 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 48
  %.val8.i30.i = load i64, ptr %i.ax, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.ay = getelementptr i8, ptr %i.av, i64 16
  %.val9.i31.i = load i64, ptr %i.ay, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.az = icmp ult i64 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.ba = getelementptr i8, ptr %i.av, i64 112
  %.val6.i32.i = load i64, ptr %i.ba, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.bb = getelementptr i8, ptr %i.av, i64 80
  %.val7.i33.i = load i64, ptr %i.bb, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.bc = icmp ult i64 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.bd = zext i1 %i.az to i64
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.bd ; 3 uses
  %i.bf = xor i1 %i.az, true
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.bc, i64 3, i64 2
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.bi ; 4 uses
  %i.bk = select i1 %i.bc, i64 2, i64 3
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.bk ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 16
  %.val4.i34.i = load i64, ptr %i.bm, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.bn = getelementptr i8, ptr %i.be, i64 16
  %.val5.i35.i = load i64, ptr %i.bn, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.bo = icmp ult i64 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bl, i64 16
  %.val2.i36.i = load i64, ptr %i.bp, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.bq = getelementptr i8, ptr %i.bh, i64 16
  %.val3.i37.i = load i64, ptr %i.bq, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.br = icmp ult i64 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.bs = select i1 %i.bo, ptr %i.bj, ptr %i.be, !unpredictable !62
  %i.bt = select i1 %i.br, ptr %i.bh, ptr %i.bl, !unpredictable !62
  %i.bu = select i1 %i.br, ptr %i.bj, ptr %i.bh, !unpredictable !62
  %i.bv = select i1 %i.bo, ptr %i.be, ptr %i.bu, !unpredictable !62 ; 3 uses
  %i.bw = select i1 %i.bo, ptr %i.bh, ptr %i.bj, !unpredictable !62
  %i.bx = select i1 %i.br, ptr %i.bl, ptr %i.bw, !unpredictable !62 ; 3 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  %.val.i38.i = load i64, ptr %i.by, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.bz = getelementptr i8, ptr %i.bv, i64 16
  %.val1.i39.i = load i64, ptr %i.bz, align 8, !alias.scope !17047, !noalias !17048, !noundef !62
  %i.ca = icmp ult i64 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.cb = select i1 %i.ca, ptr %i.bx, ptr %i.bv, !unpredictable !62
  %i.cc = select i1 %i.ca, ptr %i.bv, ptr %i.bx, !unpredictable !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false), !alias.scope !17049
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 32, i1 false), !alias.scope !17049
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !alias.scope !17049
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !alias.scope !17049
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.ph.lcssa95, i64 32, i1 false), !alias.scope !17049
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.k
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 32, i1 false), !alias.scope !17049
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.ci = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.k ; 2 uses
  %i.cj = icmp samesign ult i64 %.sroa.0.0.i, %i.k
  br i1 %i.cj, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2G_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2I_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1M_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2I_.exit.i, %bb.h
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.k
  %i.cl = getelementptr [32 x i8], ptr %2, i64 %i.k ; 6 uses
  %i.cm = icmp samesign ult i64 %.sroa.0.0.i, %i.ci
  br i1 %i.cm, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2G_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2I_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1M_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2I_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cw, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2G_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2I_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1M_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2I_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %.sroa.05.08.1.i ; 2 uses
  %.idx276 = shl nuw nsw i64 %.sroa.05.08.1.i, 5
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx276 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i64 32, i1 false), !alias.scope !17049
end_hunk_0
begin_hunk_1_@_RNCNvXs_NtCsaSXGKSfiU2E_10lance_file2ioNtB6_16LanceEncodingsIoNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIo14submit_request0B8_:bb.a
  %i.kw = phi ptr [ %i.kv, %bb.cz ], [ %i.kq, %.noexc127.i ]
  %.sink.i120.i = phi i64 [ 0, %bb.cz ], [ %i.ko, %.noexc127.i ] ; 2 uses
  store i64 %.sink.i120.i, ptr %i.dz, align 8, !alias.scope !29320, !noalias !29242
  call void @llvm.experimental.noalias.scope.decl(metadata !29323)
  call void @llvm.experimental.noalias.scope.decl(metadata !29324)
  call void @llvm.experimental.noalias.scope.decl(metadata !29325)
  call void @llvm.experimental.noalias.scope.decl(metadata !29326)
  %i.kx = load i64, ptr %i.ea, align 8, !alias.scope !29327, !noalias !29328, !noundef !62 ; 3 uses
  %i.ky = load i64, ptr %i.dv, align 8, !range !65, !alias.scope !29327, !noalias !29328, !noundef !62
  %i.kz = icmp eq i64 %i.kx, %i.ky
  br i1 %i.kz, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE8grow_oneCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %bb.de unwind label %bb.dc, !noalias !29329

bb.dc:                                            ; preds = %bb.db
  %i.la = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !29330)
  call void @llvm.experimental.noalias.scope.decl(metadata !29331)
  %i.lb = load ptr, ptr %i.dy, align 8, !alias.scope !29332, !noalias !29333, !noundef !62
  %i.lc = load ptr, ptr %i.u, align 8, !alias.scope !29332, !noalias !29333, !nonnull !62, !align !63, !noundef !62
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.le = load ptr, ptr %i.ld, align 8, !noalias !29334, !nonnull !62, !noundef !62
  invoke void %i.le(ptr noundef %i.lb, ptr noundef %i.kw, i64 noundef %.sink.i120.i)
          to label %.body130.i unwind label %bb.dd, !noalias !29329, !inline_history !5

bb.dd:                                            ; preds = %bb.dc
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !29329
  unreachable

.body130.i:                                       ; preds = %bb.dc, %.loopexit.split-lp167.i, %.loopexit166.i, %bb.ct
  %.pn18.i = phi { ptr, i32 } [ %i.kc, %bb.ct ], [ %i.la, %bb.dc ], [ %lpad.loopexit168.i, %.loopexit166.i ], [ %lpad.loopexit.split-lp169.i, %.loopexit.split-lp167.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !29242
  br label %bb.df

bb.de:                                            ; preds = %bb.db, %bb.da
  %i.lg = load ptr, ptr %i.eb, align 8, !alias.scope !29327, !noalias !29328, !nonnull !62, !noundef !62
  %i.lh = getelementptr inbounds nuw [32 x i8], ptr %i.lg, i64 %i.kx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lh, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !29243
  %i.li = add i64 %i.kx, 1
  store i64 %i.li, ptr %i.ea, align 8, !alias.scope !29327, !noalias !29328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !29242
  br label %bb.ce

bb.df:                                            ; preds = %.body130.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i
  %.pn18.pn.i = phi { ptr, i32 } [ %.pn18.i, %.body130.i ], [ %.pn13.pn.pn.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.w) #50
          to label %.body74.i unwind label %bb.bc, !noalias !29243

bb.dg:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future6either6EitherINtNtBG_6future3MapINtNtCs6LHU0WyJj3k_15futures_channel7oneshot8ReceiverNtNtCsjjbR6Jfsbqw_8lance_io9scheduler8ResponseENCNvMsi_B2H_NtB2H_13ScanScheduler23submit_request_standard0EINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4J_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5146.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !29242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3145.i.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.sroa.0, i64 7, i1 false), !noalias !29242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3145.i.sroa.6, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3.i.sroa.6, i64 16, i1 false), !noalias !29242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !29242
  %.val35.i = load i64, ptr %i.av, align 8, !noalias !29242 ; 2 uses
  %i.lj = icmp eq i64 %.val35.i, 0
  br i1 %i.lj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit133.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.lk = getelementptr i8, ptr %1, i64 176
  %.val36.i = load ptr, ptr %i.lk, align 8, !noalias !29242, !nonnull !62, !noundef !62
  %i.ll = shl nuw i64 %.val35.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val36.i, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !29243
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit133.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit133.i: ; preds = %bb.dh, %bb.dg
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val31.i = load i64, ptr %i.lm, align 8, !noalias !29242 ; 2 uses
  %i.ln = icmp eq i64 %.val31.i, 0
  br i1 %i.ln, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit135.i, label %bb.di

bb.di:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit133.i
  %i.lo = getelementptr i8, ptr %1, i64 200
  %.val32.i = load ptr, ptr %i.lo, align 8, !noalias !29242, !nonnull !62, !noundef !62
  %i.lp = shl nuw i64 %.val31.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i, i64 noundef %i.lp, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !29243
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit135.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit135.i: ; preds = %bb.di, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit133.i
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 216
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.lq)
          to label %bb.dm unwind label %bb.bb, !noalias !29243

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.av, %.body74.i
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val29.i = load i64, ptr %i.lr, align 8, !noalias !29242 ; 2 uses
  %i.ls = icmp eq i64 %.val29.i, 0
  br i1 %i.ls, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit136.i, label %bb.dj

bb.dj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.i
  %i.lt = getelementptr i8, ptr %1, i64 200
  %.val30.i = load ptr, ptr %i.lt, align 8, !noalias !29242, !nonnull !62, !noundef !62
  %i.lu = shl nuw i64 %.val29.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val30.i, i64 noundef %i.lu, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !29243
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit136.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit136.i: ; preds = %bb.dj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.i
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 281
  %i.lw = load i8, ptr %i.lv, align 1, !range !81, !noalias !29242, !noundef !62
  %i.lx = trunc nuw i8 %i.lw to i1
  br i1 %i.lx, label %bb.dk, label %bb.ba

bb.dk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit136.i
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 216
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.ly) #50
          to label %bb.ba unwind label %bb.bc, !noalias !29243

common.ret:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit, %bb.dl
  %storemerge = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit ], [ 3, %bb.dl ]
  store i8 %storemerge, ptr %i.ap, align 1
  ret void

bb.dl:                                            ; preds = %_RNvXs2_NtNtCs9p5Dg9WVwvP_12futures_util6future6eitherINtB5_6EitherINtNtB7_6future3MapINtNtCs6LHU0WyJj3k_15futures_channel7oneshot8ReceiverNtNtCsjjbR6Jfsbqw_8lance_io9scheduler8ResponseENCNvMsi_B2e_NtB2e_13ScanScheduler23submit_request_standard0EINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB40_6future6future6Futurep6OutputINtNtB40_6result6ResultINtNtB4w_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB40_6marker4SendEL_EEEB51_4pollCsaSXGKSfiU2E_10lance_file.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !29242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !29242
  store i8 3, ptr %i.aw, align 8, !noalias !29242
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3145.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3145.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5146.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  store i8 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %common.ret

bb.dm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit135.i, %bb.az, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit78.i
  %.sroa.3145.i.sroa.4.0 = phi ptr [ %.sroa.3145.i.sroa.4.7.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit78.i ], [ %.sroa.3145.i.sroa.4.7.copyload, %bb.az ], [ %.sroa.3.i.sroa.4.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit135.i ] ; 4 uses
  %.sroa.0144.0.i = phi i8 [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit78.i ], [ -1, %bb.az ], [ %i.cv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit135.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3145.i.sroa.0, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3.sroa.4, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3145.i.sroa.6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5146.i, i64 24, i1 false)
  store i8 1, ptr %i.aw, align 8, !noalias !29242
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3145.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3145.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5146.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMsk_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtBJ_13FileScheduler14submit_request0ECsaSXGKSfiU2E_10lance_file(ptr noundef nonnull align 8 %i.av)
          to label %bb.do unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.do:                                            ; preds = %bb.dm
  %.not.i = icmp eq i8 %.sroa.0144.0.i, -1
  br i1 %.not.i, label %bb.dp, label %bb.gw

bb.dp:                                            ; preds = %bb.do
  %.sroa.4284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4284.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3.sroa.4, i64 16, i1 false)
  store ptr %.sroa.3145.i.sroa.4.0, ptr %i.ao, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.val91 = load i64, ptr %i.ma, align 8, !noundef !62 ; 5 uses
  %i.mb = icmp ult i64 %.val91, 288230376151711744
  call void @llvm.assume(i1 %i.mb)
  %i.mc = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %.val93 = load i64, ptr %i.mc, align 8, !noundef !62 ; 3 uses
  %i.md = icmp ult i64 %.val93, 1152921504606846976
  call void @llvm.assume(i1 %i.md)
  %.not8.not = icmp eq i64 %.val91, %.val93
  %i.me = ptrtoint ptr %.sroa.3145.i.sroa.4.0 to i64
  br i1 %.not8.not, label %bb.dq, label %bb.gr

bb.dq:                                            ; preds = %bb.dp
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.mg = load i8, ptr %i.mf, align 8, !range !81, !noundef !62
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %bb.ds, label %.thread297

.thread297:                                       ; preds = %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13276, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.3.sroa.4, i64 16, i1 false)
  br label %bb.gt

bb.dr:                                            ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.gt

bb.ds:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 0, ptr %i.ai, align 8, !alias.scope !29335
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.mi, align 8, !alias.scope !29335
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.mj, align 8, !alias.scope !29335
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ml = getelementptr i8, ptr %1, i64 40        ; 3 uses
  %.val84 = load i64, ptr %i.ml, align 8, !noundef !62 ; 9 uses
  %i.mm = icmp ult i64 %.val84, 576460752303423488
  call void @llvm.assume(i1 %i.mm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29336
  %i.mn = mul nuw nsw i64 %.val84, 24             ; 2 uses
  %.not.i.i.i.i102 = icmp samesign ugt i64 %.val84, 384307168202282325
  br i1 %.not.i.i.i.i102, label %bb.dv, label %bb.dt, !prof !86

bb.dt:                                            ; preds = %bb.ds
  %i.mo = icmp eq i64 %.val84, 0
  br i1 %i.mo, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !29337
  %i.mp = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.mn, i64 noundef range(i64 1, 9) 8) #44, !noalias !29337 ; 5 uses
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %bb.dv, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i

bb.dv:                                            ; preds = %bb.du, %bb.ds
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.mn, %bb.du ], [ undef, %bb.ds ]
  %.sroa.4.0.ph.i.i.i104 = phi i64 [ 8, %bb.du ], [ 0, %bb.ds ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i104, i64 %.sroa.10.0.ph.i.i.i) #49
          to label %.noexc.i.i unwind label %bb.dy, !noalias !29336

.noexc.i.i:                                       ; preds = %bb.dv
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.du
  store i64 %.val84, ptr %i.b, align 8, !noalias !29336
  %i.mr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.mp, ptr %i.mr, align 8, !noalias !29336
  %i.ms = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !29338)
  %.not.i.i103 = icmp eq i64 %.val84, 1
  br i1 %.not.i.i103, label %._crit_edge.thread.i.i.i, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.preheader

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.preheader: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.mt = add nsw i64 %.val84, -1                 ; 2 uses
  %i.mu = add nsw i64 %.val84, -2
  %xtraiter = and i64 %i.mt, 3                    ; 3 uses
  %i.mv = icmp ult i64 %i.mu, 3
  br i1 %i.mv, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.epil.preheader, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.preheader.new

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.preheader.new: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.preheader
  %unroll_iter = and i64 %i.mt, -4
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.preheader.new
  %.sroa.0.032.us.i.i.i = phi ptr [ %i.mp, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.preheader.new ], [ %i.mz, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i ] ; 13 uses
  %niter = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.preheader.new ], [ %niter.next.3, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i ]
  store i64 0, ptr %.sroa.0.032.us.i.i.i, align 8, !noalias !29339
  %.sroa.4710.0..sroa.0.032.us.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4710.0..sroa.0.032.us.i.i.i.sroa_idx, align 8, !noalias !29339
  %.sroa.5711.0..sroa.0.032.us.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i, i64 16
  store i64 0, ptr %.sroa.5711.0..sroa.0.032.us.i.i.i.sroa_idx, align 8, !noalias !29339
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i, i64 24
  store i64 0, ptr %i.mw, align 8, !noalias !29339
  %.sroa.4710.0..sroa.0.032.us.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4710.0..sroa.0.032.us.i.i.i.sroa_idx.1, align 8, !noalias !29339
  %.sroa.5711.0..sroa.0.032.us.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i, i64 40
  store i64 0, ptr %.sroa.5711.0..sroa.0.032.us.i.i.i.sroa_idx.1, align 8, !noalias !29339
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i, i64 48
  store i64 0, ptr %i.mx, align 8, !noalias !29339
  %.sroa.4710.0..sroa.0.032.us.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4710.0..sroa.0.032.us.i.i.i.sroa_idx.2, align 8, !noalias !29339
  %.sroa.5711.0..sroa.0.032.us.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i, i64 64
  store i64 0, ptr %.sroa.5711.0..sroa.0.032.us.i.i.i.sroa_idx.2, align 8, !noalias !29339
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i, i64 72
  store i64 0, ptr %i.my, align 8, !noalias !29339
  %.sroa.4710.0..sroa.0.032.us.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4710.0..sroa.0.032.us.i.i.i.sroa_idx.3, align 8, !noalias !29339
  %.sroa.5711.0..sroa.0.032.us.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i, i64 88
  store i64 0, ptr %.sroa.5711.0..sroa.0.032.us.i.i.i.sroa_idx.3, align 8, !noalias !29339
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i, i64 96 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i

bb.dw:                                            ; preds = %bb.dt
  store i64 0, ptr %i.b, align 8, !noalias !29336
  %i.na = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.na, align 8, !noalias !29336
  %i.nb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.nb, align 8, !alias.scope !29338, !noalias !29340
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ai)
          to label %bb.dz unwind label %.body.i.i, !noalias !29341

._crit_edge.thread.i.i.i.loopexit.unr-lcssa:      ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.epil.preheader

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.epil.preheader: ; preds = %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.preheader
  %.sroa.0.032.us.i.i.i.epil.init = phi ptr [ %i.mp, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.preheader ], [ %i.mz, %._crit_edge.thread.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1243 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1243)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.epil

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.epil: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.epil, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.epil.preheader
  %.sroa.0.032.us.i.i.i.epil = phi ptr [ %i.nc, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.epil ], [ %.sroa.0.032.us.i.i.i.epil.init, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.epil ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.epil.preheader ]
  store i64 0, ptr %.sroa.0.032.us.i.i.i.epil, align 8, !noalias !29339
  %.sroa.4710.0..sroa.0.032.us.i.i.i.sroa_idx.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i.epil, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4710.0..sroa.0.032.us.i.i.i.sroa_idx.epil, align 8, !noalias !29339
  %.sroa.5711.0..sroa.0.032.us.i.i.i.sroa_idx.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i.epil, i64 16
  store i64 0, ptr %.sroa.5711.0..sroa.0.032.us.i.i.i.sroa_idx.epil, align 8, !noalias !29339
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us.i.i.i.epil, i64 24 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.epil, !llvm.loop !29140

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.thread.i.i.i.loopexit.unr-lcssa, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.epil, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %.sroa.0.0.lcssa51.i.i.i = phi ptr [ %i.mp, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ %i.mz, %._crit_edge.thread.i.i.i.loopexit.unr-lcssa ], [ %i.nc, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.us.i.i.i.epil ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa51.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !29342
  store i64 %.val84, ptr %i.ms, align 8, !alias.scope !29338, !noalias !29340
  br label %bb.dz

.body.i.i:                                        ; preds = %bb.dw
  %i.nd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.b) #50
          to label %bb.gq unwind label %bb.dx, !noalias !29336

bb.dx:                                            ; preds = %bb.dy, %.body.i.i
  %i.ne = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !29336
  unreachable

bb.dy:                                            ; preds = %bb.dv
  %i.nf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ai) #50
          to label %bb.gq unwind label %bb.dx, !noalias !29341

bb.dz:                                            ; preds = %bb.dw, %._crit_edge.thread.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !29343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !29336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.sroa.5203.0.copyload = load ptr, ptr %.sroa.4284.0..sroa_idx, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %.idx546 = shl nuw nsw i64 %.val91, 5
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.5203.0.copyload, i64 %.idx546 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 290
  store i8 0, ptr %i.nh, align 2
  %.sroa.0205.0.copyload = load i64, ptr %1, align 8 ; 5 uses
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5206.0.copyload = load ptr, ptr %.sroa.5206.0..sroa_idx, align 8, !nonnull !62, !noundef !62 ; 6 uses
  %.sroa.6207.0.copyload = load i64, ptr %i.mc, align 8 ; 2 uses
  %i.ni = icmp ult i64 %.sroa.6207.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.ni)
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5206.0.copyload, i64 %.sroa.6207.0.copyload ; 3 uses
  %.sroa.9197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9197.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %.sroa.5203.0.copyload, ptr %i.ah, align 8
  %.sroa.0192.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %.sroa.0192.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.me, ptr %.sroa.0192.sroa.6.0..sroa_idx, align 8
  %.sroa.0192.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ng, ptr %.sroa.0192.sroa.7.0..sroa_idx, align 8
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %.sroa.5206.0.copyload, ptr %.sroa.5193.0..sroa_idx, align 8
  %.sroa.6194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 4 uses
  %.sroa.7195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i64 %.sroa.0205.0.copyload, ptr %.sroa.7195.0..sroa_idx, align 8
  %.sroa.8196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store ptr %i.nj, ptr %.sroa.8196.0..sroa_idx, align 8
  %i.nk = icmp eq i64 %.val91, 0
  br i1 %i.nk, label %.loopexit376, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i.lr.ph

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i.lr.ph: ; preds = %bb.dz
  %i.nl = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val95 = load i64, ptr %i.nl, align 8          ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.val94 = load ptr, ptr %i.nm, align 8, !nonnull !62
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i.lr.ph, %bb.gn
  %i.nn = phi ptr [ %.sroa.5203.0.copyload, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i.lr.ph ], [ %i.np, %bb.gn ] ; 5 uses
  %i.no = phi ptr [ %.sroa.5206.0.copyload, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i.lr.ph ], [ %i.nu, %bb.gn ] ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 32 ; 6 uses
  %.sroa.018.0.copyload19.i.i = load ptr, ptr %i.nn, align 8, !noalias !29344 ; 5 uses
  %.sroa.720.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %.sroa.720.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.720.0..sroa_idx21.i.i, align 8, !noalias !29344 ; 4 uses
  %.sroa.720.sroa.5.0..sroa.720.0..sroa_idx21.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %.sroa.720.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.720.sroa.5.0..sroa.720.0..sroa_idx21.sroa_idx.i.i, align 8, !noalias !29344 ; 4 uses
  %.sroa.720.sroa.6.0..sroa.720.0..sroa_idx21.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %.sroa.720.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.720.sroa.6.0..sroa.720.0..sroa_idx21.sroa_idx.i.i, align 8, !noalias !29344 ; 4 uses
  %.not.i.i108 = icmp eq ptr %.sroa.018.0.copyload19.i.i, null
  br i1 %.not.i.i108, label %.loopexit376, label %bb.ea

bb.ea:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.nq = icmp eq ptr %i.no, %i.nj
  br i1 %i.nq, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  store ptr %i.np, ptr %.sroa.0192.sroa.5.0..sroa_idx, align 8
  store ptr %i.nj, ptr %.sroa.6194.0..sroa_idx, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload19.i.i, i64 32
  %i.ns = load ptr, ptr %i.nr, align 8, !noalias !29345, !nonnull !62, !noundef !62
  invoke void %i.ns(ptr noundef %.sroa.720.sroa.6.0.copyload.i.i, ptr noundef %.sroa.720.sroa.0.0.copyload.i.i, i64 noundef %.sroa.720.sroa.5.0.copyload.i.i)
          to label %bb.ef unwind label %bb.ec, !inline_history !29153

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit158: ; preds = %bb.gl, %bb.go, %bb.ec
  %.pn47.pn = phi { ptr, i32 } [ %i.nt, %bb.ec ], [ %i.tz, %bb.go ], [ %i.tq, %bb.gl ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEIB1a_jEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(80) %i.ah) #50
          to label %.body113 unwind label %bb.fw

bb.ec:                                            ; preds = %bb.eb
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit158

bb.ed:                                            ; preds = %bb.ea
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 4 uses
  %i.nv = load i64, ptr %i.no, align 8, !noalias !29346, !noundef !62 ; 3 uses
  %i.nw = icmp ult i64 %i.nv, %.val95
  br i1 %i.nw, label %bb.gj, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  store ptr %i.np, ptr %.sroa.0192.sroa.5.0..sroa_idx, align 8
  store ptr %i.nu, ptr %.sroa.6194.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.nv, i64 noundef range(i64 0, 384307168202282326) %.val95, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @626) #49
          to label %.noexc111 unwind label %bb.go

.noexc111:                                        ; preds = %bb.ee
  unreachable

.loopexit376:                                     ; preds = %bb.gn, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.dz
  %.lcssa504 = phi ptr [ %.sroa.5206.0.copyload, %bb.dz ], [ %i.nu, %bb.gn ], [ %i.no, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i ]
  %i.nx = phi ptr [ %.sroa.5203.0.copyload, %bb.dz ], [ %i.ng, %bb.gn ], [ %i.np, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i ]
  store ptr %i.nx, ptr %.sroa.0192.sroa.5.0..sroa_idx, align 8
  store ptr %.lcssa504, ptr %.sroa.6194.0..sroa_idx, align 8
  br label %bb.ef

bb.ef:                                            ; preds = %.loopexit376, %bb.eb
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.ah)
          to label %bb.ei unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ny = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nz = icmp eq i64 %.sroa.0205.0.copyload, 0
  br i1 %i.nz, label %.body113, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.oa = shl nuw i64 %.sroa.0205.0.copyload, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5206.0.copyload, i64 noundef %i.oa, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !29347
  br label %.body113

bb.ei:                                            ; preds = %bb.ef
  %i.ob = icmp eq i64 %.sroa.0205.0.copyload, 0
  br i1 %i.ob, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.oc = shl nuw i64 %.sroa.0205.0.copyload, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5206.0.copyload, i64 noundef %i.oc, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !29348
  br label %bb.ek

.body113:                                         ; preds = %bb.eh, %bb.eg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit158
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit158 ], [ %i.ny, %bb.eg ], [ %i.ny, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.gp

bb.ek:                                            ; preds = %bb.ei, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %.val83 = load i64, ptr %i.ml, align 8, !noundef !62 ; 5 uses
  %i.od = icmp ult i64 %.val83, 576460752303423488
  call void @llvm.assume(i1 %i.od)
  call void @llvm.experimental.noalias.scope.decl(metadata !29349)
  %i.oe = shl nuw nsw i64 %.val83, 5              ; 2 uses
  %.not.i.i.i115 = icmp samesign ugt i64 %.val83, 288230376151711743
  br i1 %.not.i.i.i115, label %bb.en, label %bb.el, !prof !86

bb.el:                                            ; preds = %bb.ek
  %i.of = icmp eq i64 %.val83, 0
  br i1 %i.of, label %bb.eo, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !29350
  %i.og = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.oe, i64 noundef range(i64 1, 9) 8) #44, !noalias !29350 ; 2 uses
  %i.oh = icmp eq ptr %i.og, null
  br i1 %i.oh, label %bb.en, label %._crit_edge713

._crit_edge713:                                   ; preds = %bb.em
  %.val97.pre = load i64, ptr %i.ml, align 8
  br label %bb.eo

bb.en:                                            ; preds = %bb.em, %bb.ek
  %.sroa.10.0.ph.i.i = phi i64 [ %i.oe, %bb.em ], [ undef, %bb.ek ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.em ], [ 0, %bb.ek ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #49
          to label %.noexc116 unwind label %.thread354

.noexc116:                                        ; preds = %bb.en
  unreachable

.thread354:                                       ; preds = %bb.en
  %i.oi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.gp

bb.eo:                                            ; preds = %._crit_edge713, %bb.el
  %.val97 = phi i64 [ 0, %bb.el ], [ %.val97.pre, %._crit_edge713 ] ; 2 uses
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.el ], [ %i.og, %._crit_edge713 ]
  store i64 %.val83, ptr %i.ag, align 8, !alias.scope !29349
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 5 uses
  store ptr %.sroa.10.0.i.i, ptr %i.oj, align 8, !alias.scope !29349
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 7 uses
  store i64 0, ptr %i.ok, align 8, !alias.scope !29349
  %i.ol = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %.val96 = load ptr, ptr %i.ol, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %.idx547 = shl i64 %.val97, 4
  %i.om = getelementptr i8, ptr %.val96, i64 %.idx547 ; 3 uses
  %.sroa.0234.0.copyload = load i64, ptr %i.aj, align 8
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.5235.0.copyload = load ptr, ptr %.sroa.5235.0..sroa_idx, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %.sroa.6236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.6236.0.copyload = load i64, ptr %.sroa.6236.0..sroa_idx, align 8 ; 3 uses
  %i.on = icmp ult i64 %.sroa.6236.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.on)
  %i.oo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5235.0.copyload, i64 %.sroa.6236.0.copyload ; 3 uses
  %.sroa.11233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11233.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.6228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.om, ptr %.sroa.6228.0..sroa_idx, align 8
  %.sroa.7229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %.sroa.5235.0.copyload, ptr %.sroa.7229.0..sroa_idx, align 8
  %.sroa.8230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 12 uses
  %.sroa.9231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i64 %.sroa.0234.0.copyload, ptr %.sroa.9231.0..sroa_idx, align 8
  %.sroa.10232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %i.oo, ptr %.sroa.10232.0..sroa_idx, align 8
  %i.op = icmp eq i64 %.val97, 0
  br i1 %i.op, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.eo
  %.sroa.11239.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.or = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.7257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ot = shl nuw nsw i64 %.sroa.6236.0.copyload, 4
  %i.ou = getelementptr i8, ptr %.val96, i64 %i.ot
  %scevgep = getelementptr i8, ptr %i.ou, i64 16
  br label %bb.ep

bb.ep:                                            ; preds = %.lr.ph, %.backedge
  %i.ov = phi ptr [ %.val96, %.lr.ph ], [ %i.ox, %.backedge ] ; 5 uses
  %i.ow = phi ptr [ %.sroa.5235.0.copyload, %.lr.ph ], [ %i.oz, %.backedge ] ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 16 ; 14 uses
  %i.oy = icmp eq ptr %i.ow, %i.oo
  br i1 %i.oy, label %._crit_edge, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.ep
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 24 ; 14 uses
  %.sroa.0.0.copyload7.i.i = load i64, ptr %i.ow, align 8, !noalias !29351 ; 3 uses
  %.not6.i.i = icmp eq i64 %.sroa.0.0.copyload7.i.i, -1
  br i1 %.not6.i.i, label %._crit_edge, label %bb.et

._crit_edge:                                      ; preds = %bb.ep, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i, %.backedge, %bb.eo
  %i.pa = phi ptr [ %.sroa.5235.0.copyload, %bb.eo ], [ %i.oo, %bb.ep ], [ %i.oz, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i ], [ %i.oz, %.backedge ]
  %i.pb = phi ptr [ %.val96, %bb.eo ], [ %scevgep, %bb.ep ], [ %i.ox, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i ], [ %i.om, %.backedge ]
  store ptr %i.pb, ptr %i.af, align 8
  store ptr %i.pa, ptr %.sroa.8230.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterINtNtNtB4_3ops5range5RangeyEEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB27_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(64) %i.af)
          to label %bb.es unwind label %bb.er

bb.eq:                                            ; preds = %bb.er, %bb.gc
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41, %bb.gc ], [ %i.pc, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #50
          to label %.thread373.sink.split unwind label %bb.fw

bb.er:                                            ; preds = %bb.gd, %._crit_edge
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.es:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.sroa.0279.0.copyload = load ptr, ptr %i.ag, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13276, ptr noundef nonnull align 8 dereferenceable(16) %i.oj, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %.val81 = load i64, ptr %i.mk, align 8          ; 2 uses
  %i.pd = icmp eq i64 %.val81, 0
  br i1 %i.pd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit167: ; preds = %bb.ha, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit168
  store i8 2, ptr %i.ap, align 1
  resume { ptr, i32 } %.pn65.pn

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.sink.split: ; preds = %bb.es, %bb.gx
  %.val79.sink = phi i64 [ %.val79, %bb.gx ], [ %.val81, %bb.es ]
  %.val80.sink.in = phi ptr [ %i.un, %bb.gx ], [ %i.ol, %bb.es ]
  %.sroa.9274.1.ph = phi ptr [ %.sroa.9274.2, %bb.gx ], [ %.sroa.0279.0.copyload, %bb.es ]
  %.sroa.0272.1.ph = phi i8 [ %.sroa.0272.2, %bb.gx ], [ -1, %bb.es ]
  %.val80.sink = load ptr, ptr %.val80.sink.in, align 8, !nonnull !62, !noundef !62
  %i.pe = shl nuw i64 %.val79.sink, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val80.sink, i64 noundef %i.pe, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.sink.split, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit, %bb.es
  %.sroa.9274.1 = phi ptr [ %.sroa.9274.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit ], [ %.sroa.0279.0.copyload, %bb.es ], [ %.sroa.9274.1.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.sink.split ]
  %.sroa.0272.1 = phi i8 [ %.sroa.0272.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit ], [ -1, %bb.es ], [ %.sroa.0272.1.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.sink.split ]
  store i8 %.sroa.0272.1, ptr %0, align 8
  %.sroa.6273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6273.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6273, i64 7, i1 false)
  %.sroa.9274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9274.1, ptr %.sroa.9274.0..sroa_idx, align 8
  %.sroa.13276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13276, i64 40, i1 false)
  br label %common.ret

bb.et:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.7.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11239.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i, i64 16, i1 false)
  store i64 %.sroa.0.0.copyload7.i.i, ptr %i.ae, align 8
  %.val98 = load i64, ptr %i.oq, align 8, !noundef !62 ; 6 uses
  %i.pf = icmp ult i64 %.val98, 288230376151711744
  call void @llvm.assume(i1 %i.pf)
  switch i64 %.val98, label %bb.fc [
    i64 0, label %bb.eu
    i64 1, label %bb.ev
  ]

bb.eu:                                            ; preds = %bb.et
  %i.pg = load i64, ptr %i.ov, align 8, !noundef !62
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.pi = load i64, ptr %i.ph, align 8, !noundef !62
  %i.pj = icmp eq i64 %i.pg, %i.pi
  br i1 %i.pj, label %bb.gf, label %bb.fz

bb.ev:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %.val85 = load ptr, ptr %.sroa.11239.8..sroa_idx, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.pk = load ptr, ptr %.val85, align 8, !noalias !29352, !nonnull !62, !align !63, !noundef !62
  %i.pl = load ptr, ptr %i.pk, align 8, !noalias !29352, !nonnull !62, !noundef !62
  %i.pm = getelementptr inbounds nuw i8, ptr %.val85, i64 24
  %i.pn = getelementptr inbounds nuw i8, ptr %.val85, i64 8
  %i.po = load ptr, ptr %i.pn, align 8, !noalias !29352, !noundef !62
  %i.pp = getelementptr inbounds nuw i8, ptr %.val85, i64 16
  %i.pq = load i64, ptr %i.pp, align 8, !noalias !29352, !noundef !62
  invoke void %i.pl(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ab, ptr noundef nonnull align 8 %i.pm, ptr noundef %i.po, i64 noundef %i.pq)
          to label %_RNvXs2_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit unwind label %bb.ew, !inline_history !29176

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.ey, %bb.ew
  %eh.lpad-body128 = phi { ptr, i32 } [ %i.pr, %bb.ew ], [ %i.pv, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.thread341

bb.ew:                                            ; preds = %bb.ev
  %i.pr = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ox, ptr %i.af, align 8
  store ptr %i.oz, ptr %.sroa.8230.0..sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i.i

_RNvXs2_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit: ; preds = %bb.ev
  call void @llvm.experimental.noalias.scope.decl(metadata !29353)
  call void @llvm.experimental.noalias.scope.decl(metadata !29354)
  call void @llvm.experimental.noalias.scope.decl(metadata !29355)
  call void @llvm.experimental.noalias.scope.decl(metadata !29356)
  %i.ps = load i64, ptr %i.ok, align 8, !alias.scope !29357, !noalias !29358, !noundef !62 ; 3 uses
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statisticsNtB2_19StatisticsCollector7try_new:bb.a
  %.sroa.520.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 200 ; 2 uses
  %.sroa.9.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.i.i.i, %.loopexit76.i.i.i
  %.sroa.01.0.copyload.pre.i.i.i.i = phi i64 [ undef, %.loopexit76.i.i.i ], [ %.sroa.01.0.copyload.pre.i.i.pre.i.i, %.loopexit.i.i.i ]
  %.promoted.i.i.i.i = phi ptr [ %.sroa.421.0.copyload, %.loopexit76.i.i.i ], [ %.promoted.i.i.pre.i.i, %.loopexit.i.i.i ]
  %i.cl = phi ptr [ %i.cj, %.loopexit76.i.i.i ], [ %.pre.i.i, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx.promoted.i.i.i.i = phi i64 [ -2, %.loopexit76.i.i.i ], [ %.sroa.4.0..sroa_idx.promoted.i.i.pre.i.i, %.loopexit.i.i.i ]
  %.sroa.012.0.i.i = phi i64 [ 0, %.loopexit76.i.i.i ], [ %i.jy, %.loopexit.i.i.i ] ; 3 uses
  %.sroa.8.0.i.i = phi i64 [ 0, %.loopexit76.i.i.i ], [ %.sroa.8.2.i.i, %.loopexit.i.i.i ] ; 8 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ce, %.loopexit76.i.i.i ], [ %.sroa.0.2.i.i, %.loopexit.i.i.i ] ; 10 uses
  %.sroa.0.065.i.i.i = phi ptr [ %i.ce, %.loopexit76.i.i.i ], [ %.sroa.0.1.i.i.i, %.loopexit.i.i.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31345)
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc.i.i.i, %bb.ag
  %.sroa.01.0.copyload.i.i.i.i = phi i64 [ %.sroa.0.0.copyload8.i.i.i.i.i, %.noexc.i.i.i ], [ %.sroa.01.0.copyload.pre.i.i.i.i, %bb.ag ]
  %i.cm = phi ptr [ %i.cs, %.noexc.i.i.i ], [ %.promoted.i.i.i.i, %bb.ag ] ; 6 uses
  %.sroa.4.0.copyload10.i39.i.i.i.i = phi i64 [ %.sroa.4.0.copyload10.i.i.i.i.i, %.noexc.i.i.i ], [ %.sroa.4.0..sroa_idx.promoted.i.i.i.i, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !31346
  store i64 -2, ptr %.sroa.3.0..sroa_idx98.i.i, align 8, !alias.scope !31345, !noalias !31347
  %.not.i.i.i2.i = icmp eq i64 %.sroa.4.0.copyload10.i39.i.i.i.i, -2
  br i1 %.not.i.i.i2.i, label %bb.ai, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB21_.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !31348)
  %i.cn = icmp eq ptr %i.cm, %i.cl
  br i1 %i.cn, label %.noexc4.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 360 ; 2 uses
  store ptr %i.co, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !31349, !noalias !31350
  %.sroa.0.0.copyload13.i.i.i.i = load i64, ptr %i.cm, align 8, !noalias !31351
  %.sroa.6.0..sroa_idx14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.6.0.copyload15.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx14.i.i.i.i, align 8, !noalias !31351
  %.sroa.9.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  br label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB21_.exit.i.i.i.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB21_.exit.i.i.i.i: ; preds = %bb.aj, %bb.ah
  %.sroa.9.0..sroa_idx16.sink.i.i.i.i = phi ptr [ %.sroa.9.0..sroa_idx16.i.i.i.i, %bb.aj ], [ %.sroa.4.0..sroa_idx.i.i, %bb.ah ]
  %i.cp = phi ptr [ %i.co, %bb.aj ], [ %i.cm, %bb.ah ] ; 5 uses
  %.sroa.6.0.i.i.i.i = phi i64 [ %.sroa.6.0.copyload15.i.i.i.i, %bb.aj ], [ %.sroa.4.0.copyload10.i39.i.i.i.i, %bb.ah ] ; 3 uses
  %.sroa.0.0.i.i.i3.i = phi i64 [ %.sroa.0.0.copyload13.i.i.i.i, %bb.aj ], [ %.sroa.01.0.copyload.i.i.i.i, %bb.ah ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i64 %.sroa.6.0.i.i.i.i, -1
  br i1 %.not10.i.i.i.i, label %.noexc4.i.i, label %bb.ak

bb.ak:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB21_.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.520.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.9.0..sroa_idx16.sink.i.i.i.i, i64 344, i1 false), !noalias !31343
  store i64 %.sroa.0.0.i.i.i3.i, ptr %i.e, align 8, !noalias !31346
  store i64 %.sroa.6.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx18.i.i.i.i, align 8, !noalias !31346
  call void @llvm.experimental.noalias.scope.decl(metadata !31352)
  call void @llvm.experimental.noalias.scope.decl(metadata !31353)
  call void @llvm.experimental.noalias.scope.decl(metadata !31354)
  call void @llvm.experimental.noalias.scope.decl(metadata !31355)
  %i.cq = icmp eq ptr %i.cp, %i.cl
  %i.cr = trunc i64 %.sroa.0.0.i.i.i3.i to i32    ; 3 uses
  br i1 %i.cq, label %.thread.i.i.i.i, label %bb.al

.thread.i.i.i.i:                                  ; preds = %bb.ak
  store i64 -1, ptr %.sroa.3.0..sroa_idx98.i.i, align 8, !alias.scope !31356, !noalias !31357
  br label %.loopexit28.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 360 ; 2 uses
  store ptr %i.cs, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !31358, !noalias !31359
  %.sroa.0.0.copyload8.i.i.i.i.i = load i64, ptr %i.cp, align 8, !noalias !31360 ; 3 uses
  %.sroa.4.0..sroa_idx9.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.4.0.copyload10.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx9.i.i.i.i.i, align 8, !noalias !31360 ; 4 uses
  %.sroa.5.0..sroa_idx11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %.sroa.0.0.copyload8.i.i.i.i.i, ptr %i.i, align 8, !alias.scope !31356, !noalias !31357
  store i64 %.sroa.4.0.copyload10.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx98.i.i, align 8, !alias.scope !31356, !noalias !31357
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.5.0..sroa_idx11.i.i.i.i.i, i64 344, i1 false), !noalias !31347
  %i.ct = icmp ne i64 %.sroa.4.0.copyload10.i.i.i.i.i, -2
  call void @llvm.assume(i1 %i.ct)
  %.not11.i.i.i.i = icmp ne i64 %.sroa.4.0.copyload10.i.i.i.i.i, -1
  %i.cu = trunc i64 %.sroa.0.0.copyload8.i.i.i.i.i to i32
  %.not27.i.i.i.i = icmp eq i32 %i.cr, %i.cu
  %or.cond.i.i.i = select i1 %.not11.i.i.i.i, i1 %.not27.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.am, label %.loopexit28.i.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(352) %.sroa.4.0..sroa_idx18.i.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i.i.i unwind label %bb.an, !noalias !31346

bb.an:                                            ; preds = %bb.am
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEBL_(ptr noalias noundef align 8 dereferenceable(160) %i.ck) #50
          to label %.body.i.i.i unwind label %bb.ao, !noalias !31346

bb.ao:                                            ; preds = %bb.an
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !31346
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i.i.i: ; preds = %bb.am
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEBL_(ptr noalias noundef align 8 dereferenceable(160) %i.ck)
          to label %.noexc.i.i.i unwind label %bb.ap, !noalias !31343

.noexc.i.i.i:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31346
  br label %bb.ah

.body.i.i.i:                                      ; preds = %bb.bi, %bb.bd, %bb.ap, %bb.an
  %.pn.i.i.i = phi { ptr, i32 } [ %i.kn, %bb.bi ], [ %i.cv, %bb.an ], [ %i.cx, %bb.ap ], [ %i.gv, %bb.bd ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEINtNtNtBK_3vec9into_iter8IntoIterTlB1Y_EEEEB31_(ptr noalias noundef align 8 dereferenceable(392) %i.i) #50
          to label %common.resume unwind label %bb.bj, !noalias !31343

bb.ap:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit28.i.i.i.i:                              ; preds = %bb.al, %.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !31343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.9.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.520.0..sroa_idx.i.i.i.i, i64 344, i1 false), !noalias !31343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31346
  store i64 %.sroa.6.0.i.i.i.i, ptr %i.h, align 8, !noalias !31343
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.065.i.i.i, i64 3926 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !noalias !31343, !noundef !62 ; 3 uses
  %i.da = icmp ult i16 %i.cz, 11
  br i1 %i.da, label %bb.bh, label %.preheader.i.i.i

.noexc4.i.i:                                      ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB21_.exit.i.i.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31346
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEINtNtNtBK_3vec9into_iter8IntoIterTlB1Y_EEEEB31_(ptr noalias noundef align 8 dereferenceable(392) %i.i), !noalias !31311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !31343
  %i.db = icmp eq i64 %.sroa.8.0.i.i, 0
  br i1 %i.db, label %_RINvXs1o_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB7_8BTreeMaplTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTlB1a_EE9from_iterINtNtNtB3A_8adapters3map3MapINtNtB4Q_6filter6FilterINtNtNtB3A_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB6y_s_0EEB2d_.exit, label %.lr.ph.i16.i.i.i

.lr.ph.i16.i.i.i:                                 ; preds = %.noexc4.i.i
  %.sroa.4.8..sroa_idx20.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 4 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE15bulk_steal_leftB2m_.exit.i.i.i.i, %.lr.ph.i16.i.i.i
  %.sroa.01.010.i.i.i.i = phi i64 [ %.sroa.8.0.i.i, %.lr.ph.i16.i.i.i ], [ %i.dj, %_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE15bulk_steal_leftB2m_.exit.i.i.i.i ]
  %.sroa.03.09.i.i.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i16.i.i.i ], [ %i.dm, %_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE15bulk_steal_leftB2m_.exit.i.i.i.i ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 3926
  %i.dd = load i16, ptr %i.dc, align 2, !noalias !31343, !noundef !62 ; 3 uses
  %.not.i17.i.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i17.i.i.i, label %.noexc18.i.i.i, label %bb.ar, !prof !61

.noexc18.i.i.i:                                   ; preds = %bb.aq
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @671, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @672) #49, !noalias !31311
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.de = zext nneg i16 %i.dd to i64
  %i.df = add nsw i64 %i.de, -1                   ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 3928
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.df ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !31361, !nonnull !62, !noundef !62 ; 5 uses
  %i.dj = add i64 %.sroa.01.010.i.i.i.i, -1       ; 3 uses
  %i.dk = icmp ult i16 %i.dd, 12
  call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !31361, !nonnull !62, !noundef !62 ; 19 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 3926 ; 2 uses
  %i.do = load i16, ptr %i.dn, align 2, !noalias !31343, !noundef !62 ; 3 uses
  %i.dp = icmp ult i16 %i.do, 5
  br i1 %i.dp, label %bb.as, label %_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE15bulk_steal_leftB2m_.exit.i.i.i.i

_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE15bulk_steal_leftB2m_.exit.i.i.i.i: ; preds = %_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE15bulk_steal_leftB2m_.exit.loopexit.i.i.i.i, %bb.ar
  %i.dq = icmp eq i64 %i.dj, 0
  br i1 %i.dq, label %_RINvXs1o_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB7_8BTreeMaplTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTlB1a_EE9from_iterINtNtNtB3A_8adapters3map3MapINtNtB4Q_6filter6FilterINtNtNtB3A_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB6y_s_0EEB2d_.exit, label %bb.aq

bb.as:                                            ; preds = %bb.ar
  %narrow.i.i.i.i = sub nuw nsw i16 5, %i.do      ; 2 uses
  %i.dr = zext nneg i16 %narrow.i.i.i.i to i64    ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 3926 ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 2, !noalias !31362, !noundef !62 ; 2 uses
  %i.du = zext nneg i16 %i.do to i64              ; 3 uses
  %.not.i.i.i.i4.i = icmp ugt i16 %narrow.i.i.i.i, %i.dt
  br i1 %.not.i.i.i.i4.i, label %.noexc19.i.i.i, label %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node13move_to_sliceTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEB28_.exit.i.i.i.i.i, !prof !61

.noexc19.i.i.i:                                   ; preds = %bb.as
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @678, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @679) #49, !noalias !31311
  unreachable

_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node13move_to_sliceTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEB28_.exit.i.i.i.i.i: ; preds = %bb.as
  %i.dv = zext i16 %i.dt to i64                   ; 2 uses
  %i.dw = sub nuw nsw i64 %i.dv, %i.dr            ; 4 uses
  %i.dx = trunc nuw i64 %i.dw to i16
  store i16 %i.dx, ptr %i.ds, align 2, !noalias !31362
  store i16 5, ptr %i.dn, align 2, !noalias !31362
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 3880 ; 4 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dr
  %i.ea = shl nuw nsw i64 %i.du, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dz, ptr nonnull align 4 %i.dy, i64 %i.ea, i1 false), !alias.scope !31363, !noalias !31362
  %i.eb = getelementptr inbounds nuw [352 x i8], ptr %i.dm, i64 %i.dr
  %i.ec = mul nuw nsw i64 %i.du, 352
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr nonnull align 8 %i.dm, i64 %i.ec, i1 false), !alias.scope !31364, !noalias !31362
  %i.ed = add nuw nsw i64 %i.dw, 1                ; 4 uses
  %i.ee = sub nuw nsw i64 %i.dv, %i.ed            ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.di, i64 3880 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ed
  %i.eh = shl nuw nsw i64 %i.ee, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr nonnull readonly align 4 %i.eg, i64 %i.eh, i1 false), !alias.scope !31365, !noalias !31362
  %i.ei = getelementptr inbounds nuw [352 x i8], ptr %i.di, i64 %i.ed
  %i.ej = mul nuw nsw i64 %i.ee, 352
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr nonnull readonly align 8 %i.ei, i64 %i.ej, i1 false), !alias.scope !31366, !noalias !31362
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.dw
  %i.el = load i32, ptr %i.ek, align 4, !noalias !31362, !noundef !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.em = getelementptr inbounds nuw [352 x i8], ptr %i.di, i64 %i.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.d, ptr noundef nonnull align 8 dereferenceable(352) %i.em, i64 352, i1 false), !noalias !31362
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i, i64 3880
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.df ; 2 uses
  %i.ep = getelementptr inbounds nuw [352 x i8], ptr %.sroa.03.09.i.i.i.i, i64 %i.df ; 2 uses
  %i.eq = load i32, ptr %i.eo, align 4, !noalias !31367, !noundef !62
  store i32 %i.el, ptr %i.eo, align 4, !noalias !31367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(352) %.sroa.4.8..sroa_idx20.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(352) %i.ep, i64 352, i1 false), !noalias !31368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.ep, ptr noundef nonnull readonly align 8 dereferenceable(352) %i.d, i64 352, i1 false), !noalias !31369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.c, ptr noundef nonnull align 4 dereferenceable(352) %.sroa.4.8..sroa_idx20.i.i.i.i.i, i64 352, i1 false), !noalias !31362
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ee
  store i32 %i.eq, ptr %i.er, align 4, !noalias !31362
  %i.es = getelementptr inbounds nuw [352 x i8], ptr %i.dm, i64 %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.es, ptr noundef nonnull align 8 dereferenceable(352) %i.c, i64 352, i1 false), !noalias !31362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %cond.i.i.i.i = icmp eq i64 %i.dj, 0
  br i1 %cond.i.i.i.i, label %_RINvXs1o_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB7_8BTreeMaplTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorTlB1a_EE9from_iterINtNtNtB3A_8adapters3map3MapINtNtB4Q_6filter6FilterINtNtNtB3A_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB6y_s_0EEB2d_.exit, label %_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE15bulk_steal_leftB2m_.exit.loopexit.i.i.i.i

_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE15bulk_steal_leftB2m_.exit.loopexit.i.i.i.i: ; preds = %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node13move_to_sliceTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEB28_.exit.i.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.dm, i64 3928 ; 4 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.dr
  %i.ev = shl nuw nsw i64 %i.du, 3
  %i.ew = add nuw nsw i64 %i.ev, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eu, ptr noundef nonnull align 8 dereferenceable(1) %i.et, i64 %i.ew, i1 false), !alias.scope !31370, !noalias !31362
  %i.ex = getelementptr inbounds nuw i8, ptr %i.di, i64 3928
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ed
  %i.ez = shl nuw nsw i64 %i.dr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.et, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ey, i64 %i.ez, i1 false), !alias.scope !31371, !noalias !31362
  %i.fa = load ptr, ptr %i.et, align 8, !noalias !31362, !nonnull !62, !noundef !62 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 3872
  store ptr %i.dm, ptr %i.fb, align 8, !noalias !31362
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 3924
  store i16 0, ptr %i.fc, align 4, !noalias !31362
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dm, i64 3936
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !31362, !nonnull !62, !noundef !62 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 3872
  store ptr %i.dm, ptr %i.ff, align 8, !noalias !31362
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 3924
  store i16 1, ptr %i.fg, align 4, !noalias !31362
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dm, i64 3944
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !31362, !nonnull !62, !noundef !62 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 3872
  store ptr %i.dm, ptr %i.fj, align 8, !noalias !31362
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 3924
  store i16 2, ptr %i.fk, align 4, !noalias !31362
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dm, i64 3952
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !31362, !nonnull !62, !noundef !62 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 3872
  store ptr %i.dm, ptr %i.fn, align 8, !noalias !31362
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 3924
  store i16 3, ptr %i.fo, align 4, !noalias !31362
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dm, i64 3960
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !31362, !nonnull !62, !noundef !62 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 3872
  store ptr %i.dm, ptr %i.fr, align 8, !noalias !31362
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 3924
  store i16 4, ptr %i.fs, align 4, !noalias !31362
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dm, i64 3968
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !31362, !nonnull !62, !noundef !62 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 3872
  store ptr %i.dm, ptr %i.fv, align 8, !noalias !31362
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 3924
  store i16 5, ptr %i.fw, align 4, !noalias !31362
  br label %_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE15bulk_steal_leftB2m_.exit.i.i.i.i

.preheader.i.i.i:                                 ; preds = %.loopexit28.i.i.i.i, %bb.at
  %.sroa.3.0.i.i.i = phi i64 [ %i.fz, %bb.at ], [ 0, %.loopexit28.i.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.fy, %bb.at ], [ %.sroa.0.065.i.i.i, %.loopexit28.i.i.i.i ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 3872
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !31372, !noundef !62 ; 4 uses
  %.not.i22.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i22.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.preheader.i.i.i
  %i.fz = add i64 %.sroa.3.0.i.i.i, 1             ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 3926
  %i.gb = load i16, ptr %i.ga, align 2, !noalias !31343, !noundef !62
  %i.gc = icmp ult i16 %i.gb, 11
  br i1 %i.gc, label %.loopexit75.i.i.i, label %.preheader.i.i.i

bb.au:                                            ; preds = %.preheader.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !31373
  %i.gd = call noalias noundef align 8 dereferenceable_or_null(4024) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4024, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !31373 ; 8 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.av, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodelTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE13new_uninit_inB2y_.exit.i.i.i.i.i.i.i, !prof !61

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 4024) #49
          to label %.noexc.i.i.i.i unwind label %bb.az, !noalias !31373

.noexc.i.i.i.i:                                   ; preds = %bb.av
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodelTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE13new_uninit_inB2y_.exit.i.i.i.i.i.i.i: ; preds = %bb.au
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 3872
  store ptr null, ptr %i.gf, align 8, !noalias !31373
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 3926
  store i16 0, ptr %i.gg, align 2, !noalias !31373
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 3928
  store ptr %.sroa.0.0.i.i, ptr %i.gh, align 8, !noalias !31373
  %i.gi = add i64 %.sroa.8.0.i.i, 1               ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aw, label %bb.ba, !prof !61

bb.aw:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodelTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE13new_uninit_inB2y_.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #49
          to label %bb.ax unwind label %bb.ay, !noalias !31373

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gd, i64 noundef 4024, i64 noundef 8) #44, !noalias !31373
  br label %.body.i.i.i.i

bb.az:                                            ; preds = %bb.av
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.az, %bb.ay
  call void @llvm.trap()
  unreachable

bb.ba:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodelTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE13new_uninit_inB2y_.exit.i.i.i.i.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 3872
  store ptr %i.gd, ptr %i.gl, align 8, !noalias !31374
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 3924
  store i16 0, ptr %i.gm, align 4, !noalias !31375
  br label %.loopexit75.i.i.i

.loopexit75.i.i.i:                                ; preds = %bb.at, %bb.ba
  %.sroa.8.1.i.i = phi i64 [ %i.gi, %bb.ba ], [ %.sroa.8.0.i.i, %bb.at ] ; 3 uses
  %.sroa.0.1.i.i = phi ptr [ %i.gd, %bb.ba ], [ %.sroa.0.0.i.i, %bb.at ] ; 3 uses
  %.sroa.650.0.i.i.i = phi i64 [ %i.gi, %bb.ba ], [ %i.fz, %bb.at ] ; 6 uses
  %.sroa.049.0.i.i.i = phi ptr [ %i.gd, %bb.ba ], [ %i.fy, %bb.at ] ; 8 uses
  %i.gn = add i64 %.sroa.650.0.i.i.i, -1          ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !31343
  %i.go = call noalias noundef align 8 dereferenceable_or_null(3928) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 3928, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !31343 ; 5 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.bb, label %bb.bc, !prof !61

bb.bb:                                            ; preds = %.loopexit75.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 3928) #49
          to label %.noexc23.i.i.i unwind label %bb.bi, !noalias !31343

.noexc23.i.i.i:                                   ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %.loopexit75.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 3872
  store ptr null, ptr %i.gq, align 8, !noalias !31343
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 3926
  store i16 0, ptr %i.gr, align 2, !noalias !31343
  %.not.i.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not.i.i.i, label %.loopexit137.i.i.i, label %.lr.ph.i.i.i

.invoke.i.i.i.i:                                  ; preds = %.loopexit137.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @772, i64 noundef 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @775) #49
          to label %.cont.i.i.i.i unwind label %bb.bd, !noalias !31376

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

.loopexit137.i.i.i:                               ; preds = %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderENtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB2H_.exit36.i.i.i, %bb.bc
  %.sroa.055.0.lcssa.i.i.i = phi ptr [ %i.go, %bb.bc ], [ %i.jz, %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderENtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB2H_.exit36.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !31343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.f, ptr noundef nonnull align 8 dereferenceable(352) %i.h, i64 352, i1 false), !noalias !31343
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.049.0.i.i.i, i64 3926 ; 2 uses
  %i.gt = load i16, ptr %i.gs, align 2, !noalias !31376, !noundef !62 ; 3 uses
  %i.gu = icmp ult i16 %i.gt, 11
  br i1 %i.gu, label %bb.bf, label %.invoke.i.i.i.i, !prof !71

bb.bd:                                            ; preds = %.invoke.i.i.i.i
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEB1E_(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.f) #50
          to label %.body.i.i.i unwind label %bb.be, !noalias !31343

bb.be:                                            ; preds = %bb.bd
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !31343
  unreachable

bb.bf:                                            ; preds = %.loopexit137.i.i.i
  %i.gx = zext nneg i16 %i.gt to i64              ; 3 uses
end_hunk_2
begin_hunk_3_@_RNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural28projection_from_column_names:bb.a
  unreachable

.body.i:                                          ; preds = %bb.g, %bb.h
  %i.v = icmp eq i64 %i.d, 0
  br i1 %i.v, label %.body, label %bb.j

bb.j:                                             ; preds = %.body.i
  %i.w = mul nuw i64 %i.d, 192
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !38645, !inline_history !87
  br label %.body

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.f, %bb.e
  %i.x = icmp eq i64 %i.d, 0
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file.exit, label %bb.k

bb.k:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i
  %i.y = mul nuw i64 %i.d, 192
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !38645, !inline_history !87
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file.exit

common.resume:                                    ; preds = %bb.d, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %.body ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

.body:                                            ; preds = %.body.i, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.z)
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.k, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.aa)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsaSXGKSfiU2E_10lance_file6writer10structural17encode_batch_body(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [88 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [56 x i8], align 8                ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4234 = alloca [56 x i8], align 8         ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [56 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [96 x i8], align 8                ; 13 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [48 x i8], align 8                ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.7 = alloca [31 x i8], align 1            ; 6 uses
  %.sroa.619 = alloca [31 x i8], align 1          ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 11 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.6186 = alloca [56 x i8], align 8         ; 4 uses
  %.sroa.68 = alloca [56 x i8], align 8           ; 6 uses
  %i.z = alloca [80 x i8], align 8                ; 11 uses
  %i.aa = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %i.ab = alloca [72 x i8], align 8               ; 14 uses
  %i.ac = alloca [32 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !62
  %i.af = add i64 %i.ae, 1048576                  ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38723)
  %.not.i.i = icmp slt i64 %i.af, 0
  br i1 %.not.i.i, label %bb.e, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !38724
  %i.ah = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !38724 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = ptrtoint ptr %i.ah to i64
  %.pre = load i64, ptr %i.ad, align 8
  br label %_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.42.0.ph.i = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.42.0.ph.i, i64 %i.af) #49, !noalias !38723
  unreachable

_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit: ; preds = %bb.b, %bb.d
  %i.ak = phi i64 [ %.pre, %bb.d ], [ -1048576, %bb.b ] ; 6 uses
  %.sroa.10.0.i = phi i64 [ %i.aj, %bb.d ], [ 1, %bb.b ]
  %i.al = inttoptr i64 %.sroa.10.0.i to ptr       ; 2 uses
  %i.am = lshr i64 %i.af, 10
  %i.an = tail call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.am, i1 false)
  %i.ao = sub nuw nsw i64 64, %i.an
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 7)
  %i.ap = shl nuw nsw i64 %.sroa.0.0.i.i.i, 2
  %i.aq = getelementptr i8, ptr null, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  store ptr %i.al, ptr %i.ac, align 8, !alias.scope !38725, !noalias !38726
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 17 uses
  store i64 0, ptr %i.as, align 8, !alias.scope !38725, !noalias !38726
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 6 uses
  store i64 %i.af, ptr %i.at, align 8, !alias.scope !38725, !noalias !38726
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ar, ptr %i.au, align 8, !alias.scope !38725, !noalias !38726
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38727)
  %.not.i = icmp ugt i64 %i.ak, %i.af
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit
  %i.ax = invoke noundef zeroext i1 @_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.ak, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.i     ; 0 uses

.noexc:                                           ; preds = %bb.f
  %.pre.i = load i64, ptr %i.as, align 8, !alias.scope !38727, !noalias !38728
  %.pre384 = load ptr, ptr %i.ac, align 8, !alias.scope !38727, !noalias !38728
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit
  %i.ay = phi ptr [ %i.al, %_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit ], [ %.pre384, %.noexc ]
  %i.az = phi i64 [ 0, %_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit ], [ %.pre.i, %.noexc ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull readonly align 1 %i.aw, i64 range(i64 0, -9223372036854775808) %i.ak, i1 false)
  %i.bb = load i64, ptr %i.at, align 8, !alias.scope !38727, !noalias !38728, !noundef !62
  %i.bc = load i64, ptr %i.as, align 8, !alias.scope !38727, !noalias !38728, !noundef !62 ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = icmp ugt i64 %i.ak, %i.bd
  br i1 %i.be, label %bb.h, label %bb.j, !prof !61

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !38729
  store i64 %i.ak, ptr %i.k, align 8, !noalias !38729
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !noalias !38729
  invoke void @_RNvCs4XDKJNDGLq7_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k) #49
          to label %.noexc131 unwind label %bb.i

.noexc131:                                        ; preds = %bb.h
  unreachable

.body:                                            ; preds = %bb.cv, %bb.de, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyyEEECsaSXGKSfiU2E_10lance_file.exit167, %.body171, %.body180, %bb.i, %bb.s
  %.pn96 = phi { ptr, i32 } [ %.pn80, %bb.s ], [ %i.eh, %.body180 ], [ %.pn94238, %bb.de ], [ %i.cn, %.body171 ], [ %i.bg, %bb.i ], [ %.pn94238, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyyEEECsaSXGKSfiU2E_10lance_file.exit167 ], [ %i.jo, %bb.cv ]
  invoke void @_RNvXs0_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes9bytes_mut8BytesMutECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.cg

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.g
  %i.bh = add i64 %i.bc, %i.ak                    ; 3 uses
  store i64 %i.bh, ptr %i.as, align 8, !alias.scope !38727, !noalias !38728
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !62, !noundef !62
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  invoke void @_RNvXs9_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6SchemaINtNtCscI6d9CVNmLh_4core7convert7TryFromRBQ_E8try_from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bk)
          to label %bb.p unwind label %bb.i

bb.l:                                             ; preds = %bb.j, %bb.au
  %i.bl = phi i64 [ %.pre385, %bb.au ], [ %i.bh, %bb.j ]
  %.sroa.13.0 = phi i64 [ 1, %bb.au ], [ 0, %bb.j ] ; 4 uses
  %.sroa.8.0 = phi ptr [ %i.ds, %bb.au ], [ inttoptr (i64 8 to ptr), %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !62 ; 6 uses
  %i.bo = icmp ult i64 %i.bn, 1152921504606846976
  call void @llvm.assume(i1 %i.bo)
  %i.bp = shl nuw nsw i64 %i.bn, 4                ; 2 uses
  %.not.i133 = icmp samesign ugt i64 %i.bn, 576460752303423487
  br i1 %.not.i133, label %bb.av, label %bb.m, !prof !86

bb.m:                                             ; preds = %bb.l
  %i.bq = icmp eq i64 %i.bn, 0
  br i1 %i.bq, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !38730
  %i.br = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !38730 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.av, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = ptrtoint ptr %i.br to i64
  %.pre386 = load i64, ptr %i.bm, align 8
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit

bb.p:                                             ; preds = %bb.k
  %i.bu = load i64, ptr %i.aa, align 8, !range !64, !noundef !62 ; 10 uses
  %i.bv = icmp eq i64 %i.bu, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.bw, i64 56, i1 false)
  br i1 %i.bv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.df

bb.r:                                             ; preds = %bb.p
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %.sroa.561.0.copyload = load i64, ptr %.sroa.561.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store i64 %i.bu, ptr %i.ab, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store i64 %.sroa.561.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6186)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bz = load i64, ptr %i.by, align 8, !noundef !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4234)
  invoke void @_RNvXs4_NtCsaSXGKSfiU2E_10lance_file9datatypesNtB5_14FieldsWithMetaINtNtCscI6d9CVNmLh_4core7convert4FromRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ab)
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit, %bb.t
  %.pn80 = phi { ptr, i32 } [ %i.ca, %bb.t ], [ %.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(72) %i.ab) #50
          to label %.body unwind label %bb.cg

bb.t:                                             ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0233.0.copyload = load i64, ptr %i.j, align 8, !noalias !38731 ; 3 uses
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4234, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4234.0..sroa_idx, i64 16, i1 false), !noalias !38731
  %.sroa.4234.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4234, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4234.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.cb, i64 40, i1 false), !noalias !38731
  %.sroa.6235.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.6235.24.copyload = load i64, ptr %.sroa.6235.24..sroa_idx, align 8, !noalias !38731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6186, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4234, i64 56, i1 false), !noalias !38732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4234)
  %i.cc = icmp eq i64 %.sroa.0233.0.copyload, -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.68, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6186, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6186)
  br i1 %i.cc, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.68, i64 56, i1 false)
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !38733)
  %i.ce = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !38734, !nonnull !62, !noundef !62 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !38734, !noundef !62 ; 4 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph511

bb.w:                                             ; preds = %.lr.ph511
  %i.ci = icmp eq i64 %i.ck, %i.cg
  br i1 %i.ci, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph511

.lr.ph511:                                        ; preds = %bb.v, %bb.w
  %.sroa.0.0.i.i509 = phi i64 [ %i.ck, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [192 x i8], ptr %i.ce, i64 %.sroa.0.0.i.i509
  %i.ck = add i64 %.sroa.0.0.i.i509, 1            ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(192) %i.cj)
          to label %bb.w unwind label %bb.y, !noalias !38733, !inline_history !2

bb.x:                                             ; preds = %.lr.ph514
  %i.cl = add i64 %.sroa.0.1.i.i512, 1            ; 2 uses
  %i.cm = icmp eq i64 %i.cl, %i.cg
  br i1 %i.cm, label %.body.i169, label %.lr.ph514

bb.y:                                             ; preds = %.lr.ph511
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = icmp eq i64 %i.ck, %i.cg
  br i1 %i.co, label %.body.i169, label %.lr.ph514

.lr.ph514:                                        ; preds = %bb.y, %bb.x
  %.sroa.0.1.i.i512 = phi i64 [ %i.cl, %bb.x ], [ %i.ck, %bb.y ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [192 x i8], ptr %i.ce, i64 %.sroa.0.1.i.i512
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(192) %i.cp) #50
          to label %bb.x unwind label %bb.z, !noalias !38733, !inline_history !2

bb.z:                                             ; preds = %.lr.ph514
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !38733, !inline_history !2
  unreachable

.body.i169:                                       ; preds = %bb.x, %bb.y
  %i.cr = icmp eq i64 %i.bu, 0
  br i1 %i.cr, label %.body171, label %bb.aa

bb.aa:                                            ; preds = %.body.i169
  %i.cs = mul nuw i64 %i.bu, 192
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ce, i64 noundef %i.cs, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !38733, !inline_history !87
  br label %.body171

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.w, %bb.v
  %i.ct = icmp eq i64 %i.bu, 0
  br i1 %i.ct, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i
  %i.cu = mul nuw i64 %i.bu, 192
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ce, i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !38733, !inline_history !87
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file.exit

.body171:                                         ; preds = %.body.i169, %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.cv)
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ab, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.cw)
  br label %bb.df

bb.ac:                                            ; preds = %bb.u
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.68, i64 56, i1 false)
  store i64 %.sroa.0233.0.copyload, ptr %i.z, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store i64 %.sroa.6235.24.copyload, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store i64 %i.bz, ptr %.sroa.514.sroa.4.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke fastcc void @_RNvYNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb14FileDescriptorNtNtCskAO0uQb8M5a_5prost7message7Message13encode_to_vecB8_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.z)
          to label %bb.ae unwind label %bb.ad

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.aj, %bb.ai, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.ad ], [ %i.dp, %bb.ai ], [ %i.dp, %bb.aj ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb14FileDescriptorEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.z) #50
  br label %bb.s

bb.ad:                                            ; preds = %bb.ac
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cy = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !62 ; 8 uses
  %i.da = icmp sgt i64 %i.cz, -1
  call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !62, !noundef !62 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38735)
  %i.dd = load i64, ptr %i.as, align 8, !alias.scope !38735, !noalias !38736, !noundef !62 ; 2 uses
  %i.de = load i64, ptr %i.at, align 8, !alias.scope !38735, !noalias !38736, !noundef !62
  %i.df = sub i64 %i.de, %i.dd
  %.not.i135 = icmp ugt i64 %i.cz, %i.df
  br i1 %.not.i135, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dg = invoke noundef zeroext i1 @_RNvMs_NtCs4XDKJNDGLq7_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.cz, i1 noundef zeroext true)
          to label %.noexc137 unwind label %bb.ai ; 0 uses

.noexc137:                                        ; preds = %bb.af
  %.pre.i136 = load i64, ptr %i.as, align 8, !alias.scope !38735, !noalias !38736
  br label %bb.ag

end_hunk_3
begin_hunk_4_@_RNvXs1_NtCsaSXGKSfiU2E_10lance_file7versionNtB5_16LanceFileVersionNtNtNtCscI6d9CVNmLh_4core3str6traits7FromStr8from_str:bb.a
  %i.ad = getelementptr i8, ptr %i.d, i64 2
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i16
  %i.ag = xor i16 %i.af, 48
  %i.ah = or i16 %i.ac, %i.ag
  %i.ai = icmp ne i16 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.al, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %i.am = load i16, ptr %i.d, align 1
  %i.an = xor i16 %i.am, 11824
  %i.ao = getelementptr i8, ptr %i.d, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i16
  %i.ar = xor i16 %i.aq, 51
  %i.as = or i16 %i.an, %i.ar
  %i.at = icmp ne i16 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load i16, ptr %i.d, align 1
  %i.ax = xor i16 %i.aw, 11826
  %i.ay = getelementptr i8, ptr %i.d, i64 2
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i16
  %i.bb = xor i16 %i.ba, 49
  %i.bc = or i16 %i.ax, %i.bb
  %i.bd = icmp ne i16 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.bg, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.bh = load i16, ptr %i.d, align 1
  %i.bi = xor i16 %i.bh, 11826
  %i.bj = getelementptr i8, ptr %i.d, i64 2
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i16
  %i.bm = xor i16 %i.bl, 50
  %i.bn = or i16 %i.bi, %i.bm
  %i.bo = icmp ne i16 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.br, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.bs = load i16, ptr %i.d, align 1
  %i.bt = xor i16 %i.bs, 11826
  %i.bu = getelementptr i8, ptr %i.d, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = xor i16 %i.bw, 51
  %i.by = or i16 %i.bt, %i.bx
  %i.bz = icmp ne i16 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 6, ptr %i.cc, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.v

bb.n:                                             ; preds = %bb.d
  %i.cd = load i32, ptr %i.d, align 1
  %i.ce = xor i32 %i.cd, 1650553971
  %i.cf = getelementptr i8, ptr %i.d, i64 4
  %i.cg = load i16, ptr %i.cf, align 1
  %i.ch = zext i16 %i.cg to i32
  %i.ci = xor i32 %i.ch, 25964
  %i.cj = or i32 %i.ce, %i.ci
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.cn, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.v

bb.p:                                             ; preds = %bb.a
  %i.co = load i32, ptr %i.d, align 1
  %i.cp = icmp ne i32 %i.co, 1954047342
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.l, %bb.a, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCsaSXGKSfiU2E_10lance_file7version15unknown_versionReEB4_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.u unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.cs, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ct = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47732)
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !47732 ; 2 uses
  %i.cu = icmp eq i64 %.val.i, 0
  br i1 %i.cu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !47732
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit

bb.u:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r, %bb.o, %bb.m, %bb.k, %bb.i, %bb.f, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47733)
  %.val.i18 = load i64, ptr %i.b, align 8, !alias.scope !47733 ; 2 uses
  %i.cv = icmp eq i64 %.val.i18, 0
  br i1 %i.cv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit20, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %.val.i18, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !47733
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit20

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit20: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.t, %bb.s
  resume { ptr, i32 } %i.ct
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtB5_6FieldsE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [192 x i8], align 8               ; 4 uses
  %i.c = alloca [192 x i8], align 8               ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [192 x i8], align 8               ; 4 uses
  %i.f = alloca [192 x i8], align 8               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [48 x i8], align 8                ; 12 uses
  %i.i = alloca [56 x i8], align 8                ; 13 uses
  %i.j = alloca [4 x i8], align 4                 ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = alloca [56 x i8], align 8                ; 6 uses
  %i.n = alloca [56 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0142 = alloca [56 x i8], align 8         ; 5 uses
  %.sroa.7287 = alloca [7 x i8], align 1          ; 5 uses
  %.sroa.12 = alloca [24 x i8], align 8           ; 5 uses
  %i.p = alloca [192 x i8], align 8               ; 7 uses
  %i.q = alloca [192 x i8], align 8               ; 5 uses
  %.sroa.662 = alloca [56 x i8], align 8          ; 5 uses
  %.sroa.656 = alloca [56 x i8], align 8          ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [216 x i8], align 8               ; 14 uses
  %.sroa.10 = alloca [208 x i8], align 8          ; 7 uses
  %i.t = alloca [40 x i8], align 8                ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 14 uses
  %i.v = alloca [192 x i8], align 8               ; 4 uses
  %i.w = alloca [216 x i8], align 8               ; 8 uses
  %i.x = alloca [48 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 2 uses
  %i.z = alloca [48 x i8], align 8                ; 16 uses
  %i.aa = alloca [24 x i8], align 8               ; 12 uses
  %i.ab = alloca [24 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !62 ; 11 uses
  %i.ae = icmp ult i64 %i.ad, 52405522936674863
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = mul nuw nsw i64 %i.ad, 216              ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ad, 42700796466920258
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.ag = icmp eq i64 %i.ad, 0                    ; 4 uses
  br i1 %i.ag, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.c

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %bb.b
  store i64 0, ptr %i.ab, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store i64 0, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !47941
  %i.aj = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !47941 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.10297.0.ph = phi i64 [ %i.af, %bb.c ], [ undef, %bb.a ]
  %.sroa.4295.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4295.0.ph, i64 %.sroa.10297.0.ph) #49
  unreachable

bb.e:                                             ; preds = %bb.c
  store i64 %i.ad, ptr %i.ab, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store i64 0, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.an = shl nuw nsw i64 %i.ad, 3                ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !47942
  %i.ao = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !47942 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = udiv i64 %i.an, 7
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit275: ; preds = %bb.ef, %bb.h
  %.pn165.pn672 = phi { ptr, i32 } [ %.pn165, %bb.h ], [ %.pn165.pn673, %bb.ef ] ; 2 uses
  %.sroa.090.2670 = phi i1 [ %.sroa.090.4, %bb.h ], [ %.sroa.090.2671, %bb.ef ]
  br i1 %.sroa.090.2670, label %bb.eg, label %common.resume

.thread:                                          ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.an) #49
          to label %bb.ar unwind label %.thread

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread, %bb.f
  %i.au = phi i64 [ %i.as, %bb.f ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ]
  %i.av = phi ptr [ %i.am, %bb.f ], [ %i.ai, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ] ; 3 uses
  %i.aw = phi ptr [ %i.al, %bb.f ], [ %i.ah, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ] ; 3 uses
  %i.ax = phi ptr [ %i.aj, %bb.f ], [ inttoptr (i64 8 to ptr), %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ] ; 2 uses
  %.sroa.10301.0 = phi ptr [ %i.ao, %bb.f ], [ inttoptr (i64 8 to ptr), %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ]
  store i64 %i.ad, ptr %i.aa, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 6 uses
  store ptr %.sroa.10301.0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 5 uses
  store i64 0, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ba = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !range !81, !noalias !47943, !noundef !62
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i, !prof !71

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192
  %.pre.i.i = load i64, ptr %i.ba, align 8, !noalias !47944
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !47944
  br label %bb.i

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192
  %i.be = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc unwind label %.thread666 ; 2 uses

.noexc:                                           ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = extractvalue { i64, i64 } %i.be, 1      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !noalias !47945
  store i8 1, ptr %i.bb, align 8, !noalias !47945
  br label %bb.i

.thread674:                                       ; preds = %.loopexit.split-lp.i, %bb.au, %bb.ad, %.loopexit403
  %.pn165.ph = phi { ptr, i32 } [ %lpad.loopexit404, %.loopexit403 ], [ %lpad.phi.i, %bb.ad ], [ %i.jb, %bb.au ], [ %lpad.phi.i, %.loopexit.split-lp.i ]
  %.val175678 = load ptr, ptr %i.z, align 8
  %.val176679 = load i64, ptr %.sroa.4303.0..sroa_idx, align 8, !noundef !62
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplINtNtB4_6option6OptionjEEECsaSXGKSfiU2E_10lance_file(ptr %.val175678, i64 %.val176679) #50
  br label %bb.ef

bb.h:                                             ; preds = %.body233, %.loopexit.split-lp
  %.sroa.088.2 = phi i8 [ %.sroa.088.5, %.body233 ], [ %.sroa.088.3.ph, %.loopexit.split-lp ]
  %.sroa.090.4 = phi i1 [ false, %.body233 ], [ %.sroa.090.5.ph, %.loopexit.split-lp ] ; 2 uses
  %.pn165 = phi { ptr, i32 } [ %.pn161.pn.pn, %.body233 ], [ %lpad.loopexit.split-lp405, %.loopexit.split-lp ] ; 2 uses
  %.val175 = load ptr, ptr %i.z, align 8
  %.val176 = load i64, ptr %.sroa.4303.0..sroa_idx, align 8, !noundef !62
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplINtNtB4_6option6OptionjEEECsaSXGKSfiU2E_10lance_file(ptr %.val175, i64 %.val176) #50
  %i.bi = trunc nuw i8 %.sroa.088.2 to i1
  br i1 %i.bi, label %bb.ef, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit275

.thread666:                                       ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.i:                                             ; preds = %.noexc, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i
  %.pre-phi616 = phi i64 [ %i.bg, %.noexc ], [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.bf, %.noexc ], [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i ] ; 2 uses
  %i.bk = add i64 %.pre-phi, 1
  store i64 %i.bk, ptr %i.ba, align 8, !noalias !47944
  br i1 %i.ag, label %_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = icmp samesign ult i64 %i.ad, 15
  br i1 %i.bl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = lshr i64 -1, %i.au
  %i.bn = add nuw nsw i64 %i.bm, 1
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bo = icmp samesign ult i64 %i.ad, 4
  %i.bp = and i64 %i.ad, 8
  %..i.i.i.i = add nuw nsw i64 %i.bp, 8
  %.sroa.03.0.i.i.i.i = select i1 %i.bo, i64 4, i64 %..i.i.i.i
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.bn, %bb.k ], [ %.sroa.03.0.i.i.i.i, %bb.l ] ; 5 uses
  %i.bq = mul nuw nsw i64 %.sroa.4.0.i.ph.i.i.i, 24
  %i.br = add nuw nsw i64 %i.bq, 8
  %i.bs = and i64 %i.br, 9223372036854775792      ; 2 uses
  %i.bt = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i, 16 ; 2 uses
  %i.bu = add nuw nsw i64 %i.bs, %i.bt            ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !47946
  %i.bv = tail call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 16) #44, !noalias !47946 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.bx = invoke { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.bu)
          to label %.noexc193 unwind label %.thread666 ; 2 uses

.noexc193:                                        ; preds = %bb.m
  %.sroa.7.0.ph.i.i.i = extractvalue { i64, i64 } %i.bx, 0
  %.sroa.12.0.ph.i.i.i = extractvalue { i64, i64 } %i.bx, 1
  br label %_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit

bb.n:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bs ; 2 uses
  %i.bz = add nsw i64 %.sroa.4.0.i.ph.i.i.i, -1   ; 2 uses
  %i.ca = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 9
  %i.cb = lshr i64 %.sroa.4.0.i.ph.i.i.i, 3
  %i.cc = mul nuw nsw i64 %i.cb, 7
  %.sroa.07.0.i.i.i.i = select i1 %i.ca, i64 %i.bz, i64 %i.cc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.by, i8 -1, i64 %i.bt, i1 false), !noalias !47947
  br label %_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit

_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.n, %.noexc193, %bb.i
  %.sroa.8.0.i.i = phi i64 [ %.sroa.07.0.i.i.i.i, %bb.n ], [ %.sroa.12.0.ph.i.i.i, %.noexc193 ], [ 0, %bb.i ]
  %.sroa.6.0.i.i = phi i64 [ %i.bz, %bb.n ], [ %.sroa.7.0.ph.i.i.i, %.noexc193 ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.by, %bb.n ], [ null, %.noexc193 ], [ @83, %bb.i ] ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %i.z, align 8
  %.sroa.4303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 7 uses
  store i64 %.sroa.6.0.i.i, ptr %.sroa.4303.0..sroa_idx, align 8
  %.sroa.5304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  store i64 %.sroa.8.0.i.i, ptr %.sroa.5304.0..sroa_idx, align 8
  %.sroa.6305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6305.0..sroa_idx, align 8
  %.sroa.7306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 4 uses
  store i64 %.pre-phi, ptr %.sroa.7306.0..sroa_idx, align 8
  %.sroa.8307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 3 uses
  store i64 %.pre-phi616, ptr %.sroa.8307.0..sroa_idx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ad, 176
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx
  br i1 %i.ag, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit197.thread, label %.lr.ph

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit197.thread: ; preds = %_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 0, ptr %i.u, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
end_hunk_4
begin_hunk_5_@_RNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtB5_6FieldsE8try_from:bb.a
  store i32 %i.jh, ptr %i.j, align 4, !noalias !47969
  %.val.i211 = load i64, ptr %.sroa.7306.0..sroa_idx, align 8, !alias.scope !47968, !noalias !47970, !noundef !62
  %.val6.i212 = load i64, ptr %.sroa.8307.0..sroa_idx, align 8, !alias.scope !47968, !noalias !47970, !noundef !62
  %i.ji = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRlECsaSXGKSfiU2E_10lance_file(i64 %.val.i211, i64 %.val6.i212, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j), !noalias !47969 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47971)
  call void @llvm.experimental.noalias.scope.decl(metadata !47972)
  %i.jj = lshr i64 %i.ji, 57
  %i.jk = trunc nuw nsw i64 %i.jj to i8           ; 3 uses
  %i.jl = load i64, ptr %.sroa.4303.0..sroa_idx, align 8, !alias.scope !47973, !noalias !47974, !noundef !62 ; 4 uses
  %i.jm = load ptr, ptr %i.z, align 8, !alias.scope !47973, !noalias !47974, !nonnull !62, !noundef !62 ; 4 uses
  %i.jn = insertelement <16 x i8> poison, i8 %i.jk, i64 0
  %i.jo = shufflevector <16 x i8> %i.jn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
  %.sroa.9.0.i.i.i213 = phi i64 [ 0, %bb.aw ], [ %i.kf, %bb.az ]
  %.pn.i.i.i214 = phi i64 [ %i.ji, %bb.aw ], [ %i.kg, %bb.az ]
  %.sroa.01.0.i.i.i215 = and i64 %.pn.i.i.i214, %i.jl ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.sroa.01.0.i.i.i215
  %.sroa.0.0.copyload.i26.i.i216 = load <16 x i8>, ptr %i.jp, align 1, !noalias !47975 ; 2 uses
  %i.jq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i216, %i.jo
  %i.jr = bitcast <16 x i1> %i.jq to i16          ; 2 uses
  %.not.i.not32.i.i217 = icmp eq i16 %i.jr, 0
  br i1 %.not.i.not32.i.i217, label %._crit_edge.i.i222, label %.lr.ph.i.i218

.lr.ph.i.i218:                                    ; preds = %bb.ax, %bb.ay
  %.sroa.06.0.i33.i.i219 = phi i16 [ %i.ke, %bb.ay ], [ %i.jr, %bb.ax ] ; 3 uses
  %i.js = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i219, i1 true)
  %i.jt = zext nneg i16 %i.js to i64
  %i.ju = add i64 %.sroa.01.0.i.i.i215, %i.jt
  %i.jv = and i64 %i.ju, %i.jl
  %i.jw = sub nsw i64 0, %i.jv
  %i.jx = getelementptr inbounds [24 x i8], ptr %i.jm, i64 %i.jw ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -24
  %.val2.i.i.i220 = load i32, ptr %i.jy, align 4, !noalias !47976, !noundef !62
  %i.jz = icmp eq i32 %.val2.i.i.i220, %i.jh
  br i1 %i.jz, label %bb.be, label %bb.ay, !prof !71

._crit_edge.i.i222:                               ; preds = %bb.ay, %bb.ax
  %i.ka = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i216, splat (i8 -1)
  %i.kb = bitcast <16 x i1> %i.ka to i16
  %i.kc = icmp eq i16 %i.kb, 0
  br i1 %i.kc, label %bb.az, label %bb.ba, !prof !61

bb.ay:                                            ; preds = %.lr.ph.i.i218
  %i.kd = add i16 %.sroa.06.0.i33.i.i219, -1
  %i.ke = and i16 %i.kd, %.sroa.06.0.i33.i.i219   ; 2 uses
  %.not.i.not.i.i221 = icmp eq i16 %i.ke, 0
  br i1 %.not.i.not.i.i221, label %._crit_edge.i.i222, label %.lr.ph.i.i218

bb.az:                                            ; preds = %._crit_edge.i.i222
  %i.kf = add i64 %.sroa.9.0.i.i.i213, 16         ; 2 uses
  %i.kg = add i64 %.sroa.01.0.i.i.i215, %i.kf
  br label %bb.ax

bb.ba:                                            ; preds = %._crit_edge.i.i222
  %i.kh = load i64, ptr %.sroa.5304.0..sroa_idx, align 8, !alias.scope !47977, !noalias !47978, !noundef !62
  %i.ki = icmp eq i64 %i.kh, 0
  br i1 %i.ki, label %bb.bb, label %bb.bc, !prof !61

bb.bb:                                            ; preds = %bb.ba
  %i.kj = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTlINtNtCscI6d9CVNmLh_4core6option6OptionjEEE14reserve_rehashNCINvNtB8_3map11make_hasherlBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.7306.0..sroa_idx, i1 noundef zeroext true)
          to label %.noexc225 unwind label %.loopexit403 ; 0 uses

.noexc225:                                        ; preds = %bb.bb
  %.val.i.i.pre = load ptr, ptr %i.z, align 8, !alias.scope !47979, !noalias !47980
  %.val3.i.i.pre = load i64, ptr %.sroa.4303.0..sroa_idx, align 8, !alias.scope !47979, !noalias !47980
  br label %bb.bc

bb.bc:                                            ; preds = %.noexc225, %bb.ba
  %.val3.i.i = phi i64 [ %.val3.i.i.pre, %.noexc225 ], [ %i.jl, %bb.ba ] ; 5 uses
  %.val.i.i = phi ptr [ %.val.i.i.pre, %.noexc225 ], [ %i.jm, %bb.ba ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !47979)
  %.sroa.0.07.i.i.i = and i64 %.val3.i.i, %i.ji   ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.kk, align 1, !noalias !47981
  %i.kl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.km = bitcast <16 x i1> %i.kl to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.km, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !88

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.bc
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.bc ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.km, %bb.bc ], [ %i.ld, %.lr.ph.i.i.i ]
  %i.kn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ko = zext nneg i16 %i.kn to i64
  %i.kp = add i64 %.sroa.0.0.lcssa.i.i.i, %i.ko
  %i.kq = and i64 %i.kp, %.val3.i.i               ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !noalias !47982, !noundef !62 ; 2 uses
  %i.kt = icmp sgt i8 %i.ks, -1
  br i1 %i.kt, label %bb.bd, label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTlINtNtCscI6d9CVNmLh_4core6option6OptionjEEE14insert_no_growCsaSXGKSfiU2E_10lance_file.exit.i, !prof !61

bb.bd:                                            ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !47982
  %i.ku = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.kv = bitcast <16 x i1> %i.ku to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.kv, 0
  %i.kw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.kv, i1 true)
  %i.kx = zext nneg i16 %i.kw to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i229 = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.kx
  %.pre.i.i230 = load i8, ptr %.phi.trans.insert.i.i229, align 1, !noalias !47982
  br label %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTlINtNtCscI6d9CVNmLh_4core6option6OptionjEEE14insert_no_growCsaSXGKSfiU2E_10lance_file.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.bc, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.bc ]
  %i.ky = phi i64 [ %i.kz, %.lr.ph.i.i.i ], [ 0, %bb.bc ]
  %i.kz = add i64 %i.ky, 16                       ; 2 uses
  %i.la = add i64 %i.kz, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.la, %.val3.i.i    ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.lb, align 1, !noalias !47981
  %i.lc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.ld = bitcast <16 x i1> %i.lc to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ld, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !89

_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTlINtNtCscI6d9CVNmLh_4core6option6OptionjEEE14insert_no_growCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.bd, %._crit_edge.i.i.i
  %i.le = phi i8 [ %.pre.i.i230, %bb.bd ], [ %i.ks, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.kx, %bb.bd ], [ %i.kq, %._crit_edge.i.i.i ] ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i5.i.i.i
  %i.lg = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.lh = and i64 %i.lg, %.val3.i.i
  store i8 %i.jk, ptr %i.lf, align 1, !noalias !47982
  %i.li = getelementptr i8, ptr %.val.i.i, i64 %i.lh
  %i.lj = getelementptr i8, ptr %i.li, i64 16
  store i8 %i.jk, ptr %i.lj, align 1, !noalias !47982
  %i.lk = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.ll = getelementptr inbounds [24 x i8], ptr %.val.i.i, i64 %i.lk ; 3 uses
  %i.lm = and i8 %i.le, 1
  %i.ln = zext nneg i8 %i.lm to i64
  %i.lo = getelementptr inbounds i8, ptr %i.ll, i64 -24
  store i32 %i.jh, ptr %i.lo, align 8, !noalias !47983
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ll, i64 -16
  store i64 1, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !47983
  %.sroa.5.0..sroa_idx.i227 = getelementptr inbounds i8, ptr %i.ll, i64 -8
  store i64 %i.ed, ptr %.sroa.5.0..sroa_idx.i227, align 8, !noalias !47983
  %i.lp = load <2 x i64>, ptr %.sroa.5304.0..sroa_idx, align 8, !alias.scope !47979, !noalias !47980
  %i.lq = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ln, i64 0
  %i.lr = sub <2 x i64> %i.lp, %i.lq
  store <2 x i64> %i.lr, ptr %.sroa.5304.0..sroa_idx, align 8, !alias.scope !47979, !noalias !47980
  br label %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit

bb.be:                                            ; preds = %.lr.ph.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ls = getelementptr inbounds i8, ptr %i.jx, i64 -16
  store i64 0, ptr %i.ls, align 8
  br label %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit

_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTlINtNtCscI6d9CVNmLh_4core6option6OptionjEEE14insert_no_growCsaSXGKSfiU2E_10lance_file.exit.i, %bb.be
  %i.lt = phi ptr [ %.val.i.i, %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTlINtNtCscI6d9CVNmLh_4core6option6OptionjEEE14insert_no_growCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.jm, %bb.be ]
  %i.lu = phi i64 [ %.val3.i.i, %_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTlINtNtCscI6d9CVNmLh_4core6option6OptionjEEE14insert_no_growCsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.jl, %bb.be ]
  %.not400 = icmp eq ptr %i.cp, %i.cf
  br i1 %.not400, label %bb.p, label %bb.o

.invoke:                                          ; preds = %bb.aa, %bb.p
  %i.lv = phi i64 [ %i.ct, %bb.p ], [ %i.er, %bb.aa ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.lv) #49
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.p
  store i64 %i.jf, ptr %i.u, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr %i.cu, ptr %i.lw, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store i64 0, ptr %i.lx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !47984)
  %xtraiter961 = and i64 %i.jf, 3                 ; 3 uses
  %i.ly = icmp samesign ult i64 %i.ed, 3
  br i1 %i.ly, label %.preheader.i.i.epil.preheader, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.new

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.new: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i
  %unroll_iter = and i64 %i.jf, 144115188075855868
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.new
  %i.lz = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.new ], [ %i.mh, %.preheader.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.new ], [ %niter.next.3, %.preheader.i.i ]
  %i.ma = getelementptr inbounds nuw [192 x i8], ptr %i.cu, i64 %i.lz
  store i64 -1, ptr %i.ma, align 8, !noalias !47985
  %i.mb = getelementptr inbounds nuw [192 x i8], ptr %i.cu, i64 %i.lz
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 192
  store i64 -1, ptr %i.mc, align 8, !noalias !47985
  %i.md = getelementptr inbounds nuw [192 x i8], ptr %i.cu, i64 %i.lz
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 384
  store i64 -1, ptr %i.me, align 8, !noalias !47985
  %i.mf = getelementptr inbounds nuw [192 x i8], ptr %i.cu, i64 %i.lz
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 576
  store i64 -1, ptr %i.mg, align 8, !noalias !47985
  %i.mh = add nuw nsw i64 %i.lz, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit.loopexit.unr-lcssa, label %.preheader.i.i

.body233:                                         ; preds = %.body.i, %.body.i.i, %bb.co, %bb.cr, %bb.bi, %bb.bj, %bb.dq, %bb.dr, %bb.ct, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit274
  %.sroa.088.5 = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit274 ], [ 0, %bb.ct ], [ 1, %bb.dr ], [ 1, %bb.bi ], [ 1, %bb.dq ], [ 1, %bb.bj ], [ 0, %bb.cr ], [ 0, %bb.co ], [ 0, %.body.i.i ], [ 0, %.body.i ]
  %.pn161.pn.pn = phi { ptr, i32 } [ %.pn161.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit274 ], [ %i.pp, %bb.ct ], [ %i.rg, %bb.dr ], [ %i.nm, %bb.bi ], [ %i.rg, %bb.dq ], [ %i.nm, %bb.bj ], [ %.pn.i244, %bb.cr ], [ %i.pf, %bb.co ], [ %i.pf, %.body.i.i ], [ %.pn.i244, %.body.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.u) #50
          to label %bb.h unwind label %bb.cw

_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i
  %lcmp.mod963.not = icmp eq i64 %xtraiter961, 0
  br i1 %lcmp.mod963.not, label %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit.loopexit.unr-lcssa, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i
  %.epil.init = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i ], [ %i.mh, %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit.loopexit.unr-lcssa ]
  %lcmp.mod964 = icmp ne i64 %xtraiter961, 0
  call void @llvm.assume(i1 %lcmp.mod964)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %i.mi = phi i64 [ %i.mk, %.preheader.i.i.epil ], [ %.epil.init, %.preheader.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.mj = getelementptr inbounds nuw [192 x i8], ptr %i.cu, i64 %i.mi
  store i64 -1, ptr %i.mj, align 8, !noalias !47985
  %i.mk = add nuw nsw i64 %i.mi, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter961
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit, label %.preheader.i.i.epil, !llvm.loop !47857

_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit: ; preds = %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit.loopexit.unr-lcssa, %.preheader.i.i.epil, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit197.thread
  %i.ml = phi ptr [ %i.ch, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit197.thread ], [ %i.lx, %.preheader.i.i.epil ], [ %i.lx, %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit.loopexit.unr-lcssa ] ; 3 uses
  %i.mm = phi ptr [ %i.cg, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit197.thread ], [ %i.lw, %.preheader.i.i.epil ], [ %i.lw, %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit.loopexit.unr-lcssa ] ; 2 uses
  %i.mn = phi ptr [ %i.ax, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit197.thread ], [ %i.jd, %.preheader.i.i.epil ], [ %i.jd, %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit.loopexit.unr-lcssa ] ; 11 uses
  %i.mo = phi i64 [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit197.thread ], [ %i.jf, %.preheader.i.i.epil ], [ %i.jf, %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit.loopexit.unr-lcssa ] ; 2 uses
  store i64 %i.mo, ptr %i.ml, align 8, !alias.scope !47984
  %i.mp = load i64, ptr %i.ab, align 8, !range !65, !noundef !62 ; 9 uses
  %.idx528 = mul nuw nsw i64 %i.mo, 216
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.idx528 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.mn, ptr %i.t, align 8
  %.sroa.043.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.mn, ptr %.sroa.043.sroa.2.0..sroa_idx, align 8
  %.sroa.043.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.mp, ptr %.sroa.043.sroa.3.0..sroa_idx, align 8
  %.sroa.043.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 7 uses
  store ptr %i.mq, ptr %.sroa.043.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %.pre617 = ptrtoint ptr %i.mn to i64            ; 2 uses
  br i1 %i.ag, label %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.i._crit_edge, label %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.i.lr.ph

_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.i.lr.ph: ; preds = %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.s, i64 88 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.s, i64 192 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.s, i64 208 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.s, i64 200 ; 2 uses
  %.sroa.656.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.858.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  br label %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.i

_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.i: ; preds = %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.i.lr.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit
  %i.mx = phi ptr [ %i.mq, %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.i.lr.ph ], [ %i.my, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 -216 ; 11 uses
  %.sroa.0.0.copyload4.i = load i64, ptr %i.my, align 8, !noalias !47986 ; 2 uses
  %.not.i236 = icmp eq i64 %.sroa.0.0.copyload4.i, -1
  br i1 %.not.i236, label %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.i._crit_edge, label %bb.bg

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit274: ; preds = %bb.df, %bb.dg, %.thread395, %bb.ee, %bb.ed, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit259, %bb.bf
  %.pn161.pn = phi { ptr, i32 } [ %.pn161.ph, %bb.ee ], [ %.pn161.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit259 ], [ %i.mz, %bb.bf ], [ %.pn161.ph, %bb.ed ], [ %i.qq, %bb.df ], [ %i.qq, %bb.dg ], [ %i.qo, %.thread395 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtBG_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEEEB2t_(ptr noalias noundef align 8 dereferenceable(40) %i.t) #50
          to label %.body233 unwind label %bb.cw

bb.bf:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterjEECsaSXGKSfiU2E_10lance_file.exit264
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit274

bb.bg:                                            ; preds = %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.i
  %.sroa.7.0..sroa_idx5.i = getelementptr inbounds i8, ptr %i.mx, i64 -208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.7.0..sroa_idx5.i, i64 208, i1 false), !noalias !47987
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = sub nuw i64 %i.na, %.pre617
  %i.nc = udiv exact i64 %i.nb, 216               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %.sroa.0.0.copyload4.i, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.10.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.10, i64 208, i1 false)
  %i.nd = load i64, ptr %i.mt, align 8, !noundef !62 ; 4 uses
  %i.ne = icmp ult i64 %i.nd, 1152921504606846976
  call void @llvm.assume(i1 %i.ne)
  %i.nf = load i64, ptr %i.mu, align 8, !alias.scope !47988, !noundef !62 ; 2 uses
  %i.ng = load i64, ptr %i.mr, align 8, !range !65, !alias.scope !47988, !noundef !62
  %i.nh = sub i64 %i.ng, %i.nf
  %i.ni = icmp ugt i64 %i.nd, %i.nh
  br i1 %i.ni, label %bb.bh, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit, !prof !61

bb.bh:                                            ; preds = %bb.bg
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mr, i64 noundef %i.nf, i64 noundef %i.nd, i64 noundef 8, i64 noundef 192)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit_crit_edge unwind label %bb.cy

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit_crit_edge: ; preds = %bb.bh
  %.pre613 = load i64, ptr %i.mt, align 8
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit

_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.i._crit_edge: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit, %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.i, %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit
  %.ph = phi ptr [ %i.mq, %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit ], [ %i.my, %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.i ], [ %i.my, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  store ptr %.ph, ptr %.sroa.043.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.nj = ptrtoint ptr %.ph to i64
  %i.nk = sub nuw i64 %i.nj, %.pre617
  %i.nl = udiv exact i64 %i.nk, 216
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBG_(ptr noalias noundef nonnull align 8 %i.mn, i64 noundef %i.nl)
          to label %bb.bk unwind label %bb.bi, !noalias !47989

bb.bi:                                            ; preds = %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.i._crit_edge
  %i.nm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nn = icmp eq i64 %i.mp, 0
  br i1 %i.nn, label %.body233, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.no = mul nuw i64 %i.mp, 216
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mn, i64 noundef %i.no, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !47989
  br label %.body233

bb.bk:                                            ; preds = %_RNvXs5_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backB10_.exit.i._crit_edge
  %i.np = icmp eq i64 %i.mp, 0
  br i1 %i.np, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtBG_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEEEB2t_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nq = mul nuw i64 %i.mp, 216
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mn, i64 noundef %i.nq, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !47989
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtBG_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEEEB2t_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtBG_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEEEB2t_.exit: ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7287)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.nr = load ptr, ptr %i.ay, align 8, !nonnull !62, !noundef !62 ; 3 uses
  %i.ns = load i64, ptr %i.aa, align 8, !range !65, !noundef !62
  %i.nt = load i64, ptr %i.az, align 8, !noundef !62 ; 2 uses
  %i.nu = icmp ult i64 %i.nt, 1152921504606846976
  call void @llvm.assume(i1 %i.nu)
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.nt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !47990
  store i8 -1, ptr %i.i, align 8, !noalias !47990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !47991
  store ptr %i.nr, ptr %i.h, align 8, !alias.scope !47992, !noalias !47993
  %.sroa.4291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.nr, ptr %.sroa.4291.0..sroa_idx, align 8, !alias.scope !47992, !noalias !47993
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 %i.ns, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !47992, !noalias !47993
  %.sroa.6292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.nv, ptr %.sroa.6292.0..sroa_idx, align 8, !alias.scope !47992, !noalias !47993
  %.sroa.7293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.u, ptr %.sroa.7293.0..sroa_idx, align 8, !alias.scope !47992, !noalias !47993
  %.sroa.4.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx8.i, align 8, !alias.scope !47992, !noalias !47994
  call void @llvm.experimental.noalias.scope.decl(metadata !47995)
  call void @llvm.experimental.noalias.scope.decl(metadata !47996)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !47997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !47997
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterjENCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaINtNtB6_7convert7TryFromRNtB2b_6FieldsE8try_froms2_0EINtNtB6_6result6ResultNtB3K_10InfallibleNtNtB2T_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2d_(ptr noalias noundef align 8 captures(none) dereferenceable(192) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %bb.bn unwind label %bb.bm, !noalias !47998

bb.bm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtBG_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEEEB2t_.exit
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtBG_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEEEB2t_.exit
  %i.nx = load i64, ptr %i.f, align 8, !range !83, !noalias !47997, !noundef !62
  %.not.i.i.i.i.i = icmp eq i64 %i.nx, -1
  br i1 %.not.i.i.i.i.i, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !47997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !47997
  %.val7.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !47999, !noalias !47998, !noundef !62 ; 2 uses
  %i.ny = icmp eq i64 %.val7.i.i.i.i.i, 0
  br i1 %i.ny, label %bb.ci, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.val6.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !48000, !noalias !47998, !nonnull !62, !noundef !62
  %i.nz = shl nuw i64 %.val7.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i, i64 noundef %i.nz, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48001
  br label %bb.ci

bb.bq:                                            ; preds = %bb.bs
  %i.oa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(192) %i.e) #50
          to label %bb.cg unwind label %bb.cf, !noalias !47997

bb.br:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !47997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.e, ptr noundef nonnull align 8 dereferenceable(192) %i.f, i64 192, i1 false), !noalias !47997
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !48002
  %i.ob = call noundef align 8 dereferenceable_or_null(768) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 768, i64 noundef range(i64 1, 9) 8) #44, !noalias !48002 ; 4 uses
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
end_hunk_5
