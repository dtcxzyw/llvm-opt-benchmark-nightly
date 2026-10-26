Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish.fish.38b934acfd6838ec-cgu.0?download=true
inline.NumInlined: 118
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs4RW8js5ES7g_4fish:bb.a
  %i.di = icmp eq i32 %i.dh, 42
  br i1 %i.di, label %bb.x, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit488.thread598

bb.x:                                             ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit486
  invoke void @_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 2)
          to label %bb.ac unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit488.thread598: ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit486, %bb.w
  invoke void @_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 1)
          to label %bb.y unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit488.thread598
  %.val2531.i489 = load i64, ptr %i.r, align 8, !alias.scope !114, !noundef !7
  %.not32.i490 = icmp eq i64 %.val2531.i489, 0
  br i1 %.not32.i490, label %.thread603, label %.lr.ph.i491

.lr.ph.i491:                                      ; preds = %bb.y, %.noexc499
  %.sroa.021.033.i492 = phi i64 [ %i.dq, %.noexc499 ], [ 0, %bb.y ] ; 2 uses
  %.val.i493 = load ptr, ptr %i.q, align 8, !alias.scope !114, !nonnull !7, !noundef !7
  %i.dj = load i32, ptr %.val.i493, align 4, !range !9, !noalias !115, !noundef !7
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.z, label %.loopexit641

bb.z:                                             ; preds = %.lr.ph.i491
  %i.dm = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.021.033.i492, i64 10) ; 2 uses
  %i.dn = extractvalue { i64, i1 } %i.dm, 1
  br i1 %i.dn, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs4RW8js5ES7g_4fish.exit500, label %bb.aa, !prof !10

bb.aa:                                            ; preds = %bb.z
  %i.do = extractvalue { i64, i1 } %i.dm, 0       ; 2 uses
  %i.dp = zext nneg i32 %i.dk to i64
  %i.dq = add i64 %i.do, %i.dp                    ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.do
  br i1 %i.dr, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs4RW8js5ES7g_4fish.exit500, label %bb.ab, !prof !10

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 1)
          to label %.noexc499 unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc499:                                        ; preds = %bb.ab
  %.val25.i497 = load i64, ptr %i.r, align 8, !alias.scope !114, !noundef !7
  %.not.i498 = icmp eq i64 %.val25.i497, 0
  br i1 %.not.i498, label %.loopexit641, label %.lr.ph.i491

_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs4RW8js5ES7g_4fish.exit500: ; preds = %bb.aa, %bb.z
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
  %.val17.i.i.pre = load i64, ptr %i.r, align 8, !alias.scope !116
  br label %bb.ah

bb.ac:                                            ; preds = %bb.x
  %i.dw = icmp eq ptr %.sroa.0.1910, %i.s
  br i1 %i.dw, label %bb.gd, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.1910, i64 32
  %i.dy = load i64, ptr %.sroa.0.1910, align 8, !range !11, !noundef !7
  switch i64 %i.dy, label %bb.gd [
    i64 4, label %bb.ae
    i64 5, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.1910, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !7 ; 2 uses
  %i.eb = icmp slt i64 %i.ea, 0
  br i1 %i.eb, label %bb.gd, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.1910, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !7
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
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %.val16.i.i = load ptr, ptr %i.q, align 8, !alias.scope !116 ; 4 uses
  %.not.i.i = icmp eq i64 %.val17.i.i, 0
  br i1 %.not.i.i, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.i, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit.i.i

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit.i.i: ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i.i) ]
  %i.eg = load i32, ptr %.val16.i.i, align 4, !range !9, !noalias !116, !noundef !7
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
  %i.ei = load i32, ptr %i.eh, align 4, !range !9, !noalias !116, !noundef !7
  %i.ej = icmp eq i32 %i.ei, 104
  br i1 %i.ej, label %bb.an, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i

bb.aj:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit.i.i
  %.not25.i.i = icmp eq i64 %.val17.i.i, 1
  br i1 %.not25.i.i, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i.i

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i.i: ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %.val16.i.i, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !range !9, !noalias !116, !noundef !7
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
  %.val18.pre.i = load i64, ptr %i.r, align 8, !alias.scope !117
  %i.en = icmp eq i64 %.val18.pre.i, 0
  br i1 %i.en, label %bb.at, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i

bb.an:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i.i, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.i.i
  %.sroa.012.0.i.ph.i = phi i64 [ 2, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.i.i ], [ 1, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i ], [ 2, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i.i ]
  %.sroa.0.3.i.ph.i = phi i8 [ 1, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.i.i ], [ %.sroa.0.0.i.i, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit19.thread.i.i ], [ 4, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i.i ] ; 3 uses
  invoke void @_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %.sroa.012.0.i.ph.i)
          to label %.noexc506 unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc506:                                        ; preds = %bb.an
  %.val16.i = load i64, ptr %i.r, align 8, !alias.scope !117, !noundef !7
  %.not.i501 = icmp eq i64 %.val16.i, 0
  br i1 %.not.i501, label %bb.at, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i: ; preds = %.noexc506
  %.val.i502 = load ptr, ptr %i.q, align 8, !alias.scope !117, !nonnull !7, !noundef !7
  %i.eo = load i32, ptr %.val.i502, align 4, !range !9, !noundef !7 ; 2 uses
  switch i32 %i.eo, label %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread [
    i32 83, label %bb.at
    i32 67, label %bb.at
  ]

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i: ; preds = %.noexc505
  %.val17.i.pre = load ptr, ptr %i.q, align 8, !alias.scope !117
  %.pre = load i32, ptr %.val17.i.pre, align 4, !range !9
  %i.ep = call fastcc noundef i8 @_RNvMs0_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_14ConversionSpec9from_char(i32 noundef %.pre) ; 2 uses
  %.not15.i = icmp eq i8 %i.ep, -1
  br i1 %.not15.i, label %bb.at, label %bb.ar

_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread: ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i
  %i.eq = call fastcc noundef i8 @_RNvMs0_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_14ConversionSpec9from_char(i32 noundef %i.eo) ; 5 uses
  switch i8 %i.eq, label %default.unreachable [
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

default.unreachable:                              ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %bb.ba
  unreachable

bb.ao:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread
  %switch.i = icmp slt i8 %.sroa.0.3.i.ph.i, 8
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
  %i.ez = icmp ult i8 %i.es, 15
  br i1 %i.ez, label %switch.lookup, label %bb.ba

bb.ay:                                            ; preds = %bb.av
  %i.fa = icmp ult i8 %i.es, 12
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
  %i.fd = load i64, ptr %.sroa.0.2610, align 8, !range !11, !noundef !7
  switch i64 %i.fd, label %bb.bn [
    i64 4, label %bb.bl
    i64 5, label %bb.bm
  ]

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fe = load i64, ptr %.sroa.0.2610, align 8, !range !11, !noundef !7
  switch i64 %i.fe, label %bb.by [
    i64 4, label %bb.bv
    i64 5, label %bb.bw
  ]

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ff = load i64, ptr %.sroa.0.2610, align 8, !range !11, !noundef !7
  switch i64 %i.ff, label %bb.cl [
    i64 4, label %bb.ci
    i64 5, label %bb.cj
  ]

bb.be:                                            ; preds = %bb.ba
  %i.fg = load i64, ptr %.sroa.0.2610, align 8, !range !11, !noundef !7
  %i.fh = icmp eq i64 %i.fg, 7
  br i1 %i.fh, label %bb.dh, label %bb.di

bb.bf:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %i.fi = load i64, ptr %.sroa.0.2610, align 8, !range !11, !noundef !7
  switch i64 %i.fi, label %bb.dj [
    i64 4, label %bb.dk
    i64 5, label %bb.dl
    i64 6, label %bb.dm
  ]

bb.bg:                                            ; preds = %bb.ba
  %..i = call i64 @llvm.umax.i64(i64 %.sroa.16.0608, i64 16)
  %.sroa.0142.4 = zext i1 %i.ef to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.fj = load i64, ptr %.sroa.0.2610, align 8, !range !11, !noundef !7
  switch i64 %i.fj, label %bb.dv [
    i64 4, label %bb.ds
    i64 5, label %bb.dt
  ]

bb.bh:                                            ; preds = %bb.ba
  %.sroa.0.2.val = load i64, ptr %.sroa.0.2610, align 8, !range !11, !noundef !7
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
  %i.fn = load i64, ptr %i.fm, align 8, !noundef !7 ; 2 uses
  %i.fo = icmp slt i64 %i.fn, 0
  br i1 %i.fo, label %bb.bn, label %.thread617

bb.bm:                                            ; preds = %bb.bb
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.2610, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !7 ; 3 uses
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
  %i.fv = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  %i.fw = load i64, ptr %.sroa.5289.0..sroa_idx, align 8, !noundef !7
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
  %i.gb = load i64, ptr %i.ga, align 8, !noundef !7
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bc
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.2610, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !noundef !7 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs4RW8js5ES7g_4fish:bb.a
_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i542: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i541
  %i.od = icmp ne ptr %i.nu, %i.nb
  call void @llvm.assume(i1 %i.od)
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i535, i64 4
  %i.of = load i8, ptr %i.nu, align 1, !alias.scope !138, !noalias !139, !noundef !7
  %i.og = shl nuw nsw i32 %i.nj, 18
  %i.oh = and i32 %i.og, 1835008
  %i.oi = shl nuw nsw i32 %i.nz, 6
  %i.oj = and i8 %i.of, 63
  %i.ok = zext nneg i8 %i.oj to i32
  %i.ol = or disjoint i32 %i.oi, %i.ok
  %i.om = or disjoint i32 %i.ol, %i.oh
  br label %bb.fq

bb.fq:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i542, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i541, %bb.fp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i536
  %.sroa.0.1.ph.i.i.i.i.i537 = phi ptr [ %i.nl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i536 ], [ %i.nu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i541 ], [ %i.oe, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i542 ], [ %i.nf, %bb.fp ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i538 = phi i32 [ %i.nq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i536 ], [ %i.ob, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i541 ], [ %i.om, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i542 ], [ %i.ns, %bb.fp ]
  %i.on = load i64, ptr %i.u, align 8, !alias.scope !140, !noundef !7 ; 3 uses
  %i.oo = load i64, ptr %1, align 8, !range !8, !alias.scope !140, !noundef !7
  %i.op = icmp eq i64 %i.on, %i.oo
  br i1 %i.op, label %bb.fr, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i539

bb.fr:                                            ; preds = %bb.fq
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i539 unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i539: ; preds = %bb.fr, %bb.fq
  %i.oq = load ptr, ptr %i.v, align 8, !alias.scope !140, !nonnull !7, !noundef !7
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.on
  store i32 %spec.select.i.ph.i.i.i.i.i538, ptr %i.or, align 4, !noalias !138
  %i.os = add i64 %i.on, 1
  store i64 %i.os, ptr %i.u, align 8, !alias.scope !140
  %.not.i.i.i.i.i.i540 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i537, %i.nb
  br i1 %.not.i.i.i.i.i.i540, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit545, label %.lr.ph.i.i.i.i.i534

bb.fs:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale14apply_grouping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0233.0, i64 noundef %.sroa.18.0)
          to label %bb.ft unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit545: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i539, %.noexc543, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit
  br i1 %i.lh, label %bb.ga, label %bb.fz

bb.ft:                                            ; preds = %bb.fs
  %i.ot = load ptr, ptr %i.ae, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ou = load i64, ptr %i.af, align 8, !noundef !7 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.ou ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.ow = lshr i64 %i.ou, 2
  %i.ox = and i64 %i.ou, 3
  %.not.i.i.i.i546 = icmp ne i64 %i.ox, 0
  %i.oy = zext i1 %.not.i.i.i.i546 to i64
  %.sroa.0.0.i.i.i.i547 = add nuw nsw i64 %i.ow, %i.oy
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.i.i.i.i547)
          to label %.noexc558 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc558:                                        ; preds = %bb.ft
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %.not.i9.i.i.i.i.i548 = icmp samesign eq i64 %i.ou, 0
  br i1 %.not.i9.i.i.i.i.i548, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit560, label %.lr.ph.i.i.i.i.i549

.lr.ph.i.i.i.i.i549:                              ; preds = %.noexc558, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i554
  %.sroa.0.010.i.i.i.i.i550 = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i552, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i554 ], [ %i.ot, %.noexc558 ] ; 5 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i550, i64 1 ; 3 uses
  %i.pa = load i8, ptr %.sroa.0.010.i.i.i.i.i550, align 1, !alias.scope !148, !noalias !149, !noundef !7 ; 5 uses
  %i.pb = icmp sgt i8 %i.pa, -1
  br i1 %i.pb, label %bb.fu, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i551

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i551: ; preds = %.lr.ph.i.i.i.i.i549
  %i.pc = and i8 %i.pa, 31
  %i.pd = zext nneg i8 %i.pc to i32               ; 3 uses
  %i.pe = icmp ne ptr %i.oz, %i.ov
  call void @llvm.assume(i1 %i.pe)
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i550, i64 2 ; 3 uses
  %i.pg = load i8, ptr %i.oz, align 1, !alias.scope !148, !noalias !149, !noundef !7
  %i.ph = shl nuw nsw i32 %i.pd, 6
  %i.pi = and i8 %i.pg, 63
  %i.pj = zext nneg i8 %i.pi to i32               ; 2 uses
  %i.pk = or disjoint i32 %i.ph, %i.pj
  %i.pl = icmp samesign ugt i8 %i.pa, -33
  br i1 %i.pl, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i556, label %bb.fv

bb.fu:                                            ; preds = %.lr.ph.i.i.i.i.i549
  %i.pm = zext nneg i8 %i.pa to i32
  br label %bb.fv

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i556: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i551
  %i.pn = icmp ne ptr %i.pf, %i.ov
  call void @llvm.assume(i1 %i.pn)
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i550, i64 3 ; 3 uses
  %i.pp = load i8, ptr %i.pf, align 1, !alias.scope !148, !noalias !149, !noundef !7
  %i.pq = shl nuw nsw i32 %i.pj, 6
  %i.pr = and i8 %i.pp, 63
  %i.ps = zext nneg i8 %i.pr to i32
  %i.pt = or disjoint i32 %i.pq, %i.ps            ; 2 uses
  %i.pu = shl nuw nsw i32 %i.pd, 12
  %i.pv = or disjoint i32 %i.pt, %i.pu
  %i.pw = icmp samesign ugt i8 %i.pa, -17
  br i1 %i.pw, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i557, label %bb.fv

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i557: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i556
  %i.px = icmp ne ptr %i.po, %i.ov
  call void @llvm.assume(i1 %i.px)
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i550, i64 4
  %i.pz = load i8, ptr %i.po, align 1, !alias.scope !148, !noalias !149, !noundef !7
  %i.qa = shl nuw nsw i32 %i.pd, 18
  %i.qb = and i32 %i.qa, 1835008
  %i.qc = shl nuw nsw i32 %i.pt, 6
  %i.qd = and i8 %i.pz, 63
  %i.qe = zext nneg i8 %i.qd to i32
  %i.qf = or disjoint i32 %i.qc, %i.qe
  %i.qg = or disjoint i32 %i.qf, %i.qb
  br label %bb.fv

bb.fv:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i557, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i556, %bb.fu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i551
  %.sroa.0.1.ph.i.i.i.i.i552 = phi ptr [ %i.pf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i551 ], [ %i.po, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i556 ], [ %i.py, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i557 ], [ %i.oz, %bb.fu ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i553 = phi i32 [ %i.pk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i551 ], [ %i.pv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i556 ], [ %i.qg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i557 ], [ %i.pm, %bb.fu ]
  %i.qh = load i64, ptr %i.u, align 8, !alias.scope !150, !noundef !7 ; 3 uses
  %i.qi = load i64, ptr %1, align 8, !range !8, !alias.scope !150, !noundef !7
  %i.qj = icmp eq i64 %i.qh, %i.qi
  br i1 %i.qj, label %bb.fw, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i554

bb.fw:                                            ; preds = %bb.fv
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i554 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i554: ; preds = %bb.fw, %bb.fv
  %i.qk = load ptr, ptr %i.v, align 8, !alias.scope !150, !nonnull !7, !noundef !7
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.qh
  store i32 %spec.select.i.ph.i.i.i.i.i553, ptr %i.ql, align 4, !noalias !148
  %i.qm = add i64 %i.qh, 1
  store i64 %i.qm, ptr %i.u, align 8, !alias.scope !150
  %.not.i.i.i.i.i.i555 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i552, %i.ov
  br i1 %.not.i.i.i.i.i.i555, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit560, label %.lr.ph.i.i.i.i.i549

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fw, %bb.ft
  %lpad.loopexit.split-lp1049 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #14
          to label %.body unwind label %bb.gc

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit560: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i554, %.noexc558
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i unwind label %bb.fx

bb.fx:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit560
  %i.qn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.qo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i: ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit560
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit545

bb.fz:                                            ; preds = %bb.ga, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit545
  %i.qp = add i64 %..i515, %.sroa.0279.0792       ; 2 uses
  %i.qq = icmp ult i64 %i.qp, %.sroa.0279.0792
  br i1 %i.qq, label %bb.gb, label %.backedge, !prof !10

.backedge:                                        ; preds = %bb.dh, %bb.dq, %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit, %bb.fz
  %.sroa.0279.0.be = phi i64 [ %i.qp, %bb.fz ], [ %.sroa.0279.0792, %bb.dh ], [ %i.ib, %bb.dq ], [ %i.rb, %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ] ; 2 uses
  %.sroa.0.0.be = phi ptr [ %i.ew, %bb.fz ], [ %i.ew, %bb.dh ], [ %i.ew, %bb.dq ], [ %.sroa.0.0793, %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ] ; 2 uses
  %.val = load i64, ptr %i.r, align 8, !noundef !7
  %i.qr = icmp eq i64 %.val, 0
  br i1 %i.qr, label %._crit_edge, label %bb.b

bb.ga:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit545
  %i.qs = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32, i64 noundef %..i515, i64 noundef %i.le)
          to label %bb.fz unwind label %.loopexit.split-lp631.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.gb:                                            ; preds = %bb.fz
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.qt, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gi

bb.gc:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
  unreachable

.invoke:                                          ; preds = %bb.fa, %bb.et, %._crit_edge970
  %i.qv = phi ptr [ @8, %._crit_edge970 ], [ @11, %bb.et ], [ @10, %bb.fa ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qv) #16
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

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i
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
  br i1 %i.rc, label %bb.gh, label %.backedge, !prof !10

bb.gh:                                            ; preds = %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.rd, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.as, %bb.gd, %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs4RW8js5ES7g_4fish.exit500, %bb.az, %bb.bn, %bb.bu, %bb.el, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread, %bb.eb, %bb.di, %bb.dg, %bb.cr, %bb.ch, %bb.dp, %bb.dr, %bb.dj, %bb.gb, %bb.fe, %bb.aw, %bb.at, %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs4RW8js5ES7g_4fish.exit, %bb.ge, %bb.gl
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit567 unwind label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.re = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.rf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
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
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit567 unwind label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ri = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.rj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit567: ; preds = %bb.gm, %bb.gi
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 288230376151711744) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  store ptr %2, ptr %i.q, align 8, !captures !5
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
  %i.ac = load i32, ptr %i.ab, align 4, !range !6
  %i.ad = icmp ne i32 %i.ac, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

.body:                                            ; preds = %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gj, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp908, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.qq, %bb.gj ], [ %lpad.loopexit.split-lp927, %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #14
          to label %common.resume unwind label %bb.go

.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %.noexc481, %bb.am, %bb.fd, %bb.fb, %bb.gd, %bb.fv, %.noexc471, %bb.v, %bb.q, %.preheader, %bb.fk, %bb.fp, %.noexc487.jt8, %.noexc489.jt8, %bb.ax, %.noexc487.jt1, %.noexc489.jt1, %bb.ay, %bb.b, %bb.d, %bb.k, %.loopexit606, %bb.aa, %bb.ad, %bb.ae, %bb.ag, %bb.ai, %bb.bw, %bb.cc, %bb.cm, %bb.cz, %bb.dk, %bb.dl, %bb.dz, %bb.ej, %bb.fl, %bb.fw, %bb.fx, %bb.fy, %bb.ge, %bb.gm, %bb.e, %bb.s, %bb.aj, %bb.as, %bb.at, %bb.au, %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl10get_prefixReECs4RW8js5ES7g_4fish.exit.i, %.thread830, %bb.ep, %bb.eq, %bb.fs, %bb.ga, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i, %bb.gr, %bb.gs, %.invoke, %.thread585
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
begin_hunk_2_@_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs4RW8js5ES7g_4fish:bb.a
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
  br i1 %i.dn, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intReECs4RW8js5ES7g_4fish.exit483, label %bb.al, !prof !10

bb.al:                                            ; preds = %bb.ak
  %i.do = extractvalue { i64, i1 } %i.dm, 0       ; 2 uses
  %i.dp = zext nneg i32 %i.dk to i64
  %i.dq = add i64 %i.do, %i.dp                    ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.do
  br i1 %i.dr, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intReECs4RW8js5ES7g_4fish.exit483, label %bb.am, !prof !10

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 1)
          to label %.noexc481 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc481:                                        ; preds = %bb.am
  %i.ds = invoke noundef i32 @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef 0)
          to label %.noexc482 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc482:                                        ; preds = %.noexc481
  %.not.i479 = icmp eq i32 %i.ds, -1
  br i1 %.not.i479, label %.loopexit602, label %.lr.ph.i474

_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intReECs4RW8js5ES7g_4fish.exit483: ; preds = %bb.al, %bb.ak
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
  %i.dz = load i64, ptr %.sroa.0.1, align 8, !range !11, !noundef !7
  switch i64 %i.dz, label %bb.gp [
    i64 4, label %bb.ap
    i64 5, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !7 ; 2 uses
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %bb.gp, label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !7
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
  switch i32 %i.eh, label %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl10get_prefixReECs4RW8js5ES7g_4fish.exit.i [
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

_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl10get_prefixReECs4RW8js5ES7g_4fish.exit.i: ; preds = %.noexc484
  invoke void @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 0)
          to label %.noexc487.jt1 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc487.jt8:                                    ; preds = %.noexc490.jt8
  %i.em = invoke noundef i32 @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i64 noundef 0)
          to label %.noexc488.jt8 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc487.jt1:                                    ; preds = %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl10get_prefixReECs4RW8js5ES7g_4fish.exit.i, %.noexc490.jt1
  %.not22.i.jt1 = phi i1 [ false, %.noexc490.jt1 ], [ true, %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl10get_prefixReECs4RW8js5ES7g_4fish.exit.i ]
  %.sroa.0.3.i20.i.jt1 = phi i8 [ %.sroa.0.3.i.ph.i.jt1, %.noexc490.jt1 ], [ 0, %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl10get_prefixReECs4RW8js5ES7g_4fish.exit.i ]
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
  switch i8 %i.er, label %default.unreachable [
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
  %switch855 = icmp ult i8 %i.es, 6
  br i1 %switch855, label %bb.bd, label %.thread822

default.unreachable:                              ; preds = %bb.az, %bb.bm
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
  %i.fb = icmp ult i8 %i.eu, 15
  br i1 %i.fb, label %switch.lookup, label %bb.bm

bb.bk:                                            ; preds = %bb.bh
  %i.fc = icmp ult i8 %i.eu, 12
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
  %i.fg = load i64, ptr %.sroa.0.2572, align 8, !range !11, !noundef !7
  switch i64 %i.fg, label %bb.bz [
    i64 4, label %bb.bx
    i64 5, label %bb.by
  ]

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fh = load i64, ptr %.sroa.0.2572, align 8, !range !11, !noundef !7
  switch i64 %i.fh, label %bb.ck [
    i64 4, label %bb.ch
    i64 5, label %bb.ci
  ]

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fi = load i64, ptr %.sroa.0.2572, align 8, !range !11, !noundef !7
  switch i64 %i.fi, label %bb.cx [
    i64 4, label %bb.cu
    i64 5, label %bb.cv
  ]

bb.bq:                                            ; preds = %bb.bm
  %i.fj = load i64, ptr %.sroa.0.2572, align 8, !range !11, !noundef !7
  %i.fk = icmp eq i64 %i.fj, 7
  br i1 %i.fk, label %bb.dt, label %bb.du

bb.br:                                            ; preds = %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm
  %i.fl = load i64, ptr %.sroa.0.2572, align 8, !range !11, !noundef !7
  switch i64 %i.fl, label %bb.dv [
    i64 4, label %bb.dw
    i64 5, label %bb.dx
    i64 6, label %bb.dy
  ]

bb.bs:                                            ; preds = %bb.bm
  %..i = call i64 @llvm.umax.i64(i64 %.sroa.16.0570, i64 16)
  %.sroa.0142.4 = zext i1 %i.eg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.fm = load i64, ptr %.sroa.0.2572, align 8, !range !11, !noundef !7
  switch i64 %i.fm, label %bb.eh [
    i64 4, label %bb.ee
    i64 5, label %bb.ef
  ]

bb.bt:                                            ; preds = %bb.bm
  %.sroa.0.2.val = load i64, ptr %.sroa.0.2572, align 8, !range !11, !noundef !7
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
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !7 ; 2 uses
  %i.fr = icmp slt i64 %i.fq, 0
  br i1 %i.fr, label %bb.bz, label %.thread579

bb.by:                                            ; preds = %bb.bn
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.2572, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !noundef !7 ; 3 uses
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
  %i.fy = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  %i.fz = load i64, ptr %.sroa.5289.0..sroa_idx, align 8, !noundef !7
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
  %i.ge = load i64, ptr %i.gd, align 8, !noundef !7
  br label %bb.cj

bb.ci:                                            ; preds = %bb.bo
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.2572, i64 8
end_hunk_2
begin_hunk_3_@_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs4RW8js5ES7g_4fish:bb.a
_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i526: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i525
  %i.og = icmp ne ptr %i.nx, %i.ne
  call void @llvm.assume(i1 %i.og)
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i519, i64 4
  %i.oi = load i8, ptr %i.nx, align 1, !alias.scope !256, !noalias !257, !noundef !7
  %i.oj = shl nuw nsw i32 %i.nm, 18
  %i.ok = and i32 %i.oj, 1835008
  %i.ol = shl nuw nsw i32 %i.oc, 6
  %i.om = and i8 %i.oi, 63
  %i.on = zext nneg i8 %i.om to i32
  %i.oo = or disjoint i32 %i.ol, %i.on
  %i.op = or disjoint i32 %i.oo, %i.ok
  br label %bb.gc

bb.gc:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i526, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i525, %bb.gb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i520
  %.sroa.0.1.ph.i.i.i.i.i521 = phi ptr [ %i.no, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i520 ], [ %i.nx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i525 ], [ %i.oh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i526 ], [ %i.ni, %bb.gb ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i522 = phi i32 [ %i.nt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i520 ], [ %i.oe, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i525 ], [ %i.op, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i526 ], [ %i.nv, %bb.gb ]
  %i.oq = load i64, ptr %i.u, align 8, !alias.scope !258, !noundef !7 ; 3 uses
  %i.or = load i64, ptr %1, align 8, !range !8, !alias.scope !258, !noundef !7
  %i.os = icmp eq i64 %i.oq, %i.or
  br i1 %i.os, label %bb.gd, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i523

bb.gd:                                            ; preds = %bb.gc
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i523 unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i523: ; preds = %bb.gd, %bb.gc
  %i.ot = load ptr, ptr %i.v, align 8, !alias.scope !258, !nonnull !7, !noundef !7
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.oq
  store i32 %spec.select.i.ph.i.i.i.i.i522, ptr %i.ou, align 4, !noalias !256
  %i.ov = add i64 %i.oq, 1
  store i64 %i.ov, ptr %i.u, align 8, !alias.scope !258
  %.not.i.i.i.i.i.i524 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i521, %i.ne
  br i1 %.not.i.i.i.i.i.i524, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit529, label %.lr.ph.i.i.i.i.i518

bb.ge:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs1HV6ixfL8cZ_11fish_printf6localeNtB2_6Locale14apply_grouping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0233.0, i64 noundef %.sroa.18.0)
          to label %bb.gf unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit529: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i523, %.noexc527, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit
  br i1 %i.lk, label %bb.gm, label %bb.gl

bb.gf:                                            ; preds = %bb.ge
  %i.ow = load ptr, ptr %i.ae, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ox = load i64, ptr %i.af, align 8, !noundef !7 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ox ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.oz = lshr i64 %i.ox, 2
  %i.pa = and i64 %i.ox, 3
  %.not.i.i.i.i530 = icmp ne i64 %i.pa, 0
  %i.pb = zext i1 %.not.i.i.i.i530 to i64
  %.sroa.0.0.i.i.i.i531 = add nuw nsw i64 %i.oz, %i.pb
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.i.i.i.i531)
          to label %.noexc542 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc542:                                        ; preds = %bb.gf
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %.not.i9.i.i.i.i.i532 = icmp samesign eq i64 %i.ox, 0
  br i1 %.not.i9.i.i.i.i.i532, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit544, label %.lr.ph.i.i.i.i.i533

.lr.ph.i.i.i.i.i533:                              ; preds = %.noexc542, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i538
  %.sroa.0.010.i.i.i.i.i534 = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i536, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i538 ], [ %i.ow, %.noexc542 ] ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i534, i64 1 ; 3 uses
  %i.pd = load i8, ptr %.sroa.0.010.i.i.i.i.i534, align 1, !alias.scope !266, !noalias !267, !noundef !7 ; 5 uses
  %i.pe = icmp sgt i8 %i.pd, -1
  br i1 %i.pe, label %bb.gg, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i535

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i535: ; preds = %.lr.ph.i.i.i.i.i533
  %i.pf = and i8 %i.pd, 31
  %i.pg = zext nneg i8 %i.pf to i32               ; 3 uses
  %i.ph = icmp ne ptr %i.pc, %i.oy
  call void @llvm.assume(i1 %i.ph)
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i534, i64 2 ; 3 uses
  %i.pj = load i8, ptr %i.pc, align 1, !alias.scope !266, !noalias !267, !noundef !7
  %i.pk = shl nuw nsw i32 %i.pg, 6
  %i.pl = and i8 %i.pj, 63
  %i.pm = zext nneg i8 %i.pl to i32               ; 2 uses
  %i.pn = or disjoint i32 %i.pk, %i.pm
  %i.po = icmp samesign ugt i8 %i.pd, -33
  br i1 %i.po, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i540, label %bb.gh

bb.gg:                                            ; preds = %.lr.ph.i.i.i.i.i533
  %i.pp = zext nneg i8 %i.pd to i32
  br label %bb.gh

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i540: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i535
  %i.pq = icmp ne ptr %i.pi, %i.oy
  call void @llvm.assume(i1 %i.pq)
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i534, i64 3 ; 3 uses
  %i.ps = load i8, ptr %i.pi, align 1, !alias.scope !266, !noalias !267, !noundef !7
  %i.pt = shl nuw nsw i32 %i.pm, 6
  %i.pu = and i8 %i.ps, 63
  %i.pv = zext nneg i8 %i.pu to i32
  %i.pw = or disjoint i32 %i.pt, %i.pv            ; 2 uses
  %i.px = shl nuw nsw i32 %i.pg, 12
  %i.py = or disjoint i32 %i.pw, %i.px
  %i.pz = icmp samesign ugt i8 %i.pd, -17
  br i1 %i.pz, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i541, label %bb.gh

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i541: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i540
  %i.qa = icmp ne ptr %i.pr, %i.oy
  call void @llvm.assume(i1 %i.qa)
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i534, i64 4
  %i.qc = load i8, ptr %i.pr, align 1, !alias.scope !266, !noalias !267, !noundef !7
  %i.qd = shl nuw nsw i32 %i.pg, 18
  %i.qe = and i32 %i.qd, 1835008
  %i.qf = shl nuw nsw i32 %i.pw, 6
  %i.qg = and i8 %i.qc, 63
  %i.qh = zext nneg i8 %i.qg to i32
  %i.qi = or disjoint i32 %i.qf, %i.qh
  %i.qj = or disjoint i32 %i.qi, %i.qe
  br label %bb.gh

bb.gh:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i541, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i540, %bb.gg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i535
  %.sroa.0.1.ph.i.i.i.i.i536 = phi ptr [ %i.pi, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i535 ], [ %i.pr, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i540 ], [ %i.qb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i541 ], [ %i.pc, %bb.gg ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i537 = phi i32 [ %i.pn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i535 ], [ %i.py, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i540 ], [ %i.qj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i541 ], [ %i.pp, %bb.gg ]
  %i.qk = load i64, ptr %i.u, align 8, !alias.scope !268, !noundef !7 ; 3 uses
  %i.ql = load i64, ptr %1, align 8, !range !8, !alias.scope !268, !noundef !7
  %i.qm = icmp eq i64 %i.qk, %i.ql
  br i1 %i.qm, label %bb.gi, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i538

bb.gi:                                            ; preds = %bb.gh
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i538 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i538: ; preds = %bb.gi, %bb.gh
  %i.qn = load ptr, ptr %i.v, align 8, !alias.scope !268, !nonnull !7, !noundef !7
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.qk
  store i32 %spec.select.i.ph.i.i.i.i.i537, ptr %i.qo, align 4, !noalias !266
  %i.qp = add i64 %i.qk, 1
  store i64 %i.qp, ptr %i.u, align 8, !alias.scope !268
  %.not.i.i.i.i.i.i539 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i536, %i.oy
  br i1 %.not.i.i.i.i.i.i539, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit544, label %.lr.ph.i.i.i.i.i533

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gi, %bb.gf
  %lpad.loopexit.split-lp908 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #14
          to label %.body unwind label %bb.go

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit544: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i538, %.noexc542
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i unwind label %bb.gj

bb.gj:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit544
  %i.qq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.qr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i: ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit544
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit529

bb.gl:                                            ; preds = %bb.gm, %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit529
  %i.qs = add i64 %..i499, %.sroa.0279.0741       ; 2 uses
  %i.qt = icmp ult i64 %i.qs, %.sroa.0279.0741
  br i1 %i.qt, label %bb.gn, label %.backedge, !prof !10

.backedge:                                        ; preds = %bb.dt, %bb.ec, %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit, %bb.gl
  %.sroa.0279.0.be = phi i64 [ %i.qs, %bb.gl ], [ %.sroa.0279.0741, %bb.dt ], [ %i.ie, %bb.ec ], [ %i.re, %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ] ; 2 uses
  %.sroa.0.0.be = phi ptr [ %i.ey, %bb.gl ], [ %i.ey, %bb.dt ], [ %i.ey, %bb.ec ], [ %.sroa.0.0742, %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ] ; 2 uses
  %.val = load i64, ptr %i.r, align 8, !noundef !7
  %i.qu = icmp eq i64 %.val, 0
  br i1 %i.qu, label %._crit_edge, label %bb.b

bb.gm:                                            ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit529
  %i.qv = invoke noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 32, i64 noundef %..i499, i64 noundef %i.lh)
          to label %bb.gl unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.gn:                                            ; preds = %bb.gl
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.qw, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gu

bb.go:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %i.qx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
  unreachable

.invoke:                                          ; preds = %bb.fm, %bb.ff, %._crit_edge859
  %i.qy = phi ptr [ @8, %._crit_edge859 ], [ @11, %bb.ff ], [ @10, %bb.fm ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qy) #16
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

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i
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
  br i1 %i.rf, label %bb.gt, label %.backedge, !prof !10

bb.gt:                                            ; preds = %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.rg, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.bf, %bb.gp, %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intReECs4RW8js5ES7g_4fish.exit483, %bb.bl, %bb.bz, %bb.cg, %bb.ex, %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread, %bb.en, %bb.du, %bb.ds, %bb.dd, %bb.ct, %bb.eb, %bb.ed, %bb.dv, %bb.gn, %bb.fq, %bb.bi, %.thread822, %_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl7get_intReECs4RW8js5ES7g_4fish.exit, %bb.gq, %bb.gx
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit551 unwind label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.rh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ri = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
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
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit551 unwind label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.rl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit551: ; preds = %bb.gy, %bb.gu
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.c, align 4
  switch i32 %1, label %bb.b [
    i32 48, label %bb.c
    i32 32, label %bb.c
  ], !prof !289

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRcNtB6_5Debug3fmtCs4RW8js5ES7g_4fish, ptr %.sroa.49.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #18
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
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !290, !noundef !7
  %i.j = icmp sgt i8 %i.i, -65
  br i1 %i.j, label %.lr.ph.i.i.i.i.i, label %bb.k

.loopexit:                                        ; preds = %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit, %bb.d, %bb.c
  ret i1 false

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.k = getelementptr inbounds nuw i8, ptr %., i64 %..i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.l = add nuw nsw i64 %..i, 3
  %.sroa.0.0.i.i.i.i = lshr i64 %i.l, 2
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i.i.i.i), !noalias !296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi ptr [ %., %.lr.ph.i.i.i.i.i ], [ %.sroa.0.1.ph.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 1 ; 3 uses
  %i.n = load i8, ptr %.sroa.0.010.i.i.i.i.i, align 1, !alias.scope !296, !noalias !299, !noundef !7 ; 5 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.h, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.p = and i8 %i.n, 31
  %i.q = zext nneg i8 %i.p to i32                 ; 3 uses
  %i.r = icmp ne ptr %i.m, %i.k
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 2 ; 3 uses
  %i.t = load i8, ptr %i.m, align 1, !alias.scope !296, !noalias !299, !noundef !7
  %i.u = shl nuw nsw i32 %i.q, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32                 ; 2 uses
  %i.x = or disjoint i32 %i.u, %i.w
  %i.y = icmp samesign ugt i8 %i.n, -33
  br i1 %i.y, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = zext nneg i8 %i.n to i32
  br label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i
  %i.aa = icmp ne ptr %i.s, %i.k
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 3 ; 3 uses
  %i.ac = load i8, ptr %i.s, align 1, !alias.scope !296, !noalias !299, !noundef !7
  %i.ad = shl nuw nsw i32 %i.w, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af            ; 2 uses
  %i.ah = shl nuw nsw i32 %i.q, 12
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = icmp samesign ugt i8 %i.n, -17
  br i1 %i.aj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i, label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i
  %i.ak = icmp ne ptr %i.ab, %i.k
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 4
  %i.am = load i8, ptr %i.ab, align 1, !alias.scope !296, !noalias !299, !noundef !7
  %i.an = shl nuw nsw i32 %i.q, 18
  %i.ao = and i32 %i.an, 1835008
  %i.ap = shl nuw nsw i32 %i.ag, 6
  %i.aq = and i8 %i.am, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = or disjoint i32 %i.as, %i.ao
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i, %bb.h, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i.i.i = phi ptr [ %i.s, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i ], [ %i.al, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i ], [ %i.m, %bb.h ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i = phi i32 [ %i.x, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit12.i.i.i.i.i.i.i ], [ %i.ai, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit14.i.i.i.i.i.i.i ], [ %i.at, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4RW8js5ES7g_4fish.exit16.i.i.i.i.i.i.i ], [ %i.z, %bb.h ]
  %i.au = load i64, ptr %i.f, align 8, !alias.scope !300, !noundef !7 ; 3 uses
  %i.av = load i64, ptr %0, align 8, !range !8, !alias.scope !300, !noundef !7
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.j, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #15, !noalias !296
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.ax = load ptr, ptr %i.g, align 8, !alias.scope !300, !nonnull !7, !noundef !7
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.au
  store i32 %spec.select.i.ph.i.i.i.i.i, ptr %i.ay, align 4, !noalias !296
  %i.az = add i64 %i.au, 1
  store i64 %i.az, ptr %i.f, align 8, !alias.scope !300
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit, label %bb.g

bb.k:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %., i64 noundef 16, i64 noundef 0, i64 noundef %..i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #18
  unreachable

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs4RW8js5ES7g_4fish.exit.i.i.i.i.i
  %i.ba = sub nuw i64 %.sroa.04.019, %..i         ; 2 uses
  %.not14 = icmp eq i64 %i.ba, 0
  br i1 %.not14, label %.loopexit, label %bb.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs4RW8js5ES7g_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs4RW8js5ES7g_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs4RW8js5ES7g_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i64 @_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCsfc8f8SDE2Co_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECs4RW8js5ES7g_4fish(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %.not.i19 = icmp eq ptr %0, %1
  br i1 %.not.i19, label %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
  %.sroa.0.022 = phi i64 [ %i.eh, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit ], [ 0, %bb.a ]
  %.sroa.6.021 = phi i16 [ %.sroa.51.1.i.i, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit ], [ 0, %bb.a ] ; 5 uses
  %.sroa.2.020 = phi ptr [ %.sroa.2.3.ph, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -1 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !noalias !307, !noundef !7 ; 3 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i.i: ; preds = %.lr.ph
  %i.d = icmp ne ptr %0, %i.a
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -2 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !noalias !307, !noundef !7 ; 3 uses
  %i.g = and i8 %i.f, 31
  %i.h = zext nneg i8 %i.g to i32
  %i.i = icmp slt i8 %i.f, -64
  br i1 %i.i, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit19.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = zext nneg i8 %i.b to i32
  br label %bb.e

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit19.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i.i
  %i.k = icmp ne ptr %0, %i.e
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -3 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !noalias !307, !noundef !7 ; 3 uses
  %i.n = and i8 %i.m, 15
  %i.o = zext nneg i8 %i.n to i32
  %i.p = icmp slt i8 %i.m, -64
  br i1 %i.p, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit21.i.i, label %bb.d

bb.c:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i.i
  %.sroa.2.1 = phi ptr [ %.sroa.2.2, %bb.d ], [ %i.e, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i.i ]
  %.sroa.010.0.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.h, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i.i ]
  %i.q = shl nuw nsw i32 %.sroa.010.0.i.i, 6
  %i.r = and i8 %i.b, 63
  %i.s = zext nneg i8 %i.r to i32
  %i.t = or disjoint i32 %i.q, %i.s
  br label %bb.e

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit21.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit19.i.i
  %i.u = icmp ne ptr %0, %i.l
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -4 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !noalias !307, !noundef !7
  %i.x = and i8 %i.w, 7
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 6
  %i.aa = and i8 %i.m, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit21.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit19.i.i
  %.sroa.2.2 = phi ptr [ %i.v, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit21.i.i ], [ %i.l, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit19.i.i ]
  %.sroa.010.1.i.i = phi i32 [ %i.ac, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit21.i.i ], [ %i.o, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit19.i.i ]
  %i.ad = shl nuw nsw i32 %.sroa.010.1.i.i, 6
  %i.ae = and i8 %i.f, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %bb.c

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.2.3.ph = phi ptr [ %.sroa.2.1, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %spec.select.i.ph = phi i32 [ %i.t, %bb.c ], [ %i.j, %bb.b ] ; 80 uses
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
  %i.an = load i8, ptr %i.am, align 1, !noundef !7
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
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit

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
  switch i8 %trunc.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit [
    i8 10, label %bb.cn
    i8 13, label %bb.co
  ]

.thread121.i.i:                                   ; preds = %bb.ci, %bb.cm, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %.thread137.i.i, %bb.cb, %bb.bn, %bb.ax, %bb.ax, %bb.ax, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.q, %bb.p
  %spec.select.i17 = phi i32 [ %spec.select.i.ph, %bb.cm ], [ %spec.select.i.ph, %bb.ci ], [ %spec.select.i.ph, %bb.ch ], [ 127988, %bb.cg ], [ %spec.select.i.ph, %bb.cf ], [ %spec.select.i.ph, %bb.ce ], [ %spec.select.i.ph, %bb.cd ], [ %spec.select.i.ph, %.thread137.i.i ], [ %spec.select.i.ph, %bb.cb ], [ %spec.select.i.ph, %bb.bn ], [ 11647, %bb.ax ], [ 11647, %bb.ax ], [ 11647, %bb.ax ], [ %spec.select.i.ph, %bb.au ], [ %spec.select.i.ph, %bb.at ], [ %spec.select.i.ph, %bb.as ], [ %spec.select.i.ph, %bb.ar ], [ %spec.select.i.ph, %bb.q ], [ %spec.select.i.ph, %bb.p ]
  %i.ay = tail call fastcc { i8, i16 } @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables12lookup_width(i32 noundef range(i32 0, 1114112) %spec.select.i17) #19 ; 2 uses
  %i.az = extractvalue { i8, i16 } %i.ay, 0
  %i.ba = extractvalue { i8, i16 } %i.ay, 1
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit

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
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit

bb.u:                                             ; preds = %bb.s
  %i.bd = and i16 %.sroa.0.0.i.i, 8192
  %.not84.i.i = icmp eq i16 %i.bd, 0
  %i.be = or i16 %.sroa.0.0.i.i, 512
  %.sroa.051.0.i.i = select i1 %.not84.i.i, i16 512, i16 %i.be
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit

bb.v:                                             ; preds = %bb.s
  %i.bf = and i16 %.sroa.0.0.i.i, 8192
  %.not83.i.i = icmp eq i16 %i.bf, 0
  %i.bg = or i16 %.sroa.0.0.i.i, 16384
  %.sroa.052.0.i.i = select i1 %.not83.i.i, i16 16384, i16 %i.bg
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit

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
  %.val15.i.i.i.i = load i8, ptr %i.bm, align 1, !alias.scope !308, !noundef !7
  %i.bn = getelementptr i8, ptr %i.bm, i64 1
  %.val16.i.i.i.i = load i8, ptr %i.bn, align 1, !alias.scope !308
  %.not = icmp ult i8 %i.bl, %.val15.i.i.i.i
  %i.bo = icmp ugt i8 %i.bl, %.val16.i.i.i.i
  %i.bp = select i1 %.not, i1 true, i1 %i.bo
  br i1 %i.bp, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %bb.ah
  %.sroa.01.020.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i ], [ %.sroa.11.0.i.i.i, %bb.ah ] ; 2 uses
  %.sroa.05.019.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i ], [ 0, %bb.ah ] ; 2 uses
  %i.bq = lshr i64 %.sroa.01.020.i.i.i.i, 1       ; 2 uses
  %i.br = add nuw nsw i64 %i.bq, %.sroa.05.019.i.i.i.i ; 3 uses
  %i.bs = icmp ult i64 %i.br, %.sroa.11.0.i.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i99.i.i, i64 %i.br
  %.val12.i.i.i.i = load i8, ptr %i.bt, align 1, !alias.scope !308, !noundef !7
  %i.bu = icmp ugt i8 %.val12.i.i.i.i, %i.bk
  %i.bv = select i1 %i.bu, i64 %.sroa.05.019.i.i.i.i, i64 %i.br, !unpredictable !7 ; 2 uses
  %i.bw = sub nuw nsw i64 %.sroa.01.020.i.i.i.i, %i.bq ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, 1
  br i1 %i.bx, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.ai:                                            ; preds = %bb.x
  %switch.tableidx = add i32 %spec.select.i.ph, -8216 ; 2 uses
  %i.by = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond9 = select i1 %i.by, i1 %switch.lobit, i1 false
  br i1 %or.cond9, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.aj

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
    i32 847, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i32 6159, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
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
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit

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
  br i1 %or.cond, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.am

bb.ap:                                            ; preds = %bb.aw, %bb.am
  %i.ch = icmp eq i32 %spec.select.i.ph, 11647
  br i1 %i.ch, label %bb.ax, label %bb.ay

bb.aq:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %bb.av [
    i32 1604, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i32 1898, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i32 2214, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i32 2247, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
  ]

bb.ar:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %.thread105.i.i [
    i32 1488, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i32 11647, label %.thread121.i.i
  ]

bb.as:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %.thread105.i.i [
    i32 6098, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i32 11647, label %.thread121.i.i
  ]

bb.at:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %.thread105.i.i [
    i32 6679, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i32 11647, label %.thread121.i.i
  ]

bb.au:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %.thread105.i.i [
    i32 6677, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i32 11647, label %.thread121.i.i
  ]

bb.av:                                            ; preds = %bb.aq
  %i.ci = add nsw i32 %spec.select.i.ph, -1717
  %or.cond.i.i = icmp ult i32 %i.ci, 4
  br i1 %or.cond.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cj = tail call noundef zeroext i1 @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables25is_transparent_zero_width(i32 noundef range(i32 0, 1114112) %spec.select.i.ph)
  br i1 %i.cj, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.ap

bb.ax:                                            ; preds = %bb.ap
  switch i16 %.sroa.0.1.i.i, label %.thread118.i.i [
    i16 14339, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 15363, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
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
  br i1 %or.cond6.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.az
  %i.co = icmp samesign ugt i32 %spec.select.i.ph, 127461
  %i.cp = zext i1 %i.co to i8                     ; 2 uses
  %i.cq = add nsw i32 %spec.select.i.ph, -127462
  %or.cond89.i.i = icmp ult i32 %i.cq, 26
  br i1 %or.cond89.i.i, label %bb.bh, label %.thread112.i.i

bb.bb:                                            ; preds = %bb.ay, %bb.ax
  %i.cr = tail call fastcc noundef zeroext i1 @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables22is_emoji_modifier_base(i32 noundef range(i32 0, 1114112) %spec.select.i.ph) #19
  br i1 %i.cr, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.bj

bb.bc:                                            ; preds = %bb.ay
  %i.cs = icmp samesign ugt i32 %spec.select.i.ph, 11568
  br i1 %i.cs, label %bb.bf, label %.thread112.i.i

bb.bd:                                            ; preds = %bb.ay
  %i.ct = icmp samesign ugt i32 %spec.select.i.ph, 11568
  br i1 %i.ct, label %bb.bg, label %.thread112.i.i

bb.be:                                            ; preds = %bb.ay
  %i.cu = icmp eq i32 %spec.select.i.ph, 68658
  br i1 %i.cu, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.ba

bb.bf:                                            ; preds = %bb.bc
  %i.cv = icmp samesign ult i32 %spec.select.i.ph, 11622
  %i.cw = icmp eq i32 %spec.select.i.ph, 11631
  %or.cond2.i.i = or i1 %i.cv, %i.cw
  br i1 %or.cond2.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.ba

bb.bg:                                            ; preds = %bb.bd
  %i.cx = icmp samesign ult i32 %spec.select.i.ph, 11622
  %i.cy = icmp eq i32 %spec.select.i.ph, 11631
  %or.cond4.i.i = or i1 %i.cx, %i.cy
  br i1 %or.cond4.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.ba

.thread112.i.i:                                   ; preds = %bb.bd, %bb.bc, %bb.ba
  %i.cz = phi i8 [ %i.cp, %bb.ba ], [ 0, %bb.bc ], [ 0, %bb.bd ] ; 2 uses
  %cond1.i.i = icmp eq i32 %spec.select.i.ph, 8205
  br i1 %cond1.i.i, label %bb.bi, label %.thread114.i.i

bb.bh:                                            ; preds = %bb.ba, %.thread105.i.i
  %.sroa.059.0.i.i = phi i8 [ %i.cl, %.thread105.i.i ], [ %i.cp, %bb.ba ] ; 2 uses
  switch i16 %.sroa.0.1.i.i, label %.thread114.i.i [
    i16 3, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 4, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 4102, label %bb.bm
  ]

.thread118.i.i:                                   ; preds = %bb.bk, %bb.ax
  %.sroa.059.1.i.i = phi i8 [ %i.cl, %bb.bk ], [ 0, %bb.ax ] ; 2 uses
  %cond125.i.i = icmp eq i16 %.sroa.0.1.i.i, 4102
  br i1 %cond125.i.i, label %bb.bm, label %.thread114.i.i

bb.bi:                                            ; preds = %bb.bk, %.thread112.i.i
  %.sroa.059.2.i.i = phi i8 [ %i.cl, %bb.bk ], [ %i.cz, %.thread112.i.i ] ; 2 uses
  switch i16 %.sroa.0.1.i.i, label %.thread114.i.i [
    i16 5, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 4, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 10, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 11, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 2, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 4102, label %bb.bm
  ]

bb.bj:                                            ; preds = %bb.bb
  %i.da = icmp samesign ugt i32 %spec.select.i.ph, 127461
  %i.db = zext i1 %i.da to i8
  %cond.i.i = icmp eq i32 %spec.select.i.ph, 8205
  br i1 %cond.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %.thread114.i.i

bb.bk:                                            ; preds = %.thread105.i.i
  switch i32 %spec.select.i.ph, label %.thread118.i.i [
    i32 8205, label %bb.bi
    i32 8419, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %cond126.i.i = icmp eq i16 %.sroa.0.1.i.i, 4102
  br i1 %cond126.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %.thread114.i.i

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
  br i1 %or.cond29.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %.thread119.i.i

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
    i16 9, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 11, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
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
  br i1 %or.cond12.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.bv

bb.bp:                                            ; preds = %.thread114.thread.i.i
  %i.di = add nsw i32 %spec.select.i.ph, -917601
  %or.cond14.i.i = icmp ult i32 %i.di, 26
  br i1 %or.cond14.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.bw

bb.bq:                                            ; preds = %.thread114.thread.i.i
  %i.dj = add nsw i32 %spec.select.i.ph, -917601
  %or.cond16.i.i = icmp ult i32 %i.dj, 26
  br i1 %or.cond16.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.by

bb.br:                                            ; preds = %.thread114.thread.i.i
  %i.dk = add nsw i32 %spec.select.i.ph, -917601
  %or.cond18.i.i = icmp ult i32 %i.dk, 26
  br i1 %or.cond18.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.bz

bb.bs:                                            ; preds = %.thread114.thread.i.i
  %i.dl = add nsw i32 %spec.select.i.ph, -917601
  %or.cond20.i.i = icmp ult i32 %i.dl, 26
  br i1 %or.cond20.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.ca

bb.bt:                                            ; preds = %.thread114.thread.i.i
  %i.dm = add nsw i32 %spec.select.i.ph, -917601
  %or.cond22.i.i = icmp ult i32 %i.dm, 26
  br i1 %or.cond22.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.cc

bb.bu:                                            ; preds = %.thread114.thread.i.i
  %i.dn = add nsw i32 %spec.select.i.ph, -917601
  %or.cond24.i.i = icmp ult i32 %i.dn, 26
  br i1 %or.cond24.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.ce

bb.bv:                                            ; preds = %.thread119.i.i
  %i.do = icmp eq i32 %spec.select.i.ph, 917631
  br i1 %i.do, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.bo

bb.bw:                                            ; preds = %bb.bp
  %i.dp = add nsw i32 %spec.select.i.ph, -917552
  %or.cond92.i.i = icmp ult i32 %i.dp, 10
  br i1 %or.cond92.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %bb.by, %bb.bw, %bb.bo
  %i.dq = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.dq, label %bb.cg, label %.thread137.i.i

bb.by:                                            ; preds = %bb.bq
  %i.dr = add nsw i32 %spec.select.i.ph, -917552
  %or.cond93.i.i = icmp ult i32 %i.dr, 10
  br i1 %or.cond93.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.bx

bb.bz:                                            ; preds = %bb.br
  %i.ds = add nsw i32 %spec.select.i.ph, -917552
  %or.cond94.i.i = icmp ult i32 %i.ds, 10
  br i1 %or.cond94.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.bx

bb.ca:                                            ; preds = %bb.bs
  %i.dt = add nsw i32 %spec.select.i.ph, -917552
  %or.cond95.i.i = icmp ult i32 %i.dt, 10
  br i1 %or.cond95.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.du = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.du, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %.thread121.i.i

.thread137.i.i:                                   ; preds = %bb.bx
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 4102, label %bb.ch
    i16 32, label %bb.ci
    i16 33, label %bb.cm
  ]

bb.cc:                                            ; preds = %bb.bt
  %i.dv = add nsw i32 %spec.select.i.ph, -917552
  %or.cond96.i.i = icmp ult i32 %i.dv, 10
  br i1 %or.cond96.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.dw = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.dw, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %.thread121.i.i

bb.ce:                                            ; preds = %bb.bu
  %i.dx = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.dx, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %.thread121.i.i

bb.cf:                                            ; preds = %bb.bo
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 16, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 25, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 26, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 27, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 28, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 17, label %bb.cj
    i16 18, label %bb.ck
    i16 4102, label %bb.ch
    i16 32, label %bb.ci
  ]

bb.cg:                                            ; preds = %bb.bx
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 27, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 28, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 29, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 30, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 19, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit
    i16 4102, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %.thread137.i.i, %bb.bn
  %i.dy = tail call fastcc { i8, i16 } @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables12lookup_width(i32 noundef range(i32 0, 1114112) %spec.select.i.ph) #19
  %i.dz = extractvalue { i8, i16 } %i.dy, 1
  %i.ea = icmp eq i16 %i.dz, 5
  br i1 %i.ea, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %.thread121.i.i

bb.ci:                                            ; preds = %bb.cf, %.thread137.i.i, %bb.bn
  %switch.tableidx2 = add i32 %spec.select.i.ph, -93539 ; 4 uses
  %i.eb = icmp ult i32 %switch.tableidx2, 7
  %switch.maskindex6 = trunc i32 %switch.tableidx2 to i8
  %switch.shifted7 = lshr i8 113, %switch.maskindex6
  %switch.lobit8 = trunc i8 %switch.shifted7 to i1
  %or.cond10 = select i1 %i.eb, i1 %switch.lobit8, i1 false
  br i1 %or.cond10, label %switch.lookup5, label %.thread121.i.i

bb.cj:                                            ; preds = %bb.cf
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit

bb.ck:                                            ; preds = %bb.cf
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit

bb.cl:                                            ; preds = %bb.bn
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit

bb.cm:                                            ; preds = %.thread137.i.i, %bb.bn
  %i.ec = icmp eq i32 %spec.select.i.ph, 93539
  br i1 %i.ec, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, label %.thread121.i.i

bb.cn:                                            ; preds = %bb.cp, %bb.r
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit

bb.co:                                            ; preds = %bb.r
  %i.ed = icmp ne i16 %.sroa.0.0.i.i, 1
  %spec.select.i.i = zext i1 %i.ed to i8
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit

bb.cp:                                            ; preds = %bb.p
  %cond30.i.i = icmp eq i32 %spec.select.i.ph, 10
  br i1 %cond30.i.i, label %bb.cn, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit

switch.lookup5:                                   ; preds = %bb.ci
  %i.ee = zext nneg i32 %switch.tableidx2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCsfc8f8SDE2Co_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECs4RW8js5ES7g_4fish, i64 %i.ee
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  %i.ef = shl nuw nsw i32 %switch.tableidx2, 3
  %switch.shiftamt = zext nneg i32 %i.ef to i56
  %switch.downshift = lshr i56 1099511627776, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit

_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit: ; preds = %bb.ai, %switch.lookup5, %bb.al, %bb.al, %bb.ao, %bb.n, %bb.r, %.thread121.i.i, %bb.t, %bb.u, %bb.v, %._crit_edge.i.i.i.i, %bb.an, %bb.aq, %bb.aq, %bb.aq, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ax, %bb.az, %bb.bb, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bh, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.bn, %bb.bn, %.thread119.i.i, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cf, %bb.cf, %bb.cf, %bb.cf, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.ch, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp
  %.sroa.51.1.i.i = phi i16 [ 5, %bb.n ], [ 0, %bb.cm ], [ 5, %bb.cd ], [ %i.cc, %bb.an ], [ 0, %bb.cp ], [ 30, %bb.bu ], [ 11, %bb.cl ], [ 10, %bb.bn ], [ 5, %bb.ch ], [ %i.ba, %.thread121.i.i ], [ 10, %bb.bn ], [ %switch.ext, %switch.lookup5 ], [ 1, %bb.cn ], [ 25, %bb.bp ], [ 18, %bb.cj ], [ 19, %bb.ck ], [ 28, %bb.bs ], [ 9, %bb.bm ], [ 2, %.thread119.i.i ], [ 16, %bb.bv ], [ 17, %bb.by ], [ 26, %bb.bq ], [ 27, %bb.br ], [ 5, %bb.cb ], [ 29, %bb.bt ], [ 4103, %bb.bl ], [ 4, %bb.bh ], [ %.sroa.052.0.i.i, %bb.v ], [ 0, %._crit_edge.i.i.i.i ], [ 5, %bb.bb ], [ 4102, %bb.bj ], [ 0, %bb.au ], [ 0, %bb.be ], [ 0, %bb.bf ], [ 0, %bb.bg ], [ 15364, %bb.ax ], [ 0, %bb.az ], [ %.sroa.0.1.i.i, %bb.al ], [ 0, %bb.aq ], [ 12543, %bb.aw ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 15362, %bb.at ], [ %.sroa.051.0.i.i, %bb.u ], [ %.sroa.050.0.i.i, %bb.t ], [ %.sroa.0.1.i.i, %bb.al ], [ %.sroa.0.1.i.i, %bb.ao ], [ 0, %bb.r ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 15364, %bb.ax ], [ 0, %bb.co ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4, %bb.bh ], [ 17, %bb.bw ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cc ], [ 17, %bb.ca ], [ 17, %bb.bz ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.ce ], [ 0, %bb.ai ]
  %.sroa.046.1.i.i = phi i8 [ %..i.i, %bb.n ], [ 0, %bb.cm ], [ 0, %bb.cd ], [ 0, %bb.an ], [ 1, %bb.cp ], [ 0, %bb.bu ], [ 3, %bb.cl ], [ -1, %bb.bn ], [ 0, %bb.ch ], [ %i.az, %.thread121.i.i ], [ -1, %bb.bn ], [ %switch.masked, %switch.lookup5 ], [ 1, %bb.cn ], [ 0, %bb.bp ], [ 0, %bb.cj ], [ 0, %bb.ck ], [ 0, %bb.bs ], [ 1, %bb.bm ], [ 0, %.thread119.i.i ], [ 0, %bb.bv ], [ 0, %bb.by ], [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %bb.cb ], [ 0, %bb.bt ], [ 0, %bb.bl ], [ 1, %bb.bh ], [ 0, %bb.v ], [ 1, %._crit_edge.i.i.i.i ], [ 0, %bb.bb ], [ 0, %bb.bj ], [ 0, %bb.au ], [ 0, %bb.be ], [ 0, %bb.bf ], [ -1, %bb.bg ], [ 1, %bb.ax ], [ 0, %bb.az ], [ 0, %bb.al ], [ 0, %bb.aq ], [ 0, %bb.aw ], [ 0, %bb.ar ], [ -1, %bb.as ], [ 0, %bb.at ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.al ], [ 0, %bb.ao ], [ 1, %bb.r ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 1, %bb.ax ], [ %spec.select.i.i, %bb.co ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 1, %bb.bh ], [ 0, %bb.bw ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cc ], [ 0, %bb.ca ], [ 0, %bb.bz ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.ce ], [ 2, %bb.ai ]
  %i.eg = sext i8 %.sroa.046.1.i.i to i64
  %i.eh = add i64 %.sroa.0.022, %i.eg             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.3.ph) ]
  %.not.i = icmp eq ptr %0, %.sroa.2.3.ph
  br i1 %.not.i, label %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit, label %.lr.ph

_RNvXs0_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit: ; preds = %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.eh, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs4RW8js5ES7g_4fish.exit ]
  ret i64 %.sroa.0.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i8 -1, 17) i8 @_RNvMs0_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_14ConversionSpec9from_char(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #2 {
bb.a:
  %switch.tableidx = add nsw i32 %0, -65          ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 56
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs0_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_14ConversionSpec9from_char, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.0.0 = phi i8 [ -1, %bb.a ], [ %switch.load, %switch.lookup ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor12handle_emoji(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.b = icmp samesign eq i64 %2, 0
  br i1 %i.b, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs4RW8js5ES7g_4fish.exit.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !noalias !313, !noundef !7 ; 3 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i: ; preds = %bb.b
  %i.f = icmp ne i64 %2, 1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 -2 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !noalias !313, !noundef !7 ; 3 uses
  %i.i = and i8 %i.h, 31
  %i.j = zext nneg i8 %i.i to i32
  %i.k = icmp slt i8 %i.h, -64
  br i1 %i.k, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit19.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i8 %i.d to i32
  br label %bb.f

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit19.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i
  %i.m = icmp ne i64 %2, 2
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 -3 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !noalias !313, !noundef !7 ; 3 uses
  %i.p = and i8 %i.o, 15
  %i.q = zext nneg i8 %i.p to i32
  %i.r = icmp slt i8 %i.o, -64
  br i1 %i.r, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit21.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i
  %.sroa.6.0 = phi ptr [ %.sroa.6.1, %bb.e ], [ %i.g, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i ]
  %.sroa.010.0.i = phi i32 [ %i.ai, %bb.e ], [ %i.j, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i ]
  %i.s = shl nuw nsw i32 %.sroa.010.0.i, 6
  %i.t = and i8 %i.d, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u
  br label %bb.f

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit21.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit19.i
  %i.w = icmp ne i64 %2, 3
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds i8, ptr %i.a, i64 -4 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !noalias !313, !noundef !7
  %i.z = and i8 %i.y, 7
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %i.ac = and i8 %i.o, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.ab, %i.ad
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit21.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit19.i
  %.sroa.6.1 = phi ptr [ %i.x, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit21.i ], [ %i.n, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit19.i ]
  %.sroa.010.1.i = phi i32 [ %i.ae, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit21.i ], [ %i.q, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit19.i ]
  %i.af = shl nuw nsw i32 %.sroa.010.1.i, 6
  %i.ag = and i8 %i.h, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  br label %bb.d

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.6.2.ph = phi ptr [ %.sroa.6.0, %bb.d ], [ %i.c, %bb.c ]
  %.sroa.4.1.i.ph = phi i32 [ %i.v, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.aj = icmp samesign ult i32 %.sroa.4.1.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = tail call noundef i8 @_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.4.1.i.ph)
  %.not = icmp eq i8 %i.ak, 15
  br i1 %.not, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs4RW8js5ES7g_4fish.exit.preheader, label %.loopexit

_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs4RW8js5ES7g_4fish.exit.preheader: ; preds = %bb.a, %bb.f
  %.sroa.5.0.ph = phi ptr [ %i.a, %bb.a ], [ %.sroa.6.2.ph, %bb.f ]
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs4RW8js5ES7g_4fish.exit

_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs4RW8js5ES7g_4fish.exit: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs4RW8js5ES7g_4fish.exit.preheader, %bb.k
  %.sroa.5.0 = phi ptr [ %.sroa.5.3.ph, %bb.k ], [ %.sroa.5.0.ph, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs4RW8js5ES7g_4fish.exit.preheader ] ; 5 uses
  %i.al = icmp eq ptr %1, %.sroa.5.0
  br i1 %i.al, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs4RW8js5ES7g_4fish.exit
  %i.am = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -1 ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !noalias !314, !noundef !7 ; 3 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.h, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i7

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i7: ; preds = %bb.g
  %i.ap = icmp ne ptr %1, %i.am
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -2 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !314, !noundef !7 ; 3 uses
  %i.as = and i8 %i.ar, 31
  %i.at = zext nneg i8 %i.as to i32
  %i.au = icmp slt i8 %i.ar, -64
  br i1 %i.au, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit19.i11, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = zext nneg i8 %i.an to i32
  br label %bb.k

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit19.i11: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i7
  %i.aw = icmp ne ptr %1, %i.aq
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -3 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !314, !noundef !7 ; 3 uses
  %i.az = and i8 %i.ay, 15
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = icmp slt i8 %i.ay, -64
  br i1 %i.bb, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit21.i13, label %bb.j

bb.i:                                             ; preds = %bb.j, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i7
  %.sroa.5.1 = phi ptr [ %.sroa.5.2, %bb.j ], [ %i.aq, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i7 ]
  %.sroa.010.0.i8 = phi i32 [ %i.bs, %bb.j ], [ %i.at, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4RW8js5ES7g_4fish.exit17.i7 ]
  %i.bc = shl nuw nsw i32 %.sroa.010.0.i8, 6
  %i.bd = and i8 %i.an, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  br label %bb.k

end_hunk_3
