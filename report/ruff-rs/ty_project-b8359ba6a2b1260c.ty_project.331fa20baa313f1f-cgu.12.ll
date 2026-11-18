Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_project-b8359ba6a2b1260c.ty_project.331fa20baa313f1f-cgu.12?download=true
inline.NumInlined: 972
inline.NumDeleted: 491
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvXsn_NtNtCs4o81Y09oZk1_10ty_project4glob8portableNtB5_17PortableGlobErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt:bb.a
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
  ]

bb.b:                                             ; preds = %bb.c, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !range !1791, !noundef !6 ; 2 uses
  %i.w = xor i64 %i.v, -9223372036854775808
  %i.x = icmp slt i64 %i.v, 0
  %i.y = select i1 %i.x, i64 %i.w, i64 7
  switch i64 %i.y, label %bb.b [
    i64 0, label %bb.q
    i64 1, label %bb.j
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 4, label %bb.m
    i64 5, label %bb.n
    i64 6, label %bb.o
    i64 7, label %bb.p
  ]

bb.d:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.z, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_7Display3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.418.0..sroa_idx, align 8
  %i.aa = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !6, !align !9, !noundef !6
  %i.ad = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, ptr noundef nonnull @110, ptr noundef nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.af, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.ae, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs4o81Y09oZk1_10ty_project4glob8portable11InvalidCharNtB6_7Display3fmtBC_, ptr %.sroa.434.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.ag, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_7Display3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.438.0..sroa_idx, align 8
  %i.ah = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !6, !align !9, !noundef !6
  %i.ak = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, ptr noundef nonnull @111, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.al, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_7Display3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.454.0..sroa_idx, align 8
  %i.am = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !6, !align !9, !noundef !6
  %i.ap = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ao, ptr noundef nonnull @112, ptr noundef nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ar, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.aq, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs4o81Y09oZk1_10ty_project4glob8portable11InvalidCharNtB6_7Display3fmtBC_, ptr %.sroa.470.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.as, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_7Display3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.474.0..sroa_idx, align 8
  %i.at = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !6, !align !9, !noundef !6
  %i.aw = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.av, ptr noundef nonnull @113, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ax, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_7Display3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.490.0..sroa_idx, align 8
  %i.ay = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !6, !align !9, !noundef !6
  %i.bb = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ba, ptr noundef nonnull @114, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bc, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_7Display3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.4106.0..sroa_idx, align 8
  %i.bd = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !6, !align !9, !noundef !6
  %i.bg = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bf, ptr noundef nonnull @115, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.j:                                             ; preds = %bb.c
  br label %bb.q

bb.k:                                             ; preds = %bb.c
  br label %bb.q

bb.l:                                             ; preds = %bb.c
  br label %bb.q

bb.m:                                             ; preds = %bb.c
  br label %bb.q

bb.n:                                             ; preds = %bb.c
  br label %bb.q

bb.o:                                             ; preds = %bb.c
  br label %bb.q

bb.p:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !6, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !6
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink120 = phi ptr [ %i.bi, %bb.p ], [ @108, %bb.o ], [ @107, %bb.n ], [ @106, %bb.m ], [ @105, %bb.l ], [ @104, %bb.k ], [ @103, %bb.j ], [ @102, %bb.c ]
  %.sink = phi i64 [ %i.bk, %bb.p ], [ 12, %bb.o ], [ 39, %bb.n ], [ 68, %bb.m ], [ 68, %bb.l ], [ 23, %bb.k ], [ 37, %bb.j ], [ 45, %bb.c ]
  store ptr %.sink120, ptr %i.p, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sink, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs4o81Y09oZk1_10ty_project, ptr %.sroa.43.0..sroa_idx, align 8
  %i.bm = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !6, !align !9, !noundef !6
  %i.bp = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo, ptr noundef nonnull @109, ptr noundef nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.q
  %.sroa.0.1.in = phi i1 [ %i.bp, %bb.q ], [ %i.ad, %bb.d ], [ %i.ak, %bb.e ], [ %i.ap, %bb.f ], [ %i.aw, %bb.g ], [ %i.bb, %bb.h ], [ %i.bg, %bb.i ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !1792 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1803 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !8, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !12, !alias.scope !1804, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1804, !nonnull !6, !noundef !6 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1804, !noundef !6 ; 16 uses
  %.promoted26 = load i8, ptr %i.g, align 8, !alias.scope !1804 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  %i.l = trunc nuw i8 %.promoted26 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit74

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !1806, !noalias !1807, !noundef !6
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit74

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !1808, !noundef !6 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit12.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !1808, !noundef !6
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit14.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !1808, !noundef !6
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !1808, !noundef !6
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit16.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit14.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !1805
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !6
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !6 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !6 ; 2 uses
  br i1 %i.by, label %bb.t, label %bb.u

bb.l:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit74

bb.m:                                             ; preds = %bb.l
  %i.ch = load i8, ptr %i.bk, align 1, !alias.scope !1806, !noalias !1809, !noundef !6
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.n, label %.loopexit74

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load i8, ptr %i.bl, align 1, !noalias !1810, !noundef !6 ; 5 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %bb.p, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit12.i.i: ; preds = %bb.o
  %i.cl = and i8 %i.cj, 31
  %i.cm = zext nneg i8 %i.cl to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cn = load i8, ptr %i.bn, align 1, !noalias !1810, !noundef !6
  %i.co = shl nuw nsw i32 %i.cm, 6
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32               ; 2 uses
  %i.cr = or disjoint i32 %i.co, %i.cq
  %i.cs = icmp samesign ugt i8 %i.cj, -33
  br i1 %i.cs, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit14.i.i, label %.loopexit.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ct = zext nneg i8 %i.cj to i32
  br label %.loopexit.loopexit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit12.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.cu = load i8, ptr %i.bq, align 1, !noalias !1810, !noundef !6
  %i.cv = shl nuw nsw i32 %i.cq, 6
  %i.cw = and i8 %i.cu, 63
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cv, %i.cx            ; 2 uses
  %i.cz = shl nuw nsw i32 %i.cm, 12
  %i.da = or disjoint i32 %i.cy, %i.cz
  %i.db = icmp samesign ugt i8 %i.cj, -17
  br i1 %i.db, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit16.i.i, label %.loopexit.loopexit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit14.i.i
  tail call void @llvm.assume(i1 %i.bv)
  %i.dc = load i8, ptr %i.bt, align 1, !noalias !1810, !noundef !6
  %i.dd = shl nuw nsw i32 %i.cm, 18
  %i.de = and i32 %i.dd, 1835008
  %i.df = shl nuw nsw i32 %i.cy, 6
  %i.dg = and i8 %i.dc, 63
  %i.dh = zext nneg i8 %i.dg to i32
  %i.di = or disjoint i32 %i.df, %i.dh
  %i.dj = or disjoint i32 %i.di, %i.de
  br label %.loopexit.loopexit

.loopexit74:                                      ; preds = %bb.m, %.split.i.i, %bb.c, %.split.i.i.peel
  %.lcssa70 = phi i8 [ %.promoted26, %.split.i.i.peel ], [ %.promoted26, %bb.c ], [ 1, %.split.i.i ], [ 1, %bb.m ]
  %.lcssa67 = phi i64 [ %.promoted, %.split.i.i.peel ], [ %.promoted, %bb.c ], [ %i.bh, %.split.i.i ], [ %i.bh, %bb.m ]
  %i.dk = xor i8 %.lcssa70, 1
  store i8 %i.dk, ptr %i.g, align 8, !alias.scope !1804
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef %.lcssa67, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #33, !noalias !1809
  unreachable

.loopexit.loopexit:                               ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit14.i.i, %bb.p, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.da, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit14.i.i ], [ %i.dj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit16.i.i ], [ %i.cr, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project.exit12.i.i ], [ %i.ct, %bb.p ]
  %i.dl = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.dl)
  br label %.loopexit

.loopexit75:                                      ; preds = %bb.d
  %i.dm = xor i8 %.promoted26, 1
  store i8 %i.dm, ptr %i.g, align 8, !alias.scope !1804
  br i1 %i.l, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit75
  store i8 1, ptr %i.d, align 2, !alias.scope !1804
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %.lcssa69 = phi i64 [ %.promoted, %bb.g ], [ %i.bh, %.loopexit.loopexit ]
  store i8 0, ptr %i.g, align 8, !alias.scope !1804
  br label %bb.r

.critedge:                                        ; preds = %bb.n
  store i8 0, ptr %i.g, align 8, !alias.scope !1804
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %.loopexit, %.loopexit75
  %i.dn = phi i64 [ %.lcssa69, %.loopexit ], [ %i.k, %.loopexit75 ], [ %i.k, %.critedge ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dn, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dn, ptr %i.dp, align 8
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7: ; preds = %.preheader, %bb.q, %bb.r
  %storemerge = phi i64 [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.u, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7
  ret void

bb.t:                                             ; preds = %bb.k
  tail call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cg, i1 noundef zeroext true)
  br label %bb.s

bb.u:                                             ; preds = %bb.k
  tail call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cg, i1 noundef zeroext false)
  br label %bb.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable_or_null(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1815 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noalias !1816, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs4o81Y09oZk1_10ty_project.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECs4o81Y09oZk1_10ty_project(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(16) %0)
  br label %_RNCNKNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs4o81Y09oZk1_10ty_project.exit

_RNCNKNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1821 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noalias !1822, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs4o81Y09oZk1_10ty_project.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs4o81Y09oZk1_10ty_project(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs4o81Y09oZk1_10ty_project.exit

_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs3pBv9WGWlWf_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #12 !guid !1823 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @119, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvYbNtCscuBBDlOF0VN_8schemars10JsonSchema9schema_idCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #13 !guid !1826 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @85, ptr %i.a, align 8, !alias.scope !1827
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %i.b, align 8, !alias.scope !1827
  store i64 -1, ptr %0, align 8, !alias.scope !1827
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs3_Cs3AS159VDs7t_7globsetNtB6_7GlobSet8is_matchRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathECs4o81Y09oZk1_10ty_project(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_Cs3AS159VDs7t_7globsetNtB6_7GlobSet12matches_intoRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathECs4o81Y09oZk1_10ty_project(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs56aZGHL6Dc6_7ruff_db6system4pathNtB2_10SystemPath11to_path_buf(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path10components(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsi_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMCshFWUtO0bu8g_6caminoNtB2_11Utf8PathBuf3pop(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs4o81Y09oZk1_10ty_project(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #20

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECs4o81Y09oZk1_10ty_project(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(16)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs79ICTHwG85D_12regex_syntax6parserNtB2_13ParserBuilder5build(ptr dead_on_unwind noalias noundef writable sret([240 x i8]) align 8 captures(none) dereferenceable(240), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs79ICTHwG85D_12regex_syntax6parserNtB4_6Parser5parse(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias noundef align 8 dereferenceable(240), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler6c_fail(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9add_union(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9add_empty(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler5patch(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder5clear(ptr noalias noundef align 8 dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler10c_at_least(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i1 noundef zeroext, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler7c_empty(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builderNtB4_7Builder5build(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties5empty() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMso_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_10Properties7literal(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs45bxiIjzMqg_5salsa5table4memo18type_assert_failed(i32 noundef) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9configure(ptr noalias noundef align 8 dereferenceable(448), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseNtB4_7Builder14build_from_nfa(ptr dead_on_unwind noalias noundef writable sret([800 x i8]) align 16 captures(none) dereferenceable(800), ptr noundef nonnull align 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_INtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_4sync3ArceEEEENtNtNtBN_3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex5MutexIBv_INtNtB7_5boxed3BoxIBv_jEEEEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs3AS159VDs7t_7globset20GlobSetMatchStrategyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3AS159VDs7t_7globset4glob4GlobENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs3AS159VDs7t_7globset4glob5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3ast11CaptureNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3ast7CommentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir15ClassBytesRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs79ICTHwG85D_12regex_syntax4utf89Utf8RangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs79ICTHwG85D_12regex_syntax3ast5parse10ClassStateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs79ICTHwG85D_12regex_syntax3ast5parse10GroupStateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs79ICTHwG85D_12regex_syntax3hir9translate8HirFrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie10NextInsertENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextDupeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson10range_trie8NextIterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map15Utf8SuffixEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3map16Utf8BoundedEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson7builder5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compiler8Utf8NodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs4o81Y09oZk1_10ty_project(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!1599 = distinct !{!1599, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner4PoolINtNtB4_3vec3VecjEFEB1B_EE3newCs4o81Y09oZk1_10ty_project"}
!1600 = distinct !{!1600, !1599, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner4PoolINtNtB4_3vec3VecjEFEB1B_EE3newCs4o81Y09oZk1_10ty_project: argument 0"}
!1601 = distinct !{!1601, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool4PoolINtNtB4_3vec3VecjEEEE3newCs4o81Y09oZk1_10ty_project"}
!1602 = distinct !{!1602, !1601, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool4PoolINtNtB4_3vec3VecjEEEE3newCs4o81Y09oZk1_10ty_project: argument 0"}
!1603 = !{i64 5537828846641392757}
!1604 = !{i64 -2, i64 -9223372036854775808}
!1605 = !{!1482}
!1606 = !{!1483}
!1607 = !{!1482, !1483}
!1608 = !{!1485}
!1609 = !{!1485, !1482, !1483}
!1610 = !{!1487}
!1611 = !{!1487, !1485, !1482, !1483}
!1612 = !{!1489}
!1613 = !{!1490, !1489, !1487, !1485, !1482, !1483}
!1614 = !{!1490, !1487, !1485, !1482, !1483}
!1615 = !{!1492}
!1616 = !{!1492, !1485, !1482, !1483}
!1617 = !{!1494}
!1618 = !{!1495, !1494, !1492, !1485, !1482, !1483}
!1619 = !{!1495, !1492, !1485, !1482, !1483}
!1620 = !{!1497}
!1621 = !{!1497, !1485, !1482, !1483}
!1622 = !{!1499, !1497, !1485, !1482, !1483}
!1623 = !{!1501}
!1624 = !{!1501, !1499, !1497, !1485, !1482, !1483}
!1625 = !{!1503}
!1626 = !{!1503, !1499, !1497, !1485, !1482, !1483}
!1627 = !{!1505, !1485, !1482, !1483}
!1628 = !{!1507}
!1629 = !{!1508}
!1630 = !{!1511, !1510}
!1631 = !{!1513}
!1632 = !{!1514, !1513, !1482, !1483}
!1633 = !{!1513, !1483}
!1634 = !{!1516}
!1635 = !{!1517, !1514, !1513, !1482, !1483}
!1636 = !{!1513, !1482, !1483}
!1637 = !{!1519}
!1638 = !{!1521}
!1639 = !{!1523, !1521, !1522, !1519, !1514, !1513, !1482, !1483}
!1640 = !{!1523, !1522, !1514, !1513, !1482, !1483}
!1641 = !{!1525}
!1642 = !{!1527}
!1643 = !{!1529}
!1644 = !{!1531}
!1645 = !{!1521, !1519}
!1646 = !{!1533, !1514, !1513, !1482, !1483}
!1647 = !{!1533, !1523, !1522, !1514, !1513, !1482, !1483}
!1648 = !{!1535}
!1649 = !{!1535, !1523, !1521, !1522, !1519, !1514, !1513, !1482, !1483}
!1650 = !{!1537, !1535, !1523, !1521, !1522, !1519, !1514, !1513, !1482, !1483}
!1651 = !{!1543, !1542, !1540, !1539, !1537, !1535, !1523, !1521, !1522, !1519, !1514, !1513, !1482, !1483}
!1652 = !{!1546, !1545}
!1653 = !{!1543, !1540, !1537, !1535, !1523, !1521, !1522, !1519, !1514, !1513, !1482, !1483}
!1654 = !{!1548}
!1655 = !{!1548, !1537, !1535, !1523, !1522, !1514, !1513, !1482, !1483}
!1656 = !{!1537, !1535, !1523, !1522, !1514, !1513, !1482, !1483}
!1657 = !{!1548, !1537, !1535, !1523, !1521, !1522, !1519, !1514, !1513, !1482, !1483}
!1658 = !{!1550, !1548}
!1659 = !{!1552}
!1660 = !{!1553}
!1661 = !{!1552, !1553, !1535, !1523, !1521, !1522, !1519, !1514, !1513, !1482, !1483}
!1662 = !{!1552, !1535, !1523, !1522, !1514, !1513, !1482, !1483}
!1663 = !{!1555}
!1664 = !{!1555, !1552, !1553, !1535, !1523, !1521, !1522, !1519, !1514, !1513, !1482, !1483}
!1665 = !{!1552, !1553, !1535, !1523, !1522, !1514, !1513, !1482, !1483}
!1666 = !{!1555, !1552, !1553, !1535, !1523, !1522, !1514, !1513, !1482, !1483}
!1667 = !{!1553, !1523, !1521, !1522, !1519, !1514, !1513, !1482, !1483}
!1668 = !{!1555, !1552, !1535}
!1669 = !{!1557}
!1670 = !{!1557, !1552, !1535}
!1671 = !{!1557, !1558, !1552, !1553, !1535, !1523, !1521, !1522, !1519, !1514, !1513, !1482, !1483}
!1672 = !{!1557, !1558, !1552, !1535, !1523, !1522, !1514, !1513, !1482, !1483}
!1673 = !{!1552, !1553}
!1674 = !{!1552, !1535}
!1675 = !{!1521, !1519, !1513, !1482, !1483}
!1676 = !{!1560}
!1677 = !{!1562}
!1678 = !{!1564}
!1679 = !{i64 -3, i64 -9223372036854775801}
!1680 = !{!1564, !1565, !1523, !1521, !1522, !1519, !1514, !1513, !1482, !1483}
!1681 = !{!1565, !1523, !1521, !1522, !1519, !1514, !1513, !1482, !1483}
!1682 = !{!1564, !1523, !1521, !1522, !1519, !1514, !1513, !1482, !1483}
!1683 = !{!1567}
!1684 = !{!1569}
!1685 = !{!1571}
!1686 = !{!1571, !1569, !1567}
!1687 = !{!1571, !1569, !1567, !1482, !1483}
!1688 = !{!1573}
!1689 = !{!1575}
!1690 = !{!1577}
!1691 = !{!1577, !1575, !1573}
!1692 = !{!1577, !1575, !1573, !1482, !1483}
!1693 = !{!1579}
!1694 = !{!1581}
!1695 = !{!1583}
!1696 = !{!1583, !1581, !1579}
!1697 = !{!1585}
!1698 = !{!1587}
!1699 = !{!1589}
!1700 = !{!1591}
!1701 = !{!1591, !1589, !1587, !1585, !1583, !1581, !1579}
!1702 = !{!1593}
!1703 = !{!1595}
!1704 = !{!1597}
!1705 = !{!1600}
!1706 = !{!1602}
!1707 = !{i64 7462005980216174501}
!1708 = distinct !{!1708, i1 true, !"_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE12memory_usageCs4o81Y09oZk1_10ty_project"}
!1709 = distinct !{!1709, !1708, !"_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE12memory_usageCs4o81Y09oZk1_10ty_project: argument 0"}
!1710 = distinct !{!1710, i1 true, !"_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE12memory_usageCs4o81Y09oZk1_10ty_project"}
!1711 = distinct !{!1711, !1710, !"_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE12memory_usageCs4o81Y09oZk1_10ty_project: argument 0"}
!1712 = !{i64 -2049573004347755919}
!1713 = !{!1709}
!1714 = !{!1711, !1709}
!1715 = !{i64 1371738456478887933}
!1716 = !{i64 -1735651427951666867}
!1717 = !{i64 -628057578319736439}
!1718 = !{i64 -7977854545731923534}
!1719 = !{i64 2263846749055803471}
!1720 = !{i64 -3682856043823386157}
!1721 = !{i64 1342061960957725485}
!1722 = !{i64 -3695065936856196485}
!1723 = !{i64 443725087700274324}
!1724 = !{i64 -2828459234659754708}
!1725 = !{i64 2665132700351231443}
!1726 = !{i64 4322211653606452407}
!1727 = !{i64 -2176703165245291203}
!1728 = distinct !{!1728, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project"}
!1729 = distinct !{!1729, !1728, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs79ICTHwG85D_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4o81Y09oZk1_10ty_project: argument 0"}
!1730 = distinct !{!1730, i1 true, !"_RNCINvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB8_8Compiler7compileNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEs_0Cs4o81Y09oZk1_10ty_project"}
!1731 = distinct !{!1731, !1730, !"_RNCINvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB8_8Compiler7compileNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEs_0Cs4o81Y09oZk1_10ty_project: argument 1"}
!1732 = distinct !{!1732, !1730, !"_RNCINvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson8compilerNtB8_8Compiler7compileNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEs_0Cs4o81Y09oZk1_10ty_project: argument 0"}
!1733 = !{i64 7273827963502707615}
!1734 = !{!1729}
!1735 = !{!1732, !1731}
!1736 = !{!1731}
!1737 = !{!1732}
!1738 = !{i64 -7505209185998499683}
!1739 = distinct !{!1739, i1 true, !"_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc16escape_debug_ext"}
!1740 = distinct !{!1740, !1739, !"_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc16escape_debug_ext: argument 0"}
!1741 = distinct !{!1741, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core6escape14escape_unicodeKja_ECs4o81Y09oZk1_10ty_project"}
!1742 = distinct !{!1742, !1741, !"_RINvNtCs4NRVxsYgnAr_4core6escape14escape_unicodeKja_ECs4o81Y09oZk1_10ty_project: argument 0"}
!1743 = distinct !{!1743, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core6escape14escape_unicodeKja_ECs4o81Y09oZk1_10ty_project"}
!1744 = distinct !{!1744, !1743, !"_RINvNtCs4NRVxsYgnAr_4core6escape14escape_unicodeKja_ECs4o81Y09oZk1_10ty_project: argument 0"}
!1745 = !{i64 6651472430631238066}
!1746 = !{i32 0, i32 1114112}
!1747 = !{!1740}
!1748 = !{i8 0, i8 -128}
!1749 = !{!1742, !1740}
!1750 = !{!1744, !1740}
!1751 = distinct !{!1751, i1 true, !"_RNvXss_NtNtCs4o81Y09oZk1_10ty_project4glob8portableNtB5_11InvalidCharNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt"}
!1752 = distinct !{!1752, !1751, !"_RNvXss_NtNtCs4o81Y09oZk1_10ty_project4glob8portableNtB5_11InvalidCharNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 1"}
!1753 = distinct !{!1753, !1751, !"_RNvXss_NtNtCs4o81Y09oZk1_10ty_project4glob8portableNtB5_11InvalidCharNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 0"}
!1754 = !{i64 -3439638085209553659}
!1755 = !{!1753, !1752}
!1756 = distinct !{!1756, i1 true, !"_RNvXNtNtCslDNmBs4Oaup_11shellexpand7strings5funcsINtB2_11LookupErrorNtNtCs2AWtUsOyxgP_3std3env8VarErrorENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs4o81Y09oZk1_10ty_project"}
!1757 = distinct !{!1757, !1756, !"_RNvXNtNtCslDNmBs4Oaup_11shellexpand7strings5funcsINtB2_11LookupErrorNtNtCs2AWtUsOyxgP_3std3env8VarErrorENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs4o81Y09oZk1_10ty_project: argument 1"}
!1758 = distinct !{!1758, !1756, !"_RNvXNtNtCslDNmBs4Oaup_11shellexpand7strings5funcsINtB2_11LookupErrorNtNtCs2AWtUsOyxgP_3std3env8VarErrorENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs4o81Y09oZk1_10ty_project: argument 0"}
!1759 = distinct !{null}
!1760 = !{i64 -1072723469245436339}
!1761 = !{!1757}
!1762 = !{!1758, !1757}
!1763 = !{i64 547229815192986101}
!1764 = !{i64 8933220554992804297}
!1765 = !{i64 9175590721599214653}
!1766 = !{i64 6977153919212722874}
!1767 = distinct !{!1767, i1 true, !"_RINvXs6_NtNtCs4o81Y09oZk1_10ty_project4glob7includeNtB6_13IncludeFilterNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB19_7tracker15StandardTrackerEBa_"}
!1768 = distinct !{!1768, !1767, !"_RINvXs6_NtNtCs4o81Y09oZk1_10ty_project4glob7includeNtB6_13IncludeFilterNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB19_7tracker15StandardTrackerEBa_: argument 0"}
!1769 = distinct !{!1769, !1767, !"_RINvXs6_NtNtCs4o81Y09oZk1_10ty_project4glob7includeNtB6_13IncludeFilterNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB19_7tracker15StandardTrackerEBa_: argument 1"}
!1770 = distinct !{!1770, !1767, !"_RINvXs6_NtNtCs4o81Y09oZk1_10ty_project4glob7includeNtB6_13IncludeFilterNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB19_7tracker15StandardTrackerEBa_: argument 2"}
!1771 = distinct !{!1771, i1 true, !"_RNvNtNtCs4o81Y09oZk1_10ty_project4glob7include16dfa_memory_usage"}
!1772 = distinct !{!1772, !1771, !"_RNvNtNtCs4o81Y09oZk1_10ty_project4glob7include16dfa_memory_usage: argument 0"}
!1773 = distinct !{!1773, i1 true, !"_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE12memory_usageCs4o81Y09oZk1_10ty_project"}
!1774 = distinct !{!1774, !1773, !"_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_3DFAINtNtCscdodAO9FK5_5alloc3vec3VecmEE12memory_usageCs4o81Y09oZk1_10ty_project: argument 0"}
!1775 = distinct !{!1775, i1 true, !"_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE12memory_usageCs4o81Y09oZk1_10ty_project"}
!1776 = distinct !{!1776, !1775, !"_RNvMsn_NtNtCs98D8VPWzHuM_14regex_automata3dfa5denseINtB5_11MatchStatesINtNtCscdodAO9FK5_5alloc3vec3VecmEE12memory_usageCs4o81Y09oZk1_10ty_project: argument 0"}
!1777 = !{i64 7720075764132570397}
!1778 = !{!1768}
!1779 = !{!1769}
!1780 = !{!1768, !1769, !1770}
!1781 = !{!1772, !1769}
!1782 = !{!1774, !1772, !1769}
!1783 = !{!1776, !1774, !1772, !1769}
!1784 = !{!1769, !1770}
!1785 = !{i64 8904015949582134763}
!1786 = !{i32 -1, i32 3}
!1787 = !{i64 8814666024737230729}
!1788 = !{i64 -399611278638072408}
!1789 = !{i64 891517438454828269}
!1790 = !{i64 -1, i64 -9223372036854775802}
!1791 = !{i64 0, i64 -9223372036854775801}
!1792 = !{i64 6815086014232069938}
!1793 = distinct !{!1793, i1 true, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!1794 = distinct !{!1794, !1793, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!1795 = distinct !{!1795, i1 true, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!1796 = distinct !{!1796, !1795, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!1797 = distinct !{!1797, i1 true, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1798 = distinct !{!1798, !1797, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1799 = distinct !{!1799, !1795, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0:Peel0"}
!1800 = distinct !{!1800, i1 true, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4o81Y09oZk1_10ty_project"}
!1801 = distinct !{!1801, !1800, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4o81Y09oZk1_10ty_project: argument 0"}
!1802 = distinct !{!1802, !1793, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!1803 = !{i64 -4954854387515638778}
!1804 = !{!1794}
!1805 = !{!1796}
!1806 = !{!1798}
!1807 = !{!1799, !1796}
!1808 = !{!1801, !1799, !1796}
!1809 = !{!1802, !1794}
!1810 = !{!1801, !1802, !1794}
!1811 = distinct !{!1811, i1 true, !"_RNCNKNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs4o81Y09oZk1_10ty_project"}
!1812 = distinct !{!1812, !1811, !"_RNCNKNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID0s_0Cs4o81Y09oZk1_10ty_project: argument 0"}
!1813 = distinct !{!1813, i1 true, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StoragejzE11get_or_initNvNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECs4o81Y09oZk1_10ty_project"}
!1814 = distinct !{!1814, !1813, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StoragejzE11get_or_initNvNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECs4o81Y09oZk1_10ty_project: argument 0"}
!1815 = !{i64 6246324241049183044}
!1816 = !{!1814, !1812}
!1817 = distinct !{!1817, i1 true, !"_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs4o81Y09oZk1_10ty_project"}
!1818 = distinct !{!1818, !1817, !"_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs4o81Y09oZk1_10ty_project: argument 0"}
!1819 = distinct !{!1819, i1 true, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs4o81Y09oZk1_10ty_project"}
!1820 = distinct !{!1820, !1819, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs4o81Y09oZk1_10ty_project: argument 0"}
!1821 = !{i64 5753592370773669535}
!1822 = !{!1820, !1818}
!1823 = !{i64 8623203859897544992}
!1824 = distinct !{!1824, i1 true, !"_RNvXs1_NtNtCscuBBDlOF0VN_8schemars17json_schema_impls10primitivesbNtB9_10JsonSchema11schema_name"}
!1825 = distinct !{!1825, !1824, !"_RNvXs1_NtNtCscuBBDlOF0VN_8schemars17json_schema_impls10primitivesbNtB9_10JsonSchema11schema_name: argument 0"}
!1826 = !{i64 -318079179335642604}
!1827 = !{!1825}
end_hunk_1
