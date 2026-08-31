Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.05?download=true
inline.NumInlined: 1761
inline.NumDeleted: 675
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish:bb.a
    i8 16, label %bb.as
  ]

default.unreachable:                              ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %bb.bc
  unreachable

bb.aq:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread
  %switch.i = icmp slt i8 %.sroa.0.3.i.ph.i, 8
  br i1 %switch.i, label %bb.at, label %bb.av

bb.ar:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread
  switch i8 %.sroa.0.3.i.ph.i, label %bb.av [
    i8 3, label %bb.at
    i8 8, label %bb.at
  ]

bb.as:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread
  %i.er = icmp eq i8 %.sroa.0.3.i.ph.i, 3
  br i1 %i.er, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i, %bb.as, %bb.ar, %bb.ar, %bb.aq
  %i.es = phi i8 [ %i.eq, %bb.as ], [ %i.eq, %bb.ar ], [ %i.eq, %bb.ar ], [ %i.eq, %bb.aq ], [ %i.ep, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i ] ; 7 uses
  invoke void @_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 1)
          to label %bb.aw unwind label %.loopexit.split-lp633.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.au:                                            ; preds = %.loopexit643
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.et, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gl

bb.av:                                            ; preds = %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i.thread, %.noexc506, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.thread.thread37.i, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i, %_RNvXs2_NtCs1HV6ixfL8cZ_11fish_printf11printf_implRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB5_12FormatString2at.exit21.i, %bb.as, %bb.aq, %bb.ar, %.noexc505
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.eu, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gl

bb.aw:                                            ; preds = %bb.at
  %i.ev = icmp eq ptr %.sroa.0.2612, %i.s
  br i1 %i.ev, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.2612, i64 32 ; 3 uses
  %i.ex = trunc nuw i8 %.sroa.26.0 to i1          ; 2 uses
  br i1 %i.ex, label %bb.ba, label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ey, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gl

bb.az:                                            ; preds = %bb.ax
  %i.ez = icmp ult i8 %i.es, 15
  br i1 %i.ez, label %switch.lookup, label %bb.bc

bb.ba:                                            ; preds = %bb.ax
  %i.fa = icmp ult i8 %i.es, 12
  br i1 %i.fa, label %switch.hole_check, label %bb.bb

bb.bb:                                            ; preds = %switch.hole_check, %bb.ba
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.fb, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gl

switch.lookup:                                    ; preds = %bb.az
  %switch.cast = zext nneg i8 %i.es to i15
  %switch.downshift = lshr i15 -16353, %switch.cast
  %switch.masked = trunc i15 %switch.downshift to i1
  br label %bb.bc

switch.hole_check:                                ; preds = %bb.ba
  %switch.maskindex = zext nneg i8 %i.es to i16
  %switch.shifted = lshr i16 3077, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup1001, label %bb.bb

switch.lookup1001:                                ; preds = %switch.hole_check
  %switch.cast1002 = zext nneg i8 %i.es to i12
  %switch.downshift1004 = lshr i12 5, %switch.cast1002
  %switch.masked1005 = trunc i12 %switch.downshift1004 to i1
  br label %bb.bc

bb.bc:                                            ; preds = %switch.lookup1001, %switch.lookup, %bb.az
  %.sroa.0116.0 = phi i1 [ false, %bb.az ], [ %switch.masked1005, %switch.lookup1001 ], [ %switch.masked, %switch.lookup ] ; 2 uses
  %i.fc = icmp eq i64 %.sroa.0142.0611, 1
  %or.cond460 = and i1 %i.fc, %.sroa.0116.0
  %spec.select465 = select i1 %or.cond460, i8 0, i8 %spec.select580584872 ; 6 uses
  switch i8 %i.es, label %default.unreachable [
    i8 0, label %bb.bd
    i8 1, label %bb.be
    i8 2, label %bb.bf
    i8 16, label %bb.bm
    i8 15, label %bb.bj
    i8 5, label %bb.bg
    i8 6, label %bb.bh
    i8 7, label %bb.bh
    i8 8, label %bb.bh
    i8 9, label %bb.bh
    i8 10, label %bb.bh
    i8 11, label %bb.bh
    i8 12, label %bb.bh
    i8 13, label %bb.bh
    i8 14, label %bb.bi
    i8 3, label %bb.cv
    i8 4, label %bb.cu
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.fd = load i64, ptr %.sroa.0.2612, align 8, !range !576, !noundef !4
  switch i64 %i.fd, label %bb.bp [
    i64 4, label %bb.bn
    i64 5, label %bb.bo
  ]

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fe = load i64, ptr %.sroa.0.2612, align 8, !range !576, !noundef !4
  switch i64 %i.fe, label %bb.ca [
    i64 4, label %bb.bx
    i64 5, label %bb.by
  ]

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ff = load i64, ptr %.sroa.0.2612, align 8, !range !576, !noundef !4
  switch i64 %i.ff, label %bb.cn [
    i64 4, label %bb.ck
    i64 5, label %bb.cl
  ]

bb.bg:                                            ; preds = %bb.bc
  %i.fg = load i64, ptr %.sroa.0.2612, align 8, !range !576, !noundef !4
  %i.fh = icmp eq i64 %i.fg, 7
  br i1 %i.fh, label %bb.dj, label %bb.dk

bb.bh:                                            ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc
  %i.fi = load i64, ptr %.sroa.0.2612, align 8, !range !576, !noundef !4
  switch i64 %i.fi, label %bb.dl [
    i64 4, label %bb.dm
    i64 5, label %bb.dn
    i64 6, label %bb.do
  ]

bb.bi:                                            ; preds = %bb.bc
  %..i = call i64 @llvm.umax.i64(i64 %.sroa.16.0610, i64 16)
  %.sroa.0142.4 = zext i1 %i.ef to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.fj = load i64, ptr %.sroa.0.2612, align 8, !range !576, !noundef !4
  switch i64 %i.fj, label %bb.dx [
    i64 4, label %bb.du
    i64 5, label %bb.dv
  ]

bb.bj:                                            ; preds = %bb.bc
  %.sroa.0.2.val = load i64, ptr %.sroa.0.2612, align 8, !range !576, !noundef !4
  %i.fk = getelementptr i8, ptr %.sroa.0.2612, i64 8
  %.sroa.0.2.val478 = load i64, ptr %i.fk, align 8 ; 11 uses
  switch i64 %.sroa.0.2.val, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread [
    i64 4, label %bb.bl
    i64 5, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.fl = icmp ugt i64 %.sroa.0.2.val478, 4294967295
  br i1 %i.fl, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit

bb.bl:                                            ; preds = %bb.bj
  %.old.i = icmp ugt i64 %.sroa.0.2.val478, 4294967295
  br i1 %.old.i, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit.thread, label %_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg7as_char.exit

bb.bm:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtCs1HV6ixfL8cZ_11fish_printf3argNtB2_3Arg6as_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.2612, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.em unwind label %.loopexit.split-lp633.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bn:                                            ; preds = %bb.bd
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.2612, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !noundef !4 ; 2 uses
  %i.fo = icmp slt i64 %i.fn, 0
  br i1 %i.fo, label %bb.bp, label %.thread619

bb.bo:                                            ; preds = %bb.bd
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.2612, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !4 ; 3 uses
  %i.fr = icmp slt i64 %i.fq, 0
  br i1 %i.fr, label %bb.bt, label %.thread619

bb.bp:                                            ; preds = %bb.bn, %bb.bd
  %.sroa.7206.0 = phi i8 [ 3, %bb.bd ], [ 4, %bb.bn ]
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7206.0, ptr %i.fs, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gl

.thread619:                                       ; preds = %bb.bn, %bb.bo
  %.sroa.10208.0621 = phi i64 [ %i.fq, %bb.bo ], [ %i.fn, %bb.bn ] ; 2 uses
  %i.ft = trunc nuw i8 %.sroa.23.0 to i1          ; 2 uses
  %i.fu = trunc nuw i8 %.sroa.20.0 to i1
  %spec.select461 = zext nneg i8 %.sroa.20.0 to i64
  %spec.select462 = select i1 %i.fu, ptr @0, ptr inttoptr (i64 1 to ptr)
  %.sroa.9179.0 = select i1 %i.ft, i64 1, i64 %spec.select461 ; 2 uses
  %.sroa.0177.0 = select i1 %i.ft, ptr @1, ptr %spec.select462 ; 2 uses
  %.not457 = icmp eq i64 %.sroa.10208.0621, 0
  br i1 %.not457, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bu, %.thread619
  %.sroa.9179.1 = phi i64 [ %.sroa.9179.2, %bb.bu ], [ %.sroa.9179.0, %.thread619 ]
  %.sroa.0177.1 = phi ptr [ %.sroa.0177.2, %bb.bu ], [ %.sroa.0177.0, %.thread619 ]
  %i.fv = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.fw = load i64, ptr %.sroa.5289.0..sroa_idx, align 8, !noundef !4
  br label %bb.ez

bb.br:                                            ; preds = %.thread619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %bb.br
  %.sroa.9179.2 = phi i64 [ 1, %bb.bt ], [ %.sroa.9179.0, %bb.br ]
  %.sroa.0177.2 = phi ptr [ @2, %bb.bt ], [ %.sroa.0177.0, %bb.br ]
  %.sroa.0371.0 = phi i64 [ %i.fy, %bb.bt ], [ %.sroa.10208.0621, %bb.br ]
  store i64 %.sroa.0371.0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4375.0..sroa_idx, align 8
  %i.fx = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull @3, ptr noundef nonnull %i.d)
          to label %bb.bv unwind label %.loopexit.split-lp633.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bt:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.fy = sub i64 0, %i.fq
  br label %bb.bs

bb.bu:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bq

bb.bv:                                            ; preds = %bb.bs
  br i1 %i.fx, label %bb.bw, label %bb.bu

bb.bw:                                            ; preds = %bb.bv
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.fz, align 1
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.gl

bb.bx:                                            ; preds = %bb.be
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.2612, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !noundef !4
  br label %bb.bz

bb.by:                                            ; preds = %bb.be
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.2612, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !noundef !4 ; 2 uses
  %i.ge = icmp sgt i64 %i.gd, -1
  br i1 %i.ge, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sroa.10188.0 = phi i64 [ %i.gb, %bb.bx ], [ %i.gd, %bb.by ] ; 2 uses
  store i64 %.sroa.10188.0, ptr %i.i, align 8
  %i.gf = icmp eq i64 %.sroa.10188.0, 0
  br i1 %i.gf, label %bb.cb, label %bb.cc

bb.ca:                                            ; preds = %bb.by, %bb.be
  %.sroa.7186.0 = phi i8 [ 3, %bb.be ], [ 4, %bb.by ]
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7186.0, ptr %i.gg, align 1
  store i8 1, ptr %0, align 8
  br label %bb.cj

bb.cb:                                            ; preds = %bb.cd, %bb.bz
  %i.gh = trunc nuw i8 %.sroa.027.0 to i1
  %.pre834 = load i64, ptr %.sroa.5289.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.gh, label %bb.ch, label %bb.cg

bb.cc:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  store ptr @_RNvXsA_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_5Octal3fmt, ptr %.sroa.4342.0..sroa_idx, align 8
  %i.gi = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull @3, ptr noundef nonnull %i.h)
          to label %bb.ce unwind label %.loopexit.split-lp633.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cd:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.cb

bb.ce:                                            ; preds = %bb.cc
  br i1 %i.gi, label %bb.cf, label %bb.cd

bb.cf:                                            ; preds = %bb.ce
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.gj, align 1
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.cj

bb.cg:                                            ; preds = %bb.ch, %bb.cb
  %.sroa.16.3 = phi i64 [ %spec.select466, %bb.ch ], [ %.sroa.16.0610, %bb.cb ]
  %.sroa.0142.3 = phi i64 [ %spec.select467, %bb.ch ], [ %.sroa.0142.0611, %bb.cb ]
  %i.gk = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ez

bb.ch:                                            ; preds = %bb.cb
  %i.gl = icmp sgt i64 %.pre834, -1
  call void @llvm.assume(i1 %i.gl)
  %i.gm = add nuw i64 %.pre834, 1                 ; 2 uses
  %.not456631 = icmp ugt i64 %.sroa.16.0610, %i.gm
  %.not456 = select i1 %i.ef, i1 %.not456631, i1 false ; 2 uses
  %spec.select466 = select i1 %.not456, i64 %.sroa.16.0610, i64 %i.gm
  %spec.select467 = select i1 %.not456, i64 %.sroa.0142.0611, i64 1
  br label %bb.cg

bb.ci:                                            ; preds = %.thread
  unreachable

bb.cj:                                            ; preds = %bb.cf, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.gl

bb.ck:                                            ; preds = %bb.bf
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.2612, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !noundef !4
  br label %bb.cm

bb.cl:                                            ; preds = %bb.bf
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.2612, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !noundef !4 ; 2 uses
  %i.gr = icmp sgt i64 %i.gq, -1
  br i1 %i.gr, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.sroa.10200.0 = phi i64 [ %i.go, %bb.ck ], [ %i.gq, %bb.cl ] ; 2 uses
  store i64 %.sroa.10200.0, ptr %i.g, align 8
  %i.gs = icmp eq i64 %.sroa.10200.0, 0
  br i1 %i.gs, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %bb.cl, %bb.bf
  %.sroa.7198.0 = phi i8 [ 3, %bb.bf ], [ 4, %bb.cl ]
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7198.0, ptr %i.gt, align 1
  store i8 1, ptr %0, align 8
  br label %bb.ct

bb.co:                                            ; preds = %bb.cq, %bb.cm
  %i.gu = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.gv = load i64, ptr %.sroa.5289.0..sroa_idx, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ez

bb.cp:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4358.0..sroa_idx, align 8
  %i.gw = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull @3, ptr noundef nonnull %i.f)
          to label %bb.cr unwind label %.loopexit.split-lp633.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cq:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.co

bb.cr:                                            ; preds = %bb.cp
  br i1 %i.gw, label %bb.cs, label %bb.cq

bb.cs:                                            ; preds = %bb.cr
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.gx, align 1
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.gl

bb.cu:                                            ; preds = %bb.bc
  br label %bb.cv

bb.cv:                                            ; preds = %bb.bc, %bb.cu
  %.sroa.0168.0 = phi i1 [ false, %bb.cu ], [ true, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.gy = load i64, ptr %.sroa.0.2612, align 8, !range !576, !noundef !4
  %i.gz = and i64 %i.gy, 6
  %switch = icmp eq i64 %i.gz, 4
  br i1 %switch, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.ha, align 1
  store i8 1, ptr %0, align 8
  br label %bb.di

bb.cx:                                            ; preds = %bb.cv
  %.sroa.8176.0.in = getelementptr inbounds nuw i8, ptr %.sroa.0.2612, i64 8
  %.sroa.8176.0 = load i64, ptr %.sroa.8176.0.in, align 8, !noundef !4 ; 2 uses
  store i64 %.sroa.8176.0, ptr %i.l, align 8
  %i.hb = icmp eq i64 %.sroa.8176.0, 0
  br i1 %i.hb, label %bb.cy, label %bb.cz

end_hunk_0
begin_hunk_1_@_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish:bb.a
  br i1 %.not22.i.jt1, label %.thread809, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %switch835 = icmp ult i8 %i.es, 6
  br i1 %switch835, label %bb.bd, label %.thread801

default.unreachable:                              ; preds = %bb.az, %bb.bm
  unreachable

bb.bd:                                            ; preds = %bb.bc, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az
  %i.et = phi i8 [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.es, %bb.bc ]
  %.sroa.0.3.i20.i799 = phi i8 [ %.sroa.0.3.i.ph.i.jt8, %bb.az ], [ %.sroa.0.3.i.ph.i.jt8, %bb.az ], [ %.sroa.0.3.i.ph.i.jt8, %bb.az ], [ %.sroa.0.3.i.ph.i.jt8, %bb.az ], [ %.sroa.0.3.i.ph.i.jt8, %bb.az ], [ %.sroa.0.3.i.ph.i.jt8, %bb.az ], [ %.sroa.0.3.i20.i.jt1, %bb.bc ]
  %.off.i = add nsw i8 %.sroa.0.3.i20.i799, -1
  %switch.i = icmp ult i8 %.off.i, 7
  br i1 %switch.i, label %.thread809, label %.thread801

bb.be:                                            ; preds = %bb.az, %bb.az
  br i1 %i.eo, label %.thread809, label %.thread801

.thread809:                                       ; preds = %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.bb, %bb.be, %bb.bd
  %i.eu = phi i8 [ %i.et, %bb.bd ], [ %i.er, %bb.az ], [ %i.es, %bb.bb ], [ %i.er, %bb.be ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ], [ %i.er, %bb.az ] ; 7 uses
  invoke void @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 1)
          to label %bb.bg unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.bf:                                            ; preds = %.loopexit602
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.ev, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gv

.thread801:                                       ; preds = %.noexc488.jt8, %.noexc490.jt8, %.noexc490.jt8, %bb.ba, %.noexc488.jt1, %.noexc490.jt1, %.noexc490.jt1, %bb.be, %bb.bd, %bb.az, %bb.az, %bb.bc
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ew, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gv

bb.bg:                                            ; preds = %.thread809
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
  br label %bb.gv

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
  br label %bb.gv

switch.lookup:                                    ; preds = %bb.bj
  %switch.cast = zext nneg i8 %i.eu to i15
  %switch.downshift = lshr i15 -16353, %switch.cast
  %switch.masked = trunc i15 %switch.downshift to i1
  br label %bb.bm

switch.hole_check:                                ; preds = %bb.bk
  %switch.maskindex = zext nneg i8 %i.eu to i16
  %switch.shifted = lshr i16 3077, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup859, label %bb.bl

switch.lookup859:                                 ; preds = %switch.hole_check
  %switch.cast860 = zext nneg i8 %i.eu to i12
  %switch.downshift862 = lshr i12 5, %switch.cast860
  %switch.masked863 = trunc i12 %switch.downshift862 to i1
  br label %bb.bm

bb.bm:                                            ; preds = %switch.lookup859, %switch.lookup, %bb.bj
  %.sroa.0116.0 = phi i1 [ false, %bb.bj ], [ %switch.masked863, %switch.lookup859 ], [ %switch.masked, %switch.lookup ] ; 2 uses
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
  %i.fg = load i64, ptr %.sroa.0.2572, align 8, !range !576, !noundef !4
  switch i64 %i.fg, label %bb.bz [
    i64 4, label %bb.bx
    i64 5, label %bb.by
  ]

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fh = load i64, ptr %.sroa.0.2572, align 8, !range !576, !noundef !4
  switch i64 %i.fh, label %bb.ck [
    i64 4, label %bb.ch
    i64 5, label %bb.ci
  ]

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fi = load i64, ptr %.sroa.0.2572, align 8, !range !576, !noundef !4
  switch i64 %i.fi, label %bb.cx [
    i64 4, label %bb.cu
    i64 5, label %bb.cv
  ]

bb.bq:                                            ; preds = %bb.bm
  %i.fj = load i64, ptr %.sroa.0.2572, align 8, !range !576, !noundef !4
  %i.fk = icmp eq i64 %i.fj, 7
  br i1 %i.fk, label %bb.dt, label %bb.du

bb.br:                                            ; preds = %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm
  %i.fl = load i64, ptr %.sroa.0.2572, align 8, !range !576, !noundef !4
  switch i64 %i.fl, label %bb.dv [
    i64 4, label %bb.dw
    i64 5, label %bb.dx
    i64 6, label %bb.dy
  ]

bb.bs:                                            ; preds = %bb.bm
  %..i = call i64 @llvm.umax.i64(i64 %.sroa.16.0570, i64 16)
  %.sroa.0142.4 = zext i1 %i.eg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.fm = load i64, ptr %.sroa.0.2572, align 8, !range !576, !noundef !4
  switch i64 %i.fm, label %bb.eh [
    i64 4, label %bb.ee
    i64 5, label %bb.ef
  ]

bb.bt:                                            ; preds = %bb.bm
  %.sroa.0.2.val = load i64, ptr %.sroa.0.2572, align 8, !range !576, !noundef !4
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
          to label %bb.ew unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.bx:                                            ; preds = %bb.bn
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.2572, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !4 ; 2 uses
  %i.fr = icmp slt i64 %i.fq, 0
  br i1 %i.fr, label %bb.bz, label %.thread579

bb.by:                                            ; preds = %bb.bn
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.2572, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !noundef !4 ; 3 uses
  %i.fu = icmp slt i64 %i.ft, 0
  br i1 %i.fu, label %bb.cd, label %.thread579

bb.bz:                                            ; preds = %bb.bx, %bb.bn
  %.sroa.7206.0 = phi i8 [ 3, %bb.bn ], [ 4, %bb.bx ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7206.0, ptr %i.fv, align 1
  store i8 1, ptr %0, align 8
  br label %bb.gv

.thread579:                                       ; preds = %bb.bx, %bb.by
  %.sroa.10208.0581 = phi i64 [ %i.ft, %bb.by ], [ %i.fq, %bb.bx ] ; 2 uses
  %i.fw = trunc nuw i8 %.sroa.23.0 to i1          ; 2 uses
  %i.fx = trunc nuw i8 %.sroa.20.0 to i1
  %spec.select461 = zext nneg i8 %.sroa.20.0 to i64
  %spec.select462 = select i1 %i.fx, ptr @0, ptr inttoptr (i64 1 to ptr)
  %.sroa.9179.0 = select i1 %i.fw, i64 1, i64 %spec.select461 ; 2 uses
  %.sroa.0177.0 = select i1 %i.fw, ptr @1, ptr %spec.select462 ; 2 uses
  %.not457 = icmp eq i64 %.sroa.10208.0581, 0
  br i1 %.not457, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.ce, %.thread579
  %.sroa.9179.1 = phi i64 [ %.sroa.9179.2, %bb.ce ], [ %.sroa.9179.0, %.thread579 ]
  %.sroa.0177.1 = phi ptr [ %.sroa.0177.2, %bb.ce ], [ %.sroa.0177.0, %.thread579 ]
  %i.fy = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.fz = load i64, ptr %.sroa.5289.0..sroa_idx, align 8, !noundef !4
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
          to label %bb.cf unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

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
  br label %bb.gv

bb.ch:                                            ; preds = %bb.bo
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.2572, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !noundef !4
  br label %bb.cj

bb.ci:                                            ; preds = %bb.bo
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.2572, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !noundef !4 ; 2 uses
  %i.gh = icmp sgt i64 %i.gg, -1
  br i1 %i.gh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.sroa.10188.0 = phi i64 [ %i.ge, %bb.ch ], [ %i.gg, %bb.ci ] ; 2 uses
  store i64 %.sroa.10188.0, ptr %i.i, align 8
  %i.gi = icmp eq i64 %.sroa.10188.0, 0
  br i1 %i.gi, label %bb.cl, label %bb.cm

bb.ck:                                            ; preds = %bb.ci, %bb.bo
  %.sroa.7186.0 = phi i8 [ 3, %bb.bo ], [ 4, %bb.ci ]
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7186.0, ptr %i.gj, align 1
  store i8 1, ptr %0, align 8
  br label %bb.ct

bb.cl:                                            ; preds = %bb.cn, %bb.cj
  %i.gk = trunc nuw i8 %.sroa.027.0 to i1
  %.pre = load i64, ptr %.sroa.5289.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.gk, label %bb.cr, label %bb.cq

bb.cm:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  store ptr @_RNvXsA_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_5Octal3fmt, ptr %.sroa.4342.0..sroa_idx, align 8
  %i.gl = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull @3, ptr noundef nonnull %i.h)
          to label %bb.co unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.cn:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.cl

bb.co:                                            ; preds = %bb.cm
  br i1 %i.gl, label %bb.cp, label %bb.cn

bb.cp:                                            ; preds = %bb.co
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.gm, align 1
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ct

bb.cq:                                            ; preds = %bb.cr, %bb.cl
  %.sroa.16.3 = phi i64 [ %spec.select466, %bb.cr ], [ %.sroa.16.0570, %bb.cl ]
  %.sroa.0142.3 = phi i64 [ %spec.select467, %bb.cr ], [ %.sroa.0142.0571, %bb.cl ]
  %i.gn = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.fj

bb.cr:                                            ; preds = %bb.cl
  %i.go = icmp sgt i64 %.pre, -1
  call void @llvm.assume(i1 %i.go)
  %i.gp = add nuw i64 %.pre, 1                    ; 2 uses
  %.not456590 = icmp ugt i64 %.sroa.16.0570, %i.gp
  %.not456 = select i1 %i.eg, i1 %.not456590, i1 false ; 2 uses
  %spec.select466 = select i1 %.not456, i64 %.sroa.16.0570, i64 %i.gp
  %spec.select467 = select i1 %.not456, i64 %.sroa.0142.0571, i64 1
  br label %bb.cq

bb.cs:                                            ; preds = %.thread585
  unreachable

bb.ct:                                            ; preds = %bb.cp, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.gv

bb.cu:                                            ; preds = %bb.bp
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.2572, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !noundef !4
  br label %bb.cw

bb.cv:                                            ; preds = %bb.bp
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.2572, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !noundef !4 ; 2 uses
  %i.gu = icmp sgt i64 %i.gt, -1
  br i1 %i.gu, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.10200.0 = phi i64 [ %i.gr, %bb.cu ], [ %i.gt, %bb.cv ] ; 2 uses
  store i64 %.sroa.10200.0, ptr %i.g, align 8
  %i.gv = icmp eq i64 %.sroa.10200.0, 0
  br i1 %i.gv, label %bb.cy, label %bb.cz

bb.cx:                                            ; preds = %bb.cv, %bb.bp
  %.sroa.7198.0 = phi i8 [ 3, %bb.bp ], [ 4, %bb.cv ]
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7198.0, ptr %i.gw, align 1
  store i8 1, ptr %0, align 8
  br label %bb.dd

bb.cy:                                            ; preds = %bb.da, %bb.cw
  %i.gx = load ptr, ptr %.sroa.4288.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.gy = load i64, ptr %.sroa.5289.0..sroa_idx, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.fj

bb.cz:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  store ptr @_RNvXsd_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4358.0..sroa_idx, align 8
  %i.gz = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4, ptr noundef nonnull @3, ptr noundef nonnull %i.f)
          to label %bb.db unwind label %.loopexit.split-lp592.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.da:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.cy

bb.db:                                            ; preds = %bb.cz
  br i1 %i.gz, label %bb.dc, label %bb.da

bb.dc:                                            ; preds = %bb.db
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.ha, align 1
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.gv

bb.de:                                            ; preds = %bb.bm
  br label %bb.df

bb.df:                                            ; preds = %bb.bm, %bb.de
  %.sroa.0168.0 = phi i1 [ false, %bb.de ], [ true, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.hb = load i64, ptr %.sroa.0.2572, align 8, !range !576, !noundef !4
  %i.hc = and i64 %i.hb, 6
  %switch = icmp eq i64 %i.hc, 4
  br i1 %switch, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.hd, align 1
  store i8 1, ptr %0, align 8
  br label %bb.ds

bb.dh:                                            ; preds = %bb.df
  %.sroa.8176.0.in = getelementptr inbounds nuw i8, ptr %.sroa.0.2572, i64 8
  %.sroa.8176.0 = load i64, ptr %.sroa.8176.0.in, align 8, !noundef !4 ; 2 uses
  store i64 %.sroa.8176.0, ptr %i.l, align 8
  %i.he = icmp eq i64 %.sroa.8176.0, 0
  br i1 %i.he, label %bb.di, label %bb.dj

end_hunk_1
