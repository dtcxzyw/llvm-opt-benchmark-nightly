Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.12?download=true
inline.NumInlined: 170
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter14print_time_buf:bb.a
  store i8 %i.ai, ptr %i.ae, align 1, !noalias !485
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !noalias !485, !noundef !6
  store i8 %i.al, ptr %i.aj, align 1, !noalias !485
  %i.am = add i16 %i.h, 5                         ; 2 uses
  store i16 %i.am, ptr %i.g, align 8, !alias.scope !485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.an = zext i16 %i.am to i64                   ; 2 uses
  %.not.i13 = icmp eq i64 %i.f, %i.an
  br i1 %.not.i13, label %bb.i, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit14, !prof !9

bb.i:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit10
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !486
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit14: ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  store i8 58, ptr %i.ao, align 1, !noalias !486
  %i.ap = add i16 %i.h, 6                         ; 2 uses
  store i16 %i.ap, ptr %i.g, align 8, !alias.scope !486
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ar = load i8, ptr %i.aq, align 2, !noundef !6
  %.sroa.02.0 = tail call i8 @llvm.abs.i8(i8 %i.ar, i1 false) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.as = icmp ult i8 %.sroa.02.0, 100
  br i1 %i.as, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit14
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15, !noalias !487
  unreachable

bb.k:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit14
  %i.at = zext i16 %i.ap to i64                   ; 2 uses
  %i.au = sub nuw i64 %i.f, %i.at
  %i.av = icmp ugt i64 %i.au, 1
  br i1 %i.av, label %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #15, !noalias !487
  unreachable

_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit: ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.at ; 2 uses
  %i.ax = shl nuw i8 %.sroa.02.0, 1
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @5, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !noalias !487, !noundef !6
  store i8 %i.ba, ptr %i.aw, align 1, !noalias !487
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !487, !noundef !6
  store i8 %i.bd, ptr %i.bb, align 1, !noalias !487
  %i.be = add i16 %i.h, 8                         ; 2 uses
  store i16 %i.be, ptr %i.g, align 8, !alias.scope !487
  %i.bf = load i32, ptr %0, align 4, !noundef !6  ; 2 uses
  %i.bg = trunc nuw i8 %.1.val to i1              ; 2 uses
  %i.bh = icmp ne i32 %i.bf, 0
  %i.bi = icmp ne i8 %.2.val, 0
  %spec.select.i = select i1 %i.bg, i1 %i.bi, i1 %i.bh
  br i1 %spec.select.i, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.bj = zext i16 %i.be to i64                   ; 2 uses
  %.not.i12 = icmp eq i64 %i.f, %i.bj
  br i1 %.not.i12, label %bb.n, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit, !prof !9

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #15, !noalias !488
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit: ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bj
  store i8 46, ptr %i.bk, align 1, !noalias !488
  %i.bl = add i16 %i.h, 9                         ; 3 uses
  store i16 %i.bl, ptr %i.g, align 8, !alias.scope !488
  %.sroa.03.0 = tail call i32 @llvm.abs.i32(i32 %i.bf, i1 false) ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.bm = icmp ult i32 %.sroa.03.0, 1000000000
  br i1 %i.bm, label %bb.p, label %bb.o, !prof !8

bb.o:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #15, !noalias !489
  unreachable

bb.p:                                             ; preds = %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !489
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bo = urem i32 %.sroa.03.0, 10                ; 2 uses
  %i.bp = trunc nuw nsw i32 %i.bo to i8
  %i.bq = or disjoint i8 %i.bp, 48
  store i8 %i.bq, ptr %i.bn, align 1, !noalias !489
  %i.br = insertelement <4 x i32> poison, i32 %.sroa.03.0, i64 0
  %i.bs = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bt = udiv <4 x i32> %i.bs, <i32 10000, i32 1000, i32 100, i32 10>
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bv = urem <4 x i32> %i.bt, splat (i32 10)    ; 5 uses
  %i.bw = trunc nuw nsw <4 x i32> %i.bv to <4 x i8>
  %i.bx = or disjoint <4 x i8> %i.bw, splat (i8 48)
  store <4 x i8> %i.bx, ptr %i.bu, align 1, !noalias !489
  %i.by = udiv i32 %.sroa.03.0, 100000
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.lhs.trunc = trunc nuw i32 %i.by to i16
  %i.ca = urem i16 %.lhs.trunc, 10                ; 2 uses
  %i.cb = trunc nuw nsw i16 %i.ca to i8
  %i.cc = or disjoint i8 %i.cb, 48
  store i8 %i.cc, ptr %i.bz, align 1, !noalias !489
  %i.cd = udiv i32 %.sroa.03.0, 1000000
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.lhs.trunc18 = trunc nuw nsw i32 %i.cd to i16
  %i.cf = urem i16 %.lhs.trunc18, 10              ; 2 uses
  %i.cg = trunc nuw nsw i16 %i.cf to i8
  %i.ch = or disjoint i8 %i.cg, 48
  store i8 %i.ch, ptr %i.ce, align 1, !noalias !489
  %i.ci = udiv i32 %.sroa.03.0, 10000000
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.lhs.trunc20 = trunc nuw i32 %i.ci to i8
  %i.ck = urem i8 %.lhs.trunc20, 10               ; 2 uses
  %i.cl = or disjoint i8 %i.ck, 48
  store i8 %i.cl, ptr %i.cj, align 1, !noalias !489
  %i.cm = udiv i32 %.sroa.03.0, 100000000
  %i.cn = trunc nuw nsw i32 %i.cm to i8
  %i.co = or disjoint i8 %i.cn, 48
  store i8 %i.co, ptr %i.a, align 1, !noalias !489
  br i1 %i.bg, label %bb.q, label %.split

bb.q:                                             ; preds = %bb.p
  %..i = tail call noundef range(i8 0, 10) i8 @llvm.umin.i8(i8 %.2.val, i8 9)
  br label %bb.z

.split:                                           ; preds = %bb.p
  %i.cp = icmp eq i32 %i.bo, 0
  br i1 %i.cp, label %bb.r, label %bb.z

bb.r:                                             ; preds = %.split
  %i.cq = extractelement <4 x i32> %i.bv, i64 3
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.cs = extractelement <4 x i32> %i.bv, i64 2
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.cu = extractelement <4 x i32> %i.bv, i64 1
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cw = extractelement <4 x i32> %i.bv, i64 0
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.cy = icmp eq i16 %i.ca, 0
  br i1 %i.cy, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cz = icmp eq i16 %i.cf, 0
  br i1 %i.cz, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.da = icmp eq i8 %i.ck, 0
  br i1 %i.da, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = icmp ugt i32 %.sroa.03.0, 99999999
  %spec.select = zext i1 %i.db to i8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.split, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.q
  %.sroa.06.1.i = phi i8 [ %..i, %bb.q ], [ 9, %.split ], [ 3, %bb.w ], [ 8, %bb.r ], [ %spec.select, %bb.y ], [ 7, %bb.s ], [ 4, %bb.v ], [ 6, %bb.t ], [ 2, %bb.x ], [ 5, %bb.u ] ; 2 uses
  %i.dc = zext nneg i8 %.sroa.06.1.i to i64       ; 3 uses
  %i.dd = zext i16 %i.bl to i64                   ; 2 uses
  %i.de = sub nuw i64 %i.f, %i.dd
  %.not20.i = icmp ult i64 %i.de, %i.dc
  br i1 %.not20.i, label %bb.aa, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit, !prof !9

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #15, !noalias !489
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit: ; preds = %bb.z
  %i.df = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dd
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.df, i64 noundef %i.dc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33), !noalias !489
  %i.dg = zext nneg i8 %.sroa.06.1.i to i16
  %i.dh = add i16 %i.bl, %i.dg
  store i16 %i.dh, ptr %i.g, align 8, !alias.scope !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !489
  br label %bb.ab

bb.ab:                                            ; preds = %_RINvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedBuffer14write_int_pad2hEBa_.exit, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer14write_fraction.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_time_zone(ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 1                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 32, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  store i16 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !537
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %2, ptr %i.g, align 8, !alias.scope !537
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %3, ptr %i.h, align 8, !alias.scope !537
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !538, !noundef !6 ; 12 uses
  %i.i = ptrtoint ptr %.val.i to i64              ; 3 uses
  %i.j = and i64 %i.i, 7                          ; 2 uses
  switch i64 %i.j, label %bb.a [
    i64 1, label %bb.l
    i64 2, label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i
    i64 3, label %bb.b
    i64 0, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.s
  ]

default.unreachable:                              ; preds = %bb.e, %bb.d
  unreachable

bb.a:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  unreachable

bb.b:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.k = trunc i64 %i.i to i32
  %i.l = ashr i32 %i.k, 4                         ; 6 uses
  %i.m = add nsw i32 %i.l, 93599
  %or.cond.i.i.i = icmp ult i32 %i.m, 187199
  br i1 %or.cond.i.i.i, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit54.thread.i.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #15, !noalias !540
  unreachable

bb.d:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 232
  %i.o = load i8, ptr %i.n, align 8, !range !11, !noalias !540, !noundef !6
  switch i8 %i.o, label %default.unreachable [
    i8 -1, label %bb.q
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.e:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.p = getelementptr i8, ptr %.val.i, i64 -4    ; 4 uses
  %i.q = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.p), !noalias !540
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 248
  %i.u = load i8, ptr %i.t, align 8, !range !11, !noalias !540, !noundef !6
  switch i8 %i.u, label %default.unreachable [
    i8 -1, label %bb.r
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
  ]

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i, i64 233
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 263
  %i.x = load i8, ptr %i.w, align 1, !noalias !540, !noundef !6
  %i.y = zext i8 %i.x to i64
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !540, !nonnull !6, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 248
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !540, !noundef !6
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !540, !nonnull !6, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 248
  %i.ag = load i64, ptr %i.af, align 8, !noalias !540, !noundef !6
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 249
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 279
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !540, !noundef !6
  %i.ak = zext i8 %i.aj to i64
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  %i.am = load ptr, ptr %i.al, align 8, !noalias !540, !nonnull !6, !noundef !6
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %i.ao = load i64, ptr %i.an, align 8, !noalias !540, !noundef !6
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !540, !nonnull !6, !noundef !6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %i.as = load i64, ptr %i.ar, align 8, !noalias !540, !noundef !6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %.sroa.9.0.i.ph.i = phi i64 [ %i.ao, %bb.j ], [ %i.ak, %bb.i ], [ %i.ac, %bb.g ], [ %i.y, %bb.f ], [ %i.ag, %bb.h ], [ 3, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit ], [ %i.as, %bb.k ] ; 6 uses
  %.sroa.0.0.i21.ph.i = phi ptr [ %i.am, %bb.j ], [ %i.ah, %bb.i ], [ %i.aa, %bb.g ], [ %i.v, %bb.f ], [ %i.ae, %bb.h ], [ @15, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit ], [ %i.aq, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !542, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noalias !543, !noundef !6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = load i16, ptr %i.aw, align 8, !noalias !543, !noundef !6 ; 2 uses
  %i.ay = zext i16 %i.ax to i64                   ; 2 uses
  %i.az = sub i64 %i.av, %i.ay
  %i.ba = icmp ugt i64 %.sroa.9.0.i.ph.i, %i.az
  br i1 %i.ba, label %bb.m, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i, !prof !9

bb.m:                                             ; preds = %bb.l
  %i.bb = call { i64, ptr } @_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #14, !noalias !544 ; 2 uses
  %i.bc = extractvalue { i64, ptr } %i.bb, 0
  %i.bd = trunc nuw i64 %i.bc to i1
  br i1 %i.bd, label %bb.n, label %bb.o

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i: ; preds = %bb.o, %bb.l
  %.pre-phi.i = phi i64 [ %i.br, %bb.o ], [ %i.ay, %bb.l ]
  %i.be = phi i16 [ %i.bq, %bb.o ], [ %i.ax, %bb.l ]
  %i.bf = phi ptr [ %i.bm, %bb.o ], [ %i.at, %bb.l ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bf, align 8, !alias.scope !545, !noalias !544, !nonnull !6, !noundef !6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.pre-phi.i
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.bi, i64 noundef %.sroa.9.0.i.ph.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i21.ph.i, i64 noundef %.sroa.9.0.i.ph.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !546
  %i.bj = trunc i64 %.sroa.9.0.i.ph.i to i16
  %i.bk = add i16 %i.be, %i.bj
  store i16 %i.bk, ptr %i.bg, align 8, !alias.scope !545, !noalias !540
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i

bb.n:                                             ; preds = %bb.m
  %i.bl = extractvalue { i64, ptr } %i.bb, 1
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.b, align 8, !alias.scope !542, !nonnull !6, !align !14, !noundef !6 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !544, !noundef !6
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bq = load i16, ptr %i.bp, align 8, !noalias !544, !noundef !6 ; 2 uses
  %i.br = zext i16 %i.bq to i64                   ; 2 uses
  %i.bs = sub i64 %i.bo, %i.br
  %i.bt = icmp ugt i64 %.sroa.9.0.i.ph.i, %i.bs
  br i1 %i.bt, label %bb.p, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i

bb.p:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr %i.g, align 8, !alias.scope !542, !nonnull !6, !noundef !6
  %i.bv = load ptr, ptr %i.h, align 8, !alias.scope !542, !nonnull !6, !align !14, !noundef !6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !invariant.load !6, !noalias !544, !nonnull !6
  %i.by = call { i64, ptr } %i.bx(ptr noundef nonnull %i.bu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i21.ph.i, i64 noundef %.sroa.9.0.i.ph.i) #16, !noalias !540, !inline_history !501 ; 2 uses
  %i.bz = extractvalue { i64, ptr } %i.by, 0
  %i.ca = extractvalue { i64, ptr } %i.by, 1
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i: ; preds = %bb.p, %bb.n, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i
  %.sroa.4.0.i16.i = phi ptr [ %i.bl, %bb.n ], [ %i.ca, %bb.p ], [ undef, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i ]
  %.sroa.0.0.i17.i = phi i64 [ 1, %bb.n ], [ %i.bz, %bb.p ], [ 0, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer9write_str.exit.i15.i ]
  %i.cb = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i17.i, 0
  %i.cc = insertvalue { i64, ptr } %i.cb, ptr %.sroa.4.0.i16.i, 1
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

bb.q:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !547
  br label %bb.t

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !547
  %i.cd = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef nonnull %i.p), !noalias !548 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  %i.ce = getelementptr i8, ptr %.val.i, i64 -5   ; 3 uses
  %i.cf = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.ce), !noalias !540 ; 0 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !547
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.cg = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef nonnull %i.ce), !noalias !548 ; 0 uses
  br label %bb.t

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i: ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter3new.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull %i.d, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38), !noalias !551
  store i16 11, ptr %i.f, align 8, !alias.scope !550, !noalias !540
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.ch = call { ptr, i64 } @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone16kind_description(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !noalias !552 ; 2 uses
  %i.ci = extractvalue { ptr, i64 } %i.ch, 0
  %i.cj = extractvalue { ptr, i64 } %i.ch, 1
  %i.ck = call noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error2tz8timezoneNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef %i.cj) #14, !noalias !552 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ck, ptr %i.cl, align 8, !alias.scope !549, !noalias !547
  store i32 1, ptr %i.a, align 8, !alias.scope !549, !noalias !547
  %i.cm = icmp eq ptr %i.ck, null
  br i1 %i.cm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = atomicrmw add ptr %i.ck, i64 -1 release, align 8, !noalias !553
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cl) #14, !noalias !554
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !547
  switch i64 %i.j, label %bb.w [
    i64 1, label %bb.af
    i64 2, label %bb.af
    i64 3, label %bb.x
    i64 0, label %bb.af
    i64 4, label %bb.z
    i64 5, label %bb.ae
  ]

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  unreachable

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  %i.cp = trunc i64 %i.i to i32
  %i.cq = ashr i32 %i.cp, 4
  %i.cr = add nsw i32 %i.cq, 93599
  %or.cond.i.i25.i = icmp ult i32 %i.cr, 187199
  br i1 %or.cond.i.i25.i, label %bb.af, label %bb.y, !prof !10

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #15, !noalias !554
  unreachable

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  %i.cs = getelementptr i8, ptr %.val.i, i64 -4   ; 2 uses
  %i.ct = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.cs), !noalias !554 ; 0 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ]
  br label %bb.af

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit54.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !547
  %4 = zext i32 %i.l to i64
  %5 = shl nuw i64 %4, 32
  store i64 %5, ptr %i.a, align 8, !alias.scope !549, !noalias !547
  %i.cu = icmp slt i32 %i.l, 0
  %. = select i1 %i.cu, i8 45, i8 43
  store i8 %., ptr %i.d, align 1, !noalias !540
  store i16 1, ptr %i.f, align 8, !noalias !540
  %i.cv = sdiv i32 %i.l, 3600
  %i.cw = trunc nsw i32 %i.cv to i8
  %.sroa.030.0.i.i = call i8 @llvm.abs.i8(i8 %i.cw, i1 true)
  %i.cx = sdiv i32 %i.l, 60
  %.lhs.trunc.i = trunc i32 %i.cx to i16
  %i.cy = srem i16 %.lhs.trunc.i, 60              ; 2 uses
  %i.cz = trunc nsw i16 %i.cy to i8               ; 2 uses
  %i.da = icmp slt i16 %i.cy, 0
  %i.db = sub nsw i8 0, %i.cz
  %.sroa.031.0.i.i = select i1 %i.da, i8 %i.db, i8 %i.cz ; 2 uses
  %i.dc = srem i32 %i.l, 60                       ; 3 uses
  %i.dd = trunc nsw i32 %i.dc to i8               ; 2 uses
  %i.de = icmp slt i32 %i.dc, 0
  %i.df = sub nsw i8 0, %i.dd
  %.sroa.032.0.i.i = select i1 %i.de, i8 %i.df, i8 %i.dd ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.dh = shl nuw nsw i8 %.sroa.030.0.i.i, 1
  %i.di = zext nneg i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @5, i64 %i.di ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !555, !noundef !6
  store i8 %i.dk, ptr %i.dg, align 1, !noalias !556
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !555, !noundef !6
  store i8 %i.dn, ptr %i.dl, align 1, !noalias !556
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 58, ptr %i.do, align 1, !noalias !557
  store i16 4, ptr %i.f, align 8, !alias.scope !558, !noalias !540
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.dp = icmp ult i8 %.sroa.031.0.i.i, 100
  br i1 %i.dp, label %bb.aa, label %.invoke74.i, !prof !8

bb.aa:                                            ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit54.thread.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.dr = shl nuw nsw i8 %.sroa.031.0.i.i, 1
  %i.ds = zext nneg i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @5, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !noalias !560, !noundef !6
  store i8 %i.du, ptr %i.dq, align 1, !noalias !561
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !noalias !560, !noundef !6
  store i8 %i.dx, ptr %i.dv, align 1, !noalias !561
  store i16 6, ptr %i.f, align 8, !alias.scope !559, !noalias !540
  %.not.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit59.thread.i.i

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit59.thread.i.i: ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i8 58, ptr %i.dy, align 1, !noalias !562
  store i16 7, ptr %i.f, align 8, !alias.scope !563, !noalias !540
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.dz = icmp ult i8 %.sroa.032.0.i.i, 100
  br i1 %i.dz, label %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hEBa_.exit.i.i, label %.invoke74.i, !prof !8

.invoke74.i:                                      ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit59.thread.i.i, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit54.thread.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %.cont75.i unwind label %bb.ab, !noalias !565

.cont75.i:                                        ; preds = %.invoke74.i
  unreachable

_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hEBa_.exit.i.i: ; preds = %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter23if_will_fill_then_flushjEBa_.exit59.thread.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.eb = shl nuw nsw i8 %.sroa.032.0.i.i, 1
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr @5, i64 %i.ec ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !noalias !566, !noundef !6
  store i8 %i.ee, ptr %i.ea, align 1, !noalias !565
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !noalias !566, !noundef !6
  store i8 %i.eh, ptr %i.ef, align 1, !noalias !565
  store i16 9, ptr %i.f, align 8, !alias.scope !564, !noalias !540
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i

bb.ab:                                            ; preds = %.invoke74.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #17
          to label %bb.ad unwind label %bb.ac, !noalias !540

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i: ; preds = %bb.aa, %_RINvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB6_14BorrowedWriter14write_int_pad2hEBa_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !547
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #18, !noalias !540
  unreachable

bb.ad:                                            ; preds = %bb.ab
  resume { ptr, i32 } %i.ei

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  %i.ek = getelementptr i8, ptr %.val.i, i64 -5   ; 3 uses
  %i.el = call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.ek), !noalias !554
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds i8, ptr %i.ek, i64 %i.em
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ek) ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = call { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter21print_posix_time_zone(ptr noalias nofree nonnull readonly captures(address, read_provenance) poison, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @24)
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

bb.af:                                            ; preds = %bb.z, %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit.i
  %i.eq = call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 53) #14, !noalias !554
  %i.er = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.eq, 1
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit: ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i, %bb.ae, %bb.af
  %.merged.i = phi { i64, ptr } [ %i.cc, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit18.i ], [ { i64 0, ptr undef }, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter9write_str.exit.i ], [ %i.ep, %bb.ae ], [ %i.er, %bb.af ], [ { i64 0, ptr undef }, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsa9sSWSfjDbm_4jiff2tz6offset6OffsetNtNtB13_5error5ErrorEEB13_.exit44.i ] ; 2 uses
  %i.es = extractvalue { i64, ptr } %.merged.i, 0
  %i.et = trunc nuw i64 %i.es to i1
  br i1 %i.et, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.eu = extractvalue { i64, ptr } %.merged.i, 1
  br label %bb.ak

bb.ah:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter19print_time_zone_wtr.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6
  %.sroa.5.0.copyload = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  %i.ev = load ptr, ptr %.sroa.0.0.copyload, align 8, !noalias !567, !nonnull !6, !noundef !6
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.ex = load i16, ptr %i.ew, align 8, !noalias !567, !noundef !6
  %i.ey = zext i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !invariant.load !6, !noalias !567, !nonnull !6
  %i.fb = call { i64, ptr } %i.fa(ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ev, i64 noundef %i.ey) #16, !noalias !567, !inline_history !0 ; 2 uses
  %i.fc = extractvalue { i64, ptr } %i.fb, 0
  %i.fd = trunc nuw i64 %i.fc to i1
  br i1 %i.fd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fe = extractvalue { i64, ptr } %i.fb, 1
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

bb.aj:                                            ; preds = %bb.ah
  store i16 0, ptr %i.ew, align 8, !noalias !567
  br label %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit

_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit: ; preds = %bb.ai, %bb.aj
  %.sroa.3.0.i = phi ptr [ %i.fe, %bb.ai ], [ undef, %bb.aj ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.ai ], [ 0, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit, %bb.ag
  %.pn = phi ptr [ %i.eu, %bb.ag ], [ %.sroa.3.0.i, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit ]
  %.sroa.0.0 = phi i64 [ 1, %bb.ag ], [ %.sroa.0.0.i, %_RNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedWriter6finish.exit ]
  %i.ff = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.fg = insertvalue { i64, ptr } %i.ff, ptr %.pn, 1
  ret { i64, ptr } %i.fg
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB2_15DateTimePrinter15print_timestamp(ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [33 x i8], align 1                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !6, !alias.scope !580, !nonnull !6
  %i.j = tail call noundef align 8 ptr %i.i(ptr noundef nonnull %2) #16, !noalias !580, !inline_history !570 ; 5 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.b, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer23from_vec_spare_capacity.exit: ; preds = %bb.a
  %i.k = icmp ne i32 %i.e, 0
  %i.l = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.k, i1 true, i1 %i.l
  %.sroa.0.0 = select i1 %or.cond, i64 33, i64 23
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef range(i64 23, 34) %.sroa.0.0), !noalias !580
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !581, !noalias !580, !noundef !6 ; 4 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o), !noalias !580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !582
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !584, !noalias !580, !nonnull !6, !noundef !6
  %i.r = load i64, ptr %i.j, align 8, !range !16, !alias.scope !584, !noalias !580, !noundef !6
  %i.s = sub nsw i64 %i.r, %i.n
  %..i8 = tail call noundef range(i64 0, 65536) i64 @llvm.umin.i64(i64 %i.s, i64 65535)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  store ptr %i.t, ptr %i.a, align 8, !alias.scope !583, !noalias !580
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %..i8, ptr %i.u, align 8, !alias.scope !583, !noalias !580
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.v, align 8, !alias.scope !583, !noalias !580
  call fastcc void @_RNCNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8temporal7printerNtB4_15DateTimePrinter15print_timestamp0Ba_(ptr nonnull %0, ptr nonnull %1, ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #16
end_hunk_0
