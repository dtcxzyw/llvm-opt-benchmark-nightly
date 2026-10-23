Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/jiff-40853fb6ac434a7c.jiff.3ee8fab6f2ec3df8-cgu.07?download=true
inline.NumInlined: 177
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_time_zone:_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 263
  %i.x = load i8, ptr %i.w, align 1, !noalias !538, !noundef !5
  %i.y = zext i8 %i.x to i64
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !538, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 248
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !538, !noundef !5
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !538, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 248
  %i.ag = load i64, ptr %i.af, align 8, !noalias !538, !noundef !5
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 249
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 279
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !538, !noundef !5
  %i.ak = zext i8 %i.aj to i64
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  %i.am = load ptr, ptr %i.al, align 8, !noalias !538, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %i.ao = load i64, ptr %i.an, align 8, !noalias !538, !noundef !5
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !538, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %i.as = load i64, ptr %i.ar, align 8, !noalias !538, !noundef !5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %.sroa.9.0.i.ph.i = phi i64 [ %i.ao, %bb.j ], [ %i.ak, %bb.i ], [ %i.ac, %bb.g ], [ %i.y, %bb.f ], [ %i.ag, %bb.h ], [ 3, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit ], [ %i.as, %bb.k ] ; 6 uses
  %.sroa.0.0.i21.ph.i = phi ptr [ %i.am, %bb.j ], [ %i.ah, %bb.i ], [ %i.aa, %bb.g ], [ %i.v, %bb.f ], [ %i.ae, %bb.h ], [ @15, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit ], [ %i.aq, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !540, !nonnull !5, !align !13, !noundef !5 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noalias !541, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = load i16, ptr %i.aw, align 8, !noalias !541, !noundef !5 ; 2 uses
  %i.ay = zext i16 %i.ax to i64                   ; 2 uses
  %i.az = sub i64 %i.av, %i.ay
  %i.ba = icmp ugt i64 %.sroa.9.0.i.ph.i, %i.az
  br i1 %i.ba, label %bb.m, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i, !prof !8

bb.m:                                             ; preds = %bb.l
  %i.bb = call { i64, ptr } @_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !542 ; 2 uses
  %i.bc = extractvalue { i64, ptr } %i.bb, 0
  %i.bd = trunc nuw i64 %i.bc to i1
  br i1 %i.bd, label %bb.n, label %bb.o

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i: ; preds = %bb.o, %bb.l
  %.pre-phi.i = phi i64 [ %i.br, %bb.o ], [ %i.ay, %bb.l ]
  %i.be = phi i16 [ %i.bq, %bb.o ], [ %i.ax, %bb.l ]
  %i.bf = phi ptr [ %i.bm, %bb.o ], [ %i.at, %bb.l ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bf, align 8, !alias.scope !543, !noalias !542, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.pre-phi.i
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull %i.bi, i64 noundef %.sroa.9.0.i.ph.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i21.ph.i, i64 noundef %.sroa.9.0.i.ph.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !544
  %i.bj = trunc i64 %.sroa.9.0.i.ph.i to i16
  %i.bk = add i16 %i.be, %i.bj
  store i16 %i.bk, ptr %i.bg, align 8, !alias.scope !543, !noalias !538
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i

bb.n:                                             ; preds = %bb.m
  %i.bl = extractvalue { i64, ptr } %i.bb, 1
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.b, align 8, !alias.scope !540, !nonnull !5, !align !13, !noundef !5 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !542, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bq = load i16, ptr %i.bp, align 8, !noalias !542, !noundef !5 ; 2 uses
  %i.br = zext i16 %i.bq to i64                   ; 2 uses
  %i.bs = sub i64 %i.bo, %i.br
  %i.bt = icmp ugt i64 %.sroa.9.0.i.ph.i, %i.bs
  br i1 %i.bt, label %bb.p, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i

bb.p:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr %i.g, align 8, !alias.scope !540, !nonnull !5, !noundef !5
  %i.bv = load ptr, ptr %i.h, align 8, !alias.scope !540, !nonnull !5, !align !13, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !invariant.load !5, !noalias !542, !nonnull !5
  %i.by = call { i64, ptr } %i.bx(ptr noundef nonnull %i.bu, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i21.ph.i, i64 noundef %.sroa.9.0.i.ph.i), !noalias !538, !inline_history !499 ; 2 uses
  %i.bz = extractvalue { i64, ptr } %i.by, 0
  %i.ca = extractvalue { i64, ptr } %i.by, 1
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i: ; preds = %bb.p, %bb.n, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i
  %.sroa.4.0.i16.i = phi ptr [ %i.bl, %bb.n ], [ %i.ca, %bb.p ], [ undef, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i ]
  %.sroa.0.0.i17.i = phi i64 [ 1, %bb.n ], [ %i.bz, %bb.p ], [ 0, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i ]
  %i.cb = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i17.i, 0
  %i.cc = insertvalue { i64, ptr } %i.cb, ptr %.sroa.4.0.i16.i, 1
  br label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i: ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull %i.d, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !546
  store i16 11, ptr %i.f, align 8, !alias.scope !545, !noalias !538
  br label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

bb.q:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !547
  br label %bb.t

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !547
  %i.cd = call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef nonnull %i.p), !noalias !548 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.ce = getelementptr i8, ptr %.val.i, i64 -5   ; 3 uses
  %i.cf = call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef %i.ce), !noalias !538 ; 0 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !547
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.cg = call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef nonnull %i.ce), !noalias !548 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.ch = call { ptr, i64 } @_RNvMNtNtCs5oRRSLMQMUC_4jiff2tz8timezoneNtB2_8TimeZone16kind_description(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !noalias !550 ; 2 uses
  %i.ci = extractvalue { ptr, i64 } %i.ch, 0
  %i.cj = extractvalue { ptr, i64 } %i.ch, 1
  %i.ck = call noundef ptr @_RNvXNtNtNtCs5oRRSLMQMUC_4jiff5error2tz8timezoneNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtB2_5ErrorE4from(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef %i.cj), !noalias !550 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ck, ptr %i.cl, align 8, !alias.scope !549, !noalias !547
  store i32 1, ptr %i.a, align 8, !alias.scope !549, !noalias !547
  %i.cm = icmp eq ptr %i.ck, null
  br i1 %i.cm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = atomicrmw add ptr %i.ck, i64 -1 release, align 8, !noalias !551
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5oRRSLMQMUC_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cl), !noalias !552
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !547
  switch i64 %i.j, label %bb.w [
    i64 1, label %bb.af
    i64 2, label %bb.af
    i64 3, label %bb.x
    i64 0, label %bb.af
    i64 4, label %bb.z
    i64 5, label %bb.ae
  ]

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  unreachable

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  %i.cp = trunc i64 %i.i to i32
  %i.cq = ashr i32 %i.cp, 4
  %i.cr = add nsw i32 %i.cq, 93599
  %or.cond.i.i25.i = icmp ult i32 %i.cr, 187199
  br i1 %or.cond.i.i25.i, label %bb.af, label %bb.y, !prof !10

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #13, !noalias !552
  unreachable

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  %i.cs = getelementptr i8, ptr %.val.i, i64 -4   ; 2 uses
  %i.ct = call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef %i.cs), !noalias !552 ; 0 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ]
  br label %bb.af

_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit54.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !547
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.l, ptr %i.cu, align 4, !alias.scope !549, !noalias !547
  store i32 0, ptr %i.a, align 8, !alias.scope !549, !noalias !547
  %i.cv = icmp slt i32 %i.l, 0
  %. = select i1 %i.cv, i8 45, i8 43
  store i8 %., ptr %i.d, align 1, !noalias !538
  %i.cw = sdiv i32 %i.l, 3600
  %i.cx = trunc nsw i32 %i.cw to i8
  %.sroa.030.0.i.i = call i8 @llvm.abs.i8(i8 %i.cx, i1 true)
  %i.cy = sdiv i32 %i.l, 60
  %.lhs.trunc.i = trunc nsw i32 %i.cy to i16
  %i.cz = srem i16 %.lhs.trunc.i, 60              ; 2 uses
  %i.da = trunc nsw i16 %i.cz to i8               ; 2 uses
  %i.db = icmp slt i16 %i.cz, 0
  %i.dc = sub nsw i8 0, %i.da
  %.sroa.031.0.i.i = select i1 %i.db, i8 %i.dc, i8 %i.da ; 2 uses
  %i.dd = srem i32 %i.l, 60                       ; 3 uses
  %i.de = trunc nsw i32 %i.dd to i8               ; 2 uses
  %i.df = icmp slt i32 %i.dd, 0
  %i.dg = sub nsw i8 0, %i.de
  %.sroa.032.0.i.i = select i1 %i.df, i8 %i.dg, i8 %i.de ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.di = shl nuw nsw i8 %.sroa.030.0.i.i, 1
  %i.dj = zext nneg i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @5, i64 %i.dj ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !noalias !553, !noundef !5
  store i8 %i.dl, ptr %i.dh, align 1, !noalias !554
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !noalias !553, !noundef !5
  store i8 %i.do, ptr %i.dm, align 1, !noalias !554
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 58, ptr %i.dp, align 1, !noalias !555
  store i16 4, ptr %i.f, align 8, !alias.scope !556, !noalias !538
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.dq = icmp ult i8 %.sroa.031.0.i.i, 100
  br i1 %i.dq, label %bb.aa, label %.invoke74.i, !prof !7

bb.aa:                                            ; preds = %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit54.thread.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ds = shl nuw nsw i8 %.sroa.031.0.i.i, 1
  %i.dt = zext nneg i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @5, i64 %i.dt ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !noalias !558, !noundef !5
  store i8 %i.dv, ptr %i.dr, align 1, !noalias !559
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !558, !noundef !5
  store i8 %i.dy, ptr %i.dw, align 1, !noalias !559
  store i16 6, ptr %i.f, align 8, !alias.scope !557, !noalias !538
  %.not.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i, label %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit59.thread.i.i

_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit59.thread.i.i: ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i8 58, ptr %i.dz, align 1, !noalias !560
  store i16 7, ptr %i.f, align 8, !alias.scope !561, !noalias !538
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.ea = icmp ult i8 %.sroa.032.0.i.i, 100
  br i1 %i.ea, label %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hEBa_.exit.i.i, label %.invoke74.i, !prof !7

.invoke74.i:                                      ; preds = %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit59.thread.i.i, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit54.thread.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13
          to label %.cont75.i unwind label %bb.ab, !noalias !538

.cont75.i:                                        ; preds = %.invoke74.i
  unreachable

_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hEBa_.exit.i.i: ; preds = %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit59.thread.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.ec = shl nuw nsw i8 %.sroa.032.0.i.i, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @5, i64 %i.ed ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !noalias !563, !noundef !5
  store i8 %i.ef, ptr %i.eb, align 1, !noalias !564
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !noalias !563, !noundef !5
  store i8 %i.ei, ptr %i.eg, align 1, !noalias !564
  store i16 9, ptr %i.f, align 8, !alias.scope !562, !noalias !538
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i

bb.ab:                                            ; preds = %.invoke74.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_(ptr noalias noundef align 8 dereferenceable(16) %i.a) #14
          to label %bb.ad unwind label %bb.ac, !noalias !538

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i: ; preds = %bb.aa, %_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hEBa_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !547
  br label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !538
  unreachable

bb.ad:                                            ; preds = %bb.ab
  resume { ptr, i32 } %i.ej

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  %i.el = getelementptr i8, ptr %.val.i, i64 -5   ; 3 uses
  %i.em = call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef %i.el), !noalias !552
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 %i.en
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = call { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter21print_posix_time_zone(ptr noalias nonnull readonly captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @25)
  br label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

bb.af:                                            ; preds = %bb.z, %bb.x, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  %i.er = call noundef ptr @_RNvXs_NtNtNtCs5oRRSLMQMUC_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtB4_5ErrorE4from(i64 53), !noalias !552
  %i.es = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.er, 1
  br label %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit: ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i, %bb.ae, %bb.af
  %.merged.i = phi { i64, ptr } [ %i.cc, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i ], [ { i64 0, ptr undef }, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i ], [ %i.eq, %bb.ae ], [ %i.es, %bb.af ], [ { i64 0, ptr undef }, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5oRRSLMQMUC_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i ] ; 2 uses
  %i.et = extractvalue { i64, ptr } %.merged.i, 0
  %i.eu = trunc nuw i64 %i.et to i1
  br i1 %i.eu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ev = extractvalue { i64, ptr } %.merged.i, 1
  br label %bb.ak

bb.ah:                                            ; preds = %_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %.sroa.5.0.copyload = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.ew = load ptr, ptr %.sroa.0.0.copyload, align 8, !noalias !565, !nonnull !5, !noundef !5
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 8, !noalias !565, !noundef !5
  %i.ez = zext i16 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !invariant.load !5, !noalias !565, !nonnull !5
  %i.fc = call { i64, ptr } %i.fb(ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ew, i64 noundef %i.ez), !noalias !565, !inline_history !0 ; 2 uses
  %i.fd = extractvalue { i64, ptr } %i.fc, 0
  %i.fe = trunc nuw i64 %i.fd to i1
  br i1 %i.fe, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ff = extractvalue { i64, ptr } %i.fc, 1
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

bb.aj:                                            ; preds = %bb.ah
  store i16 0, ptr %i.ex, align 8, !noalias !565
  br label %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit: ; preds = %bb.ai, %bb.aj
  %.sroa.3.0.i = phi ptr [ %i.ff, %bb.ai ], [ undef, %bb.aj ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.ai ], [ 0, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit, %bb.ag
  %.pn = phi ptr [ %i.ev, %bb.ag ], [ %.sroa.3.0.i, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit ]
  %.sroa.0.0 = phi i64 [ 1, %bb.ag ], [ %.sroa.0.0.i, %_RNvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit ]
  %i.fg = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.fh = insertvalue { i64, ptr } %i.fg, ptr %.pn, 1
  ret { i64, ptr } %i.fh
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_timestamp(ptr noalias noundef readonly captures(none) dereferenceable(4) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [33 x i8], align 1                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !5, !alias.scope !578, !nonnull !5
  %i.j = tail call noundef align 8 ptr %i.i(ptr noundef nonnull %2), !noalias !578, !inline_history !568 ; 5 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.b, label %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit

_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit: ; preds = %bb.a
  %i.k = icmp ne i32 %i.e, 0
  %i.l = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.k, i1 true, i1 %i.l
  %.sroa.0.0 = select i1 %or.cond, i64 33, i64 23
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef range(i64 23, 34) %.sroa.0.0), !noalias !578
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !579, !noalias !578, !noundef !5 ; 4 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o), !noalias !578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !580
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !582, !noalias !578, !nonnull !5, !noundef !5
  %i.r = load i64, ptr %i.j, align 8, !range !15, !alias.scope !582, !noalias !578, !noundef !5
  %i.s = sub nsw i64 %i.r, %i.n
  %.sroa.0.0.i8 = tail call noundef range(i64 0, 65536) i64 @llvm.umin.i64(i64 %i.s, i64 65535)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  store ptr %i.t, ptr %i.a, align 8, !alias.scope !581, !noalias !578
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0.i8, ptr %i.u, align 8, !alias.scope !581, !noalias !578
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.v, align 8, !alias.scope !581, !noalias !578
  call fastcc void @_RNCNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB4_15DateTimePrinter15print_timestamp0Ba_(ptr nonnull %0, ptr nonnull %1, ptr noalias noundef align 8 dereferenceable(24) %i.a)
  %i.w = load i16, ptr %i.v, align 8, !noalias !580, !noundef !5
  %i.x = zext i16 %i.w to i64
  %i.y = add nuw i64 %i.n, %i.x
  store i64 %i.y, ptr %i.m, align 8, !alias.scope !579, !noalias !578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !580
  br label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKj21_NCNvMNtNtB8_8temporal7printerNtB1m_15DateTimePrinter15print_timestamp0EBa_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !583
  store ptr %i.c, ptr %i.b, align 8, !noalias !583
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 33, ptr %i.z, align 8, !noalias !583
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i16 0, ptr %i.aa, align 8, !noalias !583
  call fastcc void @_RNCNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB4_15DateTimePrinter15print_timestamp0Ba_(ptr nonnull %0, ptr nonnull %1, ptr noalias noundef align 8 dereferenceable(24) %i.b)
  %i.ab = load ptr, ptr %i.b, align 8, !noalias !583, !nonnull !5, !noundef !5
  %i.ac = load i16, ptr %i.aa, align 8, !noalias !583, !noundef !5
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !5, !alias.scope !578, !nonnull !5
  %i.ag = call { i64, ptr } %i.af(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad), !noalias !578, !inline_history !568 ; 2 uses
  %i.ah = extractvalue { i64, ptr } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ag, 1
  %i.aj = trunc nuw i64 %i.ah to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !583
  %..i = select i1 %i.aj, ptr %i.ai, ptr undef
  br label %_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKj21_NCNvMNtNtB8_8temporal7printerNtB1m_15DateTimePrinter15print_timestamp0EBa_.exit

_RINvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB6_14BorrowedBuffer11with_writerKj21_NCNvMNtNtB8_8temporal7printerNtB1m_15DateTimePrinter15print_timestamp0EBa_.exit: ; preds = %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit, %bb.b
  %.sroa.5.0.i = phi ptr [ undef, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit ], [ %..i, %bb.b ]
  %.sroa.0.0.i = phi i64 [ 0, %_RNvMs0_NtNtCs5oRRSLMQMUC_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit ], [ %i.ah, %bb.b ]
  %i.ak = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.al = insertvalue { i64, ptr } %i.ak, ptr %.sroa.5.0.i, 1
  ret { i64, ptr } %i.al
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvMNtNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter18print_datetime_wtr(ptr noalias noundef nonnull readonly captures(none) dereferenceable(4) %0, i64 %.0.val, i32 %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
