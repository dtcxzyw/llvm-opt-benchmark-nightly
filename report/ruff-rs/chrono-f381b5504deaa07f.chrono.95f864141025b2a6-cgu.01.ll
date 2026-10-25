Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/chrono-f381b5504deaa07f.chrono.95f864141025b2a6-cgu.01?download=true
inline.NumInlined: 121
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor8read_inthEBe_:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.j = add nuw i64 %.sroa.02.08.i.i, 1
  %i.k = icmp eq ptr %i.i, %i.e
  br i1 %i.k, label %.loopexit35, label %.lr.ph.i.i

_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i: ; preds = %.lr.ph.i.i
  %i.l = icmp ult i64 %.sroa.02.08.i.i, %i.d
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nuw i64 %i.d, %.sroa.02.08.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.02.08.i.i
  br label %.loopexit35

.loopexit35:                                      ; preds = %bb.b, %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i, %bb.a
  %.sink17.i = phi ptr [ %i.n, %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i ], [ %i.e, %bb.a ], [ %i.e, %bb.b ]
  %.sink.i = phi i64 [ %i.m, %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.02.08.i.lcssa.sink16.i = phi i64 [ %.sroa.02.08.i.i, %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i ], [ 0, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  store ptr %.sink17.i, ptr %1, align 8, !alias.scope !22
  store i64 %.sink.i, ptr %i.c, align 8, !alias.scope !22
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !22, !noundef !3
  %i.q = add i64 %i.p, %.sroa.02.08.i.lcssa.sink16.i
  store i64 %i.q, ptr %i.o, align 8, !alias.scope !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.02.08.i.lcssa.sink16.i)
  %i.r = load i64, ptr %i.a, align 8, !range !4, !noundef !3
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.019.0.copyload = load ptr, ptr %i.t, align 8 ; 4 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.420.0.copyload = load i64, ptr %.sroa.420.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit35
  store i8 15, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.019.0.copyload, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.420.0.copyload, ptr %.sroa.526.0..sroa_idx, align 8
  br label %bb.l

bb.d:                                             ; preds = %.loopexit35
  switch i64 %.sroa.420.0.copyload, label %thread-pre-split.i.i [
    i64 0, label %.loopexit34
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %.sroa.019.0.copyload, align 1, !alias.scope !24, !noundef !3 ; 2 uses
  switch i8 %i.u, label %bb.f [
    i8 43, label %.loopexit34
    i8 45, label %.loopexit34
  ]

thread-pre-split.i.i:                             ; preds = %bb.d
  %.pr.i.i = load i8, ptr %.sroa.019.0.copyload, align 1, !alias.scope !24
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i.i, %bb.e
  %i.v = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.u, %bb.e ]
  %cond.i.i = icmp eq i8 %i.v, 43                 ; 2 uses
  %i.w = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %.sroa.420.0.copyload, %i.w ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 %.sroa.0.0.idx.i.i ; 3 uses
  %i.x = icmp samesign ult i64 %.sroa.15.0.i.i, 3
  br i1 %i.x, label %.preheader.i.i, label %.preheader57.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.f
  %.not5462.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5462.i.i, label %.loopexit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.y = load i8, ptr %.sroa.0.0.i.i, align 1, !alias.scope !24, !noundef !3
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %i.z, -48                   ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, 9
  br i1 %i.ab, label %.loopexit34, label %bb.g

bb.g:                                             ; preds = %.lr.ph.preheader.i.i
  %i.ac = icmp eq i64 %.sroa.15.0.i.i, 1
  %i.ad = trunc nuw nsw i32 %i.aa to i8           ; 2 uses
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i30

.preheader57.i.i:                                 ; preds = %bb.j
  %.not53.not.i.not.i = icmp eq i64 %i.af, 0
  br i1 %.not53.not.i.not.i, label %.loopexit, label %.preheader57.i.i.preheader

.preheader57.i.i.preheader:                       ; preds = %bb.f, %.preheader57.i.i
  %.sroa.0.1.i.i64 = phi ptr [ %i.ae, %.preheader57.i.i ], [ %.sroa.0.0.i.i, %bb.f ] ; 2 uses
  %.sroa.15.1.i.i63 = phi i64 [ %i.af, %.preheader57.i.i ], [ %.sroa.15.0.i.i, %bb.f ]
  %.sroa.043.0.i.i62 = phi i8 [ %i.aq, %.preheader57.i.i ], [ 0, %bb.f ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i64, i64 1
  %i.af = add nsw i64 %.sroa.15.1.i.i63, -1       ; 2 uses
  %i.ag = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.043.0.i.i62, i8 10) ; 2 uses
  %i.ah = extractvalue { i8, i1 } %i.ag, 0        ; 2 uses
  %i.ai = extractvalue { i8, i1 } %i.ag, 1
  %i.aj = load i8, ptr %.sroa.0.1.i.i64, align 1, !alias.scope !24, !noundef !3 ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %.preheader57.i.i.preheader
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -48                  ; 2 uses
  %i.am = icmp ult i32 %i.al, 10
  br i1 %i.am, label %bb.j, label %.loopexit34

bb.i:                                             ; preds = %.preheader57.i.i.preheader
  %i.an = add i8 %i.aj, -48
  %i.ao = icmp ult i8 %i.an, 10
  %spec.select.i.i = select i1 %i.ao, i8 2, i8 1
  br label %.loopexit34

bb.j:                                             ; preds = %bb.h
  %i.ap = trunc nuw nsw i32 %i.al to i8
  %i.aq = add i8 %i.ah, %i.ap                     ; 3 uses
  %i.ar = icmp ult i8 %i.aq, %i.ah
  br i1 %i.ar, label %.loopexit34, label %.preheader57.i.i, !prof !5

.lr.ph.i.i30:                                     ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1
  %.pre.i = load i8, ptr %i.as, align 1, !alias.scope !24
  %i.at = zext i8 %.pre.i to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ugt i32 %i.au, 9
  br i1 %i.av, label %.loopexit34, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i30
  %i.aw = mul nuw nsw i8 %i.ad, 10
  %i.ax = trunc nuw nsw i32 %i.au to i8
  %i.ay = add nuw nsw i8 %i.aw, %i.ax
  br label %.loopexit

.loopexit34:                                      ; preds = %bb.j, %bb.h, %bb.e, %bb.e, %bb.i, %bb.d, %.lr.ph.preheader.i.i, %.lr.ph.i.i30
  %.sroa.8.0.i.i.ph = phi i8 [ %spec.select.i.i, %bb.i ], [ 1, %bb.e ], [ 1, %.lr.ph.i.i30 ], [ 1, %.lr.ph.preheader.i.i ], [ 1, %bb.e ], [ 0, %bb.d ], [ 2, %bb.j ], [ 1, %bb.h ]
  store i8 8, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.8.0.i.i.ph, ptr %.sroa.428.0..sroa_idx, align 1
  br label %bb.l

.loopexit:                                        ; preds = %.preheader57.i.i, %bb.k, %bb.g, %.preheader.i.i
  %.sroa.8.0.i.i = phi i8 [ 0, %.preheader.i.i ], [ %i.ad, %bb.g ], [ %i.ay, %bb.k ], [ %i.aq, %.preheader57.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.8.0.i.i, ptr %i.az, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %.loopexit34, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor8read_intlEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !34, !nonnull !3, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !34, !noundef !3 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 3 uses
  %i.f = icmp samesign eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.02.08.i.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %i.g = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.val.i.i = load i8, ptr %i.g, align 1, !noalias !35, !noundef !3
  %i.h = add i8 %.val.i.i, -58
  %.sroa.0.0.i.i.i.i.i = icmp ult i8 %i.h, -10
  br i1 %.sroa.0.0.i.i.i.i.i, label %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.j = add nuw i64 %.sroa.02.08.i.i, 1
  %i.k = icmp eq ptr %i.i, %i.e
  br i1 %i.k, label %.loopexit, label %.lr.ph.i.i

_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i: ; preds = %.lr.ph.i.i
  %i.l = icmp ult i64 %.sroa.02.08.i.i, %i.d
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nuw i64 %i.d, %.sroa.02.08.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.02.08.i.i
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i, %bb.a
  %.sink17.i = phi ptr [ %i.n, %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i ], [ %i.e, %bb.a ], [ %i.e, %bb.b ]
  %.sink.i = phi i64 [ %i.m, %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.02.08.i.lcssa.sink16.i = phi i64 [ %.sroa.02.08.i.i, %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i ], [ 0, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  store ptr %.sink17.i, ptr %1, align 8, !alias.scope !34
  store i64 %.sink.i, ptr %i.c, align 8, !alias.scope !34
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !34, !noundef !3
  %i.q = add i64 %i.p, %.sroa.02.08.i.lcssa.sink16.i
  store i64 %i.q, ptr %i.o, align 8, !alias.scope !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.02.08.i.lcssa.sink16.i)
  %i.r = load i64, ptr %i.a, align 8, !range !4, !noundef !3
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.019.0.copyload = load ptr, ptr %i.t, align 8 ; 6 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.420.0.copyload = load i64, ptr %.sroa.420.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  store i8 15, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.019.0.copyload, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.420.0.copyload, ptr %.sroa.526.0..sroa_idx, align 8
  br label %bb.y

bb.d:                                             ; preds = %.loopexit
  switch i64 %.sroa.420.0.copyload, label %thread-pre-split.i.i [
    i64 0, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %.sroa.019.0.copyload, align 1, !alias.scope !36, !noundef !3 ; 2 uses
  switch i8 %i.u, label %bb.f [
    i8 43, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread
    i8 45, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread
  ]

thread-pre-split.i.i:                             ; preds = %bb.d
  %.pr.i.i = load i8, ptr %.sroa.019.0.copyload, align 1, !alias.scope !36
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i.i, %bb.e
  %i.v = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.u, %bb.e ]
  switch i8 %i.v, label %bb.m [
    i8 43, label %bb.g
    i8 45, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 1
  %i.x = add nsw i64 %.sroa.420.0.copyload, -1
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 1 ; 2 uses
  %i.z = add nsw i64 %.sroa.420.0.copyload, -1    ; 3 uses
  %i.aa = icmp samesign ult i64 %.sroa.420.0.copyload, 9
  br i1 %i.aa, label %.preheader118.i.i, label %.lr.ph.i.i34

.preheader118.i.i:                                ; preds = %bb.h
  %.not105139.i.i = icmp eq i64 %i.z, 0
  br i1 %.not105139.i.i, label %.loopexit.i.i, label %.lr.ph143.i.i

.loopexit.i.i:                                    ; preds = %bb.k, %bb.l, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %.preheader.i.i, %.preheader118.i.i
  %.sroa.086.1.i.i = phi i32 [ %i.ba, %bb.l ], [ %i.dh, %bb.w ], [ %i.bn, %bb.p ], [ 0, %.preheader.i.i ], [ 0, %.preheader118.i.i ], [ %i.bq, %bb.q ], [ %i.by, %bb.r ], [ %i.cf, %bb.s ], [ %i.cm, %bb.t ], [ %i.ct, %bb.u ], [ %i.da, %bb.v ], [ %i.ao, %bb.k ]
  %i.ab = zext i32 %.sroa.086.1.i.i to i64
  %i.ac = shl nuw i64 %i.ab, 32
  br label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit

.lr.ph.i.i34:                                     ; preds = %bb.h, %bb.k
  %.sroa.0.1138.i.i = phi ptr [ %i.ad, %bb.k ], [ %i.y, %bb.h ] ; 3 uses
  %.sroa.26.1137.i.i = phi i64 [ %i.ae, %bb.k ], [ %i.z, %bb.h ]
  %.sroa.086.0136.i.i = phi i32 [ %i.ao, %bb.k ], [ 0, %bb.h ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i.i, i64 1
  %i.ae = add nsw i64 %.sroa.26.1137.i.i, -1      ; 2 uses
  %i.af = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i.i, i32 10) ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.af, 0
  %i.ah = extractvalue { i32, i1 } %i.af, 1
  br i1 %i.ah, label %.loopexit114.sink.split.i.i, label %bb.i, !prof !5

bb.i:                                             ; preds = %.lr.ph.i.i34
  %i.ai = load i8, ptr %.sroa.0.1138.i.i, align 1, !alias.scope !36, !noundef !3
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10
  br i1 %i.al, label %bb.j, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.am = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.ag, i32 %i.ak) ; 2 uses
  %i.an = extractvalue { i32, i1 } %i.am, 1
  br i1 %i.an, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.ao = extractvalue { i32, i1 } %i.am, 0       ; 2 uses
  %.not104.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not104.i.i, label %.loopexit.i.i, label %.lr.ph.i.i34

.loopexit114.sink.split.i.i:                      ; preds = %.lr.ph.i.i34, %.preheader115.i.i
  %.sroa.0.3147.lcssa.sink.i.i = phi ptr [ %.sroa.0.3147.i.i, %.preheader115.i.i ], [ %.sroa.0.1138.i.i, %.lr.ph.i.i34 ]
  %.sink190.i.i = phi i64 [ 513, %.preheader115.i.i ], [ 769, %.lr.ph.i.i34 ]
  %i.ap = load i8, ptr %.sroa.0.3147.lcssa.sink.i.i, align 1, !alias.scope !36, !noundef !3
  %i.aq = add i8 %i.ap, -48
  %i.ar = icmp ult i8 %i.aq, 10
  %i.as = select i1 %i.ar, i64 %.sink190.i.i, i64 257
  br label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit

.lr.ph143.i.i:                                    ; preds = %.preheader118.i.i, %bb.l
  %.sroa.0.2142.i.i = phi ptr [ %i.az, %bb.l ], [ %i.y, %.preheader118.i.i ] ; 2 uses
  %.sroa.26.2141.i.i = phi i64 [ %i.ay, %bb.l ], [ %i.z, %.preheader118.i.i ]
  %.sroa.086.2140.i.i = phi i32 [ %i.ba, %bb.l ], [ 0, %.preheader118.i.i ]
  %i.at = load i8, ptr %.sroa.0.2142.i.i, align 1, !alias.scope !36, !noundef !3
  %i.au = zext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.l, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.l:                                             ; preds = %.lr.ph143.i.i
  %i.ax = mul i32 %.sroa.086.2140.i.i, 10
  %i.ay = add nsw i64 %.sroa.26.2141.i.i, -1      ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.2142.i.i, i64 1
  %i.ba = sub i32 %i.ax, %i.av                    ; 2 uses
  %.not105.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not105.i.i, label %.loopexit.i.i, label %.lr.ph143.i.i

bb.m:                                             ; preds = %bb.g, %bb.f
  %.sroa.26.0.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.420.0.copyload, %bb.f ] ; 9 uses
  %.sroa.0.0.i.i = phi ptr [ %i.w, %bb.g ], [ %.sroa.019.0.copyload, %bb.f ] ; 8 uses
  %i.bb = icmp samesign ult i64 %.sroa.26.0.i.i, 8
  br i1 %i.bb, label %.preheader.i.i, label %.preheader115.i.i

.preheader.i.i:                                   ; preds = %bb.m
  %.not107148.i.i = icmp eq i64 %.sroa.26.0.i.i, 0
  br i1 %.not107148.i.i, label %.loopexit.i.i, label %.lr.ph152.i.i

.preheader115.i.i:                                ; preds = %bb.m, %bb.p
  %.sroa.0.3147.i.i = phi ptr [ %i.bc, %bb.p ], [ %.sroa.0.0.i.i, %bb.m ] ; 3 uses
  %.sroa.26.3146.i.i = phi i64 [ %i.bd, %bb.p ], [ %.sroa.26.0.i.i, %bb.m ]
  %.sroa.086.3145.i.i = phi i32 [ %i.bn, %bb.p ], [ 0, %bb.m ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i.i, i64 1
  %i.bd = add nsw i64 %.sroa.26.3146.i.i, -1      ; 2 uses
  %i.be = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i.i, i32 10) ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 0
  %i.bg = extractvalue { i32, i1 } %i.be, 1
  br i1 %i.bg, label %.loopexit114.sink.split.i.i, label %bb.n, !prof !5

bb.n:                                             ; preds = %.preheader115.i.i
  %i.bh = load i8, ptr %.sroa.0.3147.i.i, align 1, !alias.scope !36, !noundef !3
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48                  ; 2 uses
  %i.bk = icmp ult i32 %i.bj, 10
  br i1 %i.bk, label %bb.o, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bl = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bf, i32 %i.bj) ; 2 uses
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread, label %bb.p, !prof !5

bb.p:                                             ; preds = %bb.o
  %i.bn = extractvalue { i32, i1 } %i.bl, 0       ; 2 uses
  %.not106.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not106.i.i, label %.loopexit.i.i, label %.preheader115.i.i

.lr.ph152.i.i:                                    ; preds = %.preheader.i.i
  %i.bo = load i8, ptr %.sroa.0.0.i.i, align 1, !alias.scope !36, !noundef !3
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48                  ; 3 uses
  %i.br = icmp ult i32 %i.bq, 10
  br i1 %i.br, label %bb.q, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.q:                                             ; preds = %.lr.ph152.i.i
  %.not107.i.i = icmp eq i64 %.sroa.26.0.i.i, 1
  br i1 %.not107.i.i, label %.loopexit.i.i, label %.lr.ph152.i.i.1

.lr.ph152.i.i.1:                                  ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !36, !noundef !3
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -48                  ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 10
  br i1 %i.bw, label %bb.r, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.r:                                             ; preds = %.lr.ph152.i.i.1
  %i.bx = mul nuw nsw i32 %i.bq, 10
  %i.by = add nuw nsw i32 %i.bv, %i.bx            ; 2 uses
  %.not107.i.i.1 = icmp eq i64 %.sroa.26.0.i.i, 2
  br i1 %.not107.i.i.1, label %.loopexit.i.i, label %.lr.ph152.i.i.2

.lr.ph152.i.i.2:                                  ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !36, !noundef !3
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -48                  ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 10
  br i1 %i.cd, label %bb.s, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.s:                                             ; preds = %.lr.ph152.i.i.2
  %i.ce = mul nuw nsw i32 %i.by, 10
  %i.cf = add nuw nsw i32 %i.cc, %i.ce            ; 2 uses
  %.not107.i.i.2 = icmp eq i64 %.sroa.26.0.i.i, 3
  br i1 %.not107.i.i.2, label %.loopexit.i.i, label %.lr.ph152.i.i.3

.lr.ph152.i.i.3:                                  ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 3
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !36, !noundef !3
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 10
  br i1 %i.ck, label %bb.t, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.t:                                             ; preds = %.lr.ph152.i.i.3
  %i.cl = mul nuw nsw i32 %i.cf, 10
  %i.cm = add nuw nsw i32 %i.cj, %i.cl            ; 2 uses
  %.not107.i.i.3 = icmp eq i64 %.sroa.26.0.i.i, 4
  br i1 %.not107.i.i.3, label %.loopexit.i.i, label %.lr.ph152.i.i.4

.lr.ph152.i.i.4:                                  ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !36, !noundef !3
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -48                  ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 10
  br i1 %i.cr, label %bb.u, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.u:                                             ; preds = %.lr.ph152.i.i.4
  %i.cs = mul i32 %i.cm, 10
  %i.ct = add i32 %i.cq, %i.cs                    ; 2 uses
  %.not107.i.i.4 = icmp eq i64 %.sroa.26.0.i.i, 5
  br i1 %.not107.i.i.4, label %.loopexit.i.i, label %.lr.ph152.i.i.5

.lr.ph152.i.i.5:                                  ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 5
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !36, !noundef !3
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -48                  ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 10
  br i1 %i.cy, label %bb.v, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.v:                                             ; preds = %.lr.ph152.i.i.5
  %i.cz = mul i32 %i.ct, 10
  %i.da = add i32 %i.cx, %i.cz                    ; 2 uses
  %.not107.i.i.5 = icmp eq i64 %.sroa.26.0.i.i, 6
  br i1 %.not107.i.i.5, label %.loopexit.i.i, label %.lr.ph152.i.i.6

.lr.ph152.i.i.6:                                  ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 6
  %i.dc = load i8, ptr %i.db, align 1, !alias.scope !36, !noundef !3
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nsw i32 %i.dd, -48                  ; 2 uses
  %i.df = icmp ult i32 %i.de, 10
  br i1 %i.df, label %bb.w, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.w:                                             ; preds = %.lr.ph152.i.i.6
  %i.dg = mul i32 %i.da, 10
  %i.dh = add i32 %i.de, %i.dg
  br label %.loopexit.i.i

_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit: ; preds = %.loopexit.i.i, %.loopexit114.sink.split.i.i
  %.sroa.12.0.insert.insert.i.i = phi i64 [ %i.as, %.loopexit114.sink.split.i.i ], [ %i.ac, %.loopexit.i.i ] ; 3 uses
  %i.di = trunc i64 %.sroa.12.0.insert.insert.i.i to i1
  br i1 %i.di, label %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread, label %bb.x

_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread: ; preds = %bb.j, %bb.i, %.lr.ph143.i.i, %bb.n, %bb.o, %.lr.ph152.i.i, %.lr.ph152.i.i.1, %.lr.ph152.i.i.2, %.lr.ph152.i.i.3, %.lr.ph152.i.i.4, %.lr.ph152.i.i.5, %.lr.ph152.i.i.6, %bb.d, %bb.e, %bb.e, %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit
  %.sroa.12.0.insert.insert.i.i36 = phi i64 [ %.sroa.12.0.insert.insert.i.i, %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit ], [ 257, %bb.e ], [ 257, %.lr.ph152.i.i ], [ 1, %bb.d ], [ 257, %.lr.ph143.i.i ], [ 257, %bb.e ], [ 257, %bb.n ], [ 257, %.lr.ph152.i.i.6 ], [ 257, %.lr.ph152.i.i.5 ], [ 257, %.lr.ph152.i.i.4 ], [ 257, %.lr.ph152.i.i.3 ], [ 257, %.lr.ph152.i.i.2 ], [ 257, %.lr.ph152.i.i.1 ], [ 513, %bb.o ], [ 769, %bb.j ], [ 257, %bb.i ]
  %.sroa.431.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i.i36, 8
  %.sroa.431.0.extract.trunc = trunc i64 %.sroa.431.0.extract.shift to i8
  store i8 8, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.431.0.extract.trunc, ptr %.sroa.428.0..sroa_idx, align 1
  br label %bb.y

bb.x:                                             ; preds = %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit
  %.sroa.633.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i.i, 32
  %.sroa.633.0.extract.trunc = trunc nuw i64 %.sroa.633.0.extract.shift to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.633.0.extract.trunc, ptr %i.dj, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.c, %_RNvXso_NtCs4NRVxsYgnAr_4core3numlNtNtNtB7_3str6traits7FromStr8from_str.exit.thread, %bb.x
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB6_6Cursor8read_inttEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !46, !nonnull !3, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !46, !noundef !3 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 3 uses
  %i.f = icmp samesign eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.02.08.i.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %i.g = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.val.i.i = load i8, ptr %i.g, align 1, !noalias !47, !noundef !3
  %i.h = add i8 %.val.i.i, -58
  %.sroa.0.0.i.i.i.i.i = icmp ult i8 %i.h, -10
  br i1 %.sroa.0.0.i.i.i.i.i, label %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.j = add nuw i64 %.sroa.02.08.i.i, 1
  %i.k = icmp eq ptr %i.i, %i.e
  br i1 %i.k, label %.loopexit, label %.lr.ph.i.i

_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i: ; preds = %.lr.ph.i.i
  %i.l = icmp ult i64 %.sroa.02.08.i.i, %i.d
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nuw i64 %i.d, %.sroa.02.08.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.02.08.i.i
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i, %bb.a
  %.sink17.i = phi ptr [ %i.n, %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i ], [ %i.e, %bb.a ], [ %i.e, %bb.b ]
  %.sink.i = phi i64 [ %i.m, %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.02.08.i.lcssa.sink16.i = phi i64 [ %.sroa.02.08.i.i, %_RNvMs0_NtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB5_6Cursor10read_exact.exit.i ], [ 0, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  store ptr %.sink17.i, ptr %1, align 8, !alias.scope !46
  store i64 %.sink.i, ptr %i.c, align 8, !alias.scope !46
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !46, !noundef !3
  %i.q = add i64 %i.p, %.sroa.02.08.i.lcssa.sink16.i
  store i64 %i.q, ptr %i.o, align 8, !alias.scope !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.02.08.i.lcssa.sink16.i)
  %i.r = load i64, ptr %i.a, align 8, !range !4, !noundef !3
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.017.0.copyload = load ptr, ptr %i.t, align 8 ; 4 uses
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.418.0.copyload = load i64, ptr %.sroa.418.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  store i8 15, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.017.0.copyload, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.418.0.copyload, ptr %.sroa.524.0..sroa_idx, align 8
  br label %bb.o

bb.d:                                             ; preds = %.loopexit
  switch i64 %.sroa.418.0.copyload, label %thread-pre-split.i.i [
    i64 0, label %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit.thread
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %.sroa.017.0.copyload, align 1, !alias.scope !48, !noundef !3 ; 2 uses
  switch i8 %i.u, label %bb.f [
    i8 43, label %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit.thread
    i8 45, label %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit.thread
  ]

thread-pre-split.i.i:                             ; preds = %bb.d
  %.pr.i.i = load i8, ptr %.sroa.017.0.copyload, align 1, !alias.scope !48
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i.i, %bb.e
  %i.v = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.u, %bb.e ]
  %cond.i.i = icmp eq i8 %i.v, 43                 ; 2 uses
  %i.w = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %.sroa.418.0.copyload, %i.w ; 6 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.0.copyload, i64 %.sroa.0.0.idx.i.i ; 5 uses
  %i.x = icmp samesign ult i64 %.sroa.15.0.i.i, 5
  br i1 %i.x, label %.preheader.i.i, label %.preheader58.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.f
  %.not5466.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5466.i.i, label %.loopexit.i.i, label %.lr.ph.i.i31

.preheader58.i.i:                                 ; preds = %bb.i
  %.not53.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not53.i.i, label %.loopexit.i.i, label %.preheader58.i.i.preheader

.loopexit.i.i:                                    ; preds = %.preheader58.i.i, %bb.j, %bb.k, %bb.l, %bb.m, %.preheader.i.i
  %.sroa.043.1.i.i = phi i16 [ %i.bq, %bb.m ], [ 0, %.preheader.i.i ], [ %i.as, %bb.j ], [ %i.ba, %bb.k ], [ %i.bi, %bb.l ], [ %i.am, %.preheader58.i.i ]
  %i.y = zext i16 %.sroa.043.1.i.i to i32
  %i.z = shl nuw i32 %i.y, 16
  br label %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit

.preheader58.i.i.preheader:                       ; preds = %bb.f, %.preheader58.i.i
  %.sroa.0.1.i.i70 = phi ptr [ %i.aa, %.preheader58.i.i ], [ %.sroa.0.0.i.i, %bb.f ] ; 2 uses
  %.sroa.15.1.i.i69 = phi i64 [ %i.ab, %.preheader58.i.i ], [ %.sroa.15.0.i.i, %bb.f ]
  %.sroa.043.0.i.i68 = phi i16 [ %i.am, %.preheader58.i.i ], [ 0, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i70, i64 1
  %i.ab = add nsw i64 %.sroa.15.1.i.i69, -1       ; 2 uses
  %i.ac = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i.i68, i16 10) ; 2 uses
  %i.ad = extractvalue { i16, i1 } %i.ac, 0       ; 2 uses
  %i.ae = extractvalue { i16, i1 } %i.ac, 1
  %i.af = load i8, ptr %.sroa.0.1.i.i70, align 1, !alias.scope !48, !noundef !3 ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.g, !prof !5

bb.g:                                             ; preds = %.preheader58.i.i.preheader
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -48                  ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 10
  br i1 %i.ai, label %bb.i, label %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.h:                                             ; preds = %.preheader58.i.i.preheader
  %i.aj = add i8 %i.af, -48
  %i.ak = icmp ult i8 %i.aj, 10
  %spec.select.i.i = select i1 %i.ak, i32 513, i32 257
  br label %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit

bb.i:                                             ; preds = %bb.g
  %i.al = trunc nuw nsw i32 %i.ah to i16
  %i.am = add i16 %i.ad, %i.al                    ; 3 uses
  %i.an = icmp ult i16 %i.am, %i.ad
  br i1 %i.an, label %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit.thread, label %.preheader58.i.i, !prof !5

.lr.ph.i.i31:                                     ; preds = %.preheader.i.i
  %i.ao = load i8, ptr %.sroa.0.0.i.i, align 1, !alias.scope !48, !noundef !3
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -48                  ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 10
  br i1 %i.ar, label %bb.j, label %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.j:                                             ; preds = %.lr.ph.i.i31
  %i.as = trunc nuw nsw i32 %i.aq to i16          ; 2 uses
  %.not54.i.i = icmp eq i64 %.sroa.15.0.i.i, 1
  br i1 %.not54.i.i, label %.loopexit.i.i, label %.lr.ph.i.i31.1

.lr.ph.i.i31.1:                                   ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !48, !noundef !3
  %i.av = zext i8 %i.au to i32
  %i.aw = add nsw i32 %i.av, -48                  ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 10
  br i1 %i.ax, label %bb.k, label %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.k:                                             ; preds = %.lr.ph.i.i31.1
  %i.ay = mul nuw nsw i16 %i.as, 10
  %i.az = trunc nuw nsw i32 %i.aw to i16
  %i.ba = add nuw nsw i16 %i.ay, %i.az            ; 2 uses
  %.not54.i.i.1 = icmp eq i64 %.sroa.15.0.i.i, 2
  br i1 %.not54.i.i.1, label %.loopexit.i.i, label %.lr.ph.i.i31.2

.lr.ph.i.i31.2:                                   ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !48, !noundef !3
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48                  ; 2 uses
  %i.bf = icmp ult i32 %i.be, 10
  br i1 %i.bf, label %bb.l, label %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.l:                                             ; preds = %.lr.ph.i.i31.2
  %i.bg = mul nuw i16 %i.ba, 10
  %i.bh = trunc nuw nsw i32 %i.be to i16
  %i.bi = add nuw nsw i16 %i.bg, %i.bh            ; 2 uses
  %.not54.i.i.2 = icmp eq i64 %.sroa.15.0.i.i, 3
  br i1 %.not54.i.i.2, label %.loopexit.i.i, label %.lr.ph.i.i31.3

.lr.ph.i.i31.3:                                   ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !48, !noundef !3
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -48                  ; 2 uses
  %i.bn = icmp ult i32 %i.bm, 10
  br i1 %i.bn, label %bb.m, label %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit.thread

bb.m:                                             ; preds = %.lr.ph.i.i31.3
  %i.bo = mul i16 %i.bi, 10
  %i.bp = trunc nuw nsw i32 %i.bm to i16
  %i.bq = add i16 %i.bo, %i.bp
  br label %.loopexit.i.i

_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit: ; preds = %.loopexit.i.i, %bb.h
  %.sroa.8.0.insert.insert.i.i = phi i32 [ %spec.select.i.i, %bb.h ], [ %i.z, %.loopexit.i.i ] ; 3 uses
  %i.br = trunc i32 %.sroa.8.0.insert.insert.i.i to i1
  br i1 %i.br, label %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit.thread, label %bb.n

_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit.thread: ; preds = %bb.i, %bb.g, %.lr.ph.i.i31, %.lr.ph.i.i31.1, %.lr.ph.i.i31.2, %.lr.ph.i.i31.3, %bb.d, %bb.e, %bb.e, %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit
  %.sroa.8.0.insert.insert.i.i33 = phi i32 [ %.sroa.8.0.insert.insert.i.i, %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit ], [ 257, %bb.e ], [ 257, %.lr.ph.i.i31 ], [ 257, %bb.e ], [ 1, %bb.d ], [ 257, %.lr.ph.i.i31.3 ], [ 257, %.lr.ph.i.i31.2 ], [ 257, %.lr.ph.i.i31.1 ], [ 257, %bb.g ], [ 513, %bb.i ]
  %.sroa.429.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i.i33, 8
  %.sroa.429.0.extract.trunc = trunc i32 %.sroa.429.0.extract.shift to i8
  store i8 8, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.429.0.extract.trunc, ptr %.sroa.426.0..sroa_idx, align 1
  br label %bb.o

bb.n:                                             ; preds = %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit
  %.sroa.530.0.extract.shift = lshr i32 %.sroa.8.0.insert.insert.i.i, 16
  %.sroa.530.0.extract.trunc = trunc nuw i32 %.sroa.530.0.extract.shift to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.530.0.extract.trunc, ptr %i.bs, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %_RNvXsy_NtCs4NRVxsYgnAr_4core3numtNtNtNtB7_3str6traits7FromStr8from_str.exit.thread, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecondEEB1h_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecondENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecondENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecondEEB1o_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecondENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10LeapSecondEEB1o_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10TransitionEEB1h_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10TransitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10TransitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10TransitionEEB1o_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10TransitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone10TransitionEEB1o_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone13LocalTimeTypeEEB1h_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone13LocalTimeTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone13LocalTimeTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone13LocalTimeTypeEEB1o_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone13LocalTimeTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info8timezone13LocalTimeTypeEEB1o_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeINtNtB7_3zip3ZipINtNtB7_5chain5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEEINtNtNtB9_7sources6repeat6RepeathEEB1e_EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB32_3any5checkThhENCNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parser5parses_0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB4l_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3   ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 65
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.i, %bb.b
  %i.i = phi i64 [ %i.t, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.i ], [ %i.a, %bb.b ]
  %i.j = load ptr, ptr %i.c, align 8, !alias.scope !66, !noundef !3
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call { i1, i8 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !65 ; 2 uses
  %i.l = extractvalue { i1, i8 } %i.k, 0
  br i1 %i.l, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.c, align 8, !alias.scope !66
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.i.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.thread.i.i.i: ; preds = %bb.d
  %i.m = extractvalue { i1, i8 } %i.k, 1
  br label %bb.f

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.i.i.i: ; preds = %bb.e, %bb.c
  %.val4.i.i.i.i = load i8, ptr %i.d, align 8, !alias.scope !67
  %.val15.i.i.i.i = load i8, ptr %i.e, align 1, !alias.scope !67
  %i.n = trunc nuw i8 %.val4.i.i.i.i to i1
  br i1 %i.n, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.i.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.thread.i.i.i
  %.pn7.i23.i.i.i = phi i8 [ %i.m, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.thread.i.i.i ], [ %.val15.i.i.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.i.i.i ]
  %i.o = load ptr, ptr %i.f, align 8, !alias.scope !68, !noundef !3
  %.not.i.i13.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i13.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit20.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call { i1, i8 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f), !noalias !65 ; 2 uses
  %i.q = extractvalue { i1, i8 } %i.p, 0
  br i1 %i.q, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit20.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.f, align 8, !alias.scope !68
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit20.i.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit20.thread.i.i.i: ; preds = %bb.g
  %i.r = extractvalue { i1, i8 } %i.p, 1
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit20.i.i.i: ; preds = %bb.h, %bb.f
  %.val4.i15.i.i.i = load i8, ptr %i.g, align 8, !alias.scope !69
  %i.s = trunc nuw i8 %.val4.i15.i.i.i to i1
  br i1 %i.s, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit20.i.i.i
  %.val15.i16.i.i.i = load i8, ptr %i.h, align 1, !alias.scope !69
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.i: ; preds = %bb.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit20.thread.i.i.i
  %.sroa.5.0.i.i.i = phi i8 [ %i.r, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit20.thread.i.i.i ], [ %.val15.i16.i.i.i, %bb.i ]
  %i.t = add i64 %i.i, -1                         ; 3 uses
  store i64 %i.t, ptr %0, align 8, !alias.scope !65
  %i.u = icmp eq i8 %.pn7.i23.i.i.i, 0
  %i.v = icmp eq i8 %.sroa.5.0.i.i.i, 1
  %.sroa.0.0.i.i.i.i = and i1 %i.u, %i.v          ; 2 uses
  %i.w = icmp eq i64 %i.t, 0
  %i.x = zext i1 %.sroa.0.0.i.i.i.i to i8
  %spec.select.i.i = select i1 %.sroa.0.0.i.i.i.i, i8 1, i8 2
  %.sroa.0.0.i.i = select i1 %i.w, i8 %i.x, i8 %spec.select.i.i ; 2 uses
  %.not.i = icmp eq i8 %.sroa.0.0.i.i, 2
  br i1 %.not.i, label %bb.c, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtB8_5chain5ChainINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEEINtNtNtBa_7sources6repeat6RepeathEEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB8_4takeINtB3v_4TakepEB2D_8try_fold5checkThhEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB2D_3any5checkB4c_NCNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parser5parses_0E0E0IB4i_B4h_EEB5z_.exit

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit20.i.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.i.i.i, %bb.a, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtB8_5chain5ChainINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEEINtNtNtBa_7sources6repeat6RepeathEEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB8_4takeINtB3v_4TakepEB2D_8try_fold5checkThhEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB2D_3any5checkB4c_NCNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parser5parses_0E0E0IB4i_B4h_EEB5z_.exit
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.y, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtB8_5chain5ChainINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEEINtNtNtBa_7sources6repeat6RepeathEEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB8_4takeINtB3v_4TakepEB2D_8try_fold5checkThhEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB2D_3any5checkB4c_NCNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parser5parses_0E0E0IB4i_B4h_EEB5z_.exit ], [ false, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.i.i.i ], [ false, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit20.i.i.i ]
  ret i1 %.sroa.0.0

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtB8_5chain5ChainINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEEINtNtNtBa_7sources6repeat6RepeathEEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB8_4takeINtB3v_4TakepEB2D_8try_fold5checkThhEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB2D_3any5checkB4c_NCNvNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parser5parses_0E0E0IB4i_B4h_EEB5z_.exit: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_5chain5ChainINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterhEEINtNtNtB8_7sources6repeat6RepeathEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCscShS5OxKAqE_6chrono.exit.i
  %i.y = trunc nuw i8 %.sroa.0.0.i.i to i1
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtNtCscShS5OxKAqE_6chrono6offset5local7tz_info6parserNtB2_5State3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(176) initializes((0, 1), (8, 16), (168, 169)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
end_hunk_0
