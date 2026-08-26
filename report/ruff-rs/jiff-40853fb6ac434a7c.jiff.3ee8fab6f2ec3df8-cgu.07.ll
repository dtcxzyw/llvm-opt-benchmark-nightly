Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/jiff-40853fb6ac434a7c.jiff.3ee8fab6f2ec3df8-cgu.07?download=true
inline.NumInlined: 177
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter11print_zoned:bb.a
  %i.hw = extractvalue { i64, ptr } %i.hu, 1
  %i.hx = trunc nuw i64 %i.hv to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !316
  %..i = select i1 %i.hx, ptr %i.hw, ptr undef
  br label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKj48_NCNvMNtNtB8_8temporal7printerNtB1m_15DateTimePrinter11print_zoneds_0EBa_.exit

bb.au:                                            ; preds = %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread, %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit
  %i.hy = phi { i64, ptr } [ %i.gp, %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread ], [ %i.gu, %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.hz = extractvalue { i64, ptr } %i.hy, 1
  br label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKj48_NCNvMNtNtB8_8temporal7printerNtB1m_15DateTimePrinter11print_zoneds_0EBa_.exit

_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread34: ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread40.i, %bb.ar, %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %i.ba, align 8, !nonnull !4, !noundef !4
  %.sroa.5.0.copyload = load ptr, ptr %i.bb, align 8, !nonnull !4, !noundef !4
  %i.ia = load ptr, ptr %.sroa.0.0.copyload, align 8, !noalias !317, !nonnull !4, !noundef !4
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.ic = load i16, ptr %i.ib, align 8, !noalias !317, !noundef !4
  %i.id = zext i16 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !invariant.load !4, !noalias !317, !nonnull !4
  %i.ig = call { i64, ptr } %i.if(ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ia, i64 noundef %i.id), !noalias !317, !inline_history !320 ; 2 uses
  %i.ih = extractvalue { i64, ptr } %i.ig, 0
  %i.ii = trunc nuw i64 %i.ih to i1
  br i1 %i.ii, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread34
  %i.ij = extractvalue { i64, ptr } %i.ig, 1
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

bb.aw:                                            ; preds = %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_wtr.exit.thread34
  store i16 0, ptr %i.ib, align 8, !noalias !317
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit: ; preds = %bb.av, %bb.aw
  %.sroa.3.0.i = phi ptr [ %i.ij, %bb.av ], [ undef, %bb.aw ]
  %.sroa.0.0.i18 = phi i64 [ 1, %bb.av ], [ 0, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKj48_NCNvMNtNtB8_8temporal7printerNtB1m_15DateTimePrinter11print_zoneds_0EBa_.exit

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKj48_NCNvMNtNtB8_8temporal7printerNtB1m_15DateTimePrinter11print_zoneds_0EBa_.exit: ; preds = %bb.at, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit, %bb.au, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit
  %.pn = phi ptr [ %.sroa.3.0.i, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit ], [ %i.hz, %bb.au ], [ undef, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit ], [ %..i, %bb.at ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i18, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit ], [ 1, %bb.au ], [ 0, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit ], [ %i.hv, %bb.at ]
  %i.ik = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.il = insertvalue { i64, ptr } %i.ik, ptr %.pn, 1
  ret { i64, ptr } %i.il
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter12print_pieces(ptr noalias noundef readonly captures(none) dereferenceable(4) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 {
_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 24 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [73 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 73, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i16 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !321, !noalias !324
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %2, ptr %i.g, align 8, !alias.scope !321, !noalias !324
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %3, ptr %i.h, align 8, !alias.scope !321, !noalias !324
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.01.0.copyload.i = load i32, ptr %i.i, align 8, !alias.scope !330, !noalias !334
  %i.j = trunc i32 %.sroa.01.0.copyload.i to i1
  br i1 %i.j, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !330, !noalias !334
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.03.0.copyload.i = load i32, ptr %i.k, align 4, !alias.scope !330, !noalias !334
  %i.l = call fastcc { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_wtr(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %0, i64 %.sroa.5.0.copyload.i, i32 %.sroa.03.0.copyload.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !330 ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.z, label %bb.c

bb.b:                                             ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.p = load i8, ptr %i.o, align 4, !range !62, !alias.scope !330, !noalias !334, !noundef !4 ; 2 uses
  %.not.i = icmp eq i8 %i.p, -1
  br i1 %.not.i, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.r = load i8, ptr %i.q, align 4, !range !62, !alias.scope !330, !noalias !334, !noundef !4 ; 2 uses
  %.not69.i = icmp eq i8 %i.r, -1
  br i1 %.not69.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i32, ptr %i.s, align 8, !alias.scope !330, !noalias !334
  %.val92.i = load i8, ptr %0, align 1, !alias.scope !327, !noalias !335
  %i.u = call fastcc { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_pieces_offset(i8 %.val92.i, i32 %i.t, i8 %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !336 ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.c
  %i.x = load i64, ptr %1, align 8, !range !337, !alias.scope !330, !noalias !334, !noundef !4 ; 2 uses
  %.not70.i = icmp eq i64 %i.x, -3
  br i1 %.not70.i, label %bb.aa, label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i32, ptr %i.y, align 8, !alias.scope !330, !noalias !334
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.022.0.copyload.i = load i32, ptr %i.aa, align 4, !alias.scope !330, !noalias !334
  %i.ab = call fastcc { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_wtr(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %0, i64 0, i32 %.sroa.022.0.copyload.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !330 ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.z, label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !338
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !330, !noalias !334
  store i32 %i.af, ptr %i.a, align 4, !noalias !338
  %i.ag = call fastcc { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_date_wtr(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !336 ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0
  %i.ai = trunc nuw i64 %i.ah to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !338
  br i1 %i.ai, label %bb.z, label %bb.e

bb.h:                                             ; preds = %bb.f
  %.val89.i = load i8, ptr %0, align 1, !alias.scope !327, !noalias !335
  %i.aj = call fastcc { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_pieces_offset(i8 %.val89.i, i32 %i.z, i8 %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !336 ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.aj, 0
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.z, label %bb.e

bb.i:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.am = load ptr, ptr %i.b, align 8, !alias.scope !342, !noalias !336, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noalias !343, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load i16, ptr %i.ap, align 8, !noalias !343, !noundef !4 ; 2 uses
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = icmp eq i64 %i.ao, %i.ar
  br i1 %i.as, label %bb.j, label %.thread.i, !prof !41

bb.j:                                             ; preds = %bb.i
  %i.at = call { i64, ptr } @_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !336 ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.at, 0
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit82.thread.i, label %bb.k

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit82.thread.i: ; preds = %bb.j
  %i.aw = extractvalue { i64, ptr } %i.at, 1
  %i.ax = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.aw, 1
  br label %bb.z

bb.k:                                             ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.b, align 8, !alias.scope !342, !noalias !336 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre112.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !344, !noalias !336
  %.phi.trans.insert113.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %.pre114.i = load i16, ptr %.phi.trans.insert113.i, align 8, !alias.scope !344, !noalias !336 ; 2 uses
  %.pre127.i = zext i16 %.pre114.i to i64         ; 2 uses
  %i.ay = icmp eq i64 %.pre112.i, %.pre127.i
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  br i1 %i.ay, label %bb.l, label %.thread.i, !prof !267

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !347
  unreachable

.thread.i:                                        ; preds = %bb.i, %bb.k
  %i.az = phi ptr [ %.pre.i, %bb.k ], [ %i.am, %bb.i ] ; 2 uses
  %i.ba = phi i16 [ %.pre114.i, %bb.k ], [ %i.aq, %bb.i ]
  %.pre-phi146.i = phi i64 [ %.pre127.i, %bb.k ], [ %i.ar, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = load ptr, ptr %i.az, align 8, !alias.scope !344, !noalias !336, !nonnull !4, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.pre-phi146.i
  store i8 91, ptr %i.bd, align 1, !noalias !347
  %i.be = add i16 %i.ba, 1
  store i16 %i.be, ptr %i.bb, align 8, !alias.scope !344, !noalias !336
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = load i8, ptr %i.bf, align 8, !range !32, !alias.scope !330, !noalias !334, !noundef !4
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit77.i, %.thread.i
  %cond.i = icmp eq i64 %i.x, -2
  br i1 %cond.i, label %bb.r, label %bb.s

bb.n:                                             ; preds = %.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.bi = load ptr, ptr %i.b, align 8, !alias.scope !351, !noalias !336, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !352, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = load i16, ptr %i.bl, align 8, !noalias !352, !noundef !4 ; 2 uses
  %i.bn = zext i16 %i.bm to i64                   ; 2 uses
  %i.bo = icmp eq i64 %i.bk, %i.bn
  br i1 %i.bo, label %bb.o, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit77.i, !prof !41

bb.o:                                             ; preds = %bb.n
  %i.bp = call { i64, ptr } @_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !336 ; 2 uses
  %i.bq = extractvalue { i64, ptr } %i.bp, 0
  %i.br = trunc nuw i64 %i.bq to i1
  br i1 %i.br, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit77.thread.i, label %bb.p

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit77.thread.i: ; preds = %bb.o
  %i.bs = extractvalue { i64, ptr } %i.bp, 1
  %i.bt = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.bs, 1
  br label %bb.z

bb.p:                                             ; preds = %bb.o
  %.pre116.i = load ptr, ptr %i.b, align 8, !alias.scope !351, !noalias !336 ; 3 uses
  %.phi.trans.insert117.i = getelementptr inbounds nuw i8, ptr %.pre116.i, i64 8
  %.pre118.i = load i64, ptr %.phi.trans.insert117.i, align 8, !alias.scope !353, !noalias !336
  %.phi.trans.insert119.i = getelementptr inbounds nuw i8, ptr %.pre116.i, i64 16
  %.pre120.i = load i16, ptr %.phi.trans.insert119.i, align 8, !alias.scope !353, !noalias !336 ; 2 uses
  %.pre128.i = zext i16 %.pre120.i to i64         ; 2 uses
  %i.bu = icmp eq i64 %.pre118.i, %.pre128.i
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  br i1 %i.bu, label %bb.q, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit77.i, !prof !267

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !356
  unreachable

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit77.i: ; preds = %bb.n, %bb.p
  %i.bv = phi ptr [ %.pre116.i, %bb.p ], [ %i.bi, %bb.n ] ; 2 uses
  %i.bw = phi i16 [ %.pre120.i, %bb.p ], [ %i.bm, %bb.n ]
  %.pre-phi129150.i = phi i64 [ %.pre128.i, %bb.p ], [ %i.bn, %bb.n ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.by = load ptr, ptr %i.bv, align 8, !alias.scope !353, !noalias !336, !nonnull !4, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.pre-phi129150.i
  store i8 33, ptr %i.bz, align 1, !noalias !356
  %i.ca = add i16 %i.bw, 1
  store i16 %i.ca, ptr %i.bx, align 8, !alias.scope !353, !noalias !336
  br label %bb.m

bb.r:                                             ; preds = %bb.m
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load i32, ptr %4, align 8, !alias.scope !330, !noalias !334, !noundef !4
  %i.cc = call fastcc { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_offset_rounded_wtr(i32 %i.cb, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !336 ; 2 uses
  %i.cd = extractvalue { i64, ptr } %i.cc, 0
  %i.ce = trunc nuw i64 %i.cd to i1
  br i1 %i.ce, label %bb.z, label %bb.v

bb.s:                                             ; preds = %bb.m
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.i4 = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !330, !noalias !334, !noundef !4 ; 6 uses
  %.sroa.3.0.in.i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.057.0.i = load ptr, ptr %.sroa.3.0.in.i.a, align 8, !alias.scope !330, !noalias !334, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.cf = load ptr, ptr %i.b, align 8, !alias.scope !360, !noalias !361, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !363, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cj = load i16, ptr %i.ci, align 8, !noalias !363, !noundef !4 ; 2 uses
  %i.ck = zext i16 %i.cj to i64                   ; 2 uses
  %i.cl = sub i64 %i.ch, %i.ck
  %i.cm = icmp ugt i64 %.sroa.3.0.i4, %i.cl
  br i1 %i.cm, label %bb.t, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread107.i, !prof !41

bb.t:                                             ; preds = %bb.s
  %i.cn = call { i64, ptr } @_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !361 ; 2 uses
  %i.co = extractvalue { i64, ptr } %i.cn, 0
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread.i, label %bb.u

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread107.i: ; preds = %bb.u, %bb.s
  %.pre-phi132.i = phi i64 [ %i.de, %bb.u ], [ %i.ck, %bb.s ]
  %i.cq = phi i16 [ %i.dd, %bb.u ], [ %i.cj, %bb.s ]
  %i.cr = phi ptr [ %i.cz, %bb.u ], [ %i.cf, %bb.s ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cr, align 8, !alias.scope !364, !noalias !367, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.pre-phi132.i
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull %i.cu, i64 noundef %.sroa.3.0.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.057.0.i, i64 noundef %.sroa.3.0.i4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !369
  %i.cv = trunc i64 %.sroa.3.0.i4 to i16
  %i.cw = add i16 %i.cq, %i.cv
  store i16 %i.cw, ptr %i.cs, align 8, !alias.scope !364, !noalias !370
  br label %bb.v

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread.i: ; preds = %bb.t
  %i.cx = extractvalue { i64, ptr } %i.cn, 1
  %i.cy = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.cx, 1
  br label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.b, align 8, !alias.scope !360, !noalias !361, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i64, ptr %i.da, align 8, !noalias !361, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dd = load i16, ptr %i.dc, align 8, !noalias !361, !noundef !4 ; 2 uses
  %i.de = zext i16 %i.dd to i64                   ; 2 uses
  %i.df = sub i64 %i.db, %i.de
  %i.dg = icmp ugt i64 %.sroa.3.0.i4, %i.df
  br i1 %i.dg, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread107.i

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i: ; preds = %bb.u
  %i.dh = load ptr, ptr %i.g, align 8, !alias.scope !360, !noalias !361, !nonnull !4, !noundef !4
  %i.di = load ptr, ptr %i.h, align 8, !alias.scope !360, !noalias !361, !nonnull !4, !align !156, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !invariant.load !4, !noalias !361, !nonnull !4
  %i.dl = call { i64, ptr } %i.dk(ptr noundef nonnull %i.dh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.057.0.i, i64 noundef %.sroa.3.0.i4), !noalias !336, !inline_history !371 ; 2 uses
  %i.dm = extractvalue { i64, ptr } %i.dl, 0
  %i.dn = trunc nuw i64 %i.dm to i1
  br i1 %i.dn, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread107.i, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.do = load ptr, ptr %i.b, align 8, !alias.scope !375, !noalias !336, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !376, !noundef !4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ds = load i16, ptr %i.dr, align 8, !noalias !376, !noundef !4 ; 2 uses
  %i.dt = zext i16 %i.ds to i64                   ; 2 uses
  %i.du = icmp eq i64 %i.dq, %i.dt
  br i1 %i.du, label %bb.w, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i, !prof !41

bb.w:                                             ; preds = %bb.v
  %i.dv = call { i64, ptr } @_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !336 ; 2 uses
  %i.dw = extractvalue { i64, ptr } %i.dv, 0
  %i.dx = trunc nuw i64 %i.dw to i1
  br i1 %i.dx, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.thread.i, label %bb.x

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.thread.i: ; preds = %bb.w
  %i.dy = extractvalue { i64, ptr } %i.dv, 1
  %i.dz = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.dy, 1
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %.pre122.i = load ptr, ptr %i.b, align 8, !alias.scope !375, !noalias !336 ; 3 uses
  %.phi.trans.insert123.i = getelementptr inbounds nuw i8, ptr %.pre122.i, i64 8
  %.pre124.i = load i64, ptr %.phi.trans.insert123.i, align 8, !alias.scope !377, !noalias !336
  %.phi.trans.insert125.i = getelementptr inbounds nuw i8, ptr %.pre122.i, i64 16
  %.pre126.i = load i16, ptr %.phi.trans.insert125.i, align 8, !alias.scope !377, !noalias !336 ; 2 uses
  %.pre130.i = zext i16 %.pre126.i to i64         ; 2 uses
  %i.ea = icmp eq i64 %.pre124.i, %.pre130.i
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  br i1 %i.ea, label %bb.y, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i, !prof !267

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !380
  unreachable

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i: ; preds = %bb.v, %bb.x
  %i.eb = phi ptr [ %.pre122.i, %bb.x ], [ %i.do, %bb.v ] ; 2 uses
  %i.ec = phi i16 [ %.pre126.i, %bb.x ], [ %i.ds, %bb.v ]
  %.pre-phi131154.i = phi i64 [ %.pre130.i, %bb.x ], [ %i.dt, %bb.v ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ee = load ptr, ptr %i.eb, align 8, !alias.scope !377, !noalias !336, !nonnull !4, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.pre-phi131154.i
  store i8 93, ptr %i.ef, align 1, !noalias !380
  %i.eg = add i16 %i.ec, 1
  store i16 %i.eg, ptr %i.ed, align 8, !alias.scope !377, !noalias !336
  br label %bb.aa

bb.z:                                             ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit82.thread.i, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit77.thread.i, %bb.r, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread.i, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.thread.i, %bb.a, %bb.d, %bb.f, %bb.g, %bb.h
  %.pn71.i.pn = phi { i64, ptr } [ %i.ag, %bb.g ], [ %i.l, %bb.a ], [ %i.aj, %bb.h ], [ %i.u, %bb.d ], [ %i.ab, %bb.f ], [ %i.bt, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit77.thread.i ], [ %i.ax, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit82.thread.i ], [ %i.cy, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.thread.i ], [ %i.dl, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i ], [ %i.dz, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.thread.i ], [ %i.cc, %bb.r ]
  %.sroa.12.5.i.ph = extractvalue { i64, ptr } %.pn71.i.pn, 1
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

bb.aa:                                            ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i, %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %.sroa.5.0.copyload = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.eh = load ptr, ptr %.sroa.0.0.copyload, align 8, !noalias !381, !nonnull !4, !noundef !4
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.ej = load i16, ptr %i.ei, align 8, !noalias !381, !noundef !4
  %i.ek = zext i16 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !invariant.load !4, !noalias !381, !nonnull !4
  %i.en = call { i64, ptr } %i.em(ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eh, i64 noundef %i.ek), !noalias !381, !inline_history !320 ; 2 uses
  %i.eo = extractvalue { i64, ptr } %i.en, 0
  %i.ep = trunc nuw i64 %i.eo to i1
  br i1 %i.ep, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = extractvalue { i64, ptr } %i.en, 1
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

bb.ac:                                            ; preds = %bb.aa
  store i16 0, ptr %i.ei, align 8, !noalias !381
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit: ; preds = %bb.ac, %bb.ab, %bb.z
  %.sroa.12.5.i.ph.pn = phi ptr [ %.sroa.12.5.i.ph, %bb.z ], [ %i.eq, %bb.ab ], [ undef, %bb.ac ]
  %.sroa.0.0 = phi i64 [ 1, %bb.z ], [ 1, %bb.ab ], [ 0, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.er = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.es = insertvalue { i64, ptr } %i.er, ptr %.sroa.12.5.i.ph.pn, 1
  ret { i64, ptr } %i.es
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_date_buf(ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !noundef !4   ; 3 uses
  %i.b = icmp slt i16 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !384, !noalias !387, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !384, !noalias !387, !noundef !4 ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = sub nuw i64 %i.d, %i.g
  %.not.i10 = icmp ult i64 %i.h, 3
  br i1 %.not.i10, label %bb.c, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit, !prof !48

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #13, !noalias !389
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !alias.scope !384, !noalias !387, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  tail call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull %i.j, i64 noundef 3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !384
  %i.k = add i16 %i.f, 3
  store i16 %i.k, ptr %i.e, align 8, !alias.scope !384, !noalias !387
  %i.l = sub i16 0, %i.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit
  %.sroa.0.0 = phi i16 [ %i.l, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit ], [ %i.a, %bb.a ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.m = icmp ult i16 %.sroa.0.0, 10000
  br i1 %i.m, label %bb.f, label %bb.e, !prof !38

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !390
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !390, !noundef !4 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.q = load i16, ptr %i.p, align 8, !alias.scope !390, !noundef !4 ; 6 uses
  %i.r = zext i16 %i.q to i64                     ; 2 uses
  %i.s = sub nuw i64 %i.o, %i.r
  %i.t = icmp ugt i64 %i.s, 3
  br i1 %i.t, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4tEBa_.exit, label %bb.g, !prof !38

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #13, !noalias !390
  unreachable

end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_pieces_offset:bb.a
  br i1 %i.o, label %bb.g, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i, !prof !267

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !766
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i: ; preds = %.split2.i, %bb.f
  %i.p = phi ptr [ %.pre.i, %bb.f ], [ %i.d, %.split2.i ] ; 2 uses
  %i.q = phi i16 [ %.pre4.i, %bb.f ], [ %i.h, %.split2.i ]
  %.pre-phi1319.i = phi i64 [ %.pre12.i, %bb.f ], [ %i.i, %.split2.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load ptr, ptr %i.p, align 8, !alias.scope !766, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.pre-phi1319.i
  store i8 90, ptr %i.t, align 1, !noalias !766
  %i.u = add i16 %i.q, 1
  store i16 %i.u, ptr %i.r, align 8, !alias.scope !766
  br label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_zulu_wtr.exit

.split.i:                                         ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.v = load ptr, ptr %0, align 8, !alias.scope !772, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !772, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = load i16, ptr %i.y, align 8, !noalias !772, !noundef !4 ; 2 uses
  %i.aa = zext i16 %i.z to i64                    ; 2 uses
  %i.ab = icmp eq i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.h, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i4.i, !prof !41

bb.h:                                             ; preds = %.split.i
  %i.ac = tail call { i64, ptr } @_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) ; 2 uses
  %i.ad = extractvalue { i64, ptr } %i.ac, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { i64, ptr } %i.ac, 1
  br label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_zulu_wtr.exit

bb.j:                                             ; preds = %bb.h
  %.pre6.i = load ptr, ptr %0, align 8, !alias.scope !772 ; 3 uses
  %.phi.trans.insert7.i = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 8
  %.pre8.i = load i64, ptr %.phi.trans.insert7.i, align 8, !alias.scope !773
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 16
  %.pre10.i = load i16, ptr %.phi.trans.insert9.i, align 8, !alias.scope !773 ; 2 uses
  %.pre11.i = zext i16 %.pre10.i to i64           ; 2 uses
  %i.ag = icmp eq i64 %.pre8.i, %.pre11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  br i1 %i.ag, label %bb.k, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i4.i, !prof !267

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !773
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i4.i: ; preds = %.split.i, %bb.j
  %i.ah = phi ptr [ %.pre6.i, %bb.j ], [ %i.v, %.split.i ] ; 2 uses
  %i.ai = phi i16 [ %.pre10.i, %bb.j ], [ %i.z, %.split.i ]
  %.pre-phi23.i = phi i64 [ %.pre11.i, %bb.j ], [ %i.aa, %.split.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load ptr, ptr %i.ah, align 8, !alias.scope !773, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.pre-phi23.i
  store i8 122, ptr %i.al, align 1, !noalias !773
  %i.am = add i16 %i.ai, 1
  store i16 %i.am, ptr %i.aj, align 8, !alias.scope !773
  br label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_zulu_wtr.exit

_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_zulu_wtr.exit: ; preds = %bb.e, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i, %bb.i, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i4.i
  %.sroa.0.0.i6.pn.i = phi i64 [ 0, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i ], [ 1, %bb.e ], [ 1, %bb.i ], [ 0, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i4.i ]
  %.sroa.3.0.i5.pn.i = phi ptr [ undef, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i ], [ %i.n, %bb.e ], [ %i.af, %bb.i ], [ undef, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i4.i ]
  %.pn.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i6.pn.i, 0
  %phi.call.i = insertvalue { i64, ptr } %.pn.i, ptr %.sroa.3.0.i5.pn.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit, %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_zulu_wtr.exit
  %.pn = phi { i64, ptr } [ %i.by, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit ], [ %i.an, %bb.m ], [ %phi.call.i, %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_zulu_wtr.exit ]
  ret { i64, ptr } %.pn

bb.m:                                             ; preds = %bb.b
  %i.an = tail call fastcc { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_offset_rounded_wtr(i32 %.0.val1, ptr noalias noundef align 8 dereferenceable(24) %0)
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !776, !noalias !779, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !781, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.as = load i16, ptr %i.ar, align 8, !noalias !781, !noundef !4 ; 2 uses
  %i.at = zext i16 %i.as to i64                   ; 2 uses
  %i.au = sub i64 %i.aq, %i.at
  %i.av = icmp ult i64 %i.au, 6
  br i1 %i.av, label %bb.o, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i, !prof !41

bb.o:                                             ; preds = %bb.n
  %i.aw = tail call { i64, ptr } @_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !noalias !779 ; 2 uses
  %i.ax = extractvalue { i64, ptr } %i.aw, 0
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.p, label %bb.q

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i: ; preds = %bb.n, %bb.q
  %.pre-phi = phi i64 [ %i.bl, %bb.q ], [ %i.at, %bb.n ]
  %i.az = phi i16 [ %i.bk, %bb.q ], [ %i.as, %bb.n ]
  %i.ba = phi ptr [ %i.bg, %bb.q ], [ %i.ao, %bb.n ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.ba, align 8, !alias.scope !782, !noalias !785, !nonnull !4, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.pre-phi
  tail call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull %i.bd, i64 noundef 6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !782
  %i.be = add i16 %i.az, 6
  store i16 %i.be, ptr %i.bb, align 8, !alias.scope !782, !noalias !787
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit

bb.p:                                             ; preds = %bb.o
  %i.bf = extractvalue { i64, ptr } %i.aw, 1
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit

bb.q:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %0, align 8, !alias.scope !776, !noalias !779, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !779, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i16, ptr %i.bj, align 8, !noalias !779, !noundef !4 ; 2 uses
  %i.bl = zext i16 %i.bk to i64                   ; 2 uses
  %i.bm = sub i64 %i.bi, %i.bl
  %i.bn = icmp ult i64 %i.bm, 6
  br i1 %i.bn, label %bb.r, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !776, !noalias !779, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !776, !noalias !779, !nonnull !4, !align !156, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !4, !noalias !779, !nonnull !4
  %i.bu = tail call { i64, ptr } %i.bt(ptr noundef nonnull %i.bp, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 6), !inline_history !417 ; 2 uses
  %i.bv = extractvalue { i64, ptr } %i.bu, 0
  %i.bw = extractvalue { i64, ptr } %i.bu, 1
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit: ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i, %bb.p, %bb.r
  %.sroa.4.0.i = phi ptr [ %i.bf, %bb.p ], [ %i.bw, %bb.r ], [ undef, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.p ], [ %i.bv, %bb.r ], [ 0, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i ]
  %i.bx = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.by = insertvalue { i64, ptr } %i.bx, ptr %.sroa.4.0.i, 1
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter21print_posix_time_zone(ptr noalias readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 {
_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit:
  %i.a = alloca [24 x i8], align 8                ; 24 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [20 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 20, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !alias.scope !788, !noalias !791
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.f, align 8, !alias.scope !788, !noalias !791
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %3, ptr %i.g, align 8, !alias.scope !788, !noalias !791
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.h = load i8, ptr %1, align 8, !range !799, !alias.scope !794, !noalias !797, !noundef !4
  switch i8 %i.h, label %default.unreachable [
    i8 0, label %bb.a
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.k, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  unreachable

bb.a:                                             ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !794, !noalias !797, !noundef !4
  %i.l = zext i8 %i.k to i64
  br label %bb.d

bb.b:                                             ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !794, !noalias !797, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !794, !noalias !797, !noundef !4
  br label %bb.d

bb.c:                                             ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !794, !noalias !797, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !794, !noalias !797, !noundef !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.05.0.i = phi ptr [ %i.i, %bb.a ], [ %i.n, %bb.b ], [ %i.r, %bb.c ]
  %.sroa.46.0.i = phi i64 [ %i.l, %bb.a ], [ %i.p, %bb.b ], [ %i.t, %bb.c ]
  %i.u = call fastcc { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter28print_posix_abbreviation_wtr(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.i, i64 noundef %.sroa.46.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i = load i32, ptr %i.x, align 8, !alias.scope !794, !noalias !797, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.y = icmp sgt i32 %.val.i, 0
  br i1 %i.y, label %bb.f, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.z = load ptr, ptr %i.a, align 8, !alias.scope !806, !noalias !794, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !807, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load i16, ptr %i.ac, align 8, !noalias !807, !noundef !4 ; 2 uses
  %i.ae = zext i16 %i.ad to i64                   ; 2 uses
  %i.af = icmp eq i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.g, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i, !prof !41

bb.g:                                             ; preds = %bb.f
  %i.ag = call { i64, ptr } @_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.a, align 8, !alias.scope !806, !noalias !794 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  %.pre4.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !808
  %.phi.trans.insert5.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %.pre6.i.i = load i16, ptr %.phi.trans.insert5.i.i, align 8, !alias.scope !808 ; 2 uses
  %.pre7.i.i = zext i16 %.pre6.i.i to i64         ; 2 uses
  %i.aj = icmp eq i64 %.pre4.i.i, %.pre7.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !808)
  br i1 %i.aj, label %bb.i, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i, !prof !267

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !808
  unreachable

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i: ; preds = %bb.h, %bb.f
  %i.ak = phi ptr [ %.pre.i.i, %bb.h ], [ %i.z, %bb.f ] ; 2 uses
  %i.al = phi i16 [ %.pre6.i.i, %bb.h ], [ %i.ad, %bb.f ]
  %.pre-phi11.i.i = phi i64 [ %.pre7.i.i, %bb.h ], [ %i.ae, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load ptr, ptr %i.ak, align 8, !alias.scope !808, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.pre-phi11.i.i
  store i8 45, ptr %i.ao, align 1, !noalias !808
  %i.ap = add i16 %i.al, 1
  store i16 %i.ap, ptr %i.am, align 8, !alias.scope !808
  br label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i

_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i: ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i, %bb.e
  %i.aq = call fastcc { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter35print_posix_time_offset_seconds_wtr(i32 noundef %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.ar = extractvalue { i64, ptr } %i.aq, 0
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i8, ptr %i.at, align 8, !range !62, !alias.scope !794, !noalias !797, !noundef !4 ; 2 uses
  %.not.i = icmp eq i8 %i.au, -1
  br i1 %.not.i, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  call void @llvm.experimental.noalias.scope.decl(metadata !814)
  switch i8 %i.au, label %default.unreachable [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !816, !noalias !817, !noundef !4
  %i.ay = zext i8 %i.ax to i64
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !816, !noalias !817, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !816, !noalias !817, !noundef !4
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !816, !noalias !817, !nonnull !4, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !816, !noalias !817, !noundef !4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.04.0.i.i = phi ptr [ %i.av, %bb.l ], [ %i.ba, %bb.m ], [ %i.be, %bb.n ]
  %.sroa.45.0.i.i = phi i64 [ %i.ay, %bb.l ], [ %i.bc, %bb.m ], [ %i.bg, %bb.n ]
  %i.bh = call fastcc { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter28print_posix_abbreviation_wtr(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.i, i64 noundef %.sroa.45.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.bi = extractvalue { i64, ptr } %i.bh, 0
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bl = load i32, ptr %i.bk, align 8, !alias.scope !816, !noalias !817, !noundef !4 ; 3 uses
  %i.bm = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.val.i, i32 3600) ; 2 uses
  %i.bn = extractvalue { i32, i1 } %i.bm, 0       ; 2 uses
  %i.bo = extractvalue { i32, i1 } %i.bm, 1
  %.not29.i.i = xor i1 %i.bo, true
  %i.bp = add i32 %i.bn, 93599
  %or.cond.i.i = icmp ult i32 %i.bp, 187199
  %or.cond30.i.i = and i1 %or.cond.i.i, %.not29.i.i
  %.not.i.i = icmp eq i32 %i.bl, %i.bn
  %or.cond31.i.i = and i1 %or.cond30.i.i, %.not.i.i
  br i1 %or.cond31.i.i, label %bb.v, label %bb.q, !prof !818

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.bq = icmp sgt i32 %i.bl, 0
  br i1 %i.bq, label %bb.r, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !822)
  %i.br = load ptr, ptr %i.a, align 8, !alias.scope !825, !noalias !816, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !826, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bv = load i16, ptr %i.bu, align 8, !noalias !826, !noundef !4 ; 2 uses
  %i.bw = zext i16 %i.bv to i64                   ; 2 uses
  %i.bx = icmp eq i64 %i.bt, %i.bw
  br i1 %i.bx, label %bb.s, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i.i, !prof !41

bb.s:                                             ; preds = %bb.r
  %i.by = call { i64, ptr } @_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.bz = extractvalue { i64, ptr } %i.by, 0
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !825, !noalias !816 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %.pre4.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !827
  %.phi.trans.insert5.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %.pre6.i.i.i = load i16, ptr %.phi.trans.insert5.i.i.i, align 8, !alias.scope !827 ; 2 uses
  %.pre7.i.i.i = zext i16 %.pre6.i.i.i to i64     ; 2 uses
  %i.cb = icmp eq i64 %.pre4.i.i.i, %.pre7.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  br i1 %i.cb, label %bb.u, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i.i, !prof !267

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !827
  unreachable

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i.i: ; preds = %bb.t, %bb.r
  %i.cc = phi ptr [ %.pre.i.i.i, %bb.t ], [ %i.br, %bb.r ] ; 2 uses
  %i.cd = phi i16 [ %.pre6.i.i.i, %bb.t ], [ %i.bv, %bb.r ]
  %.pre-phi11.i.i.i = phi i64 [ %.pre7.i.i.i, %bb.t ], [ %i.bw, %bb.r ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load ptr, ptr %i.cc, align 8, !alias.scope !827, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.pre-phi11.i.i.i
  store i8 45, ptr %i.cg, align 1, !noalias !827
  %i.ch = add i16 %i.cd, 1
  store i16 %i.ch, ptr %i.ce, align 8, !alias.scope !827
  br label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i

_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i: ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i.i, %bb.q
  %i.ci = call fastcc { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter35print_posix_time_offset_seconds_wtr(i32 noundef %i.bl, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.cj = extractvalue { i64, ptr } %i.ci, 0
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.v

bb.v:                                             ; preds = %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.cl = load ptr, ptr %i.a, align 8, !alias.scope !833, !noalias !816, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !830, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cp = load i16, ptr %i.co, align 8, !noalias !830, !noundef !4 ; 2 uses
  %i.cq = zext i16 %i.cp to i64                   ; 2 uses
  %i.cr = icmp eq i64 %i.cn, %i.cq
  br i1 %i.cr, label %bb.w, label %.thread.i19.i, !prof !41

bb.w:                                             ; preds = %bb.v
  %i.cs = call { i64, ptr } @_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.pre.i21.i = load ptr, ptr %i.a, align 8, !alias.scope !833, !noalias !816 ; 3 uses
  %.phi.trans.insert.i22.i = getelementptr inbounds nuw i8, ptr %.pre.i21.i, i64 8
  %.pre8.i.i = load i64, ptr %.phi.trans.insert.i22.i, align 8, !alias.scope !834
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %.pre.i21.i, i64 16
  %.pre10.i.i = load i16, ptr %.phi.trans.insert9.i.i, align 8, !alias.scope !834 ; 2 uses
  %.pre11.i.i = zext i16 %.pre10.i.i to i64       ; 2 uses
  %i.cv = icmp eq i64 %.pre8.i.i, %.pre11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  br i1 %i.cv, label %bb.y, label %.thread.i19.i, !prof !267

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !834
  unreachable

.thread.i19.i:                                    ; preds = %bb.x, %bb.v
  %i.cw = phi ptr [ %.pre.i21.i, %bb.x ], [ %i.cl, %bb.v ] ; 2 uses
  %i.cx = phi i16 [ %.pre10.i.i, %bb.x ], [ %i.cp, %bb.v ]
  %.pre-phi18.i.i = phi i64 [ %.pre11.i.i, %bb.x ], [ %i.cq, %bb.v ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cz = load ptr, ptr %i.cw, align 8, !alias.scope !834, !nonnull !4, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.pre-phi18.i.i
  store i8 44, ptr %i.da, align 1, !noalias !834
  %i.db = add i16 %i.cx, 1
  store i16 %i.db, ptr %i.cy, align 8, !alias.scope !834
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dd = call fastcc { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_posix_day_time_wtr(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.dc, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.de = extractvalue { i64, ptr } %i.dd, 0
  %i.df = trunc nuw i64 %i.de to i1
  br i1 %i.df, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.z

bb.z:                                             ; preds = %.thread.i19.i
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %i.dg = load ptr, ptr %i.a, align 8, !alias.scope !840, !noalias !843, !nonnull !4, !align !156, !noundef !4 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !noalias !845, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dk = load i16, ptr %i.dj, align 8, !noalias !845, !noundef !4 ; 2 uses
  %i.dl = zext i16 %i.dk to i64                   ; 2 uses
  %i.dm = icmp eq i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.aa, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit, !prof !41

bb.aa:                                            ; preds = %bb.z
  %i.dn = call { i64, ptr } @_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !846 ; 2 uses
  %i.do = extractvalue { i64, ptr } %i.dn, 0
  %i.dp = trunc nuw i64 %i.do to i1
  br i1 %i.dp, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.pre.i37.i.i = load ptr, ptr %i.a, align 8, !alias.scope !840, !noalias !843 ; 3 uses
  %.phi.trans.insert.i38.i.i = getelementptr inbounds nuw i8, ptr %.pre.i37.i.i, i64 8
  %.pre4.i39.i.i = load i64, ptr %.phi.trans.insert.i38.i.i, align 8, !alias.scope !847, !noalias !846
  %.phi.trans.insert5.i40.i.i = getelementptr inbounds nuw i8, ptr %.pre.i37.i.i, i64 16
  %.pre6.i41.i.i = load i16, ptr %.phi.trans.insert5.i40.i.i, align 8, !alias.scope !847, !noalias !846 ; 2 uses
  %.pre7.i42.i.i = zext i16 %.pre6.i41.i.i to i64 ; 2 uses
  %i.dq = icmp eq i64 %.pre4.i39.i.i, %.pre7.i42.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  br i1 %i.dq, label %bb.ac, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit, !prof !267

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13, !noalias !850
  unreachable

_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread: ; preds = %bb.aa, %.thread.i19.i, %bb.w, %bb.s, %bb.o, %bb.g, %bb.d, %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i, %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i
  %.pn10 = phi { i64, ptr } [ %i.dd, %.thread.i19.i ], [ %i.bh, %bb.o ], [ %i.by, %bb.s ], [ %i.ci, %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i ], [ %i.ag, %bb.g ], [ %i.cs, %bb.w ], [ %i.u, %bb.d ], [ %i.aq, %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i ], [ %i.dn, %bb.aa ]
  %.sroa.5.0.i.ph = extractvalue { i64, ptr } %.pn10, 1
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit: ; preds = %bb.z, %bb.ab
  %i.dr = phi ptr [ %.pre.i37.i.i, %bb.ab ], [ %i.dg, %bb.z ] ; 2 uses
  %i.ds = phi i16 [ %.pre6.i41.i.i, %bb.ab ], [ %i.dk, %bb.z ]
  %.pre-phi11.i35.i.i = phi i64 [ %.pre7.i42.i.i, %bb.ab ], [ %i.dl, %bb.z ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.du = load ptr, ptr %i.dr, align 8, !alias.scope !847, !noalias !846, !nonnull !4, !noundef !4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %.pre-phi11.i35.i.i
  store i8 44, ptr %i.dv, align 1, !noalias !850
  %i.dw = add i16 %i.ds, 1
  store i16 %i.dw, ptr %i.dt, align 8, !alias.scope !847, !noalias !846
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dy = call fastcc { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_posix_day_time_wtr(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.dx, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.dz = extractvalue { i64, ptr } %i.dy, 0
  %i.ea = trunc nuw i64 %i.dz to i1
  %i.eb = extractvalue { i64, ptr } %i.dy, 1
  br i1 %i.ea, label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit, label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7

_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7: ; preds = %bb.j, %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %.sroa.5.0.copyload = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.ec = load ptr, ptr %.sroa.0.0.copyload, align 8, !noalias !851, !nonnull !4, !noundef !4
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 8, !noalias !851, !noundef !4
  %i.ef = zext i16 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !invariant.load !4, !noalias !851, !nonnull !4
  %i.ei = call { i64, ptr } %i.eh(ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ec, i64 noundef %i.ef), !noalias !851, !inline_history !320 ; 2 uses
  %i.ej = extractvalue { i64, ptr } %i.ei, 0
  %i.ek = trunc nuw i64 %i.ej to i1
  br i1 %i.ek, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7
  %i.el = extractvalue { i64, ptr } %i.ei, 1
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

bb.ae:                                            ; preds = %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7
  store i16 0, ptr %i.ed, align 8, !noalias !851
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit, %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread
end_hunk_1
