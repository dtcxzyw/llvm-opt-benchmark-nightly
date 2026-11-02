Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple.simple.7db411c56ae1a883-cgu.02?download=true
inline.NumInlined: 190
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs3_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_18AbbreviationsCache3getINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2P_:bb.a

bb.f:                                             ; preds = %.split.i.i, %.split.i.preheader.i
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !90
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader12read_uleb128B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.noexc.i.i unwind label %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

.noexc.i.i:                                       ; preds = %bb.f
  %i.at = load i8, ptr %i.i, align 8, !range !7, !noalias !90, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.at, -1
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc.i.i
  %.sroa.444.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6.0..sroa.414.0..sroa_idx.i.i.sroa_idx22, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.444.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !92
  %.sroa.545.0.copyload.i.i.i = load i64, ptr %i.am, align 8, !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !90
  store i64 %.sroa.545.0.copyload.i.i.i, ptr %.sroa.7.i.i.sroa.7.0..sroa.414.0..sroa_idx.i.i.sroa_idx23, align 8, !alias.scope !88, !noalias !87
  br label %.thread.i.i

bb.h:                                             ; preds = %.noexc.i.i
  %i.au = load i64, ptr %i.am, align 8, !noalias !90, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !90
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !93
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader16read_uleb128_u16B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.noexc18.i.i unwind label %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

.noexc18.i.i:                                     ; preds = %bb.i
  %i.aw = load i8, ptr %i.g, align 8, !range !7, !noalias !93, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.aw, -1
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc18.i.i
  %.sroa.417.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.417.0.copyload.i.i.i.i = load i8, ptr %.sroa.417.0..sroa_idx.i.i.i.i, align 1, !noalias !93
  %.sroa.518.0.copyload.i.i.i.i = load i16, ptr %i.an, align 2, !noalias !93
  %.sroa.619.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.14.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.619.0..sroa_idx.i.i.i.i, i64 12, i1 false), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !93
  br label %.loopexit43.i.i

bb.k:                                             ; preds = %.noexc18.i.i
  %i.ax = load i16, ptr %i.an, align 2, !noalias !93, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !93
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %.loopexit43.i.i, label %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation9parse_tagINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2P_.exit.i.i.i

.loopexit43.i.i:                                  ; preds = %bb.k, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i16 [ %.sroa.518.0.copyload.i.i.i.i, %bb.j ], [ undef, %bb.k ]
  %.sroa.876.0.ph.i.i.i = phi i8 [ %.sroa.417.0.copyload.i.i.i.i, %bb.j ], [ undef, %bb.k ]
  %.sroa.0.0.ph.i.i.i = phi i8 [ %i.aw, %bb.j ], [ 8, %bb.k ]
  store i8 %.sroa.876.0.ph.i.i.i, ptr %.sroa.7.i.i.sroa.6.0..sroa.414.0..sroa_idx.i.i.sroa_idx22, align 1, !alias.scope !88, !noalias !87
  %.sroa.559.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  store i16 %.sroa.10.0.ph.i.i.i, ptr %.sroa.559.0..sroa_idx.i.i.i, align 2, !alias.scope !88, !noalias !87
  %.sroa.660.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.660.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.14.i.i.i, i64 12, i1 false), !noalias !92
  br label %.thread.i.i

_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation9parse_tagINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2P_.exit.i.i.i: ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !97
  %i.az = invoke noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCsaN7cMqnSAH7_6simple()
          to label %.noexc19.i.i unwind label %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !87

.noexc19.i.i:                                     ; preds = %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation9parse_tagINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2P_.exit.i.i.i
  store i8 %i.az, ptr %i.f, align 1, !noalias !97
  %i.ba = load i64, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !98, !noalias !79, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ba, 0
  %i.bb = load ptr, ptr %i.af, align 16, !alias.scope !98, !noalias !79, !nonnull !5, !noundef !5 ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc19.i.i
  %i.bc = ptrtoint ptr %i.bb to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !97
  br label %.loopexit44.i.i

bb.m:                                             ; preds = %.noexc19.i.i
  %i.bd = add i64 %i.ba, -1
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.be, ptr %i.af, align 16, !alias.scope !98, !noalias !79, !captures !9
  store i64 %i.bd, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !98, !noalias !79
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull %i.f, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc20.i.i unwind label %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !87

.noexc20.i.i:                                     ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.f, align 1, !noalias !97 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !97
  %switch.i.i.i.i = icmp ult i8 %.sroa.0.0.copyload.i.i.i.i.i.i, 2
  br i1 %switch.i.i.i.i, label %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation18parse_has_childrenINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2Z_.exit.i.i.i, label %.loopexit44.i.i

.loopexit44.i.i:                                  ; preds = %.noexc20.i.i, %bb.l
  %.sroa.15.0.ph.i.i.i = phi i64 [ %i.bc, %bb.l ], [ undef, %.noexc20.i.i ]
  %.sroa.880.0.ph.i.i.i = phi i8 [ 0, %bb.l ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %.noexc20.i.i ]
  %.sroa.078.0.ph.i.i.i = phi i8 [ 17, %bb.l ], [ 11, %.noexc20.i.i ]
  store i8 %.sroa.880.0.ph.i.i.i, ptr %.sroa.7.i.i.sroa.6.0..sroa.414.0..sroa_idx.i.i.sroa_idx22, align 1, !alias.scope !88, !noalias !87
  %.sroa.569.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  store i48 0, ptr %.sroa.569.0..sroa_idx.i.i.i, align 2, !alias.scope !88, !noalias !87
  store i64 %.sroa.15.0.ph.i.i.i, ptr %.sroa.7.i.i.sroa.7.0..sroa.414.0..sroa_idx.i.i.sroa_idx23, align 8, !alias.scope !88, !noalias !87
  br label %.thread.i.i

_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation18parse_has_childrenINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2Z_.exit.i.i.i: ; preds = %.noexc20.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, i8 0, i64 96, i1 false), !noalias !100
  br label %bb.n

bb.n:                                             ; preds = %bb.ae, %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation18parse_has_childrenINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2Z_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !102
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader16read_uleb128_u16B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103

.noexc.i.i.i:                                     ; preds = %bb.n
  %i.bf = load i8, ptr %i.c, align 8, !range !7, !noalias !102, !noundef !5 ; 2 uses
  %.not.i.i23.i.i = icmp eq i8 %i.bf, -1
  br i1 %.not.i.i23.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc.i.i.i
  %.sroa.454.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.454.0.copyload.i.i.i.i = load i8, ptr %.sroa.454.0..sroa_idx.i.i.i.i, align 1, !noalias !102
  %.sroa.555.0.copyload.i.i.i.i = load i16, ptr %i.ap, align 2, !noalias !102
  %.sroa.656.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.12.sroa.14.2.copyload.i.i.i = load i32, ptr %.sroa.656.0..sroa_idx.i.i.i.i, align 4, !noalias !104
  %.sroa.12.sroa.14.2.insert.ext.i.i.i = zext i32 %.sroa.12.sroa.14.2.copyload.i.i.i to i64
  %.sroa.12.sroa.14.2.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.12.sroa.14.2.insert.ext.i.i.i, 16
  %.sroa.28.12..sroa.656.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.28.12.copyload.i.i.i = load i64, ptr %.sroa.28.12..sroa.656.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !102
  %.sroa.12.sroa.14.0.insert.ext33.i.i.i = zext i16 %.sroa.555.0.copyload.i.i.i.i to i64
  %.sroa.12.sroa.14.0.insert.insert35.i.i.i = or disjoint i64 %.sroa.12.sroa.14.2.insert.shift.i.i.i, %.sroa.12.sroa.14.0.insert.ext33.i.i.i
  br label %.loopexit67.i.i.i

bb.p:                                             ; preds = %.noexc.i.i.i
  %i.bg = load i16, ptr %i.ap, align 2, !noalias !102, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  invoke void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader16read_uleb128_u16B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103

.noexc8.i.i.i:                                    ; preds = %bb.p
  %i.bh = load i8, ptr %i.b, align 8, !range !7, !noalias !102, !noundef !5 ; 2 uses
  %.not83.i.i.i.i = icmp eq i8 %i.bh, -1
  br i1 %.not83.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc8.i.i.i
  %.sroa.466.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.466.0.copyload.i.i.i.i = load i8, ptr %.sroa.466.0..sroa_idx.i.i.i.i, align 1, !noalias !102
  %.sroa.567.0.copyload.i.i.i.i = load i16, ptr %i.aq, align 2, !noalias !102
  %.sroa.668.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.12.sroa.14.2.copyload40.i.i.i = load i32, ptr %.sroa.668.0..sroa_idx.i.i.i.i, align 4, !noalias !104
  %.sroa.12.sroa.14.2.insert.ext42.i.i.i = zext i32 %.sroa.12.sroa.14.2.copyload40.i.i.i to i64
  %.sroa.12.sroa.14.2.insert.shift43.i.i.i = shl nuw nsw i64 %.sroa.12.sroa.14.2.insert.ext42.i.i.i, 16
  %.sroa.28.12..sroa.668.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.28.12.copyload19.i.i.i = load i64, ptr %.sroa.28.12..sroa.668.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  %.sroa.12.sroa.14.0.insert.ext37.i.i.i = zext i16 %.sroa.567.0.copyload.i.i.i.i to i64
  %.sroa.12.sroa.14.0.insert.insert39.i.i.i = or disjoint i64 %.sroa.12.sroa.14.2.insert.shift43.i.i.i, %.sroa.12.sroa.14.0.insert.ext37.i.i.i
  br label %.loopexit67.i.i.i

bb.r:                                             ; preds = %.noexc8.i.i.i
  %i.bi = load i16, ptr %i.aq, align 2, !noalias !102, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  %.not.i24.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i24.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = icmp eq i16 %i.bi, 0
  br i1 %i.bj, label %.noexc21.i.i, label %.loopexit67.i.i.i

bb.t:                                             ; preds = %bb.r
  switch i16 %i.bi, label %_RINvMsd_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_22AttributeSpecification5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2V_.exit.thread112.i.i.i [
    i16 0, label %.loopexit67.i.i.i
    i16 33, label %bb.u
  ]

_RINvMsd_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_22AttributeSpecification5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2V_.exit.thread112.i.i.i: ; preds = %bb.t
  %.sroa.28.16.insert.ext114.i.i.i = zext i16 %i.bg to i64
  %.sroa.28.18.insert.ext115.i.i.i = zext i16 %i.bi to i64
  %.sroa.28.18.insert.shift116.i.i.i = shl nuw nsw i64 %.sroa.28.18.insert.ext115.i.i.i, 16
  %.sroa.28.18.insert.insert117.i.i.i = or disjoint i64 %.sroa.28.18.insert.shift116.i.i.i, %.sroa.28.16.insert.ext114.i.i.i
  br label %bb.ad

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %.promoted.i.i.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !107, !noalias !79
  %.promoted38.i.i.i.i.i.i = load ptr, ptr %i.af, align 16, !alias.scope !107, !noalias !79
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %bb.u
  %i.bk = phi ptr [ %.promoted38.i.i.i.i.i.i, %bb.u ], [ %i.bp, %bb.z ] ; 3 uses
  %i.bl = phi i64 [ %.promoted.i.i.i.i.i.i, %bb.u ], [ %i.bo, %bb.z ] ; 2 uses
  %.sroa.04.0.i.i.i.i.i.i = phi i32 [ 0, %bb.u ], [ %i.bx, %bb.z ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 0, %bb.u ], [ %i.bw, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108
  %i.bm = invoke noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCsaN7cMqnSAH7_6simple()
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !100

.noexc9.i.i.i:                                    ; preds = %bb.v
  store i8 %i.bm, ptr %i.a, align 1, !noalias !108
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc9.i.i.i
  %i.bn = ptrtoint ptr %i.bk to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !108
  br label %.loopexit67.i.i.i

bb.x:                                             ; preds = %.noexc9.i.i.i
  %i.bo = add i64 %i.bl, -1                       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !100

.noexc10.i.i.i:                                   ; preds = %bb.x
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %i.a, align 1, !noalias !108 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !108
  %i.bq = icmp eq i32 %.sroa.04.0.i.i.i.i.i.i, 63
  br i1 %i.bq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.noexc10.i.i.i
  switch i8 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, label %.loopexit67.i.i.i [
    i8 0, label %bb.z
    i8 127, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %.noexc10.i.i.i
  %i.br = and i8 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 127
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = and i32 %.sroa.04.0.i.i.i.i.i.i, 63
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl i64 %i.bs, %i.bu
  %i.bw = or i64 %i.bv, %.sroa.0.0.i.i.i.i.i.i    ; 2 uses
  %i.bx = add nuw nsw i32 %.sroa.04.0.i.i.i.i.i.i, 7 ; 2 uses
  %i.by = icmp sgt i8 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, -1
  br i1 %i.by, label %_RINvMsd_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_22AttributeSpecification5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2V_.exit.i.i.i, label %bb.v

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.v, %bb.ad, %bb.p, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev10AttributesECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(96) %i.e) #17
          to label %.body.i.i unwind label %bb.af, !noalias !100

.loopexit67.i.i.i:                                ; preds = %bb.s, %bb.t, %bb.y, %bb.w, %bb.q, %bb.o
  %.sroa.12.sroa.14.0.ph.i.i.i = phi i64 [ 0, %bb.w ], [ %.sroa.12.sroa.14.0.insert.insert35.i.i.i, %bb.o ], [ %.sroa.12.sroa.14.0.insert.insert39.i.i.i, %bb.q ], [ 0, %bb.y ], [ 0, %bb.t ], [ 0, %bb.s ]
  %.sroa.12.sroa.11.0.ph.i.i.i = phi i8 [ 0, %bb.w ], [ %.sroa.454.0.copyload.i.i.i.i, %bb.o ], [ %.sroa.466.0.copyload.i.i.i.i, %bb.q ], [ 0, %bb.y ], [ undef, %bb.t ], [ undef, %bb.s ]
  %.sroa.12.sroa.0.0.ph.i.i.i = phi i8 [ 17, %bb.w ], [ %i.bf, %bb.o ], [ %i.bh, %bb.q ], [ 7, %bb.y ], [ 10, %bb.t ], [ 9, %bb.s ]
  %.sroa.28.0.ph.i.i.i = phi i64 [ %i.bn, %bb.w ], [ %.sroa.28.12.copyload.i.i.i, %bb.o ], [ %.sroa.28.12.copyload19.i.i.i, %bb.q ], [ undef, %bb.y ], [ undef, %bb.t ], [ undef, %bb.s ]
  %.sroa.12.sroa.14.0.insert.ext.i.i.i = shl nuw i64 %.sroa.12.sroa.14.0.ph.i.i.i, 16
  %.sroa.12.sroa.11.0.insert.ext.i.i.i = zext i8 %.sroa.12.sroa.11.0.ph.i.i.i to i64
  %.sroa.12.sroa.11.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.12.sroa.11.0.insert.ext.i.i.i, 8
  %.sroa.12.sroa.11.0.insert.insert.i.i.i = or disjoint i64 %.sroa.12.sroa.11.0.insert.shift.i.i.i, %.sroa.12.sroa.14.0.insert.ext.i.i.i
  %.sroa.12.sroa.0.0.insert.ext.i.i.i = zext nneg i8 %.sroa.12.sroa.0.0.ph.i.i.i to i64
  %.sroa.12.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.12.sroa.11.0.insert.insert.i.i.i, %.sroa.12.sroa.0.0.insert.ext.i.i.i
  %i.bz = load i64, ptr %i.e, align 8, !range !6, !alias.scope !109, !noalias !100, !noundef !5
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %.noexc21.thread.i.i, label %bb.aa

bb.aa:                                            ; preds = %.loopexit67.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationEECsaN7cMqnSAH7_6simple.exit.i.i.i.i unwind label %bb.ab, !noalias !100

bb.ab:                                            ; preds = %bb.aa
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.body.i.i unwind label %bb.ac, !noalias !100

bb.ac:                                            ; preds = %bb.ab
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !100
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationEECsaN7cMqnSAH7_6simple.exit.i.i.i.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.noexc21.thread.i.i unwind label %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !87

_RINvMsd_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_22AttributeSpecification5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2V_.exit.i.i.i: ; preds = %bb.z
  store ptr %i.bp, ptr %i.af, align 16, !noalias !79
  store i64 %i.bo, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !79
  %4 = icmp samesign ult i32 %.sroa.04.0.i.i.i.i.i.i, 57
  %i.cd = icmp samesign ugt i8 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 63
  %or.cond.i.i.i.i.i.i = and i1 %4, %i.cd
  %i.ce = and i32 %i.bx, 63
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl nsw i64 -1, %i.cf
  %i.ch = select i1 %or.cond.i.i.i.i.i.i, i64 %i.cg, i64 0
  %.sroa.0.1.i.i.i.i.i.i = or i64 %i.bw, %i.ch
  %.sroa.28.16.insert.ext.i.i.i = zext i16 %i.bg to i64
  %.sroa.28.18.insert.insert.i.i.i = or disjoint i64 %.sroa.28.16.insert.ext.i.i.i, 2162688
  br label %bb.ad

bb.ad:                                            ; preds = %_RINvMsd_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_22AttributeSpecification5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2V_.exit.i.i.i, %_RINvMsd_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_22AttributeSpecification5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2V_.exit.thread112.i.i.i
  %.sroa.28.18.insert.insert119.i.i.i = phi i64 [ %.sroa.28.18.insert.insert117.i.i.i, %_RINvMsd_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_22AttributeSpecification5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2V_.exit.thread112.i.i.i ], [ %.sroa.28.18.insert.insert.i.i.i, %_RINvMsd_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_22AttributeSpecification5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2V_.exit.i.i.i ]
  %.sroa.082.0.i118.i.i.i = phi i64 [ 0, %_RINvMsd_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_22AttributeSpecification5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2V_.exit.thread112.i.i.i ], [ %.sroa.0.1.i.i.i.i.i.i, %_RINvMsd_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_22AttributeSpecification5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2V_.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !100
  store i64 %.sroa.082.0.i118.i.i.i, ptr %i.d, align 8, !noalias !100
  store i64 %.sroa.28.18.insert.insert119.i.i.i, ptr %.sroa.2.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !100
  invoke void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB5_10Attributes4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.d)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !100

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !100
  br label %bb.n

bb.af:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !100
  unreachable

.noexc21.thread.i.i:                              ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationEECsaN7cMqnSAH7_6simple.exit.i.i.i.i, %.loopexit67.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !100
  br label %.loopexit46.i.i

.noexc21.i.i:                                     ; preds = %bb.s
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 8, !noalias !110 ; 2 uses
  %i.cj = load <2 x i64>, ptr %i.ao, align 8, !noalias !110 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0..sroa_idx.i.i, i64 72, i1 false), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !100
  %i.ck = icmp eq i64 %.sroa.0.0.copyload.i.i, 2
  br i1 %i.ck, label %.loopexit46.i.i.loopexit, label %bb.ag

.loopexit46.i.i.loopexit:                         ; preds = %.noexc21.i.i
  %i.cl = extractelement <2 x i64> %i.cj, i64 1
  %i.cm = extractelement <2 x i64> %i.cj, i64 0
  br label %.loopexit46.i.i

.loopexit46.i.i:                                  ; preds = %.loopexit46.i.i.loopexit, %.noexc21.thread.i.i
  %.sroa.6.036.i.i = phi i64 [ %.sroa.12.sroa.0.0.insert.insert.i.i.i, %.noexc21.thread.i.i ], [ %i.cm, %.loopexit46.i.i.loopexit ] ; 2 uses
  %.sroa.927.035.i.i = phi i64 [ %.sroa.28.0.ph.i.i.i, %.noexc21.thread.i.i ], [ %i.cl, %.loopexit46.i.i.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  store i64 %.sroa.6.036.i.i, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !92
  store i64 %.sroa.927.035.i.i, ptr %.sroa.7.i.i.sroa.7.0..sroa.414.0..sroa_idx.i.i.sroa_idx23, align 8, !noalias !92
  %i.cn = trunc i64 %.sroa.6.036.i.i to i8
  br label %.thread.i.i

bb.ag:                                            ; preds = %.noexc21.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.838.0..sroa_idx39.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i.i, i64 72, i1 false), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.h, align 8, !noalias !90
  store <2 x i64> %i.cj, ptr %.sroa.636.0..sroa_idx37.i.i.i, align 8, !noalias !90
  invoke void @_RNvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB5_12Abbreviation3new(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.k, i64 noundef %i.au, i16 noundef %i.ax, i8 noundef %.sroa.0.0.copyload.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.h)
          to label %bb.ah unwind label %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !87

.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %bb.ag, %bb.m, %_RINvMs5_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB6_12Abbreviation9parse_tagINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2P_.exit.i.i.i, %bb.i, %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev22AttributeSpecificationEECsaN7cMqnSAH7_6simple.exit.i.i.i.i
  %lpad.loopexit.split-lp449 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cb, %bb.ab ], [ %lpad.loopexit.split-lp449, %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(48) %i.l) #17
          to label %common.resume unwind label %bb.aq, !noalias !87

.thread.i.i:                                      ; preds = %.loopexit46.i.i, %.loopexit44.i.i, %.loopexit43.i.i, %bb.g
  %.sroa.7.i.i.sroa.0.0.copyload236 = phi i8 [ %i.cn, %.loopexit46.i.i ], [ %.sroa.078.0.ph.i.i.i, %.loopexit44.i.i ], [ %.sroa.0.0.ph.i.i.i, %.loopexit43.i.i ], [ %i.at, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !87
  br label %.loopexit47.i.i

.thread.i:                                        ; preds = %.split.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !87
  br label %.split156.i.sink.split.i

bb.ah:                                            ; preds = %bb.ag
  %.pr.i.i = load i64, ptr %i.k, align 8, !noalias !87 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !87
  %i.co = icmp eq i64 %.pr.i.i, -1
  %.sroa.7.i.i.sroa.0.0.copyload.pre = load i8, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !87 ; 2 uses
  br i1 %i.co, label %.loopexit47.i.i, label %bb.ai

.loopexit47.i.i:                                  ; preds = %bb.ah, %.thread.i.i
  %.sroa.7.i.i.sroa.0.0.copyload = phi i8 [ %.sroa.7.i.i.sroa.0.0.copyload236, %.thread.i.i ], [ %.sroa.7.i.i.sroa.0.0.copyload.pre, %bb.ah ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6.0..sroa.414.0..sroa_idx.i.i.sroa_idx22, i64 7, i1 false), !noalias !87
  %.sroa.7.i.i.sroa.7.0.copyload = load i64, ptr %.sroa.7.i.i.sroa.7.0..sroa.414.0..sroa_idx.i.i.sroa_idx23, align 8, !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6, i64 7, i1 false), !noalias !111
  br label %.split158.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6.0..sroa.414.0..sroa_idx.i.i.sroa_idx22, i64 7, i1 false), !noalias !87
  %.sroa.7.i.i.sroa.7.0.copyload24 = load i64, ptr %.sroa.7.i.i.sroa.7.0..sroa.414.0..sroa_idx.i.i.sroa_idx23, align 8, !noalias !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.515.0..sroa_idx.i.i, i64 88, i1 false), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !87
  %.not.i.i = icmp eq i64 %.pr.i.i, 2
  br i1 %.not.i.i, label %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_8relocate14RelocateReaderINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEE13abbreviationsB2D_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !87
  store i64 %.pr.i.i, ptr %i.j, align 8, !noalias !87
  store i8 %.sroa.7.i.i.sroa.0.0.copyload.pre, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6.0..sroa.3.0..sroa_idx.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i.sroa.6, i64 7, i1 false), !noalias !87
  store i64 %.sroa.7.i.i.sroa.7.0.copyload24, ptr %.sroa.7.i.i.sroa.7.0..sroa.3.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i2.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.i.i, i64 88, i1 false), !noalias !87
  %i.cp = load i64, ptr %i.ar, align 8, !noalias !87, !noundef !5
  %i.cq = invoke noundef zeroext i1 @_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read6abbrevNtB5_13Abbreviations6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.j)
          to label %bb.ak unwind label %.loopexit.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !87

.split156.i.sink.split.i:                         ; preds = %.thread.i, %.thread38.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !87
  br label %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_8relocate14RelocateReaderINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEE13abbreviationsB2D_.exit

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !87
  br i1 %i.cq, label %.split158.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ak
  %.val.i.pre.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !112, !noalias !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !87
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !87
  %i.cr = icmp eq i64 %.val.i.pre.i.i, 0
  br i1 %i.cr, label %.thread.i, label %bb.f, !llvm.loop !74

.split158.i.i:                                    ; preds = %bb.ak, %.loopexit47.i.i
  %.sroa.1211.0 = phi i64 [ %.sroa.7.i.i.sroa.7.0.copyload, %.loopexit47.i.i ], [ %i.cp, %bb.ak ]
  %.sroa.8.0 = phi i8 [ %.sroa.7.i.i.sroa.0.0.copyload, %.loopexit47.i.i ], [ 13, %bb.ak ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.am unwind label %bb.al, !noalias !87

bb.al:                                            ; preds = %.split158.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %.body.i.i.i unwind label %bb.an, !noalias !87

bb.am:                                            ; preds = %.split158.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_8relocate14RelocateReaderINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEE13abbreviationsB2D_.exit.thread33 unwind label %bb.ao, !noalias !87

bb.an:                                            ; preds = %bb.al
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !87
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ao, %bb.al
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cu, %bb.ao ], [ %i.cs, %bb.al ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapyNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationEECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #17
          to label %common.resume unwind label %bb.ap, !noalias !87

bb.ap:                                            ; preds = %.body.i.i.i
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !87
  unreachable

common.resume:                                    ; preds = %bb.au, %.body.i.i, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.dc, %bb.au ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_8relocate14RelocateReaderINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEE13abbreviationsB2D_.exit.thread33: ; preds = %bb.am
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapyNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev12AbbreviationEECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %.sink.split

bb.aq:                                            ; preds = %.body.i.i
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !87
  unreachable

_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6abbrevINtB4_11DebugAbbrevINtNtB6_8relocate14RelocateReaderINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEE13abbreviationsB2D_.exit: ; preds = %bb.ai, %.split156.i.sink.split.i
  %.sroa.0.0.copyload6 = load i64, ptr %i.l, align 8, !noalias !111 ; 2 uses
  %.sroa.8.0.copyload8 = load i8, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !111 ; 2 uses
  %.sroa.12.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx10, i64 7, i1 false), !noalias !111
  %.sroa.1211.0.copyload13 = load i64, ptr %.sroa.5.0..sroa_idx.i1.i, align 8, !noalias !111 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.sroa.6)
end_hunk_0
begin_hunk_1_@_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read6abbrev11DebugAbbrevINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEINtB7_7SectionBS_E9dwp_rangeB2y_:bb.a
  %.val.i.i = load i8, ptr %i.c, align 8, !range !8, !alias.scope !217, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !218, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !218, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i1.i = load i8, ptr %i.h, align 8, !range !8, !alias.scope !218, !noundef !5
  %i.i = load <2 x ptr>, ptr %1, align 8, !alias.scope !219
  %i.j = zext i32 %2 to i64                       ; 3 uses
  %i.k = icmp ult i64 %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.e to i64
  store i8 17, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = sub nuw i64 %i.g, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j ; 2 uses
  %i.o = zext i32 %3 to i64                       ; 2 uses
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.n to i64
  store i8 17, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store <2 x ptr> %i.i, ptr %0, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.val.i.i, ptr %.sroa.621.0..sroa_idx, align 8
  %.sroa.823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %.sroa.823.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sink73 = phi i64 [ 8, %bb.b ], [ 8, %bb.d ], [ 40, %bb.e ]
  %.sink72 = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.d ], [ %i.o, %bb.e ]
  %.sink = phi i8 [ 2, %bb.b ], [ 2, %bb.d ], [ %.val.i1.i, %bb.e ]
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink73
  store i64 %.sink72, ptr %.sroa.541.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %i.r, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read6macros10DebugMacroINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEINtB7_7SectionBR_E9dwp_rangeB2x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 1), (48, 49)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !226, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load i8, ptr %i.c, align 8, !range !8, !alias.scope !226, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !227, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !227, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i1.i = load i8, ptr %i.h, align 8, !range !8, !alias.scope !227, !noundef !5
  %i.i = load <2 x ptr>, ptr %1, align 8, !alias.scope !228
  %i.j = zext i32 %2 to i64                       ; 3 uses
  %i.k = icmp ult i64 %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.e to i64
  store i8 17, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = sub nuw i64 %i.g, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j ; 2 uses
  %i.o = zext i32 %3 to i64                       ; 2 uses
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.n to i64
  store i8 17, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store <2 x ptr> %i.i, ptr %0, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.val.i.i, ptr %.sroa.621.0..sroa_idx, align 8
  %.sroa.823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %.sroa.823.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sink73 = phi i64 [ 8, %bb.b ], [ 8, %bb.d ], [ 40, %bb.e ]
  %.sink72 = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.d ], [ %i.o, %bb.e ]
  %.sink = phi i8 [ 2, %bb.b ], [ 2, %bb.d ], [ %.val.i1.i, %bb.e ]
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink73
  store i64 %.sink72, ptr %.sroa.541.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %i.r, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read6macros12DebugMacinfoINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEINtB7_7SectionBT_E9dwp_rangeB2z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 1), (48, 49)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !235, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load i8, ptr %i.c, align 8, !range !8, !alias.scope !235, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !236, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !236, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i1.i = load i8, ptr %i.h, align 8, !range !8, !alias.scope !236, !noundef !5
  %i.i = load <2 x ptr>, ptr %1, align 8, !alias.scope !237
  %i.j = zext i32 %2 to i64                       ; 3 uses
  %i.k = icmp ult i64 %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.e to i64
  store i8 17, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = sub nuw i64 %i.g, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j ; 2 uses
  %i.o = zext i32 %3 to i64                       ; 2 uses
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.n to i64
  store i8 17, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store <2 x ptr> %i.i, ptr %0, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.val.i.i, ptr %.sroa.621.0..sroa_idx, align 8
  %.sroa.823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %.sroa.823.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sink73 = phi i64 [ 8, %bb.b ], [ 8, %bb.d ], [ 40, %bb.e ]
  %.sink72 = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.d ], [ %i.o, %bb.e ]
  %.sink = phi i8 [ 2, %bb.b ], [ 2, %bb.d ], [ %.val.i1.i, %bb.e ]
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink73
  store i64 %.sink72, ptr %.sroa.541.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader12read_sleb128B26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.promoted.i = load i64, ptr %i.c, align 8, !alias.scope !264 ; 2 uses
  %.promoted38.i = load ptr, ptr %i.b, align 8, !alias.scope !264 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !265
  %i.d = tail call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCsaN7cMqnSAH7_6simple(), !noalias !265
  store i8 %i.d, ptr %i.a, align 1, !noalias !265
  %.not.i.i.i21 = icmp eq i64 %.promoted.i, 0
  br i1 %.not.i.i.i21, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !266
  %i.e = call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCsaN7cMqnSAH7_6simple(), !noalias !266
  store i8 %i.e, ptr %i.a, align 1, !noalias !266
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi ptr [ %.promoted38.i, %bb.a ], [ %i.j, %bb.b ]
  %i.f = ptrtoint ptr %.lcssa to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !267
  store i8 17, ptr %0, align 8, !alias.scope !263
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.424.0..sroa_idx.i, align 1, !alias.scope !263
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i48 0, ptr %.sroa.525.0..sroa_idx.i, align 2, !alias.scope !263
  %.sroa.525.sroa.4.0..sroa.525.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %.sroa.525.sroa.4.0..sroa.525.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !263
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read6signedINtNtNtB6_4read8relocate14RelocateReaderINtNtBO_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2w_.exit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i23 = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %.sroa.04.0.i22 = phi i32 [ %i.r, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.g = phi i64 [ %i.i, %bb.b ], [ %.promoted.i, %bb.a ]
  %i.h = phi ptr [ %i.j, %bb.b ], [ %.promoted38.i, %bb.a ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.i = add i64 %i.g, -1                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.j, ptr %i.b, align 8, !alias.scope !272, !captures !9
  store i64 %i.i, ptr %i.c, align 8, !alias.scope !272
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !noalias !273
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.a, align 1, !noalias !267 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !267
  %i.k = icmp eq i32 %.sroa.04.0.i22, 63
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  switch i8 %.sroa.0.0.copyload.i.i.i, label %bb.e [
    i8 0, label %bb.d
    i8 127, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %.lr.ph
  %i.l = and i8 %.sroa.0.0.copyload.i.i.i, 127
  %i.m = zext nneg i8 %i.l to i64
  %i.n = and i32 %.sroa.04.0.i22, 63
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = or i64 %i.p, %.sroa.0.0.i23              ; 2 uses
  %i.r = add nuw nsw i32 %.sroa.04.0.i22, 7       ; 2 uses
  %i.s = icmp sgt i8 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %i.s, label %bb.f, label %bb.b

bb.e:                                             ; preds = %bb.c
  store i8 7, ptr %0, align 8, !alias.scope !263
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read6signedINtNtNtB6_4read8relocate14RelocateReaderINtNtBO_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2w_.exit

bb.f:                                             ; preds = %bb.d
  %2 = icmp samesign ult i32 %.sroa.04.0.i22, 57
  %i.t = icmp samesign ugt i8 %.sroa.0.0.copyload.i.i.i, 63
  %or.cond.i = and i1 %2, %i.t
  %i.u = and i32 %i.r, 63
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nsw i64 -1, %i.v
  %i.x = select i1 %or.cond.i, i64 %i.w, i64 0
  %.sroa.0.1.i = or i64 %i.q, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.1.i, ptr %i.y, align 8, !alias.scope !263
  store i8 -1, ptr %0, align 8, !alias.scope !263
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read6signedINtNtNtB6_4read8relocate14RelocateReaderINtNtBO_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2w_.exit

_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read6signedINtNtNtB6_4read8relocate14RelocateReaderINtNtBO_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2w_.exit: ; preds = %._crit_edge, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapENtNtB7_6reader6Reader12read_uleb128B26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 41 uses
  %i.c = alloca [1 x i8], align 1                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !379
  %i.d = tail call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCsaN7cMqnSAH7_6simple(), !noalias !379
  store i8 %i.d, ptr %i.c, align 1, !noalias !379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !382, !noundef !5 ; 11 uses
  %.not.i.i.i = icmp eq i64 %i.g, 0
  %i.h = load ptr, ptr %i.e, align 8, !alias.scope !382, !nonnull !5, !noundef !5 ; 12 uses
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.h to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !379
  store i8 17, ptr %0, align 8, !alias.scope !375
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.442.0..sroa_idx.i, align 1, !alias.scope !375
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i48 0, ptr %.sroa.543.0..sroa_idx.i, align 2, !alias.scope !375
  %.sroa.543.sroa.4.0..sroa.543.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.543.sroa.4.0..sroa.543.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !375
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read8unsignedINtNtNtB6_4read8relocate14RelocateReaderINtNtBQ_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2y_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = add i64 %i.g, -1                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.k, ptr %i.e, align 8, !alias.scope !382, !captures !9
  store i64 %i.j, ptr %i.f, align 8, !alias.scope !382
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull %i.c, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !noalias !383
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.c, align 1, !noalias !379 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !379
  %i.l = icmp sgt i8 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = zext nneg i8 %.sroa.0.0.copyload.i.i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !alias.scope !375
  store i8 -1, ptr %0, align 8, !alias.scope !375
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read8unsignedINtNtNtB6_4read8relocate14RelocateReaderINtNtBQ_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2y_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !386
  %i.o = call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCsaN7cMqnSAH7_6simple(), !noalias !386
  store i8 %i.o, ptr %i.b, align 1, !noalias !386
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %.not.i.i64.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i64.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.e
  %.lcssa.i = phi ptr [ %i.k, %bb.e ], [ %i.t, %bb.i ], [ %i.ac, %bb.k ], [ %i.ak, %bb.m ], [ %i.as, %bb.o ], [ %i.ba, %bb.q ], [ %i.bi, %bb.s ], [ %i.bq, %bb.u ]
  %i.p = ptrtoint ptr %.lcssa.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !386
  store i8 17, ptr %0, align 8, !alias.scope !375
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.451.0..sroa_idx.i, align 1, !alias.scope !375
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i48 0, ptr %.sroa.552.0..sroa_idx.i, align 2, !alias.scope !375
  %.sroa.552.sroa.4.0..sroa.552.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %.sroa.552.sroa.4.0..sroa.552.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !375
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read8unsignedINtNtNtB6_4read8relocate14RelocateReaderINtNtBQ_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2y_.exit

bb.g:                                             ; preds = %bb.e
  %i.q = and i8 %.sroa.0.0.copyload.i.i.i, 127
  %i.r = zext nneg i8 %i.q to i64
  %i.s = add i64 %i.g, -2                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 3 uses
  store ptr %i.t, ptr %i.e, align 8, !alias.scope !389, !captures !9
  store i64 %i.s, ptr %i.f, align 8, !alias.scope !389
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull %i.b, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !noalias !390
  %.sroa.0.0.copyload.i.i66.i = load i8, ptr %i.b, align 1, !noalias !386 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !386
  %i.u = and i8 %.sroa.0.0.copyload.i.i66.i, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 7
  %i.x = or disjoint i64 %i.w, %i.r               ; 2 uses
  %i.y = icmp sgt i8 %.sroa.0.0.copyload.i.i66.i, -1
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.g
  %.lcssa112.i = phi i64 [ %i.x, %bb.g ], [ %i.ag, %bb.j ], [ %i.ao, %bb.l ], [ %i.aw, %bb.n ], [ %i.be, %bb.p ], [ %i.bm, %bb.r ], [ %i.bu, %bb.t ], [ %i.cc, %bb.v ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa112.i, ptr %i.z, align 8, !alias.scope !375
  store i8 -1, ptr %0, align 8, !alias.scope !375
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli6leb1284read8unsignedINtNtNtB6_4read8relocate14RelocateReaderINtNtBQ_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCsaN7cMqnSAH7_6simple13RelocationMapEEB2y_.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !393
  %i.aa = call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCsaN7cMqnSAH7_6simple(), !noalias !393
  store i8 %i.aa, ptr %i.b, align 1, !noalias !393
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %.not.i.i64.1.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i64.1.i, label %bb.f, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = add i64 %i.g, -3                        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 3 ; 3 uses
  store ptr %i.ac, ptr %i.e, align 8, !alias.scope !396, !captures !9
  store i64 %i.ab, ptr %i.f, align 8, !alias.scope !396
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull %i.b, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !noalias !397
  %.sroa.0.0.copyload.i.i66.1.i = load i8, ptr %i.b, align 1, !noalias !393 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !393
  %i.ad = and i8 %.sroa.0.0.copyload.i.i66.1.i, 127
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 14
  %i.ag = or disjoint i64 %i.af, %i.x             ; 2 uses
  %i.ah = icmp sgt i8 %.sroa.0.0.copyload.i.i66.1.i, -1
  br i1 %i.ah, label %bb.h, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !400
  %i.ai = call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCsaN7cMqnSAH7_6simple(), !noalias !400
  store i8 %i.ai, ptr %i.b, align 1, !noalias !400
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %.not.i.i64.2.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i64.2.i, label %bb.f, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = add i64 %i.g, -4                        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  store ptr %i.ak, ptr %i.e, align 8, !alias.scope !403, !captures !9
  store i64 %i.aj, ptr %i.f, align 8, !alias.scope !403
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull %i.b, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !noalias !404
  %.sroa.0.0.copyload.i.i66.2.i = load i8, ptr %i.b, align 1, !noalias !400 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !400
  %i.al = and i8 %.sroa.0.0.copyload.i.i66.2.i, 127
  %i.am = zext nneg i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 21
  %i.ao = or disjoint i64 %i.an, %i.ag            ; 2 uses
  %i.ap = icmp sgt i8 %.sroa.0.0.copyload.i.i66.2.i, -1
  br i1 %i.ap, label %bb.h, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !407
  %i.aq = call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCsaN7cMqnSAH7_6simple(), !noalias !407
  store i8 %i.aq, ptr %i.b, align 1, !noalias !407
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %.not.i.i64.3.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i64.3.i, label %bb.f, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = add i64 %i.g, -5                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 5 ; 3 uses
  store ptr %i.as, ptr %i.e, align 8, !alias.scope !410, !captures !9
  store i64 %i.ar, ptr %i.f, align 8, !alias.scope !410
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull %i.b, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !noalias !411
  %.sroa.0.0.copyload.i.i66.3.i = load i8, ptr %i.b, align 1, !noalias !407 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !407
  %i.at = and i8 %.sroa.0.0.copyload.i.i66.3.i, 127
  %i.au = zext nneg i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 28
  %i.aw = or disjoint i64 %i.av, %i.ao            ; 2 uses
  %i.ax = icmp sgt i8 %.sroa.0.0.copyload.i.i66.3.i, -1
  br i1 %i.ax, label %bb.h, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !414
  %i.ay = call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCsaN7cMqnSAH7_6simple(), !noalias !414
  store i8 %i.ay, ptr %i.b, align 1, !noalias !414
end_hunk_1
