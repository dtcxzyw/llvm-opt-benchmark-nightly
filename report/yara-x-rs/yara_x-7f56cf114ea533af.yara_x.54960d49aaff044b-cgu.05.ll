Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.05?download=true
inline.NumInlined: 3898
inline.NumDeleted: 2041
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser25convert_to_version_string:.split
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.i, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.j, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @628, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser29convert_to_build_tool_version(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = lshr i32 %1, 16
  store i32 %i.d, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = lshr i32 %1, 8
  %i.f = and i32 %i.e, 255
  store i32 %i.f, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @37, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser32convert_to_source_version_string(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [80 x i8], align 8                ; 13 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = lshr i64 %1, 40
  store i64 %i.g, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = lshr i64 %1, 30
  %i.i = and i64 %i.h, 63
  store i64 %i.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = lshr i64 %1, 20
  %i.k = and i64 %i.j, 63
  store i64 %i.k, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = lshr i64 %1, 10
  %i.m = and i64 %i.l, 63
  store i64 %i.m, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = and i64 %1, 63
  store i64 %i.n, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.o, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.p, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.q, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.b, ptr %i.r, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @629, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils4asn110oid_to_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 1                ; 44 uses
  %i.e = alloca [44 x i8], align 4                ; 41 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !5
  %.sroa.02800.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.02800.0 = load ptr, ptr %.sroa.02800.0.in, align 8, !nonnull !5, !noundef !5
  call void @_RNvMs_Cs9UgDHlk63pp_9const_oidNtB4_16ObjectIdentifier10from_bytes(ptr noalias nofree noundef nonnull sret([44 x i8]) align 4 captures(none) dereferenceable(44) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.02800.0, i64 noundef %.sroa.5.0)
  %i.f = load i8, ptr %i.e, align 4, !range !22, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @2694, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %i.i, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bu

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.0.0.copyload = load i8, ptr %i.j, align 1 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %.sroa.110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %.sroa.125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 11 ; 2 uses
  %.sroa.165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 13 ; 2 uses
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %.sroa.301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %.sroa.370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 18 ; 2 uses
  %.sroa.394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 19
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 21
  %.sroa.508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 27
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 29
  %i.k = load <16 x i8>, ptr %.sroa.16.0..sroa_idx, align 4 ; 2 uses
  %i.l = load <16 x i8>, ptr %.sroa.439.0..sroa_idx, align 4 ; 2 uses
  %.sroa.784.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 30
  %.sroa.808.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 31
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 33
  %.sroa.922.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 34
  %.sroa.946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 35
  %.sroa.991.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %.sroa.1015.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 37
  %.sroa.1060.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 38
  %i.m = load <32 x i8>, ptr %.sroa.53.0..sroa_idx, align 1 ; 4 uses
  %.sroa.1060.0.copyload = load i8, ptr %.sroa.1060.0..sroa_idx, align 2 ; 22 uses
  %.sroa.1015.0.copyload = load i8, ptr %.sroa.1015.0..sroa_idx, align 1 ; 22 uses
  %i.n = load <16 x i8>, ptr %.sroa.125.0..sroa_idx, align 1 ; 20 uses
  %i.o = load <16 x i8>, ptr %.sroa.370.0..sroa_idx, align 2 ; 2 uses
  %i.p = load <16 x i8>, ptr %.sroa.3.0..sroa_idx, align 2 ; 2 uses
  %i.q = load <32 x i8>, ptr %.sroa.23.0..sroa_idx, align 1 ; 12 uses
  %.sroa.991.0.copyload = load i8, ptr %.sroa.991.0..sroa_idx, align 4 ; 16 uses
  %.sroa.946.0.copyload = load i8, ptr %.sroa.946.0..sroa_idx, align 1 ; 16 uses
  %.sroa.922.0.copyload = load i8, ptr %.sroa.922.0..sroa_idx, align 2 ; 16 uses
  %.sroa.877.0.copyload = load i8, ptr %.sroa.877.0..sroa_idx, align 1 ; 16 uses
  %.sroa.853.0.copyload = load i8, ptr %.sroa.853.0..sroa_idx, align 4 ; 16 uses
  %.sroa.808.0.copyload = load i8, ptr %.sroa.808.0..sroa_idx, align 1 ; 16 uses
  %.sroa.784.0.copyload = load i8, ptr %.sroa.784.0..sroa_idx, align 2 ; 16 uses
  %.sroa.739.0.copyload = load i8, ptr %.sroa.739.0..sroa_idx, align 1 ; 15 uses
  %i.r = load <16 x i8>, ptr %.sroa.187.0..sroa_idx, align 1 ; 6 uses
  %.sroa.715.0.copyload = load i8, ptr %.sroa.715.0..sroa_idx, align 4 ; 12 uses
  %.sroa.670.0.copyload = load i8, ptr %.sroa.670.0..sroa_idx, align 1 ; 12 uses
  %.sroa.646.0.copyload = load i8, ptr %.sroa.646.0..sroa_idx, align 2
  %.sroa.601.0.copyload = load i8, ptr %.sroa.601.0..sroa_idx, align 1
  %.sroa.577.0.copyload = load i8, ptr %.sroa.577.0..sroa_idx, align 4
  %.sroa.532.0.copyload = load i8, ptr %.sroa.532.0..sroa_idx, align 1
  %.sroa.508.0.copyload = load i8, ptr %.sroa.508.0..sroa_idx, align 2
  %.sroa.463.0.copyload = load i8, ptr %.sroa.463.0..sroa_idx, align 1
  %.sroa.439.0.copyload = load i8, ptr %.sroa.439.0..sroa_idx, align 4
  %.sroa.394.0.copyload = load i8, ptr %.sroa.394.0..sroa_idx, align 1
  %.sroa.370.0.copyload = load i8, ptr %.sroa.370.0..sroa_idx, align 2
  %.sroa.325.0.copyload = load i8, ptr %.sroa.325.0..sroa_idx, align 1
  %.sroa.301.0.copyload = load i8, ptr %.sroa.301.0..sroa_idx, align 4
  %.sroa.256.0.copyload = load i8, ptr %.sroa.256.0..sroa_idx, align 1
  %.sroa.232.0.copyload = load i8, ptr %.sroa.232.0..sroa_idx, align 2
  %.sroa.187.0.copyload = load i8, ptr %.sroa.187.0..sroa_idx, align 1
  %.sroa.165.0.copyload = load i8, ptr %.sroa.165.0..sroa_idx, align 4 ; 2 uses
  %.sroa.125.0.copyload = load i8, ptr %.sroa.125.0..sroa_idx, align 1 ; 2 uses
  %.sroa.110.0.copyload = load i8, ptr %.sroa.110.0..sroa_idx, align 2 ; 5 uses
  %i.s = load <8 x i8>, ptr %.sroa.3.0..sroa_idx, align 2
  %.fr = freeze <8 x i8> %i.s                     ; 33 uses
  %.sroa.1084.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 39
  %.sroa.1084.0.copyload = load i8, ptr %.sroa.1084.0..sroa_idx, align 1 ; 24 uses
  %.sroa.1129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.1129.0.copyload = load i8, ptr %.sroa.1129.0..sroa_idx, align 4 ; 24 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  switch i8 %.sroa.0.0.copyload, label %bb.d [
    i8 8, label %bb.e
    i8 5, label %bb.f
    i8 9, label %bb.g
    i8 7, label %bb.h
    i8 3, label %bb.i
    i8 11, label %bb.j
  ]

bb.d:                                             ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ad, %bb.ac, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.sroa.0.0.copyload, ptr %i.d, align 1
  %.sroa.3.0..sroa_idx1609 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.t = extractelement <8 x i8> %.fr, i64 0
  store i8 %i.t, ptr %.sroa.3.0..sroa_idx1609, align 1
  %.sroa.9.0..sroa_idx1616 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.u = extractelement <8 x i8> %.fr, i64 1
  store i8 %i.u, ptr %.sroa.9.0..sroa_idx1616, align 1
  %.sroa.16.0..sroa_idx1624 = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.v = extractelement <8 x i8> %.fr, i64 2
  store i8 %i.v, ptr %.sroa.16.0..sroa_idx1624, align 1
  %.sroa.23.0..sroa_idx1632 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.w = extractelement <8 x i8> %.fr, i64 3
  store i8 %i.w, ptr %.sroa.23.0..sroa_idx1632, align 1
  %.sroa.41.0..sroa_idx1651 = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.x = extractelement <8 x i8> %.fr, i64 4
  store i8 %i.x, ptr %.sroa.41.0..sroa_idx1651, align 1
  %.sroa.53.0..sroa_idx1664 = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.y = extractelement <8 x i8> %.fr, i64 5
  store i8 %i.y, ptr %.sroa.53.0..sroa_idx1664, align 1
  %.sroa.74.0..sroa_idx1686 = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.z = extractelement <8 x i8> %.fr, i64 6
  store i8 %i.z, ptr %.sroa.74.0..sroa_idx1686, align 1
  %.sroa.88.0..sroa_idx1701 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aa = extractelement <8 x i8> %.fr, i64 7
  store i8 %i.aa, ptr %.sroa.88.0..sroa_idx1701, align 1
  %.sroa.110.0..sroa_idx1724 = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 %.sroa.110.0.copyload, ptr %.sroa.110.0..sroa_idx1724, align 1
  %.sroa.125.0..sroa_idx1740 = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  store i8 %.sroa.125.0.copyload, ptr %.sroa.125.0..sroa_idx1740, align 1
  %.sroa.165.0..sroa_idx1781 = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  store i8 %.sroa.165.0.copyload, ptr %.sroa.165.0..sroa_idx1781, align 1
  %.sroa.187.0..sroa_idx1804 = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i8 %.sroa.187.0.copyload, ptr %.sroa.187.0..sroa_idx1804, align 1
  %.sroa.232.0..sroa_idx1850 = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i8 %.sroa.232.0.copyload, ptr %.sroa.232.0..sroa_idx1850, align 1
  %.sroa.256.0..sroa_idx1875 = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  store i8 %.sroa.256.0.copyload, ptr %.sroa.256.0..sroa_idx1875, align 1
  %.sroa.301.0..sroa_idx1921 = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 %.sroa.301.0.copyload, ptr %.sroa.301.0..sroa_idx1921, align 1
  %.sroa.325.0..sroa_idx1946 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 %.sroa.325.0.copyload, ptr %.sroa.325.0..sroa_idx1946, align 1
  %.sroa.370.0..sroa_idx1992 = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  store i8 %.sroa.370.0.copyload, ptr %.sroa.370.0..sroa_idx1992, align 1
  %.sroa.394.0..sroa_idx2017 = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i8 %.sroa.394.0.copyload, ptr %.sroa.394.0..sroa_idx2017, align 1
  %.sroa.439.0..sroa_idx2063 = getelementptr inbounds nuw i8, ptr %i.d, i64 19
  store i8 %.sroa.439.0.copyload, ptr %.sroa.439.0..sroa_idx2063, align 1
  %.sroa.463.0..sroa_idx2088 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 %.sroa.463.0.copyload, ptr %.sroa.463.0..sroa_idx2088, align 1
  %.sroa.508.0..sroa_idx2134 = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  store i8 %.sroa.508.0.copyload, ptr %.sroa.508.0..sroa_idx2134, align 1
  %.sroa.532.0..sroa_idx2159 = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  store i8 %.sroa.532.0.copyload, ptr %.sroa.532.0..sroa_idx2159, align 1
  %.sroa.577.0..sroa_idx2205 = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  store i8 %.sroa.577.0.copyload, ptr %.sroa.577.0..sroa_idx2205, align 1
  %.sroa.601.0..sroa_idx2230 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 %.sroa.601.0.copyload, ptr %.sroa.601.0..sroa_idx2230, align 1
  %.sroa.646.0..sroa_idx2276 = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  store i8 %.sroa.646.0.copyload, ptr %.sroa.646.0..sroa_idx2276, align 1
  %.sroa.670.0..sroa_idx2301 = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  store i8 %.sroa.670.0.copyload, ptr %.sroa.670.0..sroa_idx2301, align 1
  %.sroa.715.0..sroa_idx2347 = getelementptr inbounds nuw i8, ptr %i.d, i64 27
  store i8 %.sroa.715.0.copyload, ptr %.sroa.715.0..sroa_idx2347, align 1
  %.sroa.739.0..sroa_idx2372 = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i8 %.sroa.739.0.copyload, ptr %.sroa.739.0..sroa_idx2372, align 1
  %.sroa.784.0..sroa_idx2418 = getelementptr inbounds nuw i8, ptr %i.d, i64 29
  store i8 %.sroa.784.0.copyload, ptr %.sroa.784.0..sroa_idx2418, align 1
  %.sroa.808.0..sroa_idx2443 = getelementptr inbounds nuw i8, ptr %i.d, i64 30
  store i8 %.sroa.808.0.copyload, ptr %.sroa.808.0..sroa_idx2443, align 1
  %.sroa.853.0..sroa_idx2489 = getelementptr inbounds nuw i8, ptr %i.d, i64 31
  store i8 %.sroa.853.0.copyload, ptr %.sroa.853.0..sroa_idx2489, align 1
  %.sroa.877.0..sroa_idx2514 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 %.sroa.877.0.copyload, ptr %.sroa.877.0..sroa_idx2514, align 1
  %.sroa.922.0..sroa_idx2560 = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  store i8 %.sroa.922.0.copyload, ptr %.sroa.922.0..sroa_idx2560, align 1
  %.sroa.946.0..sroa_idx2585 = getelementptr inbounds nuw i8, ptr %i.d, i64 34
  store i8 %.sroa.946.0.copyload, ptr %.sroa.946.0..sroa_idx2585, align 1
  %.sroa.991.0..sroa_idx2631 = getelementptr inbounds nuw i8, ptr %i.d, i64 35
  store i8 %.sroa.991.0.copyload, ptr %.sroa.991.0..sroa_idx2631, align 1
  %.sroa.1015.0..sroa_idx2656 = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i8 %.sroa.1015.0.copyload, ptr %.sroa.1015.0..sroa_idx2656, align 1
  %.sroa.1060.0..sroa_idx2702 = getelementptr inbounds nuw i8, ptr %i.d, i64 37
  store i8 %.sroa.1060.0.copyload, ptr %.sroa.1060.0..sroa_idx2702, align 1
  %.sroa.1084.0..sroa_idx2727 = getelementptr inbounds nuw i8, ptr %i.d, i64 38
  store i8 %.sroa.1084.0.copyload, ptr %.sroa.1084.0..sroa_idx2727, align 1
  %.sroa.1129.0..sroa_idx2773 = getelementptr inbounds nuw i8, ptr %i.d, i64 39
  store i8 %.sroa.1129.0.copyload, ptr %.sroa.1129.0..sroa_idx2773, align 1
  %i.ab = call { ptr, i64 } @_RNvMNtCs9UgDHlk63pp_9const_oid2dbNtB2_8Database6by_oid(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @2693, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.d) ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0      ; 2 uses
  %.not2801 = icmp eq ptr %i.ac, null
  br i1 %.not2801, label %bb.bn, label %bb.bm

bb.e:                                             ; preds = %bb.c
  %i.ad = extractelement <8 x i8> %.fr, i64 0
  %i.ae = icmp eq i8 %i.ad, 42
  %i.af = extractelement <8 x i8> %.fr, i64 1
  %i.ag = icmp eq i8 %i.af, -122
  %i.ah = shufflevector <16 x i8> %i.k, <16 x i8> %i.l, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25>
  %i.ai = shufflevector <16 x i8> %i.k, <16 x i8> %i.l, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24>
  %i.aj = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ai, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ak = or <16 x i8> %i.ah, %i.aj
  %.fr3371 = freeze <16 x i8> %i.ak
  %i.al = or i8 %.sroa.808.0.copyload, %.sroa.784.0.copyload
  %or.cond71 = icmp eq i8 %i.al, 0
  %i.am = or i8 %.sroa.877.0.copyload, %.sroa.853.0.copyload
  %or.cond75 = icmp eq i8 %i.am, 0
  %i.an = or i8 %.sroa.946.0.copyload, %.sroa.922.0.copyload
  %or.cond79 = icmp eq i8 %i.an, 0
  %i.ao = or i8 %.sroa.1015.0.copyload, %.sroa.991.0.copyload
  %or.cond83 = icmp eq i8 %i.ao, 0
  %i.ap = icmp ne <16 x i8> %.fr3371, <i8 72, i8 -122, i8 -9, i8 13, i8 2, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %i.ar = icmp eq i16 %i.aq, 0
  %op.rdx = and i1 %i.ar, %i.ae
  %i.as = and i1 %op.rdx, %i.ag
  %op.rdx3147 = select i1 %i.as, i1 %or.cond71, i1 false
  %2 = select i1 %op.rdx3147, i1 %or.cond75, i1 false
  %3 = select i1 %2, i1 %or.cond79, i1 false
  %op.rdx3149 = select i1 %3, i1 %or.cond83, i1 false
  br i1 %op.rdx3149, label %bb.k, label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.at = extractelement <8 x i8> %.fr, i64 0
  %i.au = icmp eq i8 %i.at, 43
  %i.av = extractelement <8 x i8> %.fr, i64 1
  %i.aw = icmp eq i8 %i.av, 14
  %or.cond95 = and i1 %i.au, %i.aw
  %i.ax = extractelement <8 x i8> %.fr, i64 2
  %i.ay = icmp eq i8 %i.ax, 3
  %or.cond99 = and i1 %or.cond95, %i.ay
  %i.az = extractelement <8 x i8> %.fr, i64 3
  %i.ba = icmp eq i8 %i.az, 2
  %or.cond103 = and i1 %or.cond99, %i.ba
  br i1 %or.cond103, label %bb.m, label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.bb = extractelement <8 x i8> %.fr, i64 0
  switch i8 %i.bb, label %bb.d [
    i8 96, label %bb.r
    i8 42, label %bb.s
  ]

bb.h:                                             ; preds = %bb.c
  %i.bc = shufflevector <16 x i8> %i.p, <16 x i8> %i.o, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24>
  %i.bd = shufflevector <16 x i8> %i.p, <16 x i8> %i.o, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23>
  %i.be = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bf = or <16 x i8> %i.bc, %i.be
  %.fr3292 = freeze <16 x i8> %i.bf
  %i.bg = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond943 = icmp eq i8 %i.bg, 0
  %i.bh = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond947 = icmp eq i8 %i.bh, 0
  %i.bi = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond951 = icmp eq i8 %i.bi, 0
  %i.bj = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond955 = icmp eq i8 %i.bj, 0
  %i.bk = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond959 = icmp eq i8 %i.bk, 0
  %i.bl = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond963 = icmp eq i8 %i.bl, 0
  %i.bm = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond967 = icmp eq i8 %i.bm, 0
  %i.bn = icmp ne <16 x i8> %.fr3292, <i8 42, i8 -122, i8 72, i8 -50, i8 56, i8 4, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = icmp eq i16 %i.bo, 0
  %op.rdx3222 = select i1 %i.bp, i1 %or.cond943, i1 false
  %4 = select i1 %op.rdx3222, i1 %or.cond947, i1 false
  %op.rdx3226 = select i1 %4, i1 %or.cond951, i1 false
  %5 = select i1 %op.rdx3226, i1 %or.cond955, i1 false
  %6 = select i1 %5, i1 %or.cond959, i1 false
  %7 = select i1 %6, i1 %or.cond963, i1 false
  %op.rdx3228 = select i1 %7, i1 %or.cond967, i1 false
  br i1 %op.rdx3228, label %bb.ar, label %bb.d

bb.i:                                             ; preds = %bb.c
  %i.bq = extractelement <8 x i8> %.fr, i64 0
  %i.br = icmp eq i8 %i.bq, 85
  %i.bs = extractelement <8 x i8> %.fr, i64 1
  %i.bt = icmp eq i8 %i.bs, 4
  %or.cond971 = and i1 %i.br, %i.bt
  br i1 %or.cond971, label %bb.as, label %bb.d

bb.j:                                             ; preds = %bb.c
  %i.bu = icmp eq i8 %.sroa.110.0.copyload, 2
  %i.bv = icmp eq i8 %.sroa.125.0.copyload, 1
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.bw = icmp eq i64 %.fr.scalar, 4339079706868516395
  %op.rdx3259 = select i1 %i.bw, i1 %i.bu, i1 false
  %op.rdx3260 = select i1 %op.rdx3259, i1 %i.bv, i1 false
  br i1 %op.rdx3260, label %bb.bf, label %bb.d

bb.k:                                             ; preds = %bb.e
  %i.bx = or i8 %.sroa.1084.0.copyload, %.sroa.1060.0.copyload
  %or.cond87 = icmp eq i8 %i.bx, 0
  %i.by = icmp eq i8 %.sroa.1129.0.copyload, 0
  %or.cond91 = select i1 %or.cond87, i1 %i.by, i1 false
  br i1 %or.cond91, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @630, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %i.ca, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.m:                                             ; preds = %bb.f
  %i.cb = extractelement <8 x i8> %.fr, i64 4
  switch i8 %i.cb, label %bb.d [
    i8 26, label %bb.n
    i8 29, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.cc = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.cd = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.ce = or <16 x i8> %i.cc, %i.cd
  %.fr3370 = freeze <16 x i8> %i.ce
  %i.cf = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond171 = icmp eq i8 %i.cf, 0
  %i.cg = icmp ne <16 x i8> %.fr3370, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = icmp eq i16 %i.ch, 0
  %op.rdx3150 = select i1 %i.ci, i1 %or.cond171, i1 false
  br i1 %op.rdx3150, label %bb.p, label %bb.d

bb.o:                                             ; preds = %bb.m
  %i.cj = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.ck = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.cl = or <16 x i8> %i.cj, %i.ck
  %.fr3369 = freeze <16 x i8> %i.cl
  %i.cm = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond239 = icmp eq i8 %i.cm, 0
  %i.cn = icmp ne <16 x i8> %.fr3369, zeroinitializer
  %i.co = bitcast <16 x i1> %i.cn to i16
  %i.cp = icmp eq i16 %i.co, 0
  %op.rdx3151 = select i1 %i.cp, i1 %or.cond239, i1 false
  br i1 %op.rdx3151, label %bb.q, label %bb.d

bb.p:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @631, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %i.cr, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.q:                                             ; preds = %bb.aj, %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @638, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 21, ptr %i.ct, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.r:                                             ; preds = %bb.g
  %i.cu = extractelement <8 x i8> %.fr, i64 1
  %i.cv = icmp eq i8 %i.cu, -122
  %i.cw = extractelement <8 x i8> %.fr, i64 2
  %i.cx = icmp eq i8 %i.cw, 72
  %or.cond243 = and i1 %i.cv, %i.cx
  %i.cy = extractelement <8 x i8> %.fr, i64 3
  %i.cz = icmp eq i8 %i.cy, 1
  %or.cond247 = and i1 %or.cond243, %i.cz
  %i.da = extractelement <8 x i8> %.fr, i64 4
  %i.db = icmp eq i8 %i.da, 101
  %or.cond251 = and i1 %or.cond247, %i.db
  %i.dc = extractelement <8 x i8> %.fr, i64 5
  %i.dd = icmp eq i8 %i.dc, 3
  %or.cond255 = and i1 %or.cond251, %i.dd
  %i.de = extractelement <8 x i8> %.fr, i64 6
  %i.df = icmp eq i8 %i.de, 4
  %or.cond259 = and i1 %or.cond255, %i.df
  br i1 %or.cond259, label %bb.t, label %bb.d

bb.s:                                             ; preds = %bb.g
  %i.dg = extractelement <8 x i8> %.fr, i64 1
  %i.dh = icmp eq i8 %i.dg, -122
  %i.di = extractelement <8 x i8> %.fr, i64 2
  %i.dj = icmp eq i8 %i.di, 72
  %or.cond563 = and i1 %i.dh, %i.dj
  %i.dk = extractelement <8 x i8> %.fr, i64 3
  %i.dl = icmp eq i8 %i.dk, -122
  %or.cond567 = and i1 %or.cond563, %i.dl
  %i.dm = extractelement <8 x i8> %.fr, i64 4
  %i.dn = icmp eq i8 %i.dm, -9
  %or.cond571 = and i1 %or.cond567, %i.dn
  %i.do = extractelement <8 x i8> %.fr, i64 5
  %i.dp = icmp eq i8 %i.do, 13
  %or.cond575 = and i1 %or.cond571, %i.dp
  br i1 %or.cond575, label %bb.ag, label %bb.d

bb.t:                                             ; preds = %bb.r
  %i.dq = extractelement <8 x i8> %.fr, i64 7
  switch i8 %i.dq, label %bb.d [
    i8 2, label %bb.u
    i8 3, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  switch i8 %.sroa.110.0.copyload, label %bb.d [
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.y
  ]

bb.v:                                             ; preds = %bb.t
  switch i8 %.sroa.110.0.copyload, label %bb.d [
    i8 1, label %bb.ac
    i8 2, label %bb.ad
  ]

bb.w:                                             ; preds = %bb.u
  %i.dr = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ds = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dt = or <8 x i8> %i.dr, %i.ds
  %.fr3362 = freeze <8 x i8> %i.dt
  %i.du = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond295 = icmp eq i8 %i.du, 0
  %i.dv = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond299 = icmp eq i8 %i.dv, 0
  %i.dw = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond303 = icmp eq i8 %i.dw, 0
  %i.dx = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond307 = icmp eq i8 %i.dx, 0
  %i.dy = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond311 = icmp eq i8 %i.dy, 0
  %i.dz = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond315 = icmp eq i8 %i.dz, 0
  %i.ea = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond319 = icmp eq i8 %i.ea, 0
  %.fr3362.scalar = bitcast <8 x i8> %.fr3362 to i64
  %i.eb = icmp eq i64 %.fr3362.scalar, 0
  %op.rdx3152 = select i1 %i.eb, i1 %or.cond295, i1 false
  %8 = select i1 %op.rdx3152, i1 %or.cond299, i1 false
  %op.rdx3156 = select i1 %8, i1 %or.cond303, i1 false
  %9 = select i1 %op.rdx3156, i1 %or.cond307, i1 false
  %10 = select i1 %9, i1 %or.cond311, i1 false
  %11 = select i1 %10, i1 %or.cond315, i1 false
  %op.rdx3158 = select i1 %11, i1 %or.cond319, i1 false
  br i1 %op.rdx3158, label %bb.z, label %bb.d

bb.x:                                             ; preds = %bb.u
  %i.ec = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ed = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ee = or <8 x i8> %i.ec, %i.ed
  %.fr3355 = freeze <8 x i8> %i.ee
  %i.ef = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond355 = icmp eq i8 %i.ef, 0
  %i.eg = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond359 = icmp eq i8 %i.eg, 0
  %i.eh = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond363 = icmp eq i8 %i.eh, 0
  %i.ei = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond367 = icmp eq i8 %i.ei, 0
  %i.ej = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond371 = icmp eq i8 %i.ej, 0
  %i.ek = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond375 = icmp eq i8 %i.ek, 0
  %i.el = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond379 = icmp eq i8 %i.el, 0
  %.fr3355.scalar = bitcast <8 x i8> %.fr3355 to i64
  %i.em = icmp eq i64 %.fr3355.scalar, 0
  %op.rdx3159 = select i1 %i.em, i1 %or.cond355, i1 false
  %12 = select i1 %op.rdx3159, i1 %or.cond359, i1 false
  %op.rdx3163 = select i1 %12, i1 %or.cond363, i1 false
  %13 = select i1 %op.rdx3163, i1 %or.cond367, i1 false
  %14 = select i1 %13, i1 %or.cond371, i1 false
  %15 = select i1 %14, i1 %or.cond375, i1 false
  %op.rdx3165 = select i1 %15, i1 %or.cond379, i1 false
  br i1 %op.rdx3165, label %bb.aa, label %bb.d

bb.y:                                             ; preds = %bb.u
  %i.en = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.eo = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ep = or <8 x i8> %i.en, %i.eo
  %.fr3348 = freeze <8 x i8> %i.ep
  %i.eq = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond415 = icmp eq i8 %i.eq, 0
  %i.er = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond419 = icmp eq i8 %i.er, 0
  %i.es = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond423 = icmp eq i8 %i.es, 0
  %i.et = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond427 = icmp eq i8 %i.et, 0
  %i.eu = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond431 = icmp eq i8 %i.eu, 0
  %i.ev = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond435 = icmp eq i8 %i.ev, 0
  %i.ew = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond439 = icmp eq i8 %i.ew, 0
  %.fr3348.scalar = bitcast <8 x i8> %.fr3348 to i64
  %i.ex = icmp eq i64 %.fr3348.scalar, 0
  %op.rdx3166 = select i1 %i.ex, i1 %or.cond415, i1 false
  %16 = select i1 %op.rdx3166, i1 %or.cond419, i1 false
  %op.rdx3170 = select i1 %16, i1 %or.cond423, i1 false
  %17 = select i1 %op.rdx3170, i1 %or.cond427, i1 false
  %18 = select i1 %17, i1 %or.cond431, i1 false
  %19 = select i1 %18, i1 %or.cond435, i1 false
  %op.rdx3172 = select i1 %19, i1 %or.cond439, i1 false
  br i1 %op.rdx3172, label %bb.ab, label %bb.d

bb.z:                                             ; preds = %bb.w
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @632, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %i.ez, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.aa:                                            ; preds = %bb.x
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @633, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %i.fb, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ab:                                            ; preds = %bb.y
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @634, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %i.fd, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ac:                                            ; preds = %bb.v
  %i.fe = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ff = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.fg = or <8 x i8> %i.fe, %i.ff
  %.fr3341 = freeze <8 x i8> %i.fg
  %i.fh = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond475 = icmp eq i8 %i.fh, 0
  %i.fi = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond479 = icmp eq i8 %i.fi, 0
  %i.fj = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond483 = icmp eq i8 %i.fj, 0
  %i.fk = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond487 = icmp eq i8 %i.fk, 0
  %i.fl = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond491 = icmp eq i8 %i.fl, 0
  %i.fm = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond495 = icmp eq i8 %i.fm, 0
  %i.fn = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond499 = icmp eq i8 %i.fn, 0
  %.fr3341.scalar = bitcast <8 x i8> %.fr3341 to i64
  %i.fo = icmp eq i64 %.fr3341.scalar, 0
  %op.rdx3173 = select i1 %i.fo, i1 %or.cond475, i1 false
  %20 = select i1 %op.rdx3173, i1 %or.cond479, i1 false
  %op.rdx3177 = select i1 %20, i1 %or.cond483, i1 false
  %21 = select i1 %op.rdx3177, i1 %or.cond487, i1 false
  %22 = select i1 %21, i1 %or.cond491, i1 false
  %23 = select i1 %22, i1 %or.cond495, i1 false
  %op.rdx3179 = select i1 %23, i1 %or.cond499, i1 false
  br i1 %op.rdx3179, label %bb.ae, label %bb.d

bb.ad:                                            ; preds = %bb.v
  %i.fp = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.fq = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.fr = or <8 x i8> %i.fp, %i.fq
  %.fr3334 = freeze <8 x i8> %i.fr
  %i.fs = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond535 = icmp eq i8 %i.fs, 0
  %i.ft = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond539 = icmp eq i8 %i.ft, 0
  %i.fu = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond543 = icmp eq i8 %i.fu, 0
  %i.fv = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond547 = icmp eq i8 %i.fv, 0
  %i.fw = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond551 = icmp eq i8 %i.fw, 0
  %i.fx = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond555 = icmp eq i8 %i.fx, 0
  %i.fy = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond559 = icmp eq i8 %i.fy, 0
  %.fr3334.scalar = bitcast <8 x i8> %.fr3334 to i64
  %i.fz = icmp eq i64 %.fr3334.scalar, 0
  %op.rdx3180 = select i1 %i.fz, i1 %or.cond535, i1 false
  %24 = select i1 %op.rdx3180, i1 %or.cond539, i1 false
  %op.rdx3184 = select i1 %24, i1 %or.cond543, i1 false
  %25 = select i1 %op.rdx3184, i1 %or.cond547, i1 false
  %26 = select i1 %25, i1 %or.cond551, i1 false
  %27 = select i1 %26, i1 %or.cond555, i1 false
  %op.rdx3186 = select i1 %27, i1 %or.cond559, i1 false
  br i1 %op.rdx3186, label %bb.af, label %bb.d

bb.ae:                                            ; preds = %bb.ac
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @635, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 15, ptr %i.gb, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.af:                                            ; preds = %bb.ad
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @636, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 15, ptr %i.gd, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ag:                                            ; preds = %bb.s
  %i.ge = icmp eq <8 x i8> %.fr, <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 1, i8 1> ; 2 uses
  %shift = shufflevector <8 x i1> %i.ge, <8 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 poison>
  %i.gf = and <8 x i1> %i.ge, %shift
  %or.cond579 = extractelement <8 x i1> %i.gf, i64 6
  br i1 %or.cond579, label %bb.ah, label %bb.d

bb.ah:                                            ; preds = %bb.ag
  switch i8 %.sroa.110.0.copyload, label %bb.d [
    i8 4, label %bb.ai
    i8 5, label %bb.aj
    i8 11, label %bb.ak
    i8 12, label %bb.al
    i8 13, label %bb.am
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.gg = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.gh = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.gi = or <8 x i8> %i.gg, %i.gh
  %.fr3327 = freeze <8 x i8> %i.gi
  %i.gj = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond615 = icmp eq i8 %i.gj, 0
  %i.gk = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond619 = icmp eq i8 %i.gk, 0
  %i.gl = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond623 = icmp eq i8 %i.gl, 0
  %i.gm = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond627 = icmp eq i8 %i.gm, 0
  %i.gn = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond631 = icmp eq i8 %i.gn, 0
  %i.go = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond635 = icmp eq i8 %i.go, 0
  %i.gp = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond639 = icmp eq i8 %i.gp, 0
  %.fr3327.scalar = bitcast <8 x i8> %.fr3327 to i64
  %i.gq = icmp eq i64 %.fr3327.scalar, 0
  %op.rdx3187 = select i1 %i.gq, i1 %or.cond615, i1 false
  %28 = select i1 %op.rdx3187, i1 %or.cond619, i1 false
  %op.rdx3191 = select i1 %28, i1 %or.cond623, i1 false
  %29 = select i1 %op.rdx3191, i1 %or.cond627, i1 false
  %30 = select i1 %29, i1 %or.cond631, i1 false
  %31 = select i1 %30, i1 %or.cond635, i1 false
  %op.rdx3193 = select i1 %31, i1 %or.cond639, i1 false
  br i1 %op.rdx3193, label %bb.an, label %bb.d

bb.aj:                                            ; preds = %bb.ah
  %i.gr = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.gs = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.gt = or <8 x i8> %i.gr, %i.gs
  %.fr3320 = freeze <8 x i8> %i.gt
  %i.gu = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond675 = icmp eq i8 %i.gu, 0
  %i.gv = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond679 = icmp eq i8 %i.gv, 0
  %i.gw = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond683 = icmp eq i8 %i.gw, 0
  %i.gx = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond687 = icmp eq i8 %i.gx, 0
  %i.gy = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond691 = icmp eq i8 %i.gy, 0
  %i.gz = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond695 = icmp eq i8 %i.gz, 0
  %i.ha = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond699 = icmp eq i8 %i.ha, 0
  %.fr3320.scalar = bitcast <8 x i8> %.fr3320 to i64
  %i.hb = icmp eq i64 %.fr3320.scalar, 0
  %op.rdx3194 = select i1 %i.hb, i1 %or.cond675, i1 false
  %32 = select i1 %op.rdx3194, i1 %or.cond679, i1 false
  %op.rdx3198 = select i1 %32, i1 %or.cond683, i1 false
  %33 = select i1 %op.rdx3198, i1 %or.cond687, i1 false
  %34 = select i1 %33, i1 %or.cond691, i1 false
  %35 = select i1 %34, i1 %or.cond695, i1 false
  %op.rdx3200 = select i1 %35, i1 %or.cond699, i1 false
  br i1 %op.rdx3200, label %bb.q, label %bb.d

bb.ak:                                            ; preds = %bb.ah
  %i.hc = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.hd = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.he = or <8 x i8> %i.hc, %i.hd
  %.fr3313 = freeze <8 x i8> %i.he
  %i.hf = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond735 = icmp eq i8 %i.hf, 0
  %i.hg = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond739 = icmp eq i8 %i.hg, 0
  %i.hh = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond743 = icmp eq i8 %i.hh, 0
  %i.hi = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond747 = icmp eq i8 %i.hi, 0
  %i.hj = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond751 = icmp eq i8 %i.hj, 0
  %i.hk = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond755 = icmp eq i8 %i.hk, 0
  %i.hl = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond759 = icmp eq i8 %i.hl, 0
  %.fr3313.scalar = bitcast <8 x i8> %.fr3313 to i64
  %i.hm = icmp eq i64 %.fr3313.scalar, 0
  %op.rdx3201 = select i1 %i.hm, i1 %or.cond735, i1 false
  %36 = select i1 %op.rdx3201, i1 %or.cond739, i1 false
  %op.rdx3205 = select i1 %36, i1 %or.cond743, i1 false
  %37 = select i1 %op.rdx3205, i1 %or.cond747, i1 false
  %38 = select i1 %37, i1 %or.cond751, i1 false
  %39 = select i1 %38, i1 %or.cond755, i1 false
  %op.rdx3207 = select i1 %39, i1 %or.cond759, i1 false
  br i1 %op.rdx3207, label %bb.ao, label %bb.d

bb.al:                                            ; preds = %bb.ah
  %i.hn = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ho = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.hp = or <8 x i8> %i.hn, %i.ho
  %.fr3306 = freeze <8 x i8> %i.hp
  %i.hq = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond795 = icmp eq i8 %i.hq, 0
  %i.hr = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond799 = icmp eq i8 %i.hr, 0
  %i.hs = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond803 = icmp eq i8 %i.hs, 0
  %i.ht = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond807 = icmp eq i8 %i.ht, 0
  %i.hu = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond811 = icmp eq i8 %i.hu, 0
  %i.hv = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond815 = icmp eq i8 %i.hv, 0
  %i.hw = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond819 = icmp eq i8 %i.hw, 0
  %.fr3306.scalar = bitcast <8 x i8> %.fr3306 to i64
  %i.hx = icmp eq i64 %.fr3306.scalar, 0
  %op.rdx3208 = select i1 %i.hx, i1 %or.cond795, i1 false
  %40 = select i1 %op.rdx3208, i1 %or.cond799, i1 false
  %op.rdx3212 = select i1 %40, i1 %or.cond803, i1 false
  %41 = select i1 %op.rdx3212, i1 %or.cond807, i1 false
  %42 = select i1 %41, i1 %or.cond811, i1 false
  %43 = select i1 %42, i1 %or.cond815, i1 false
  %op.rdx3214 = select i1 %43, i1 %or.cond819, i1 false
  br i1 %op.rdx3214, label %bb.ap, label %bb.d

bb.am:                                            ; preds = %bb.ah
  %i.hy = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.hz = shufflevector <16 x i8> %i.n, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ia = or <8 x i8> %i.hy, %i.hz
  %.fr3299 = freeze <8 x i8> %i.ia
  %i.ib = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond855 = icmp eq i8 %i.ib, 0
  %i.ic = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond859 = icmp eq i8 %i.ic, 0
  %i.id = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond863 = icmp eq i8 %i.id, 0
  %i.ie = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond867 = icmp eq i8 %i.ie, 0
  %i.if = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond871 = icmp eq i8 %i.if, 0
  %i.ig = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond875 = icmp eq i8 %i.ig, 0
  %i.ih = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond879 = icmp eq i8 %i.ih, 0
  %.fr3299.scalar = bitcast <8 x i8> %.fr3299 to i64
  %i.ii = icmp eq i64 %.fr3299.scalar, 0
  %op.rdx3215 = select i1 %i.ii, i1 %or.cond855, i1 false
  %44 = select i1 %op.rdx3215, i1 %or.cond859, i1 false
  %op.rdx3219 = select i1 %44, i1 %or.cond863, i1 false
  %45 = select i1 %op.rdx3219, i1 %or.cond867, i1 false
  %46 = select i1 %45, i1 %or.cond871, i1 false
  %47 = select i1 %46, i1 %or.cond875, i1 false
  %op.rdx3221 = select i1 %47, i1 %or.cond879, i1 false
  br i1 %op.rdx3221, label %bb.aq, label %bb.d

bb.an:                                            ; preds = %bb.ai
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @637, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %i.ik, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ao:                                            ; preds = %bb.ak
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @639, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %i.im, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ap:                                            ; preds = %bb.al
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @640, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %i.io, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.aq:                                            ; preds = %bb.am
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @641, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %i.iq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ar:                                            ; preds = %bb.h
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @642, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 11, ptr %i.is, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.as:                                            ; preds = %bb.i
  %i.it = extractelement <8 x i8> %.fr, i64 2
  switch i8 %i.it, label %bb.d [
    i8 6, label %bb.at
    i8 3, label %bb.au
    i8 10, label %bb.av
    i8 11, label %bb.aw
    i8 8, label %bb.ax
    i8 9, label %bb.ay
  ]

bb.at:                                            ; preds = %bb.as
  %i.iu = shufflevector <32 x i8> %i.q, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.iv = shufflevector <32 x i8> %i.q, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.iw = or <16 x i8> %i.iu, %i.iv
  %.fr3290 = freeze <16 x i8> %i.iw
  %i.ix = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1039 = icmp eq i8 %i.ix, 0
  %i.iy = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1043 = icmp eq i8 %i.iy, 0
  %i.iz = icmp ne <16 x i8> %.fr3290, zeroinitializer
  %i.ja = bitcast <16 x i1> %i.iz to i16
  %i.jb = icmp eq i16 %i.ja, 0
  %op.rdx3229 = select i1 %i.jb, i1 %or.cond1039, i1 false
  %op.rdx3230 = select i1 %op.rdx3229, i1 %or.cond1043, i1 false
  br i1 %op.rdx3230, label %bb.az, label %bb.d

bb.au:                                            ; preds = %bb.as
  %i.jc = shufflevector <32 x i8> %i.q, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.jd = shufflevector <32 x i8> %i.q, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.je = or <16 x i8> %i.jc, %i.jd
  %.fr3288 = freeze <16 x i8> %i.je
  %i.jf = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1111 = icmp eq i8 %i.jf, 0
  %i.jg = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1115 = icmp eq i8 %i.jg, 0
  %i.jh = icmp ne <16 x i8> %.fr3288, zeroinitializer
  %i.ji = bitcast <16 x i1> %i.jh to i16
  %i.jj = icmp eq i16 %i.ji, 0
  %op.rdx3231 = select i1 %i.jj, i1 %or.cond1111, i1 false
  %op.rdx3232 = select i1 %op.rdx3231, i1 %or.cond1115, i1 false
  br i1 %op.rdx3232, label %bb.ba, label %bb.d

bb.av:                                            ; preds = %bb.as
  %i.jk = shufflevector <32 x i8> %i.q, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.jl = shufflevector <32 x i8> %i.q, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.jm = or <16 x i8> %i.jk, %i.jl
  %.fr3286 = freeze <16 x i8> %i.jm
  %i.jn = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1183 = icmp eq i8 %i.jn, 0
  %i.jo = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1187 = icmp eq i8 %i.jo, 0
  %i.jp = icmp ne <16 x i8> %.fr3286, zeroinitializer
  %i.jq = bitcast <16 x i1> %i.jp to i16
  %i.jr = icmp eq i16 %i.jq, 0
  %op.rdx3233 = select i1 %i.jr, i1 %or.cond1183, i1 false
  %op.rdx3234 = select i1 %op.rdx3233, i1 %or.cond1187, i1 false
  br i1 %op.rdx3234, label %bb.bb, label %bb.d

bb.aw:                                            ; preds = %bb.as
  %i.js = shufflevector <32 x i8> %i.q, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.jt = shufflevector <32 x i8> %i.q, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.ju = or <16 x i8> %i.js, %i.jt
  %.fr3284 = freeze <16 x i8> %i.ju
  %i.jv = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1255 = icmp eq i8 %i.jv, 0
  %i.jw = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1259 = icmp eq i8 %i.jw, 0
  %i.jx = icmp ne <16 x i8> %.fr3284, zeroinitializer
  %i.jy = bitcast <16 x i1> %i.jx to i16
  %i.jz = icmp eq i16 %i.jy, 0
  %op.rdx3235 = select i1 %i.jz, i1 %or.cond1255, i1 false
  %op.rdx3236 = select i1 %op.rdx3235, i1 %or.cond1259, i1 false
  br i1 %op.rdx3236, label %bb.bc, label %bb.d

bb.ax:                                            ; preds = %bb.as
  %i.ka = shufflevector <32 x i8> %i.q, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.kb = shufflevector <32 x i8> %i.q, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.kc = or <16 x i8> %i.ka, %i.kb
  %.fr3282 = freeze <16 x i8> %i.kc
  %i.kd = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1327 = icmp eq i8 %i.kd, 0
  %i.ke = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1331 = icmp eq i8 %i.ke, 0
  %i.kf = icmp ne <16 x i8> %.fr3282, zeroinitializer
  %i.kg = bitcast <16 x i1> %i.kf to i16
  %i.kh = icmp eq i16 %i.kg, 0
  %op.rdx3237 = select i1 %i.kh, i1 %or.cond1327, i1 false
  %op.rdx3238 = select i1 %op.rdx3237, i1 %or.cond1331, i1 false
  br i1 %op.rdx3238, label %bb.bd, label %bb.d

bb.ay:                                            ; preds = %bb.as
  %i.ki = shufflevector <32 x i8> %i.q, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.kj = shufflevector <32 x i8> %i.q, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.kk = or <16 x i8> %i.ki, %i.kj
  %.fr3280 = freeze <16 x i8> %i.kk
  %i.kl = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1399 = icmp eq i8 %i.kl, 0
  %i.km = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1403 = icmp eq i8 %i.km, 0
  %i.kn = icmp ne <16 x i8> %.fr3280, zeroinitializer
  %i.ko = bitcast <16 x i1> %i.kn to i16
  %i.kp = icmp eq i16 %i.ko, 0
  %op.rdx3239 = select i1 %i.kp, i1 %or.cond1399, i1 false
  %op.rdx3240 = select i1 %op.rdx3239, i1 %or.cond1403, i1 false
  br i1 %op.rdx3240, label %bb.be, label %bb.d

bb.az:                                            ; preds = %bb.at
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @643, ptr %i.kq, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.kr, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ba:                                            ; preds = %bb.au
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @644, ptr %i.ks, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.kt, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.bb:                                            ; preds = %bb.av
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @645, ptr %i.ku, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.kv, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.bc:                                            ; preds = %bb.aw
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @646, ptr %i.kw, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.kx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.bd:                                            ; preds = %bb.ax
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @647, ptr %i.ky, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.kz, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.be:                                            ; preds = %bb.ay
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @648, ptr %i.la, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %i.lb, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.bf:                                            ; preds = %bb.j
  switch i8 %.sroa.165.0.copyload, label %bb.d [
    i8 3, label %bb.bg
    i8 1, label %bb.bh
    i8 2, label %bb.bi
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.lc = shufflevector <16 x i8> %i.r, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ld = shufflevector <16 x i8> %i.r, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.le = or <8 x i8> %i.lc, %i.ld
  %.fr3274 = freeze <8 x i8> %i.le
  %i.lf = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond1475 = icmp eq i8 %i.lf, 0
  %i.lg = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond1479 = icmp eq i8 %i.lg, 0
  %i.lh = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond1483 = icmp eq i8 %i.lh, 0
  %i.li = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond1487 = icmp eq i8 %i.li, 0
  %i.lj = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1491 = icmp eq i8 %i.lj, 0
  %i.lk = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1495 = icmp eq i8 %i.lk, 0
  %.fr3274.scalar = bitcast <8 x i8> %.fr3274 to i64
  %i.ll = icmp eq i64 %.fr3274.scalar, 0
  %op.rdx3241 = select i1 %i.ll, i1 %or.cond1475, i1 false
  %48 = select i1 %op.rdx3241, i1 %or.cond1479, i1 false
  %op.rdx3244 = select i1 %48, i1 %or.cond1483, i1 false
  %49 = select i1 %op.rdx3244, i1 %or.cond1487, i1 false
  %50 = select i1 %49, i1 %or.cond1491, i1 false
  %op.rdx3246 = select i1 %50, i1 %or.cond1495, i1 false
  br i1 %op.rdx3246, label %bb.bj, label %bb.d

bb.bh:                                            ; preds = %bb.bf
  %i.lm = shufflevector <16 x i8> %i.r, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ln = shufflevector <16 x i8> %i.r, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.lo = or <8 x i8> %i.lm, %i.ln
  %.fr3268 = freeze <8 x i8> %i.lo
  %i.lp = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond1531 = icmp eq i8 %i.lp, 0
  %i.lq = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond1535 = icmp eq i8 %i.lq, 0
  %i.lr = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond1539 = icmp eq i8 %i.lr, 0
  %i.ls = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond1543 = icmp eq i8 %i.ls, 0
  %i.lt = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1547 = icmp eq i8 %i.lt, 0
  %i.lu = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1551 = icmp eq i8 %i.lu, 0
  %.fr3268.scalar = bitcast <8 x i8> %.fr3268 to i64
  %i.lv = icmp eq i64 %.fr3268.scalar, 0
  %op.rdx3247 = select i1 %i.lv, i1 %or.cond1531, i1 false
  %51 = select i1 %op.rdx3247, i1 %or.cond1535, i1 false
  %op.rdx3250 = select i1 %51, i1 %or.cond1539, i1 false
  %52 = select i1 %op.rdx3250, i1 %or.cond1543, i1 false
  %53 = select i1 %52, i1 %or.cond1547, i1 false
  %op.rdx3252 = select i1 %53, i1 %or.cond1551, i1 false
  br i1 %op.rdx3252, label %bb.bk, label %bb.d

bb.bi:                                            ; preds = %bb.bf
  %i.lw = shufflevector <16 x i8> %i.r, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.lx = shufflevector <16 x i8> %i.r, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ly = or <8 x i8> %i.lw, %i.lx
  %.fr3262 = freeze <8 x i8> %i.ly
  %i.lz = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond1587 = icmp eq i8 %i.lz, 0
  %i.ma = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond1591 = icmp eq i8 %i.ma, 0
  %i.mb = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond1595 = icmp eq i8 %i.mb, 0
  %i.mc = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond1599 = icmp eq i8 %i.mc, 0
  %i.md = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1603 = icmp eq i8 %i.md, 0
  %i.me = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1607 = icmp eq i8 %i.me, 0
  %.fr3262.scalar = bitcast <8 x i8> %.fr3262 to i64
  %i.mf = icmp eq i64 %.fr3262.scalar, 0
  %op.rdx3253 = select i1 %i.mf, i1 %or.cond1587, i1 false
  %54 = select i1 %op.rdx3253, i1 %or.cond1591, i1 false
  %op.rdx3256 = select i1 %54, i1 %or.cond1595, i1 false
  %55 = select i1 %op.rdx3256, i1 %or.cond1599, i1 false
  %56 = select i1 %55, i1 %or.cond1603, i1 false
  %op.rdx3258 = select i1 %56, i1 %or.cond1607, i1 false
  br i1 %op.rdx3258, label %bb.bl, label %bb.d

bb.bj:                                            ; preds = %bb.bg
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @649, ptr %i.mg, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 13, ptr %i.mh, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.bk:                                            ; preds = %bb.bh
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @650, ptr %i.mi, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 13, ptr %i.mj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.bl:                                            ; preds = %bb.bi
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @651, ptr %i.mk, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %i.ml, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.bm:                                            ; preds = %bb.d
  %i.mm = extractvalue { ptr, i64 } %i.ab, 1
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.mm, ptr %i.mo, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bt

bb.bn:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10922
  store i64 0, ptr %i.c, align 8, !noalias !10922
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10922
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !10922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10922
  %i.mp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.mp, align 8, !noalias !10922
  store ptr %i.c, ptr %i.b, align 8, !noalias !10922
  %i.mq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @38, ptr %i.mq, align 8, !noalias !10922
  %i.mr = invoke noundef zeroext i1 @_RNvXs5_Cs9UgDHlk63pp_9const_oidNtB5_16ObjectIdentifierNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bp unwind label %bb.bo, !noalias !10923

bb.bo:                                            ; preds = %bb.bq, %bb.bn
  %i.ms = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28
          to label %bb.bs unwind label %bb.br, !noalias !10923

bb.bp:                                            ; preds = %bb.bn
  br i1 %i.mr, label %bb.bq, label %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtCs9UgDHlk63pp_9const_oid16ObjectIdentifierNtB5_12SpecToString14spec_to_stringCs7gfv9tzbXmh_6yara_x.exit, !prof !6

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2708, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @447, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2710) #26
          to label %.noexc.i unwind label %bb.bo, !noalias !10923

.noexc.i:                                         ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bo
  %i.mt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !10923
  unreachable

bb.bs:                                            ; preds = %bb.bo
  resume { ptr, i32 } %i.ms

_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtCs9UgDHlk63pp_9const_oid16ObjectIdentifierNtB5_12SpecToString14spec_to_stringCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10922
  br label %bb.bt

bb.bt:                                            ; preds = %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtCs9UgDHlk63pp_9const_oid16ObjectIdentifierNtB5_12SpecToString14spec_to_stringCs7gfv9tzbXmh_6yara_x.exit, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.l, %bb.p, %bb.q, %bb.z, %bb.aa, %bb.ab, %bb.ae, %bb.af, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bj, %bb.bk, %bb.bl, %bb.bt, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6leb1287uleb128(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !10928
  store i64 %2, ptr %i.c, align 8, !noalias !10928
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.a
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.t, ptr %i.b, align 8, !noalias !10928
  store i64 %i.s, ptr %i.c, align 8, !noalias !10928
  %i.e = icmp eq i64 %i.s, 0
  br i1 %i.e, label %._crit_edge115, label %bb.c

bb.c:                                             ; preds = %.lr.ph114, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.sroa.0.0112 = phi i64 [ 0, %.lr.ph114 ], [ %i.x, %bb.b ]
  %.sroa.480.0110 = phi i64 [ %2, %.lr.ph114 ], [ %i.s, %bb.b ]
  %.sroa.078.0109 = phi ptr [ %1, %.lr.ph114 ], [ %i.t, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.078.0109, i64 %.sroa.480.0110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.078.0109, ptr %i.a, align 8
  store ptr %i.f, ptr %.sroa.24.0..sroa_idx.i, align 8
  store i64 0, ptr %.sroa.35.0..sroa_idx.i, align 8
  %i.g = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 3 uses
  %i.h = extractvalue { i1, i8 } %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %.pr.i139 = load i64, ptr %.sroa.35.0..sroa_idx.i, align 8 ; 2 uses
  %i.i = icmp eq i64 %.pr.i139, 0
  br i1 %i.i, label %.lr.ph.i._crit_edge.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.pr.i140 = phi i64 [ %.pr.i, %.lr.ph ], [ %.pr.i139, %.lr.ph.preheader ]
  %i.j = phi { i1, i8 } [ %i.l, %.lr.ph ], [ %i.g, %.lr.ph.preheader ]
  %i.k = add i64 %.pr.i140, -1
  store i64 %i.k, ptr %.sroa.35.0..sroa_idx.i, align 8
  %i.l = call { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 3 uses
  %i.m = extractvalue { i1, i8 } %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.lr.ph.i._crit_edge.loopexit

.lr.ph:                                           ; preds = %.lr.ph.i
  %.pr.i = load i64, ptr %.sroa.35.0..sroa_idx.i, align 8 ; 2 uses
  %i.n = icmp eq i64 %.pr.i, 0
  br i1 %i.n, label %.lr.ph.i._crit_edge.loopexit, label %.lr.ph.i

._crit_edge115:                                   ; preds = %bb.b, %bb.a
  %.sroa.078.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.t, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.078.0.lcssa, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 24, ptr %.sroa.661.0..sroa_idx, align 8
  br label %bb.g

.lr.ph.i._crit_edge.loopexit:                     ; preds = %.lr.ph, %.lr.ph.i, %.lr.ph.preheader
  %.lcssa = phi { i1, i8 } [ %i.g, %.lr.ph.preheader ], [ %i.l, %.lr.ph ], [ %i.j, %.lr.ph.i ]
  %i.o = extractvalue { i1, i8 } %.lcssa, 1
  br label %.lr.ph.i._crit_edge

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i._crit_edge.loopexit, %bb.c
  %.sroa.0.0.lcssa.i = phi i8 [ 0, %bb.c ], [ %i.o, %.lr.ph.i._crit_edge.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = call { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 1), !noalias !10929 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = icmp samesign ult i64 %indvars.iv, 64
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i._crit_edge
  %i.r = ptrtoint ptr %1 to i64
  store i64 1, ptr %0, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.575.0..sroa_idx, align 8
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 48, ptr %.sroa.676.0..sroa_idx, align 8
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i._crit_edge
  %i.s = extractvalue { ptr, i64 } %i.p, 1        ; 4 uses
  %i.t = extractvalue { ptr, i64 } %i.p, 0        ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = and i8 %.sroa.0.0.lcssa.i, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = shl i64 %i.v, %indvars.iv
  %i.x = or i64 %i.w, %.sroa.0.0112               ; 2 uses
  %i.y = icmp sgt i8 %.sroa.0.0.lcssa.i, -1
  br i1 %i.y, label %bb.f, label %bb.b

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.z, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %.sroa.442.0..sroa_idx, align 8
end_hunk_0
