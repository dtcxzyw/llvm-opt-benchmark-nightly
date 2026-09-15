Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls_pki_types-7fe5f30be5e0bf1b.rustls_pki_types.ac7a2e1cc206a212-cgu.0?download=true
inline.NumInlined: 152
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXsf_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_12DnsNameInnerNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq:bb.a
  %i.ai = load i8, ptr %.sroa.05.0.i1592, align 1, !alias.scope !450, !noalias !449, !noundef !7 ; 2 uses
  %i.aj = add i8 %i.ai, -65
  %i.ak = icmp ult i8 %i.aj, 26
  %i.al = select i1 %i.ak, i8 32, i8 0
  %.sroa.013.0.i22 = or i8 %i.al, %i.ai
  %i.am = icmp eq i8 %.sroa.012.0.i21, %.sroa.013.0.i22 ; 3 uses
  br i1 %i.am, label %bb.k, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

bb.l:                                             ; preds = %bb.b
  br i1 %.not9, label %bb.q, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

bb.m:                                             ; preds = %bb.b
  br i1 %.not9, label %bb.n, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

bb.n:                                             ; preds = %bb.m
  %i.an = icmp ugt i64 %i.f, 15
  br i1 %i.an, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %.not15.i2980 = icmp eq i64 %i.f, 0
  br i1 %.not15.i2980, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, label %.lr.ph85

bb.p:                                             ; preds = %.lr.ph85
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2784, i64 1
  %i.ap = add nsw i64 %.sroa.5.0.i2683, -1        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i2582, i64 1
  %i.ar = add nsw i64 %.sroa.58.0.i2481, -1       ; 2 uses
  %.not.i28 = icmp eq i64 %i.ap, 0
  %.not15.i29 = icmp eq i64 %i.ar, 0
  %or.cond.i30 = select i1 %.not.i28, i1 true, i1 %.not15.i29
  br i1 %or.cond.i30, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.o, %bb.p
  %.sroa.0.0.i2784 = phi ptr [ %i.ao, %bb.p ], [ %i.d, %bb.o ] ; 2 uses
  %.sroa.5.0.i2683 = phi i64 [ %i.ap, %bb.p ], [ %i.f, %bb.o ]
  %.sroa.05.0.i2582 = phi ptr [ %i.aq, %bb.p ], [ %i.h, %bb.o ] ; 2 uses
  %.sroa.58.0.i2481 = phi i64 [ %i.ar, %bb.p ], [ %i.f, %bb.o ]
  %i.as = load i8, ptr %.sroa.0.0.i2784, align 1, !alias.scope !451, !noalias !452, !noundef !7 ; 2 uses
  %i.at = add i8 %i.as, -65
  %i.au = icmp ult i8 %i.at, 26
  %i.av = select i1 %i.au, i8 32, i8 0
  %.sroa.012.0.i31 = or i8 %i.av, %i.as
  %i.aw = load i8, ptr %.sroa.05.0.i2582, align 1, !alias.scope !452, !noalias !451, !noundef !7 ; 2 uses
  %i.ax = add i8 %i.aw, -65
  %i.ay = icmp ult i8 %i.ax, 26
  %i.az = select i1 %i.ay, i8 32, i8 0
  %.sroa.013.0.i32 = or i8 %i.az, %i.aw
  %i.ba = icmp eq i8 %.sroa.012.0.i31, %.sroa.013.0.i32 ; 3 uses
  br i1 %i.ba, label %bb.p, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit

bb.q:                                             ; preds = %bb.l
  %i.bb = icmp ugt i64 %i.f, 15
  br i1 %i.bb, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %.not15.i3972 = icmp eq i64 %i.f, 0
  br i1 %.not15.i3972, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3776, i64 1
  %i.bd = add nsw i64 %.sroa.5.0.i3675, -1        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i3574, i64 1
  %i.bf = add nsw i64 %.sroa.58.0.i3473, -1       ; 2 uses
  %.not.i38 = icmp eq i64 %i.bd, 0
  %.not15.i39 = icmp eq i64 %i.bf, 0
  %or.cond.i40 = select i1 %.not.i38, i1 true, i1 %.not15.i39
  br i1 %or.cond.i40, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %bb.s
  %.sroa.0.0.i3776 = phi ptr [ %i.bc, %bb.s ], [ %i.d, %bb.r ] ; 2 uses
  %.sroa.5.0.i3675 = phi i64 [ %i.bd, %bb.s ], [ %i.f, %bb.r ]
  %.sroa.05.0.i3574 = phi ptr [ %i.be, %bb.s ], [ %i.h, %bb.r ] ; 2 uses
  %.sroa.58.0.i3473 = phi i64 [ %i.bf, %bb.s ], [ %i.f, %bb.r ]
  %i.bg = load i8, ptr %.sroa.0.0.i3776, align 1, !alias.scope !453, !noalias !454, !noundef !7 ; 2 uses
  %i.bh = add i8 %i.bg, -65
  %i.bi = icmp ult i8 %i.bh, 26
  %i.bj = select i1 %i.bi, i8 32, i8 0
  %.sroa.012.0.i41 = or i8 %i.bj, %i.bg
  %i.bk = load i8, ptr %.sroa.05.0.i3574, align 1, !alias.scope !454, !noalias !453, !noundef !7 ; 2 uses
  %i.bl = add i8 %i.bk, -65
  %i.bm = icmp ult i8 %i.bl, 26
  %i.bn = select i1 %i.bm, i8 32, i8 0
  %.sroa.013.0.i42 = or i8 %i.bn, %i.bk
  %i.bo = icmp eq i8 %.sroa.012.0.i41, %.sroa.013.0.i42 ; 3 uses
  br i1 %i.bo, label %bb.s, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsh_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_17PrivateSec1KeyDerNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 17)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull @43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  %i.c = call noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsh_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_12DnsNameInnerNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !12, !noundef !7
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_5Debug3fmtCseO5Jl7W60Eg_16rustls_pki_types, ptr %.sroa.43.0..sroa_idx, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !7, !align !16, !noundef !7
  %i.i = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @46, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRReNtB6_5Debug3fmtCseO5Jl7W60Eg_16rustls_pki_types, ptr %.sroa.47.0..sroa_idx, align 8
  %i.k = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !7, !align !16, !noundef !7
  %i.n = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @46, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.1.in = phi i1 [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_19InvalidDnsNameErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsj_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs8KeyDerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.b = load i64, ptr %0, align 8, !range !12, !alias.scope !459, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RNvXs12_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInnerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !461
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !461, !nonnull !7, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !461, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  store ptr %i.e, ptr %i.a, align 8, !noalias !461
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.i, align 8, !noalias !461
  call void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCseO5Jl7W60Eg_16rustls_pki_types(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !461
  store i64 0, ptr %i.f, align 8, !alias.scope !461
  call void @_RNvXs8_CshEiLVZluVSb_7zeroizeSINtNtNtCsj6eKBz9Db1c_4core3mem12maybe_uninit11MaybeUninithENtB5_7Zeroize7zeroizeCseO5Jl7W60Eg_16rustls_pki_types(ptr noalias nofree noundef nonnull %i.e, i64 noundef %i.b), !noalias !461
  br label %_RNvXs12_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInnerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize.exit

_RNvXs12_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInnerNtCshEiLVZluVSb_7zeroize7Zeroize7zeroize.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsk_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_6IpAddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([17 x i8]) align 1 captures(none) dereferenceable(17) initializes((0, 2)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [17 x i8], align 1                ; 5 uses
  %i.c = icmp ugt i64 %2, 15
  br i1 %i.c, label %.critedge, label %_RNvXsq_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_8Ipv4AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit

_RNvXsq_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_8Ipv4AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !466
  store ptr %1, ptr %i.a, align 8, !noalias !466
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %2, ptr %i.d, align 8, !noalias !466
  %i.e = call fastcc range(i40 0, -254) i40 @_RNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB2_6Parser14read_ipv4_addr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 3 uses
  %i.f = load i64, ptr %i.d, align 8, !alias.scope !467, !noalias !466, !noundef !7
  %i.g = icmp eq i64 %i.f, 0
  %i.h = trunc i40 %i.e to i1
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !466
  br i1 %i.i, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.a, %_RNvXsq_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_8Ipv4AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsu_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_8Ipv6AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(address) dereferenceable(17) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.j = load i8, ptr %i.b, align 1, !range !10, !noundef !7
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.b:                                             ; preds = %_RNvXsq_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_8Ipv4AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit
  %sh.diff = lshr i40 %i.e, 8
  %tr.sh.diff = trunc nuw i40 %sh.diff to i32
  %3 = and i32 %tr.sh.diff, -256
  %i.m = trunc i40 %i.e to i32
  %4 = lshr i32 %i.m, 8
  %5 = and i32 %4, 255
  %6 = or disjoint i32 %3, %5
  store i8 0, ptr %0, align 1
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 %6, ptr %.sroa.43.0..sroa_idx, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  ret void

bb.d:                                             ; preds = %.critedge
  %i.n = load i8, ptr %i.l, align 1, !range !10, !noundef !7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.n, ptr %i.o, align 1
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.45.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %i.l, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i8 [ 2, %bb.d ], [ 1, %bb.e ]
  store i8 %.sink, ptr %0, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsn_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_18PrivatePkcs8KeyDerNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 18)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull @43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38)
  %i.c = call noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCseO5Jl7W60Eg_16rustls_pki_types(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i40 0, -254) i40 @_RNvXsq_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_8Ipv4AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp ugt i64 %1, 15
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  %i.d = call fastcc range(i40 0, -254) i40 @_RNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB2_6Parser14read_ipv4_addr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !alias.scope !470, !noundef !7
  %i.f = icmp eq i64 %i.e, 0
  %i.g = trunc i40 %i.d to i1
  %i.h = select i1 %i.f, i1 %i.g, i1 false        ; 2 uses
  %narrow.i = xor i1 %i.h, true
  %i.i = and i40 %i.d, -256
  %.sroa.4.0.insert.insert.i = select i1 %i.h, i40 %i.i, i40 0 ; 2 uses
  %.sroa.01.0.extract.trunc = zext i1 %narrow.i to i8
  %.sroa.01.1.extract.shift = lshr exact i40 %.sroa.4.0.insert.insert.i, 8
  %.sroa.01.1.extract.trunc = trunc i40 %.sroa.01.1.extract.shift to i8
  %.sroa.01.2.extract.shift = lshr i40 %.sroa.4.0.insert.insert.i, 16
  %.sroa.01.2.extract.trunc = trunc nuw i40 %.sroa.01.2.extract.shift to i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.sroa.0.0 = phi i24 [ %.sroa.01.2.extract.trunc, %bb.b ], [ undef, %bb.a ]
  %.sroa.3.0 = phi i8 [ %.sroa.01.1.extract.trunc, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i8 [ %.sroa.01.0.extract.trunc, %bb.b ], [ 1, %bb.a ]
  %.sroa.4.0.insert.ext = zext i24 %.sroa.4.sroa.0.0 to i40
  %.sroa.4.0.insert.shift = shl nuw i40 %.sroa.4.0.insert.ext, 16
  %.sroa.3.0.insert.ext = zext i8 %.sroa.3.0 to i40
  %.sroa.3.0.insert.shift = shl nuw nsw i40 %.sroa.3.0.insert.ext, 8
  %.sroa.3.0.insert.insert = or disjoint i40 %.sroa.3.0.insert.shift, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i40
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.3.0.insert.insert, %.sroa.0.0.insert.ext
  ret i40 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsu_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_8Ipv6AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([17 x i8]) align 1 captures(none) dereferenceable(17) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [14 x i8], align 2                ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store i64 %2, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !488
  %i.e = call fastcc { i64, i1 } @_RNvNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB4_6Parser14read_ipv6_addr11read_groups(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 2 %i.b, i64 noundef 8), !noalias !489 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.g = icmp eq i64 %i.f, 8
  br i1 %i.g, label %_RNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB4_6Parser14read_ipv6_addr0B8_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.h, label %_RNCNvXsu_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB7_8Ipv6AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0B9_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !alias.scope !490, !noalias !489, !nonnull !7, !noundef !7 ; 3 uses
  %i.j = load i64, ptr %i.d, align 8, !alias.scope !490, !noalias !489, !noundef !7 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %_RNCNvXsu_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB7_8Ipv6AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0B9_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.i, align 1, !noalias !488, !noundef !7
  %i.l = icmp ne i8 %i.k, 58
  %.not65.i.i.i.i = icmp eq i64 %i.j, 1
  %or.cond.i.i.i = or i1 %.not65.i.i.i.i, %i.l
  br i1 %or.cond.i.i.i, label %_RNCNvXsu_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB7_8Ipv6AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0B9_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.o = add i64 %i.j, -2
  %i.p = load i8, ptr %i.m, align 1, !noalias !488, !noundef !7
  store ptr %i.n, ptr %i.c, align 8, !alias.scope !490, !noalias !489, !captures !6
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !490, !noalias !489
  %i.q = icmp eq i8 %i.p, 58
  br i1 %i.q, label %bb.f, label %_RNCNvXsu_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB7_8Ipv6AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0B9_.exit.thread.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.a, i8 0, i64 14, i1 false), !noalias !488
  %i.r = sub i64 7, %i.f                          ; 3 uses
  %i.s = icmp ult i64 %i.r, 8
  br i1 %i.s, label %bb.h, label %bb.g, !prof !491

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.r, i64 noundef 7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27, !noalias !488
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = call fastcc { i64, i1 } @_RNvNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB4_6Parser14read_ipv6_addr11read_groups(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 2 %i.a, i64 noundef %i.r), !noalias !489
  %i.u = extractvalue { i64, i1 } %i.t, 0         ; 5 uses
  %i.v = sub i64 8, %i.u                          ; 2 uses
  %i.w = icmp ugt i64 %i.u, 8
  br i1 %i.w, label %bb.j, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  %.not66.i.i.i.i = icmp eq i64 %i.u, 8
  br i1 %.not66.i.i.i.i, label %bb.k, label %_RNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB4_6Parser14read_ipv6_addr0B8_.exit.thread.i.i.i, !prof !492

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.v, i64 noundef 8, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27, !noalias !488
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 8, i64 noundef 7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #27, !noalias !488
  unreachable

_RNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB4_6Parser14read_ipv6_addr0B8_.exit.thread.i.i.i: ; preds = %bb.i
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.v
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impltECseO5Jl7W60Eg_16rustls_pki_types(ptr noalias nofree noundef nonnull align 2 %i.x, i64 noundef %i.u, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.a, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !noalias !488
  %i.y = load <8 x i16>, ptr %i.b, align 16, !noalias !488
  %i.z = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !488
  br label %_RNCNvXsu_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB7_8Ipv6AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0B9_.exit.i

_RNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB4_6Parser14read_ipv6_addr0B8_.exit.i.i.i: ; preds = %bb.a
  %i.aa = load <8 x i16>, ptr %i.b, align 16, !noalias !488
  %i.ab = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.aa)
  br label %_RNCNvXsu_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB7_8Ipv6AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0B9_.exit.i

_RNCNvXsu_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB7_8Ipv6AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0B9_.exit.i: ; preds = %_RNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB4_6Parser14read_ipv6_addr0B8_.exit.i.i.i, %_RNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB4_6Parser14read_ipv6_addr0B8_.exit.thread.i.i.i
  %i.ac = phi <8 x i16> [ %i.ab, %_RNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB4_6Parser14read_ipv6_addr0B8_.exit.i.i.i ], [ %i.z, %_RNCNvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB4_6Parser14read_ipv6_addr0B8_.exit.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !488
  %i.ad = load i64, ptr %i.d, align 8, !alias.scope !484, !noalias !483, !noundef !7
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.l

_RNCNvXsu_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB7_8Ipv6AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0B9_.exit.thread.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !488
  %i.af = icmp eq i64 %2, 0
  br i1 %i.af, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_RNCNvXsu_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB7_8Ipv6AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0B9_.exit.thread.i, %_RNCNvXsu_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB7_8Ipv6AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0B9_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ag, align 1, !alias.scope !483, !noalias !484
  br label %_RINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB3_6Parser10parse_withNtB5_8Ipv6AddrNCNvXsu_B5_B1l_INtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0EB7_.exit

bb.m:                                             ; preds = %_RNCNvXsu_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB7_8Ipv6AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0B9_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store <8 x i16> %i.ac, ptr %i.ah, align 1, !alias.scope !483, !noalias !484
  br label %_RINvMNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name6parserNtB3_6Parser10parse_withNtB5_8Ipv6AddrNCNvXsu_B5_B1l_INtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0EB7_.exit

bb.n:                                             ; preds = %_RNCNvXsu_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB7_8Ipv6AddrINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from0B9_.exit.thread.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ai, align 1, !alias.scope !483, !noalias !484
end_hunk_0
