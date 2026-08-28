Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarf_validate.dwarf_validate.fd51000a27e4c067-cgu.00?download=true
inline.NumInlined: 162
inline.NumDeleted: 46
begin_hunk_0_@_RNvMs7_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_24DebugInfoUnitHeadersIterINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE4nextCslKoDbeUmNq5_14dwarf_validate:bb.a
bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader8read_u64CslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #11
  %i.ba = load i8, ptr %i.e, align 8, !range !50, !noalias !15, !noundef !10 ; 2 uses
  %.not382.i = icmp eq i8 %i.ba, -1
  br i1 %.not382.i, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader8read_u64CslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #11
  %i.bb = load i8, ptr %i.d, align 8, !range !50, !noalias !15, !noundef !10 ; 2 uses
  %.not381.i = icmp eq i8 %i.bb, -1
  br i1 %.not381.i, label %bb.aa, label %bb.z

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader8read_u64CslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #11
  %i.bc = load i8, ptr %i.c, align 8, !range !50, !noalias !15, !noundef !10 ; 2 uses
  %.not379.i = icmp eq i8 %i.bc, -1
  br i1 %.not379.i, label %bb.ac, label %bb.ab

bb.x:                                             ; preds = %bb.u
  %.sroa.4329.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.21.sroa.21.1.copyload82 = load i8, ptr %.sroa.4329.0..sroa_idx.i, align 1, !noalias !12
  %.sroa.21.sroa.33.1..sroa.4329.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.21.sroa.33.1.copyload97 = load i16, ptr %.sroa.21.sroa.33.1..sroa.4329.0..sroa_idx.i.sroa_idx, align 2, !noalias !12
  %.sroa.21.sroa.36.1..sroa.4329.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.21.sroa.36.1.copyload113 = load i32, ptr %.sroa.21.sroa.36.1..sroa.4329.0..sroa_idx.i.sroa_idx, align 4, !noalias !12
  %.sroa.5330.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5330.0.copyload.i = load i64, ptr %.sroa.5330.0..sroa_idx.i, align 8, !noalias !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15
  %.sroa.55.sroa.0.0.extract.trunc28 = trunc i64 %.sroa.5330.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift54 = lshr i64 %.sroa.5330.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc55 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift54 to i56
  br label %bb.an

bb.y:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noalias !15, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15
  br label %bb.aq

bb.z:                                             ; preds = %bb.v
  %.sroa.4341.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.21.sroa.21.1.copyload81 = load i8, ptr %.sroa.4341.0..sroa_idx.i, align 1, !noalias !12
  %.sroa.21.sroa.33.1..sroa.4341.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.21.sroa.33.1.copyload96 = load i16, ptr %.sroa.21.sroa.33.1..sroa.4341.0..sroa_idx.i.sroa_idx, align 2, !noalias !12
  %.sroa.21.sroa.36.1..sroa.4341.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.21.sroa.36.1.copyload112 = load i32, ptr %.sroa.21.sroa.36.1..sroa.4341.0..sroa_idx.i.sroa_idx, align 4, !noalias !12
  %.sroa.5342.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5342.0.copyload.i = load i64, ptr %.sroa.5342.0..sroa_idx.i, align 8, !noalias !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15
  %.sroa.55.sroa.0.0.extract.trunc27 = trunc i64 %.sroa.5342.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift52 = lshr i64 %.sroa.5342.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc53 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift52 to i56
  br label %bb.an

bb.aa:                                            ; preds = %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !15, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15
  br label %bb.aq

bb.ab:                                            ; preds = %bb.w
  %.sroa.4353.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.21.sroa.21.1.copyload79 = load i8, ptr %.sroa.4353.0..sroa_idx.i, align 1, !noalias !12
  %.sroa.21.sroa.33.1..sroa.4353.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.sroa.21.sroa.33.1.copyload94 = load i16, ptr %.sroa.21.sroa.33.1..sroa.4353.0..sroa_idx.i.sroa_idx, align 2, !noalias !12
  %.sroa.21.sroa.36.1..sroa.4353.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.21.sroa.36.1.copyload110 = load i32, ptr %.sroa.21.sroa.36.1..sroa.4353.0..sroa_idx.i.sroa_idx, align 4, !noalias !12
  %.sroa.5354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5354.0.copyload.i = load i64, ptr %.sroa.5354.0..sroa_idx.i, align 8, !noalias !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15
  %.sroa.55.sroa.0.0.extract.trunc24 = trunc i64 %.sroa.5354.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift46 = lshr i64 %.sroa.5354.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc47 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift46 to i56
  br label %bb.an

bb.ac:                                            ; preds = %bb.w
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !15, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader9read_wordCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i8 noundef range(i8 4, 9) %.sroa.4230.0.copyload.i)
  %i.bj = load i8, ptr %i.b, align 8, !range !50, !noalias !15, !noundef !10 ; 2 uses
  %.not380.i = icmp eq i8 %i.bj, -1
  br i1 %.not380.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.4365.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.21.sroa.21.1.copyload80 = load i8, ptr %.sroa.4365.0..sroa_idx.i, align 1, !noalias !12
  %.sroa.21.sroa.33.1..sroa.4365.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.21.sroa.33.1.copyload95 = load i16, ptr %.sroa.21.sroa.33.1..sroa.4365.0..sroa_idx.i.sroa_idx, align 2, !noalias !12
  %.sroa.21.sroa.36.1..sroa.4365.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.21.sroa.36.1.copyload111 = load i32, ptr %.sroa.21.sroa.36.1..sroa.4365.0..sroa_idx.i.sroa_idx, align 4, !noalias !12
  %.sroa.5366.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5366.0.copyload.i = load i64, ptr %.sroa.5366.0..sroa_idx.i, align 8, !noalias !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15
  %.sroa.55.sroa.0.0.extract.trunc25 = trunc i64 %.sroa.5366.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift48 = lshr i64 %.sroa.5366.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc49 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift48 to i56
  br label %bb.an

bb.ae:                                            ; preds = %bb.ac
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !15, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15
  br label %bb.aq

bb.af:                                            ; preds = %bb.j
  %.sroa.4251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.21.sroa.21.1.copyload85 = load i8, ptr %.sroa.4251.0..sroa_idx.i, align 1, !noalias !12
  %.sroa.21.sroa.33.1..sroa.4251.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %.sroa.21.sroa.33.1.copyload100 = load i16, ptr %.sroa.21.sroa.33.1..sroa.4251.0..sroa_idx.i.sroa_idx, align 2, !noalias !12
  %.sroa.21.sroa.36.1..sroa.4251.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.21.sroa.36.1.copyload116 = load i32, ptr %.sroa.21.sroa.36.1..sroa.4251.0..sroa_idx.i.sroa_idx, align 4, !noalias !12
  %.sroa.5252.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5252.0.copyload.i = load i64, ptr %.sroa.5252.0..sroa_idx.i, align 8, !noalias !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15
  %.sroa.55.sroa.0.0.extract.trunc32 = trunc i64 %.sroa.5252.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift62 = lshr i64 %.sroa.5252.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc63 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift62 to i56
  br label %bb.an

bb.ag:                                            ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !15, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader17read_address_sizeCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  %i.bo = load i8, ptr %i.j, align 8, !range !50, !noalias !15, !noundef !10 ; 2 uses
  %.not386.i = icmp eq i8 %i.bo, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !15 ; 2 uses
  br i1 %.not386.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.5267.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %.sroa.21.sroa.33.2.copyload101 = load i16, ptr %.sroa.5267.0..sroa_idx.i, align 2, !noalias !12
  %.sroa.21.sroa.36.2..sroa.5267.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.21.sroa.36.2.copyload117 = load i32, ptr %.sroa.21.sroa.36.2..sroa.5267.0..sroa_idx.i.sroa_idx, align 4, !noalias !12
  %.sroa.55.10..sroa.5267.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.55.10.copyload16 = load i64, ptr %.sroa.55.10..sroa.5267.0..sroa_idx.i.sroa_idx, align 8, !noalias !12 ; 2 uses
  %.sroa.55.sroa.0.0.extract.trunc20 = trunc i64 %.sroa.55.10.copyload16 to i8
  %.sroa.55.sroa.20.0.extract.shift38 = lshr i64 %.sroa.55.10.copyload16, 8
  %.sroa.55.sroa.20.0.extract.trunc39 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift38 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15
  br label %bb.an

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15
  br label %bb.aq

bb.aj:                                            ; preds = %bb.s
  %.sroa.4305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.21.sroa.21.1.copyload83 = load i8, ptr %.sroa.4305.0..sroa_idx.i, align 1, !noalias !12
  %.sroa.21.sroa.33.1..sroa.4305.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.sroa.21.sroa.33.1.copyload98 = load i16, ptr %.sroa.21.sroa.33.1..sroa.4305.0..sroa_idx.i.sroa_idx, align 2, !noalias !12
  %.sroa.21.sroa.36.1..sroa.4305.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.21.sroa.36.1.copyload114 = load i32, ptr %.sroa.21.sroa.36.1..sroa.4305.0..sroa_idx.i.sroa_idx, align 4, !noalias !12
  %.sroa.5306.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5306.0.copyload.i = load i64, ptr %.sroa.5306.0..sroa_idx.i, align 8, !noalias !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15
  %.sroa.55.sroa.0.0.extract.trunc29 = trunc i64 %.sroa.5306.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift56 = lshr i64 %.sroa.5306.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc57 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift56 to i56
  br label %bb.an

bb.ak:                                            ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noalias !15, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianENtNtB7_6reader6Reader9read_wordCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i8 noundef range(i8 4, 9) %.sroa.4230.0.copyload.i)
  %i.bt = load i8, ptr %i.f, align 8, !range !50, !noalias !15, !noundef !10 ; 2 uses
  %.not384.i = icmp eq i8 %i.bt, -1
  br i1 %.not384.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.4317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.21.sroa.21.1.copyload84 = load i8, ptr %.sroa.4317.0..sroa_idx.i, align 1, !noalias !12
  %.sroa.21.sroa.33.1..sroa.4317.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.sroa.21.sroa.33.1.copyload99 = load i16, ptr %.sroa.21.sroa.33.1..sroa.4317.0..sroa_idx.i.sroa_idx, align 2, !noalias !12
  %.sroa.21.sroa.36.1..sroa.4317.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.21.sroa.36.1.copyload115 = load i32, ptr %.sroa.21.sroa.36.1..sroa.4317.0..sroa_idx.i.sroa_idx, align 4, !noalias !12
  %.sroa.5318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5318.0.copyload.i = load i64, ptr %.sroa.5318.0..sroa_idx.i, align 8, !noalias !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15
  %.sroa.55.sroa.0.0.extract.trunc30 = trunc i64 %.sroa.5318.0.copyload.i to i8
  %.sroa.55.sroa.20.0.extract.shift58 = lshr i64 %.sroa.5318.0.copyload.i, 8
  %.sroa.55.sroa.20.0.extract.trunc59 = trunc nuw i64 %.sroa.55.sroa.20.0.extract.shift58 to i56
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !15, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15
  br label %bb.aq

bb.an:                                            ; preds = %bb.r, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.q, %bb.o, %bb.m, %bb.l, %bb.g, %bb.e
  %.sroa.21.sroa.36.0 = phi i32 [ 0, %bb.e ], [ %.sroa.21.sroa.36.2.copyload117, %bb.ah ], [ %.sroa.21.sroa.36.1.copyload116, %bb.af ], [ undef, %bb.m ], [ 0, %bb.g ], [ %.sroa.21.sroa.36.1.copyload115, %bb.al ], [ %.sroa.21.sroa.36.1.copyload114, %bb.aj ], [ %.sroa.21.sroa.36.1.copyload113, %bb.x ], [ %.sroa.21.sroa.36.1.copyload112, %bb.z ], [ %.sroa.21.sroa.36.1.copyload111, %bb.ad ], [ %.sroa.21.sroa.36.1.copyload110, %bb.ab ], [ %.sroa.21.sroa.36.1.copyload, %bb.q ], [ %.sroa.21.sroa.36.2.copyload, %bb.o ], [ undef, %bb.l ], [ undef, %bb.r ]
  %.sroa.21.sroa.33.0 = phi i16 [ 0, %bb.e ], [ %.sroa.21.sroa.33.2.copyload101, %bb.ah ], [ %.sroa.21.sroa.33.1.copyload100, %bb.af ], [ undef, %bb.m ], [ 0, %bb.g ], [ %.sroa.21.sroa.33.1.copyload99, %bb.al ], [ %.sroa.21.sroa.33.1.copyload98, %bb.aj ], [ %.sroa.21.sroa.33.1.copyload97, %bb.x ], [ %.sroa.21.sroa.33.1.copyload96, %bb.z ], [ %.sroa.21.sroa.33.1.copyload95, %bb.ad ], [ %.sroa.21.sroa.33.1.copyload94, %bb.ab ], [ %.sroa.21.sroa.33.1.copyload, %bb.q ], [ %.sroa.21.sroa.33.2.copyload, %bb.o ], [ undef, %bb.l ], [ undef, %bb.r ]
  %.sroa.21.sroa.21.0 = phi i8 [ 0, %bb.e ], [ %i.bq, %bb.ah ], [ %.sroa.21.sroa.21.1.copyload85, %bb.af ], [ undef, %bb.m ], [ 0, %bb.g ], [ %.sroa.21.sroa.21.1.copyload84, %bb.al ], [ %.sroa.21.sroa.21.1.copyload83, %bb.aj ], [ %.sroa.21.sroa.21.1.copyload82, %bb.x ], [ %.sroa.21.sroa.21.1.copyload81, %bb.z ], [ %.sroa.21.sroa.21.1.copyload80, %bb.ad ], [ %.sroa.21.sroa.21.1.copyload79, %bb.ab ], [ %.sroa.21.sroa.21.1.copyload, %bb.q ], [ %i.av, %bb.o ], [ undef, %bb.l ], [ %i.as, %bb.r ]
  %.sroa.21.sroa.0.0 = phi i8 [ 17, %bb.e ], [ %i.bo, %bb.ah ], [ %i.al, %bb.af ], [ 17, %bb.m ], [ 17, %bb.g ], [ %i.bt, %bb.al ], [ %i.az, %bb.aj ], [ %i.ba, %bb.x ], [ %i.bb, %bb.z ], [ %i.bj, %bb.ad ], [ %i.bc, %bb.ab ], [ %i.aw, %bb.q ], [ %i.at, %bb.o ], [ 15, %bb.l ], [ 60, %bb.r ]
  %.sroa.55.sroa.20.sroa.0.0 = phi i56 [ %.sroa.55.sroa.20.0.extract.trunc65, %bb.e ], [ %.sroa.55.sroa.20.0.extract.trunc39, %bb.ah ], [ %.sroa.55.sroa.20.0.extract.trunc63, %bb.af ], [ %.sroa.55.sroa.20.0.extract.trunc61, %bb.m ], [ %.sroa.55.sroa.20.0.extract.trunc41, %bb.g ], [ %.sroa.55.sroa.20.0.extract.trunc59, %bb.al ], [ %.sroa.55.sroa.20.0.extract.trunc57, %bb.aj ], [ %.sroa.55.sroa.20.0.extract.trunc55, %bb.x ], [ %.sroa.55.sroa.20.0.extract.trunc53, %bb.z ], [ %.sroa.55.sroa.20.0.extract.trunc49, %bb.ad ], [ %.sroa.55.sroa.20.0.extract.trunc47, %bb.ab ], [ %.sroa.55.sroa.20.0.extract.trunc45, %bb.q ], [ %.sroa.55.sroa.20.0.extract.trunc, %bb.o ], [ %.sroa.55.sroa.20.0.extract.trunc43, %bb.l ], [ undef, %bb.r ]
  %.sroa.55.sroa.0.0 = phi i8 [ %.sroa.55.sroa.0.0.extract.trunc33, %bb.e ], [ %.sroa.55.sroa.0.0.extract.trunc20, %bb.ah ], [ %.sroa.55.sroa.0.0.extract.trunc32, %bb.af ], [ %.sroa.55.sroa.0.0.extract.trunc31, %bb.m ], [ %.sroa.55.sroa.0.0.extract.trunc21, %bb.g ], [ %.sroa.55.sroa.0.0.extract.trunc30, %bb.al ], [ %.sroa.55.sroa.0.0.extract.trunc29, %bb.aj ], [ %.sroa.55.sroa.0.0.extract.trunc28, %bb.x ], [ %.sroa.55.sroa.0.0.extract.trunc27, %bb.z ], [ %.sroa.55.sroa.0.0.extract.trunc25, %bb.ad ], [ %.sroa.55.sroa.0.0.extract.trunc24, %bb.ab ], [ %.sroa.55.sroa.0.0.extract.trunc23, %bb.q ], [ %.sroa.55.sroa.0.0.extract.trunc, %bb.o ], [ %.sroa.55.sroa.0.0.extract.trunc22, %bb.l ], [ undef, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15
  %i.bw = zext i32 %.sroa.21.sroa.36.0 to i64
  br label %bb.ap

bb.ao:                                            ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.ar

bb.ap:                                            ; preds = %bb.c, %bb.an
  %.sroa.21.sroa.36.1.ph = phi i64 [ %i.bw, %bb.an ], [ %.sroa.21.sroa.36.0.extract.shift104, %bb.c ]
  %.sroa.21.sroa.33.1.ph = phi i16 [ %.sroa.21.sroa.33.0, %bb.an ], [ %.sroa.21.sroa.33.0.extract.trunc89, %bb.c ]
  %.sroa.21.sroa.21.1.ph = phi i8 [ %.sroa.21.sroa.21.0, %bb.an ], [ %.sroa.21.sroa.21.0.extract.trunc74, %bb.c ]
  %.sroa.21.sroa.0.1.ph = phi i8 [ %.sroa.21.sroa.0.0, %bb.an ], [ %.sroa.21.sroa.0.0.extract.trunc67, %bb.c ]
  %.sroa.55.sroa.20.sroa.0.1.ph = phi i56 [ %.sroa.55.sroa.20.sroa.0.0, %bb.an ], [ %.sroa.55.sroa.20.sroa.0.0.copyload, %bb.c ]
  %.sroa.55.sroa.0.1.ph = phi i8 [ %.sroa.55.sroa.0.0, %bb.an ], [ %.sroa.4230.0.copyload.i, %bb.c ]
  %.sroa.21.sroa.36.0.insert.shift107 = shl nuw i64 %.sroa.21.sroa.36.1.ph, 32
  %.sroa.21.sroa.33.0.insert.ext90 = zext i16 %.sroa.21.sroa.33.1.ph to i64
  %.sroa.21.sroa.33.0.insert.shift91 = shl nuw nsw i64 %.sroa.21.sroa.33.0.insert.ext90, 16
  %.sroa.21.sroa.33.0.insert.insert93 = or disjoint i64 %.sroa.21.sroa.33.0.insert.shift91, %.sroa.21.sroa.36.0.insert.shift107
  %.sroa.21.sroa.21.0.insert.ext75 = zext i8 %.sroa.21.sroa.21.1.ph to i64
  %.sroa.21.sroa.21.0.insert.shift76 = shl nuw nsw i64 %.sroa.21.sroa.21.0.insert.ext75, 8
  %.sroa.21.sroa.21.0.insert.insert78 = or disjoint i64 %.sroa.21.sroa.33.0.insert.insert93, %.sroa.21.sroa.21.0.insert.shift76
  %.sroa.21.sroa.0.0.insert.ext68 = zext i8 %.sroa.21.sroa.0.1.ph to i64
  %.sroa.21.sroa.0.0.insert.insert70 = or disjoint i64 %.sroa.21.sroa.21.0.insert.insert78, %.sroa.21.sroa.0.0.insert.ext68
  %.sroa.55.sroa.20.0.insert.ext34 = zext i56 %.sroa.55.sroa.20.sroa.0.1.ph to i64
  %.sroa.55.sroa.20.0.insert.shift35 = shl nuw i64 %.sroa.55.sroa.20.0.insert.ext34, 8
  %.sroa.55.sroa.0.0.insert.ext17 = zext i8 %.sroa.55.sroa.0.1.ph to i64
  %.sroa.55.sroa.0.0.insert.insert19 = or disjoint i64 %.sroa.55.sroa.20.0.insert.shift35, %.sroa.55.sroa.0.0.insert.ext17
  store ptr inttoptr (i64 1 to ptr), ptr %i.n, align 8, !alias.scope !57
  store i64 0, ptr %i.o, align 8, !alias.scope !57
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.21.sroa.0.0.insert.insert70, ptr %i.bx, align 8
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.55.sroa.0.0.insert.insert19, ptr %.sroa.4144.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am, %bb.ai, %bb.ae, %bb.aa, %bb.y, %bb.t, %bb.r
  %.sroa.11111.0.i = phi i64 [ %i.bv, %bb.am ], [ %i.bl, %bb.ae ], [ undef, %bb.t ], [ undef, %bb.y ], [ undef, %bb.aa ], [ undef, %bb.ai ], [ undef, %bb.r ]
  %.sroa.7110.0.i = phi i64 [ %i.bs, %bb.am ], [ %i.bi, %bb.ae ], [ undef, %bb.t ], [ %i.be, %bb.y ], [ %i.bg, %bb.aa ], [ undef, %bb.ai ], [ undef, %bb.r ]
  %.sroa.0109.0.i = phi i64 [ 1, %bb.am ], [ 5, %bb.ae ], [ 2, %bb.t ], [ 3, %bb.y ], [ 4, %bb.aa ], [ 0, %bb.ai ], [ 0, %bb.r ]
  %.sroa.0107.2.i = phi i8 [ %i.av, %bb.am ], [ %i.av, %bb.ae ], [ %i.av, %bb.t ], [ %i.av, %bb.y ], [ %i.av, %bb.aa ], [ %i.bq, %bb.ai ], [ %i.av, %bb.r ]
  %.sroa.0103.2.i = phi i64 [ %i.ay, %bb.am ], [ %i.ay, %bb.ae ], [ %i.ay, %bb.t ], [ %i.ay, %bb.y ], [ %i.ay, %bb.aa ], [ %i.bn, %bb.ai ], [ %i.ay, %bb.r ]
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6134.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15
  %.val1 = load i64, ptr %i.o, align 8, !noundef !10
  %i.by = sub i64 %.val, %.val1
  %i.bz = load i64, ptr %1, align 8, !alias.scope !60, !noundef !10
  %i.ca = add i64 %i.by, %i.bz
  store i64 %i.ca, ptr %1, align 8, !alias.scope !60
  store i64 %.sroa.0109.0.i, ptr %0, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7110.0.i, ptr %.sroa.4132.0..sroa_idx, align 8
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11111.0.i, ptr %.sroa.5133.0..sroa_idx, align 8
  %.sroa.7135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0229.0.copyload.i, ptr %.sroa.7135.0..sroa_idx, align 8
  %.sroa.8136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0103.2.i, ptr %.sroa.8136.0..sroa_idx, align 8
  %.sroa.9137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.q, ptr %.sroa.9137.0..sroa_idx, align 8
  %.sroa.10138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sroa.0107.2.i, ptr %.sroa.10138.0..sroa_idx, align 8
  %.sroa.11139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %.sroa.4230.0.copyload.i, ptr %.sroa.11139.0..sroa_idx, align 1
  %.sroa.12140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i16 %spec.select.i.i.i, ptr %.sroa.12140.0..sroa_idx, align 2
  %.sroa.13141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 9, ptr %.sroa.13141.0..sroa_idx, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_10UnitHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE11entries_rawCslKoDbeUmNq5_14dwarf_validate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16), (40, 41)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc nuw i64 %3 to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 73
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !63 ; 2 uses
  br i1 %i.a, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert43 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre44 = load i64, ptr %.phi.trans.insert43, align 8, !alias.scope !64, !noalias !73
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i.pre = load i64, ptr %.phi.trans.insert45, align 8, !alias.scope !75, !noalias !73
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i8 %.pre, 8
  %spec.select.i.i = select i1 %i.b, i64 12, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !76, !noundef !10 ; 2 uses
  %i.e = add i64 %spec.select.i.i, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !81, !noundef !10 ; 2 uses
  %i.g = sub i64 %i.e, %.val.i
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.val.i.i.i = phi i64 [ %.val.i, %bb.b ], [ %.val.i.i.i.pre, %._crit_edge ] ; 3 uses
  %i.h = phi i64 [ %i.d, %bb.b ], [ %.pre44, %._crit_edge ]
  %.sroa.02.0 = phi i64 [ %i.g, %bb.b ], [ %4, %._crit_edge ] ; 4 uses
  %i.i = icmp eq i8 %.pre, 8
  %spec.select.i.i.i.i = select i1 %i.i, i64 12, i64 4
  %i.j = add i64 %spec.select.i.i.i.i, %i.h
  %i.k = sub i64 %i.j, %.val.i.i.i                ; 2 uses
  %i.l = icmp uge i64 %.sroa.02.0, %i.k
  %i.m = sub i64 %.sroa.02.0, %i.k                ; 3 uses
  %i.n = icmp ult i64 %i.m, %.val.i.i.i
  %.sroa.0.0.i.i = and i1 %i.l, %i.n
  br i1 %.sroa.0.0.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !82, !noalias !85, !nonnull !10, !noundef !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i2.i = load i8, ptr %i.q, align 8, !range !11, !alias.scope !82, !noalias !85, !noundef !10
  %i.r = sub nuw i64 %.val.i.i.i, %i.m            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.08.0.copyload = load i32, ptr %i.u, align 8
  %i.v = add i64 %i.r, %.sroa.02.0
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.t, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.r, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.08.0.copyload, ptr %.sroa.814.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink42 = phi i64 [ %i.v, %bb.d ], [ 53, %bb.c ]
  %.sroa.02.0.sink = phi i64 [ 0, %bb.d ], [ %.sroa.02.0, %bb.c ]
  %.sink = phi i8 [ %.val.i2.i, %bb.d ], [ 2, %bb.c ]
  store i64 %.sink42, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.sink, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sink, ptr %i.x, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvMsb_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_10UnitHeaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjE21length_including_selfCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #2 {
.split2:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.b = load i8, ptr %i.a, align 1, !range !63, !noundef !10
  %i.c = icmp eq i8 %i.b, 8
  %spec.select = select i1 %i.c, i64 12, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !noundef !10
  %i.f = add i64 %spec.select, %i.e
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvMse_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_9AttributeINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEE5valueCslKoDbeUmNq5_14dwarf_validate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i16, ptr %i.a, align 16, !noundef !10
  switch i16 %i.b, label %thread-pre-split [
    i16 2, label %bb.aw
    i16 9, label %bb.ax
    i16 11, label %bb.ay
    i16 12, label %bb.ay
    i16 13, label %bb.ay
    i16 16, label %bb.az
    i16 18, label %bb.ba
    i16 19, label %bb.bb
    i16 23, label %bb.bc
    i16 25, label %bb.bd
    i16 32, label %bb.be
    i16 34, label %bb.bf
    i16 42, label %bb.bg
    i16 44, label %bb.bh
    i16 46, label %bb.bi
    i16 47, label %bb.bj
    i16 50, label %bb.bk
    i16 51, label %bb.bl
    i16 54, label %bb.bm
    i16 55, label %bb.bn
    i16 56, label %bb.bo
    i16 57, label %bb.bp
    i16 58, label %bb.bq
    i16 59, label %bb.br
    i16 62, label %bb.bs
    i16 64, label %bb.bt
    i16 66, label %bb.bu
    i16 67, label %bb.bv
    i16 70, label %bb.bw
    i16 72, label %bb.bx
    i16 74, label %bb.by
    i16 76, label %bb.bz
    i16 77, label %bb.ca
    i16 78, label %bb.cb
    i16 79, label %bb.cc
    i16 80, label %bb.cd
    i16 81, label %bb.ce
    i16 85, label %bb.cf
    i16 87, label %bb.cg
    i16 88, label %bb.ch
    i16 89, label %bb.ci
    i16 94, label %bb.cj
    i16 101, label %bb.ck
    i16 113, label %bb.cl
    i16 114, label %bb.cm
    i16 115, label %bb.cn
    i16 8499, label %bb.cn
    i16 116, label %bb.co
    i16 8498, label %bb.co
    i16 121, label %bb.cp
    i16 126, label %bb.cq
end_hunk_0
