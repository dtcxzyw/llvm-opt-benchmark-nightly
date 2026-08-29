Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.12?download=true
inline.NumInlined: 170
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_pieces_offset:bb.a
  %.pre-phi1319.i = phi i64 [ %.pre12.i, %bb.f ], [ %i.i, %.split2.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load ptr, ptr %i.p, align 8, !alias.scope !767, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.pre-phi1319.i
  store i8 90, ptr %i.t, align 1, !noalias !767
  %i.u = add i16 %i.q, 1
  store i16 %i.u, ptr %i.r, align 8, !alias.scope !767
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_zulu_wtr.exit

.split.i:                                         ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.v = load ptr, ptr %0, align 8, !alias.scope !773, !nonnull !5, !align !157, !noundef !5 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !773, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = load i16, ptr %i.y, align 8, !noalias !773, !noundef !5 ; 2 uses
  %i.aa = zext i16 %i.z to i64                    ; 2 uses
  %i.ab = icmp eq i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.h, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i4.i, !prof !42

bb.h:                                             ; preds = %.split.i
  %i.ac = tail call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #14 ; 2 uses
  %i.ad = extractvalue { i64, ptr } %i.ac, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { i64, ptr } %i.ac, 1
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_zulu_wtr.exit

bb.j:                                             ; preds = %bb.h
  %.pre6.i = load ptr, ptr %0, align 8, !alias.scope !773 ; 3 uses
  %.phi.trans.insert7.i = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 8
  %.pre8.i = load i64, ptr %.phi.trans.insert7.i, align 8, !alias.scope !774
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 16
  %.pre10.i = load i16, ptr %.phi.trans.insert9.i, align 8, !alias.scope !774 ; 2 uses
  %.pre11.i = zext i16 %.pre10.i to i64           ; 2 uses
  %i.ag = icmp eq i64 %.pre8.i, %.pre11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  br i1 %i.ag, label %bb.k, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i4.i, !prof !268

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !774
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i4.i: ; preds = %.split.i, %bb.j
  %i.ah = phi ptr [ %.pre6.i, %bb.j ], [ %i.v, %.split.i ] ; 2 uses
  %i.ai = phi i16 [ %.pre10.i, %bb.j ], [ %i.z, %.split.i ]
  %.pre-phi23.i = phi i64 [ %.pre11.i, %bb.j ], [ %i.aa, %.split.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load ptr, ptr %i.ah, align 8, !alias.scope !774, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.pre-phi23.i
  store i8 122, ptr %i.al, align 1, !noalias !774
  %i.am = add i16 %i.ai, 1
  store i16 %i.am, ptr %i.aj, align 8, !alias.scope !774
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_zulu_wtr.exit

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_zulu_wtr.exit: ; preds = %bb.e, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i, %bb.i, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i4.i
  %.sroa.0.0.i6.pn.i = phi i64 [ 0, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i ], [ 1, %bb.e ], [ 1, %bb.i ], [ 0, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i4.i ]
  %.sroa.3.0.i5.pn.i = phi ptr [ undef, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i.i ], [ %i.n, %bb.e ], [ %i.af, %bb.i ], [ undef, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i4.i ]
  %.pn.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i6.pn.i, 0
  %phi.call.i = insertvalue { i64, ptr } %.pn.i, ptr %.sroa.3.0.i5.pn.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_zulu_wtr.exit
  %.pn = phi { i64, ptr } [ %i.by, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit ], [ %i.an, %bb.m ], [ %phi.call.i, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_zulu_wtr.exit ]
  ret { i64, ptr } %.pn

bb.m:                                             ; preds = %bb.b
  %i.an = tail call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_offset_rounded_wtr(i32 %.0.val1, ptr noalias nofree noundef align 8 dereferenceable(24) %0)
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !777, !noalias !780, !nonnull !5, !align !157, !noundef !5 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !782, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.as = load i16, ptr %i.ar, align 8, !noalias !782, !noundef !5 ; 2 uses
  %i.at = zext i16 %i.as to i64                   ; 2 uses
  %i.au = sub i64 %i.aq, %i.at
  %i.av = icmp ult i64 %i.au, 6
  br i1 %i.av, label %bb.o, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i, !prof !42

bb.o:                                             ; preds = %bb.n
  %i.aw = tail call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #14, !noalias !780 ; 2 uses
  %i.ax = extractvalue { i64, ptr } %i.aw, 0
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.p, label %bb.q

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i: ; preds = %bb.n, %bb.q
  %.pre-phi = phi i64 [ %i.bl, %bb.q ], [ %i.at, %bb.n ]
  %i.az = phi i16 [ %i.bk, %bb.q ], [ %i.as, %bb.n ]
  %i.ba = phi ptr [ %i.bg, %bb.q ], [ %i.ao, %bb.n ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.ba, align 8, !alias.scope !783, !noalias !786, !nonnull !5, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.pre-phi
  tail call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.bd, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !783
  %i.be = add i16 %i.az, 6
  store i16 %i.be, ptr %i.bb, align 8, !alias.scope !783, !noalias !788
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit

bb.p:                                             ; preds = %bb.o
  %i.bf = extractvalue { i64, ptr } %i.aw, 1
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit

bb.q:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %0, align 8, !alias.scope !777, !noalias !780, !nonnull !5, !align !157, !noundef !5 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !780, !noundef !5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i16, ptr %i.bj, align 8, !noalias !780, !noundef !5 ; 2 uses
  %i.bl = zext i16 %i.bk to i64                   ; 2 uses
  %i.bm = sub i64 %i.bi, %i.bl
  %i.bn = icmp ult i64 %i.bm, 6
  br i1 %i.bn, label %bb.r, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !777, !noalias !780, !nonnull !5, !noundef !5
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !777, !noalias !780, !nonnull !5, !align !157, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !5, !noalias !780, !nonnull !5
  %i.bu = tail call { i64, ptr } %i.bt(ptr noundef nonnull %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 6) #16, !inline_history !418 ; 2 uses
  %i.bv = extractvalue { i64, ptr } %i.bu, 0
  %i.bw = extractvalue { i64, ptr } %i.bu, 1
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit: ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i, %bb.p, %bb.r
  %.sroa.4.0.i = phi ptr [ %i.bf, %bb.p ], [ %i.bw, %bb.r ], [ undef, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.p ], [ %i.bv, %bb.r ], [ 0, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i ]
  %i.bx = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.by = insertvalue { i64, ptr } %i.bx, ptr %.sroa.4.0.i, 1
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter21print_posix_time_zone(ptr noalias nofree readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 {
_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit:
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
  store ptr %i.b, ptr %i.a, align 8, !alias.scope !789, !noalias !792
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.f, align 8, !alias.scope !789, !noalias !792
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %3, ptr %i.g, align 8, !alias.scope !789, !noalias !792
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.h = load i8, ptr %1, align 8, !range !800, !alias.scope !795, !noalias !798, !noundef !5
  switch i8 %i.h, label %default.unreachable [
    i8 0, label %bb.a
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.k, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  unreachable

bb.a:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !795, !noalias !798, !noundef !5
  %i.l = zext i8 %i.k to i64
  br label %bb.d

bb.b:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !795, !noalias !798, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !795, !noalias !798, !noundef !5
  br label %bb.d

bb.c:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !795, !noalias !798, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !795, !noalias !798, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.46.0.i = phi i64 [ %i.l, %bb.a ], [ %i.p, %bb.b ], [ %i.t, %bb.c ]
  %.sroa.05.0.i = phi ptr [ %i.i, %bb.a ], [ %i.n, %bb.b ], [ %i.r, %bb.c ]
  %i.u = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter28print_posix_abbreviation_wtr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.i, i64 noundef %.sroa.46.0.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i = load i32, ptr %i.x, align 8, !alias.scope !795, !noalias !798, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !801)
  %i.y = icmp sgt i32 %.val.i, 0
  br i1 %i.y, label %bb.f, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.z = load ptr, ptr %i.a, align 8, !alias.scope !807, !noalias !795, !nonnull !5, !align !157, !noundef !5 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !808, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load i16, ptr %i.ac, align 8, !noalias !808, !noundef !5 ; 2 uses
  %i.ae = zext i16 %i.ad to i64                   ; 2 uses
  %i.af = icmp eq i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.g, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.ag = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #14 ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.a, align 8, !alias.scope !807, !noalias !795 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  %.pre4.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !809
  %.phi.trans.insert5.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %.pre6.i.i = load i16, ptr %.phi.trans.insert5.i.i, align 8, !alias.scope !809 ; 2 uses
  %.pre7.i.i = zext i16 %.pre6.i.i to i64         ; 2 uses
  %i.aj = icmp eq i64 %.pre4.i.i, %.pre7.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  br i1 %i.aj, label %bb.i, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i, !prof !268

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !809
  unreachable

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i: ; preds = %bb.h, %bb.f
  %i.ak = phi ptr [ %.pre.i.i, %bb.h ], [ %i.z, %bb.f ] ; 2 uses
  %i.al = phi i16 [ %.pre6.i.i, %bb.h ], [ %i.ad, %bb.f ]
  %.pre-phi11.i.i = phi i64 [ %.pre7.i.i, %bb.h ], [ %i.ae, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load ptr, ptr %i.ak, align 8, !alias.scope !809, !nonnull !5, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.pre-phi11.i.i
  store i8 45, ptr %i.ao, align 1, !noalias !809
  %i.ap = add i16 %i.al, 1
  store i16 %i.ap, ptr %i.am, align 8, !alias.scope !809
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i: ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i, %bb.e
  %i.aq = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter35print_posix_time_offset_seconds_wtr(i32 noundef %.val.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.ar = extractvalue { i64, ptr } %i.aq, 0
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i8, ptr %i.at, align 8, !range !54, !alias.scope !795, !noalias !798, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.au, -1
  br i1 %.not.i, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  switch i8 %i.au, label %default.unreachable [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !817, !noalias !818, !noundef !5
  %i.ay = zext i8 %i.ax to i64
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !817, !noalias !818, !nonnull !5, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !817, !noalias !818, !noundef !5
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !817, !noalias !818, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !817, !noalias !818, !noundef !5
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.45.0.i.i = phi i64 [ %i.ay, %bb.l ], [ %i.bc, %bb.m ], [ %i.bg, %bb.n ]
  %.sroa.04.0.i.i = phi ptr [ %i.av, %bb.l ], [ %i.ba, %bb.m ], [ %i.be, %bb.n ]
  %i.bh = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter28print_posix_abbreviation_wtr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.i.i, i64 noundef %.sroa.45.0.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.bi = extractvalue { i64, ptr } %i.bh, 0
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bl = load i32, ptr %i.bk, align 8, !alias.scope !817, !noalias !818, !noundef !5 ; 3 uses
  %4 = add nsw i32 %.val.i, 3600
  %i.bm = add i32 %.val.i, 97199
  %or.cond.i.i = icmp ult i32 %i.bm, 187199
  %.not.i.i = icmp eq i32 %i.bl, %4
  %or.cond30.i.i = select i1 %or.cond.i.i, i1 %.not.i.i, i1 false, !prof !819
  br i1 %or.cond30.i.i, label %bb.v, label %bb.q, !prof !819

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.bn = icmp sgt i32 %i.bl, 0
  br i1 %i.bn, label %bb.r, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.bo = load ptr, ptr %i.a, align 8, !alias.scope !826, !noalias !817, !nonnull !5, !align !157, !noundef !5 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !827, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bs = load i16, ptr %i.br, align 8, !noalias !827, !noundef !5 ; 2 uses
  %i.bt = zext i16 %i.bs to i64                   ; 2 uses
  %i.bu = icmp eq i64 %i.bq, %i.bt
  br i1 %i.bu, label %bb.s, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i.i, !prof !42

bb.s:                                             ; preds = %bb.r
  %i.bv = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #14 ; 2 uses
  %i.bw = extractvalue { i64, ptr } %i.bv, 0
  %i.bx = trunc nuw i64 %i.bw to i1
  br i1 %i.bx, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !826, !noalias !817 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %.pre4.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !828
  %.phi.trans.insert5.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %.pre6.i.i.i = load i16, ptr %.phi.trans.insert5.i.i.i, align 8, !alias.scope !828 ; 2 uses
  %.pre7.i.i.i = zext i16 %.pre6.i.i.i to i64     ; 2 uses
  %i.by = icmp eq i64 %.pre4.i.i.i, %.pre7.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  br i1 %i.by, label %bb.u, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i.i, !prof !268

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !828
  unreachable

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i.i: ; preds = %bb.t, %bb.r
  %i.bz = phi ptr [ %.pre.i.i.i, %bb.t ], [ %i.bo, %bb.r ] ; 2 uses
  %i.ca = phi i16 [ %.pre6.i.i.i, %bb.t ], [ %i.bs, %bb.r ]
  %.pre-phi11.i.i.i = phi i64 [ %.pre7.i.i.i, %bb.t ], [ %i.bt, %bb.r ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cc = load ptr, ptr %i.bz, align 8, !alias.scope !828, !nonnull !5, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.pre-phi11.i.i.i
  store i8 45, ptr %i.cd, align 1, !noalias !828
  %i.ce = add i16 %i.ca, 1
  store i16 %i.ce, ptr %i.cb, align 8, !alias.scope !828
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i: ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i.i, %bb.q
  %i.cf = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter35print_posix_time_offset_seconds_wtr(i32 noundef %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.cg = extractvalue { i64, ptr } %i.cf, 0
  %i.ch = trunc nuw i64 %i.cg to i1
  br i1 %i.ch, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.v

bb.v:                                             ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.ci = load ptr, ptr %i.a, align 8, !alias.scope !834, !noalias !817, !nonnull !5, !align !157, !noundef !5 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !831, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cm = load i16, ptr %i.cl, align 8, !noalias !831, !noundef !5 ; 2 uses
  %i.cn = zext i16 %i.cm to i64                   ; 2 uses
  %i.co = icmp eq i64 %i.ck, %i.cn
  br i1 %i.co, label %bb.w, label %.thread.i19.i, !prof !42

bb.w:                                             ; preds = %bb.v
  %i.cp = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #14 ; 2 uses
  %i.cq = extractvalue { i64, ptr } %i.cp, 0
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.pre.i21.i = load ptr, ptr %i.a, align 8, !alias.scope !834, !noalias !817 ; 3 uses
  %.phi.trans.insert.i22.i = getelementptr inbounds nuw i8, ptr %.pre.i21.i, i64 8
  %.pre8.i.i = load i64, ptr %.phi.trans.insert.i22.i, align 8, !alias.scope !835
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %.pre.i21.i, i64 16
  %.pre10.i.i = load i16, ptr %.phi.trans.insert9.i.i, align 8, !alias.scope !835 ; 2 uses
  %.pre11.i.i = zext i16 %.pre10.i.i to i64       ; 2 uses
  %i.cs = icmp eq i64 %.pre8.i.i, %.pre11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !835)
  br i1 %i.cs, label %bb.y, label %.thread.i19.i, !prof !268

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !835
  unreachable

.thread.i19.i:                                    ; preds = %bb.x, %bb.v
  %i.ct = phi ptr [ %.pre.i21.i, %bb.x ], [ %i.ci, %bb.v ] ; 2 uses
  %i.cu = phi i16 [ %.pre10.i.i, %bb.x ], [ %i.cm, %bb.v ]
  %.pre-phi18.i.i = phi i64 [ %.pre11.i.i, %bb.x ], [ %i.cn, %bb.v ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cw = load ptr, ptr %i.ct, align 8, !alias.scope !835, !nonnull !5, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.pre-phi18.i.i
  store i8 44, ptr %i.cx, align 1, !noalias !835
  %i.cy = add i16 %i.cu, 1
  store i16 %i.cy, ptr %i.cv, align 8, !alias.scope !835
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.da = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_posix_day_time_wtr(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cz, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.db = extractvalue { i64, ptr } %i.da, 0
  %i.dc = trunc nuw i64 %i.db to i1
  br i1 %i.dc, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.z

bb.z:                                             ; preds = %.thread.i19.i
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.dd = load ptr, ptr %i.a, align 8, !alias.scope !841, !noalias !844, !nonnull !5, !align !157, !noundef !5 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i64, ptr %i.de, align 8, !noalias !846, !noundef !5
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dh = load i16, ptr %i.dg, align 8, !noalias !846, !noundef !5 ; 2 uses
  %i.di = zext i16 %i.dh to i64                   ; 2 uses
  %i.dj = icmp eq i64 %i.df, %i.di
  br i1 %i.dj, label %bb.aa, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit, !prof !42

bb.aa:                                            ; preds = %bb.z
  %i.dk = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #14, !noalias !847 ; 2 uses
  %i.dl = extractvalue { i64, ptr } %i.dk, 0
  %i.dm = trunc nuw i64 %i.dl to i1
  br i1 %i.dm, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.pre.i37.i.i = load ptr, ptr %i.a, align 8, !alias.scope !841, !noalias !844 ; 3 uses
  %.phi.trans.insert.i38.i.i = getelementptr inbounds nuw i8, ptr %.pre.i37.i.i, i64 8
  %.pre4.i39.i.i = load i64, ptr %.phi.trans.insert.i38.i.i, align 8, !alias.scope !848, !noalias !847
  %.phi.trans.insert5.i40.i.i = getelementptr inbounds nuw i8, ptr %.pre.i37.i.i, i64 16
  %.pre6.i41.i.i = load i16, ptr %.phi.trans.insert5.i40.i.i, align 8, !alias.scope !848, !noalias !847 ; 2 uses
  %.pre7.i42.i.i = zext i16 %.pre6.i41.i.i to i64 ; 2 uses
  %i.dn = icmp eq i64 %.pre4.i39.i.i, %.pre7.i42.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !848)
  br i1 %i.dn, label %bb.ac, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit, !prof !268

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !851
  unreachable

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread: ; preds = %bb.aa, %.thread.i19.i, %bb.w, %bb.s, %bb.o, %bb.g, %bb.d, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i
  %.pn10 = phi { i64, ptr } [ %i.da, %.thread.i19.i ], [ %i.bh, %bb.o ], [ %i.bv, %bb.s ], [ %i.cf, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i ], [ %i.ag, %bb.g ], [ %i.cp, %bb.w ], [ %i.u, %bb.d ], [ %i.aq, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i ], [ %i.dk, %bb.aa ]
  %.sroa.5.0.i.ph = extractvalue { i64, ptr } %.pn10, 1
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit: ; preds = %bb.z, %bb.ab
  %i.do = phi ptr [ %.pre.i37.i.i, %bb.ab ], [ %i.dd, %bb.z ] ; 2 uses
  %i.dp = phi i16 [ %.pre6.i41.i.i, %bb.ab ], [ %i.dh, %bb.z ]
  %.pre-phi11.i35.i.i = phi i64 [ %.pre7.i42.i.i, %bb.ab ], [ %i.di, %bb.z ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dr = load ptr, ptr %i.do, align 8, !alias.scope !848, !noalias !847, !nonnull !5, !noundef !5
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.pre-phi11.i35.i.i
  store i8 44, ptr %i.ds, align 1, !noalias !851
  %i.dt = add i16 %i.dp, 1
  store i16 %i.dt, ptr %i.dq, align 8, !alias.scope !848, !noalias !847
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dv = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_posix_day_time_wtr(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.du, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.dw = extractvalue { i64, ptr } %i.dv, 0
  %i.dx = trunc nuw i64 %i.dw to i1
  %i.dy = extractvalue { i64, ptr } %i.dv, 1
  br i1 %i.dx, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7: ; preds = %bb.j, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %.sroa.5.0.copyload = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.dz = load ptr, ptr %.sroa.0.0.copyload, align 8, !noalias !852, !nonnull !5, !noundef !5
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 8, !noalias !852, !noundef !5
  %i.ec = zext i16 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !invariant.load !5, !noalias !852, !nonnull !5
  %i.ef = call { i64, ptr } %i.ee(ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef %i.ec) #16, !noalias !852, !inline_history !321 ; 2 uses
  %i.eg = extractvalue { i64, ptr } %i.ef, 0
  %i.eh = trunc nuw i64 %i.eg to i1
  br i1 %i.eh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7
  %i.ei = extractvalue { i64, ptr } %i.ef, 1
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

bb.ae:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7
  store i16 0, ptr %i.ea, align 8, !noalias !852
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread
  %.sroa.5.0.i.ph.pn.pn = phi ptr [ %i.dy, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit ], [ %.sroa.5.0.i.ph, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread ], [ %i.ei, %bb.ad ], [ undef, %bb.ae ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit ], [ 1, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread ], [ 1, %bb.ad ], [ 0, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ej = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ek = insertvalue { i64, ptr } %i.ej, ptr %.sroa.5.0.i.ph.pn.pn, 1
  ret { i64, ptr } %i.ek
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_offset_rounded_buf(i32 %.0.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %.0.val, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %i.a, label %bb.d, label %bb.b

end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporal5ErrorNtB6_5Debug3fmtBE_:bb.a
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.ay:                                            ; preds = %bb.a
  %i.bl = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 23), !noalias !1264
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.az:                                            ; preds = %bb.a
  %i.bm = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 20), !noalias !1264
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.ba:                                            ; preds = %bb.a
  %i.bn = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 18), !noalias !1264
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.bb:                                            ; preds = %bb.a
  %i.bo = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 17), !noalias !1264
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.bc:                                            ; preds = %bb.a
  %i.bp = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 20), !noalias !1264
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ %i.m, %bb.e ], [ %i.n, %bb.f ], [ %i.p, %bb.g ], [ %i.q, %bb.h ], [ %i.s, %bb.i ], [ %i.t, %bb.j ], [ %i.u, %bb.k ], [ %i.v, %bb.l ], [ %i.w, %bb.m ], [ %i.y, %bb.n ], [ %i.z, %bb.o ], [ %i.aa, %bb.p ], [ %i.ab, %bb.q ], [ %i.ad, %bb.r ], [ %i.ae, %bb.s ], [ %i.af, %bb.t ], [ %i.ag, %bb.u ], [ %i.ah, %bb.v ], [ %i.ai, %bb.w ], [ %i.aj, %bb.x ], [ %i.ak, %bb.y ], [ %i.al, %bb.z ], [ %i.an, %bb.aa ], [ %i.ao, %bb.ab ], [ %i.ap, %bb.ac ], [ %i.aq, %bb.ad ], [ %i.ar, %bb.ae ], [ %i.as, %bb.af ], [ %i.at, %bb.ag ], [ %i.au, %bb.ah ], [ %i.av, %bb.ai ], [ %i.aw, %bb.aj ], [ %i.ax, %bb.ak ], [ %i.ay, %bb.al ], [ %i.az, %bb.am ], [ %i.ba, %bb.an ], [ %i.bb, %bb.ao ], [ %i.bc, %bb.ap ], [ %i.bd, %bb.aq ], [ %i.be, %bb.ar ], [ %i.bf, %bb.as ], [ %i.bg, %bb.at ], [ %i.bh, %bb.au ], [ %i.bi, %bb.av ], [ %i.bj, %bb.aw ], [ %i.bk, %bb.ax ], [ %i.bl, %bb.ay ], [ %i.bm, %bb.az ], [ %i.bn, %bb.ba ], [ %i.bo, %bb.bb ], [ %i.bp, %bb.bc ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff4util5cacheNtB4_10ExpirationNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !range !1270, !noundef !5 ; 2 uses
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.d, ptr %i.f, align 8
  %i.g = tail call { i64, i32 } @_RNvNtNtCsa9sSWSfjDbm_4jiff3now3sys14monotonic_time() ; 2 uses
  %i.h = extractvalue { i64, i32 } %i.g, 1        ; 2 uses
  %.not12 = icmp eq i32 %i.h, -1
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, i32 } %i.g, 0
  %i.j = call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant22checked_duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef %i.i, i32 noundef %i.h) ; 2 uses
  %i.k = extractvalue { i64, i32 } %i.j, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not13 = icmp eq i32 %i.k, -1
  br i1 %.not13, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.c
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 7)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i32 } %i.j, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.m, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.k, ptr %i.n, align 8
  %i.o = call noundef zeroext i1 @_RNvXsa_NtCs3oUPovFnLWP_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.in = phi i1 [ %i.o, %bb.f ], [ %i.l, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold nonlazybind uwtable
define noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error5zonedNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef range(i8 0, 18) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error5zonedNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i8 noundef %0) #14
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer14BorrowedWriterNtB6_5Write10as_mut_vecB8_(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @_RNvYNtNtNtCsa9sSWSfjDbm_4jiff3fmt6buffer14BorrowedWriterNtB6_5Write10write_charB8_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !1271
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !1271
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !1271
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !1271
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !1271
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !1271
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !1271
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !1271
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !1271
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !1271
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call { i64, ptr } @_RNvXs5_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriterNtB7_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.ab
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i32 } @_RNvNtNtCsa9sSWSfjDbm_4jiff3now3sys14monotonic_time() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone16kind_description(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error2tz8timezoneNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant11checked_add(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs5_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriterNtB7_5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64) unnamed_addr #8

; Function Attrs: cold noinline nonlazybind uwtable
declare hidden { i8, i8 } @_RNvNvMs1_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB7_6Offset23round_to_nearest_minute5round(i8 noundef, i8 noundef) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6OffsetNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util6escapeNtB2_4ByteNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsa9sSWSfjDbm_4jiff4span4UnitNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRhNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant22checked_duration_since(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtCs3oUPovFnLWP_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error5zonedNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i8 noundef range(i8 0, 18)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noinline }
attributes #15 = { noinline noreturn }
attributes #16 = { inlinehint }
attributes #17 = { cold }
attributes #18 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{i32 0, i32 2}
!5 = !{}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_: argument 0"}
!8 = distinct !{!8, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_: argument 0"}
!11 = distinct !{!11, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEEB1z_"}
!12 = !{!10, !7}
!13 = !{!14, !16, !10, !7}
!14 = distinct !{!14, !15, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!15 = distinct !{!15, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!16 = distinct !{!16, !17, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_: argument 0"}
!17 = distinct !{!17, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1d_"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_buf: argument 0"}
!20 = distinct !{!20, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_buf"}
!21 = !{!22}
!22 = distinct !{!22, !20, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_buf: argument 1"}
!23 = !{!24}
!24 = distinct !{!24, !20, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_zoned_buf: argument 2"}
!25 = !{!19, !24}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf: argument 0"}
!28 = distinct !{!28, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf: argument 1"}
!31 = !{!27, !30, !19, !22, !24}
!32 = !{!27, !19, !22}
!33 = !{i8 0, i8 2}
!34 = !{!27, !19}
!35 = !{!30, !22, !24}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!38 = distinct !{!38, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = !{!37, !27, !30, !19, !22, !24}
!41 = !{!37, !30, !24}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!19, !22}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter30print_time_zone_annotation_buf: argument 0"}
!46 = distinct !{!46, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter30print_time_zone_annotation_buf"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!49 = distinct !{!49, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!50 = !{!48, !45, !24}
!51 = !{!48, !45, !19, !22, !24}
!52 = !{!"branch_weights", i32 4000000, i32 4001}
!53 = !{!45, !19, !22, !24}
!54 = !{i8 -1, i8 3}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str: argument 0"}
!57 = distinct !{!57, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str"}
!58 = !{!"branch_weights", i32 4001, i32 4000000}
!59 = !{!56, !60, !45, !19, !22, !24}
!60 = distinct !{!60, !57, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str: argument 1"}
!61 = !{!56, !45, !19, !22, !24}
!62 = !{!56, !45, !24}
!63 = !{!60, !19, !22}
!64 = !{!65, !45, !24}
!65 = distinct !{!65, !66, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!66 = distinct !{!66, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!67 = !{!65}
!68 = !{!65, !45, !19, !22, !24}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str: argument 0"}
!71 = distinct !{!71, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str"}
!72 = !{!70, !24}
!73 = !{!74, !19, !22}
!74 = distinct !{!74, !71, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str: argument 1"}
!75 = !{!70, !74, !19, !22, !24}
!76 = !{!70, !19, !22, !24}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_timestamp_buf: argument 0"}
!79 = distinct !{!79, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_timestamp_buf"}
!80 = !{!81}
!81 = distinct !{!81, !79, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_timestamp_buf: argument 1"}
!82 = !{!78, !81}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf: argument 0"}
!85 = distinct !{!85, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf"}
!86 = !{!87}
!87 = distinct !{!87, !85, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf: argument 1"}
!88 = !{!84, !78}
!89 = !{!87, !81}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!92 = distinct !{!92, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!93 = !{!91, !84, !87, !78, !81}
!94 = !{!91, !87, !81}
!95 = !{!84, !87, !78, !81}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_zulu_buf: argument 0"}
!98 = distinct !{!98, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_zulu_buf"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!101 = distinct !{!101, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!102 = !{!100, !97, !81}
!103 = !{!100, !97, !78, !81}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!106 = distinct !{!106, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!107 = !{!105, !97, !81}
!108 = !{!105, !97, !78, !81}
!109 = !{!97, !81}
!110 = !{!97, !78, !81}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter23print_iso_week_date_buf: argument 0"}
!113 = distinct !{!113, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter23print_iso_week_date_buf"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter23print_iso_week_date_buf: argument 1"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str: argument 0"}
!118 = distinct !{!118, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str"}
!119 = !{!117, !115}
!120 = !{!121, !112}
!121 = distinct !{!121, !118, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str: argument 1"}
!122 = !{!117, !121, !112, !115}
!123 = !{!117, !112, !115}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4tEBa_: argument 0"}
!126 = distinct !{!126, !"_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4tEBa_"}
!127 = !{!125, !112, !115}
!128 = !{!125, !115}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!131 = distinct !{!131, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!132 = !{!130, !112, !115}
!133 = !{!130, !115}
!134 = !{!135, !112, !115}
!135 = distinct !{!135, !136, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!136 = distinct !{!136, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!137 = !{!138, !112, !115}
!138 = distinct !{!138, !139, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!139 = distinct !{!139, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!140 = !{!112, !115}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_: argument 0"}
!143 = distinct !{!143, !"_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_"}
!144 = !{!142, !112, !115}
!145 = !{!142, !115}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!148 = distinct !{!148, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!149 = !{!147, !112, !115}
!150 = !{!147, !115}
!151 = !{i8 1, i8 8}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!154 = distinct !{!154, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!155 = !{!153, !112, !115}
!156 = !{!153, !115}
!157 = !{i64 8}
!158 = !{i64 4}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter31print_timestamp_with_offset_buf: argument 0"}
!161 = distinct !{!161, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter31print_timestamp_with_offset_buf"}
!162 = !{!163}
!163 = distinct !{!163, !161, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter31print_timestamp_with_offset_buf: argument 1"}
!164 = !{!160, !163}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf: argument 0"}
!167 = distinct !{!167, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf"}
!168 = !{!169}
!169 = distinct !{!169, !167, !"_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_buf: argument 1"}
!170 = !{!166, !160}
!171 = !{!169, !163}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char: argument 0"}
!174 = distinct !{!174, !"_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char"}
!175 = !{!173, !166, !169, !160, !163}
!176 = !{!173, !169, !163}
!177 = !{!166, !169, !160, !163}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKjd_NCNvMNtNtB8_8temporal7printerNtB1l_15DateTimePrinter10print_date0EBa_: argument 0"}
!180 = distinct !{!180, !"_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKjd_NCNvMNtNtB8_8temporal7printerNtB1l_15DateTimePrinter10print_date0EBa_"}
!181 = !{!182, !183}
!182 = distinct !{!182, !180, !"_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKjd_NCNvMNtNtB8_8temporal7printerNtB1l_15DateTimePrinter10print_date0EBa_: argument 1"}
!183 = distinct !{!183, !180, !"_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKjd_NCNvMNtNtB8_8temporal7printerNtB1l_15DateTimePrinter10print_date0EBa_: argument 2"}
!184 = distinct !{null}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer23with_vec_spare_capacityINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBa_5error5ErrorENCNvMNtNtB8_8temporal7printerNtB2q_15DateTimePrinter10print_date0EBa_: argument 0"}
!187 = distinct !{!187, !"_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer23with_vec_spare_capacityINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBa_5error5ErrorENCNvMNtNtB8_8temporal7printerNtB2q_15DateTimePrinter10print_date0EBa_"}
!188 = !{!189, !190, !179}
!189 = distinct !{!189, !187, !"_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer23with_vec_spare_capacityINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBa_5error5ErrorENCNvMNtNtB8_8temporal7printerNtB2q_15DateTimePrinter10print_date0EBa_: argument 1"}
end_hunk_1
