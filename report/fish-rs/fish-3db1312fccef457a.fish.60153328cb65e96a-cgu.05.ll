Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.05?download=true
inline.NumInlined: 1761
inline.NumDeleted: 675
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish:bb.a
  %i.di = icmp eq i32 %i.dh, 42
  br i1 %i.di, label %bb.x, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit488.thread598

bb.x:                                             ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit486
  invoke void @_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 2)
          to label %bb.ac unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit488.thread598: ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit486, %bb.w
  invoke void @_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 1)
          to label %bb.y unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit488.thread598
  %.val2531.i489 = load i64, ptr %i.r, align 8, !alias.scope !637, !noundef !5
  %.not32.i490 = icmp eq i64 %.val2531.i489, 0
  br i1 %.not32.i490, label %.thread603, label %.lr.ph.i491

.lr.ph.i491:                                      ; preds = %bb.y, %.noexc499
  %.sroa.021.033.i492 = phi i64 [ %i.dq, %.noexc499 ], [ 0, %bb.y ] ; 2 uses
  %.val.i493 = load ptr, ptr %i.q, align 8, !alias.scope !637, !nonnull !5, !noundef !5
  %i.dj = load i32, ptr %.val.i493, align 4, !range !13, !noalias !638, !noundef !5
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.z, label %.loopexit641

bb.z:                                             ; preds = %.lr.ph.i491
  %i.dm = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.021.033.i492, i64 10) ; 2 uses
  %i.dn = extractvalue { i64, i1 } %i.dm, 1
  br i1 %i.dn, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit500, label %bb.aa, !prof !7

bb.aa:                                            ; preds = %bb.z
  %i.do = extractvalue { i64, i1 } %i.dm, 0       ; 2 uses
  %i.dp = zext nneg i32 %i.dk to i64
  %i.dq = add i64 %i.do, %i.dp                    ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.do
  br i1 %i.dr, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit500, label %bb.ab, !prof !7

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 1)
          to label %.noexc499 unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc499:                                        ; preds = %bb.ab
  %.val25.i497 = load i64, ptr %i.r, align 8, !alias.scope !637, !noundef !5
  %.not.i498 = icmp eq i64 %.val25.i497, 0
  br i1 %.not.i498, label %.loopexit641, label %.lr.ph.i491

_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit500: ; preds = %bb.aa, %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.ds, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gi

.thread603:                                       ; preds = %.noexc482, %.thread584, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit484, %bb.y, %.loopexit645
  %.sroa.0.1897 = phi ptr [ %.sroa.0.1910, %bb.y ], [ %.sroa.0.1910, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit484 ], [ %i.cx, %.loopexit645 ], [ %.sroa.0.0793, %.thread584 ], [ %.sroa.0.0793, %.noexc482 ]
  %.sroa.13.2896 = phi i8 [ %.sroa.13.2909, %bb.y ], [ %.sroa.13.2909, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit484 ], [ %.sroa.13.3, %.loopexit645 ], [ %.sroa.13.0, %.thread584 ], [ %.sroa.13.0, %.noexc482 ]
  %.sroa.065.0894 = phi i64 [ %.sroa.065.0908, %bb.y ], [ %.sroa.065.0908, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit484 ], [ %.sroa.0290.0, %.loopexit645 ], [ 0, %.thread584 ], [ %i.cs, %.noexc482 ]
  %spec.select578582892 = phi i8 [ %spec.select577, %bb.y ], [ %spec.select577, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit484 ], [ %spec.select577, %.loopexit645 ], [ %spec.select, %.thread584 ], [ %spec.select577, %.noexc482 ]
  %.val17.i.i851 = phi i64 [ 0, %bb.y ], [ %.val473906, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit484 ], [ 0, %.loopexit645 ], [ 0, %.thread584 ], [ 0, %.noexc482 ]
  %.sroa.0142.0.ph = phi i64 [ 1, %bb.y ], [ 0, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit484 ], [ 0, %.loopexit645 ], [ 0, %.thread584 ], [ 0, %.noexc482 ] ; 2 uses
  %i.dt = trunc nuw i64 %.sroa.0142.0.ph to i1
  br label %bb.ah

.loopexit641:                                     ; preds = %.lr.ph.i491, %.noexc499, %bb.ag
  %.sroa.16.0 = phi i64 [ %.sroa.1178.0, %bb.ag ], [ %.sroa.021.033.i492, %.lr.ph.i491 ], [ %i.dq, %.noexc499 ] ; 2 uses
  %.sroa.0142.0 = phi i64 [ %.459, %bb.ag ], [ 1, %.noexc499 ], [ 1, %.lr.ph.i491 ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.dx, %bb.ag ], [ %.sroa.0.1910, %.noexc499 ], [ %.sroa.0.1910, %.lr.ph.i491 ]
  %i.du = trunc nuw i64 %.sroa.0142.0 to i1       ; 2 uses
  %i.dv = icmp ugt i64 %.sroa.16.0, 2147483647
  %.sroa.096.0 = and i1 %i.dv, %i.du
  br i1 %.sroa.096.0, label %bb.as, label %.loopexit641._crit_edge

.loopexit641._crit_edge:                          ; preds = %.loopexit641
  %.val17.i.i.pre = load i64, ptr %i.r, align 8, !alias.scope !639
  br label %bb.ah

bb.ac:                                            ; preds = %bb.x
  %i.dw = icmp eq ptr %.sroa.0.1910, %i.s
  br i1 %i.dw, label %bb.gd, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.1910, i64 32
  %i.dy = load i64, ptr %.sroa.0.1910, align 8, !range !14, !noundef !5
  switch i64 %i.dy, label %bb.gd [
    i64 4, label %bb.ae
    i64 5, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.1910, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !5 ; 2 uses
  %i.eb = icmp slt i64 %i.ea, 0
  br i1 %i.eb, label %bb.gd, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.1910, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.sroa.1178.0 = phi i64 [ %i.ed, %bb.af ], [ %i.ea, %bb.ae ] ; 2 uses
  %i.ee = icmp sgt i64 %.sroa.1178.0, -1
  %.459 = zext i1 %i.ee to i64
  br label %.loopexit641

bb.ah:                                            ; preds = %.loopexit641._crit_edge, %.thread603
  %.sroa.13.2895 = phi i8 [ %.sroa.13.2896, %.thread603 ], [ %.sroa.13.2909, %.loopexit641._crit_edge ] ; 2 uses
  %.sroa.065.0893 = phi i64 [ %.sroa.065.0894, %.thread603 ], [ %.sroa.065.0908, %.loopexit641._crit_edge ] ; 2 uses
  %spec.select578582891 = phi i8 [ %spec.select578582892, %.thread603 ], [ %spec.select577, %.loopexit641._crit_edge ]
  %.val17.i.i = phi i64 [ %.val17.i.i851, %.thread603 ], [ %.val17.i.i.pre, %.loopexit641._crit_edge ] ; 3 uses
  %i.ef = phi i1 [ %i.dt, %.thread603 ], [ %i.du, %.loopexit641._crit_edge ] ; 3 uses
  %.sroa.0.2610 = phi ptr [ %.sroa.0.1897, %.thread603 ], [ %.sroa.0.2, %.loopexit641._crit_edge ] ; 25 uses
  %.sroa.0142.0609 = phi i64 [ %.sroa.0142.0.ph, %.thread603 ], [ %.sroa.0142.0, %.loopexit641._crit_edge ] ; 8 uses
  %.sroa.16.0608 = phi i64 [ 0, %.thread603 ], [ %.sroa.16.0, %.loopexit641._crit_edge ] ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %.val16.i.i = load ptr, ptr %i.q, align 8, !alias.scope !639 ; 4 uses
  %.not.i.i = icmp eq i64 %.val17.i.i, 0
  br i1 %.not.i.i, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.i, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit.i.i

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit.i.i: ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i.i) ]
  %i.eg = load i32, ptr %.val16.i.i, align 4, !range !13, !noalias !639, !noundef !5
  switch i32 %i.eg, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.i [
    i32 104, label %bb.ai
    i32 108, label %bb.aj
    i32 106, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i
    i32 116, label %bb.ak
    i32 122, label %bb.al
    i32 76, label %bb.am
  ]

bb.ai:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit.i.i
  %.not26.i.i = icmp eq i64 %.val17.i.i, 1
  br i1 %.not26.i.i, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.i.i

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.i.i: ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %.val16.i.i, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !range !13, !noalias !639, !noundef !5
  %i.ej = icmp eq i32 %i.ei, 104
  br i1 %i.ej, label %bb.an, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i

bb.aj:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit.i.i
  %.not25.i.i = icmp eq i64 %.val17.i.i, 1
  br i1 %.not25.i.i, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i.i

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i.i: ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %.val16.i.i, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !range !13, !noalias !639, !noundef !5
  %i.em = icmp eq i32 %i.el, 108
  br i1 %i.em, label %bb.an, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i

bb.ak:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit.i.i
  br label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i

bb.al:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit.i.i
  br label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i

bb.am:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit.i.i
  br label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i: ; preds = %bb.am, %bb.al, %bb.ak, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i.i, %bb.aj, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.i.i, %bb.ai, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit.i.i
  %.sroa.0.0.i.i = phi i8 [ 5, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit.i.i ], [ 2, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.i.i ], [ 8, %bb.am ], [ 6, %bb.ak ], [ 7, %bb.al ], [ 3, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i.i ], [ 2, %bb.ai ], [ 3, %bb.aj ]
  br label %bb.an

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.i: ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit.i.i, %bb.ah
  invoke void @_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 0)
          to label %.noexc505 unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc505:                                        ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.i
  %.val18.pre.i = load i64, ptr %i.r, align 8, !alias.scope !640
  %i.en = icmp eq i64 %.val18.pre.i, 0
  br i1 %i.en, label %bb.at, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i

bb.an:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i.i, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.i.i
  %.sroa.012.0.i.ph.i = phi i64 [ 2, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.i.i ], [ 1, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i ], [ 2, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i.i ]
  %.sroa.0.3.i.ph.i = phi i8 [ 1, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.i.i ], [ %.sroa.0.0.i.i, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i ], [ 4, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i.i ] ; 3 uses
  invoke void @_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %.sroa.012.0.i.ph.i)
          to label %.noexc506 unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc506:                                        ; preds = %bb.an
  %.val16.i = load i64, ptr %i.r, align 8, !alias.scope !640, !noundef !5
  %.not.i501 = icmp eq i64 %.val16.i, 0
  br i1 %.not.i501, label %bb.at, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i: ; preds = %.noexc506
  %.val.i502 = load ptr, ptr %i.q, align 8, !alias.scope !640, !nonnull !5, !noundef !5
  %i.eo = load i32, ptr %.val.i502, align 4, !range !13, !noundef !5 ; 2 uses
  switch i32 %i.eo, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread [
    i32 83, label %bb.at
    i32 67, label %bb.at
  ]

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i: ; preds = %.noexc505
  %.val17.i.pre = load ptr, ptr %i.q, align 8, !alias.scope !640
  %.pre = load i32, ptr %.val17.i.pre, align 4, !range !13
  %i.ep = call fastcc noundef i8 @_RNvMs0_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_14ConversionSpec9from_char(i32 noundef %.pre) ; 2 uses
  %.not15.i = icmp eq i8 %i.ep, -1
  br i1 %.not15.i, label %bb.at, label %bb.ar

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread: ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i
  %i.eq = call fastcc noundef i8 @_RNvMs0_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_14ConversionSpec9from_char(i32 noundef %i.eo) ; 5 uses
  switch i8 %i.eq, label %default.unreachable1142 [
    i8 -1, label %bb.at
    i8 0, label %bb.ao
    i8 1, label %bb.ao
    i8 2, label %bb.ao
    i8 3, label %bb.ao
    i8 4, label %bb.ao
    i8 5, label %bb.ao
    i8 6, label %bb.ap
    i8 7, label %bb.ap
    i8 8, label %bb.ap
    i8 9, label %bb.ap
    i8 10, label %bb.ap
    i8 11, label %bb.ap
    i8 12, label %bb.ap
    i8 13, label %bb.ap
    i8 14, label %bb.at
    i8 15, label %bb.aq
    i8 16, label %bb.aq
  ]

default.unreachable1142:                          ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread
  unreachable

default.unreachable:                              ; preds = %bb.ba
  unreachable

bb.ao:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread
  %switch.i = icmp samesign ult i8 %.sroa.0.3.i.ph.i, 8
  br i1 %switch.i, label %bb.ar, label %bb.at

bb.ap:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread
  switch i8 %.sroa.0.3.i.ph.i, label %bb.at [
    i8 3, label %bb.ar
    i8 8, label %bb.ar
  ]

bb.aq:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread
  %i.er = icmp eq i8 %.sroa.0.3.i.ph.i, 3
  br i1 %i.er, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i, %bb.aq, %bb.ap, %bb.ap, %bb.ao
  %i.es = phi i8 [ %i.eq, %bb.aq ], [ %i.eq, %bb.ap ], [ %i.eq, %bb.ap ], [ %i.eq, %bb.ao ], [ %i.ep, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i ] ; 7 uses
  invoke void @_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 1)
          to label %bb.au unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %.loopexit641
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.et, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gi

bb.at:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %.noexc506, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i, %bb.aq, %bb.ao, %bb.ap, %.noexc505
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.eu, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gi

bb.au:                                            ; preds = %bb.ar
  %i.ev = icmp eq ptr %.sroa.0.2610, %i.s
  br i1 %i.ev, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.2610, i64 32 ; 3 uses
  %i.ex = trunc nuw i8 %.sroa.26.0 to i1          ; 2 uses
  br i1 %i.ex, label %bb.ay, label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ey, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gi

bb.ax:                                            ; preds = %bb.av
  %i.ez = icmp samesign ult i8 %i.es, 15
  br i1 %i.ez, label %switch.lookup, label %bb.ba

bb.ay:                                            ; preds = %bb.av
  %i.fa = icmp samesign ult i8 %i.es, 12
  br i1 %i.fa, label %switch.hole_check, label %bb.az

bb.az:                                            ; preds = %switch.hole_check, %bb.ay
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.fb, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gi

switch.lookup:                                    ; preds = %bb.ax
  %switch.cast = zext nneg i8 %i.es to i15
  %switch.downshift = lshr i15 -16353, %switch.cast
  %switch.masked = trunc i15 %switch.downshift to i1
  br label %bb.ba

switch.hole_check:                                ; preds = %bb.ay
  %switch.maskindex = zext nneg i8 %i.es to i16
  %switch.shifted = lshr i16 3077, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup1044, label %bb.az

switch.lookup1044:                                ; preds = %switch.hole_check
  %switch.cast1045 = zext nneg i8 %i.es to i12
  %switch.downshift1047 = lshr i12 5, %switch.cast1045
  %switch.masked1048 = trunc i12 %switch.downshift1047 to i1
  br label %bb.ba

bb.ba:                                            ; preds = %switch.lookup1044, %switch.lookup, %bb.ax
  %.sroa.0116.0 = phi i1 [ false, %bb.ax ], [ %switch.masked1048, %switch.lookup1044 ], [ %switch.masked, %switch.lookup ] ; 2 uses
  %i.fc = icmp eq i64 %.sroa.0142.0609, 1
  %or.cond460 = and i1 %i.fc, %.sroa.0116.0
  %spec.select465 = select i1 %or.cond460, i8 0, i8 %spec.select578582891 ; 6 uses
  switch i8 %i.es, label %default.unreachable [
    i8 0, label %bb.bb
    i8 1, label %bb.bc
    i8 2, label %bb.bd
    i8 16, label %bb.bk
    i8 15, label %bb.bh
    i8 5, label %bb.be
    i8 6, label %bb.bf
    i8 7, label %bb.bf
    i8 8, label %bb.bf
    i8 9, label %bb.bf
    i8 10, label %bb.bf
    i8 11, label %bb.bf
    i8 12, label %bb.bf
    i8 13, label %bb.bf
    i8 14, label %bb.bg
    i8 3, label %bb.ct
    i8 4, label %bb.cs
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.fd = load i64, ptr %.sroa.0.2610, align 8, !range !14, !noundef !5
  switch i64 %i.fd, label %bb.bn [
    i64 4, label %bb.bl
    i64 5, label %bb.bm
  ]

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fe = load i64, ptr %.sroa.0.2610, align 8, !range !14, !noundef !5
  switch i64 %i.fe, label %bb.by [
    i64 4, label %bb.bv
    i64 5, label %bb.bw
  ]

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ff = load i64, ptr %.sroa.0.2610, align 8, !range !14, !noundef !5
  switch i64 %i.ff, label %bb.cl [
    i64 4, label %bb.ci
    i64 5, label %bb.cj
  ]

bb.be:                                            ; preds = %bb.ba
  %i.fg = load i64, ptr %.sroa.0.2610, align 8, !range !14, !noundef !5
  %i.fh = icmp eq i64 %i.fg, 7
  br i1 %i.fh, label %bb.dh, label %bb.di

bb.bf:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %i.fi = load i64, ptr %.sroa.0.2610, align 8, !range !14, !noundef !5
  switch i64 %i.fi, label %bb.dj [
    i64 4, label %bb.dk
    i64 5, label %bb.dl
    i64 6, label %bb.dm
  ]

bb.bg:                                            ; preds = %bb.ba
  %..i = call i64 @llvm.umax.i64(i64 %.sroa.16.0608, i64 16)
  %.sroa.0142.4 = zext i1 %i.ef to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.fj = load i64, ptr %.sroa.0.2610, align 8, !range !14, !noundef !5
  switch i64 %i.fj, label %bb.dv [
    i64 4, label %bb.ds
    i64 5, label %bb.dt
  ]

bb.bh:                                            ; preds = %bb.ba
  %.sroa.0.2.val = load i64, ptr %.sroa.0.2610, align 8, !range !14, !noundef !5
  %i.fk = getelementptr i8, ptr %.sroa.0.2610, i64 8
  %.sroa.0.2.val478 = load i64, ptr %i.fk, align 8 ; 11 uses
  switch i64 %.sroa.0.2.val, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread [
    i64 4, label %bb.bj
    i64 5, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.fl = icmp ugt i64 %.sroa.0.2.val478, 4294967295
  br i1 %i.fl, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit

bb.bj:                                            ; preds = %bb.bh
  %.old.i = icmp ugt i64 %.sroa.0.2.val478, 4294967295
  br i1 %.old.i, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit

bb.bk:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg6as_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.2610, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ek unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bb
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.2610, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !noundef !5 ; 2 uses
  %i.fo = icmp slt i64 %i.fn, 0
  br i1 %i.fo, label %bb.bn, label %.thread617

bb.bm:                                            ; preds = %bb.bb
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.2610, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !5 ; 3 uses
  %i.fr = icmp slt i64 %i.fq, 0
  br i1 %i.fr, label %bb.br, label %.thread617

bb.bn:                                            ; preds = %bb.bl, %bb.bb
  %.sroa.7206.0 = phi i8 [ 3, %bb.bb ], [ 4, %bb.bl ]
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7206.0, ptr %i.fs, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gi

.thread617:                                       ; preds = %bb.bl, %bb.bm
  %.sroa.10208.0619 = phi i64 [ %i.fq, %bb.bm ], [ %i.fn, %bb.bl ] ; 2 uses
  %i.ft = trunc nuw i8 %.sroa.23.0 to i1          ; 2 uses
  %i.fu = trunc nuw i8 %.sroa.20.0 to i1
  %spec.select462 = select i1 %i.fu, ptr @0, ptr inttoptr (i64 1 to ptr)
  %narrow = select i1 %i.ft, i8 1, i8 %.sroa.20.0
  %.sroa.9179.0 = zext nneg i8 %narrow to i64     ; 2 uses
  %.sroa.0177.0 = select i1 %i.ft, ptr @1, ptr %spec.select462 ; 2 uses
  %.not457 = icmp eq i64 %.sroa.10208.0619, 0
  br i1 %.not457, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bs, %.thread617
  %.sroa.9179.1 = phi i64 [ %.sroa.9179.2, %bb.bs ], [ %.sroa.9179.0, %.thread617 ]
  %.sroa.0177.1 = phi ptr [ %.sroa.0177.2, %bb.bs ], [ %.sroa.0177.0, %.thread617 ]
  %i.fv = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.fw = load i64, ptr %.sroa.5289.0..sroa_idx, align 8, !noundef !5
  br label %bb.ex

bb.bp:                                            ; preds = %.thread617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.br, %bb.bp
  %.sroa.9179.2 = phi i64 [ 1, %bb.br ], [ %.sroa.9179.0, %bb.bp ]
  %.sroa.0177.2 = phi ptr [ @2, %bb.br ], [ %.sroa.0177.0, %bb.bp ]
  %.sroa.0371.0 = phi i64 [ %i.fy, %bb.br ], [ %.sroa.10208.0619, %bb.bp ]
  store i64 %.sroa.0371.0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4375.0..sroa_idx, align 8
  %i.fx = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull @3, ptr noundef nonnull %i.d)
          to label %bb.bt unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.fy = sub i64 0, %i.fq
  br label %bb.bq

bb.bs:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bo

bb.bt:                                            ; preds = %bb.bq
  br i1 %i.fx, label %bb.bu, label %bb.bs

bb.bu:                                            ; preds = %bb.bt
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.fz, align 1
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.gi

bb.bv:                                            ; preds = %bb.bc
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.2610, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !noundef !5
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bc
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.2610, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !noundef !5 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish:bb.a
_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i542: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i541
  %i.od = icmp ne ptr %i.nu, %i.nb
  call void @llvm.assume(i1 %i.od)
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i535, i64 4
  %i.of = load i8, ptr %i.nu, align 1, !alias.scope !661, !noalias !662, !noundef !5
  %i.og = shl nuw nsw i32 %i.nj, 18
  %i.oh = and i32 %i.og, 1835008
  %i.oi = shl nuw nsw i32 %i.nz, 6
  %i.oj = and i8 %i.of, 63
  %i.ok = zext nneg i8 %i.oj to i32
  %i.ol = or disjoint i32 %i.oi, %i.ok
  %i.om = or disjoint i32 %i.ol, %i.oh
  br label %bb.fq

bb.fq:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i542, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i541, %bb.fp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i536
  %.sroa.0.1.ph.i.i.i.i.i537 = phi ptr [ %i.nl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i536 ], [ %i.nu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i541 ], [ %i.oe, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i542 ], [ %i.nf, %bb.fp ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i538 = phi i32 [ %i.nq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i536 ], [ %i.ob, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i541 ], [ %i.om, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i542 ], [ %i.ns, %bb.fp ]
  %i.on = load i64, ptr %i.u, align 8, !alias.scope !663, !noundef !5 ; 3 uses
  %i.oo = load i64, ptr %1, align 8, !range !12, !alias.scope !663, !noundef !5
  %i.op = icmp eq i64 %i.on, %i.oo
  br i1 %i.op, label %bb.fr, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i539

bb.fr:                                            ; preds = %bb.fq
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #32
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i539 unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i539: ; preds = %bb.fr, %bb.fq
  %i.oq = load ptr, ptr %i.v, align 8, !alias.scope !663, !nonnull !5, !noundef !5
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.on
  store i32 %spec.select.i.ph.i.i.i.i.i538, ptr %i.or, align 4, !noalias !661
  %i.os = add i64 %i.on, 1
  store i64 %i.os, ptr %i.u, align 8, !alias.scope !663
  %.not.i.i.i.i.i.i540 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i537, %i.nb
  br i1 %.not.i.i.i.i.i.i540, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit545, label %.lr.ph.i.i.i.i.i534

bb.fs:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale14apply_grouping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0233.0, i64 noundef %.sroa.18.0)
          to label %bb.ft unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit545: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i539, %.noexc543, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit
  br i1 %i.lh, label %bb.ga, label %bb.fz

bb.ft:                                            ; preds = %bb.fs
  %i.ot = load ptr, ptr %i.ae, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ou = load i64, ptr %i.af, align 8, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.ou ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.ow = lshr i64 %i.ou, 2
  %i.ox = and i64 %i.ou, 3
  %.not.i.i.i.i546 = icmp ne i64 %i.ox, 0
  %i.oy = zext i1 %.not.i.i.i.i546 to i64
  %.sroa.0.0.i.i.i.i547 = add nuw nsw i64 %i.ow, %i.oy
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.i.i.i.i547)
          to label %.noexc558 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc558:                                        ; preds = %bb.ft
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %.not.i9.i.i.i.i.i548 = icmp samesign eq i64 %i.ou, 0
  br i1 %.not.i9.i.i.i.i.i548, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit560, label %.lr.ph.i.i.i.i.i549

.lr.ph.i.i.i.i.i549:                              ; preds = %.noexc558, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i554
  %.sroa.0.010.i.i.i.i.i550 = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i552, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i554 ], [ %i.ot, %.noexc558 ] ; 5 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i550, i64 1 ; 3 uses
  %i.pa = load i8, ptr %.sroa.0.010.i.i.i.i.i550, align 1, !alias.scope !671, !noalias !672, !noundef !5 ; 5 uses
  %i.pb = icmp sgt i8 %i.pa, -1
  br i1 %i.pb, label %bb.fu, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i551

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i551: ; preds = %.lr.ph.i.i.i.i.i549
  %i.pc = and i8 %i.pa, 31
  %i.pd = zext nneg i8 %i.pc to i32               ; 3 uses
  %i.pe = icmp ne ptr %i.oz, %i.ov
  call void @llvm.assume(i1 %i.pe)
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i550, i64 2 ; 3 uses
  %i.pg = load i8, ptr %i.oz, align 1, !alias.scope !671, !noalias !672, !noundef !5
  %i.ph = shl nuw nsw i32 %i.pd, 6
  %i.pi = and i8 %i.pg, 63
  %i.pj = zext nneg i8 %i.pi to i32               ; 2 uses
  %i.pk = or disjoint i32 %i.ph, %i.pj
  %i.pl = icmp samesign ugt i8 %i.pa, -33
  br i1 %i.pl, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i556, label %bb.fv

bb.fu:                                            ; preds = %.lr.ph.i.i.i.i.i549
  %i.pm = zext nneg i8 %i.pa to i32
  br label %bb.fv

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i556: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i551
  %i.pn = icmp ne ptr %i.pf, %i.ov
  call void @llvm.assume(i1 %i.pn)
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i550, i64 3 ; 3 uses
  %i.pp = load i8, ptr %i.pf, align 1, !alias.scope !671, !noalias !672, !noundef !5
  %i.pq = shl nuw nsw i32 %i.pj, 6
  %i.pr = and i8 %i.pp, 63
  %i.ps = zext nneg i8 %i.pr to i32
  %i.pt = or disjoint i32 %i.pq, %i.ps            ; 2 uses
  %i.pu = shl nuw nsw i32 %i.pd, 12
  %i.pv = or disjoint i32 %i.pt, %i.pu
  %i.pw = icmp samesign ugt i8 %i.pa, -17
  br i1 %i.pw, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i557, label %bb.fv

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i557: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i556
  %i.px = icmp ne ptr %i.po, %i.ov
  call void @llvm.assume(i1 %i.px)
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i550, i64 4
  %i.pz = load i8, ptr %i.po, align 1, !alias.scope !671, !noalias !672, !noundef !5
  %i.qa = shl nuw nsw i32 %i.pd, 18
  %i.qb = and i32 %i.qa, 1835008
  %i.qc = shl nuw nsw i32 %i.pt, 6
  %i.qd = and i8 %i.pz, 63
  %i.qe = zext nneg i8 %i.qd to i32
  %i.qf = or disjoint i32 %i.qc, %i.qe
  %i.qg = or disjoint i32 %i.qf, %i.qb
  br label %bb.fv

bb.fv:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i557, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i556, %bb.fu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i551
  %.sroa.0.1.ph.i.i.i.i.i552 = phi ptr [ %i.pf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i551 ], [ %i.po, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i556 ], [ %i.py, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i557 ], [ %i.oz, %bb.fu ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i553 = phi i32 [ %i.pk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i551 ], [ %i.pv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i556 ], [ %i.qg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i557 ], [ %i.pm, %bb.fu ]
  %i.qh = load i64, ptr %i.u, align 8, !alias.scope !673, !noundef !5 ; 3 uses
  %i.qi = load i64, ptr %1, align 8, !range !12, !alias.scope !673, !noundef !5
  %i.qj = icmp eq i64 %i.qh, %i.qi
  br i1 %i.qj, label %bb.fw, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i554

bb.fw:                                            ; preds = %bb.fv
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #32
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i554 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i554: ; preds = %bb.fw, %bb.fv
  %i.qk = load ptr, ptr %i.v, align 8, !alias.scope !673, !nonnull !5, !noundef !5
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.qh
  store i32 %spec.select.i.ph.i.i.i.i.i553, ptr %i.ql, align 4, !noalias !671
  %i.qm = add i64 %i.qh, 1
  store i64 %i.qm, ptr %i.u, align 8, !alias.scope !673
  %.not.i.i.i.i.i.i555 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i552, %i.ov
  br i1 %.not.i.i.i.i.i.i555, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit560, label %.lr.ph.i.i.i.i.i549

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fw, %bb.ft
  %lpad.loopexit.split-lp1049 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #29
          to label %.body unwind label %bb.gc

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit560: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i554, %.noexc558
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.fx

bb.fx:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit560
  %i.qn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.qo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit560
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit545

bb.fz:                                            ; preds = %bb.ga, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit545
  %i.qp = add i64 %..i515, %.sroa.0279.0792       ; 2 uses
  %i.qq = icmp ult i64 %i.qp, %.sroa.0279.0792
  br i1 %i.qq, label %bb.gb, label %.backedge, !prof !7

.backedge:                                        ; preds = %bb.dh, %bb.dq, %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit, %bb.fz
  %.sroa.0279.0.be = phi i64 [ %i.qp, %bb.fz ], [ %.sroa.0279.0792, %bb.dh ], [ %i.ib, %bb.dq ], [ %i.rb, %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ] ; 2 uses
  %.sroa.0.0.be = phi ptr [ %i.ew, %bb.fz ], [ %i.ew, %bb.dh ], [ %i.ew, %bb.dq ], [ %.sroa.0.0793, %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ] ; 2 uses
  %.val = load i64, ptr %i.r, align 8, !noundef !5
  %i.qr = icmp eq i64 %.val, 0
  br i1 %i.qr, label %._crit_edge, label %bb.b

bb.ga:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit545
  %i.qs = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32, i64 noundef %..i515, i64 noundef %i.le)
          to label %bb.fz unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.gb:                                            ; preds = %bb.fz
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.qt, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gi

bb.gc:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

.invoke:                                          ; preds = %bb.fa, %bb.et, %._crit_edge970
  %i.qv = phi ptr [ @8, %._crit_edge970 ], [ @11, %bb.et ], [ @10, %bb.fa ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qv) #33
          to label %.cont unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.gd:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %.sroa.876.0.sink = phi i8 [ 1, %bb.ac ], [ 3, %bb.ad ], [ 4, %bb.ae ]
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.876.0.sink, ptr %i.qw, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gi

bb.ge:                                            ; preds = %bb.s, %bb.t, %bb.r
  %.sroa.8.0.sink = phi i8 [ 1, %bb.r ], [ 3, %bb.s ], [ 4, %bb.t ]
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.8.0.sink, ptr %i.qx, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gi

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i
  %i.qy = icmp ult i64 %i.aj, 32
  br i1 %i.qy, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit
  %i.qz = invoke noundef i64 @_RNvNtNtCs3oUPovFnLWP_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.aj)
          to label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gg:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit
  %i.ra = invoke noundef i64 @_RNvNtNtCs3oUPovFnLWP_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.aj)
          to label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit: ; preds = %bb.gf, %bb.gg
  %.sroa.0.0.i562 = phi i64 [ %i.qz, %bb.gf ], [ %i.ra, %bb.gg ]
  %i.rb = add i64 %.sroa.0.0.i562, %.sroa.0279.0792 ; 2 uses
  %i.rc = icmp ult i64 %i.rb, %.sroa.0279.0792
  br i1 %i.rc, label %bb.gh, label %.backedge, !prof !7

bb.gh:                                            ; preds = %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.rd, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.as, %bb.gd, %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit500, %bb.az, %bb.bn, %bb.bu, %bb.el, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread, %bb.eb, %bb.di, %bb.dg, %bb.cr, %bb.ch, %bb.dp, %bb.dr, %bb.dj, %bb.gb, %bb.fe, %bb.aw, %bb.at, %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, %bb.ge, %bb.gl
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit567 unwind label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.re = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.rf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.gn, %bb.gj
  %common.resume.op = phi { ptr, i32 } [ %i.ri, %bb.gn ], [ %i.re, %bb.gj ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.gl:                                            ; preds = %._crit_edge
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.rg, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gi

bb.gm:                                            ; preds = %._crit_edge
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0279.0.lcssa, ptr %i.rh, align 8
  store i8 0, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit567 unwind label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ri = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.rj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit567: ; preds = %bb.gm, %bb.gi
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 288230376151711744) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [192 x i8], align 8               ; 25 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 22 uses
  %i.q = alloca [16 x i8], align 8                ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %2, ptr %i.q, align 8, !captures !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i64 %3, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  %.sroa.4288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 9 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4288.0..sroa_idx, align 8
  %.sroa.5289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 9 uses
  store i64 0, ptr %.sroa.5289.0..sroa_idx, align 8
  %i.t = icmp eq i64 %3, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.sroa.4326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %.sroa.5390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.9394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.10395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.11396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.11396.sroa.4.0..sroa.11396.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.sroa.11396.sroa.5.0..sroa.11396.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.12397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %.sroa.16399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.5402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.7404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.9406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %.sroa.10407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.sroa.11408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.sroa.11408.sroa.4.0..sroa.11408.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %.sroa.11408.sroa.5.0..sroa.11408.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %.sroa.12409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %.sroa.16413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %.sroa.4358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !range !11
  %i.ad = icmp ne i32 %i.ac, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

.body:                                            ; preds = %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gj, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp908, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.qq, %bb.gj ], [ %lpad.loopexit.split-lp927, %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #29
          to label %common.resume unwind label %bb.go

.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %.noexc481, %bb.am, %bb.fd, %bb.fb, %bb.gd, %bb.fv, %.noexc471, %bb.v, %bb.q, %.preheader, %bb.fk, %bb.fp, %.noexc487.jt8, %.noexc489.jt8, %bb.ax, %.noexc487.jt1, %.noexc489.jt1, %bb.ay, %bb.b, %bb.d, %bb.k, %.loopexit606, %bb.aa, %bb.ad, %bb.ae, %bb.ag, %bb.ai, %bb.bw, %bb.cc, %bb.cm, %bb.cz, %bb.dk, %bb.dl, %bb.dz, %bb.ej, %bb.fl, %bb.fw, %bb.fx, %bb.fy, %bb.ge, %bb.gm, %bb.e, %bb.s, %bb.aj, %bb.as, %bb.at, %bb.au, %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl10get_prefixReECs8frGy5WneL6_4fish.exit.i, %.thread830, %bb.ep, %bb.eq, %bb.fs, %bb.ga, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i, %bb.gr, %bb.gs, %.invoke, %.thread585
  %lpad.loopexit.split-lp927 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.0742 = phi ptr [ %5, %.lr.ph ], [ %.sroa.0.0.be, %.backedge ] ; 9 uses
  %.sroa.0279.0741 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0279.0.be, %.backedge ] ; 8 uses
  store i64 0, ptr %.sroa.5289.0..sroa_idx, align 8
  %i.ag = invoke { ptr, i64 } @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString12take_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.c unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.0279.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.0279.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %5, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  %i.ah = icmp eq ptr %.sroa.0.0.lcssa, %i.s
  br i1 %i.ah, label %bb.gy, label %bb.gx

bb.c:                                             ; preds = %bb.b
  %i.ai = extractvalue { ptr, i64 } %i.ag, 0      ; 4 uses
  %i.aj = extractvalue { ptr, i64 } %i.ag, 1      ; 7 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 1)
          to label %.preheader unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_1
begin_hunk_2_@_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish:bb.a
  br i1 %i.dg, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 2)
          to label %bb.an unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ae
  %i.dh = icmp eq i32 %i.df, 46
  br i1 %i.dh, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 1)
          to label %bb.aj unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.di = invoke noundef i32 @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef 0)
          to label %.noexc480 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc480:                                        ; preds = %bb.aj
  %.not27.i473 = icmp eq i32 %i.di, -1
  br i1 %.not27.i473, label %.thread, label %.lr.ph.i474

.lr.ph.i474:                                      ; preds = %.noexc480, %.noexc482
  %i.dj = phi i32 [ %i.ds, %.noexc482 ], [ %i.di, %.noexc480 ]
  %.sroa.021.028.i475 = phi i64 [ %i.dq, %.noexc482 ], [ 0, %.noexc480 ] ; 2 uses
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.ak, label %.loopexit602

bb.ak:                                            ; preds = %.lr.ph.i474
  %i.dm = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.021.028.i475, i64 10) ; 2 uses
  %i.dn = extractvalue { i64, i1 } %i.dm, 1
  br i1 %i.dn, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intReECs8frGy5WneL6_4fish.exit483, label %bb.al, !prof !7

bb.al:                                            ; preds = %bb.ak
  %i.do = extractvalue { i64, i1 } %i.dm, 0       ; 2 uses
  %i.dp = zext nneg i32 %i.dk to i64
  %i.dq = add i64 %i.do, %i.dp                    ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.do
  br i1 %i.dr, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intReECs8frGy5WneL6_4fish.exit483, label %bb.am, !prof !7

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 1)
          to label %.noexc481 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc481:                                        ; preds = %bb.am
  %i.ds = invoke noundef i32 @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef 0)
          to label %.noexc482 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc482:                                        ; preds = %.noexc481
  %.not.i479 = icmp eq i32 %i.ds, -1
  br i1 %.not.i479, label %.loopexit602, label %.lr.ph.i474

_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intReECs8frGy5WneL6_4fish.exit483: ; preds = %bb.al, %bb.ak
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.dt, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gu

.thread:                                          ; preds = %bb.ah, %.noexc480
  %.sroa.0142.0.ph = phi i64 [ 1, %.noexc480 ], [ 0, %bb.ah ] ; 2 uses
  %i.du = trunc nuw i64 %.sroa.0142.0.ph to i1
  br label %bb.as

.loopexit602:                                     ; preds = %.lr.ph.i474, %.noexc482, %bb.ar
  %.sroa.16.0 = phi i64 [ %.sroa.1178.0, %bb.ar ], [ %i.dq, %.noexc482 ], [ %.sroa.021.028.i475, %.lr.ph.i474 ] ; 2 uses
  %.sroa.0142.0 = phi i64 [ %.459, %bb.ar ], [ 1, %.noexc482 ], [ 1, %.lr.ph.i474 ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.dy, %bb.ar ], [ %.sroa.0.1, %.noexc482 ], [ %.sroa.0.1, %.lr.ph.i474 ]
  %i.dv = trunc nuw i64 %.sroa.0142.0 to i1       ; 2 uses
  %i.dw = icmp ugt i64 %.sroa.16.0, 2147483647
  %.sroa.096.0 = and i1 %i.dw, %i.dv
  br i1 %.sroa.096.0, label %bb.bf, label %bb.as

bb.an:                                            ; preds = %bb.ag
  %i.dx = icmp eq ptr %.sroa.0.1, %i.s
  br i1 %i.dx, label %bb.gp, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 32
  %i.dz = load i64, ptr %.sroa.0.1, align 8, !range !14, !noundef !5
  switch i64 %i.dz, label %bb.gp [
    i64 4, label %bb.ap
    i64 5, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !5 ; 2 uses
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %bb.gp, label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !5
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.sroa.1178.0 = phi i64 [ %i.ee, %bb.aq ], [ %i.eb, %bb.ap ] ; 2 uses
  %i.ef = icmp sgt i64 %.sroa.1178.0, -1
  %.459 = zext i1 %i.ef to i64
  br label %.loopexit602

bb.as:                                            ; preds = %.thread, %.loopexit602
  %i.eg = phi i1 [ %i.du, %.thread ], [ %i.dv, %.loopexit602 ] ; 3 uses
  %.sroa.0.2572 = phi ptr [ %.sroa.0.1, %.thread ], [ %.sroa.0.2, %.loopexit602 ] ; 25 uses
  %.sroa.0142.0571 = phi i64 [ %.sroa.0142.0.ph, %.thread ], [ %.sroa.0142.0, %.loopexit602 ] ; 8 uses
  %.sroa.16.0570 = phi i64 [ 0, %.thread ], [ %.sroa.16.0, %.loopexit602 ] ; 12 uses
  %i.eh = invoke noundef i32 @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef 0)
          to label %.noexc484 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc484:                                        ; preds = %bb.as
  switch i32 %i.eh, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl10get_prefixReECs8frGy5WneL6_4fish.exit.i [
    i32 104, label %bb.at
    i32 108, label %bb.au
    i32 106, label %bb.ay
    i32 116, label %bb.av
    i32 122, label %bb.aw
    i32 76, label %bb.ax
  ]

bb.at:                                            ; preds = %.noexc484
  %i.ei = invoke noundef i32 @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef 1)
          to label %.noexc485 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc485:                                        ; preds = %bb.at
  %i.ej = icmp eq i32 %i.ei, 104                  ; 2 uses
  %spec.select = select i1 %i.ej, i64 2, i64 1
  %spec.select854 = select i1 %i.ej, i8 1, i8 2
  br label %bb.ay

bb.au:                                            ; preds = %.noexc484
  %i.ek = invoke noundef i32 @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef 1)
          to label %.noexc486 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc486:                                        ; preds = %bb.au
  %i.el = icmp eq i32 %i.ek, 108
  br i1 %i.el, label %bb.ay, label %bb.ax

bb.av:                                            ; preds = %.noexc484
  br label %bb.ay

bb.aw:                                            ; preds = %.noexc484
  br label %bb.ay

_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl10get_prefixReECs8frGy5WneL6_4fish.exit.i: ; preds = %.noexc484
  invoke void @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 0)
          to label %.noexc487.jt1 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc487.jt8:                                    ; preds = %.noexc490.jt8
  %i.em = invoke noundef i32 @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef 0)
          to label %.noexc488.jt8 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc487.jt1:                                    ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl10get_prefixReECs8frGy5WneL6_4fish.exit.i, %.noexc490.jt1
  %.not22.i.jt1 = phi i1 [ false, %.noexc490.jt1 ], [ true, %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl10get_prefixReECs8frGy5WneL6_4fish.exit.i ]
  %.sroa.0.3.i20.i.jt1 = phi i8 [ %.sroa.0.3.i.ph.i.jt1, %.noexc490.jt1 ], [ 0, %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl10get_prefixReECs8frGy5WneL6_4fish.exit.i ]
  %i.en = invoke noundef i32 @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef 0)
          to label %.noexc488.jt1 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc488.jt8:                                    ; preds = %.noexc487.jt8
  %.not14.i.jt8 = icmp eq i32 %i.em, -1
  br i1 %.not14.i.jt8, label %.thread822, label %bb.az

.noexc488.jt1:                                    ; preds = %.noexc487.jt1
  %.not14.i.jt1 = icmp eq i32 %i.en, -1
  br i1 %.not14.i.jt1, label %.thread822, label %bb.ba

bb.ax:                                            ; preds = %.noexc486, %.noexc484
  %i.eo = phi i1 [ true, %.noexc486 ], [ false, %.noexc484 ]
  %.sroa.0.3.i.ph.i.jt8 = phi i8 [ 3, %.noexc486 ], [ 8, %.noexc484 ] ; 6 uses
  invoke void @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 1)
          to label %.noexc489.jt8 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %.noexc485, %.noexc484, %bb.av, %bb.aw, %.noexc486
  %.sroa.012.0.i.ph.i.jt1 = phi i64 [ %spec.select, %.noexc485 ], [ 2, %.noexc486 ], [ 1, %bb.aw ], [ 1, %bb.av ], [ 1, %.noexc484 ]
  %.sroa.0.3.i.ph.i.jt1 = phi i8 [ %spec.select854, %.noexc485 ], [ 4, %.noexc486 ], [ 7, %bb.aw ], [ 6, %bb.av ], [ 5, %.noexc484 ]
  invoke void @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %.sroa.012.0.i.ph.i.jt1)
          to label %.noexc489.jt1 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc489.jt8:                                    ; preds = %bb.ax
  %i.ep = invoke noundef i32 @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef 0)
          to label %.noexc490.jt8 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc489.jt1:                                    ; preds = %bb.ay
  %i.eq = invoke noundef i32 @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef 0)
          to label %.noexc490.jt1 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc490.jt8:                                    ; preds = %.noexc489.jt8
  switch i32 %i.ep, label %.noexc487.jt8 [
    i32 83, label %.thread822
    i32 67, label %.thread822
  ]

.noexc490.jt1:                                    ; preds = %.noexc489.jt1
  switch i32 %i.eq, label %.noexc487.jt1 [
    i32 83, label %.thread822
    i32 67, label %.thread822
  ]

bb.az:                                            ; preds = %.noexc488.jt8
  %i.er = call fastcc noundef i8 @_RNvMs0_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_14ConversionSpec9from_char(i32 noundef %i.em) ; 16 uses
  switch i8 %i.er, label %default.unreachable984 [
    i8 -1, label %.thread822
    i8 0, label %bb.bd
    i8 1, label %bb.bd
    i8 2, label %bb.bd
    i8 3, label %bb.bd
    i8 4, label %bb.bd
    i8 5, label %bb.bd
    i8 6, label %.thread830
    i8 7, label %.thread830
    i8 8, label %.thread830
    i8 9, label %.thread830
    i8 10, label %.thread830
    i8 11, label %.thread830
    i8 12, label %.thread830
    i8 13, label %.thread830
    i8 14, label %.thread822
    i8 15, label %bb.be
    i8 16, label %bb.be
  ]

bb.ba:                                            ; preds = %.noexc488.jt1
  %i.es = call fastcc noundef i8 @_RNvMs0_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_14ConversionSpec9from_char(i32 noundef %i.en) ; 4 uses
  %.not15.i.jt1 = icmp eq i8 %i.es, -1
  br i1 %.not15.i.jt1, label %.thread822, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not22.i.jt1, label %.thread830, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %switch855 = icmp samesign ult i8 %i.es, 6
  br i1 %switch855, label %bb.bd, label %.thread822

default.unreachable984:                           ; preds = %bb.az
  unreachable

default.unreachable:                              ; preds = %bb.bm
  unreachable

bb.bd:                                            ; preds = %bb.bc, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az
  %i.et = phi i8 [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.es, %bb.bc ]
  %.sroa.0.3.i20.i820 = phi i8 [ %.sroa.0.3.i.ph.i.jt8, %bb.az ], [ %.sroa.0.3.i.ph.i.jt8, %bb.az ], [ %.sroa.0.3.i.ph.i.jt8, %bb.az ], [ %.sroa.0.3.i.ph.i.jt8, %bb.az ], [ %.sroa.0.3.i.ph.i.jt8, %bb.az ], [ %.sroa.0.3.i.ph.i.jt8, %bb.az ], [ %.sroa.0.3.i20.i.jt1, %bb.bc ]
  %.off.i = add nsw i8 %.sroa.0.3.i20.i820, -1
  %switch.i = icmp ult i8 %.off.i, 7
  br i1 %switch.i, label %.thread830, label %.thread822

bb.be:                                            ; preds = %bb.az, %bb.az
  br i1 %i.eo, label %.thread830, label %.thread822

.thread830:                                       ; preds = %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.bb, %bb.be, %bb.bd
  %i.eu = phi i8 [ %i.et, %bb.bd ], [ %i.er, %bb.az ], [ %i.es, %bb.bb ], [ %i.er, %bb.be ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ] ; 7 uses
  invoke void @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 1)
          to label %bb.bg unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %.loopexit602
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.ev, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gu

.thread822:                                       ; preds = %.noexc488.jt8, %.noexc490.jt8, %.noexc490.jt8, %bb.ba, %.noexc488.jt1, %.noexc490.jt1, %.noexc490.jt1, %bb.be, %bb.bd, %bb.az, %bb.az, %bb.bc
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ew, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gu

bb.bg:                                            ; preds = %.thread830
  %i.ex = icmp eq ptr %.sroa.0.2572, %i.s
  br i1 %i.ex, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.2572, i64 32 ; 3 uses
  %i.ez = trunc nuw i8 %.sroa.26.0 to i1          ; 2 uses
  br i1 %i.ez, label %bb.bk, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.fa, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gu

bb.bj:                                            ; preds = %bb.bh
  %i.fb = icmp samesign ult i8 %i.eu, 15
  br i1 %i.fb, label %switch.lookup, label %bb.bm

bb.bk:                                            ; preds = %bb.bh
  %i.fc = icmp samesign ult i8 %i.eu, 12
  br i1 %i.fc, label %switch.hole_check, label %bb.bl

bb.bl:                                            ; preds = %switch.hole_check, %bb.bk
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.fd, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gu

switch.lookup:                                    ; preds = %bb.bj
  %switch.cast = zext nneg i8 %i.eu to i15
  %switch.downshift = lshr i15 -16353, %switch.cast
  %switch.masked = trunc i15 %switch.downshift to i1
  br label %bb.bm

switch.hole_check:                                ; preds = %bb.bk
  %switch.maskindex = zext nneg i8 %i.eu to i16
  %switch.shifted = lshr i16 3077, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup903, label %bb.bl

switch.lookup903:                                 ; preds = %switch.hole_check
  %switch.cast904 = zext nneg i8 %i.eu to i12
  %switch.downshift906 = lshr i12 5, %switch.cast904
  %switch.masked907 = trunc i12 %switch.downshift906 to i1
  br label %bb.bm

bb.bm:                                            ; preds = %switch.lookup903, %switch.lookup, %bb.bj
  %.sroa.0116.0 = phi i1 [ false, %bb.bj ], [ %switch.masked907, %switch.lookup903 ], [ %switch.masked, %switch.lookup ] ; 2 uses
  %i.fe = icmp eq i64 %.sroa.0142.0571, 1
  %or.cond460 = and i1 %i.fe, %.sroa.0116.0
  %i.ff = select i1 %or.cond460, i1 true, i1 %i.ce
  %spec.select465 = select i1 %i.ff, i8 0, i8 %.sroa.529.0 ; 6 uses
  switch i8 %i.eu, label %default.unreachable [
    i8 0, label %bb.bn
    i8 1, label %bb.bo
    i8 2, label %bb.bp
    i8 16, label %bb.bw
    i8 15, label %bb.bt
    i8 5, label %bb.bq
    i8 6, label %bb.br
    i8 7, label %bb.br
    i8 8, label %bb.br
    i8 9, label %bb.br
    i8 10, label %bb.br
    i8 11, label %bb.br
    i8 12, label %bb.br
    i8 13, label %bb.br
    i8 14, label %bb.bs
    i8 3, label %bb.df
    i8 4, label %bb.de
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.fg = load i64, ptr %.sroa.0.2572, align 8, !range !14, !noundef !5
  switch i64 %i.fg, label %bb.bz [
    i64 4, label %bb.bx
    i64 5, label %bb.by
  ]

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fh = load i64, ptr %.sroa.0.2572, align 8, !range !14, !noundef !5
  switch i64 %i.fh, label %bb.ck [
    i64 4, label %bb.ch
    i64 5, label %bb.ci
  ]

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fi = load i64, ptr %.sroa.0.2572, align 8, !range !14, !noundef !5
  switch i64 %i.fi, label %bb.cx [
    i64 4, label %bb.cu
    i64 5, label %bb.cv
  ]

bb.bq:                                            ; preds = %bb.bm
  %i.fj = load i64, ptr %.sroa.0.2572, align 8, !range !14, !noundef !5
  %i.fk = icmp eq i64 %i.fj, 7
  br i1 %i.fk, label %bb.dt, label %bb.du

bb.br:                                            ; preds = %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm
  %i.fl = load i64, ptr %.sroa.0.2572, align 8, !range !14, !noundef !5
  switch i64 %i.fl, label %bb.dv [
    i64 4, label %bb.dw
    i64 5, label %bb.dx
    i64 6, label %bb.dy
  ]

bb.bs:                                            ; preds = %bb.bm
  %..i = call i64 @llvm.umax.i64(i64 %.sroa.16.0570, i64 16)
  %.sroa.0142.4 = zext i1 %i.eg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.fm = load i64, ptr %.sroa.0.2572, align 8, !range !14, !noundef !5
  switch i64 %i.fm, label %bb.eh [
    i64 4, label %bb.ee
    i64 5, label %bb.ef
  ]

bb.bt:                                            ; preds = %bb.bm
  %.sroa.0.2.val = load i64, ptr %.sroa.0.2572, align 8, !range !14, !noundef !5
  %i.fn = getelementptr i8, ptr %.sroa.0.2572, i64 8
  %.sroa.0.2.val468 = load i64, ptr %i.fn, align 8 ; 11 uses
  switch i64 %.sroa.0.2.val, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread [
    i64 4, label %bb.bv
    i64 5, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.fo = icmp ugt i64 %.sroa.0.2.val468, 4294967295
  br i1 %i.fo, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit

bb.bv:                                            ; preds = %bb.bt
  %.old.i = icmp ugt i64 %.sroa.0.2.val468, 4294967295
  br i1 %.old.i, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit

bb.bw:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg6as_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.2572, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ew unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bn
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.2572, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !5 ; 2 uses
  %i.fr = icmp slt i64 %i.fq, 0
  br i1 %i.fr, label %bb.bz, label %.thread579

bb.by:                                            ; preds = %bb.bn
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.2572, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !noundef !5 ; 3 uses
  %i.fu = icmp slt i64 %i.ft, 0
  br i1 %i.fu, label %bb.cd, label %.thread579

bb.bz:                                            ; preds = %bb.bx, %bb.bn
  %.sroa.7206.0 = phi i8 [ 3, %bb.bn ], [ 4, %bb.bx ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7206.0, ptr %i.fv, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gu

.thread579:                                       ; preds = %bb.bx, %bb.by
  %.sroa.10208.0581 = phi i64 [ %i.ft, %bb.by ], [ %i.fq, %bb.bx ] ; 2 uses
  %i.fw = trunc nuw i8 %.sroa.23.0 to i1          ; 2 uses
  %i.fx = trunc nuw i8 %.sroa.20.0 to i1
  %spec.select462 = select i1 %i.fx, ptr @0, ptr inttoptr (i64 1 to ptr)
  %narrow = select i1 %i.fw, i8 1, i8 %.sroa.20.0
  %.sroa.9179.0 = zext nneg i8 %narrow to i64     ; 2 uses
  %.sroa.0177.0 = select i1 %i.fw, ptr @1, ptr %spec.select462 ; 2 uses
  %.not457 = icmp eq i64 %.sroa.10208.0581, 0
  br i1 %.not457, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.ce, %.thread579
  %.sroa.9179.1 = phi i64 [ %.sroa.9179.2, %bb.ce ], [ %.sroa.9179.0, %.thread579 ]
  %.sroa.0177.1 = phi ptr [ %.sroa.0177.2, %bb.ce ], [ %.sroa.0177.0, %.thread579 ]
  %i.fy = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.fz = load i64, ptr %.sroa.5289.0..sroa_idx, align 8, !noundef !5
  br label %bb.fj

bb.cb:                                            ; preds = %.thread579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %bb.cb
  %.sroa.9179.2 = phi i64 [ 1, %bb.cd ], [ %.sroa.9179.0, %bb.cb ]
  %.sroa.0177.2 = phi ptr [ @2, %bb.cd ], [ %.sroa.0177.0, %bb.cb ]
  %.sroa.0371.0 = phi i64 [ %i.gb, %bb.cd ], [ %.sroa.10208.0581, %bb.cb ]
  store i64 %.sroa.0371.0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4375.0..sroa_idx, align 8
  %i.ga = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull @3, ptr noundef nonnull %i.d)
          to label %bb.cf unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.gb = sub i64 0, %i.ft
  br label %bb.cc

bb.ce:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ca

bb.cf:                                            ; preds = %bb.cc
  br i1 %i.ga, label %bb.cg, label %bb.ce

bb.cg:                                            ; preds = %bb.cf
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.gc, align 1
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.gu

bb.ch:                                            ; preds = %bb.bo
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.2572, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !noundef !5
  br label %bb.cj

bb.ci:                                            ; preds = %bb.bo
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.2572, i64 8
end_hunk_2
begin_hunk_3_@_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish:bb.a
_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i526: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i525
  %i.og = icmp ne ptr %i.nx, %i.ne
  call void @llvm.assume(i1 %i.og)
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i519, i64 4
  %i.oi = load i8, ptr %i.nx, align 1, !alias.scope !779, !noalias !780, !noundef !5
  %i.oj = shl nuw nsw i32 %i.nm, 18
  %i.ok = and i32 %i.oj, 1835008
  %i.ol = shl nuw nsw i32 %i.oc, 6
  %i.om = and i8 %i.oi, 63
  %i.on = zext nneg i8 %i.om to i32
  %i.oo = or disjoint i32 %i.ol, %i.on
  %i.op = or disjoint i32 %i.oo, %i.ok
  br label %bb.gc

bb.gc:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i526, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i525, %bb.gb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i520
  %.sroa.0.1.ph.i.i.i.i.i521 = phi ptr [ %i.no, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i520 ], [ %i.nx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i525 ], [ %i.oh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i526 ], [ %i.ni, %bb.gb ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i522 = phi i32 [ %i.nt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i520 ], [ %i.oe, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i525 ], [ %i.op, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i526 ], [ %i.nv, %bb.gb ]
  %i.oq = load i64, ptr %i.u, align 8, !alias.scope !781, !noundef !5 ; 3 uses
  %i.or = load i64, ptr %1, align 8, !range !12, !alias.scope !781, !noundef !5
  %i.os = icmp eq i64 %i.oq, %i.or
  br i1 %i.os, label %bb.gd, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i523

bb.gd:                                            ; preds = %bb.gc
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #32
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i523 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i523: ; preds = %bb.gd, %bb.gc
  %i.ot = load ptr, ptr %i.v, align 8, !alias.scope !781, !nonnull !5, !noundef !5
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.oq
  store i32 %spec.select.i.ph.i.i.i.i.i522, ptr %i.ou, align 4, !noalias !779
  %i.ov = add i64 %i.oq, 1
  store i64 %i.ov, ptr %i.u, align 8, !alias.scope !781
  %.not.i.i.i.i.i.i524 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i521, %i.ne
  br i1 %.not.i.i.i.i.i.i524, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit529, label %.lr.ph.i.i.i.i.i518

bb.ge:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale14apply_grouping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0233.0, i64 noundef %.sroa.18.0)
          to label %bb.gf unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit529: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i523, %.noexc527, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit
  br i1 %i.lk, label %bb.gm, label %bb.gl

bb.gf:                                            ; preds = %bb.ge
  %i.ow = load ptr, ptr %i.ae, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ox = load i64, ptr %i.af, align 8, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ox ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.oz = lshr i64 %i.ox, 2
  %i.pa = and i64 %i.ox, 3
  %.not.i.i.i.i530 = icmp ne i64 %i.pa, 0
  %i.pb = zext i1 %.not.i.i.i.i530 to i64
  %.sroa.0.0.i.i.i.i531 = add nuw nsw i64 %i.oz, %i.pb
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.i.i.i.i531)
          to label %.noexc542 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc542:                                        ; preds = %bb.gf
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %.not.i9.i.i.i.i.i532 = icmp samesign eq i64 %i.ox, 0
  br i1 %.not.i9.i.i.i.i.i532, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit544, label %.lr.ph.i.i.i.i.i533

.lr.ph.i.i.i.i.i533:                              ; preds = %.noexc542, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i538
  %.sroa.0.010.i.i.i.i.i534 = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i536, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i538 ], [ %i.ow, %.noexc542 ] ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i534, i64 1 ; 3 uses
  %i.pd = load i8, ptr %.sroa.0.010.i.i.i.i.i534, align 1, !alias.scope !789, !noalias !790, !noundef !5 ; 5 uses
  %i.pe = icmp sgt i8 %i.pd, -1
  br i1 %i.pe, label %bb.gg, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i535

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i535: ; preds = %.lr.ph.i.i.i.i.i533
  %i.pf = and i8 %i.pd, 31
  %i.pg = zext nneg i8 %i.pf to i32               ; 3 uses
  %i.ph = icmp ne ptr %i.pc, %i.oy
  call void @llvm.assume(i1 %i.ph)
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i534, i64 2 ; 3 uses
  %i.pj = load i8, ptr %i.pc, align 1, !alias.scope !789, !noalias !790, !noundef !5
  %i.pk = shl nuw nsw i32 %i.pg, 6
  %i.pl = and i8 %i.pj, 63
  %i.pm = zext nneg i8 %i.pl to i32               ; 2 uses
  %i.pn = or disjoint i32 %i.pk, %i.pm
  %i.po = icmp samesign ugt i8 %i.pd, -33
  br i1 %i.po, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i540, label %bb.gh

bb.gg:                                            ; preds = %.lr.ph.i.i.i.i.i533
  %i.pp = zext nneg i8 %i.pd to i32
  br label %bb.gh

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i540: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i535
  %i.pq = icmp ne ptr %i.pi, %i.oy
  call void @llvm.assume(i1 %i.pq)
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i534, i64 3 ; 3 uses
  %i.ps = load i8, ptr %i.pi, align 1, !alias.scope !789, !noalias !790, !noundef !5
  %i.pt = shl nuw nsw i32 %i.pm, 6
  %i.pu = and i8 %i.ps, 63
  %i.pv = zext nneg i8 %i.pu to i32
  %i.pw = or disjoint i32 %i.pt, %i.pv            ; 2 uses
  %i.px = shl nuw nsw i32 %i.pg, 12
  %i.py = or disjoint i32 %i.pw, %i.px
  %i.pz = icmp samesign ugt i8 %i.pd, -17
  br i1 %i.pz, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i541, label %bb.gh

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i541: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i540
  %i.qa = icmp ne ptr %i.pr, %i.oy
  call void @llvm.assume(i1 %i.qa)
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i534, i64 4
  %i.qc = load i8, ptr %i.pr, align 1, !alias.scope !789, !noalias !790, !noundef !5
  %i.qd = shl nuw nsw i32 %i.pg, 18
  %i.qe = and i32 %i.qd, 1835008
  %i.qf = shl nuw nsw i32 %i.pw, 6
  %i.qg = and i8 %i.qc, 63
  %i.qh = zext nneg i8 %i.qg to i32
  %i.qi = or disjoint i32 %i.qf, %i.qh
  %i.qj = or disjoint i32 %i.qi, %i.qe
  br label %bb.gh

bb.gh:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i541, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i540, %bb.gg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i535
  %.sroa.0.1.ph.i.i.i.i.i536 = phi ptr [ %i.pi, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i535 ], [ %i.pr, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i540 ], [ %i.qb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i541 ], [ %i.pc, %bb.gg ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i537 = phi i32 [ %i.pn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i535 ], [ %i.py, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i540 ], [ %i.qj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i541 ], [ %i.pp, %bb.gg ]
  %i.qk = load i64, ptr %i.u, align 8, !alias.scope !791, !noundef !5 ; 3 uses
  %i.ql = load i64, ptr %1, align 8, !range !12, !alias.scope !791, !noundef !5
  %i.qm = icmp eq i64 %i.qk, %i.ql
  br i1 %i.qm, label %bb.gi, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i538

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #32
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i538 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i538: ; preds = %bb.gi, %bb.gh
  %i.qn = load ptr, ptr %i.v, align 8, !alias.scope !791, !nonnull !5, !noundef !5
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.qk
  store i32 %spec.select.i.ph.i.i.i.i.i537, ptr %i.qo, align 4, !noalias !789
  %i.qp = add i64 %i.qk, 1
  store i64 %i.qp, ptr %i.u, align 8, !alias.scope !791
  %.not.i.i.i.i.i.i539 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i536, %i.oy
  br i1 %.not.i.i.i.i.i.i539, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit544, label %.lr.ph.i.i.i.i.i533

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gi, %bb.gf
  %lpad.loopexit.split-lp908 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #29
          to label %.body unwind label %bb.go

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit544: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i538, %.noexc542
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.gj

bb.gj:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit544
  %i.qq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.qr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit544
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit529

bb.gl:                                            ; preds = %bb.gm, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit529
  %i.qs = add i64 %..i499, %.sroa.0279.0741       ; 2 uses
  %i.qt = icmp ult i64 %i.qs, %.sroa.0279.0741
  br i1 %i.qt, label %bb.gn, label %.backedge, !prof !7

.backedge:                                        ; preds = %bb.dt, %bb.ec, %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit, %bb.gl
  %.sroa.0279.0.be = phi i64 [ %i.qs, %bb.gl ], [ %.sroa.0279.0741, %bb.dt ], [ %i.ie, %bb.ec ], [ %i.re, %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ] ; 2 uses
  %.sroa.0.0.be = phi ptr [ %i.ey, %bb.gl ], [ %i.ey, %bb.dt ], [ %i.ey, %bb.ec ], [ %.sroa.0.0742, %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ] ; 2 uses
  %.val = load i64, ptr %i.r, align 8, !noundef !5
  %i.qu = icmp eq i64 %.val, 0
  br i1 %i.qu, label %._crit_edge, label %bb.b

bb.gm:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit529
  %i.qv = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32, i64 noundef %..i499, i64 noundef %i.lh)
          to label %bb.gl unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.gn:                                            ; preds = %bb.gl
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.qw, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gu

bb.go:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %i.qx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

.invoke:                                          ; preds = %bb.fm, %bb.ff, %._crit_edge859
  %i.qy = phi ptr [ @8, %._crit_edge859 ], [ @11, %bb.ff ], [ @10, %bb.fm ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qy) #33
          to label %.cont unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.gp:                                            ; preds = %bb.ao, %bb.ap, %bb.an
  %.sroa.876.0.sink = phi i8 [ 1, %bb.an ], [ 3, %bb.ao ], [ 4, %bb.ap ]
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.876.0.sink, ptr %i.qz, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gu

bb.gq:                                            ; preds = %bb.x, %bb.y, %bb.w
  %.sroa.8.0.sink = phi i8 [ 1, %bb.w ], [ 3, %bb.x ], [ 4, %bb.y ]
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.8.0.sink, ptr %i.ra, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gu

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i
  %i.rb = icmp ult i64 %i.aj, 32
  br i1 %i.rb, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit
  %i.rc = invoke noundef i64 @_RNvNtNtCs3oUPovFnLWP_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.aj)
          to label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gs:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit
  %i.rd = invoke noundef i64 @_RNvNtNtCs3oUPovFnLWP_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.aj)
          to label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit: ; preds = %bb.gr, %bb.gs
  %.sroa.0.0.i546 = phi i64 [ %i.rc, %bb.gr ], [ %i.rd, %bb.gs ]
  %i.re = add i64 %.sroa.0.0.i546, %.sroa.0279.0741 ; 2 uses
  %i.rf = icmp ult i64 %i.re, %.sroa.0279.0741
  br i1 %i.rf, label %bb.gt, label %.backedge, !prof !7

bb.gt:                                            ; preds = %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.rg, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.bf, %bb.gp, %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intReECs8frGy5WneL6_4fish.exit483, %bb.bl, %bb.bz, %bb.cg, %bb.ex, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread, %bb.en, %bb.du, %bb.ds, %bb.dd, %bb.ct, %bb.eb, %bb.ed, %bb.dv, %bb.gn, %bb.fq, %bb.bi, %.thread822, %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intReECs8frGy5WneL6_4fish.exit, %bb.gq, %bb.gx
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit551 unwind label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.rh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ri = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.gz, %bb.gv
  %common.resume.op = phi { ptr, i32 } [ %i.rl, %bb.gz ], [ %i.rh, %bb.gv ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.gx:                                            ; preds = %._crit_edge
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.rj, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gu

bb.gy:                                            ; preds = %._crit_edge
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0279.0.lcssa, ptr %i.rk, align 8
  store i8 0, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit551 unwind label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.rl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit551: ; preds = %bb.gy, %bb.gu
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.c, align 4
  switch i32 %1, label %bb.b [
    i32 48, label %bb.c
    i32 32, label %bb.c
  ], !prof !18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRcNtB6_5Debug3fmtCs8frGy5WneL6_4fish, ptr %.sroa.49.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #31
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  %.not = icmp ult i64 %3, %2
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %1, 48
  %. = select i1 %i.d, ptr @12, ptr @13           ; 4 uses
  %i.e = sub nuw i64 %2, %3                       ; 2 uses
  %.not1418 = icmp eq i64 %i.e, 0
  br i1 %.not1418, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit
  %.sroa.04.019 = phi i64 [ %i.e, %.lr.ph ], [ %i.ba, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit ] ; 3 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.04.019, i64 16) ; 5 uses
  %.not.i = icmp ult i64 %.sroa.04.019, 16
  br i1 %.not.i, label %bb.f, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %., i64 %..i
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !812, !noundef !5
  %i.j = icmp sgt i8 %i.i, -65
  br i1 %i.j, label %.lr.ph.i.i.i.i.i, label %bb.k

.loopexit:                                        ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit, %bb.d, %bb.c
  ret i1 false

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %i.k = getelementptr inbounds nuw i8, ptr %., i64 %..i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %i.l = add nuw nsw i64 %..i, 3
  %.sroa.0.0.i.i.i.i = lshr i64 %i.l, 2
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i.i.i.i), !noalias !818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi ptr [ %., %.lr.ph.i.i.i.i.i ], [ %.sroa.0.1.ph.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 1 ; 3 uses
  %i.n = load i8, ptr %.sroa.0.010.i.i.i.i.i, align 1, !alias.scope !818, !noalias !821, !noundef !5 ; 5 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.h, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.p = and i8 %i.n, 31
  %i.q = zext nneg i8 %i.p to i32                 ; 3 uses
  %i.r = icmp ne ptr %i.m, %i.k
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 2 ; 3 uses
  %i.t = load i8, ptr %i.m, align 1, !alias.scope !818, !noalias !821, !noundef !5
  %i.u = shl nuw nsw i32 %i.q, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32                 ; 2 uses
  %i.x = or disjoint i32 %i.u, %i.w
  %i.y = icmp samesign ugt i8 %i.n, -33
  br i1 %i.y, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = zext nneg i8 %i.n to i32
  br label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i
  %i.aa = icmp ne ptr %i.s, %i.k
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 3 ; 3 uses
  %i.ac = load i8, ptr %i.s, align 1, !alias.scope !818, !noalias !821, !noundef !5
  %i.ad = shl nuw nsw i32 %i.w, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af            ; 2 uses
  %i.ah = shl nuw nsw i32 %i.q, 12
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = icmp samesign ugt i8 %i.n, -17
  br i1 %i.aj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, label %bb.i
end_hunk_3
begin_hunk_4_@_RINvXsu_NtCs3oUPovFnLWP_4core4charNtB6_11ToUppercaseNtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvBO_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB28_11Utf32StringINtNtBS_7collect6ExtendcE6extendBw_E0E0ECs8frGy5WneL6_4fish:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4s_11Utf32StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs8frGy5WneL6_4fish.exit.i.i, %.lr.ph.i.i
  %i.h = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.r, %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4s_11Utf32StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs8frGy5WneL6_4fish.exit.i.i ] ; 3 uses
  %i.i = phi i64 [ %i.b, %.lr.ph.i.i ], [ %i.j, %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4s_11Utf32StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs8frGy5WneL6_4fish.exit.i.i ] ; 3 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = icmp ult i64 %i.i, 3
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.i
  %i.m = load i32, ptr %i.l, align 4, !range !13, !alias.scope !1954, !noalias !1959, !noundef !5
  %i.n = load i64, ptr %1, align 8, !range !12, !alias.scope !1958, !noalias !1959, !noundef !5
  %i.o = icmp eq i64 %i.h, %i.n
  br i1 %i.o, label %bb.c, label %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4s_11Utf32StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs8frGy5WneL6_4fish.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #32, !noalias !1954
  br label %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4s_11Utf32StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs8frGy5WneL6_4fish.exit.i.i

_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4s_11Utf32StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.c, %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !alias.scope !1958, !noalias !1959, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.h
  store i32 %i.m, ptr %i.q, align 4, !noalias !1960
  %i.r = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.r, ptr %i.f, align 8, !alias.scope !1958, !noalias !1959
  %.not.i.i = icmp eq i64 %i.j, %i.d
  br i1 %.not.i.i, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoItercKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2j_11Utf32StringINtNtB13_7collect6ExtendcE6extendNtNtBa_4char11ToUppercaseE0E0ECs8frGy5WneL6_4fish.exit, label %bb.b

_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoItercKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2j_11Utf32StringINtNtB13_7collect6ExtendcE6extendNtNtBa_4char11ToUppercaseE0E0ECs8frGy5WneL6_4fish.exit: ; preds = %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4s_11Utf32StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs8frGy5WneL6_4fish.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsu_NtCs3oUPovFnLWP_4core4charNtB6_11ToUppercaseNtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvBO_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB29_11Utf32StringINtNtBS_7collect6ExtendcE6extendINtNtNtBU_8adapters7flatten7FlatMapINtNtNtB8_5slice4iter4ItercEBw_NCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB4M_6Reader23handle_readline_commands1_0EE0E0EB4Q_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1970
  store ptr %i.c, ptr %i.a, align 8, !noalias !1970
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 3, ptr %i.d, align 8, !noalias !1970
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %1, ptr %i.e, align 8, !noalias !1970
  call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  call void @llvm.experimental.noalias.scope.decl(metadata !1972)
  %i.f = load i64, ptr %i.b, align 8, !alias.scope !1973, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1973, !noundef !5 ; 3 uses
  %i.i = icmp ule i64 %i.f, %i.h
  call void @llvm.assume(i1 %i.i)
  %.not1.i.i = icmp eq i64 %i.f, %i.h
  br i1 %.not1.i.i, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoItercKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2k_11Utf32StringINtNtB13_7collect6ExtendcE6extendINtNtNtB15_8adapters7flatten7FlatMapINtNtNtBa_5slice4iter4ItercENtNtBa_4char11ToUppercaseNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5l_6Reader23handle_readline_commands1_0EE0E0EB5p_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.j = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.k = add nuw i64 %i.j, 1                      ; 3 uses
  store i64 %i.k, ptr %i.b, align 8, !alias.scope !1973
  call void @llvm.experimental.noalias.scope.decl(metadata !1974)
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !1975, !noalias !1970, !nonnull !5, !align !31, !noundef !5
  %i.m = load i64, ptr %i.d, align 8, !alias.scope !1975, !noalias !1970, !noundef !5
  %i.n = icmp ult i64 %i.j, %i.m
  call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.j
  %i.p = load i32, ptr %i.o, align 4, !range !13, !noalias !1976, !noundef !5
  call void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1Z_11Utf32StringINtNtBZ_7collect6ExtendcE6extendINtNtNtB11_8adapters7flatten7FlatMapINtNtNtBb_5slice4iter4ItercENtNtBb_4char11ToUppercaseNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB4Z_6Reader23handle_readline_commands1_0EE0E0INtB7_5FnMutTucEE8call_mutB53_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef range(i32 0, 1114112) %i.p)
  %.not.i.i = icmp eq i64 %i.k, %i.h
  br i1 %.not.i.i, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoItercKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2k_11Utf32StringINtNtB13_7collect6ExtendcE6extendINtNtNtB15_8adapters7flatten7FlatMapINtNtNtBa_5slice4iter4ItercENtNtBa_4char11ToUppercaseNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5l_6Reader23handle_readline_commands1_0EE0E0EB5p_.exit, label %.lr.ph.i.i

_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoItercKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2k_11Utf32StringINtNtB13_7collect6ExtendcE6extendINtNtNtB15_8adapters7flatten7FlatMapINtNtNtBa_5slice4iter4ItercENtNtBa_4char11ToUppercaseNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5l_6Reader23handle_readline_commands1_0EE0E0EB5p_.exit: ; preds = %.lr.ph.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtCs3oUPovFnLWP_4core4char11ToUppercaseNtNtNtNtB7_4iter6traits8iterator8Iterator5eq_byINtNtB7_6option6OptioncENCINvYB3_BI_2eqB1t_E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i32 noundef range(i32 -1, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.b = sub nuw i64 %.sroa.5.0.copyload, %.sroa.0.0.copyload
  %i.c = icmp ne i32 %1, -1                       ; 2 uses
  %i.d = zext i1 %i.c to i64
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %.noexc.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtBb_4char11ToUppercaseINtB5_10SpecIterEqINtNtBb_6option8IntoItercEE12spec_iter_eqNCINvNvNtB5_8Iterator5eq_by7compareccNCINvYBP_B2i_2eqINtB1z_6OptioncEE0E0ECs8frGy5WneL6_4fish.exit

.noexc.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1979
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx5, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  %i.f = call noundef i32 @_RNvXsu_NtCs3oUPovFnLWP_4core4charNtB5_11ToUppercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  %.not.peel.i.i.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.peel.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  %.not1.i.i.peel.i.i.i.i = icmp eq i32 %i.f, %1
  br i1 %.not1.i.i.peel.i.i.i.i, label %.peel.next.i.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareNtNtB8_4char11ToUppercaseINtNtB8_6option8IntoItercENCINvNvNtB2_8Iterator5eq_by7compareccNCINvYB10_B1W_2eqINtB1s_6OptioncEE0E0uECs8frGy5WneL6_4fish.exit.i

.peel.next.i.i.i.i:                               ; preds = %bb.b
  %i.g = call noundef i32 @_RNvXsu_NtCs3oUPovFnLWP_4core4charNtB5_11ToUppercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  %.not.i.i.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i.i.i, label %.thread.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareNtNtB8_4char11ToUppercaseINtNtB8_6option8IntoItercENCINvNvNtB2_8Iterator5eq_by7compareccNCINvYB10_B1W_2eqINtB1s_6OptioncEE0E0uECs8frGy5WneL6_4fish.exit.i

bb.c:                                             ; preds = %.noexc.i
  br i1 %i.c, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareNtNtB8_4char11ToUppercaseINtNtB8_6option8IntoItercENCINvNvNtB2_8Iterator5eq_by7compareccNCINvYB10_B1W_2eqINtB1s_6OptioncEE0E0uECs8frGy5WneL6_4fish.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c, %.peel.next.i.i.i.i
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareNtNtB8_4char11ToUppercaseINtNtB8_6option8IntoItercENCINvNvNtB2_8Iterator5eq_by7compareccNCINvYB10_B1W_2eqINtB1s_6OptioncEE0E0uECs8frGy5WneL6_4fish.exit.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareNtNtB8_4char11ToUppercaseINtNtB8_6option8IntoItercENCINvNvNtB2_8Iterator5eq_by7compareccNCINvYB10_B1W_2eqINtB1s_6OptioncEE0E0uECs8frGy5WneL6_4fish.exit.i: ; preds = %.thread.i.i, %bb.c, %.peel.next.i.i.i.i, %bb.b
  %i.h = phi i1 [ false, %bb.c ], [ false, %.peel.next.i.i.i.i ], [ true, %.thread.i.i ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1979
  br label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtBb_4char11ToUppercaseINtB5_10SpecIterEqINtNtBb_6option8IntoItercEE12spec_iter_eqNCINvNvNtB5_8Iterator5eq_by7compareccNCINvYBP_B2i_2eqINtB1z_6OptioncEE0E0ECs8frGy5WneL6_4fish.exit

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtBb_4char11ToUppercaseINtB5_10SpecIterEqINtNtBb_6option8IntoItercEE12spec_iter_eqNCINvNvNtB5_8Iterator5eq_by7compareccNCINvYBP_B2i_2eqINtB1z_6OptioncEE0E0ECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareNtNtB8_4char11ToUppercaseINtNtB8_6option8IntoItercENCINvNvNtB2_8Iterator5eq_by7compareccNCINvYB10_B1W_2eqINtB1s_6OptioncEE0E0uECs8frGy5WneL6_4fish.exit.i, %bb.a
  %.sroa.0.1.i = phi i1 [ %i.h, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareNtNtB8_4char11ToUppercaseINtNtB8_6option8IntoItercENCINvNvNtB2_8Iterator5eq_by7compareccNCINvYB10_B1W_2eqINtB1s_6OptioncEE0E0uECs8frGy5WneL6_4fish.exit.i ], [ false, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i64 @_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCsfc8f8SDE2Co_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECs8frGy5WneL6_4fish(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %.not.i19 = icmp eq ptr %0, %1
  br i1 %.not.i19, label %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
  %.sroa.0.022 = phi i64 [ %i.eh, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit ], [ 0, %bb.a ]
  %.sroa.6.021 = phi i16 [ %.sroa.51.1.i.i, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit ], [ 0, %bb.a ] ; 5 uses
  %.sroa.2.020 = phi ptr [ %.sroa.2.3.ph, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -1 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !noalias !1986, !noundef !5 ; 3 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i: ; preds = %.lr.ph
  %i.d = icmp ne ptr %0, %i.a
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -2 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !noalias !1986, !noundef !5 ; 3 uses
  %i.g = and i8 %i.f, 31
  %i.h = zext nneg i8 %i.g to i32
  %i.i = icmp slt i8 %i.f, -64
  br i1 %i.i, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = zext nneg i8 %i.b to i32
  br label %bb.e

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i
  %i.k = icmp ne ptr %0, %i.e
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -3 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !noalias !1986, !noundef !5 ; 3 uses
  %i.n = and i8 %i.m, 15
  %i.o = zext nneg i8 %i.n to i32
  %i.p = icmp slt i8 %i.m, -64
  br i1 %i.p, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i, label %bb.d

bb.c:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i
  %.sroa.2.1 = phi ptr [ %.sroa.2.2, %bb.d ], [ %i.e, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i ]
  %.sroa.010.0.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.h, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i ]
  %i.q = shl nuw nsw i32 %.sroa.010.0.i.i, 6
  %i.r = and i8 %i.b, 63
  %i.s = zext nneg i8 %i.r to i32
  %i.t = or disjoint i32 %i.q, %i.s
  br label %bb.e

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i
  %i.u = icmp ne ptr %0, %i.l
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -4 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !noalias !1986, !noundef !5
  %i.x = and i8 %i.w, 7
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 6
  %i.aa = and i8 %i.m, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i
  %.sroa.2.2 = phi ptr [ %i.v, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i ], [ %i.l, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i ]
  %.sroa.010.1.i.i = phi i32 [ %i.ac, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i ], [ %i.o, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i ]
  %i.ad = shl nuw nsw i32 %.sroa.010.1.i.i, 6
  %i.ae = and i8 %i.f, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %bb.c

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.2.3.ph = phi ptr [ %.sroa.2.1, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %spec.select.i.ph = phi i32 [ %i.t, %bb.c ], [ %i.j, %bb.b ] ; 76 uses
  %.not.i.i = icmp sgt i16 %.sroa.6.021, -1
  br i1 %.not.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = lshr i32 %spec.select.i.ph, 10
  switch i32 %i.ah, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i [
    i32 0, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i
    i32 8, label %bb.g
    i32 9, label %bb.h
    i32 10, label %bb.i
    i32 12, label %bb.j
    i32 124, label %bb.k
    i32 125, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.h:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.i:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.j:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.k:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.l:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.01.0.i.i.i = phi i64 [ 6, %bb.l ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 0, %bb.f ]
  %i.ai = lshr i32 %spec.select.i.ph, 3
  %i.aj = and i32 %i.ai, 127
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [128 x i8], ptr @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables25EMOJI_PRESENTATION_LEAVES, i64 %.sroa.01.0.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  %i.an = load i8, ptr %i.am, align 1, !noundef !5
  %i.ao = trunc i32 %spec.select.i.ph to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = lshr i8 %i.an, %i.ap
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %bb.n, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i

bb.m:                                             ; preds = %bb.o, %bb.e
  %.sroa.0.0.i.i = phi i16 [ %i.aw, %bb.o ], [ %.sroa.6.021, %bb.e ] ; 13 uses
  %i.as = icmp samesign ult i32 %spec.select.i.ph, 161
  br i1 %i.as, label %bb.r, label %bb.q

_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i: ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i, %bb.f
  %i.at = and i16 %.sroa.6.021, 8192
  %.not81.i.i = icmp eq i16 %i.at, 0
  br i1 %.not81.i.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i
  %i.au = and i16 %.sroa.6.021, -20480
  %i.av = icmp eq i16 %i.au, -28672
  %..i.i = select i1 %i.av, i8 0, i8 2
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.o:                                             ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i
  %i.aw = and i16 %.sroa.6.021, 32767
  br label %bb.m

bb.p:                                             ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i
  %i.ax = icmp samesign ult i32 %spec.select.i.ph, 161
  br i1 %i.ax, label %bb.cp, label %.thread121.i.i

bb.q:                                             ; preds = %bb.m
  %.not82.i.i = icmp eq i16 %.sroa.0.0.i.i, 0
  br i1 %.not82.i.i, label %.thread121.i.i, label %bb.s

bb.r:                                             ; preds = %bb.m
  %trunc.i.i = trunc nuw i32 %spec.select.i.ph to i8
  switch i8 %trunc.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit [
    i8 10, label %bb.cn
    i8 13, label %bb.co
  ]

.thread121.i.i:                                   ; preds = %bb.ci, %bb.cm, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %.thread137.i.i, %bb.cb, %bb.bn, %bb.ax, %bb.ax, %bb.ax, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.q, %bb.p
  %spec.select.i17 = phi i32 [ %spec.select.i.ph, %bb.cm ], [ %spec.select.i.ph, %bb.ci ], [ %spec.select.i.ph, %bb.ch ], [ 127988, %bb.cg ], [ %spec.select.i.ph, %bb.cf ], [ %spec.select.i.ph, %bb.ce ], [ %spec.select.i.ph, %bb.cd ], [ %spec.select.i.ph, %.thread137.i.i ], [ %spec.select.i.ph, %bb.cb ], [ %spec.select.i.ph, %bb.bn ], [ 11647, %bb.ax ], [ 11647, %bb.ax ], [ 11647, %bb.ax ], [ 11647, %bb.au ], [ 11647, %bb.at ], [ 11647, %bb.as ], [ 11647, %bb.ar ], [ %spec.select.i.ph, %bb.q ], [ %spec.select.i.ph, %bb.p ]
  %i.ay = tail call fastcc { i8, i16 } @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables12lookup_width(i32 noundef range(i32 0, 1114112) %spec.select.i17) #35 ; 2 uses
  %i.az = extractvalue { i8, i16 } %i.ay, 0
  %i.ba = extractvalue { i8, i16 } %i.ay, 1
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.s:                                             ; preds = %bb.q
  switch i32 %spec.select.i.ph, label %bb.w [
    i32 65039, label %bb.t
    i32 65025, label %bb.u
    i32 65038, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.bb = and i16 %.sroa.0.0.i.i, 12288
  %or.cond27.not.i.i = icmp eq i16 %i.bb, 0
  %i.bc = or disjoint i16 %.sroa.0.0.i.i, -32768
  %.sroa.050.0.i.i = select i1 %or.cond27.not.i.i, i16 -32768, i16 %i.bc
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.u:                                             ; preds = %bb.s
  %i.bd = and i16 %.sroa.0.0.i.i, 8192
  %.not84.i.i = icmp eq i16 %i.bd, 0
  %i.be = or i16 %.sroa.0.0.i.i, 512
  %.sroa.051.0.i.i = select i1 %.not84.i.i, i16 512, i16 %i.be
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.v:                                             ; preds = %bb.s
  %i.bf = and i16 %.sroa.0.0.i.i, 8192
  %.not83.i.i = icmp eq i16 %i.bf, 0
  %i.bg = or i16 %.sroa.0.0.i.i, 16384
  %.sroa.052.0.i.i = select i1 %.not83.i.i, i16 16384, i16 %i.bg
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.w:                                             ; preds = %bb.s
  %.not85.i.i = icmp samesign ult i16 %.sroa.0.0.i.i, 16384
  br i1 %.not85.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bh = and i16 %.sroa.0.0.i.i, 512
  %.not86.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not86.i.i, label %bb.ak, label %bb.ai

bb.y:                                             ; preds = %bb.w
  %i.bi = lshr i32 %spec.select.i.ph, 8
  switch i32 %i.bi, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i [
    i32 35, label %bb.ah
    i32 37, label %.thread.i.i.i
    i32 38, label %bb.z
    i32 39, label %bb.aa
    i32 43, label %bb.ab
    i32 496, label %bb.ac
    i32 499, label %bb.ad
    i32 500, label %bb.ae
    i32 501, label %bb.af
    i32 502, label %bb.ag
  ]

bb.z:                                             ; preds = %bb.y
  br label %bb.ah

bb.aa:                                            ; preds = %bb.y
  br label %bb.ah

bb.ab:                                            ; preds = %bb.y
  br label %bb.ah

bb.ac:                                            ; preds = %bb.y
  br label %.thread.i.i.i

bb.ad:                                            ; preds = %bb.y
  br label %bb.ah

bb.ae:                                            ; preds = %bb.y
  br label %bb.ah

bb.af:                                            ; preds = %bb.y
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  br label %bb.ah

.thread.i.i.i:                                    ; preds = %bb.ac, %bb.y
  %.sroa.01.0.ph.i.i.i = phi ptr [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_5, %bb.ac ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_1, %bb.y ]
  %i.bj = trunc i32 %spec.select.i.ph to i8
  br label %._crit_edge.i.i.i.i

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.sroa.11.0.i.i.i = phi i64 [ 10, %bb.ag ], [ 4, %bb.af ], [ 15, %bb.z ], [ 10, %bb.aa ], [ 3, %bb.ab ], [ 4, %bb.y ], [ 13, %bb.ad ], [ 22, %bb.ae ] ; 2 uses
  %.sroa.01.0.i99.i.i = phi ptr [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_9, %bb.ag ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_8, %bb.af ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_2, %bb.z ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_3, %bb.aa ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_4, %bb.ab ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_0, %bb.y ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_6, %bb.ad ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_7, %bb.ae ] ; 2 uses
  %i.bk = trunc i32 %spec.select.i.ph to i8       ; 2 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.thread.i.i.i
  %i.bl = phi i8 [ %i.bj, %.thread.i.i.i ], [ %i.bk, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.01.05.i.i.i = phi ptr [ %.sroa.01.0.ph.i.i.i, %.thread.i.i.i ], [ %.sroa.01.0.i99.i.i, %.lr.ph.i.i.i.i ]
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %.thread.i.i.i ], [ %i.bv, %.lr.ph.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.05.i.i.i, i64 %.sroa.05.0.lcssa.i.i.i.i ; 2 uses
  %.val15.i.i.i.i = load i8, ptr %i.bm, align 1, !alias.scope !1987, !noundef !5
  %i.bn = getelementptr i8, ptr %i.bm, i64 1
  %.val16.i.i.i.i = load i8, ptr %i.bn, align 1, !alias.scope !1987
  %.not = icmp ult i8 %i.bl, %.val15.i.i.i.i
  %i.bo = icmp ugt i8 %i.bl, %.val16.i.i.i.i
  %i.bp = select i1 %.not, i1 true, i1 %i.bo
  br i1 %i.bp, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %bb.ah
  %.sroa.01.020.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i ], [ %.sroa.11.0.i.i.i, %bb.ah ] ; 2 uses
  %.sroa.05.019.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i ], [ 0, %bb.ah ] ; 2 uses
  %i.bq = lshr i64 %.sroa.01.020.i.i.i.i, 1       ; 2 uses
  %i.br = add nuw nsw i64 %i.bq, %.sroa.05.019.i.i.i.i ; 3 uses
  %i.bs = icmp ult i64 %i.br, %.sroa.11.0.i.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i99.i.i, i64 %i.br
  %.val12.i.i.i.i = load i8, ptr %i.bt, align 1, !alias.scope !1987, !noundef !5
  %i.bu = icmp ugt i8 %.val12.i.i.i.i, %i.bk
  %i.bv = select i1 %i.bu, i64 %.sroa.05.019.i.i.i.i, i64 %i.br, !unpredictable !5 ; 2 uses
  %i.bw = sub nuw nsw i64 %.sroa.01.020.i.i.i.i, %i.bq ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, 1
  br i1 %i.bx, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.ai:                                            ; preds = %bb.x
  %switch.tableidx = add nsw i32 %spec.select.i.ph, -8216 ; 2 uses
  %i.by = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond9 = select i1 %i.by, i1 %switch.lobit, i1 false
  br i1 %or.cond9, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bz = and i16 %.sroa.0.0.i.i, 15871
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i, %bb.aj, %bb.x
  %.sroa.0.1.i.i = phi i16 [ %i.cb, %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i ], [ %i.bz, %bb.aj ], [ %.sroa.0.0.i.i, %bb.x ] ; 17 uses
  %i.ca = and i16 %.sroa.0.1.i.i, 2048
  %.not87.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not87.i.i, label %bb.am, label %bb.al

_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.y
  %i.cb = and i16 %.sroa.0.0.i.i, 16383
  br label %bb.ak

bb.al:                                            ; preds = %bb.ak
  switch i32 %spec.select.i.ph, label %bb.ao [
    i32 8205, label %bb.an
    i32 847, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 6159, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
  ]

bb.am:                                            ; preds = %bb.ao, %bb.ak
  switch i16 %.sroa.0.1.i.i, label %bb.ap [
    i16 12543, label %bb.aq
    i16 15360, label %bb.ar
    i16 15367, label %bb.as
    i16 15361, label %bb.at
    i16 15362, label %bb.au
  ]

bb.an:                                            ; preds = %bb.al
  %i.cc = or i16 %.sroa.0.1.i.i, 1024
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.ao:                                            ; preds = %bb.al
  %i.cd = and i32 %spec.select.i.ph, 2097150
  %or.cond.i = icmp eq i32 %i.cd, 6068
  %i.ce = add nsw i32 %spec.select.i.ph, -6155
  %or.cond1.i = icmp ult i32 %i.ce, 3
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %or.cond1.i
  %i.cf = and i32 %spec.select.i.ph, 2097136
  %or.cond2.i = icmp eq i32 %i.cf, 65024
  %or.cond4.i = or i1 %or.cond2.i, %or.cond3.i
  %i.cg = add nsw i32 %spec.select.i.ph, -917760
  %spec.select.i9 = icmp ult i32 %i.cg, 240
  %or.cond = select i1 %or.cond4.i, i1 true, i1 %spec.select.i9
  br i1 %or.cond, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.am

bb.ap:                                            ; preds = %bb.aw, %bb.am
  %i.ch = icmp eq i32 %spec.select.i.ph, 11647
  br i1 %i.ch, label %bb.ax, label %bb.ay

bb.aq:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %bb.av [
    i32 1604, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 1898, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 2214, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 2247, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
  ]

bb.ar:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %.thread105.i.i [
    i32 1488, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 11647, label %.thread121.i.i
  ]

bb.as:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %.thread105.i.i [
    i32 6098, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 11647, label %.thread121.i.i
  ]

bb.at:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %.thread105.i.i [
    i32 6679, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 11647, label %.thread121.i.i
  ]

bb.au:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %.thread105.i.i [
    i32 6677, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 11647, label %.thread121.i.i
  ]

bb.av:                                            ; preds = %bb.aq
  %i.ci = add nsw i32 %spec.select.i.ph, -1717
  %or.cond.i.i = icmp ult i32 %i.ci, 4
  br i1 %or.cond.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cj = tail call noundef zeroext i1 @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables25is_transparent_zero_width(i32 noundef range(i32 0, 1114112) %spec.select.i.ph)
  br i1 %i.cj, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ap

bb.ax:                                            ; preds = %bb.ap
  switch i16 %.sroa.0.1.i.i, label %.thread118.i.i [
    i16 14339, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 15363, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 2, label %bb.bb
    i16 15364, label %.thread121.i.i
    i16 15365, label %.thread121.i.i
    i16 15366, label %.thread121.i.i
  ]

bb.ay:                                            ; preds = %bb.ap
  switch i16 %.sroa.0.1.i.i, label %.thread105.i.i [
    i16 15363, label %bb.bc
    i16 15364, label %bb.bd
    i16 15365, label %bb.az
    i16 15366, label %bb.be
    i16 2, label %bb.bb
  ]

.thread105.i.i:                                   ; preds = %bb.ay, %bb.au, %bb.at, %bb.as, %bb.ar
  %i.ck = icmp samesign ugt i32 %spec.select.i.ph, 127461
  %i.cl = zext i1 %i.ck to i8                     ; 4 uses
  %i.cm = add nsw i32 %spec.select.i.ph, -127462
  %or.cond91.i.i = icmp ult i32 %i.cm, 26
  br i1 %or.cond91.i.i, label %bb.bh, label %bb.bk

bb.az:                                            ; preds = %bb.ay
  %i.cn = and i32 %spec.select.i.ph, 2097148
  %or.cond6.i.i = icmp eq i32 %i.cn, 42232
  br i1 %or.cond6.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.az
  %i.co = icmp samesign ugt i32 %spec.select.i.ph, 127461
  %i.cp = zext i1 %i.co to i8                     ; 2 uses
  %i.cq = add nsw i32 %spec.select.i.ph, -127462
  %or.cond89.i.i = icmp ult i32 %i.cq, 26
  br i1 %or.cond89.i.i, label %bb.bh, label %.thread112.i.i

bb.bb:                                            ; preds = %bb.ay, %bb.ax
  %i.cr = tail call fastcc noundef zeroext i1 @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables22is_emoji_modifier_base(i32 noundef range(i32 0, 1114112) %spec.select.i.ph) #35
  br i1 %i.cr, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bj

bb.bc:                                            ; preds = %bb.ay
  %i.cs = icmp samesign ugt i32 %spec.select.i.ph, 11568
  br i1 %i.cs, label %bb.bf, label %.thread112.i.i

bb.bd:                                            ; preds = %bb.ay
  %i.ct = icmp samesign ugt i32 %spec.select.i.ph, 11568
  br i1 %i.ct, label %bb.bg, label %.thread112.i.i

bb.be:                                            ; preds = %bb.ay
  %i.cu = icmp eq i32 %spec.select.i.ph, 68658
  br i1 %i.cu, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ba

bb.bf:                                            ; preds = %bb.bc
  %i.cv = icmp samesign ult i32 %spec.select.i.ph, 11622
  %i.cw = icmp eq i32 %spec.select.i.ph, 11631
  %or.cond2.i.i = or i1 %i.cv, %i.cw
  br i1 %or.cond2.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ba

bb.bg:                                            ; preds = %bb.bd
  %i.cx = icmp samesign ult i32 %spec.select.i.ph, 11622
  %i.cy = icmp eq i32 %spec.select.i.ph, 11631
  %or.cond4.i.i = or i1 %i.cx, %i.cy
  br i1 %or.cond4.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ba

.thread112.i.i:                                   ; preds = %bb.bd, %bb.bc, %bb.ba
  %i.cz = phi i8 [ %i.cp, %bb.ba ], [ 0, %bb.bc ], [ 0, %bb.bd ] ; 2 uses
  %cond1.i.i = icmp eq i32 %spec.select.i.ph, 8205
  br i1 %cond1.i.i, label %bb.bi, label %.thread114.i.i

bb.bh:                                            ; preds = %bb.ba, %.thread105.i.i
  %.sroa.059.0.i.i = phi i8 [ %i.cl, %.thread105.i.i ], [ %i.cp, %bb.ba ] ; 2 uses
  switch i16 %.sroa.0.1.i.i, label %.thread114.i.i [
    i16 3, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 4, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 4102, label %bb.bm
  ]

.thread118.i.i:                                   ; preds = %bb.bk, %bb.ax
  %.sroa.059.1.i.i = phi i8 [ %i.cl, %bb.bk ], [ 0, %bb.ax ] ; 2 uses
  %cond125.i.i = icmp eq i16 %.sroa.0.1.i.i, 4102
  br i1 %cond125.i.i, label %bb.bm, label %.thread114.i.i

bb.bi:                                            ; preds = %bb.bk, %.thread112.i.i
  %.sroa.059.2.i.i = phi i8 [ %i.cl, %bb.bk ], [ %i.cz, %.thread112.i.i ] ; 2 uses
  switch i16 %.sroa.0.1.i.i, label %.thread114.i.i [
    i16 5, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 4, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 10, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 11, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 2, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 4102, label %bb.bm
  ]

bb.bj:                                            ; preds = %bb.bb
  %i.da = icmp samesign ugt i32 %spec.select.i.ph, 127461
  %i.db = zext i1 %i.da to i8
  %cond.i.i = icmp eq i32 %spec.select.i.ph, 8205
  br i1 %cond.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread114.i.i

bb.bk:                                            ; preds = %.thread105.i.i
  switch i32 %spec.select.i.ph, label %.thread118.i.i [
    i32 8205, label %bb.bi
    i32 8419, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %cond126.i.i = icmp eq i16 %.sroa.0.1.i.i, 4102
  br i1 %cond126.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread114.i.i

.thread114.i.i:                                   ; preds = %bb.bl, %bb.bj, %bb.bi, %.thread118.i.i, %bb.bh, %.thread112.i.i
  %.sroa.059.3.i.i = phi i8 [ %.sroa.059.0.i.i, %bb.bh ], [ %i.db, %bb.bj ], [ %i.cl, %bb.bl ], [ %.sroa.059.1.i.i, %.thread118.i.i ], [ %.sroa.059.2.i.i, %bb.bi ], [ %i.cz, %.thread112.i.i ]
  %i.dc = trunc nuw i8 %.sroa.059.3.i.i to i1
  %i.dd = icmp samesign ult i32 %spec.select.i.ph, 127488
  %or.cond10.i.i = and i1 %i.dd, %i.dc
  br i1 %or.cond10.i.i, label %bb.bn, label %.thread114.thread.i.i

bb.bm:                                            ; preds = %bb.bi, %.thread118.i.i, %bb.bh
  %.sroa.059.6.i.i = phi i8 [ %.sroa.059.0.i.i, %bb.bh ], [ %.sroa.059.1.i.i, %.thread118.i.i ], [ %.sroa.059.2.i.i, %bb.bi ]
  %i.de = trunc nuw i8 %.sroa.059.6.i.i to i1
  %i.df = icmp samesign ult i32 %spec.select.i.ph, 127488
  %or.cond29.i.i = and i1 %i.df, %i.de
  br i1 %or.cond29.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread119.i.i

.thread114.thread.i.i:                            ; preds = %.thread114.i.i
  switch i16 %.sroa.0.1.i.i, label %bb.bo [
    i16 4102, label %.thread119.i.i
    i16 16, label %bb.bp
    i16 25, label %bb.bq
    i16 26, label %bb.br
    i16 27, label %bb.bs
    i16 28, label %bb.bt
    i16 29, label %bb.bu
  ]

bb.bn:                                            ; preds = %.thread114.i.i
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 9, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 11, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 10, label %bb.cl
    i16 4102, label %bb.ch
    i16 32, label %bb.ci
    i16 33, label %bb.cm
  ]

bb.bo:                                            ; preds = %bb.bv, %.thread114.thread.i.i
  %i.dg = add nsw i32 %spec.select.i.ph, -917552
  %or.cond98.i.i = icmp ult i32 %i.dg, 10
  br i1 %or.cond98.i.i, label %bb.cf, label %bb.bx

.thread119.i.i:                                   ; preds = %.thread114.thread.i.i, %bb.bm
  %i.dh = add nsw i32 %spec.select.i.ph, -127995
  %or.cond12.i.i = icmp ult i32 %i.dh, 5
  br i1 %or.cond12.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bv

bb.bp:                                            ; preds = %.thread114.thread.i.i
  %i.di = add nsw i32 %spec.select.i.ph, -917601
  %or.cond14.i.i = icmp ult i32 %i.di, 26
  br i1 %or.cond14.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bw

bb.bq:                                            ; preds = %.thread114.thread.i.i
  %i.dj = add nsw i32 %spec.select.i.ph, -917601
  %or.cond16.i.i = icmp ult i32 %i.dj, 26
  br i1 %or.cond16.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.by

bb.br:                                            ; preds = %.thread114.thread.i.i
  %i.dk = add nsw i32 %spec.select.i.ph, -917601
  %or.cond18.i.i = icmp ult i32 %i.dk, 26
  br i1 %or.cond18.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bz

bb.bs:                                            ; preds = %.thread114.thread.i.i
  %i.dl = add nsw i32 %spec.select.i.ph, -917601
  %or.cond20.i.i = icmp ult i32 %i.dl, 26
  br i1 %or.cond20.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ca

bb.bt:                                            ; preds = %.thread114.thread.i.i
  %i.dm = add nsw i32 %spec.select.i.ph, -917601
  %or.cond22.i.i = icmp ult i32 %i.dm, 26
  br i1 %or.cond22.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.cc

bb.bu:                                            ; preds = %.thread114.thread.i.i
  %i.dn = add nsw i32 %spec.select.i.ph, -917601
  %or.cond24.i.i = icmp ult i32 %i.dn, 26
  br i1 %or.cond24.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ce

bb.bv:                                            ; preds = %.thread119.i.i
  %i.do = icmp eq i32 %spec.select.i.ph, 917631
  br i1 %i.do, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bo

bb.bw:                                            ; preds = %bb.bp
  %i.dp = add nsw i32 %spec.select.i.ph, -917552
  %or.cond92.i.i = icmp ult i32 %i.dp, 10
  br i1 %or.cond92.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %bb.by, %bb.bw, %bb.bo
  %i.dq = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.dq, label %bb.cg, label %.thread137.i.i

bb.by:                                            ; preds = %bb.bq
  %i.dr = add nsw i32 %spec.select.i.ph, -917552
  %or.cond93.i.i = icmp ult i32 %i.dr, 10
  br i1 %or.cond93.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bx

bb.bz:                                            ; preds = %bb.br
  %i.ds = add nsw i32 %spec.select.i.ph, -917552
  %or.cond94.i.i = icmp ult i32 %i.ds, 10
  br i1 %or.cond94.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bx

bb.ca:                                            ; preds = %bb.bs
  %i.dt = add nsw i32 %spec.select.i.ph, -917552
  %or.cond95.i.i = icmp ult i32 %i.dt, 10
  br i1 %or.cond95.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.du = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.du, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

.thread137.i.i:                                   ; preds = %bb.bx
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 4102, label %bb.ch
    i16 32, label %bb.ci
    i16 33, label %bb.cm
  ]

bb.cc:                                            ; preds = %bb.bt
  %i.dv = add nsw i32 %spec.select.i.ph, -917552
  %or.cond96.i.i = icmp ult i32 %i.dv, 10
  br i1 %or.cond96.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.dw = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.dw, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

bb.ce:                                            ; preds = %bb.bu
  %i.dx = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.dx, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

bb.cf:                                            ; preds = %bb.bo
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 16, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 25, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 26, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 27, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 28, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 17, label %bb.cj
    i16 18, label %bb.ck
    i16 4102, label %bb.ch
    i16 32, label %bb.ci
  ]

bb.cg:                                            ; preds = %bb.bx
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 27, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 28, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 29, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 30, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 19, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 4102, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %.thread137.i.i, %bb.bn
  %i.dy = tail call fastcc { i8, i16 } @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables12lookup_width(i32 noundef range(i32 0, 1114112) %spec.select.i.ph) #35
  %i.dz = extractvalue { i8, i16 } %i.dy, 1
  %i.ea = icmp eq i16 %i.dz, 5
  br i1 %i.ea, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

bb.ci:                                            ; preds = %bb.cf, %.thread137.i.i, %bb.bn
  %switch.tableidx2 = add nsw i32 %spec.select.i.ph, -93539 ; 4 uses
  %i.eb = icmp ult i32 %switch.tableidx2, 7
  %switch.maskindex6 = trunc i32 %switch.tableidx2 to i8
  %switch.shifted7 = lshr i8 113, %switch.maskindex6
  %switch.lobit8 = trunc i8 %switch.shifted7 to i1
  %or.cond10 = select i1 %i.eb, i1 %switch.lobit8, i1 false
  br i1 %or.cond10, label %switch.lookup5, label %.thread121.i.i

bb.cj:                                            ; preds = %bb.cf
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.ck:                                            ; preds = %bb.cf
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.cl:                                            ; preds = %bb.bn
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.cm:                                            ; preds = %.thread137.i.i, %bb.bn
  %i.ec = icmp eq i32 %spec.select.i.ph, 93539
  br i1 %i.ec, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

bb.cn:                                            ; preds = %bb.cp, %bb.r
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.co:                                            ; preds = %bb.r
  %i.ed = icmp ne i16 %.sroa.0.0.i.i, 1
  %spec.select.i.i = zext i1 %i.ed to i8
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.cp:                                            ; preds = %bb.p
  %cond30.i.i = icmp eq i32 %spec.select.i.ph, 10
  br i1 %cond30.i.i, label %bb.cn, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

switch.lookup5:                                   ; preds = %bb.ci
  %i.ee = zext nneg i32 %switch.tableidx2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCsfc8f8SDE2Co_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECs8frGy5WneL6_4fish, i64 %i.ee
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  %i.ef = shl nuw nsw i32 %switch.tableidx2, 3
  %switch.shiftamt = zext nneg i32 %i.ef to i56
  %switch.downshift = lshr i56 1099511627776, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.ai, %switch.lookup5, %bb.al, %bb.al, %bb.ao, %bb.n, %bb.r, %.thread121.i.i, %bb.t, %bb.u, %bb.v, %._crit_edge.i.i.i.i, %bb.an, %bb.aq, %bb.aq, %bb.aq, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ax, %bb.az, %bb.bb, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bh, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.bn, %bb.bn, %.thread119.i.i, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cf, %bb.cf, %bb.cf, %bb.cf, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.ch, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp
  %.sroa.51.1.i.i = phi i16 [ 5, %bb.n ], [ 0, %bb.cm ], [ 5, %bb.cd ], [ %i.cc, %bb.an ], [ 0, %bb.cp ], [ 30, %bb.bu ], [ 11, %bb.cl ], [ 10, %bb.bn ], [ 5, %bb.ch ], [ %i.ba, %.thread121.i.i ], [ 10, %bb.bn ], [ %switch.ext, %switch.lookup5 ], [ 1, %bb.cn ], [ 25, %bb.bp ], [ 18, %bb.cj ], [ 19, %bb.ck ], [ 28, %bb.bs ], [ 9, %bb.bm ], [ 2, %.thread119.i.i ], [ 16, %bb.bv ], [ 17, %bb.by ], [ 26, %bb.bq ], [ 27, %bb.br ], [ 5, %bb.cb ], [ 29, %bb.bt ], [ 4103, %bb.bl ], [ 4, %bb.bh ], [ %.sroa.052.0.i.i, %bb.v ], [ 0, %._crit_edge.i.i.i.i ], [ 5, %bb.bb ], [ 4102, %bb.bj ], [ 0, %bb.au ], [ 0, %bb.be ], [ 0, %bb.bf ], [ 0, %bb.bg ], [ 15364, %bb.ax ], [ 0, %bb.az ], [ %.sroa.0.1.i.i, %bb.al ], [ 0, %bb.aq ], [ 12543, %bb.aw ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 15362, %bb.at ], [ %.sroa.051.0.i.i, %bb.u ], [ %.sroa.050.0.i.i, %bb.t ], [ %.sroa.0.1.i.i, %bb.al ], [ %.sroa.0.1.i.i, %bb.ao ], [ 0, %bb.r ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 15364, %bb.ax ], [ 0, %bb.co ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4, %bb.bh ], [ 17, %bb.bw ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cc ], [ 17, %bb.ca ], [ 17, %bb.bz ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.ce ], [ 0, %bb.ai ]
  %.sroa.046.1.i.i = phi i8 [ %..i.i, %bb.n ], [ 0, %bb.cm ], [ 0, %bb.cd ], [ 0, %bb.an ], [ 1, %bb.cp ], [ 0, %bb.bu ], [ 3, %bb.cl ], [ -1, %bb.bn ], [ 0, %bb.ch ], [ %i.az, %.thread121.i.i ], [ -1, %bb.bn ], [ %switch.masked, %switch.lookup5 ], [ 1, %bb.cn ], [ 0, %bb.bp ], [ 0, %bb.cj ], [ 0, %bb.ck ], [ 0, %bb.bs ], [ 1, %bb.bm ], [ 0, %.thread119.i.i ], [ 0, %bb.bv ], [ 0, %bb.by ], [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %bb.cb ], [ 0, %bb.bt ], [ 0, %bb.bl ], [ 1, %bb.bh ], [ 0, %bb.v ], [ 1, %._crit_edge.i.i.i.i ], [ 0, %bb.bb ], [ 0, %bb.bj ], [ 0, %bb.au ], [ 0, %bb.be ], [ 0, %bb.bf ], [ -1, %bb.bg ], [ 1, %bb.ax ], [ 0, %bb.az ], [ 0, %bb.al ], [ 0, %bb.aq ], [ 0, %bb.aw ], [ 0, %bb.ar ], [ -1, %bb.as ], [ 0, %bb.at ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.al ], [ 0, %bb.ao ], [ 1, %bb.r ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 1, %bb.ax ], [ %spec.select.i.i, %bb.co ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 1, %bb.bh ], [ 0, %bb.bw ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cc ], [ 0, %bb.ca ], [ 0, %bb.bz ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.ce ], [ 2, %bb.ai ]
  %i.eg = sext i8 %.sroa.046.1.i.i to i64
  %i.eh = add i64 %.sroa.0.022, %i.eg             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.3.ph) ]
  %.not.i = icmp eq ptr %0, %.sroa.2.3.ph
  br i1 %.not.i, label %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit, label %.lr.ph

_RNvXs0_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit: ; preds = %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.eh, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit ]
  ret i64 %.sroa.0.0.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB4_12EnvUniversal4sync0B6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr nofree readonly captures(address, read_provenance) %.0.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = alloca [96 x i8], align 8                ; 12 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_file(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1)
  call fastcc void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal14load_from_file(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %.0.val, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(56) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.f = load i64, ptr %i.e, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !16, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.p, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 200 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !16, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit18, %bb.c
  %i.m = phi i8 [ %.pre1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit18 ], [ 0, %bb.c ]
  store i64 -1, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.m, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  call fastcc void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal19serialize_with_vars(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !5
  %i.s = invoke noundef ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #29
          to label %common.resume unwind label %bb.n

bb.g:                                             ; preds = %bb.e
  %.not13 = icmp eq ptr %i.s, null
  br i1 %.not13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.u, align 8
  store i64 -2, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.ad, %bb.ae, %bb.f, %.body, %bb.l, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.v, %bb.i ], [ %i.x, %bb.l ], [ %.pn, %.body ], [ %i.ap, %bb.ae ], [ %i.ao, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ac

bb.k:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit18 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit18: ; preds = %bb.k
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre1 = load i8, ptr %i.j, align 8, !range !16
  br label %bb.d

bb.n:                                             ; preds = %bb.s, %.body, %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit24, %bb.b
  %i.aa = phi i8 [ %.pre, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit24 ], [ 0, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.aa, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ac

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  invoke fastcc void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal19serialize_with_vars(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab)
          to label %bb.r unwind label %bb.q

.body:                                            ; preds = %bb.z, %bb.v, %bb.q, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.s ], [ %i.ak, %bb.v ], [ %i.ac, %bb.q ], [ %i.am, %bb.z ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish2fs15PotentialUpdateNtNtBG_20env_universal_common19UniversalReadUpdateEEBG_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #29
          to label %common.resume unwind label %bb.n

bb.q:                                             ; preds = %bb.aa, %bb.w, %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
end_hunk_4
begin_hunk_5_@_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal14load_from_file:bb.a
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa)
          to label %bb.fd unwind label %bb.fb

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2257
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i41.i unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.td = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body.i34.i unwind label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.te = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i41.i: ; preds = %bb.fd
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i42.i unwind label %bb.er

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i42.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2257
  %i.tf = load i64, ptr %i.kn, align 8, !alias.scope !2262, !noalias !2257, !noundef !5 ; 3 uses
  %i.tg = load i64, ptr %i.ap, align 8, !range !12, !alias.scope !2262, !noalias !2257, !noundef !5
  %i.th = icmp eq i64 %i.tf, %i.tg
  br i1 %i.th, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i42.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap) #32
          to label %bb.fh unwind label %bb.er

bb.fh:                                            ; preds = %bb.fg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i42.i
  %i.ti = load ptr, ptr %i.km, align 8, !alias.scope !2262, !noalias !2257, !nonnull !5, !noundef !5
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tf
  store i8 10, ptr %i.tj, align 1
  %i.tk = add i64 %i.tf, 1                        ; 2 uses
  store i64 %i.tk, ptr %i.kn, align 8, !alias.scope !2262, !noalias !2257
  %i.tl = load ptr, ptr %i.km, align 8, !noalias !2257, !nonnull !5, !noundef !5
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tl, i64 noundef %i.tk)
          to label %bb.fi unwind label %bb.er

bb.fi:                                            ; preds = %bb.fh
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.tm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.body18.i.i unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.tn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.fi
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.noexc51.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51.i:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2257
  br label %.backedge.i.i.backedge

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.split-lp92.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit50.i.i, %.body55.i.i, %bb.fb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i, %.body.i34.i
  %lpad.loopexit.split-lp439 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

.loopexit90.i.i:                                  ; preds = %.loopexit90.i.i.backedge, %.loopexit90.i.i.outer
  %.sroa.16.0.i.i = phi i64 [ %.sroa.16.0.i.i.ph589, %.loopexit90.i.i.outer ], [ %.sroa.16.0.i.i.be, %.loopexit90.i.i.backedge ]
  %.sroa.0.0.i44.i = phi ptr [ %.sroa.0.0.i44.i.ph590, %.loopexit90.i.i.outer ], [ %.sroa.0.0.i44.i.be, %.loopexit90.i.i.backedge ]
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fo, %.loopexit90.i.i
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.16.0.i.i, %.loopexit90.i.i ], [ %i.tr, %bb.fo ] ; 17 uses
  %.sroa.0.0.i38.i.i = phi ptr [ %.sroa.0.0.i44.i, %.loopexit90.i.i ], [ %i.ts, %bb.fo ] ; 14 uses
  %i.to = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.i38.i.i, i64 noundef %.sroa.7.0.i.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @120, i64 noundef 1)
          to label %.noexc52.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52.i:                                       ; preds = %bb.fl
  br i1 %i.to, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %.noexc52.i
  %i.tp = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRB3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.i38.i.i, i64 noundef %.sroa.7.0.i.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @121, i64 noundef 1)
          to label %.noexc53.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53.i:                                       ; preds = %bb.fm
  br i1 %i.tp, label %bb.fn, label %_RNvNtCs8frGy5WneL6_4fish20env_universal_common11skip_spaces.exit.i.i

bb.fn:                                            ; preds = %.noexc53.i, %.noexc52.i
  %i.tq = icmp eq i64 %.sroa.7.0.i.i.i, 0
  br i1 %i.tq, label %.invoke.i, label %bb.fo, !prof !7

bb.fo:                                            ; preds = %bb.fn
  %i.tr = add i64 %.sroa.7.0.i.i.i, -1
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38.i.i, i64 4
  br label %bb.fl

_RNvNtCs8frGy5WneL6_4fish20env_universal_common11skip_spaces.exit.i.i: ; preds = %.noexc53.i
  %i.tt = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.i38.i.i, i64 noundef %.sroa.7.0.i.i.i, i64 noundef 0)
          to label %.noexc55.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55.i:                                       ; preds = %_RNvNtCs8frGy5WneL6_4fish20env_universal_common11skip_spaces.exit.i.i
  %i.tu = icmp eq i32 %i.tt, 45
  br i1 %i.tu, label %bb.fp, label %bb.ft

bb.fp:                                            ; preds = %.noexc55.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2263
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i38.i.i, i64 %.sroa.7.0.i.i.i ; 2 uses
  store ptr %.sroa.0.0.i38.i.i, ptr %i.u, align 8, !noalias !2263
  store ptr %i.tv, ptr %i.ky, align 8, !noalias !2263
  store i64 8, ptr %i.kz, align 8, !noalias !2263
  %i.tw = invoke noundef zeroext i1 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator5eq_byINtNtB8_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvYB3_B2d_2eqB2R_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull @81, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @81, i64 8), ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc56.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56.i:                                       ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2263
  br i1 %i.tw, label %bb.fq, label %bb.fu

bb.fq:                                            ; preds = %.noexc56.i
  %.not.i40.i.i = icmp eq i64 %.sroa.7.0.i.i.i, 8
  br i1 %.not.i40.i.i, label %.thread78.i.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.tx = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.i38.i.i, i64 noundef %.sroa.7.0.i.i.i, i64 noundef 8)
          to label %.noexc57.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57.i:                                       ; preds = %bb.fr
  switch i32 %i.tx, label %bb.fu [
    i32 32, label %bb.fs
    i32 9, label %bb.fs
  ]

bb.fs:                                            ; preds = %.noexc57.i, %.noexc57.i
  %i.ty = icmp ult i64 %.sroa.7.0.i.i.i, 8
  br i1 %i.ty, label %.invoke.i, label %.thread78.i.i, !prof !2242

bb.ft:                                            ; preds = %.noexc55.i
  %i.tz = invoke fastcc noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal19populate_1_variable(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.i38.i.i, i64 noundef %.sroa.7.0.i.i.i, i8 noundef %.sroa.01.0.i.i.ph, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cm, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %.noexc59.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59.i:                                       ; preds = %bb.ft
  br i1 %i.tz, label %.backedge.i.i.backedge, label %bb.fz

bb.fu:                                            ; preds = %.noexc57.i, %.noexc56.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2264
  store ptr %.sroa.0.0.i38.i.i, ptr %i.t, align 8, !noalias !2264
  store ptr %i.tv, ptr %i.la, align 8, !noalias !2264
  store i64 6, ptr %i.lb, align 8, !noalias !2264
  %i.ua = invoke noundef zeroext i1 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator5eq_byINtNtB8_4take4TakeNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvYB3_B2d_2eqB2R_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull @82, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @82, i64 6), ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
          to label %.noexc60.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60.i:                                       ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2264
  br i1 %i.ua, label %bb.fv, label %_RNvNtCs8frGy5WneL6_4fish20env_universal_common5match.exit44.i.i

bb.fv:                                            ; preds = %.noexc60.i
  %.not.i43.i.i = icmp eq i64 %.sroa.7.0.i.i.i, 6
  br i1 %.not.i43.i.i, label %.thread84.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ub = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.i38.i.i, i64 noundef %.sroa.7.0.i.i.i, i64 noundef 6)
          to label %.noexc61.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61.i:                                       ; preds = %bb.fw
  switch i32 %i.ub, label %_RNvNtCs8frGy5WneL6_4fish20env_universal_common5match.exit44.i.i [
    i32 32, label %bb.fx
    i32 9, label %bb.fx
  ]

bb.fx:                                            ; preds = %.noexc61.i, %.noexc61.i
  %i.uc = icmp ult i64 %.sroa.7.0.i.i.i, 6
  br i1 %i.uc, label %.invoke.i, label %.thread84.i.i, !prof !2244

.invoke.i:                                        ; preds = %bb.eo, %bb.cs, %bb.co, %bb.fx, %bb.fs, %bb.fn
  %i.ud = phi ptr [ @125, %bb.fx ], [ @122, %bb.fn ], [ @125, %bb.fs ], [ @125, %bb.co ], [ @125, %bb.cs ], [ @125, %bb.eo ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ud) #31
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvNtCs8frGy5WneL6_4fish20env_universal_common5match.exit44.i.i: ; preds = %.noexc61.i, %.noexc60.i
  %i.ue = icmp eq i64 %.sroa.7.0.i.i.i, 0
  br i1 %i.ue, label %.loopexit90.i.i.backedge, label %.lr.ph.i.i

.loopexit90.i.i.backedge:                         ; preds = %.noexc63.i, %.noexc63.i, %bb.fy, %_RNvNtCs8frGy5WneL6_4fish20env_universal_common5match.exit44.i.i
  %.sroa.16.0.i.i.be = phi i64 [ 0, %_RNvNtCs8frGy5WneL6_4fish20env_universal_common5match.exit44.i.i ], [ %.sroa.16.1102.i.i, %.noexc63.i ], [ 0, %bb.fy ], [ %.sroa.16.1102.i.i, %.noexc63.i ]
  %.sroa.0.0.i44.i.be = phi ptr [ %.sroa.0.0.i38.i.i, %_RNvNtCs8frGy5WneL6_4fish20env_universal_common5match.exit44.i.i ], [ %.sroa.0.1103.i.i, %.noexc63.i ], [ %i.un, %bb.fy ], [ %.sroa.0.1103.i.i, %.noexc63.i ]
  br label %.loopexit90.i.i

.thread78.i.i:                                    ; preds = %bb.fq, %bb.fs
  %.sroa.7.0.i.i.i.lcssa619628 = phi i64 [ %.sroa.7.0.i.i.i, %bb.fs ], [ 8, %bb.fq ]
  %i.uf = add i64 %.sroa.7.0.i.i.i.lcssa619628, -8
  %i.ug = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38.i.i, i64 32
  %i.uh = or i8 %.sroa.01.0.i.i.ph, 1
  br label %.loopexit90.i.i.outer.backedge

.loopexit90.i.i.outer.backedge:                   ; preds = %.thread78.i.i, %.thread84.i.i
  %.sroa.16.0.i.i.ph589.be = phi i64 [ %i.ui, %.thread84.i.i ], [ %i.uf, %.thread78.i.i ]
  %.sroa.0.0.i44.i.ph590.be = phi ptr [ %i.uj, %.thread84.i.i ], [ %i.ug, %.thread78.i.i ]
  %.sroa.01.0.i.i.ph.be = phi i8 [ %i.uk, %.thread84.i.i ], [ %i.uh, %.thread78.i.i ]
  br label %.loopexit90.i.i.outer

.loopexit90.i.i.outer:                            ; preds = %.loopexit90.i.i.outer.backedge, %_RNvNtCs8frGy5WneL6_4fish20env_universal_common5match.exit.i.i
  %.sroa.16.0.i.i.ph589 = phi i64 [ %i.ry, %_RNvNtCs8frGy5WneL6_4fish20env_universal_common5match.exit.i.i ], [ %.sroa.16.0.i.i.ph589.be, %.loopexit90.i.i.outer.backedge ]
  %.sroa.0.0.i44.i.ph590 = phi ptr [ %i.rz, %_RNvNtCs8frGy5WneL6_4fish20env_universal_common5match.exit.i.i ], [ %.sroa.0.0.i44.i.ph590.be, %.loopexit90.i.i.outer.backedge ]
  %.sroa.01.0.i.i.ph = phi i8 [ 0, %_RNvNtCs8frGy5WneL6_4fish20env_universal_common5match.exit.i.i ], [ %.sroa.01.0.i.i.ph.be, %.loopexit90.i.i.outer.backedge ] ; 3 uses
  br label %.loopexit90.i.i

.thread84.i.i:                                    ; preds = %bb.fv, %bb.fx
  %.sroa.7.0.i.i.i.lcssa619627 = phi i64 [ %.sroa.7.0.i.i.i, %bb.fx ], [ 6, %bb.fv ]
  %i.ui = add i64 %.sroa.7.0.i.i.i.lcssa619627, -6
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38.i.i, i64 24
  %i.uk = or i8 %.sroa.01.0.i.i.ph, 4
  br label %.loopexit90.i.i.outer.backedge

.lr.ph.i.i:                                       ; preds = %_RNvNtCs8frGy5WneL6_4fish20env_universal_common5match.exit44.i.i, %bb.fy
  %.sroa.0.1103.i.i = phi ptr [ %i.un, %bb.fy ], [ %.sroa.0.0.i38.i.i, %_RNvNtCs8frGy5WneL6_4fish20env_universal_common5match.exit44.i.i ] ; 4 uses
  %.sroa.16.1102.i.i = phi i64 [ %i.um, %bb.fy ], [ %.sroa.7.0.i.i.i, %_RNvNtCs8frGy5WneL6_4fish20env_universal_common5match.exit44.i.i ] ; 4 uses
  %i.ul = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.1103.i.i, i64 noundef %.sroa.16.1102.i.i, i64 noundef 0)
          to label %.noexc63.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc63.i:                                       ; preds = %.lr.ph.i.i
  switch i32 %i.ul, label %bb.fy [
    i32 32, label %.loopexit90.i.i.backedge
    i32 9, label %.loopexit90.i.i.backedge
  ]

bb.fy:                                            ; preds = %.noexc63.i
  %i.um = add i64 %.sroa.16.1102.i.i, -1          ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.0.1103.i.i, i64 4 ; 2 uses
  %i.uo = icmp eq i64 %i.um, 0
  br i1 %i.uo, label %.loopexit90.i.i.backedge, label %.lr.ph.i.i

bb.fz:                                            ; preds = %.noexc59.i
  %i.up = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7warning, i64 40) monotonic, align 8, !noalias !2257
  %.not21.i.i = icmp eq i8 %i.up, 0
  br i1 %.not21.i.i, label %.backedge.i.i.backedge, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2257
  store i64 0, ptr %i.ai, align 8, !noalias !2257
  store ptr inttoptr (i64 1 to ptr), ptr %i.lc, align 8, !noalias !2257
  store i64 0, ptr %i.ld, align 8, !noalias !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2257
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7warning, i64 24))
          to label %bb.gc unwind label %bb.gb

.body55.i.i:                                      ; preds = %bb.go, %bb.gl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit50.i.i, %bb.gb
  %.pn24.i.i = phi { ptr, i32 } [ %.pn22.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit50.i.i ], [ %i.vm, %bb.gl ], [ %i.uq, %bb.gb ], [ %i.vs, %bb.go ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #29
          to label %.body18.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gb:                                            ; preds = %bb.gr, %bb.gq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i54.i.i, %bb.gg, %bb.ge, %bb.gc, %bb.ga
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %.body55.i.i

bb.gc:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2257
  %i.ur = load ptr, ptr %i.le, align 8, !noalias !2257, !nonnull !5, !noundef !5 ; 3 uses
  %i.us = load i64, ptr %i.ah, align 8, !range !12, !noalias !2257, !noundef !5
  %i.ut = load i64, ptr %i.lf, align 8, !noalias !2257, !noundef !5 ; 2 uses
  %i.uu = icmp sgt i64 %i.ut, -1
  call void @llvm.assume(i1 %i.uu)
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.ut
  store ptr %i.ur, ptr %i.z, align 8, !noalias !2257
  store i64 %i.us, ptr %i.lg, align 8, !noalias !2257
  store ptr %i.ur, ptr %i.lh, align 8, !noalias !2257
  store ptr %i.uv, ptr %i.li, align 8, !noalias !2257
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.z)
          to label %bb.gd unwind label %bb.gb

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2257
  %i.uw = load i64, ptr %i.ld, align 8, !alias.scope !2265, !noalias !2257, !noundef !5 ; 4 uses
  %i.ux = load i64, ptr %i.ai, align 8, !range !12, !alias.scope !2265, !noalias !2257, !noundef !5
  %i.uy = icmp eq i64 %i.uw, %i.ux
  br i1 %i.uy, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #32
          to label %bb.gf unwind label %bb.gb

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %i.uz = load ptr, ptr %i.lc, align 8, !alias.scope !2265, !noalias !2257, !nonnull !5, !noundef !5
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.uw
  store i8 58, ptr %i.va, align 1
  %i.vb = add i64 %i.uw, 1                        ; 3 uses
  store i64 %i.vb, ptr %i.ld, align 8, !alias.scope !2265, !noalias !2257
  %i.vc = load i64, ptr %i.ai, align 8, !range !12, !alias.scope !2266, !noalias !2257, !noundef !5
  %i.vd = icmp eq i64 %i.vb, %i.vc
  br i1 %i.vd, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #32
          to label %bb.gh unwind label %bb.gb

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.ve = load ptr, ptr %i.lc, align 8, !alias.scope !2266, !noalias !2257, !nonnull !5, !noundef !5
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.vb
  store i8 32, ptr %i.vf, align 1
  %i.vg = add i64 %i.uw, 2
  store i64 %i.vg, ptr %i.ld, align 8, !alias.scope !2266, !noalias !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2257
  store i64 0, ptr %i.ae, align 8, !noalias !2257
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !2257
  store i64 0, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !noalias !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2257
  store i64 1, ptr %i.ac, align 8, !noalias !2257
  store ptr %i.od, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !noalias !2257
  store i64 %i.oe, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !2257
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @75, i64 noundef 48, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @18, ptr noalias nofree noundef nonnull align 8 %i.ac, i64 noundef 1)
          to label %bb.gi unwind label %.loopexit.split-lp92.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp92.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gh, %bb.gj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit50.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.experimental.noalias.scope.decl(metadata !2267)
  %i.vh = load i8, ptr %i.ad, align 8, !range !16, !alias.scope !2267, !noalias !2257, !noundef !5
  %i.vi = trunc nuw i8 %i.vh to i1
  br i1 %i.vi, label %bb.gj, label %.noexc51.i.i.preheader, !prof !7

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2268
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.vk = load i8, ptr %i.vj, align 1, !range !17, !alias.scope !2267, !noalias !2257, !noundef !5
  store i8 %i.vk, ptr %i.x, align 1, !noalias !2268
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #31
          to label %.noexc.i45.i unwind label %.loopexit.split-lp92.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i45.i:                                     ; preds = %bb.gj
  unreachable

.noexc51.i.i.preheader:                           ; preds = %bb.gi
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit52.i.i unwind label %bb.gk

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit50.i.i: ; preds = %.loopexit.split-lp92.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gk
  %.pn22.i.i = phi { ptr, i32 } [ %i.vl, %bb.gk ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp92.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #29
          to label %.body55.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gk:                                            ; preds = %.noexc51.i.i.preheader
  %i.vl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit50.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit52.i.i: ; preds = %.noexc51.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !2257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2257
  invoke void @_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %bb.gm unwind label %bb.gl

bb.gl:                                            ; preds = %bb.gm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit52.i.i
  %i.vm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #29
          to label %.body55.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit52.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2257
  %i.vn = load ptr, ptr %i.lj, align 8, !noalias !2257, !nonnull !5, !noundef !5 ; 3 uses
  %i.vo = load i64, ptr %i.ag, align 8, !range !12, !noalias !2257, !noundef !5
  %i.vp = load i64, ptr %i.lk, align 8, !noalias !2257, !noundef !5 ; 2 uses
  %i.vq = icmp sgt i64 %i.vp, -1
  call void @llvm.assume(i1 %i.vq)
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vp
  store ptr %i.vn, ptr %i.y, align 8, !noalias !2257
  store i64 %i.vo, ptr %i.ll, align 8, !noalias !2257
  store ptr %i.vn, ptr %i.lm, align 8, !noalias !2257
  store ptr %i.vr, ptr %i.ln, align 8, !noalias !2257
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.y)
          to label %bb.gn unwind label %bb.gl

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2257
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i54.i.i unwind label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.vs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body55.i.i unwind label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.vt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i54.i.i: ; preds = %bb.gn
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit58.i.i unwind label %bb.gb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit58.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i54.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2257
  %i.vu = load i64, ptr %i.ld, align 8, !alias.scope !2269, !noalias !2257, !noundef !5 ; 3 uses
  %i.vv = load i64, ptr %i.ai, align 8, !range !12, !alias.scope !2269, !noalias !2257, !noundef !5
  %i.vw = icmp eq i64 %i.vu, %i.vv
end_hunk_5
begin_hunk_6_@_RNvNtCs8frGy5WneL6_4fish5wutil8wopendir:bb.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish5wutil9perror_io(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %i.i, align 8
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs3_NtCs1HV6ixfL8cZ_11fish_printf3argRNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_5ToArg6to_arg(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #29
          to label %.body unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 7, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @18, ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef 2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #29
          to label %.body unwind label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !3415)
  %i.m = load i8, ptr %i.e, align 8, !range !16, !alias.scope !3415, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %.preheader.preheader, !prof !7

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3416
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !17, !alias.scope !3415, !noundef !5
  store i8 %i.p, ptr %i.a, align 1, !noalias !3416
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #31
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.f
  unreachable

.preheader:                                       ; preds = %.preheader.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q)
          to label %.preheader.1 unwind label %.peel.begin

.preheader.1:                                     ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.r = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, i32 noundef 2)
          to label %bb.j unwind label %bb.i       ; 0 uses

.preheader.preheader:                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
          to label %.preheader unwind label %.peel.begin

.peel.begin:                                      ; preds = %.preheader, %.preheader.preheader
  %i.s = phi i1 [ false, %.preheader.preheader ], [ true, %.preheader ]
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.s, label %.body, label %bb.g

bb.g:                                             ; preds = %.peel.begin
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #29
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

.body:                                            ; preds = %.peel.begin, %bb.g, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.l, %bb.d ], [ %i.t, %bb.g ], [ %i.t, %.peel.begin ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #29
          to label %common.resume unwind label %bb.m

bb.i:                                             ; preds = %.preheader.1
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #29
          to label %common.resume unwind label %bb.m

bb.j:                                             ; preds = %.preheader.1
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.i, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.u, %bb.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.m:                                             ; preds = %bb.i, %.body, %bb.d, %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvNtCs8frGy5WneL6_4fish5wutil9wbasename(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %.loopexit31, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nuw nsw i64 %1, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not12.not.not.i.not = icmp eq ptr %i.e, %i.d
  br i1 %.not12.not.not.i.not, label %.loopexit31, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.f = phi ptr [ %0, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !3431, !noundef !5 ; 4 uses
  %i.h = xor i32 %i.g, 55296
  %i.i = add i32 %i.h, -1114112
  %i.j = icmp ult i32 %i.i, -1112064
  br i1 %i.j, label %.split.i.i, label %bb.d

.split.i.i:                                       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3432
  store i32 %i.g, ptr %i.b, align 4, !noalias !3432
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #31, !noalias !3431
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i32 %i.g, 1114112
  tail call void @llvm.assume(i1 %i.k)
  %.not.i = icmp eq i32 %i.g, 47
  br i1 %.not.i, label %bb.b, label %.preheader

.loopexit31:                                      ; preds = %bb.b, %bb.a, %.loopexit
  %.sroa.4.0 = phi i64 [ 1, %bb.a ], [ %.sroa.12.1, %.loopexit ], [ 1, %bb.b ]
  %.sroa.017.0 = phi ptr [ @146, %bb.a ], [ %.sroa.0.1, %.loopexit ], [ @143, %bb.b ]
  %i.l = insertvalue { ptr, i64 } poison, ptr %.sroa.017.0, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.m

.preheader:                                       ; preds = %bb.d, %bb.k
  %.sroa.0.038 = phi ptr [ %i.ah, %bb.k ], [ %0, %bb.d ] ; 3 uses
  %.sroa.12.037 = phi i64 [ %i.ai, %bb.k ], [ %1, %bb.d ] ; 4 uses
  %i.n = getelementptr [4 x i8], ptr %.sroa.0.038, i64 %.sroa.12.037
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !range !13, !noundef !5
  %i.q = icmp eq i32 %i.p, 47
  br i1 %i.q, label %bb.k, label %.critedge

.critedge:                                        ; preds = %bb.k, %.preheader
  %.sroa.12.0.lcssa = phi i64 [ 0, %bb.k ], [ %.sroa.12.037, %.preheader ] ; 5 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.ah, %bb.k ], [ %.sroa.0.038, %.preheader ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.lcssa) ]
  %.not.not.not.not.i.not59 = icmp eq i64 %.sroa.12.0.lcssa, 0
  br i1 %.not.not.not.not.i.not59, label %.loopexit, label %.lr.ph61

.lr.ph61:                                         ; preds = %.critedge
  %.idx62 = shl nuw nsw i64 %.sroa.12.0.lcssa, 2
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 %.idx62
  br label %bb.f

bb.e:                                             ; preds = %bb.g
  %i.s = add i64 %.sroa.01.0.i.i60, -1
  %.not.not.not.not.i.not = icmp eq ptr %.sroa.0.0.lcssa, %i.u
  br i1 %.not.not.not.not.i.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph61, %bb.e
  %.sroa.01.0.i.i60 = phi i64 [ %.sroa.12.0.lcssa, %.lr.ph61 ], [ %i.s, %bb.e ] ; 3 uses
  %i.t = phi ptr [ %i.r, %.lr.ph61 ], [ %i.u, %bb.e ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !noalias !3433, !noundef !5 ; 4 uses
  %i.w = xor i32 %i.v, 55296
  %i.x = add i32 %i.w, -1114112
  %i.y = icmp ult i32 %i.x, -1112064
  br i1 %i.y, label %.split.i.i.i, label %bb.g

.split.i.i.i:                                     ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3434
  store i32 %i.v, ptr %i.a, align 4, !noalias !3434
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #31, !noalias !3433
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ult i32 %i.v, 1114112
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i32 %i.v, 47
  br i1 %i.aa, label %bb.h, label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %.sroa.01.0.i.i60, 0
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.lcssa, i64 noundef %.sroa.12.0.lcssa, i64 noundef %.sroa.01.0.i.i60) ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #31
  unreachable

.loopexit:                                        ; preds = %bb.e, %.critedge, %bb.i
  %.sroa.12.1 = phi i64 [ %i.ae, %bb.i ], [ 0, %.critedge ], [ %.sroa.12.0.lcssa, %bb.e ]
  %.sroa.0.1 = phi ptr [ %i.ad, %bb.i ], [ %.sroa.0.0.lcssa, %.critedge ], [ %.sroa.0.0.lcssa, %bb.e ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1) ]
  br label %.loopexit31

bb.k:                                             ; preds = %.preheader
  %i.af = add i64 %.sroa.12.037, -1
  %i.ag = tail call { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt8slice_toCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.038, i64 noundef %.sroa.12.037, i64 noundef %i.af) ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1      ; 2 uses
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %.critedge, label %.preheader
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish5wutil9wreadlink(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [176 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3445
  call void @_RNvCskr4qsHYS30i_15fish_widestring12wcs2osstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2), !noalias !3446
  call void @_RINvNtCsaL1QbXo9JQH_3std2fs16symlink_metadataNtNtNtB4_3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3445
  %i.j = load i64, ptr %i.i, align 8, !range !34, !noundef !5
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val30 = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = ptrtoint ptr %.val30 to i64              ; 2 uses
  %i.n = and i64 %i.m, 3
  switch i64 %i.n, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.c
    i64 0, label %bb.f
    i64 1, label %bb.d
  ], !prof !19

default.unreachable:                              ; preds = %bb.q, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult ptr %.val30, inttoptr (i64 188978561024 to ptr)
  %i.p = and i64 %i.m, 1095216660480
  %i.q = icmp ne i64 %i.p, 1095216660480
  call void @llvm.assume(i1 %i.o)
  call void @llvm.assume(i1 %i.q)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %.val30, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !3447
  store i8 3, ptr %i.b, align 8, !alias.scope !3447
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvCskr4qsHYS30i_15fish_widestring12wcs2osstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
  call void @_RINvNtCsaL1QbXo9JQH_3std2fs9read_linkNtNtNtB4_3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.t = load i64, ptr %i.h, align 8, !range !8, !noundef !5
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 5 uses
  store ptr %i.w, ptr %i.d, align 8
  invoke void @_RNvNtCs8frGy5WneL6_4fish5wutil9perror_io(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.q unwind label %bb.p

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !3448)
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i = load ptr, ptr %i.x, align 8, !alias.scope !3448, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i = load i64, ptr %i.y, align 8, !alias.scope !3448, !noundef !5
  invoke void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
          to label %bb.k unwind label %bb.j, !noalias !3448

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #29
          to label %common.resume unwind label %bb.n, !noalias !3449

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit unwind label %bb.l, !noalias !3449

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.m, !noalias !3449

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !3449
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.j, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.aa, %bb.l ], [ %i.ad, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !3449
  unreachable

_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit: ; preds = %bb.k
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !noalias !3449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit, %_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.g

bb.p:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr nonnull %i.w) #29
          to label %common.resume unwind label %bb.t

bb.q:                                             ; preds = %bb.h
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.af = and i64 %i.ae, 3
  switch i64 %i.af, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit
    i64 3, label %bb.r
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit
    i64 1, label %bb.s
  ], !prof !19

bb.r:                                             ; preds = %bb.q
  %i.ag = icmp ult ptr %i.w, inttoptr (i64 188978561024 to ptr)
  %i.ah = and i64 %i.ae, 1095216660480
  %i.ai = icmp ne i64 %i.ah, 1095216660480
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.assume(i1 %i.ai)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

bb.s:                                             ; preds = %bb.q
  %i.aj = getelementptr i8, ptr %i.w, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !alias.scope !3450
  store i8 3, ptr %i.a, align 8, !alias.scope !3450
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit: ; preds = %bb.q, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.t:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish5wutil9wrealpath(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_6
