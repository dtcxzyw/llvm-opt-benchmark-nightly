Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_id-d520fdfb63cfb800.influxdb3_id.87e45083a2e600de-cgu.0?download=true
inline.NumInlined: 35
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvXs19_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TableIdNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !11, !noundef !3
  %i.au = zext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.k, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

bb.k:                                             ; preds = %.lr.ph.i.4
  %i.ax = mul i32 %i.ar, 10
  %i.ay = add i32 %i.av, %i.ax                    ; 2 uses
  %.not56.i.4 = icmp eq i64 %.sroa.15.0.i, 5
  br i1 %.not56.i.4, label %.loopexit.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !11, !noundef !3
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -48                  ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 10
  br i1 %i.bd, label %bb.l, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

bb.l:                                             ; preds = %.lr.ph.i.5
  %i.be = mul i32 %i.ay, 10
  %i.bf = add i32 %i.bc, %i.be                    ; 2 uses
  %.not56.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.i.5, label %.loopexit.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !11, !noundef !3
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48                  ; 2 uses
  %i.bk = icmp ult i32 %i.bj, 10
  br i1 %i.bk, label %bb.m, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

bb.m:                                             ; preds = %.lr.ph.i.6
  %i.bl = mul i32 %i.bf, 10
  %i.bm = add i32 %i.bj, %i.bl                    ; 2 uses
  %.not56.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.i.6, label %.loopexit.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !11, !noundef !3
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48                  ; 2 uses
  %i.br = icmp ult i32 %i.bq, 10
  br i1 %i.br, label %bb.n, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

bb.n:                                             ; preds = %.lr.ph.i.7
  %i.bs = mul i32 %i.bm, 10
  %i.bt = add i32 %i.bq, %i.bs
  br label %.loopexit.i

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit: ; preds = %bb.d, %bb.f, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %bb.a, %bb.b, %bb.b, %.loopexit.i, %bb.e
  %.sroa.8.0.insert.insert.i = phi i64 [ 257, %.lr.ph.i ], [ %i.f, %.loopexit.i ], [ 257, %bb.b ], [ 1, %bb.a ], [ 257, %bb.b ], [ %spec.select.i, %bb.e ], [ 257, %.lr.ph.i.7 ], [ 257, %.lr.ph.i.6 ], [ 257, %.lr.ph.i.5 ], [ 257, %.lr.ph.i.4 ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.d ], [ 513, %bb.f ]
  ret i64 %.sroa.8.0.insert.insert.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i16 1, 0) i16 @_RNvXs1A_CsbFlE7Gjht9i_12influxdb3_idNtB6_8ColumnIdNtB6_9CatalogId4next(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !noundef !3   ; 2 uses
  %i.b = icmp eq i16 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i16 %i.a, 1
  ret i16 %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1E_CsbFlE7Gjht9i_12influxdb3_idNtB6_8ColumnIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !7, !noundef !3
  %i.e = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define range(i32 0, -65535) i32 @_RNvXs1F_CsbFlE7Gjht9i_12influxdb3_idNtB6_8ColumnIdNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !14, !noundef !3 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
    i8 45, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1, !alias.scope !14
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  %cond.i = icmp eq i8 %i.b, 43                   ; 2 uses
  %i.c = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %1, %i.c            ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.d = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.d, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.f
  %.not53.i = icmp eq i64 %i.h, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.g, %bb.h, %bb.i, %bb.j, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.aw, %bb.j ], [ 0, %.preheader.i ], [ %i.y, %bb.g ], [ %i.ag, %bb.h ], [ %i.ao, %bb.i ], [ %i.s, %.preheader58.i ]
  %i.e = zext i16 %.sroa.043.1.i to i32
  %i.f = shl nuw i32 %i.e, 16
  br label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

.preheader58.i.preheader:                         ; preds = %bb.c, %.preheader58.i
  %.sroa.0.1.i37 = phi ptr [ %i.g, %.preheader58.i ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i36 = phi i64 [ %i.h, %.preheader58.i ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.043.0.i35 = phi i16 [ %i.s, %.preheader58.i ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i37, i64 1
  %i.h = add nsw i64 %.sroa.15.1.i36, -1          ; 2 uses
  %i.i = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i35, i16 10) ; 2 uses
  %i.j = extractvalue { i16, i1 } %i.i, 0         ; 2 uses
  %i.k = extractvalue { i16, i1 } %i.i, 1
  %i.l = load i8, ptr %.sroa.0.1.i37, align 1, !alias.scope !14, !noundef !3 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %.preheader58.i.preheader
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48                    ; 2 uses
  %i.o = icmp ult i32 %i.n, 10
  br i1 %i.o, label %bb.f, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.e:                                             ; preds = %.preheader58.i.preheader
  %i.p = add i8 %i.l, -48
  %i.q = icmp ult i8 %i.p, 10
  %spec.select.i = select i1 %i.q, i32 513, i32 257
  br label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.f:                                             ; preds = %bb.d
  %i.r = trunc nuw nsw i32 %i.n to i16
  %i.s = add i16 %i.j, %i.r                       ; 3 uses
  %i.t = icmp ult i16 %i.s, %i.j
  br i1 %i.t, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit, label %.preheader58.i, !prof !6

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.u = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !14, !noundef !3
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %i.x = icmp ult i32 %i.w, 10
  br i1 %i.x, label %bb.g, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.y = trunc nuw nsw i32 %i.w to i16            ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !14, !noundef !3
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %bb.h, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.h:                                             ; preds = %.lr.ph.i.1
  %i.ae = mul nuw nsw i16 %i.y, 10
  %i.af = trunc nuw nsw i32 %i.ac to i16
  %i.ag = add nuw nsw i16 %i.ae, %i.af            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !14, !noundef !3
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10
  br i1 %i.al, label %bb.i, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.i:                                             ; preds = %.lr.ph.i.2
  %i.am = mul nuw i16 %i.ag, 10
  %i.an = trunc nuw nsw i32 %i.ak to i16
  %i.ao = add nuw nsw i16 %i.am, %i.an            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !14, !noundef !3
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.j, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.j:                                             ; preds = %.lr.ph.i.3
  %i.au = mul i16 %i.ao, 10
  %i.av = trunc nuw nsw i32 %i.as to i16
  %i.aw = add i16 %i.au, %i.av
  br label %.loopexit.i

_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit: ; preds = %bb.d, %bb.f, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.a, %bb.b, %bb.b, %.loopexit.i, %bb.e
  %.sroa.8.0.insert.insert.i = phi i32 [ 257, %.lr.ph.i ], [ %i.f, %.loopexit.i ], [ 257, %bb.b ], [ 1, %bb.a ], [ 257, %bb.b ], [ %spec.select.i, %bb.e ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.d ], [ 513, %bb.f ]
  ret i32 %.sroa.8.0.insert.insert.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i16 1, 0) i16 @_RNvXs1Q_CsbFlE7Gjht9i_12influxdb3_idNtB6_5TagIdNtB6_9CatalogId4next(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !noundef !3   ; 2 uses
  %i.b = icmp eq i16 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i16 %i.a, 1
  ret i16 %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1U_CsbFlE7Gjht9i_12influxdb3_idNtB6_5TagIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !7, !noundef !3
  %i.e = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define range(i32 0, -65535) i32 @_RNvXs1V_CsbFlE7Gjht9i_12influxdb3_idNtB6_5TagIdNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !17, !noundef !3 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
    i8 45, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1, !alias.scope !17
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  %cond.i = icmp eq i8 %i.b, 43                   ; 2 uses
  %i.c = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %1, %i.c            ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.d = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.d, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.f
  %.not53.i = icmp eq i64 %i.h, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.g, %bb.h, %bb.i, %bb.j, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.aw, %bb.j ], [ 0, %.preheader.i ], [ %i.y, %bb.g ], [ %i.ag, %bb.h ], [ %i.ao, %bb.i ], [ %i.s, %.preheader58.i ]
  %i.e = zext i16 %.sroa.043.1.i to i32
  %i.f = shl nuw i32 %i.e, 16
  br label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

.preheader58.i.preheader:                         ; preds = %bb.c, %.preheader58.i
  %.sroa.0.1.i37 = phi ptr [ %i.g, %.preheader58.i ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i36 = phi i64 [ %i.h, %.preheader58.i ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.043.0.i35 = phi i16 [ %i.s, %.preheader58.i ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i37, i64 1
  %i.h = add nsw i64 %.sroa.15.1.i36, -1          ; 2 uses
  %i.i = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i35, i16 10) ; 2 uses
  %i.j = extractvalue { i16, i1 } %i.i, 0         ; 2 uses
  %i.k = extractvalue { i16, i1 } %i.i, 1
  %i.l = load i8, ptr %.sroa.0.1.i37, align 1, !alias.scope !17, !noundef !3 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %.preheader58.i.preheader
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48                    ; 2 uses
  %i.o = icmp ult i32 %i.n, 10
  br i1 %i.o, label %bb.f, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.e:                                             ; preds = %.preheader58.i.preheader
  %i.p = add i8 %i.l, -48
  %i.q = icmp ult i8 %i.p, 10
  %spec.select.i = select i1 %i.q, i32 513, i32 257
  br label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.f:                                             ; preds = %bb.d
  %i.r = trunc nuw nsw i32 %i.n to i16
  %i.s = add i16 %i.j, %i.r                       ; 3 uses
  %i.t = icmp ult i16 %i.s, %i.j
  br i1 %i.t, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit, label %.preheader58.i, !prof !6

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.u = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !17, !noundef !3
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %i.x = icmp ult i32 %i.w, 10
  br i1 %i.x, label %bb.g, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.y = trunc nuw nsw i32 %i.w to i16            ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !17, !noundef !3
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %bb.h, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.h:                                             ; preds = %.lr.ph.i.1
  %i.ae = mul nuw nsw i16 %i.y, 10
  %i.af = trunc nuw nsw i32 %i.ac to i16
  %i.ag = add nuw nsw i16 %i.ae, %i.af            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !17, !noundef !3
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10
  br i1 %i.al, label %bb.i, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.i:                                             ; preds = %.lr.ph.i.2
  %i.am = mul nuw i16 %i.ag, 10
  %i.an = trunc nuw nsw i32 %i.ak to i16
  %i.ao = add nuw nsw i16 %i.am, %i.an            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !17, !noundef !3
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.j, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.j:                                             ; preds = %.lr.ph.i.3
  %i.au = mul i16 %i.ao, 10
  %i.av = trunc nuw nsw i32 %i.as to i16
  %i.aw = add i16 %i.au, %i.av
  br label %.loopexit.i

_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit: ; preds = %bb.d, %bb.f, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.a, %bb.b, %bb.b, %.loopexit.i, %bb.e
  %.sroa.8.0.insert.insert.i = phi i32 [ 257, %.lr.ph.i ], [ %i.f, %.loopexit.i ], [ 257, %bb.b ], [ 1, %bb.a ], [ 257, %bb.b ], [ %spec.select.i, %bb.e ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.d ], [ 513, %bb.f ]
  ret i32 %.sroa.8.0.insert.insert.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1a_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TableIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_5Debug3fmtCsbFlE7Gjht9i_12influxdb3_id(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !21, !noundef !3 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !22, !noalias !23, !noundef !3 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsw_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_5Debug3fmt.exit

_RNvXsW_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdNtB6_7Display3fmtBy_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28
  store ptr %i.b, ptr %i.a, align 8, !noalias !28
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !28
  %i.c = load ptr, ptr %1, align 8, !alias.scope !27, !noalias !29, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !27, !noalias !29, !nonnull !3, !align !7, !noundef !3
  %i.f = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @30, ptr noundef nonnull %i.a), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtCsbFlE7Gjht9i_12influxdb3_id5TagIdNtB6_7Display3fmtBy_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34
  store ptr %i.b, ptr %i.a, align 8, !noalias !34
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !34
  %i.c = load ptr, ptr %1, align 8, !alias.scope !33, !noalias !35, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !33, !noalias !35, !nonnull !3, !align !7, !noundef !3
  %i.f = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @30, ptr noundef nonnull %i.a), !noalias !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtCsbFlE7Gjht9i_12influxdb3_id7FieldIdNtB6_7Display3fmtBy_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40
  store ptr %i.b, ptr %i.a, align 8, !noalias !40
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !40
  %i.c = load ptr, ptr %1, align 8, !alias.scope !39, !noalias !41, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !39, !noalias !41, !nonnull !3, !align !7, !noundef !3
  %i.f = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @30, ptr noundef nonnull %i.a), !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error13ParseIntErrorNtB6_7Display3fmtCsbFlE7Gjht9i_12influxdb3_id(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs4_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_RNvXs1k_CsbFlE7Gjht9i_12influxdb3_idNtB6_9TriggerIdNtB6_9CatalogId4next(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !noundef !3   ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i32 %i.a, 1
  ret i32 %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1o_CsbFlE7Gjht9i_12influxdb3_idNtB6_9TriggerIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !7, !noundef !3
  %i.e = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define range(i64 0, -4294967295) i64 @_RNvXs1p_CsbFlE7Gjht9i_12influxdb3_idNtB6_9TriggerIdNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !44, !noundef !3 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit
    i8 45, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1, !alias.scope !44
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  %cond.i = icmp eq i8 %i.b, 43                   ; 2 uses
  %i.c = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %1, %i.c            ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.d = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.d, label %.preheader.i, label %.preheader60.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5668.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5668.i, label %.loopexit.i, label %.lr.ph.i

.preheader60.i:                                   ; preds = %bb.f
  %.not55.i = icmp eq i64 %i.h, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader60.i.preheader

.loopexit.i:                                      ; preds = %.preheader60.i, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.bt, %bb.n ], [ 0, %.preheader.i ], [ %i.v, %bb.g ], [ %i.ad, %bb.h ], [ %i.ak, %bb.i ], [ %i.ar, %bb.j ], [ %i.ay, %bb.k ], [ %i.bf, %bb.l ], [ %i.bm, %bb.m ], [ %i.r, %.preheader60.i ]
end_hunk_0
begin_hunk_1_@_RNvXs1p_CsbFlE7Gjht9i_12influxdb3_idNtB6_9TriggerIdNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str:bb.a
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -48                  ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 10
  br i1 %i.bd, label %bb.l, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

bb.l:                                             ; preds = %.lr.ph.i.5
  %i.be = mul i32 %i.ay, 10
  %i.bf = add i32 %i.bc, %i.be                    ; 2 uses
  %.not56.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.i.5, label %.loopexit.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !44, !noundef !3
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48                  ; 2 uses
  %i.bk = icmp ult i32 %i.bj, 10
  br i1 %i.bk, label %bb.m, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

bb.m:                                             ; preds = %.lr.ph.i.6
  %i.bl = mul i32 %i.bf, 10
  %i.bm = add i32 %i.bj, %i.bl                    ; 2 uses
  %.not56.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.i.6, label %.loopexit.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !44, !noundef !3
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48                  ; 2 uses
  %i.br = icmp ult i32 %i.bq, 10
  br i1 %i.br, label %bb.n, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

bb.n:                                             ; preds = %.lr.ph.i.7
  %i.bs = mul i32 %i.bm, 10
  %i.bt = add i32 %i.bq, %i.bs
  br label %.loopexit.i

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit: ; preds = %bb.d, %bb.f, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %bb.a, %bb.b, %bb.b, %.loopexit.i, %bb.e
  %.sroa.8.0.insert.insert.i = phi i64 [ 257, %.lr.ph.i ], [ %i.f, %.loopexit.i ], [ 257, %bb.b ], [ 1, %bb.a ], [ 257, %bb.b ], [ %spec.select.i, %bb.e ], [ 257, %.lr.ph.i.7 ], [ 257, %.lr.ph.i.6 ], [ 257, %.lr.ph.i.5 ], [ 257, %.lr.ph.i.4 ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.d ], [ 513, %bb.f ]
  ret i64 %.sroa.8.0.insert.insert.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i16 1, 0) i16 @_RNvXs26_CsbFlE7Gjht9i_12influxdb3_idNtB6_13FieldFamilyIdNtB6_9CatalogId4next(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !noundef !3   ; 2 uses
  %i.b = icmp eq i16 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i16 %i.a, 1
  ret i16 %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef range(i16 1, 0) i16 @_RNvXs2C_CsbFlE7Gjht9i_12influxdb3_idNtB6_11LastCacheIdNtB6_9CatalogId4next(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !noundef !3   ; 2 uses
  %i.b = icmp eq i16 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i16 %i.a, 1
  ret i16 %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2G_CsbFlE7Gjht9i_12influxdb3_idNtB6_11LastCacheIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !7, !noundef !3
  %i.e = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define range(i32 0, -65535) i32 @_RNvXs2H_CsbFlE7Gjht9i_12influxdb3_idNtB6_11LastCacheIdNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !47, !noundef !3 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
    i8 45, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1, !alias.scope !47
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  %cond.i = icmp eq i8 %i.b, 43                   ; 2 uses
  %i.c = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %1, %i.c            ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.d = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.d, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.f
  %.not53.i = icmp eq i64 %i.h, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.g, %bb.h, %bb.i, %bb.j, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.aw, %bb.j ], [ 0, %.preheader.i ], [ %i.y, %bb.g ], [ %i.ag, %bb.h ], [ %i.ao, %bb.i ], [ %i.s, %.preheader58.i ]
  %i.e = zext i16 %.sroa.043.1.i to i32
  %i.f = shl nuw i32 %i.e, 16
  br label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

.preheader58.i.preheader:                         ; preds = %bb.c, %.preheader58.i
  %.sroa.0.1.i37 = phi ptr [ %i.g, %.preheader58.i ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i36 = phi i64 [ %i.h, %.preheader58.i ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.043.0.i35 = phi i16 [ %i.s, %.preheader58.i ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i37, i64 1
  %i.h = add nsw i64 %.sroa.15.1.i36, -1          ; 2 uses
  %i.i = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i35, i16 10) ; 2 uses
  %i.j = extractvalue { i16, i1 } %i.i, 0         ; 2 uses
  %i.k = extractvalue { i16, i1 } %i.i, 1
  %i.l = load i8, ptr %.sroa.0.1.i37, align 1, !alias.scope !47, !noundef !3 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %.preheader58.i.preheader
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48                    ; 2 uses
  %i.o = icmp ult i32 %i.n, 10
  br i1 %i.o, label %bb.f, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.e:                                             ; preds = %.preheader58.i.preheader
  %i.p = add i8 %i.l, -48
  %i.q = icmp ult i8 %i.p, 10
  %spec.select.i = select i1 %i.q, i32 513, i32 257
  br label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.f:                                             ; preds = %bb.d
  %i.r = trunc nuw nsw i32 %i.n to i16
  %i.s = add i16 %i.j, %i.r                       ; 3 uses
  %i.t = icmp ult i16 %i.s, %i.j
  br i1 %i.t, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit, label %.preheader58.i, !prof !6

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.u = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !47, !noundef !3
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %i.x = icmp ult i32 %i.w, 10
  br i1 %i.x, label %bb.g, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.y = trunc nuw nsw i32 %i.w to i16            ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !47, !noundef !3
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %bb.h, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.h:                                             ; preds = %.lr.ph.i.1
  %i.ae = mul nuw nsw i16 %i.y, 10
  %i.af = trunc nuw nsw i32 %i.ac to i16
  %i.ag = add nuw nsw i16 %i.ae, %i.af            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !47, !noundef !3
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10
  br i1 %i.al, label %bb.i, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.i:                                             ; preds = %.lr.ph.i.2
  %i.am = mul nuw i16 %i.ag, 10
  %i.an = trunc nuw nsw i32 %i.ak to i16
  %i.ao = add nuw nsw i16 %i.am, %i.an            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !47, !noundef !3
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.j, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.j:                                             ; preds = %.lr.ph.i.3
  %i.au = mul i16 %i.ao, 10
  %i.av = trunc nuw nsw i32 %i.as to i16
  %i.aw = add i16 %i.au, %i.av
  br label %.loopexit.i

_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit: ; preds = %bb.d, %bb.f, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.a, %bb.b, %bb.b, %.loopexit.i, %bb.e
  %.sroa.8.0.insert.insert.i = phi i32 [ 257, %.lr.ph.i ], [ %i.f, %.loopexit.i ], [ 257, %bb.b ], [ 1, %bb.a ], [ 257, %bb.b ], [ %spec.select.i, %bb.e ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.d ], [ 513, %bb.f ]
  ret i32 %.sroa.8.0.insert.insert.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i16 1, 0) i16 @_RNvXs2S_CsbFlE7Gjht9i_12influxdb3_idNtB6_15DistinctCacheIdNtB6_9CatalogId4next(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !noundef !3   ; 2 uses
  %i.b = icmp eq i16 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i16 %i.a, 1
  ret i16 %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2W_CsbFlE7Gjht9i_12influxdb3_idNtB6_15DistinctCacheIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !7, !noundef !3
  %i.e = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define range(i32 0, -65535) i32 @_RNvXs2X_CsbFlE7Gjht9i_12influxdb3_idNtB6_15DistinctCacheIdNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !50, !noundef !3 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
    i8 45, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1, !alias.scope !50
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  %cond.i = icmp eq i8 %i.b, 43                   ; 2 uses
  %i.c = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %1, %i.c            ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.d = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.d, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.f
  %.not53.i = icmp eq i64 %i.h, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.g, %bb.h, %bb.i, %bb.j, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.aw, %bb.j ], [ 0, %.preheader.i ], [ %i.y, %bb.g ], [ %i.ag, %bb.h ], [ %i.ao, %bb.i ], [ %i.s, %.preheader58.i ]
  %i.e = zext i16 %.sroa.043.1.i to i32
  %i.f = shl nuw i32 %i.e, 16
  br label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

.preheader58.i.preheader:                         ; preds = %bb.c, %.preheader58.i
  %.sroa.0.1.i37 = phi ptr [ %i.g, %.preheader58.i ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i36 = phi i64 [ %i.h, %.preheader58.i ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.043.0.i35 = phi i16 [ %i.s, %.preheader58.i ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i37, i64 1
  %i.h = add nsw i64 %.sroa.15.1.i36, -1          ; 2 uses
  %i.i = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i35, i16 10) ; 2 uses
  %i.j = extractvalue { i16, i1 } %i.i, 0         ; 2 uses
  %i.k = extractvalue { i16, i1 } %i.i, 1
  %i.l = load i8, ptr %.sroa.0.1.i37, align 1, !alias.scope !50, !noundef !3 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %.preheader58.i.preheader
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48                    ; 2 uses
  %i.o = icmp ult i32 %i.n, 10
  br i1 %i.o, label %bb.f, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.e:                                             ; preds = %.preheader58.i.preheader
  %i.p = add i8 %i.l, -48
  %i.q = icmp ult i8 %i.p, 10
  %spec.select.i = select i1 %i.q, i32 513, i32 257
  br label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.f:                                             ; preds = %bb.d
  %i.r = trunc nuw nsw i32 %i.n to i16
  %i.s = add i16 %i.j, %i.r                       ; 3 uses
  %i.t = icmp ult i16 %i.s, %i.j
  br i1 %i.t, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit, label %.preheader58.i, !prof !6

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.u = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !50, !noundef !3
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %i.x = icmp ult i32 %i.w, 10
  br i1 %i.x, label %bb.g, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.y = trunc nuw nsw i32 %i.w to i16            ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !50, !noundef !3
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %bb.h, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.h:                                             ; preds = %.lr.ph.i.1
  %i.ae = mul nuw nsw i16 %i.y, 10
  %i.af = trunc nuw nsw i32 %i.ac to i16
  %i.ag = add nuw nsw i16 %i.ae, %i.af            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !50, !noundef !3
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10
  br i1 %i.al, label %bb.i, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.i:                                             ; preds = %.lr.ph.i.2
  %i.am = mul nuw i16 %i.ag, 10
  %i.an = trunc nuw nsw i32 %i.ak to i16
  %i.ao = add nuw nsw i16 %i.am, %i.an            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !50, !noundef !3
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.j, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.j:                                             ; preds = %.lr.ph.i.3
  %i.au = mul i16 %i.ao, 10
  %i.av = trunc nuw nsw i32 %i.as to i16
  %i.aw = add i16 %i.au, %i.av
  br label %.loopexit.i

_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit: ; preds = %bb.d, %bb.f, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.a, %bb.b, %bb.b, %.loopexit.i, %bb.e
  %.sroa.8.0.insert.insert.i = phi i32 [ 257, %.lr.ph.i ], [ %i.f, %.loopexit.i ], [ 257, %bb.b ], [ 1, %bb.a ], [ 257, %bb.b ], [ %spec.select.i, %bb.e ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.d ], [ 513, %bb.f ]
  ret i32 %.sroa.8.0.insert.insert.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_CsbFlE7Gjht9i_12influxdb3_idNtB5_12TableIndexIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsU_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsbFlE7Gjht9i_12influxdb3_id, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsU_CsbFlE7Gjht9i_12influxdb3_idNtB5_4DbIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1a_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TableIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !align !7, !noundef !3
  %i.i = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @39, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2a_CsbFlE7Gjht9i_12influxdb3_idNtB6_13FieldFamilyIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !7, !noundef !3
  %i.e = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define range(i32 0, -65535) i32 @_RNvXs2b_CsbFlE7Gjht9i_12influxdb3_idNtB6_13FieldFamilyIdNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !53, !noundef !3 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
    i8 45, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1, !alias.scope !53
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  %cond.i = icmp eq i8 %i.b, 43                   ; 2 uses
  %i.c = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %1, %i.c            ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.d = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.d, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.f
  %.not53.i = icmp eq i64 %i.h, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.g, %bb.h, %bb.i, %bb.j, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.aw, %bb.j ], [ 0, %.preheader.i ], [ %i.y, %bb.g ], [ %i.ag, %bb.h ], [ %i.ao, %bb.i ], [ %i.s, %.preheader58.i ]
  %i.e = zext i16 %.sroa.043.1.i to i32
  %i.f = shl nuw i32 %i.e, 16
  br label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

.preheader58.i.preheader:                         ; preds = %bb.c, %.preheader58.i
  %.sroa.0.1.i37 = phi ptr [ %i.g, %.preheader58.i ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i36 = phi i64 [ %i.h, %.preheader58.i ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.043.0.i35 = phi i16 [ %i.s, %.preheader58.i ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i37, i64 1
  %i.h = add nsw i64 %.sroa.15.1.i36, -1          ; 2 uses
  %i.i = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i35, i16 10) ; 2 uses
  %i.j = extractvalue { i16, i1 } %i.i, 0         ; 2 uses
  %i.k = extractvalue { i16, i1 } %i.i, 1
  %i.l = load i8, ptr %.sroa.0.1.i37, align 1, !alias.scope !53, !noundef !3 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %.preheader58.i.preheader
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48                    ; 2 uses
  %i.o = icmp ult i32 %i.n, 10
  br i1 %i.o, label %bb.f, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.e:                                             ; preds = %.preheader58.i.preheader
  %i.p = add i8 %i.l, -48
  %i.q = icmp ult i8 %i.p, 10
  %spec.select.i = select i1 %i.q, i32 513, i32 257
  br label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.f:                                             ; preds = %bb.d
  %i.r = trunc nuw nsw i32 %i.n to i16
  %i.s = add i16 %i.j, %i.r                       ; 3 uses
  %i.t = icmp ult i16 %i.s, %i.j
  br i1 %i.t, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit, label %.preheader58.i, !prof !6

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.u = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !53, !noundef !3
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %i.x = icmp ult i32 %i.w, 10
  br i1 %i.x, label %bb.g, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.y = trunc nuw nsw i32 %i.w to i16            ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !53, !noundef !3
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %bb.h, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.h:                                             ; preds = %.lr.ph.i.1
  %i.ae = mul nuw nsw i16 %i.y, 10
  %i.af = trunc nuw nsw i32 %i.ac to i16
  %i.ag = add nuw nsw i16 %i.ae, %i.af            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !53, !noundef !3
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10
  br i1 %i.al, label %bb.i, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.i:                                             ; preds = %.lr.ph.i.2
  %i.am = mul nuw i16 %i.ag, 10
  %i.an = trunc nuw nsw i32 %i.ak to i16
  %i.ao = add nuw nsw i16 %i.am, %i.an            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !53, !noundef !3
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.j, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.j:                                             ; preds = %.lr.ph.i.3
  %i.au = mul i16 %i.ao, 10
  %i.av = trunc nuw nsw i32 %i.as to i16
  %i.aw = add i16 %i.au, %i.av
  br label %.loopexit.i

_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit: ; preds = %bb.d, %bb.f, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.a, %bb.b, %bb.b, %.loopexit.i, %bb.e
  %.sroa.8.0.insert.insert.i = phi i32 [ 257, %.lr.ph.i ], [ %i.f, %.loopexit.i ], [ 257, %bb.b ], [ 1, %bb.a ], [ 257, %bb.b ], [ %spec.select.i, %bb.e ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.d ], [ 513, %bb.f ]
  ret i32 %.sroa.8.0.insert.insert.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i16 1, 0) i16 @_RNvXs2m_CsbFlE7Gjht9i_12influxdb3_idNtB6_7FieldIdNtB6_9CatalogId4next(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !noundef !3   ; 2 uses
  %i.b = icmp eq i16 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i16 %i.a, 1
  ret i16 %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2q_CsbFlE7Gjht9i_12influxdb3_idNtB6_7FieldIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !7, !noundef !3
  %i.e = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define range(i32 0, -65535) i32 @_RNvXs2r_CsbFlE7Gjht9i_12influxdb3_idNtB6_7FieldIdNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !56, !noundef !3 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
    i8 45, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1, !alias.scope !56
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  %cond.i = icmp eq i8 %i.b, 43                   ; 2 uses
  %i.c = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %1, %i.c            ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.d = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.d, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.f
  %.not53.i = icmp eq i64 %i.h, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.g, %bb.h, %bb.i, %bb.j, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.aw, %bb.j ], [ 0, %.preheader.i ], [ %i.y, %bb.g ], [ %i.ag, %bb.h ], [ %i.ao, %bb.i ], [ %i.s, %.preheader58.i ]
  %i.e = zext i16 %.sroa.043.1.i to i32
  %i.f = shl nuw i32 %i.e, 16
  br label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

.preheader58.i.preheader:                         ; preds = %bb.c, %.preheader58.i
  %.sroa.0.1.i37 = phi ptr [ %i.g, %.preheader58.i ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i36 = phi i64 [ %i.h, %.preheader58.i ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.043.0.i35 = phi i16 [ %i.s, %.preheader58.i ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i37, i64 1
  %i.h = add nsw i64 %.sroa.15.1.i36, -1          ; 2 uses
  %i.i = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i35, i16 10) ; 2 uses
  %i.j = extractvalue { i16, i1 } %i.i, 0         ; 2 uses
  %i.k = extractvalue { i16, i1 } %i.i, 1
  %i.l = load i8, ptr %.sroa.0.1.i37, align 1, !alias.scope !56, !noundef !3 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %.preheader58.i.preheader
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48                    ; 2 uses
  %i.o = icmp ult i32 %i.n, 10
  br i1 %i.o, label %bb.f, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.e:                                             ; preds = %.preheader58.i.preheader
  %i.p = add i8 %i.l, -48
  %i.q = icmp ult i8 %i.p, 10
  %spec.select.i = select i1 %i.q, i32 513, i32 257
  br label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.f:                                             ; preds = %bb.d
  %i.r = trunc nuw nsw i32 %i.n to i16
  %i.s = add i16 %i.j, %i.r                       ; 3 uses
  %i.t = icmp ult i16 %i.s, %i.j
  br i1 %i.t, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit, label %.preheader58.i, !prof !6

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.u = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !56, !noundef !3
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %i.x = icmp ult i32 %i.w, 10
  br i1 %i.x, label %bb.g, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.y = trunc nuw nsw i32 %i.w to i16            ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !56, !noundef !3
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %bb.h, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.h:                                             ; preds = %.lr.ph.i.1
  %i.ae = mul nuw nsw i16 %i.y, 10
  %i.af = trunc nuw nsw i32 %i.ac to i16
  %i.ag = add nuw nsw i16 %i.ae, %i.af            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not54.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !56, !noundef !3
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10
  br i1 %i.al, label %bb.i, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.i:                                             ; preds = %.lr.ph.i.2
  %i.am = mul nuw i16 %i.ag, 10
  %i.an = trunc nuw nsw i32 %i.ak to i16
  %i.ao = add nuw nsw i16 %i.am, %i.an            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not54.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !56, !noundef !3
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.j, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit

bb.j:                                             ; preds = %.lr.ph.i.3
  %i.au = mul i16 %i.ao, 10
  %i.av = trunc nuw nsw i32 %i.as to i16
  %i.aw = add i16 %i.au, %i.av
  br label %.loopexit.i

_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit: ; preds = %bb.d, %bb.f, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.a, %bb.b, %bb.b, %.loopexit.i, %bb.e
  %.sroa.8.0.insert.insert.i = phi i32 [ 257, %.lr.ph.i ], [ %i.f, %.loopexit.i ], [ 257, %bb.b ], [ 1, %bb.a ], [ 257, %bb.b ], [ %spec.select.i, %bb.e ], [ 257, %.lr.ph.i.3 ], [ 257, %.lr.ph.i.2 ], [ 257, %.lr.ph.i.1 ], [ 257, %bb.d ], [ 513, %bb.f ]
  ret i32 %.sroa.8.0.insert.insert.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 0) i64 @_RNvXs38_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TokenIdNtB6_9CatalogId4next(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3   ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i64 %i.a, 1
  ret i64 %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 0) i64 @_RNvXs3E_CsbFlE7Gjht9i_12influxdb3_idNtB6_6RoleIdNtB6_9CatalogId4next(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3   ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i64 %i.a, 1
  ret i64 %i.c

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3I_CsbFlE7Gjht9i_12influxdb3_idNtB6_6RoleIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !7, !noundef !3
  %i.e = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvXs3J_CsbFlE7Gjht9i_12influxdb3_idNtB6_6RoleIdNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !60, !noalias !61, !noundef !3 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !60, !noalias !61
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  %cond.i = icmp eq i8 %i.b, 43                   ; 2 uses
  %i.c = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %2, %i.c            ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.d = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.d, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.f
  %.not52.i = icmp eq i64 %i.f, 0
  br i1 %.not52.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.c, %.preheader56.i
  %.sroa.0.1.i36 = phi ptr [ %i.e, %.preheader56.i ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i35 = phi i64 [ %i.f, %.preheader56.i ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.042.0.i34 = phi i64 [ %i.q, %.preheader56.i ], [ 0, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i36, i64 1
  %i.f = add nsw i64 %.sroa.15.1.i35, -1          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i34, i64 10) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 0         ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.g, 1
  %i.j = load i8, ptr %.sroa.0.1.i36, align 1, !alias.scope !60, !noalias !61, !noundef !3 ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %.preheader56.i.preheader
  %i.k = zext i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -48                    ; 2 uses
  %i.m = icmp ult i32 %i.l, 10
  br i1 %i.m, label %bb.f, label %.loopexit

bb.e:                                             ; preds = %.preheader56.i.preheader
  %i.n = add i8 %i.j, -48
  %i.o = icmp ult i8 %i.n, 10
  %spec.select = select i1 %i.o, i8 2, i8 1
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.p = zext nneg i32 %i.l to i64
  %i.q = add i64 %i.h, %i.p                       ; 3 uses
  %i.r = icmp ult i64 %i.q, %i.h
  br i1 %i.r, label %.loopexit, label %.preheader56.i, !prof !6

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.g
  %.sroa.0.269.i = phi ptr [ %i.y, %bb.g ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.aa, %bb.g ], [ 0, %.preheader.i ]
  %i.s = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !60, !noalias !61, !noundef !3
  %i.t = zext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -48                    ; 2 uses
  %i.v = icmp ult i32 %i.u, 10
  br i1 %i.v, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.i
  %i.w = mul i64 %.sroa.042.267.i, 10
  %i.x = add nsw i64 %.sroa.15.268.i, -1          ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.z = zext nneg i32 %i.u to i64
  %i.aa = add i64 %i.w, %i.z                      ; 2 uses
  %.not53.i = icmp eq i64 %i.x, 0
  br i1 %.not53.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.d, %bb.f, %.lr.ph.i, %bb.e, %bb.a, %bb.b, %bb.b
  %.sroa.5.0.ph = phi i8 [ 1, %bb.b ], [ %spec.select, %bb.e ], [ 1, %bb.b ], [ 0, %bb.a ], [ 1, %.lr.ph.i ], [ 1, %bb.d ], [ 2, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.5.0.ph, ptr %i.ab, align 1
  br label %bb.h

_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit: ; preds = %.preheader56.i, %bb.g, %.preheader.i
  %.sroa.122.0 = phi i64 [ %i.aa, %bb.g ], [ 0, %.preheader.i ], [ %i.q, %.preheader56.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.122.0, ptr %i.ac, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, %.loopexit
  %storemerge = phi i8 [ 0, %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit ], [ 1, %.loopexit ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3c_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TokenIdNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !7, !noundef !3
  %i.e = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvXs3d_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TokenIdNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

end_hunk_1
