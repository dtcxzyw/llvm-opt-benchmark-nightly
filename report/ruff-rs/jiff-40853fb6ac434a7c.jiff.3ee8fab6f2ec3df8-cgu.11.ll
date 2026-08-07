inline.NumInlined: 199
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs_NtNtCs5oRRSLMQMUC_4jiff3fmt7rfc2822NtB4_15DateTimePrinter22print_civil_always_utc:bb.a
  %i.dl = zext i16 %i.dh to i64                   ; 2 uses
  %i.dm = sub nuw i64 %i.ae, %i.dl
  %i.dn = icmp ugt i64 %i.dm, 1
  br i1 %i.dn, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit23, label %bb.x, !prof !380

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21, !noalias !418
  unreachable

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit23: ; preds = %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.dl ; 2 uses
  %i.dp = shl nuw i8 %.sroa.05.0, 1
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @5, i64 %i.dq ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !418, !noundef !17
  store i8 %i.ds, ptr %i.do, align 1, !noalias !418
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !noalias !418, !noundef !17
  store i8 %i.dv, ptr %i.dt, align 1, !noalias !418
  %i.dw = add i16 %i.ag, 22                       ; 2 uses
  store i16 %i.dw, ptr %i.af, align 8, !alias.scope !418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.dx = zext i16 %i.dw to i64                   ; 2 uses
  %.not.i28 = icmp eq i64 %i.ae, %i.dx
  br i1 %.not.i28, label %bb.y, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit29, !prof !369

bb.y:                                             ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit23
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21, !noalias !424
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit29: ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit23
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.dx
  tail call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull %i.dy, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !noalias !421
  %i.dz = add i16 %i.ag, 23                       ; 2 uses
  store i16 %i.dz, ptr %i.af, align 8, !alias.scope !421, !noalias !426
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.eb = load i8, ptr %i.ea, align 2, !noundef !17
  %.sroa.06.0 = tail call i8 @llvm.abs.i8(i8 %i.eb, i1 false) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.ec = icmp ult i8 %.sroa.06.0, 100
  br i1 %i.ec, label %bb.aa, label %bb.z, !prof !380

bb.z:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit29
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !427
  unreachable

bb.aa:                                            ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit29
  %i.ed = zext i16 %i.dz to i64                   ; 2 uses
  %i.ee = sub nuw i64 %i.ae, %i.ed
  %i.ef = icmp ugt i64 %i.ee, 1
  br i1 %i.ef, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit, label %bb.ab, !prof !380

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21, !noalias !427
  unreachable

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit: ; preds = %bb.aa
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ed ; 2 uses
  %i.eh = shl nuw i8 %.sroa.06.0, 1
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr @5, i64 %i.ei ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !noalias !427, !noundef !17
  store i8 %i.ek, ptr %i.eg, align 1, !noalias !427
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.en = load i8, ptr %i.em, align 1, !noalias !427, !noundef !17
  store i8 %i.en, ptr %i.el, align 1, !noalias !427
  %i.eo = add i16 %i.ag, 25                       ; 2 uses
  store i16 %i.eo, ptr %i.af, align 8, !alias.scope !427
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.ep = zext i16 %i.eo to i64                   ; 2 uses
  %.not.i26 = icmp eq i64 %i.ae, %i.ep
  br i1 %.not.i26, label %bb.ac, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit27, !prof !369

bb.ac:                                            ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21, !noalias !433
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit27: ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ep
  tail call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull %i.eq, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !noalias !430
  %i.er = add i16 %i.ag, 26                       ; 2 uses
  store i16 %i.er, ptr %i.af, align 8, !alias.scope !430, !noalias !435
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.es = zext i16 %i.er to i64                   ; 2 uses
  %i.et = sub nuw i64 %i.ae, %i.es
  %.not.i = icmp ult i64 %i.et, 3
  br i1 %.not.i, label %bb.ad, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit, !prof !369

bb.ad:                                            ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit27
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21, !noalias !439
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit: ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit27
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.es
  tail call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull %i.eu, i64 noundef 3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !noalias !436
  %i.ev = add i16 %i.ag, 29
  store i16 %i.ev, ptr %i.af, align 8, !alias.scope !436, !noalias !441
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit, %bb.d
  %.sroa.3.0 = phi ptr [ %i.aj, %bb.d ], [ undef, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit ]
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 0, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit ]
  %i.ew = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ex = insertvalue { i64, ptr } %i.ew, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.ex
}

; Function Attrs: noinline nonlazybind uwtable
define { i64, ptr } @_RNvMs_NtNtCs5oRRSLMQMUC_4jiff3fmt7rfc2822NtB4_15DateTimePrinter23print_civil_with_offset(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, i32 noundef range(i32 0, 2) %2, i32 %3, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i16, ptr %i.c, align 4, !noundef !17 ; 5 uses
  %i.e = icmp slt i16 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.sroa.216.0.copyload = load i8, ptr %.sroa.216.0..sroa_idx, align 2 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 11
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 1 ; 2 uses
  %.sroa.021.0.insert.ext = zext nneg i16 %i.d to i32
  %i.f = sext i8 %.sroa.216.0.copyload to i32     ; 2 uses
  %i.g = icmp ult i8 %.sroa.216.0.copyload, 3     ; 2 uses
  %i.h = or disjoint i32 %i.f, 12
  %.sroa.02.0.i.i = select i1 %i.g, i32 %i.h, i32 %i.f
  %i.i = add nuw nsw i32 %.sroa.021.0.insert.ext, 32800
  %.neg.i.i = sext i1 %i.g to i32
  %i.j = add nsw i32 %i.i, %.neg.i.i              ; 3 uses
  %i.k = sext i8 %.sroa.3.0.copyload to i32
  %i.l = udiv i32 %i.j, 100
  %i.m = mul nuw nsw i32 %i.j, 1461
  %i.n = lshr i32 %i.m, 2
  %i.o = udiv i32 %i.j, 400
  %i.p = mul nsw i32 %.sroa.02.0.i.i, 979
  %i.q = add nsw i32 %i.p, -2919
  %i.r = lshr i32 %i.q, 5
  %i.s = add nsw i32 %i.k, -12699423
  %i.t = sub nuw nsw i32 %i.s, %i.l
  %i.u = add nuw nsw i32 %i.t, %i.o
  %i.v = add nsw i32 %i.u, %i.n
  %i.w = add nsw i32 %i.v, %i.r
  %i.x = mul i32 %i.w, 613566757
  %i.y = add i32 %i.x, -1879048192
  %i.z = lshr i32 %i.y, 29                        ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.c, label %_RNvMNtNtCs5oRRSLMQMUC_4jiff5civil4dateNtB2_4Date7weekday.exit, !prof !363

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21
  unreachable

_RNvMNtNtCs5oRRSLMQMUC_4jiff5civil4dateNtB2_4Date7weekday.exit: ; preds = %bb.b
  %narrow = add nuw nsw i32 %i.z, 255
  %i.ab = and i32 %narrow, 255
  %i.ac = zext nneg i32 %i.ab to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs_NtNtCs5oRRSLMQMUC_4jiff3fmt7rfc2822NtB4_15DateTimePrinter23print_civil_with_offset, i64 %i.ac
  %switch.load = load ptr, ptr %switch.gep, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !442, !noalias !445, !noundef !17 ; 18 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 20 uses
  %i.ag = load i16, ptr %i.af, align 8, !alias.scope !442, !noalias !445, !noundef !17 ; 3 uses
  %i.ah = zext i16 %i.ag to i64                   ; 2 uses
  %i.ai = sub nuw i64 %i.ae, %i.ah
  %.not.i56 = icmp ult i64 %i.ai, 3
  br i1 %.not.i56, label %bb.e, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit57, !prof !369

bb.d:                                             ; preds = %bb.a
  %i.aj = tail call noundef ptr @_RNvXs_NtNtNtCs5oRRSLMQMUC_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtB4_5ErrorE4from(i24 20)
  br label %bb.ar

bb.e:                                             ; preds = %_RNvMNtNtCs5oRRSLMQMUC_4jiff5civil4dateNtB2_4Date7weekday.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21, !noalias !447
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit57: ; preds = %_RNvMNtNtCs5oRRSLMQMUC_4jiff5civil4dateNtB2_4Date7weekday.exit
  %i.ak = load ptr, ptr %4, align 8, !alias.scope !442, !noalias !445, !nonnull !17, !noundef !17 ; 19 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  tail call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull %i.al, i64 noundef 3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !noalias !442
  %i.am = add i16 %i.ag, 3                        ; 2 uses
  store i16 %i.am, ptr %i.af, align 8, !alias.scope !442, !noalias !445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.an = zext i16 %i.am to i64                   ; 2 uses
  %i.ao = sub nuw i64 %i.ae, %i.an
  %.not.i54 = icmp ult i64 %i.ao, 2
  br i1 %.not.i54, label %bb.f, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit55, !prof !369

bb.f:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit57
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21, !noalias !451
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit55: ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit57
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  tail call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull %i.ap, i64 noundef 2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !noalias !448
  %i.aq = add i16 %i.ag, 5                        ; 3 uses
  store i16 %i.aq, ptr %i.af, align 8, !alias.scope !448, !noalias !453
  %.sroa.09.0 = tail call i8 @llvm.abs.i8(i8 %.sroa.3.0.copyload, i1 false) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.ar = icmp ult i8 %.sroa.09.0, 10
  %i.as = icmp ult i8 %.sroa.09.0, 100
  %spec.select.i = select i1 %i.as, i8 2, i8 3
  %.sroa.0.0.i58 = select i1 %i.ar, i8 1, i8 %spec.select.i ; 2 uses
  %i.at = zext nneg i8 %.sroa.0.0.i58 to i64      ; 2 uses
  %i.au = zext i16 %i.aq to i64                   ; 2 uses
  %i.av = sub nuw i64 %i.ae, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.au
  %.not.i = icmp ult i64 %i.av, %i.at
  br i1 %.not.i, label %bb.g, label %.preheader, !prof !369

bb.g:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit55
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21, !noalias !454
  unreachable

.preheader:                                       ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit55, %.preheader
  %.sroa.0.0.i63 = phi i8 [ %i.bb, %.preheader ], [ %.sroa.09.0, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit55 ] ; 2 uses
  %.sroa.03.0.i62 = phi i64 [ %i.ax, %.preheader ], [ %i.at, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit55 ]
  %i.ax = add nsw i64 %.sroa.03.0.i62, -1         ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  %i.az = urem i8 %.sroa.0.0.i63, 10
  %i.ba = or disjoint i8 %i.az, 48
  store i8 %i.ba, ptr %i.ay, align 1, !noalias !454
  %i.bb = udiv i8 %.sroa.0.0.i63, 10
  %.not8.i.1 = icmp eq i64 %i.ax, 0
  br i1 %.not8.i.1, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_inthEBa_.exit, label %.preheader

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_inthEBa_.exit: ; preds = %.preheader
  %i.bc = zext nneg i8 %.sroa.0.0.i58 to i16
  %i.bd = add i16 %i.aq, %i.bc                    ; 16 uses
  store i16 %i.bd, ptr %i.af, align 8, !alias.scope !454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.be = zext i16 %i.bd to i64                   ; 2 uses
  %.not.i49 = icmp eq i64 %i.ae, %i.be
  br i1 %.not.i49, label %bb.h, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit50, !prof !185

bb.h:                                             ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_inthEBa_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !457
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit50: ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer9write_inthEBa_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.be
  store i8 32, ptr %i.bf, align 1, !noalias !457
  %i.bg = add i16 %i.bd, 1                        ; 2 uses
  store i16 %i.bg, ptr %i.af, align 8, !alias.scope !457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %.sroa.216.0.copyload, ptr %i.b, align 1
  %switch.tableidx77 = add i8 %.sroa.216.0.copyload, -1 ; 2 uses
  %i.bh = icmp ult i8 %switch.tableidx77, 12
  br i1 %i.bh, label %switch.lookup, label %bb.i, !prof !387

bb.i:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impaNtB8_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #21
  unreachable

switch.lookup:                                    ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit50
  %i.bi = zext nneg i8 %switch.tableidx77 to i64
  %switch.gep78 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs_NtNtCs5oRRSLMQMUC_4jiff3fmt7rfc2822NtB4_15DateTimePrinter23print_civil_with_offset.34, i64 %i.bi
  %switch.load79 = load ptr, ptr %switch.gep78, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.bj = zext i16 %i.bg to i64                   ; 2 uses
  %i.bk = sub nuw i64 %i.ae, %i.bj
  %.not.i52 = icmp ult i64 %i.bk, 3
  br i1 %.not.i52, label %bb.j, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit53, !prof !369

bb.j:                                             ; preds = %switch.lookup
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #21, !noalias !463
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit53: ; preds = %switch.lookup
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bj
  tail call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull %i.bl, i64 noundef 3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load79, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !noalias !460
  %i.bm = add i16 %i.bd, 4                        ; 2 uses
  store i16 %i.bm, ptr %i.af, align 8, !alias.scope !460, !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.bn = zext i16 %i.bm to i64                   ; 2 uses
  %.not.i47 = icmp eq i64 %i.ae, %i.bn
  br i1 %.not.i47, label %bb.k, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit48, !prof !185

bb.k:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit53
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !466
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit48: ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit53
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bn
  store i8 32, ptr %i.bo, align 1, !noalias !466
  %i.bp = add i16 %i.bd, 5                        ; 2 uses
  store i16 %i.bp, ptr %i.af, align 8, !alias.scope !466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.bq = icmp samesign ult i16 %i.d, 10000
  br i1 %i.bq, label %bb.m, label %bb.l, !prof !380

bb.l:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit48
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #21, !noalias !469
  unreachable

bb.m:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit48
  %i.br = zext i16 %i.bp to i64                   ; 2 uses
  %i.bs = sub nuw i64 %i.ae, %i.br
  %i.bt = icmp ugt i64 %i.bs, 3
  br i1 %i.bt, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4tEBa_.exit, label %bb.n, !prof !380

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21, !noalias !469
  unreachable

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4tEBa_.exit: ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.br ; 4 uses
  %i.bv = urem i16 %i.d, 100
  %i.bw = shl nuw nsw i16 %i.bv, 1
  %i.bx = zext nneg i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bz = getelementptr inbounds nuw i8, ptr @5, i64 %i.bx ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !469, !noundef !17
  store i8 %i.ca, ptr %i.by, align 1, !noalias !469
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !469, !noundef !17
  store i8 %i.cd, ptr %i.cb, align 1, !noalias !469
  %i.ce = udiv i16 %i.d, 100
  %i.cf = shl nuw nsw i16 %i.ce, 1
  %i.cg = zext nneg i16 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @5, i64 %i.cg ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !469, !noundef !17
  store i8 %i.ci, ptr %i.bu, align 1, !noalias !469
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !469, !noundef !17
  store i8 %i.cl, ptr %i.cj, align 1, !noalias !469
  %i.cm = add i16 %i.bd, 9                        ; 2 uses
  store i16 %i.cm, ptr %i.af, align 8, !alias.scope !469
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.cn = zext i16 %i.cm to i64                   ; 2 uses
  %.not.i45 = icmp eq i64 %i.ae, %i.cn
  br i1 %.not.i45, label %bb.o, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit46, !prof !185

bb.o:                                             ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4tEBa_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !472
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit46: ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad4tEBa_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.cn
  store i8 32, ptr %i.co, align 1, !noalias !472
  %i.cp = add i16 %i.bd, 10                       ; 2 uses
  store i16 %i.cp, ptr %i.af, align 8, !alias.scope !472
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cr = load i8, ptr %i.cq, align 4, !noundef !17
  %.sroa.010.0 = tail call i8 @llvm.abs.i8(i8 %i.cr, i1 false) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.cs = icmp ult i8 %.sroa.010.0, 100
  br i1 %i.cs, label %bb.q, label %bb.p, !prof !380

bb.p:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit46
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !475
  unreachable

bb.q:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit46
  %i.ct = zext i16 %i.cp to i64                   ; 2 uses
  %i.cu = sub nuw i64 %i.ae, %i.ct
  %i.cv = icmp ugt i64 %i.cu, 1
  br i1 %i.cv, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit35, label %bb.r, !prof !380

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21, !noalias !475
  unreachable

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit35: ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ct ; 2 uses
  %i.cx = shl nuw i8 %.sroa.010.0, 1
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @5, i64 %i.cy ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !noalias !475, !noundef !17
  store i8 %i.da, ptr %i.cw, align 1, !noalias !475
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !475, !noundef !17
  store i8 %i.dd, ptr %i.db, align 1, !noalias !475
  %i.de = add i16 %i.bd, 12                       ; 2 uses
  store i16 %i.de, ptr %i.af, align 8, !alias.scope !475
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.df = zext i16 %i.de to i64                   ; 2 uses
  %.not.i43 = icmp eq i64 %i.ae, %i.df
  br i1 %.not.i43, label %bb.s, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit44, !prof !185

bb.s:                                             ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit35
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !478
  unreachable

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit44: ; preds = %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit35
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.df
  store i8 58, ptr %i.dg, align 1, !noalias !478
  %i.dh = add i16 %i.bd, 13                       ; 2 uses
  store i16 %i.dh, ptr %i.af, align 8, !alias.scope !478
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dj = load i8, ptr %i.di, align 1, !noundef !17
  %.sroa.011.0 = tail call i8 @llvm.abs.i8(i8 %i.dj, i1 false) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.dk = icmp ult i8 %.sroa.011.0, 100
  br i1 %i.dk, label %bb.u, label %bb.t, !prof !380

bb.t:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit44
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !481
  unreachable

bb.u:                                             ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit44
  %i.dl = zext i16 %i.dh to i64                   ; 2 uses
  %i.dm = sub nuw i64 %i.ae, %i.dl
  %i.dn = icmp ugt i64 %i.dm, 1
  br i1 %i.dn, label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit34, label %bb.v, !prof !380

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21, !noalias !481
  unreachable

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit34: ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.dl ; 2 uses
  %i.dp = shl nuw i8 %.sroa.011.0, 1
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @5, i64 %i.dq ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !481, !noundef !17
  store i8 %i.ds, ptr %i.do, align 1, !noalias !481
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
end_hunk_0
