Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.12?download=true
inline.NumInlined: 170
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter21print_posix_time_zone:_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i: ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i, %bb.e
  %i.aq = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter35print_posix_time_offset_seconds_wtr(i32 noundef %.val.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.ar = extractvalue { i64, ptr } %i.aq, 0
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i8, ptr %i.at, align 8, !range !11, !alias.scope !758, !noundef !6 ; 2 uses
  %.not.i = icmp eq i8 %i.au, -1
  br i1 %.not.i, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  switch i8 %i.au, label %default.unreachable [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !767, !noundef !6
  %i.ay = zext i8 %i.ax to i64
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !767, !nonnull !6, !noundef !6
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !767, !noundef !6
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !767, !nonnull !6, !noundef !6
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !767, !noundef !6
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
  %i.bl = load i32, ptr %i.bk, align 8, !alias.scope !767, !noundef !6 ; 3 uses
  %i.bm = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.val.i, i32 3600) ; 2 uses
  %i.bn = extractvalue { i32, i1 } %i.bm, 0       ; 2 uses
  %i.bo = extractvalue { i32, i1 } %i.bm, 1
  %.not29.i.i = xor i1 %i.bo, true
  %i.bp = add i32 %i.bn, 93599
  %or.cond.i.i = icmp ult i32 %i.bp, 187199
  %or.cond30.i.i = and i1 %or.cond.i.i, %.not29.i.i
  %.not.i.i = icmp eq i32 %i.bl, %i.bn
  %or.cond31.i.i = and i1 %or.cond30.i.i, %.not.i.i
  br i1 %or.cond31.i.i, label %bb.v, label %bb.q, !prof !768

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.bq = icmp sgt i32 %i.bl, 0
  br i1 %i.bq, label %bb.r, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.br = load ptr, ptr %i.a, align 8, !alias.scope !771, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !772, !noundef !6
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bv = load i16, ptr %i.bu, align 8, !noalias !772, !noundef !6 ; 2 uses
  %i.bw = zext i16 %i.bv to i64                   ; 2 uses
  %i.bx = icmp eq i64 %i.bt, %i.bw
  br i1 %i.bx, label %bb.s, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i.i, !prof !9

bb.s:                                             ; preds = %bb.r
  %i.by = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #14 ; 2 uses
  %i.bz = extractvalue { i64, ptr } %i.by, 0
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !771 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %.pre4.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !773
  %.phi.trans.insert5.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %.pre6.i.i.i = load i16, ptr %.phi.trans.insert5.i.i.i, align 8, !alias.scope !773 ; 2 uses
  %.pre7.i.i.i = zext i16 %.pre6.i.i.i to i64     ; 2 uses
  %i.cb = icmp eq i64 %.pre4.i.i.i, %.pre7.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  br i1 %i.cb, label %bb.u, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i.i, !prof !17

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !773
  unreachable

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i.i: ; preds = %bb.t, %bb.r
  %i.cc = phi ptr [ %.pre.i.i.i, %bb.t ], [ %i.br, %bb.r ] ; 2 uses
  %i.cd = phi i16 [ %.pre6.i.i.i, %bb.t ], [ %i.bv, %bb.r ]
  %.pre-phi11.i.i.i = phi i64 [ %.pre7.i.i.i, %bb.t ], [ %i.bw, %bb.r ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load ptr, ptr %i.cc, align 8, !alias.scope !773, !nonnull !6, !noundef !6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.pre-phi11.i.i.i
  store i8 45, ptr %i.cg, align 1, !noalias !773
  %i.ch = add i16 %i.cd, 1
  store i16 %i.ch, ptr %i.ce, align 8, !alias.scope !773
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i: ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit.i.i.i, %bb.q
  %i.ci = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter35print_posix_time_offset_seconds_wtr(i32 noundef %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.cj = extractvalue { i64, ptr } %i.ci, 0
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.v

bb.v:                                             ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %i.cl = load ptr, ptr %i.a, align 8, !alias.scope !775, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !774, !noundef !6
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cp = load i16, ptr %i.co, align 8, !noalias !774, !noundef !6 ; 2 uses
  %i.cq = zext i16 %i.cp to i64                   ; 2 uses
  %i.cr = icmp eq i64 %i.cn, %i.cq
  br i1 %i.cr, label %bb.w, label %.thread.i19.i, !prof !9

bb.w:                                             ; preds = %bb.v
  %i.cs = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #14 ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.pre.i21.i = load ptr, ptr %i.a, align 8, !alias.scope !775 ; 3 uses
  %.phi.trans.insert.i22.i = getelementptr inbounds nuw i8, ptr %.pre.i21.i, i64 8
  %.pre8.i.i = load i64, ptr %.phi.trans.insert.i22.i, align 8, !alias.scope !776
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %.pre.i21.i, i64 16
  %.pre10.i.i = load i16, ptr %.phi.trans.insert9.i.i, align 8, !alias.scope !776 ; 2 uses
  %.pre11.i.i = zext i16 %.pre10.i.i to i64       ; 2 uses
  %i.cv = icmp eq i64 %.pre8.i.i, %.pre11.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !776)
  br i1 %i.cv, label %bb.y, label %.thread.i19.i, !prof !17

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !776
  unreachable

.thread.i19.i:                                    ; preds = %bb.x, %bb.v
  %i.cw = phi ptr [ %.pre.i21.i, %bb.x ], [ %i.cl, %bb.v ] ; 2 uses
  %i.cx = phi i16 [ %.pre10.i.i, %bb.x ], [ %i.cp, %bb.v ]
  %.pre-phi18.i.i = phi i64 [ %.pre11.i.i, %bb.x ], [ %i.cq, %bb.v ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cz = load ptr, ptr %i.cw, align 8, !alias.scope !776, !nonnull !6, !noundef !6
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.pre-phi18.i.i
  store i8 44, ptr %i.da, align 1, !noalias !776
  %i.db = add i16 %i.cx, 1
  store i16 %i.db, ptr %i.cy, align 8, !alias.scope !776
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dd = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_posix_day_time_wtr(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.dc, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.de = extractvalue { i64, ptr } %i.dd, 0
  %i.df = trunc nuw i64 %i.de to i1
  br i1 %i.df, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.z

bb.z:                                             ; preds = %.thread.i19.i
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.dg = load ptr, ptr %i.a, align 8, !alias.scope !778, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !noalias !779, !noundef !6
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dk = load i16, ptr %i.dj, align 8, !noalias !779, !noundef !6 ; 2 uses
  %i.dl = zext i16 %i.dk to i64                   ; 2 uses
  %i.dm = icmp eq i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.aa, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit, !prof !9

bb.aa:                                            ; preds = %bb.z
  %i.dn = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #14, !noalias !780 ; 2 uses
  %i.do = extractvalue { i64, ptr } %i.dn, 0
  %i.dp = trunc nuw i64 %i.do to i1
  br i1 %i.dp, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.pre.i37.i.i = load ptr, ptr %i.a, align 8, !alias.scope !778 ; 3 uses
  %.phi.trans.insert.i38.i.i = getelementptr inbounds nuw i8, ptr %.pre.i37.i.i, i64 8
  %.pre4.i39.i.i = load i64, ptr %.phi.trans.insert.i38.i.i, align 8, !alias.scope !781, !noalias !780
  %.phi.trans.insert5.i40.i.i = getelementptr inbounds nuw i8, ptr %.pre.i37.i.i, i64 16
  %.pre6.i41.i.i = load i16, ptr %.phi.trans.insert5.i40.i.i, align 8, !alias.scope !781, !noalias !780 ; 2 uses
  %.pre7.i42.i.i = zext i16 %.pre6.i41.i.i to i64 ; 2 uses
  %i.dq = icmp eq i64 %.pre4.i39.i.i, %.pre7.i42.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !781)
  br i1 %i.dq, label %bb.ac, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit, !prof !17

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !782
  unreachable

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread: ; preds = %bb.aa, %.thread.i19.i, %bb.w, %bb.s, %bb.o, %bb.g, %bb.d, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i
  %.pn10 = phi { i64, ptr } [ %i.dd, %.thread.i19.i ], [ %i.bh, %bb.o ], [ %i.by, %bb.s ], [ %i.ci, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i.i ], [ %i.ag, %bb.g ], [ %i.cs, %bb.w ], [ %i.u, %bb.d ], [ %i.aq, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter22print_posix_offset_wtr.exit.i ], [ %i.dn, %bb.aa ]
  %.sroa.5.0.i.ph = extractvalue { i64, ptr } %.pn10, 1
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit: ; preds = %bb.z, %bb.ab
  %i.dr = phi ptr [ %.pre.i37.i.i, %bb.ab ], [ %i.dg, %bb.z ] ; 2 uses
  %i.ds = phi i16 [ %.pre6.i41.i.i, %bb.ab ], [ %i.dk, %bb.z ]
  %.pre-phi11.i35.i.i = phi i64 [ %.pre7.i42.i.i, %bb.ab ], [ %i.dl, %bb.z ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.du = load ptr, ptr %i.dr, align 8, !alias.scope !781, !noalias !780, !nonnull !6, !noundef !6
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %.pre-phi11.i35.i.i
  store i8 44, ptr %i.dv, align 1, !noalias !782
  %i.dw = add i16 %i.ds, 1
  store i16 %i.dw, ptr %i.dt, align 8, !alias.scope !781, !noalias !780
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dy = call fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_posix_day_time_wtr(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.dx, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  %i.dz = extractvalue { i64, ptr } %i.dy, 0
  %i.ea = trunc nuw i64 %i.dz to i1
  %4 = extractvalue { i64, ptr } %i.dy, 1
  br i1 %i.ea, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7: ; preds = %bb.j, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %.sroa.5.0.copyload = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6
  %i.eb = load ptr, ptr %.sroa.0.0.copyload, align 8, !noalias !783, !nonnull !6, !noundef !6
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 8, !noalias !783, !noundef !6
  %i.ee = zext i16 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !invariant.load !6, !noalias !783, !nonnull !6
  %i.eh = call { i64, ptr } %i.eg(ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef %i.ee) #16, !noalias !783, !inline_history !0 ; 2 uses
  %i.ei = extractvalue { i64, ptr } %i.eh, 0
  %i.ej = trunc nuw i64 %i.ei to i1
  br i1 %i.ej, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7
  %i.ek = extractvalue { i64, ptr } %i.eh, 1
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

bb.ae:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread7
  store i16 0, ptr %i.ec, align 8, !noalias !783
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread
  %.sroa.5.0.i.ph.pn.pn = phi ptr [ %4, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit ], [ %.sroa.5.0.i.ph, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread ], [ %i.ek, %bb.ad ], [ undef, %bb.ae ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit ], [ 1, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter25print_posix_time_zone_wtr.exit.thread ], [ 1, %bb.ad ], [ 0, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.el = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.em = insertvalue { i64, ptr } %i.el, ptr %.sroa.5.0.i.ph.pn.pn, 1
  ret { i64, ptr } %i.em
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_offset_rounded_buf(i32 %.0.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %.0.val, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.d = load i64, ptr %i.b, align 8, !alias.scope !794, !noundef !6 ; 2 uses
  %i.e = load i16, ptr %i.c, align 8, !alias.scope !794, !noundef !6 ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %.not.i7 = icmp eq i64 %i.d, %i.f
  br i1 %.not.i7, label %bb.c, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit8, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !794
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit8: ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !794, !nonnull !6, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  store i8 43, ptr %i.h, align 1, !noalias !794
  %i.i = add i16 %i.e, 1                          ; 2 uses
  store i16 %i.i, ptr %i.c, align 8, !alias.scope !794
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.j = load i64, ptr %i.b, align 8, !alias.scope !795, !noundef !6 ; 2 uses
  %i.k = load i16, ptr %i.c, align 8, !alias.scope !795, !noundef !6 ; 2 uses
  %i.l = zext i16 %i.k to i64                     ; 2 uses
  %.not.i5 = icmp eq i64 %i.j, %i.l
  br i1 %.not.i5, label %bb.e, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit6, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !795
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit6: ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8, !alias.scope !795, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 45, ptr %i.n, align 1, !noalias !795
  %i.o = add i16 %i.k, 1                          ; 2 uses
  store i16 %i.o, ptr %i.c, align 8, !alias.scope !795
  %i.p = sub i32 0, %.0.val
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit6, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit8
  %i.q = phi ptr [ %i.m, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit6 ], [ %i.g, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit8 ] ; 3 uses
  %i.r = phi i16 [ %i.o, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit6 ], [ %i.i, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit8 ] ; 4 uses
  %i.s = phi i64 [ %i.j, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit6 ], [ %i.d, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit8 ] ; 3 uses
  %.sroa.03.0 = phi i32 [ %i.p, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit6 ], [ %.0.val, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit8 ] ; 3 uses
  %i.t = udiv i32 %.sroa.03.0, 3600
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = udiv i32 %.sroa.03.0, 60
  %i.w = urem i32 %i.v, 60
  %i.x = trunc nuw nsw i32 %i.w to i8             ; 2 uses
  %i.y = urem i32 %.sroa.03.0, 60
  %i.z = icmp samesign ugt i32 %i.y, 29
  br i1 %i.z, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call { i8, i8 } @_RNvNvMs1_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB7_6Offset23round_to_nearest_minute5round(i8 noundef %i.u, i8 noundef %i.x) #14 ; 2 uses
  %i.ab = extractvalue { i8, i8 } %i.aa, 0
  %i.ac = extractvalue { i8, i8 } %i.aa, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.6.0 = phi i8 [ %i.ac, %bb.g ], [ %i.x, %bb.f ] ; 2 uses
  %.sroa.02.0 = phi i8 [ %i.ab, %bb.g ], [ %i.u, %bb.f ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.ad = icmp ult i8 %.sroa.02.0, 100
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15, !noalias !796
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = zext i16 %i.r to i64                    ; 2 uses
  %i.ag = sub nuw i64 %i.s, %i.af
  %i.ah = icmp ugt i64 %i.ag, 1
  br i1 %i.ah, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit4, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #15, !noalias !796
  unreachable

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit4: ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af ; 2 uses
  %i.aj = shl nuw i8 %.sroa.02.0, 1
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @5, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !noalias !796, !noundef !6
  store i8 %i.am, ptr %i.ai, align 1, !noalias !796
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !796, !noundef !6
  store i8 %i.ap, ptr %i.an, align 1, !noalias !796
  %i.aq = add i16 %i.r, 2                         ; 2 uses
  store i16 %i.aq, ptr %i.ae, align 8, !alias.scope !796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %.not.i = icmp eq i64 %i.s, %i.ar
  br i1 %.not.i, label %bb.l, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit, !prof !9

bb.l:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit4
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !797
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit: ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit4
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ar
  store i8 58, ptr %i.as, align 1, !noalias !797
  %i.at = add i16 %i.r, 3                         ; 2 uses
  store i16 %i.at, ptr %i.ae, align 8, !alias.scope !797
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.au = icmp ult i8 %.sroa.6.0, 100
  br i1 %i.au, label %bb.n, label %bb.m, !prof !8

bb.m:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15, !noalias !798
  unreachable

bb.n:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  %i.av = zext i16 %i.at to i64                   ; 2 uses
  %i.aw = sub nuw i64 %i.s, %i.av
  %i.ax = icmp ugt i64 %i.aw, 1
  br i1 %i.ax, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #15, !noalias !798
  unreachable

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit: ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av ; 2 uses
  %i.az = shl nuw i8 %.sroa.6.0, 1
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @5, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !798, !noundef !6
  store i8 %i.bc, ptr %i.ay, align 1, !noalias !798
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !noalias !798, !noundef !6
  store i8 %i.bf, ptr %i.bd, align 1, !noalias !798
  %i.bg = add i16 %i.r, 5
  store i16 %i.bg, ptr %i.ae, align 8, !alias.scope !798
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter24print_offset_rounded_wtr(i32 %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i32 %.0.val, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !823, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !823, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i16, ptr %i.e, align 8, !noalias !823, !noundef !6 ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit55, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.i = tail call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #14 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit55.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !alias.scope !823 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre18 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !824
  %.phi.trans.insert19 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre20 = load i16, ptr %.phi.trans.insert19, align 8, !alias.scope !824 ; 2 uses
  %.pre38 = zext i16 %.pre20 to i64               ; 2 uses
  %i.l = icmp eq i64 %.pre18, %.pre38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  br i1 %i.l, label %bb.e, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit55, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !824
  unreachable

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter16write_ascii_char.exit55: ; preds = %bb.b, %bb.d
  %i.m = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
end_hunk_0
