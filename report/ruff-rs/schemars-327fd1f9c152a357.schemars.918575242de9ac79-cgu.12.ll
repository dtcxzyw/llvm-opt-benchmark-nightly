inline.NumInlined: 146
inline.NumDeleted: 110
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc25get_title_and_description:bb.a
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !307, !noundef !11
  switch i8 %i.j, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit [
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 32, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i
  %.not13.i = icmp eq i64 %i.h, 0
  br i1 %.not13.i, label %.split, label %.lr.ph23.i

.split:                                           ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.0.0.lcssa32.i58 = phi ptr [ %.sroa.0.016.i, %bb.c ], [ %1, %bb.a ], [ %scevgep.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !310
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.lcssa32.i58, i64 noundef 0)
  %i.k = load i64, ptr %i.d, align 8, !range !24, !noalias !310, !noundef !11
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.d, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit, !prof !26

bb.d:                                             ; preds = %.split
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 27 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit: ; preds = %.split
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !310, !nonnull !11, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !310, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !310
  br label %bb.p

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit: ; preds = %.lr.ph23.i
  %i.q = icmp eq i8 %i.e, 35
  br i1 %i.q, label %.preheader, label %.split14

.split14:                                         ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !313
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.016.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.10.122.i)
  %i.r = load i64, ptr %i.c, align 8, !range !24, !noalias !313, !noundef !11
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.e, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit15, !prof !26

bb.e:                                             ; preds = %.split14
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 27 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit15: ; preds = %.split14
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !313, !nonnull !11, !noundef !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !313, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !313
  br label %bb.p

bb.f:                                             ; preds = %.preheader, %bb.h
  %.sroa.01.0 = phi i64 [ %.sroa.10.122.i, %bb.h ], [ %.sroa.010.081, %.preheader ] ; 5 uses
  %i.x = sub i64 %.sroa.10.122.i, %.sroa.01.0     ; 2 uses
  %.not.i16 = icmp eq i64 %i.x, 0
  br i1 %.not.i16, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit, label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.f, %bb.g
  %.sroa.014.0.i = phi i64 [ %i.z, %bb.g ], [ %i.x, %bb.f ]
  %.sroa.9.1.i = phi i64 [ %i.y, %bb.g ], [ %.sroa.10.122.i, %bb.f ] ; 2 uses
  %.not20.i = icmp eq i64 %.sroa.9.1.i, 0
  br i1 %.not20.i, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30, label %bb.g

bb.g:                                             ; preds = %.preheader23.i
  %i.y = add nsw i64 %.sroa.9.1.i, -1             ; 2 uses
  %i.z = add i64 %.sroa.014.0.i, -1               ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit, label %.preheader23.i

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit: ; preds = %bb.g, %bb.f
  %.sroa.9.0.i = phi i64 [ %.sroa.10.122.i, %bb.f ], [ %i.y, %bb.g ] ; 3 uses
  %.not82 = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %.not82, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit
  %scevgep = getelementptr i8, ptr %.sroa.0.016.i, i64 %.sroa.9.0.i
  br label %.lr.ph

.preheader:                                       ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit, %bb.h
  %.sroa.010.081 = phi i64 [ %i.ae, %bb.h ], [ 0, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 %.sroa.010.081
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !11
  %i.ad = icmp eq i8 %i.ac, 10
  br i1 %i.ad, label %bb.f, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.ae = add nuw i64 %.sroa.010.081, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %.sroa.10.122.i
  br i1 %exitcond.not, label %bb.f, label %.preheader

.lr.ph.preheader.i18:                             ; preds = %.lr.ph
  %scevgep.i19 = getelementptr i8, ptr %.sroa.03.083, i64 %.sroa.6.084
  br label %.lr.ph.i20

.lr.ph.i20thread-pre-split:                       ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i21, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.af, align 1, !alias.scope !316
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20thread-pre-split, %.lr.ph.preheader.i18
  %i.ag = phi i8 [ %.pr, %.lr.ph.i20thread-pre-split ], [ %i.bf, %.lr.ph.preheader.i18 ]
  %.sroa.0.016.i21 = phi ptr [ %i.af, %.lr.ph.i20thread-pre-split ], [ %.sroa.03.083, %.lr.ph.preheader.i18 ] ; 4 uses
  %.sroa.10.015.i22 = phi i64 [ %i.ah, %.lr.ph.i20thread-pre-split ], [ %.sroa.6.084, %.lr.ph.preheader.i18 ] ; 2 uses
  switch i8 %i.ag, label %.lr.ph23.i27 [
    i8 9, label %bb.i
    i8 10, label %bb.i
    i8 12, label %bb.i
    i8 13, label %bb.i
    i8 32, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i20, %.lr.ph.i20, %.lr.ph.i20, %.lr.ph.i20, %.lr.ph.i20
  %i.ah = add nsw i64 %.sroa.10.015.i22, -1       ; 2 uses
  %.not.i23 = icmp eq i64 %i.ah, 0
  br i1 %.not.i23, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30, label %.lr.ph.i20thread-pre-split

.lr.ph23.i27:                                     ; preds = %.lr.ph.i20, %bb.j
  %.sroa.10.122.i28 = phi i64 [ %i.ai, %bb.j ], [ %.sroa.10.015.i22, %.lr.ph.i20 ] ; 2 uses
  %i.ai = add nsw i64 %.sroa.10.122.i28, -1       ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i21, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !316, !noundef !11
  switch i8 %i.ak, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30 [
    i8 9, label %bb.j
    i8 10, label %bb.j
    i8 12, label %bb.j
    i8 13, label %bb.j
    i8 32, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph23.i27, %.lr.ph23.i27, %.lr.ph23.i27, %.lr.ph23.i27, %.lr.ph23.i27
  %.not13.i29 = icmp eq i64 %i.ai, 0
  br i1 %.not13.i29, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30, label %.lr.ph23.i27

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30: ; preds = %.preheader23.i, %bb.o, %bb.i, %.lr.ph23.i27, %bb.j, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit
  %.sroa.0.0.lcssa32.i24 = phi ptr [ %scevgep, %bb.o ], [ %.sroa.0.016.i, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit ], [ %.sroa.0.016.i21, %.lr.ph23.i27 ], [ %scevgep.i19, %bb.i ], [ %.sroa.0.016.i21, %bb.j ], [ %.sroa.0.016.i, %.preheader23.i ]
  %.sroa.10.1.lcssa.i25 = phi i64 [ 0, %bb.o ], [ 0, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit ], [ %.sroa.10.122.i28, %.lr.ph23.i27 ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %.preheader23.i ]
  %.not21.i = icmp eq i64 %.sroa.01.0, 0
  br i1 %.not21.i, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit39, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30
  %i.al = add i64 %.sroa.01.0, -1
  %.not125 = icmp ugt i64 %.sroa.10.122.i, %i.al
  br i1 %.not125, label %.preheader.preheader.i.split, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53.loopexit86

.preheader.preheader.i.split:                     ; preds = %.preheader.preheader.i
  %scevgep111 = getelementptr i8, ptr %.sroa.0.016.i, i64 %.sroa.01.0
  %i.am = sub i64 %.sroa.10.122.i, %.sroa.01.0
  br label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit39

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit39: ; preds = %.preheader.preheader.i.split, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30
  %.sroa.9.2.i = phi i64 [ %.sroa.10.122.i, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30 ], [ %i.am, %.preheader.preheader.i.split ] ; 3 uses
  %.sroa.0.2.i = phi ptr [ %.sroa.0.016.i, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30 ], [ %scevgep111, %.preheader.preheader.i.split ] ; 3 uses
  %.not14.i40 = icmp eq i64 %.sroa.9.2.i, 0
  br i1 %.not14.i40, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53, label %.lr.ph.preheader.i41

.lr.ph.preheader.i41:                             ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit39
  %scevgep.i42 = getelementptr i8, ptr %.sroa.0.2.i, i64 %.sroa.9.2.i
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.k, %.lr.ph.preheader.i41
  %.sroa.0.016.i44 = phi ptr [ %i.ap, %bb.k ], [ %.sroa.0.2.i, %.lr.ph.preheader.i41 ] ; 5 uses
  %.sroa.10.015.i45 = phi i64 [ %i.ao, %bb.k ], [ %.sroa.9.2.i, %.lr.ph.preheader.i41 ] ; 2 uses
  %i.an = load i8, ptr %.sroa.0.016.i44, align 1, !alias.scope !319, !noundef !11
  switch i8 %i.an, label %.lr.ph23.i50 [
    i8 9, label %bb.k
    i8 10, label %bb.k
    i8 12, label %bb.k
    i8 13, label %bb.k
    i8 32, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.i43, %.lr.ph.i43, %.lr.ph.i43, %.lr.ph.i43, %.lr.ph.i43
  %i.ao = add nsw i64 %.sroa.10.015.i45, -1       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i44, i64 1
  %.not.i46 = icmp eq i64 %i.ao, 0
  br i1 %.not.i46, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53, label %.lr.ph.i43

.lr.ph23.i50:                                     ; preds = %.lr.ph.i43, %bb.l
  %.sroa.10.122.i51 = phi i64 [ %i.aq, %bb.l ], [ %.sroa.10.015.i45, %.lr.ph.i43 ] ; 2 uses
  %i.aq = add nsw i64 %.sroa.10.122.i51, -1       ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i44, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !319, !noundef !11
  switch i8 %i.as, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53 [
    i8 9, label %bb.l
    i8 10, label %bb.l
    i8 12, label %bb.l
    i8 13, label %bb.l
    i8 32, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph23.i50, %.lr.ph23.i50, %.lr.ph23.i50, %.lr.ph23.i50, %.lr.ph23.i50
  %.not13.i52 = icmp eq i64 %i.aq, 0
  br i1 %.not13.i52, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53, label %.lr.ph23.i50

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53.loopexit86: ; preds = %.preheader.preheader.i
  %scevgep.i37 = getelementptr nuw i8, ptr %.sroa.0.016.i, i64 %.sroa.10.122.i
  br label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53: ; preds = %bb.k, %.lr.ph23.i50, %bb.l, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53.loopexit86, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit39
  %.sroa.0.0.lcssa32.i47 = phi ptr [ %scevgep.i37, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53.loopexit86 ], [ %.sroa.0.016.i44, %.lr.ph23.i50 ], [ %.sroa.0.2.i, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit39 ], [ %.sroa.0.016.i44, %bb.l ], [ %scevgep.i42, %bb.k ]
  %.sroa.10.1.lcssa.i48 = phi i64 [ 0, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53.loopexit86 ], [ %.sroa.10.122.i51, %.lr.ph23.i50 ], [ 0, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit39 ], [ 0, %bb.l ], [ 0, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !322
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.lcssa32.i24, i64 noundef range(i64 0, -9223372036854775808) %.sroa.10.1.lcssa.i25)
  %i.at = load i64, ptr %i.b, align 8, !range !24, !noalias !322, !noundef !11
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.m, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit54, !prof !26

bb.m:                                             ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 27 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit54: ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !322, !nonnull !11, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !322, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !325
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.lcssa32.i47, i64 noundef range(i64 0, -9223372036854775808) %.sroa.10.1.lcssa.i48)
  %i.az = load i64, ptr %i.a, align 8, !range !24, !noalias !325, !noundef !11
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %bb.n, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit55, !prof !26

bb.n:                                             ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit54
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 27 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit55: ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !325, !nonnull !11, !noundef !11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !noalias !325, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !325
  br label %bb.p

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.sroa.6.084 = phi i64 [ %i.bh, %bb.o ], [ %.sroa.9.0.i, %.lr.ph.preheader ] ; 3 uses
  %.sroa.03.083 = phi ptr [ %i.bi, %bb.o ], [ %.sroa.0.016.i, %.lr.ph.preheader ] ; 4 uses
  %i.bf = load i8, ptr %.sroa.03.083, align 1, !noundef !11 ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 35
  br i1 %i.bg, label %bb.o, label %.lr.ph.preheader.i18

bb.o:                                             ; preds = %.lr.ph
  %i.bh = add i64 %.sroa.6.084, -1                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.083, i64 1
  %.not = icmp eq i64 %i.bh, 0
  br i1 %.not, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30, label %.lr.ph

bb.p:                                             ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit15, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit55
  %.sink151 = phi ptr [ %i.aw, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit55 ], [ inttoptr (i64 1 to ptr), %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit15 ], [ inttoptr (i64 1 to ptr), %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit ]
  %.sink149 = phi i64 [ %i.ay, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit55 ], [ 0, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit15 ], [ 0, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit ]
  %.sink147 = phi ptr [ %i.bc, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit55 ], [ %i.u, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit15 ], [ %i.n, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit ]
  %.sink = phi i64 [ %i.be, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit55 ], [ %i.w, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit15 ], [ %i.p, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit ]
  store ptr %.sink151, ptr %0, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink149, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink147, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %i.bl, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.b = load i64, ptr %i.a, align 8, !range !24, !noundef !11
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 27 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCscuBBDlOF0VN_8schemars(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !10, !noundef !11
  %.not = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 6 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !328
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscuBBDlOF0VN_8schemars(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.f, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !328
  %i.g = load i64, ptr %i.a, align 8, !range !24, !noalias !328, !noundef !11
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !25, !noalias !328, !noundef !11 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscuBBDlOF0VN_8schemars.exit.i.i, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 8, !noalias !328
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #14, !noalias !328
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscuBBDlOF0VN_8schemars.exit.i.i: ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !noalias !328, !nonnull !11, !noundef !11 ; 2 uses
  %i.n = icmp samesign ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !328
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %_RNvXs2_NtCscdodAO9FK5_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscuBBDlOF0VN_8schemars.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.f, i1 false), !noalias !335
  br label %_RNvXs2_NtCscdodAO9FK5_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit

_RNvXs2_NtCscdodAO9FK5_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscuBBDlOF0VN_8schemars.exit.i.i, %bb.d
  store i64 %i.j, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXs2_NtCscdodAO9FK5_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCscuBBDlOF0VN_8schemars17json_schema_impls9serdejsonINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtB14_5value5ValueENtB9_10JsonSchema11json_schema(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(200) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtNtCscuBBDlOF0VN_8schemars17json_schema_impls4mapsINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtB10_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtB6_10JsonSchema11json_schemaB6_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(200) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCscuBBDlOF0VN_8schemars17json_schema_impls9serdejsonINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtB14_5value5ValueENtB9_10JsonSchema11schema_name(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtNtCscuBBDlOF0VN_8schemars17json_schema_impls4mapsINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtB10_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtB6_10JsonSchema11schema_nameB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCscuBBDlOF0VN_8schemars17json_schema_impls9serdejsonINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtB14_5value5ValueENtB9_10JsonSchema42__schemars_private_non_optional_json_schema(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(200) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtNtCscuBBDlOF0VN_8schemars17json_schema_impls4mapsINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtB10_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtB6_10JsonSchema11json_schemaB6_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(200) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCscuBBDlOF0VN_8schemars17json_schema_impls9serdejsonINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtB14_5value5ValueENtB9_10JsonSchema9schema_id(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXNtNtCscuBBDlOF0VN_8schemars17json_schema_impls4mapsINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtB10_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtB6_10JsonSchema9schema_idB6_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtCscuBBDlOF0VN_8schemars6schemaINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_6SchemaE2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1_NtCscuBBDlOF0VN_8schemars6schemaNtB5_6SchemaINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtB1u_5value5ValueEE2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs_NtCscdodAO9FK5_5alloc6borrowINtB4_3CoweEINtNtCs4NRVxsYgnAr_4core6borrow6BorroweE6borrowCscuBBDlOF0VN_8schemars(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %.val1.pn.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.pn = load i64, ptr %.val1.pn.in, align 8, !noundef !11
  %.val.pn.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.pn = load ptr, ptr %.val.pn.in, align 8, !nonnull !11, !noundef !11
  %.pn = insertvalue { ptr, i64 } poison, ptr %.val.pn, 0
  %.merged = insertvalue { ptr, i64 } %.pn, i64 %.val1.pn, 1
  ret { ptr, i64 } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsb_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCscuBBDlOF0VN_8schemars(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
end_hunk_0
