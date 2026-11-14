Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4054
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN4jiff3fmt5Write10write_char17h83c903f1137504dbE:bb.a
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff3fmt5serde17unsigned_duration21parse_iso_or_friendly17h3d342c7ab40f14b6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 12)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2518 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 0, ptr %i.d, align 8
  %i.e = call noundef ptr @"_ZN4jiff5error3fmt99_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h6f96ac308df63112E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %1, align 1, !noundef !30   ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 45, label %bb.e
    i8 43, label %bb.e
  ]

bb.d:                                             ; preds = %bb.f, %bb.n, %bb.o, %bb.b
  %.sink = phi i32 [ 1000000000, %bb.f ], [ 1000000000, %bb.n ], [ %i.t, %bb.o ], [ 1000000000, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.h, align 8
  ret void

bb.e:                                             ; preds = %bb.c, %bb.c
  %.not14 = icmp eq i64 %2, 1
  br i1 %.not14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.g, ptr %i.i, align 1
  store i8 1, ptr %i.c, align 8
  %i.j = call noundef ptr @"_ZN4jiff5error3fmt99_$LT$impl$u20$core..convert..From$LT$jiff..error..fmt..Error$GT$$u20$for$u20$jiff..error..Error$GT$4from17h6f96ac308df63112E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %0, align 8
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.k = load i8, ptr %i.f, align 1, !noundef !30
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %.sroa.04.0 = phi i8 [ %i.k, %bb.g ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = and i8 %.sroa.04.0, -33
  %or.cond3 = icmp eq i8 %i.l, 80
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN4jiff3fmt8temporal6parser10SpanParser23parse_unsigned_duration3imp17h3ef401c8a9f04c4dE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nonnull readonly align 1 captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %2)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !range !79
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2519)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2520
  call void @_ZN4jiff3fmt8friendly6parser10SpanParser23parse_unsigned_duration3imp17h0491d6948fa21014E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nonnull readonly align 1 captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %2), !noalias !2519
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i32, ptr %i.m, align 8, !range !79, !alias.scope !2522, !noalias !2520, !noundef !30 ; 2 uses
  %i.o = icmp eq i32 %i.n, 1000000000
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !2522, !noalias !2520, !noundef !30
  %i.q = tail call fastcc noundef ptr @"_ZN92_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$jiff..error..ErrorContext$LT$T$C$E$GT$$GT$7context28_$u7b$$u7b$closure$u7d$$u7d$17h4a5e7167fd7c234eE"(ptr noundef %i.p)
  %i.r = ptrtoint ptr %i.q to i64
  br label %_ZN4jiff3fmt8friendly6parser10SpanParser23parse_unsigned_duration17h355c1a889d4f14ddE.exit

bb.l:                                             ; preds = %bb.j
  %i.s = load i64, ptr %i.a, align 8, !alias.scope !2522, !noalias !2520, !noundef !30
  br label %_ZN4jiff3fmt8friendly6parser10SpanParser23parse_unsigned_duration17h355c1a889d4f14ddE.exit

_ZN4jiff3fmt8friendly6parser10SpanParser23parse_unsigned_duration17h355c1a889d4f14ddE.exit: ; preds = %bb.k, %bb.l
  %.sink1.i.i = phi i64 [ %i.r, %bb.k ], [ %i.s, %bb.l ]
  store i64 %.sink1.i.i, ptr %i.b, align 8, !alias.scope !2523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2520
  br label %bb.m

bb.m:                                             ; preds = %_ZN4jiff3fmt8friendly6parser10SpanParser23parse_unsigned_duration17h355c1a889d4f14ddE.exit, %bb.i
  %i.t = phi i32 [ %i.n, %_ZN4jiff3fmt8friendly6parser10SpanParser23parse_unsigned_duration17h355c1a889d4f14ddE.exit ], [ %.pre, %bb.i ] ; 2 uses
  %i.u = icmp eq i32 %i.t, 1000000000
  br i1 %i.u, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.v = load ptr, ptr %i.b, align 8, !noundef !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.v, ptr %0, align 8
  br label %bb.d

bb.o:                                             ; preds = %bb.m
  %i.w = load i64, ptr %i.b, align 8, !noundef !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.w, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i8 noundef %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2524 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = icmp sgt i8 %2, -1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @121, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.f, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.i = tail call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 %3, i8 20)
  %i.g = icmp ult i64 %1, 10
  br i1 %i.g, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %1, 100
  br i1 %i.h, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ult i64 %1, 1000
  br i1 %i.i, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp ult i64 %1, 10000
  br i1 %i.j, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = icmp ugt i64 %1, 9999999999              ; 2 uses
  %i.l = udiv i64 %1, 10000000000
  %.sroa.05.0.i.i = select i1 %i.k, i32 10, i32 0 ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.k, i64 %i.l, i64 %1 ; 3 uses
  %i.m = icmp samesign ugt i64 %.sroa.0.0.i.i, 99999
  br i1 %i.m, label %bb.h, label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i

bb.h:                                             ; preds = %bb.g
  %i.n = udiv i64 %.sroa.0.0.i.i, 100000
  %i.o = or disjoint i32 %.sroa.05.0.i.i, 5
  br label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i

_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.05.1.i.i = phi i32 [ %i.o, %bb.h ], [ %.sroa.05.0.i.i, %bb.g ]
  %.sroa.0.1.i.i = phi i64 [ %i.n, %bb.h ], [ %.sroa.0.0.i.i, %bb.g ]
  %i.p = trunc nuw nsw i64 %.sroa.0.1.i.i to i32  ; 4 uses
  %i.q = add nuw nsw i32 %i.p, 393206
  %i.r = add nuw nsw i32 %i.p, 524188
  %i.s = and i32 %i.q, %i.r
  %i.t = add nuw nsw i32 %i.p, 916504
  %i.u = add nuw nsw i32 %i.p, 514288
  %i.v = and i32 %i.t, %i.u
  %i.w = xor i32 %i.s, %i.v
  %i.x = lshr i32 %i.w, 17
  %i.y = add nuw nsw i32 %i.x, %.sroa.05.1.i.i
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = add nuw nsw i8 %i.z, 1
  br label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit

_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i
  %.sroa.0.0.i20 = phi i8 [ %i.aa, %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ]
  %.sroa.0.0.i21 = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 24) %.sroa.0.0.i20, i8 %.sroa.0.0.i) ; 2 uses
  %i.ab = zext nneg i8 %.sroa.0.0.i21 to i64      ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !nonnull !30, !align !32, !noundef !30
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !30
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 8, !noundef !30 ; 2 uses
  %i.ah = zext i16 %i.ag to i64                   ; 2 uses
  %i.ai = sub nuw i64 %i.ae, %i.ah
  %i.aj = getelementptr i8, ptr %i.ac, i64 %i.ah  ; 2 uses
  %.not = icmp ult i64 %i.ai, %i.ab
  br i1 %.not, label %bb.i, label %.preheader22, !prof !76

bb.i:                                             ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #45
  unreachable

.preheader22:                                     ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit, %.preheader22
  %.sroa.06.0 = phi i64 [ %i.ak, %.preheader22 ], [ %i.ab, %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit ]
  %.sroa.0.0 = phi i64 [ %i.ap, %.preheader22 ], [ %1, %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit ] ; 3 uses
  %i.ak = add i64 %.sroa.06.0, -1                 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.am = urem i64 %.sroa.0.0, 10
  %i.an = trunc nuw nsw i64 %i.am to i8
  %i.ao = or disjoint i8 %i.an, 48
  store i8 %i.ao, ptr %i.al, align 1
  %i.ap = udiv i64 %.sroa.0.0, 10
  %i.aq = icmp ugt i64 %.sroa.0.0, 9
  %i.ar = icmp ne i64 %i.ak, 0                    ; 2 uses
  %or.cond2 = and i1 %i.aq, %i.ar
  br i1 %or.cond2, label %.preheader22, label %.preheader

.preheader:                                       ; preds = %.preheader22
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 %2, i64 %i.ak, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %i.as = zext nneg i8 %.sroa.0.0.i21 to i16
  %i.at = add i16 %i.ag, %i.as
  store i16 %i.at, ptr %i.af, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff3fmt6buffer14BorrowedBuffer14write_fraction17ha7dd1ed5073b7660E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1, i8 %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2528 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 9 uses
  %i.b = icmp ult i32 %3, 1000000000
  br i1 %i.b, label %bb.c, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @125, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = urem i32 %3, 10                          ; 2 uses
  %i.d = trunc nuw nsw i32 %i.c to i8
  %i.e = or disjoint i8 %i.d, 48
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.e, ptr %.8..8..8..sroa_idx, align 1
  %i.f = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.g = shufflevector <4 x i32> %i.f, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.h = udiv <4 x i32> %i.g, <i32 10000, i32 1000, i32 100, i32 10>
  %i.i = urem <4 x i32> %i.h, splat (i32 10)      ; 5 uses
  %i.j = trunc nuw nsw <4 x i32> %i.i to <4 x i8>
  %i.k = or disjoint <4 x i8> %i.j, splat (i8 48)
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <4 x i8> %i.k, ptr %.4..4..4..sroa_idx, align 1
  %i.l = udiv i32 %3, 100000
  %.lhs.trunc = trunc nuw i32 %i.l to i16
  %i.m = urem i16 %.lhs.trunc, 10                 ; 2 uses
  %i.n = trunc nuw nsw i16 %i.m to i8
  %i.o = or disjoint i8 %i.n, 48
  %.3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.o, ptr %.3..3..3..sroa_idx, align 1
  %i.p = udiv i32 %3, 1000000
  %.lhs.trunc44 = trunc nuw nsw i32 %i.p to i16
  %i.q = urem i16 %.lhs.trunc44, 10               ; 2 uses
  %i.r = trunc nuw nsw i16 %i.q to i8
  %i.s = or disjoint i8 %i.r, 48
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.s, ptr %.2..2..2..sroa_idx, align 1
  %i.t = udiv i32 %3, 10000000
  %.lhs.trunc46 = trunc nuw i32 %i.t to i8
  %i.u = urem i8 %.lhs.trunc46, 10                ; 2 uses
  %i.v = or disjoint i8 %i.u, 48
  %.1..1..1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.v, ptr %.1..1..1..sroa_idx, align 1
  %i.w = udiv i32 %3, 100000000
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = or disjoint i8 %i.x, 48
  store i8 %i.y, ptr %i.a, align 1
  br i1 %1, label %bb.d, label %.split

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.i = tail call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 %2, i8 9)
  br label %bb.m

.split:                                           ; preds = %bb.c
  %i.z = icmp eq i32 %i.c, 0
  br i1 %i.z, label %bb.e, label %bb.m

bb.e:                                             ; preds = %.split
  %i.aa = extractelement <4 x i32> %i.i, i64 3
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ac = extractelement <4 x i32> %i.i, i64 2
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ae = extractelement <4 x i32> %i.i, i64 1
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ag = extractelement <4 x i32> %i.i, i64 0
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp eq i16 %i.m, 0
  br i1 %i.ai, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp eq i16 %i.q, 0
  br i1 %i.aj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp eq i8 %i.u, 0
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = icmp ugt i32 %3, 99999999
  %spec.select = zext i1 %i.al to i8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.d
  %.sroa.06.0 = phi i8 [ %.sroa.0.0.i, %bb.d ], [ 9, %.split ], [ 3, %bb.j ], [ 8, %bb.e ], [ %spec.select, %bb.l ], [ 7, %bb.f ], [ 4, %bb.i ], [ 6, %bb.g ], [ 2, %bb.k ], [ 5, %bb.h ] ; 2 uses
  %i.am = zext nneg i8 %.sroa.06.0 to i64         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !30
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 8, !noundef !30 ; 2 uses
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = sub nuw i64 %i.ao, %i.ar
  %.not21 = icmp ult i64 %i.as, %i.am
  br i1 %.not21, label %bb.n, label %bb.o, !prof !42

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @127, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #45
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %0, align 8, !nonnull !30, !align !32, !noundef !30
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull readonly align 1 %i.a, i64 %i.am, i1 false), !alias.scope !2529
  %i.av = zext nneg i8 %.sroa.06.0 to i16
  %i.aw = add i16 %i.aq, %i.av
  store i16 %i.aw, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 !guid !2530 {
bb.a:
  %i.a = icmp sgt i8 %1, -1
  br i1 %i.a, label %bb.c, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @139, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !noundef !30 ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %.not = icmp eq i64 %i.c, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !nonnull !30, !align !32, !noundef !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  store i8 %1, ptr %i.h, align 1
  %i.i = add i16 %i.e, 1
  store i16 %i.i, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4jiff3fmt6buffer14BorrowedBuffer23from_vec_spare_capacity17h1649581a9083f26eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 18)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #17 personality ptr @rust_eh_personality !guid !2533 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !30, !noundef !30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !30 ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !69, !noundef !30
  %i.f = sub i64 %i.e, %i.d
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 65535)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  store ptr %i.g, ptr %0, align 8, !alias.scope !2534
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.h, align 8, !alias.scope !2534
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 0, ptr %i.i, align 8, !alias.scope !2534
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN4jiff3fmt8friendly7printer11SpanPrinter14print_span_hms17he731709023e9bd9bE:bb.a
  %i.h = icmp ne i16 %i.g, 0                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.j = load i8, ptr %i.i, align 4, !range !33, !noundef !30 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6232)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = load i8, ptr %i.k, align 2, !range !46, !alias.scope !6232, !noundef !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.val3.i = load i8, ptr %i.m, align 1, !alias.scope !6232
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11
  %.val.i = load i8, ptr %i.n, align 1, !alias.scope !6232
  %i.o = icmp eq i8 %.val.i, 0
  %i.p = icmp slt i8 %i.j, 0                      ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.q = icmp slt i8 %i.j, 0
  %.2.i.i = select i1 %i.q, i8 0, i8 2
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.d:                                             ; preds = %bb.a
  %i.r = icmp slt i8 %i.j, 0
  %.3.i.i = select i1 %i.r, i8 45, i8 43
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.e:                                             ; preds = %bb.a
  %i.s = icmp slt i8 %i.j, 0
  %.4.i.i = select i1 %i.s, i8 1, i8 2
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.f:                                             ; preds = %bb.b
  %.6.i.i = select i1 %i.p, i8 0, i8 2
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.g:                                             ; preds = %bb.b
  br i1 %i.p, label %bb.h, label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.h:                                             ; preds = %bb.g
  %i.t = trunc nuw i8 %.val3.i to i1
  %.not.i.i = xor i1 %i.t, true
  %brmerge.i.i = or i1 %i.h, %.not.i.i
  %.8.i.i = zext i1 %brmerge.i.i to i8
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.11.0.i.i = phi i8 [ undef, %bb.e ], [ 45, %bb.f ], [ 45, %bb.h ], [ undef, %bb.g ], [ 45, %bb.c ], [ %.3.i.i, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i = phi i8 [ %.4.i.i, %bb.e ], [ %.6.i.i, %bb.f ], [ %.8.i.i, %bb.h ], [ 2, %bb.g ], [ %.2.i.i, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i8, ptr %i.u, align 4, !range !40, !alias.scope !6232, !noundef !30
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !6232 ; 2 uses
  %.sroa.0.0.i = select i1 %i.w, i8 %i.y, i8 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.aa = load i8, ptr %i.z, align 2, !range !40, !alias.scope !6232, !noundef !30 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !6232 ; 2 uses
  store ptr %0, ptr %i.d, align 8, !alias.scope !6231
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %2, ptr %i.ad, align 8, !alias.scope !6231
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.ae, align 8, !alias.scope !6231
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  store i8 %.sroa.11.0.i.i, ptr %i.af, align 1, !alias.scope !6231
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i8 %.sroa.0.0.i, ptr %i.ag, align 2, !alias.scope !6231
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 19
  store i8 %i.aa, ptr %i.ah, align 1, !alias.scope !6231
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 %i.ac, ptr %i.ai, align 4, !alias.scope !6231
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 21 ; 2 uses
  store i8 0, ptr %i.aj, align 1, !alias.scope !6231
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.34)
  %i.ak = load <2 x i64>, ptr %1, align 8
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 8 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load <2 x i64>, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4 ; 9 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.14.0.copyload = load i16, ptr %.sroa.14.0..sroa_idx, align 2 ; 2 uses
  %i.am = icmp eq i8 %i.j, 0
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.34, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.16.0..sroa_idx, i64 3, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit, %bb.i
  %.sroa.32.0 = phi i8 [ 0, %bb.i ], [ 1, %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit ]
  %cond.i = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %cond.i, label %bb.k, label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6233)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !6233, !noalias !6234, !noundef !30
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 8, !alias.scope !6233, !noalias !6234, !noundef !30 ; 2 uses
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %.not.i.i31 = icmp eq i64 %i.ao, %i.ar
  br i1 %.not.i.i31, label %bb.l, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i, !prof !42

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !6235
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i: ; preds = %bb.k
  %i.as = load ptr, ptr %2, align 8, !alias.scope !6233, !noalias !6234, !nonnull !30, !align !32, !noundef !30
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 %.sroa.11.0.i.i, ptr %i.at, align 1, !noalias !6235
  %i.au = add i16 %i.aq, 1
  store i16 %i.au, ptr %i.ap, align 8, !alias.scope !6233, !noalias !6234
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit

_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit: ; preds = %bb.j, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i
  br i1 %i.h, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %_ZN4jiff3fmt8friendly7printer16DesignatorWriter16finish_preceding17h725526bd0d9c77beE.exit, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit57, %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit
  %i.av = phi ptr [ %.pre, %_ZN4jiff3fmt8friendly7printer16DesignatorWriter16finish_preceding17h725526bd0d9c77beE.exit ], [ %.pre, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit57 ], [ %2, %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit ] ; 8 uses
  %.sroa.025.0 = select i1 %i.w, i8 %i.y, i8 2    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6236)
  %i.aw = zext i32 %.sroa.12.0.copyload to i64
  %.sroa.0.0.i.i32 = tail call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 %.sroa.025.0, i8 20) ; 2 uses
  %i.ax = icmp ult i32 %.sroa.12.0.copyload, 10
  br i1 %i.ax, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp ult i32 %.sroa.12.0.copyload, 100
  br i1 %i.ay, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = icmp ult i32 %.sroa.12.0.copyload, 1000
  br i1 %i.az, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = icmp ult i32 %.sroa.12.0.copyload, 10000
  br i1 %i.ba, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i

_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i: ; preds = %bb.p
  %i.bb = icmp ugt i32 %.sroa.12.0.copyload, 99999 ; 2 uses
  %i.bc = udiv i32 %.sroa.12.0.copyload, 100000
  %.sroa.05.1.i.i.i = select i1 %i.bb, i32 5, i32 0
  %.sroa.0.1.i.i.i = select i1 %i.bb, i32 %i.bc, i32 %.sroa.12.0.copyload ; 4 uses
  %i.bd = add nuw nsw i32 %.sroa.0.1.i.i.i, 393206
  %i.be = add nuw nsw i32 %.sroa.0.1.i.i.i, 524188
  %i.bf = and i32 %i.bd, %i.be
  %i.bg = add nuw nsw i32 %.sroa.0.1.i.i.i, 916504
  %i.bh = add nuw nsw i32 %.sroa.0.1.i.i.i, 514288
  %i.bi = and i32 %i.bg, %i.bh
  %i.bj = xor i32 %i.bf, %i.bi
  %i.bk = lshr i32 %i.bj, 17
  %i.bl = add nuw nsw i32 %i.bk, %.sroa.05.1.i.i.i
  %i.bm = trunc nuw nsw i32 %i.bl to i8
  %i.bn = add nuw nsw i8 %i.bm, 1
  br label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i

_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i: ; preds = %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i, %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.0.0.i20.i = phi i8 [ %i.bn, %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i ], [ 1, %bb.m ], [ 2, %bb.n ], [ 3, %bb.o ], [ 4, %bb.p ]
  %.sroa.0.0.i21.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 24) %.sroa.0.0.i20.i, i8 %.sroa.0.0.i.i32) ; 2 uses
  %i.bo = zext nneg i8 %.sroa.0.0.i21.i to i64    ; 2 uses
  %i.bp = load ptr, ptr %i.av, align 8, !alias.scope !6236, !nonnull !30, !align !32, !noundef !30
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 5 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !6236, !noundef !30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 7 uses
  %i.bt = load i16, ptr %i.bs, align 8, !alias.scope !6236, !noundef !30 ; 2 uses
  %i.bu = zext i16 %i.bt to i64                   ; 2 uses
  %i.bv = sub nuw i64 %i.br, %i.bu
  %i.bw = getelementptr i8, ptr %i.bp, i64 %i.bu  ; 2 uses
  %.not.i = icmp ult i64 %i.bv, %i.bo
  br i1 %.not.i, label %bb.q, label %.preheader22.i, !prof !76

bb.q:                                             ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #45, !noalias !6236
  unreachable

.preheader22.i:                                   ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, %.preheader22.i
  %.sroa.06.0.i = phi i64 [ %i.bx, %.preheader22.i ], [ %i.bo, %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i ]
  %.sroa.0.0.i33 = phi i64 [ %i.cc, %.preheader22.i ], [ %i.aw, %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i ] ; 3 uses
  %i.bx = add i64 %.sroa.06.0.i, -1               ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  %i.bz = urem i64 %.sroa.0.0.i33, 10
  %i.ca = trunc nuw nsw i64 %i.bz to i8
  %i.cb = or disjoint i8 %i.ca, 48
  store i8 %i.cb, ptr %i.by, align 1, !noalias !6236
  %i.cc = udiv i64 %.sroa.0.0.i33, 10
  %i.cd = icmp samesign ugt i64 %.sroa.0.0.i33, 9
  %i.ce = icmp ne i64 %i.bx, 0                    ; 2 uses
  %or.cond2.i = and i1 %i.cd, %i.ce
  br i1 %or.cond2.i, label %.preheader22.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader22.i
  br i1 %i.ce, label %.lr.ph.preheader.i, label %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17hdbf47274084ae850E.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bw, i8 48, i64 %i.bx, i1 false), !noalias !6236
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17hdbf47274084ae850E.exit

_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17hdbf47274084ae850E.exit: ; preds = %.preheader.i, %.lr.ph.preheader.i
  %i.cf = zext nneg i8 %.sroa.0.0.i21.i to i16
  %i.cg = add i16 %i.bt, %i.cf                    ; 3 uses
  store i16 %i.cg, ptr %i.bs, align 8, !alias.scope !6236
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6237)
  %i.ch = load i64, ptr %i.bq, align 8, !alias.scope !6237, !noundef !30
  %i.ci = zext i16 %i.cg to i64                   ; 2 uses
  %.not.i34 = icmp eq i64 %i.ch, %i.ci
  br i1 %.not.i34, label %bb.r, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit, !prof !42

bb.r:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17hdbf47274084ae850E.exit
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !6237
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit: ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17hdbf47274084ae850E.exit
  %i.cj = load ptr, ptr %i.av, align 8, !alias.scope !6237, !nonnull !30, !align !32, !noundef !30
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci
  store i8 58, ptr %i.ck, align 1, !noalias !6237
  %i.cl = add i16 %i.cg, 1                        ; 3 uses
  store i16 %i.cl, ptr %i.bs, align 8, !alias.scope !6237
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6238)
  %i.cm = icmp ult i64 %.sroa.0.0.copyload, 10
  br i1 %i.cm, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i39, label %bb.s

bb.s:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit
  %i.cn = icmp ult i64 %.sroa.0.0.copyload, 100
  br i1 %i.cn, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i39, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = icmp ult i64 %.sroa.0.0.copyload, 1000
  br i1 %i.co, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i39, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = icmp ult i64 %.sroa.0.0.copyload, 10000
  br i1 %i.cp, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i39, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = icmp ugt i64 %.sroa.0.0.copyload, 9999999999 ; 2 uses
  %i.cr = udiv i64 %.sroa.0.0.copyload, 10000000000
  %.sroa.05.0.i.i.i = select i1 %i.cq, i32 10, i32 0 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.cq, i64 %i.cr, i64 %.sroa.0.0.copyload ; 3 uses
  %i.cs = icmp samesign ugt i64 %.sroa.0.0.i.i.i, 99999
  br i1 %i.cs, label %bb.w, label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i36

bb.w:                                             ; preds = %bb.v
  %i.ct = udiv i64 %.sroa.0.0.i.i.i, 100000
  %i.cu = or disjoint i32 %.sroa.05.0.i.i.i, 5
  br label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i36

_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i36: ; preds = %bb.w, %bb.v
  %.sroa.05.1.i.i.i37 = phi i32 [ %i.cu, %bb.w ], [ %.sroa.05.0.i.i.i, %bb.v ]
  %.sroa.0.1.i.i.i38 = phi i64 [ %i.ct, %bb.w ], [ %.sroa.0.0.i.i.i, %bb.v ]
  %i.cv = trunc nuw nsw i64 %.sroa.0.1.i.i.i38 to i32 ; 4 uses
  %i.cw = add nuw nsw i32 %i.cv, 393206
  %i.cx = add nuw nsw i32 %i.cv, 524188
  %i.cy = and i32 %i.cw, %i.cx
  %i.cz = add nuw nsw i32 %i.cv, 916504
  %i.da = add nuw nsw i32 %i.cv, 514288
  %i.db = and i32 %i.cz, %i.da
  %i.dc = xor i32 %i.cy, %i.db
  %i.dd = lshr i32 %i.dc, 17
  %i.de = add nuw nsw i32 %i.dd, %.sroa.05.1.i.i.i37
  %i.df = trunc nuw nsw i32 %i.de to i8
  %i.dg = add nuw nsw i8 %i.df, 1
  br label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i39

_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i39: ; preds = %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i36, %bb.u, %bb.t, %bb.s, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit
  %.sroa.0.0.i20.i40 = phi i8 [ %i.dg, %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i36 ], [ 1, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit ], [ 2, %bb.s ], [ 3, %bb.t ], [ 4, %bb.u ]
  %.sroa.0.0.i21.i41 = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 24) %.sroa.0.0.i20.i40, i8 %.sroa.0.0.i.i32) ; 2 uses
  %i.dh = zext nneg i8 %.sroa.0.0.i21.i41 to i64  ; 2 uses
  %i.di = load ptr, ptr %i.av, align 8, !alias.scope !6238, !nonnull !30, !align !32, !noundef !30
  %i.dj = load i64, ptr %i.bq, align 8, !alias.scope !6238, !noundef !30
  %i.dk = zext i16 %i.cl to i64                   ; 2 uses
  %i.dl = sub nuw i64 %i.dj, %i.dk
  %i.dm = getelementptr i8, ptr %i.di, i64 %i.dk  ; 2 uses
  %.not.i42 = icmp ult i64 %i.dl, %i.dh
  br i1 %.not.i42, label %bb.x, label %.preheader22.i43, !prof !76

bb.x:                                             ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i39
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #45, !noalias !6238
  unreachable

.preheader22.i43:                                 ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i39, %.preheader22.i43
  %.sroa.06.0.i44 = phi i64 [ %i.dn, %.preheader22.i43 ], [ %i.dh, %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i39 ]
  %.sroa.0.0.i45 = phi i64 [ %i.ds, %.preheader22.i43 ], [ %.sroa.0.0.copyload, %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i39 ] ; 3 uses
  %i.dn = add i64 %.sroa.06.0.i44, -1             ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
  %i.dp = urem i64 %.sroa.0.0.i45, 10
  %i.dq = trunc nuw nsw i64 %i.dp to i8
  %i.dr = or disjoint i8 %i.dq, 48
  store i8 %i.dr, ptr %i.do, align 1, !noalias !6238
  %i.ds = udiv i64 %.sroa.0.0.i45, 10
  %i.dt = icmp ugt i64 %.sroa.0.0.i45, 9
  %i.du = icmp ne i64 %i.dn, 0                    ; 2 uses
  %or.cond2.i46 = and i1 %i.dt, %i.du
  br i1 %or.cond2.i46, label %.preheader22.i43, label %.preheader.i47

.preheader.i47:                                   ; preds = %.preheader22.i43
  br i1 %i.du, label %.lr.ph.preheader.i48, label %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit

.lr.ph.preheader.i48:                             ; preds = %.preheader.i47
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dm, i8 48, i64 %i.dn, i1 false), !noalias !6238
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit

_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit: ; preds = %.preheader.i47, %.lr.ph.preheader.i48
  %i.dv = zext nneg i8 %.sroa.0.0.i21.i41 to i16
  %i.dw = add i16 %i.cl, %i.dv                    ; 3 uses
  store i16 %i.dw, ptr %i.bs, align 8, !alias.scope !6238
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6239)
  %i.dx = load i64, ptr %i.bq, align 8, !alias.scope !6239, !noundef !30
  %i.dy = zext i16 %i.dw to i64                   ; 2 uses
  %.not.i49 = icmp eq i64 %i.dx, %i.dy
  br i1 %.not.i49, label %bb.y, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit50, !prof !42

bb.y:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !6239
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit50: ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit
  %i.dz = load ptr, ptr %i.av, align 8, !alias.scope !6239, !nonnull !30, !align !32, !noundef !30
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  store i8 58, ptr %i.ea, align 1, !noalias !6239
  %i.eb = add i16 %i.dw, 1
  store i16 %i.eb, ptr %i.bs, align 8, !alias.scope !6239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x i64> %i.ak, ptr %i.a, align 16
  %.sroa.8.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x i64> %i.al, ptr %.sroa.8.0..sroa_idx61, align 16
  %.sroa.12.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.8.0.copyload, ptr %.sroa.12.0..sroa_idx65, align 16
  %.sroa.14.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %.sroa.9.0.copyload, ptr %.sroa.14.0..sroa_idx67, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %.sroa.10.0.copyload, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %.sroa.11.0.copyload, ptr %.sroa.20.0..sroa_idx, align 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %.sroa.12.0.copyload, ptr %.sroa.23.0..sroa_idx, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 %i.f, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i16 %.sroa.14.0.copyload, ptr %.sroa.29.0..sroa_idx, align 2
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i8 %.sroa.32.0, ptr %.sroa.32.0..sroa_idx, align 4
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.34.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.34, i64 3, i1 false)
  call fastcc void @_ZN4jiff4span4Span10only_lower17h6146395a408d33a3E(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %i.a, i8 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6240)
  %i.ec = call fastcc { i64, i32 } @_ZN4jiff4span4Span21to_invariant_duration17h60c16e205a3952feE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b), !noalias !6240 ; 2 uses
  %i.ed = extractvalue { i64, i32 } %i.ec, 0
  %i.ee = extractvalue { i64, i32 } %i.ec, 1
  %.sroa.0.0.i51 = tail call i64 @llvm.abs.i64(i64 %i.ed, i1 false) ; 2 uses
  %.sroa.01.0.i = tail call i32 @llvm.abs.i32(i32 %i.ee, i1 false) ; 4 uses
  %i.ef = icmp ult i32 %.sroa.01.0.i, 1000000000
  br i1 %i.ef, label %_ZN4jiff3fmt8friendly7printer17FractionalPrinter17from_span_seconds17h48da4a61578c1db3E.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit50
  %i.eg = udiv i32 %.sroa.01.0.i, 1000000000
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = add nuw i64 %.sroa.0.0.i51, %i.eh
  %i.ej = urem i32 %.sroa.01.0.i, 1000000000
  br label %_ZN4jiff3fmt8friendly7printer17FractionalPrinter17from_span_seconds17h48da4a61578c1db3E.exit

_ZN4jiff3fmt8friendly7printer17FractionalPrinter17from_span_seconds17h48da4a61578c1db3E.exit: ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit50, %bb.z
  %.sroa.3.0.i.i = phi i32 [ %i.ej, %bb.z ], [ %.sroa.01.0.i, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit50 ]
  %.sroa.0.0.i.i52 = phi i64 [ %i.ei, %bb.z ], [ %.sroa.0.0.i51, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit50 ]
  store i64 %.sroa.0.0.i.i52, ptr %i.c, align 8, !alias.scope !6240
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %.sroa.3.0.i.i, ptr %i.ek, align 8, !alias.scope !6240
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i8 %.sroa.025.0, ptr %i.el, align 4, !alias.scope !6240
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  store i8 %i.aa, ptr %i.em, align 1, !alias.scope !6240
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i8 %i.ac, ptr %i.en, align 2, !alias.scope !6240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_ZN4jiff3fmt8friendly7printer17FractionalPrinter5print17h03b1d0b260f91b71E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.av)
  %.val30 = load i8, ptr %i.ae, align 8, !range !41, !noundef !30
  %i.eo = icmp eq i8 %.val30, 1
  br i1 %i.eo, label %bb.aa, label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_suffix_sign17h7eb097eec35d03acE.exit

bb.aa:                                            ; preds = %_ZN4jiff3fmt8friendly7printer17FractionalPrinter17from_span_seconds17h48da4a61578c1db3E.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6241)
  %i.ep = load i64, ptr %i.bq, align 8, !alias.scope !6241, !noundef !30
  %i.eq = load i16, ptr %i.bs, align 8, !alias.scope !6241, !noundef !30 ; 2 uses
  %i.er = zext i16 %i.eq to i64                   ; 2 uses
  %i.es = sub nuw i64 %i.ep, %i.er
  %.not.i.i53 = icmp ult i64 %i.es, 4
  br i1 %.not.i.i53, label %bb.ab, label %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit.i, !prof !76

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @146, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #45, !noalias !6242
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit.i: ; preds = %bb.aa
  %i.et = load ptr, ptr %i.av, align 8, !alias.scope !6241, !nonnull !30, !align !32, !noundef !30
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er
  store i32 1869046048, ptr %i.eu, align 1, !alias.scope !6243, !noalias !6241
  %i.ev = add i16 %i.eq, 4
  store i16 %i.ev, ptr %i.bs, align 8, !alias.scope !6241
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_suffix_sign17h7eb097eec35d03acE.exit

_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_suffix_sign17h7eb097eec35d03acE.exit: ; preds = %_ZN4jiff3fmt8friendly7printer17FractionalPrinter17from_span_seconds17h48da4a61578c1db3E.exit, %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ac:                                            ; preds = %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit
  %i.ew = and i16 %i.f, 512
  %i.ex = icmp eq i16 %i.ew, 0
  br i1 %i.ex, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ey = zext i16 %.sroa.14.0.copyload to i64
  call fastcc void @_ZN4jiff3fmt8friendly7printer16DesignatorWriter5write17h3e587ee02e667699E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i8 noundef 9, i64 noundef %i.ey), !noalias !6244
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ez = and i16 %i.f, 256
  %i.fa = icmp eq i16 %i.ez, 0
  br i1 %i.fa, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = zext i32 %.sroa.9.0.copyload to i64
  call fastcc void @_ZN4jiff3fmt8friendly7printer16DesignatorWriter5write17h3e587ee02e667699E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i8 noundef 8, i64 noundef %i.fb), !noalias !6244
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fc = and i16 %i.f, 128
  %i.fd = icmp eq i16 %i.fc, 0
  br i1 %i.fd, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fe = zext i32 %.sroa.10.0.copyload to i64
  call fastcc void @_ZN4jiff3fmt8friendly7printer16DesignatorWriter5write17h3e587ee02e667699E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i8 noundef 7, i64 noundef %i.fe), !noalias !6244
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ff = and i16 %i.f, 64
  %i.fg = icmp eq i16 %i.ff, 0
  br i1 %i.fg, label %_ZN4jiff3fmt8friendly7printer11SpanPrinter44print_span_calendar_designators_non_fraction17hc4e8979030c04bb9E.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fh = zext i32 %.sroa.11.0.copyload to i64
  call fastcc void @_ZN4jiff3fmt8friendly7printer16DesignatorWriter5write17h3e587ee02e667699E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i8 noundef 6, i64 noundef %i.fh), !noalias !6244
  br label %_ZN4jiff3fmt8friendly7printer11SpanPrinter44print_span_calendar_designators_non_fraction17hc4e8979030c04bb9E.exit

_ZN4jiff3fmt8friendly7printer11SpanPrinter44print_span_calendar_designators_non_fraction17hc4e8979030c04bb9E.exit: ; preds = %bb.ai, %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6245)
  %i.fi = load i8, ptr %i.aj, align 1, !range !40, !alias.scope !6245, !noundef !30
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.ak, label %_ZN4jiff3fmt8friendly7printer11SpanPrinter44print_span_calendar_designators_non_fraction17hc4e8979030c04bb9E.exit._ZN4jiff3fmt8friendly7printer16DesignatorWriter16finish_preceding17h725526bd0d9c77beE.exit_crit_edge

_ZN4jiff3fmt8friendly7printer11SpanPrinter44print_span_calendar_designators_non_fraction17hc4e8979030c04bb9E.exit._ZN4jiff3fmt8friendly7printer16DesignatorWriter16finish_preceding17h725526bd0d9c77beE.exit_crit_edge: ; preds = %_ZN4jiff3fmt8friendly7printer11SpanPrinter44print_span_calendar_designators_non_fraction17hc4e8979030c04bb9E.exit
  %.pre.pre = load ptr, ptr %i.ad, align 8
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter16finish_preceding17h725526bd0d9c77beE.exit

bb.ak:                                            ; preds = %_ZN4jiff3fmt8friendly7printer11SpanPrinter44print_span_calendar_designators_non_fraction17hc4e8979030c04bb9E.exit
  %i.fk = load ptr, ptr %i.d, align 8, !alias.scope !6245, !nonnull !30, !align !31, !noundef !30 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load i8, ptr %i.fl, align 8, !range !40, !noalias !6245, !noundef !30
  %i.fn = trunc nuw i8 %i.fm to i1
  %.pre.pre75.pre = load ptr, ptr %i.ad, align 8  ; 8 uses
  br i1 %i.fn, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i55, %bb.ak
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 11
  %i.fp = load i8, ptr %i.fo, align 1, !range !41, !noalias !6245, !noundef !30
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter16finish_preceding17h725526bd0d9c77beE.exit, label %bb.ao

bb.am:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6246)
  %i.fr = getelementptr inbounds nuw i8, ptr %.pre.pre75.pre, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !6246, !noalias !6245, !noundef !30
  %i.ft = getelementptr inbounds nuw i8, ptr %.pre.pre75.pre, i64 16 ; 2 uses
  %i.fu = load i16, ptr %i.ft, align 8, !alias.scope !6246, !noalias !6245, !noundef !30 ; 2 uses
  %i.fv = zext i16 %i.fu to i64                   ; 2 uses
  %.not.i.i54 = icmp eq i64 %i.fs, %i.fv
  br i1 %.not.i.i54, label %bb.an, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i55, !prof !42

bb.an:                                            ; preds = %bb.am
end_hunk_1
begin_hunk_2_@_ZN4jiff3fmt8friendly7printer11SpanPrinter14span_to_string17h6340338c8ade69d5E:bb.a
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [306 x i8], align 1               ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !6275
  %i.d = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !6275 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #45
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit": ; preds = %bb.a
  store i64 4, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6277)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6278
  store ptr %i.b, ptr %i.a, align 8, !alias.scope !6279, !noalias !6278
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 306, ptr %i.f, align 8, !alias.scope !6279, !noalias !6278
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.g, align 8, !alias.scope !6279, !noalias !6278
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.i = load i8, ptr %i.h, align 1, !range !40, !alias.scope !6276, !noundef !30
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit"
  invoke void @_ZN4jiff3fmt8friendly7printer11SpanPrinter22print_span_designators17h8a0baad01b77487dE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.f

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit"
  invoke void @_ZN4jiff3fmt8friendly7printer11SpanPrinter14print_span_hms17he731709023e9bd9bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d, %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !noalias !6278, !nonnull !30, !align !32, !noundef !30
  %i.l = load i16, ptr %i.g, align 8, !noalias !6278, !noundef !30 ; 2 uses
  %i.m = zext i16 %i.l to i64                     ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6280)
  call void @llvm.experimental.noalias.scope.decl(metadata !6281)
  call void @llvm.experimental.noalias.scope.decl(metadata !6282)
  call void @llvm.experimental.noalias.scope.decl(metadata !6283)
  %i.n = icmp ugt i16 %i.l, 4
  br i1 %i.n, label %bb.e, label %bb.h, !prof !42

bb.e:                                             ; preds = %.noexc
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h38682c382e765932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.m)
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.e
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6284, !noalias !6285
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6284, !noalias !6285
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !6286)
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !6286 ; 2 uses
  %i.p = icmp eq i64 %.val.i, 0
  br i1 %i.p, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6286, !nonnull !30, !noundef !30
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !6286
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit"

bb.h:                                             ; preds = %.noexc, %.noexc4
  %i.q = phi ptr [ %i.d, %.noexc ], [ %.pre, %.noexc4 ]
  %i.r = phi i64 [ 0, %.noexc ], [ %.pre.i.i.i.i.i.i, %.noexc4 ] ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.k, i64 %i.m, i1 false), !noalias !6287
  %i.u = add nuw i64 %i.r, %i.m
  store i64 %i.u, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6284, !noalias !6285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit": ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff3fmt8friendly7printer11SpanPrinter18duration_to_string17h7bd0dba7056506f5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !6311 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [194 x i8], align 1               ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !6312
  %i.d = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !6312 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #45
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit": ; preds = %bb.a
  store i64 4, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6314)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6315
  store ptr %i.b, ptr %i.a, align 8, !alias.scope !6316, !noalias !6315
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 194, ptr %i.f, align 8, !alias.scope !6316, !noalias !6315
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.g, align 8, !alias.scope !6316, !noalias !6315
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.i = load i8, ptr %i.h, align 1, !range !40, !alias.scope !6313, !noundef !30
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit"
  invoke void @_ZN4jiff3fmt8friendly7printer11SpanPrinter33print_signed_duration_designators17h0bbefdaaa9a44930E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.f

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h75638f39b226f9c2E.exit"
  invoke void @_ZN4jiff3fmt8friendly7printer11SpanPrinter25print_signed_duration_hms17h2758a982cadd0c8cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d, %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !noalias !6315, !nonnull !30, !align !32, !noundef !30
  %i.l = load i16, ptr %i.g, align 8, !noalias !6315, !noundef !30 ; 2 uses
  %i.m = zext i16 %i.l to i64                     ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6317)
  call void @llvm.experimental.noalias.scope.decl(metadata !6318)
  call void @llvm.experimental.noalias.scope.decl(metadata !6319)
  call void @llvm.experimental.noalias.scope.decl(metadata !6320)
  %i.n = icmp ugt i16 %i.l, 4
  br i1 %i.n, label %bb.e, label %bb.h, !prof !42

bb.e:                                             ; preds = %.noexc
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h38682c382e765932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.m)
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.e
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6321, !noalias !6322
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6321, !noalias !6322
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !6323)
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !6323 ; 2 uses
  %i.p = icmp eq i64 %.val.i, 0
  br i1 %i.p, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6323, !nonnull !30, !noundef !30
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !6323
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit"

bb.h:                                             ; preds = %.noexc, %.noexc4
  %i.q = phi ptr [ %i.d, %.noexc ], [ %.pre, %.noexc4 ]
  %i.r = phi i64 [ 0, %.noexc ], [ %.pre.i.i.i.i.i.i, %.noexc4 ] ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.k, i64 %i.m, i1 false), !noalias !6324
  %i.u = add nuw i64 %i.r, %i.m
  store i64 %i.u, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6321, !noalias !6322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit": ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff3fmt8friendly7printer11SpanPrinter18print_duration_hms17hffc76618f9c8407dE(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 %.0.val, i32 %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !6333 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i8, ptr %i.b, align 4, !range !40, !noundef !30
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.f = load i8, ptr %i.e, align 1
  %.sroa.0.0 = select i1 %i.d, i8 %i.f, i8 2      ; 2 uses
  %i.g = udiv i64 %.0.val, 3600                   ; 2 uses
  %i.h = urem i64 %.0.val, 3600                   ; 2 uses
  %.lhs.trunc = trunc nuw nsw i64 %i.h to i16     ; 2 uses
  %i.i = udiv i16 %.lhs.trunc, 60
  %i.j = urem i16 %.lhs.trunc, 60
  %.zext = zext nneg i16 %i.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6334)
  %.sroa.0.0.i.i = tail call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 %.sroa.0.0, i8 20) ; 2 uses
  %i.k = icmp ult i64 %.0.val, 36000
  br i1 %i.k, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %.0.val, 360000
  br i1 %i.l, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i64 %.0.val, 3600000
  br i1 %i.m, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ult i64 %.0.val, 36000000
  br i1 %i.n, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %.0.val, 35999999999999     ; 2 uses
  %i.p = udiv i64 %.0.val, 36000000000000
  %.sroa.05.0.i.i.i = select i1 %i.o, i32 10, i32 0 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.o, i64 %i.p, i64 %i.g ; 3 uses
  %i.q = icmp samesign ugt i64 %.sroa.0.0.i.i.i, 99999
  br i1 %i.q, label %bb.f, label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = udiv i64 %.sroa.0.0.i.i.i, 100000
  %i.s = or disjoint i32 %.sroa.05.0.i.i.i, 5
  br label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i

_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.05.1.i.i.i = phi i32 [ %i.s, %bb.f ], [ %.sroa.05.0.i.i.i, %bb.e ]
  %.sroa.0.1.i.i.i = phi i64 [ %i.r, %bb.f ], [ %.sroa.0.0.i.i.i, %bb.e ]
  %i.t = trunc nuw nsw i64 %.sroa.0.1.i.i.i to i32 ; 4 uses
  %i.u = add nuw nsw i32 %i.t, 393206
  %i.v = add nuw nsw i32 %i.t, 524188
  %i.w = and i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.t, 916504
  %i.y = add nuw nsw i32 %i.t, 514288
  %i.z = and i32 %i.x, %i.y
  %i.aa = xor i32 %i.w, %i.z
  %i.ab = lshr i32 %i.aa, 17
  %i.ac = add nuw nsw i32 %i.ab, %.sroa.05.1.i.i.i
  %i.ad = trunc nuw nsw i32 %i.ac to i8
  %i.ae = add nuw nsw i8 %i.ad, 1
  br label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i

_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i: ; preds = %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i20.i = phi i8 [ %i.ae, %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i ], [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ]
  %.sroa.0.0.i21.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 24) %.sroa.0.0.i20.i, i8 %.sroa.0.0.i.i) ; 2 uses
  %i.af = zext nneg i8 %.sroa.0.0.i21.i to i64    ; 2 uses
  %i.ag = load ptr, ptr %1, align 8, !alias.scope !6334, !nonnull !30, !align !32, !noundef !30 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !6334, !noundef !30 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ak = load i16, ptr %i.aj, align 8, !alias.scope !6334, !noundef !30 ; 2 uses
  %i.al = zext i16 %i.ak to i64                   ; 2 uses
  %i.am = sub nuw i64 %i.ai, %i.al
  %i.an = getelementptr i8, ptr %i.ag, i64 %i.al  ; 2 uses
  %.not.i = icmp ult i64 %i.am, %i.af
  br i1 %.not.i, label %bb.g, label %.preheader22.i, !prof !76

bb.g:                                             ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #45, !noalias !6334
  unreachable

.preheader22.i:                                   ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, %.preheader22.i
  %.sroa.06.0.i = phi i64 [ %i.ao, %.preheader22.i ], [ %i.af, %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.at, %.preheader22.i ], [ %i.g, %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i ] ; 3 uses
  %i.ao = add i64 %.sroa.06.0.i, -1               ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %i.aq = urem i64 %.sroa.0.0.i, 10
  %i.ar = trunc nuw nsw i64 %i.aq to i8
  %i.as = or disjoint i8 %i.ar, 48
  store i8 %i.as, ptr %i.ap, align 1, !noalias !6334
  %i.at = udiv i64 %.sroa.0.0.i, 10
  %i.au = icmp samesign ugt i64 %.sroa.0.0.i, 9
  %i.av = icmp ne i64 %i.ao, 0                    ; 2 uses
  %or.cond2.i = and i1 %i.au, %i.av
  br i1 %or.cond2.i, label %.preheader22.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader22.i
  br i1 %i.av, label %.lr.ph.preheader.i, label %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.an, i8 48, i64 %i.ao, i1 false), !noalias !6334
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit

_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit: ; preds = %.preheader.i, %.lr.ph.preheader.i
  %i.aw = zext nneg i8 %.sroa.0.0.i21.i to i16
  %i.ax = add i16 %i.ak, %i.aw                    ; 3 uses
  store i16 %i.ax, ptr %i.aj, align 8, !alias.scope !6334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6335)
  %i.ay = zext i16 %i.ax to i64                   ; 2 uses
  %.not.i10 = icmp eq i64 %i.ai, %i.ay
  br i1 %.not.i10, label %bb.h, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit, !prof !42

bb.h:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !6335
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit: ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ay
  store i8 58, ptr %i.az, align 1, !noalias !6335
  %i.ba = add i16 %i.ax, 1                        ; 3 uses
  store i16 %i.ba, ptr %i.aj, align 8, !alias.scope !6335
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6336)
  %i.bb = icmp samesign ult i64 %i.h, 600
  %spec.select = select i1 %i.bb, i8 1, i8 2
  %.sroa.0.0.i21.i19 = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 24) %spec.select, i8 %.sroa.0.0.i.i) ; 2 uses
  %i.bc = zext nneg i8 %.sroa.0.0.i21.i19 to i64  ; 2 uses
  %i.bd = zext i16 %i.ba to i64                   ; 2 uses
  %i.be = sub nuw i64 %i.ai, %i.bd
  %i.bf = getelementptr i8, ptr %i.ag, i64 %i.bd  ; 2 uses
  %.not.i20 = icmp ult i64 %i.be, %i.bc
  br i1 %.not.i20, label %bb.i, label %.preheader22.i21, !prof !76

bb.i:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #45, !noalias !6336
  unreachable

.preheader22.i21:                                 ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit, %.preheader22.i21
  %.sroa.06.0.i22 = phi i64 [ %i.bg, %.preheader22.i21 ], [ %i.bc, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit ]
  %.sroa.0.0.i23 = phi i64 [ %3, %.preheader22.i21 ], [ %.zext, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit ] ; 3 uses
  %i.bg = add i64 %.sroa.06.0.i22, -1             ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  %2 = urem i64 %.sroa.0.0.i23, 10
  %i.bi = trunc nuw nsw i64 %2 to i8
  %i.bj = or disjoint i8 %i.bi, 48
  store i8 %i.bj, ptr %i.bh, align 1, !noalias !6336
  %3 = udiv i64 %.sroa.0.0.i23, 10
  %i.bk = icmp samesign ugt i64 %.sroa.0.0.i23, 9
  %i.bl = icmp ne i64 %i.bg, 0                    ; 2 uses
  %or.cond2.i24 = and i1 %i.bk, %i.bl
  br i1 %or.cond2.i24, label %.preheader22.i21, label %.preheader.i25

.preheader.i25:                                   ; preds = %.preheader22.i21
  br i1 %i.bl, label %.lr.ph.preheader.i26, label %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit27

.lr.ph.preheader.i26:                             ; preds = %.preheader.i25
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bf, i8 48, i64 %i.bg, i1 false), !noalias !6336
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit27

_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit27: ; preds = %.preheader.i25, %.lr.ph.preheader.i26
  %i.bm = zext nneg i8 %.sroa.0.0.i21.i19 to i16
  %i.bn = add i16 %i.ba, %i.bm                    ; 3 uses
  store i16 %i.bn, ptr %i.aj, align 8, !alias.scope !6336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6337)
  %i.bo = zext i16 %i.bn to i64                   ; 2 uses
  %.not.i28 = icmp eq i64 %i.ai, %i.bo
  br i1 %.not.i28, label %bb.j, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit29, !prof !42

bb.j:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit27
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !6337
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit29: ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit27
  %.zext2 = zext nneg i16 %i.j to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bo
  store i8 58, ptr %i.bp, align 1, !noalias !6337
  %i.bq = add i16 %i.bn, 1
  store i16 %i.bq, ptr %i.aj, align 8, !alias.scope !6337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bs = load i8, ptr %i.br, align 2, !range !40, !noundef !30
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.bu = load i8, ptr %i.bt, align 1
  store i64 %.zext2, ptr %i.a, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.8.val, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %.sroa.0.0, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 %i.bs, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %i.bu, ptr %i.by, align 2
  call fastcc void @_ZN4jiff3fmt8friendly7printer17FractionalPrinter5print17h03b1d0b260f91b71E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff3fmt8friendly7printer11SpanPrinter22print_span_designators17h8a0baad01b77487dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !guid !6353 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.c = load i8, ptr %i.b, align 4, !range !33, !noundef !30 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6355)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 2, !range !46, !alias.scope !6355, !noundef !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.val3.i = load i8, ptr %i.f, align 1, !alias.scope !6355
  switch i8 %i.e, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 11
  %.val.i = load i8, ptr %i.g, align 1, !alias.scope !6355
  %i.h = icmp eq i8 %.val.i, 0
  %i.i = icmp slt i8 %i.c, 0                      ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i8 %i.c, 0
  %spec.select = select i1 %i.j, i8 0, i8 2
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.d:                                             ; preds = %bb.a
  %i.k = icmp slt i8 %i.c, 0
  %.3.i.i = select i1 %i.k, i8 45, i8 43
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.e:                                             ; preds = %bb.a
  %i.l = icmp slt i8 %i.c, 0
  %.4.i.i = select i1 %i.l, i8 1, i8 2
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.f:                                             ; preds = %bb.b
  %spec.select8 = select i1 %i.i, i8 0, i8 2
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.g:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.h, label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i = and i8 %.val3.i, 1
  %.8.i.i = xor i8 %.not.i.i, 1
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit

_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit: ; preds = %bb.f, %bb.c, %bb.d, %bb.e, %bb.g, %bb.h
  %.sroa.11.0.i.i = phi i8 [ undef, %bb.e ], [ 45, %bb.f ], [ 45, %bb.h ], [ undef, %bb.g ], [ 45, %bb.c ], [ %.3.i.i, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i = phi i8 [ %.4.i.i, %bb.e ], [ %spec.select8, %bb.f ], [ %.8.i.i, %bb.h ], [ 2, %bb.g ], [ %spec.select, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i8, ptr %i.m, align 4, !range !40, !alias.scope !6355, !noundef !30
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !6355
  %.sroa.0.0.i = select i1 %i.o, i8 %i.q, i8 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.s = load i8, ptr %i.r, align 2, !range !40, !alias.scope !6355, !noundef !30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !6355
  store ptr %0, ptr %i.a, align 8, !alias.scope !6354
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.v, align 8, !alias.scope !6354
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.w, align 8, !alias.scope !6354
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %.sroa.11.0.i.i, ptr %i.x, align 1, !alias.scope !6354
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %.sroa.0.0.i, ptr %i.y, align 2, !alias.scope !6354
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  store i8 %i.s, ptr %i.z, align 1, !alias.scope !6354
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 %i.u, ptr %i.aa, align 4, !alias.scope !6354
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 21 ; 2 uses
  store i8 0, ptr %i.ab, align 1, !alias.scope !6354
  %cond.i = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %cond.i, label %bb.i, label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit

bb.i:                                             ; preds = %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6356)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !6356, !noalias !6357, !noundef !30
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 8, !alias.scope !6356, !noalias !6357, !noundef !30 ; 2 uses
  %i.ag = zext i16 %i.af to i64                   ; 2 uses
  %.not.i.i2 = icmp eq i64 %i.ad, %i.ag
  br i1 %.not.i.i2, label %bb.j, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i, !prof !42

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !6358
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i: ; preds = %bb.i
  %i.ah = load ptr, ptr %2, align 8, !alias.scope !6356, !noalias !6357, !nonnull !30, !align !32, !noundef !30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 %.sroa.11.0.i.i, ptr %i.ai, align 1, !noalias !6358
  %i.aj = add i16 %i.af, 1
  store i16 %i.aj, ptr %i.ae, align 8, !alias.scope !6356, !noalias !6357
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit

_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit: ; preds = %_ZN4jiff3fmt8friendly7printer16DesignatorWriter3new17h231ff87f3487827dE.exit, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.al = load i8, ptr %i.ak, align 1, !range !48, !noundef !30 ; 2 uses
  %.not = icmp eq i8 %i.al, 5
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit
  call fastcc void @_ZN4jiff3fmt8friendly7printer11SpanPrinter33print_span_designators_fractional17h1038edff75b5d250E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, i8 noundef %i.al, ptr noalias noundef align 8 dereferenceable(24) %i.a)
  br label %bb.m

bb.l:                                             ; preds = %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_prefix_sign17h6ccb525e196fe915E.exit
  call fastcc void @_ZN4jiff3fmt8friendly7printer11SpanPrinter35print_span_designators_non_fraction17hcab3b49a1801b0a5E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(24) %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = load i8, ptr %i.ab, align 1, !range !40, !alias.scope !6359, !noundef !30
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter16maybe_write_zero17he622e2818998873fE.exit, label %bb.n, !prof !35

bb.n:                                             ; preds = %bb.m
  call fastcc void @_ZN4jiff3fmt8friendly7printer16DesignatorWriter16maybe_write_zero3imp17h8c1d3667e3fa93c7E(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.a)
  br label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter16maybe_write_zero17he622e2818998873fE.exit

_ZN4jiff3fmt8friendly7printer16DesignatorWriter16maybe_write_zero17he622e2818998873fE.exit: ; preds = %bb.m, %bb.n
  %.val = load ptr, ptr %i.v, align 8             ; 4 uses
  %.val1 = load i8, ptr %i.w, align 8, !range !41, !noundef !30
  %i.ao = icmp eq i8 %.val1, 1
  br i1 %i.ao, label %bb.o, label %_ZN4jiff3fmt8friendly7printer16DesignatorWriter23maybe_write_suffix_sign17h7eb097eec35d03acE.exit

bb.o:                                             ; preds = %_ZN4jiff3fmt8friendly7printer16DesignatorWriter16maybe_write_zero17he622e2818998873fE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6360)
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !6360, !noundef !30
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 8, !alias.scope !6360, !noundef !30 ; 2 uses
  %i.at = zext i16 %i.as to i64                   ; 2 uses
  %i.au = sub nuw i64 %i.aq, %i.at
  %.not.i.i3 = icmp ult i64 %i.au, 4
  br i1 %.not.i.i3, label %bb.p, label %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit.i, !prof !76

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @146, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #45, !noalias !6361
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit.i: ; preds = %bb.o
  %i.av = load ptr, ptr %.val, align 8, !alias.scope !6360, !nonnull !30, !align !32, !noundef !30
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i32 1869046048, ptr %i.aw, align 1, !alias.scope !6362, !noalias !6360
  %i.ax = add i16 %i.as, 4
end_hunk_2
begin_hunk_3_@_ZN4jiff3fmt8friendly7printer16DesignatorWriter5write17h3e587ee02e667699E:bb.a

_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i: ; preds = %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i, %bb.k, %bb.j, %bb.i, %_ZN4jiff3fmt8friendly7printer16DesignatorWriter16finish_preceding17h725526bd0d9c77beE.exit
  %.sroa.0.0.i9.i = phi i8 [ %i.bd, %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i ], [ 1, %_ZN4jiff3fmt8friendly7printer16DesignatorWriter16finish_preceding17h725526bd0d9c77beE.exit ], [ 2, %bb.i ], [ 3, %bb.j ], [ 4, %bb.k ]
  %.sroa.0.0.i10.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 24) %.sroa.0.0.i9.i, i8 %.sroa.0.0.i.i) ; 3 uses
  %i.be = zext nneg i8 %.sroa.0.0.i10.i to i64    ; 4 uses
  %i.bf = load ptr, ptr %i.ag, align 8, !alias.scope !6573, !nonnull !30, !align !32, !noundef !30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !6573, !noundef !30
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 4 uses
  %i.bj = load i16, ptr %i.bi, align 8, !alias.scope !6573, !noundef !30 ; 2 uses
  %i.bk = zext i16 %i.bj to i64                   ; 2 uses
  %i.bl = sub nuw i64 %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bk ; 3 uses
  %.not.i = icmp ult i64 %i.bl, %i.be
  br i1 %.not.i, label %bb.n, label %.preheader.i.preheader, !prof !76

.preheader.i.preheader:                           ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i
  %xtraiter = and i64 %i.be, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader
  %i.bn = add nsw i64 %i.be, -1                   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %i.bp = urem i64 %2, 10
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  %i.br = or disjoint i8 %i.bq, 48
  store i8 %i.br, ptr %i.bo, align 1, !noalias !6573
  %i.bs = udiv i64 %2, 10
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.sroa.0.012.i.unr = phi i64 [ %2, %.preheader.i.preheader ], [ %i.bs, %.preheader.i.prol ]
  %.sroa.03.011.i.unr = phi i64 [ %i.be, %.preheader.i.preheader ], [ %i.bn, %.preheader.i.prol ]
  %i.bt = icmp eq i8 %.sroa.0.0.i10.i, 1
  br i1 %i.bt, label %_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad017h0a8a1af83b3a1036E.exit, label %.preheader.i

bb.n:                                             ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #45, !noalias !6573
  unreachable

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.sroa.0.012.i = phi i64 [ %i.cf, %.preheader.i ], [ %.sroa.0.012.i.unr, %.preheader.i.prol.loopexit ] ; 3 uses
  %.sroa.03.011.i = phi i64 [ %i.ca, %.preheader.i ], [ %.sroa.03.011.i.unr, %.preheader.i.prol.loopexit ] ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bm, i64 %.sroa.03.011.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 -1
  %i.bw = urem i64 %.sroa.0.012.i, 10
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  %i.by = or disjoint i8 %i.bx, 48
  store i8 %i.by, ptr %i.bv, align 1, !noalias !6573
  %i.bz = udiv i64 %.sroa.0.012.i, 10
  %i.ca = add nsw i64 %.sroa.03.011.i, -2         ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ca
  %i.cc = urem i64 %i.bz, 10
  %i.cd = trunc nuw nsw i64 %i.cc to i8
  %i.ce = or disjoint i8 %i.cd, 48
  store i8 %i.ce, ptr %i.cb, align 1, !noalias !6573
  %i.cf = udiv i64 %.sroa.0.012.i, 100
  %.not8.i.1 = icmp eq i64 %i.ca, 0
  br i1 %.not8.i.1, label %_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad017h0a8a1af83b3a1036E.exit, label %.preheader.i

_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad017h0a8a1af83b3a1036E.exit: ; preds = %.preheader.i, %.preheader.i.prol.loopexit
  %i.cg = zext nneg i8 %.sroa.0.0.i10.i to i16
  %i.ch = add i16 %i.bj, %i.cg                    ; 4 uses
  store i16 %i.ch, ptr %i.bi, align 8, !alias.scope !6573
  %i.ci = load ptr, ptr %0, align 8, !nonnull !30, !align !31, !noundef !30 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 11
  %i.ck = load i8, ptr %i.cj, align 1, !range !41, !noundef !30
  %i.cl = icmp eq i8 %i.ck, 2
  br i1 %i.cl, label %bb.p, label %bb.r

bb.o:                                             ; preds = %bb.a, %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit
  ret void

bb.p:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad017h0a8a1af83b3a1036E.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6574)
  %i.cm = load i64, ptr %i.bg, align 8, !alias.scope !6574, !noundef !30
  %i.cn = zext i16 %i.ch to i64                   ; 2 uses
  %.not.i1 = icmp eq i64 %i.cm, %i.cn
  br i1 %.not.i1, label %bb.q, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit, !prof !42

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !6574
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit: ; preds = %bb.p
  %i.co = load ptr, ptr %i.ag, align 8, !alias.scope !6574, !nonnull !30, !align !32, !noundef !30
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  store i8 32, ptr %i.cp, align 1, !noalias !6574
  %i.cq = add i16 %i.ch, 1                        ; 2 uses
  store i16 %i.cq, ptr %i.bi, align 8, !alias.scope !6574
  br label %bb.r

bb.r:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad017h0a8a1af83b3a1036E.exit, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit
  %i.cr = phi i16 [ %i.ch, %_ZN4jiff3fmt6buffer14BorrowedBuffer14write_int_pad017h0a8a1af83b3a1036E.exit ], [ %i.cq, %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit ] ; 2 uses
  %i.cs = load ptr, ptr %i.ci, align 8, !nonnull !30, !align !31, !noundef !30
  %.not = icmp eq i64 %2, 1
  %.idx.i = select i1 %.not, i64 0, i64 160
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx.i
  %i.cu = zext nneg i8 %1 to i64
  %.sroa.0.0.in.i = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cu ; 2 uses
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !6575, !nonnull !30, !align !32, !noundef !30
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.in.i, i64 8
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !6575, !noundef !30 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6576)
  %i.cv = load i64, ptr %i.bg, align 8, !alias.scope !6576, !noundef !30
  %i.cw = zext i16 %i.cr to i64                   ; 2 uses
  %i.cx = sub nuw i64 %i.cv, %i.cw
  %.not.i2 = icmp ugt i64 %.sroa.3.0.i, %i.cx
  br i1 %.not.i2, label %bb.s, label %_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit, !prof !76

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @146, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #45, !noalias !6577
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer9write_str17h692450a93e79360bE.exit: ; preds = %bb.r
  %i.cy = load ptr, ptr %i.ag, align 8, !alias.scope !6576, !nonnull !30, !align !32, !noundef !30
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull readonly align 1 %.sroa.0.0.i, i64 %.sroa.3.0.i, i1 false), !alias.scope !6578, !noalias !6576
  %i.da = trunc i64 %.sroa.3.0.i to i16
  %i.db = add i16 %i.cr, %i.da
  store i16 %i.db, ptr %i.bi, align 8, !alias.scope !6576
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4jiff3fmt8friendly7printer17FractionalPrinter5print17h03b1d0b260f91b71E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !6585 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !30  ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i8, ptr %i.b, align 4, !noundef !30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6586)
  %.sroa.0.0.i.i = tail call noundef range(i8 0, 21) i8 @llvm.umin.i8(i8 %i.c, i8 20)
  %i.d = icmp ult i64 %i.a, 10
  br i1 %i.d, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %i.a, 100
  br i1 %i.e, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult i64 %i.a, 1000
  br i1 %i.f, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %i.a, 10000
  br i1 %i.g, label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ugt i64 %i.a, 9999999999            ; 2 uses
  %i.i = udiv i64 %i.a, 10000000000
  %.sroa.05.0.i.i.i = select i1 %i.h, i32 10, i32 0 ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.a ; 3 uses
  %i.j = icmp samesign ugt i64 %.sroa.0.0.i.i.i, 99999
  br i1 %i.j, label %bb.f, label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.k = udiv i64 %.sroa.0.0.i.i.i, 100000
  %i.l = or disjoint i32 %.sroa.05.0.i.i.i, 5
  br label %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i

_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.05.1.i.i.i = phi i32 [ %i.l, %bb.f ], [ %.sroa.05.0.i.i.i, %bb.e ]
  %.sroa.0.1.i.i.i = phi i64 [ %i.k, %bb.f ], [ %.sroa.0.0.i.i.i, %bb.e ]
  %i.m = trunc nuw nsw i64 %.sroa.0.1.i.i.i to i32 ; 4 uses
  %i.n = add nuw nsw i32 %i.m, 393206
  %i.o = add nuw nsw i32 %i.m, 524188
  %i.p = and i32 %i.n, %i.o
  %i.q = add nuw nsw i32 %i.m, 916504
  %i.r = add nuw nsw i32 %i.m, 514288
  %i.s = and i32 %i.q, %i.r
  %i.t = xor i32 %i.p, %i.s
  %i.u = lshr i32 %i.t, 17
  %i.v = add nuw nsw i32 %i.u, %.sroa.05.1.i.i.i
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = add nuw nsw i8 %i.w, 1
  br label %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i

_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i: ; preds = %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i20.i = phi i8 [ %i.x, %_ZN4core3num9int_log103u6417h2861d4661b7db45bE.exit.i.i ], [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ]
  %.sroa.0.0.i21.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 24) %.sroa.0.0.i20.i, i8 %.sroa.0.0.i.i) ; 2 uses
  %i.y = zext nneg i8 %.sroa.0.0.i21.i to i64     ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !alias.scope !6586, !nonnull !30, !align !32, !noundef !30 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !6586, !noundef !30 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ad = load i16, ptr %i.ac, align 8, !alias.scope !6586, !noundef !30 ; 2 uses
  %i.ae = zext i16 %i.ad to i64                   ; 2 uses
  %i.af = sub nuw i64 %i.ab, %i.ae
  %i.ag = getelementptr i8, ptr %i.z, i64 %i.ae   ; 2 uses
  %.not.i = icmp ult i64 %i.af, %i.y
  br i1 %.not.i, label %bb.g, label %.preheader22.i, !prof !76

bb.g:                                             ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #45, !noalias !6586
  unreachable

.preheader22.i:                                   ; preds = %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i, %.preheader22.i
  %.sroa.06.0.i = phi i64 [ %i.ah, %.preheader22.i ], [ %i.y, %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.am, %.preheader22.i ], [ %i.a, %_ZN4jiff3fmt6buffer6digits17h935bbe1cbfad8823E.exit.i ] ; 3 uses
  %i.ah = add i64 %.sroa.06.0.i, -1               ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = urem i64 %.sroa.0.0.i, 10
  %i.ak = trunc nuw nsw i64 %i.aj to i8
  %i.al = or disjoint i8 %i.ak, 48
  store i8 %i.al, ptr %i.ai, align 1, !noalias !6586
  %i.am = udiv i64 %.sroa.0.0.i, 10
  %i.an = icmp ugt i64 %.sroa.0.0.i, 9
  %i.ao = icmp ne i64 %i.ah, 0                    ; 2 uses
  %or.cond2.i = and i1 %i.an, %i.ao
  br i1 %or.cond2.i, label %.preheader22.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader22.i
  br i1 %i.ao, label %.lr.ph.preheader.i, label %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 48, i64 %i.ah, i1 false), !noalias !6586
  br label %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit

_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit: ; preds = %.preheader.i, %.lr.ph.preheader.i
  %i.ap = zext nneg i8 %.sroa.0.0.i21.i to i16
  %i.aq = add i16 %i.ad, %i.ap                    ; 3 uses
  store i16 %i.aq, ptr %i.ac, align 8, !alias.scope !6586
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.as = load i8, ptr %i.ar, align 1, !range !40, !alias.scope !6587, !noundef !30
  %i.at = trunc nuw i8 %i.as to i1                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.av = load i8, ptr %i.au, align 2, !alias.scope !6587 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i32, ptr %i.aw, align 8, !alias.scope !6587 ; 2 uses
  %i.ax = icmp ne i8 %i.av, 0
  %i.ay = icmp ne i32 %.val.i, 0
  %.sroa.02.0.in.i.i = select i1 %i.at, i1 %i.ax, i1 %i.ay
  br i1 %.sroa.02.0.in.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit, %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit
  ret void

bb.i:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer13write_int_pad17h79181b087626a15bE.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6588)
  %i.az = zext i16 %i.aq to i64                   ; 2 uses
  %.not.i1 = icmp eq i64 %i.ab, %i.az
  br i1 %.not.i1, label %bb.j, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit, !prof !42

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @141, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #45, !noalias !6588
  unreachable

_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit: ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.az
  store i8 46, ptr %i.ba, align 1, !noalias !6588
  %i.bb = add i16 %i.aq, 1
  store i16 %i.bb, ptr %i.ac, align 8, !alias.scope !6588
  tail call fastcc void @_ZN4jiff3fmt6buffer14BorrowedBuffer14write_fraction17ha7dd1ed5073b7660E(ptr noalias noundef align 8 dereferenceable(24) %1, i1 noundef zeroext %i.at, i8 %i.av, i32 noundef %.val.i)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff3fmt8temporal11SpanPrinter14span_to_string17h891124138c00ec10E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !6608 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [78 x i8], align 1                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6609)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6610
  store ptr %i.b, ptr %i.a, align 8, !alias.scope !6611, !noalias !6610
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 78, ptr %i.d, align 8, !alias.scope !6611, !noalias !6610
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i16 0, ptr %i.e, align 8, !alias.scope !6611, !noalias !6610
  invoke void @_ZN4jiff3fmt8temporal7printer11SpanPrinter15print_span_impl17ha18461465727eeadE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !noalias !6610, !nonnull !30, !align !32, !noundef !30
  %i.g = load i16, ptr %i.e, align 8, !noalias !6610, !noundef !30 ; 2 uses
  %i.h = zext i16 %i.g to i64                     ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6612)
  call void @llvm.experimental.noalias.scope.decl(metadata !6613)
  call void @llvm.experimental.noalias.scope.decl(metadata !6614)
  call void @llvm.experimental.noalias.scope.decl(metadata !6615)
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !35

bb.b:                                             ; preds = %.noexc
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h38682c382e765932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.h)
          to label %.noexc3 unwind label %bb.c

.noexc3:                                          ; preds = %bb.b
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6616, !noalias !6617
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6616, !noalias !6617
  br label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !6618)
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !6618 ; 2 uses
  %i.j = icmp eq i64 %.val.i, 0
  br i1 %i.j, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !6618, !nonnull !30, !noundef !30
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !6618
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit"

bb.e:                                             ; preds = %.noexc, %.noexc3
  %i.k = phi ptr [ inttoptr (i64 1 to ptr), %.noexc ], [ %.pre, %.noexc3 ]
  %i.l = phi i64 [ 0, %.noexc ], [ %.pre.i.i.i.i.i.i, %.noexc3 ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %i.f, i64 %i.h, i1 false), !noalias !6619
  %i.o = add nuw i64 %i.l, %i.h
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !6616, !noalias !6617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4jiff3fmt8temporal11SpanPrinter18duration_to_string17h32bcbd3c396130c6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !6640 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [35 x i8], align 1                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.val = load i64, ptr %2, align 8, !noundef !30 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3 = load i32, ptr %i.e, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6642
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !6643, !noalias !6642
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 35, ptr %i.f, align 8, !alias.scope !6643, !noalias !6642
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i16 0, ptr %i.g, align 8, !alias.scope !6643, !noalias !6642
  %i.h = icmp slt i64 %.val, 0
  %i.i = icmp slt i32 %.val3, 0
  %or.cond.i = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond.i, label %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4jiff3fmt6buffer14BorrowedBuffer16write_ascii_char17h3f53e8cb4b242751E.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6642
  %.sroa.0.0.i = call i64 @llvm.abs.i64(i64 %.val, i1 false) ; 2 uses
  %.sroa.03.0.i = call i32 @llvm.abs.i32(i32 %.val3, i1 false) ; 4 uses
  %i.j = icmp ult i32 %.sroa.03.0.i, 1000000000
  br i1 %i.j, label %_ZN4core4time8Duration3new17heaed37e477563ad0E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = udiv i32 %.sroa.03.0.i, 1000000000
  %i.l = zext nneg i32 %i.k to i64
  %i.m = add nuw i64 %.sroa.0.0.i, %i.l
  %i.n = urem i32 %.sroa.03.0.i, 1000000000
  br label %_ZN4core4time8Duration3new17heaed37e477563ad0E.exit.i

_ZN4core4time8Duration3new17heaed37e477563ad0E.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.3.0.i.i = phi i32 [ %i.n, %bb.c ], [ %.sroa.03.0.i, %bb.b ]
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.c ], [ %.sroa.0.0.i, %bb.b ]
  store i64 %.sroa.0.0.i.i, ptr %i.a, align 8, !noalias !6642
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.3.0.i.i, ptr %i.o, align 8, !noalias !6642
  invoke void @_ZN4jiff3fmt8temporal7printer11SpanPrinter28print_unsigned_duration_impl17h86655651e0db6e5aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZN4core4time8Duration3new17heaed37e477563ad0E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6642
  %i.p = load ptr, ptr %i.b, align 8, !noalias !6642, !nonnull !30, !align !32, !noundef !30
  %i.q = load i16, ptr %i.g, align 8, !noalias !6642, !noundef !30 ; 2 uses
  %i.r = zext i16 %i.q to i64                     ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6644)
  call void @llvm.experimental.noalias.scope.decl(metadata !6645)
  call void @llvm.experimental.noalias.scope.decl(metadata !6646)
  call void @llvm.experimental.noalias.scope.decl(metadata !6647)
  %.not = icmp eq i16 %i.q, 0
  br i1 %.not, label %bb.g, label %bb.d, !prof !35

bb.d:                                             ; preds = %.noexc
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h38682c382e765932E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %i.r)
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %bb.d
end_hunk_3
