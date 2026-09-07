Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/toml_parser-88bf66edb090e8f1.toml_parser.7585be01b74136fa-cgu.1?download=true
inline.NumInlined: 96
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar13decode_symbol:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar14decode_invalid(ptr nonnull captures(address, read_provenance) %.0.val, i64 %.8.val, ptr noundef nonnull %0, ptr nofree readonly captures(none) %.24.val, ptr nofree readonly captures(none) %.32.val, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.24.val1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 9 uses
  %i.b = alloca [88 x i8], align 8                ; 12 uses
  %i.c = alloca [88 x i8], align 8                ; 11 uses
  %i.d = alloca [88 x i8], align 8                ; 11 uses
  %i.e = alloca [88 x i8], align 8                ; 11 uses
  %i.f = alloca [88 x i8], align 8                ; 11 uses
  %i.g = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 3)
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 3)
  br i1 %i.h, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 -1, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @19, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 21, ptr %.sroa.54.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 1, ptr %i.f, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.8.val, ptr %.sroa.57.0..sroa_idx, align 8
  store ptr @23, ptr %i.j, align 8
  store i64 1, ptr %i.k, align 8
  store i64 1, ptr %i.l, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i8 0, i64 16, i1 false)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 1)
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 -1, ptr %i.n, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @19, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 21, ptr %.sroa.517.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.513.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 1, ptr %i.e, align 8
  store i64 0, ptr %.sroa.513.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.8.val, ptr %.sroa.520.0..sroa_idx, align 8
  store ptr @22, ptr %i.o, align 8
  store i64 1, ptr %i.p, align 8
  store i64 1, ptr %i.q, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.513.0..sroa_idx14, i8 0, i64 16, i1 false)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.r = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 1)
  br i1 %i.r, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 -1, ptr %i.s, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @19, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 21, ptr %.sroa.530.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.526.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 1, ptr %i.d, align 8
  store i64 0, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.8.val, ptr %.sroa.533.0..sroa_idx, align 8
  store ptr @21, ptr %i.t, align 8
  store i64 1, ptr %i.u, align 8
  store i64 1, ptr %i.v, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.526.0..sroa_idx27, i8 0, i64 16, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 -1, ptr %i.w, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @16, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 28, ptr %.sroa.556.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.552.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 1, ptr %i.b, align 8
  store i64 0, ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.8.val, ptr %.sroa.461.0..sroa_idx, align 8
  store ptr @18, ptr %i.x, align 8
  store i64 1, ptr %i.y, align 8
  store i64 1, ptr %i.z, align 8
  store i64 0, ptr %.sroa.552.0..sroa_idx53, align 8
  %.sroa.461.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.461.0..sroa_idx62, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 -1, ptr %i.aa, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @19, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 21, ptr %.sroa.543.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.539.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 1, ptr %i.c, align 8
  store i64 0, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.8.val, ptr %.sroa.546.0..sroa_idx, align 8
  store ptr @20, ptr %i.ab, align 8
  store i64 1, ptr %i.ac, align 8
  store i64 1, ptr %i.ad, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.539.0..sroa_idx40, i8 0, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.h, %bb.i, %bb.g, %bb.c
  %.sink = phi ptr [ %i.e, %bb.e ], [ %i.b, %bb.h ], [ %i.c, %bb.i ], [ %i.d, %bb.g ], [ %i.f, %bb.c ]
  call void %.24.val1(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %.sink) #9
  call void %.24.val(ptr noundef nonnull %0) #9
  %i.ae = call noundef zeroext i1 %.32.val(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val) #9
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -1, ptr %i.af, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @24, ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 29, ptr %.sroa.570.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.566.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %i.ah, align 8
  store i64 0, ptr %.sroa.566.0..sroa_idx67, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.8.val, ptr %.sroa.573.0..sroa_idx, align 8
  call void %.24.val1(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar15ensure_dec_uint(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr %.0.val, i64 %.8.val, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, ptr noundef nonnull %3, ptr nofree readonly captures(none) %.24.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  %i.b = alloca [88 x i8], align 8                ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %i.f = icmp samesign eq i64 %i.e, 0
  %.sink36.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink36.sroa.gep1 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink36.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sink36.sroa.gep4 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sink36.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sink36.sroa.gep7 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sink36.sroa.gep9 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sink36.sroa.gep10 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sink36.sroa.gep12 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sink36.sroa.gep13 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sink36.sroa.gep15 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sink36.sroa.gep16 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sink36.sroa.gep18 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink36.sroa.gep19 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink36.sroa.gep21 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink36.sroa.gep22 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink36.sroa.gep24 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink36.sroa.gep25 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink36.sroa.gep27 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sink36.sroa.gep28 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br i1 %i.f, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 2 uses
  %4 = ptrtoint ptr %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit
  %.sroa.01.010 = phi i32 [ %.sroa.01.1, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.h = phi ptr [ %.sroa.01.05, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !54, !noundef !4 ; 7 uses
  %i.j = icmp sgt i8 %i.i, -1                     ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = and i8 %i.i, 31
  %i.m = zext nneg i8 %i.l to i32                 ; 3 uses
  %i.n = load i8, ptr %i.k, align 1, !noalias !54, !noundef !4
  %i.o = shl nuw nsw i32 %i.m, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.i, -33
  br i1 %i.s, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.t = zext nneg i8 %i.i to i32
  br label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.v = load i8, ptr %i.u, align 1, !noalias !54, !noundef !4
  %i.w = shl nuw nsw i32 %i.q, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.m, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.i, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit16.i, label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit16.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !54, !noundef !4
  %i.af = shl nuw nsw i32 %i.m, 18
  %i.ag = and i32 %i.af, 1835008
  %i.ah = shl nuw nsw i32 %i.z, 6
  %i.ai = and i8 %i.ae, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = or disjoint i32 %i.ak, %i.ag
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit16.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.ab, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i ], [ %i.al, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit16.i ], [ %i.r, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i ], [ %i.t, %bb.b ] ; 3 uses
  %i.am = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add nsw i32 %.sroa.4.0.i.ph, -48
  %or.cond = icmp ult i32 %i.an, 10
  br i1 %or.cond, label %bb.e, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit
  %.sroa.01.0.lcssa = phi i32 [ %.sroa.01.1, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit ], [ %.sroa.01.010, %bb.d ]
  switch i32 %.sroa.01.0.lcssa, label %bb.h [
    i32 0, label %._crit_edge.thread
    i32 1, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ao = icmp eq i32 %.sroa.4.0.i.ph, 95
  br i1 %i.ao, label %bb.f, label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.ap = add i32 %.sroa.01.010, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.1 = phi i32 [ %i.ap, %bb.e ], [ %.sroa.01.010, %bb.d ] ; 2 uses
  br i1 %i.j, label %bb.g, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i32

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i32: ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.ar = icmp samesign ugt i8 %i.i, -33
  br i1 %i.ar, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i35, label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  br label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i35: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i32
  %i.at = icmp samesign ugt i8 %i.i, -17
  %spec.select.v = select i1 %i.at, i64 4, i64 3
  %spec.select = getelementptr inbounds nuw i8, ptr %i.h, i64 %spec.select.v
  br label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit

_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i35, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i32, %bb.g
  %.sroa.01.05 = phi ptr [ %i.aq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i32 ], [ %i.as, %bb.g ], [ %spec.select, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i35 ] ; 4 uses
  %i.au = ptrtoint ptr %.sroa.01.05 to i64
  %i.av = sub nuw i64 %4, %i.au
  store ptr %.sroa.01.05, ptr %0, align 8, !alias.scope !55, !captures !5
  store i64 %i.av, ptr %i.d, align 8, !alias.scope !55
  %i.aw = icmp eq ptr %i.g, %.sroa.01.05
  br i1 %i.aw, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %._crit_edge
  %i.ax = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 1)
  %.not = xor i1 %i.ax, true
  %brmerge = or i1 %1, %.not
  br i1 %brmerge, label %bb.i, label %bb.j

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ay = ptrtoint ptr %i.c to i64
  %i.az = ptrtoint ptr %.0.val to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge.thread, %bb.j
  %.sink36.sroa.phi = phi ptr [ %.sink36.sroa.gep, %bb.j ], [ %.sink36.sroa.gep1, %._crit_edge.thread ]
  %.sink36.sroa.phi2 = phi ptr [ %.sink36.sroa.gep3, %bb.j ], [ %.sink36.sroa.gep4, %._crit_edge.thread ]
  %.sink36.sroa.phi5 = phi ptr [ %.sink36.sroa.gep6, %bb.j ], [ %.sink36.sroa.gep7, %._crit_edge.thread ]
  %.sink36.sroa.phi8 = phi ptr [ %.sink36.sroa.gep9, %bb.j ], [ %.sink36.sroa.gep10, %._crit_edge.thread ]
  %.sink36.sroa.phi11 = phi ptr [ %.sink36.sroa.gep12, %bb.j ], [ %.sink36.sroa.gep13, %._crit_edge.thread ]
  %.sink36.sroa.phi14 = phi ptr [ %.sink36.sroa.gep15, %bb.j ], [ %.sink36.sroa.gep16, %._crit_edge.thread ]
  %.sink36.sroa.phi17 = phi ptr [ %.sink36.sroa.gep18, %bb.j ], [ %.sink36.sroa.gep19, %._crit_edge.thread ]
  %.sink36.sroa.phi20 = phi ptr [ %.sink36.sroa.gep21, %bb.j ], [ %.sink36.sroa.gep22, %._crit_edge.thread ]
  %.sink36.sroa.phi23 = phi ptr [ %.sink36.sroa.gep24, %bb.j ], [ %.sink36.sroa.gep25, %._crit_edge.thread ]
  %.sink36.sroa.phi26 = phi ptr [ %.sink36.sroa.gep27, %bb.j ], [ %.sink36.sroa.gep28, %._crit_edge.thread ]
  %.sink36 = phi ptr [ %i.a, %bb.j ], [ %i.b, %._crit_edge.thread ] ; 2 uses
  %.sink32 = phi ptr [ @28, %bb.j ], [ %2, %._crit_edge.thread ]
  %.sink30 = phi i64 [ 23, %bb.j ], [ 16, %._crit_edge.thread ]
  %.sink22 = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ @26, %._crit_edge.thread ]
  %.sink20 = phi i64 [ 0, %bb.j ], [ 1, %._crit_edge.thread ]
  %.sink18 = phi i64 [ %i.bd, %bb.j ], [ %i.ba, %._crit_edge.thread ]
  %.sink16 = phi i64 [ %i.be, %bb.j ], [ %i.ba, %._crit_edge.thread ]
  store i64 -1, ptr %.sink36.sroa.phi2, align 8
  store ptr %.sink32, ptr %.sink36.sroa.phi5, align 8
  store i64 %.sink30, ptr %.sink36.sroa.phi8, align 8
  store i64 1, ptr %.sink36, align 8
  store i64 0, ptr %.sink36.sroa.phi, align 8
  store i64 %.8.val, ptr %.sink36.sroa.phi23, align 8
  store ptr %.sink22, ptr %.sink36.sroa.phi11, align 8
  store i64 %.sink20, ptr %.sink36.sroa.phi14, align 8
  store i64 1, ptr %.sink36.sroa.phi17, align 8
  store i64 %.sink18, ptr %.sink36.sroa.phi20, align 8
  store i64 %.sink16, ptr %.sink36.sroa.phi26, align 8
  call void %.24.val(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %.sink36) #9
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h, %._crit_edge
  %.sroa.0.0 = phi i1 [ true, %bb.h ], [ true, %._crit_edge ], [ false, %.sink.split ]
  ret i1 %.sroa.0.0

bb.j:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.bb = ptrtoint ptr %i.c to i64
  %i.bc = ptrtoint ptr %.0.val to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = add i64 %i.bd, 1
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i8, i8 } @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar18decode_zero_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 1, 0) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, ptr noundef nonnull %4, ptr nofree readonly captures(none) %.24.val, ptr nofree readonly captures(none) %.32.val, ptr noundef nonnull %5, ptr nofree readonly captures(none) %.24.val1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 16 uses
  %i.b = alloca [88 x i8], align 8                ; 17 uses
  %i.c = alloca [88 x i8], align 8                ; 17 uses
  %i.d = alloca [88 x i8], align 8                ; 18 uses
  %i.e = alloca [88 x i8], align 8                ; 17 uses
  %i.f = alloca [88 x i8], align 8                ; 18 uses
  %i.g = alloca [88 x i8], align 8                ; 17 uses
  %i.h = alloca [88 x i8], align 8                ; 18 uses
  %i.i = alloca [88 x i8], align 8                ; 12 uses
  %i.j = alloca [88 x i8], align 8                ; 12 uses
  %i.k = alloca [88 x i8], align 8                ; 12 uses
  %i.l = alloca [88 x i8], align 8                ; 12 uses
  %i.m = alloca [88 x i8], align 8                ; 12 uses
  %i.n = alloca [88 x i8], align 8                ; 12 uses
  %i.o = alloca [88 x i8], align 8                ; 12 uses
  %i.p = alloca [88 x i8], align 8                ; 12 uses
  %i.q = icmp eq i64 %1, 1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %3, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %i.u = tail call fastcc { i8, i8 } @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar23decode_float_or_integer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t, ptr nonnull %i.r, i64 %i.t, i8 noundef 4, i8 0, ptr noundef nonnull %4, ptr %.24.val, ptr %.32.val, ptr noundef nonnull %5, ptr %.24.val1) ; 2 uses
  %i.v = extractvalue { i8, i8 } %i.u, 0
  %i.w = extractvalue { i8, i8 } %i.u, 1
  br label %bb.ce

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.y = load i8, ptr %i.x, align 1, !noundef !4  ; 4 uses
  switch i8 %i.y, label %bb.d [
    i8 120, label %bb.e
    i8 88, label %bb.e
    i8 111, label %bb.g
    i8 79, label %bb.g
    i8 98, label %bb.i
    i8 66, label %bb.i
    i8 100, label %bb.k
    i8 68, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.z = tail call fastcc { i8, i8 } @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6scalar35decode_datetime_or_float_or_integer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %3, ptr noundef nonnull %4, ptr %.24.val, ptr %.32.val, ptr noundef nonnull %5, ptr %.24.val1) ; 2 uses
  %i.aa = extractvalue { i8, i8 } %i.z, 0
  %i.ab = extractvalue { i8, i8 } %i.z, 1
  br label %bb.ce

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.ac = icmp samesign ult i64 %1, 16
  br i1 %i.ac, label %.lr.ph.i.i, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.01.05.i.i = phi i64 [ %i.ag, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !201, !noundef !4
  %i.af = icmp eq i8 %i.ae, 32
  br i1 %i.af, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %1
  br i1 %exitcond.not.i.i, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread15, label %.lr.ph.i.i

_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit: ; preds = %bb.e
  %i.ah = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1)
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread15

bb.g:                                             ; preds = %bb.c, %bb.c
  %i.ak = icmp samesign ult i64 %1, 16
  br i1 %i.ak, label %.lr.ph.i.i183, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit186

.lr.ph.i.i183:                                    ; preds = %bb.g, %bb.h
  %.sroa.01.05.i.i184 = phi i64 [ %i.ao, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.i.i184
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !202, !noundef !4
  %i.an = icmp eq i8 %i.am, 32
  br i1 %i.an, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit186.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i183
  %i.ao = add nuw nsw i64 %.sroa.01.05.i.i184, 1  ; 2 uses
  %exitcond.not.i.i185 = icmp eq i64 %i.ao, %1
  br i1 %exitcond.not.i.i185, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit186.thread18, label %.lr.ph.i.i183

_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit186: ; preds = %bb.g
  %i.ap = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1)
  %i.aq = extractvalue { i64, i64 } %i.ap, 0
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit186.thread, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit186.thread18

bb.i:                                             ; preds = %bb.c, %bb.c
  %i.as = icmp samesign ult i64 %1, 16
  br i1 %i.as, label %.lr.ph.i.i189, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit192

.lr.ph.i.i189:                                    ; preds = %bb.i, %bb.j
  %.sroa.01.05.i.i190 = phi i64 [ %i.aw, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.i.i190
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !203, !noundef !4
  %i.av = icmp eq i8 %i.au, 32
  br i1 %i.av, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit192.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i189
  %i.aw = add nuw nsw i64 %.sroa.01.05.i.i190, 1  ; 2 uses
  %exitcond.not.i.i191 = icmp eq i64 %i.aw, %1
  br i1 %exitcond.not.i.i191, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit192.thread21, label %.lr.ph.i.i189

_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit192: ; preds = %bb.i
  %i.ax = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1)
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit192.thread, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit192.thread21

bb.k:                                             ; preds = %bb.c, %bb.c
  %i.ba = icmp samesign ult i64 %1, 16
  br i1 %i.ba, label %.lr.ph.i.i195, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit198

.lr.ph.i.i195:                                    ; preds = %bb.k, %bb.l
  %.sroa.01.05.i.i196 = phi i64 [ %i.be, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.05.i.i196
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !204, !noundef !4
  %i.bd = icmp eq i8 %i.bc, 32
  br i1 %i.bd, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit198.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i195
  %i.be = add nuw nsw i64 %.sroa.01.05.i.i196, 1  ; 2 uses
  %exitcond.not.i.i197 = icmp eq i64 %i.be, %1
  br i1 %exitcond.not.i.i197, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit198.thread24, label %.lr.ph.i.i195

_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit198: ; preds = %bb.k
  %i.bf = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1)
  %i.bg = extractvalue { i64, i64 } %i.bf, 0
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit198.thread, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit198.thread24

_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread15: ; preds = %bb.f, %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit
end_hunk_0
