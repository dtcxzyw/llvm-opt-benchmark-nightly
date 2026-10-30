Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/aho_corasick-d181e0e49ff2e094.aho_corasick.726347116bb87694-cgu.08?download=true
inline.NumInlined: 125
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs9OSMwK5JXHk_12aho_corasick6packed3api8SearcherNtB6_5Debug3fmtBC_:bb.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtCs9OSMwK5JXHk_12aho_corasick4util5errorNtB5_10MatchErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !186, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  switch i8 %i.f, label %default.unreachable67 [
    i8 0, label %bb.d
    i8 1, label %bb.f
    i8 2, label %bb.b
    i8 3, label %bb.c
    i8 4, label %bb.g
  ]

default.unreachable67:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = load i8, ptr %i.g, align 1, !range !10, !noundef !4
  store i8 %i.h, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsF_NtNtCs9OSMwK5JXHk_12aho_corasick4util6searchNtB5_9MatchKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !align !8, !noundef !4
  %i.l = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @23, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = load i8, ptr %i.g, align 1, !range !10, !noundef !4
  store i8 %i.m, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsF_NtNtCs9OSMwK5JXHk_12aho_corasick4util6searchNtB5_9MatchKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.n = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !align !8, !noundef !4
  %i.q = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !align !8, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !4, !nonnull !4
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 46)
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.w, %bb.d ], [ %i.q, %bb.c ], [ %i.ac, %bb.f ], [ %i.ai, %bb.g ], [ %i.l, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.f:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !8, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !4, !nonnull !4
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 48)
  br label %bb.e

bb.g:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !align !8, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !4, !nonnull !4
  %i.ai = tail call noundef zeroext i1 %i.ah(ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 73)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs9OSMwK5JXHk_12aho_corasick6packed3apiNtB5_8FindIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 8 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !align !8, !noundef !4 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !199, !noundef !4 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %.not4.i = icmp ugt i64 %i.e, %i.k              ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not4.i, label %bb.l, label %bb.k, !prof !11

bb.d:                                             ; preds = %bb.b
  br i1 %.not4.i, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.c, i64 noundef %i.e, i64 noundef range(i64 0, -9223372036854775808) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !noalias !200
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = sub nuw i64 %i.e, %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !199, !noundef !4
  %i.r = icmp ult i64 %i.o, %i.q
  br i1 %i.r, label %_RNvMs3_NtNtCs9OSMwK5JXHk_12aho_corasick6packed3apiNtB5_8Searcher12find_in_slow.exit.i, label %bb.g

_RNvMs3_NtNtCs9OSMwK5JXHk_12aho_corasick6packed3apiNtB5_8Searcher12find_in_slow.exit.i: ; preds = %bb.f
  tail call void @_RNvMNtNtCs9OSMwK5JXHk_12aho_corasick6packed9rabinkarpNtB2_9RabinKarp7find_at(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.e, i64 noundef %i.c)
  br label %_RINvMs3_NtNtCs9OSMwK5JXHk_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShEBa_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !203
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !204, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !205, !invariant.load !4, !noalias !203
  %i.w = add nsw i64 %i.v, -1
  %i.x = and i64 %i.w, -16
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !4, !noalias !203, !nonnull !4
  call void %i.ad(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull %i.z, ptr noundef nonnull readonly %i.aa, ptr noundef nonnull readonly %i.ab), !noalias !206, !inline_history !195
  %i.ae = load i64, ptr %i.a, align 8, !range !6, !noalias !203, !noundef !4
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.ag, align 8, !noalias !203
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0.copyload.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !203
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !203
  %i.ah = ptrtoint ptr %.sroa.01.0.copyload.i.i to i64
  %i.ai = ptrtoint ptr %i.i to i64                ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = ptrtoint ptr %.sroa.42.0.copyload.i.i to i64
  %i.al = sub i64 %i.ak, %i.ai                    ; 2 uses
  %.not.i7.i = icmp ugt i64 %i.aj, %i.al
  br i1 %.not.i7.i, label %bb.i, label %_RINvMsb_NtNtCs9OSMwK5JXHk_12aho_corasick4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit.i, !prof !9

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !207
  unreachable

_RINvMsb_NtNtCs9OSMwK5JXHk_12aho_corasick4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit.i: ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aj, ptr %i.am, align 8, !alias.scope !198, !noalias !208
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !198, !noalias !208
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !198, !noalias !208
  store i64 1, ptr %0, align 8, !alias.scope !209
  br label %_RINvMs3_NtNtCs9OSMwK5JXHk_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShEBa_.exit

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !203
  store i64 0, ptr %0, align 8, !alias.scope !209
  br label %_RINvMs3_NtNtCs9OSMwK5JXHk_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShEBa_.exit

bb.k:                                             ; preds = %bb.c
  tail call void @_RNvMNtNtCs9OSMwK5JXHk_12aho_corasick6packed9rabinkarpNtB2_9RabinKarp7find_at(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.e, i64 noundef %i.c)
  br label %_RINvMs3_NtNtCs9OSMwK5JXHk_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShEBa_.exit

bb.l:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef range(i64 0, -9223372036854775808) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !200
  unreachable

_RINvMs3_NtNtCs9OSMwK5JXHk_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShEBa_.exit: ; preds = %_RNvMs3_NtNtCs9OSMwK5JXHk_12aho_corasick6packed3apiNtB5_8Searcher12find_in_slow.exit.i, %_RINvMsb_NtNtCs9OSMwK5JXHk_12aho_corasick4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit.i, %bb.j, %bb.k
  %i.an = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %bb.o

bb.n:                                             ; preds = %_RINvMs3_NtNtCs9OSMwK5JXHk_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShEBa_.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 %.sroa.3.0.copyload, ptr %i.b, align 8
  br label %bb.o

bb.o:                                             ; preds = %_RINvMs3_NtNtCs9OSMwK5JXHk_12aho_corasick6packed3apiNtB6_8Searcher7find_inRShEBa_.exit, %bb.n, %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsF_NtNtCs9OSMwK5JXHk_12aho_corasick4util6searchNtB5_9MatchKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !10, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsF_NtNtCs9OSMwK5JXHk_12aho_corasick4util6searchNtB5_9MatchKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsF_NtNtCs9OSMwK5JXHk_12aho_corasick4util6searchNtB5_9MatchKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.30, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtNtCs4NRVxsYgnAr_4core3fmt3numxNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsD_NtNtCs4NRVxsYgnAr_4core3fmt3numxNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXse_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsF_NtNtCs4NRVxsYgnAr_4core3fmt3numxNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtNtCs9OSMwK5JXHk_12aho_corasick6packed3apiNtB5_10SearchKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !4
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 9)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs9OSMwK5JXHk_12aho_corasick6packed7patternNtB2_8Patterns5reset(ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs9OSMwK5JXHk_12aho_corasick6packed7patternNtB2_8Patterns3add(ptr noalias noundef align 8 dereferenceable(72), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs9OSMwK5JXHk_12aho_corasick6packed9rabinkarpNtB2_9RabinKarp7find_at(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_TjNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_hEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCs9OSMwK5JXHk_12aho_corasick6packed5teddy7builderNtB4_7Builder5build(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(3), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs9OSMwK5JXHk_12aho_corasick6packed7patternNtB2_8Patterns14set_match_kind(ptr noalias noundef align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs9OSMwK5JXHk_12aho_corasick6packed9rabinkarpNtB2_9RabinKarp3new(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_fields_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsV_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs9OSMwK5JXHk_12aho_corasick6packed7pattern8PatternsENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBL_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_TjNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDEEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBQ_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_0
