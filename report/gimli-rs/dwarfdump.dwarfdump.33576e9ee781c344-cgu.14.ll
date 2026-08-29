Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.14?download=true
inline.NumInlined: 316
inline.NumDeleted: 156
begin_hunk_0_@_RINvMsq_NtNtCsi68uqYEhoRA_5gimli4read3cfiINtB6_22CommonInformationEntryINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE12instructionsINtB6_7EhFrameB17_EEB2N_:bb.a
  %.sroa.5.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx1, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.val.i.i, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.f, ptr %.sroa.74.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.h, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %.val.i1.i, ptr %.sroa.9.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.p, align 8
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.l, ptr %.sroa.7.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 %.val, ptr %i.q, align 2
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsr_NtNtCsi68uqYEhoRA_5gimli4read3cfiINtB6_28PartialFrameDescriptionEntryINtB6_7EhFrameINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1r_E5parseNCINvB37_13dump_eh_frameB1r_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEs0_0EB37_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5.i.i.sroa.9.i = alloca [3 x i8], align 1 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [96 x i8], align 8                ; 15 uses
  %i.k = alloca [56 x i8], align 16               ; 11 uses
  %i.l = alloca [128 x i8], align 8               ; 17 uses
  %i.m = alloca [136 x i8], align 8               ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [40 x i8], align 8                ; 11 uses
  %i.p = alloca [56 x i8], align 16               ; 16 uses
  %i.q = load <2 x i64>, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = load i8, ptr %i.r, align 8, !range !232, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !11 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !253, !noalias !256, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i = load i8, ptr %i.y, align 8, !range !12, !alias.scope !253, !noalias !256, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !258, !noalias !261, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !258, !noalias !261, !noundef !11
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i1.i = load i8, ptr %i.ad, align 8, !range !12, !alias.scope !258, !noalias !261, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 %i.x, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !248, !noalias !251
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store i8 %.val.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !248, !noalias !251
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  store ptr %i.aa, ptr %i.af, align 16, !alias.scope !248, !noalias !251
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  store i64 %i.ac, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !248, !noalias !251
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  store i8 %.val.i1.i, ptr %.sroa.54.0..sroa_idx.i, align 16, !alias.scope !248, !noalias !251
  %i.ag = load <2 x ptr>, ptr %i.v, align 8, !alias.scope !251, !noalias !248
  store <2 x ptr> %i.ag, ptr %i.p, align 16, !alias.scope !248, !noalias !251
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !11, !align !143, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !270
  call void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB13_4read3cfi22CommonInformationEntryINtNtB2q_8relocate14RelocateReaderINtNtB2q_12endian_slice11EndianSliceNtNtB13_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2q_5ErrorENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryB4M_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, i64 noundef %i.u), !noalias !277
  %i.ak = load ptr, ptr %i.n, align 8, !noalias !270, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br i1 %.not.i.i, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.46.0.copyload.i.i = load i64, ptr %i.al, align 8, !noalias !270
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.57.0.copyload.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !281
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !298, !noalias !301, !noundef !11
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val.i.i.i.i.i.i.i.i = load i8, ptr %i.ao, align 8, !range !12, !alias.scope !298, !noalias !301, !noundef !11
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !303, !noalias !306, !nonnull !11, !noundef !11 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !303, !noalias !306, !noundef !11 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.val.i1.i.i.i.i.i.i.i = load i8, ptr %i.at, align 8, !range !12, !alias.scope !303, !noalias !306, !noundef !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 %i.an, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 16, !alias.scope !293, !noalias !308
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store i8 %.val.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !293, !noalias !308
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 3 uses
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  store i8 %.val.i1.i.i.i.i.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i, align 16, !alias.scope !293, !noalias !308
  %i.aw = load <2 x ptr>, ptr %3, align 8, !alias.scope !309, !noalias !310
  store <2 x ptr> %i.aw, ptr %i.k, align 16, !alias.scope !293, !noalias !308
  %i.ax = icmp ult i64 %i.as, %i.u
  br i1 %i.ax, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ay = ptrtoint ptr %i.aq to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i8 17, ptr %i.az, align 8, !noalias !311
  %.sroa.514.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.ay, ptr %.sroa.514.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !311
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 -2, ptr %i.ba, align 8, !noalias !311
  br label %_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB18_4read3cfi22CommonInformationEntryINtNtB2v_8relocate14RelocateReaderINtNtB2v_12endian_slice11EndianSliceNtNtB18_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2v_5ErrorEE14or_insert_withNCNCINvB4R_13dump_eh_frameB38_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtBf_2io5stdio6StdoutEEs0_00E0B4R_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.bb = sub nuw i64 %i.as, %i.u
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.u
  store ptr %i.bc, ptr %i.av, align 16, !alias.scope !312, !noalias !317, !captures !37
  store i64 %i.bb, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !312, !noalias !317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.bd = ptrtoint ptr %i.aq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !326
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader19read_initial_lengthB26_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k), !noalias !331
  %i.be = load i64, ptr %i.i, align 8, !range !8, !noalias !326, !noundef !11
  %i.bf = trunc nuw i64 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.060.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !noalias !326 ; 8 uses
  %.sroa.461.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.461.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.461.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !326 ; 2 uses
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.562.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  %.sroa.10.sroa.9.sroa.0.0.copyload.i.i.i.i.i.i.i = load i56, ptr %.sroa.562.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !326
  %i.bh = zext i56 %.sroa.10.sroa.9.sroa.0.0.copyload.i.i.i.i.i.i.i to i64
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !326
  %i.bi = icmp eq i64 %.sroa.060.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.bi, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %i.av, align 16, !alias.scope !333, !noalias !340, !nonnull !11, !noundef !11 ; 5 uses
  %i.bk = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !333, !noalias !340, !noundef !11 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %.sroa.060.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = ptrtoint ptr %i.bj to i64               ; 2 uses
  %.sroa.10.sroa.0.0.extract.trunc37.i.i.i.i.i.i.i = trunc i64 %i.bm to i8
  %.sroa.10.sroa.9.0.extract.shift44.i.i.i.i.i.i.i = lshr i64 %i.bm, 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %i.k, align 16, !alias.scope !344, !noalias !347, !nonnull !11, !align !143, !noundef !11
  %.val.i1.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i, align 16, !range !12, !alias.scope !333, !noalias !340, !noundef !11 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !range !12, !alias.scope !348, !noalias !351, !noundef !11
  %i.bo = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 16, !alias.scope !348, !noalias !351, !noundef !11
  %i.bp = load ptr, ptr %i.au, align 8, !alias.scope !348, !noalias !351, !nonnull !11, !noundef !11
  %i.bq = sub nuw i64 %i.bk, %.sroa.060.0.copyload.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.060.0.copyload.i.i.i.i.i.i.i.i
  store ptr %i.br, ptr %i.av, align 16, !alias.scope !353, !noalias !356, !captures !37
  store i64 %i.bq, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !353, !noalias !356
  %i.bs = ptrtoint ptr %i.bj to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !358
  %i.bt = call noundef i32 @_RNvXs11_NtCskKLDkoKarTP_4core5arrayAhj4_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !365
  store i32 %i.bt, ptr %i.h, align 4, !noalias !358
  %i.bu = icmp ugt i64 %.sroa.060.0.copyload.i.i.i.i.i.i.i.i, 3
  br i1 %i.bu, label %bb.k, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread.i.i.i.i.i.i.i.i

_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !358
  %.sroa.10.sroa.0.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %i.bs to i8
  %.sroa.10.sroa.9.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %i.bs, 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread.i.i.i.i.i.i.i.i, %bb.h, %bb.e
  %.sroa.10.sroa.9.sroa.0.0.ph.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.sroa.9.0.extract.shift44.i.i.i.i.i.i.i, %bb.h ], [ %.sroa.10.sroa.9.0.extract.shift.i.i.i.i.i.i.i, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread.i.i.i.i.i.i.i.i ], [ %i.bh, %bb.e ]
  %.sroa.10.sroa.0.0.ph.i.i.i.i.i.i.i = phi i8 [ %.sroa.10.sroa.0.0.extract.trunc37.i.i.i.i.i.i.i, %bb.h ], [ %.sroa.10.sroa.0.0.extract.trunc.i.i.i.i.i.i.i, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread.i.i.i.i.i.i.i.i ], [ %.sroa.461.0.copyload.i.i.i.i.i.i.i.i, %bb.e ]
  %.sroa.0.0.ph.i.i.i.i.i.i.i = phi i64 [ 17, %bb.h ], [ 17, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread.i.i.i.i.i.i.i.i ], [ %.sroa.060.0.copyload.i.i.i.i.i.i.i.i, %bb.e ]
  %.sroa.10.sroa.9.0.insert.shift39.i.i.i.i.i.i.i = shl nuw i64 %.sroa.10.sroa.9.sroa.0.0.ph.i.i.i.i.i.i.i, 8
  %.sroa.10.sroa.0.0.insert.ext33.i.i.i.i.i.i.i = zext i8 %.sroa.10.sroa.0.0.ph.i.i.i.i.i.i.i to i64
  %.sroa.10.sroa.0.0.insert.insert35.i.i.i.i.i.i.i = or disjoint i64 %.sroa.10.sroa.9.0.insert.shift39.i.i.i.i.i.i.i, %.sroa.10.sroa.0.0.insert.ext33.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.0.0.ph.i.i.i.i.i.i.i, ptr %i.bv, align 8, !noalias !311
  %.sroa.469.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.10.sroa.0.0.insert.insert35.i.i.i.i.i.i.i, ptr %.sroa.469.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !311
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 -2, ptr %i.bw, align 8, !noalias !311
  br label %_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB18_4read3cfi22CommonInformationEntryINtNtB2v_8relocate14RelocateReaderINtNtB2v_12endian_slice11EndianSliceNtNtB18_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2v_5ErrorEE14or_insert_withNCNCINvB4R_13dump_eh_frameB38_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtBf_2io5stdio6StdoutEEs0_00E0B4R_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull %i.h, i64 noundef range(i64 1, 9) 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef range(i64 1, 9) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8), !noalias !366
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.h, align 4, !noalias !358 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !358
  %i.bx = trunc nuw i8 %.val.i1.i.i.i.i.i.i.i.i.i.i to i1
  %i.by = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.bx, i32 %i.by, i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.bz = icmp eq i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i8 52, ptr %i.ca, align 8, !noalias !311
  %.sroa.41.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.u, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !311
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 -2, ptr %i.cb, align 8, !noalias !311
  br label %_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB18_4read3cfi22CommonInformationEntryINtNtB2v_8relocate14RelocateReaderINtNtB2v_12endian_slice11EndianSliceNtNtB18_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2v_5ErrorEE14or_insert_withNCNCINvB4R_13dump_eh_frameB38_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtBf_2io5stdio6StdoutEEs0_00E0B4R_.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i8 27, ptr %i.cc, align 8, !noalias !311
  %.sroa.421.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.u, ptr %.sroa.421.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !311
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 -2, ptr %i.cd, align 8, !noalias !311
  br label %_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB18_4read3cfi22CommonInformationEntryINtNtB2v_8relocate14RelocateReaderINtNtB2v_12endian_slice11EndianSliceNtNtB18_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2v_5ErrorEE14or_insert_withNCNCINvB4R_13dump_eh_frameB38_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtBf_2io5stdio6StdoutEEs0_00E0B4R_.exit.i.i.i

bb.n:                                             ; preds = %bb.k
  %i.ce = add i64 %.sroa.060.0.copyload.i.i.i.i.i.i.i.i, -4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.cg = ptrtoint ptr %i.bp to i64
  %i.ch = sub i64 %i.bs, %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !373
  store i64 %i.u, ptr %i.j, align 8, !noalias !373
  %.sroa.02.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.060.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.02.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !373
  %.sroa.02.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.ch, ptr %.sroa.02.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !373
  %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i.i.i, align 8, !noalias !373
  %.sroa.6.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.bn, ptr %.sroa.6.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !noalias !373
  %.sroa.6.sroa.0.sroa.5.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %i.cg, ptr %.sroa.6.sroa.0.sroa.5.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !373
  %.sroa.6.sroa.0.sroa.6.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %i.bo, ptr %.sroa.6.sroa.0.sroa.6.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !373
  %.sroa.6.sroa.0.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i8 %.val.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.sroa.0.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !373
  %.sroa.6.sroa.0.sroa.9.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %i.cf, ptr %.sroa.6.sroa.0.sroa.9.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !373
  %.sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 %i.ce, ptr %.sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !373
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i8 %.val.i1.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !373
  %.sroa.66.0..sroa_idx7.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i8 %.sroa.461.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.66.0..sroa_idx7.i.i.i.i.i.i.i, align 8, !noalias !373
  call fastcc void @_RINvMsp_NtNtCsi68uqYEhoRA_5gimli4read3cfiINtB6_22CommonInformationEntryINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE11from_prefixINtB6_7EhFrameB17_EEB2N_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.aj, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %i.j), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !373
  br label %_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB18_4read3cfi22CommonInformationEntryINtNtB2v_8relocate14RelocateReaderINtNtB2v_12endian_slice11EndianSliceNtNtB18_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2v_5ErrorEE14or_insert_withNCNCINvB4R_13dump_eh_frameB38_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtBf_2io5stdio6StdoutEEs0_00E0B4R_.exit.i.i.i

_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB18_4read3cfi22CommonInformationEntryINtNtB2v_8relocate14RelocateReaderINtNtB2v_12endian_slice11EndianSliceNtNtB18_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2v_5ErrorEE14or_insert_withNCNCINvB4R_13dump_eh_frameB38_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtBf_2io5stdio6StdoutEEs0_00E0B4R_.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !311
  store i64 %.sroa.57.0.copyload.i.i, ptr %i.m, align 8, !noalias !311
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ci, ptr noundef nonnull align 8 dereferenceable(128) %i.l, i64 128, i1 false), !noalias !311
  %i.cj = call noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtBT_4read3cfi22CommonInformationEntryINtNtB2g_8relocate14RelocateReaderINtNtB2g_12endian_slice11EndianSliceNtNtBT_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2g_5ErrorEEE14insert_no_growB4A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak, i64 noundef %.sroa.46.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.m), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !311
  br label %_RINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_5EntryNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB16_4read3cfi22CommonInformationEntryINtNtB2t_8relocate14RelocateReaderINtNtB2t_12endian_slice11EndianSliceNtNtB16_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2t_5ErrorEE18or_try_insert_withNCINvB2_14or_insert_withNCNCINvB4P_13dump_eh_frameB36_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtBd_2io5stdio6StdoutEEs0_00E0zEB4P_.exit.i.i

bb.o:                                             ; preds = %bb.a
  %i.ck = load ptr, ptr %i.al, align 8, !noalias !270, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !270
  br label %_RINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_5EntryNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB16_4read3cfi22CommonInformationEntryINtNtB2t_8relocate14RelocateReaderINtNtB2t_12endian_slice11EndianSliceNtNtB16_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2t_5ErrorEE18or_try_insert_withNCINvB2_14or_insert_withNCNCINvB4P_13dump_eh_frameB36_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtBd_2io5stdio6StdoutEEs0_00E0zEB4P_.exit.i.i

_RINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_5EntryNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB16_4read3cfi22CommonInformationEntryINtNtB2t_8relocate14RelocateReaderINtNtB2t_12endian_slice11EndianSliceNtNtB16_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2t_5ErrorEE18or_try_insert_withNCINvB2_14or_insert_withNCNCINvB4P_13dump_eh_frameB36_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtBd_2io5stdio6StdoutEEs0_00E0zEB4P_.exit.i.i: ; preds = %bb.o, %_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB18_4read3cfi22CommonInformationEntryINtNtB2v_8relocate14RelocateReaderINtNtB2v_12endian_slice11EndianSliceNtNtB18_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2v_5ErrorEE14or_insert_withNCNCINvB4R_13dump_eh_frameB38_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtBf_2io5stdio6StdoutEEs0_00E0B4R_.exit.i.i.i
  %.pn.i.i.i = phi ptr [ %i.cj, %_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB18_4read3cfi22CommonInformationEntryINtNtB2v_8relocate14RelocateReaderINtNtB2v_12endian_slice11EndianSliceNtNtB18_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2v_5ErrorEE14or_insert_withNCNCINvB4R_13dump_eh_frameB38_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtBf_2io5stdio6StdoutEEs0_00E0B4R_.exit.i.i.i ], [ %i.ck, %bb.o ] ; 25 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !270
  %i.cl = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -120
  %i.cm = load i64, ptr %i.cl, align 8, !range !375, !noalias !376, !noundef !11 ; 4 uses
  %i.cn = icmp eq i64 %i.cm, -2
  br i1 %i.cn, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_RINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_5EntryNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB16_4read3cfi22CommonInformationEntryINtNtB2t_8relocate14RelocateReaderINtNtB2t_12endian_slice11EndianSliceNtNtB16_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2t_5ErrorEE18or_try_insert_withNCINvB2_14or_insert_withNCNCINvB4P_13dump_eh_frameB36_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtBd_2io5stdio6StdoutEEs0_00E0zEB4P_.exit.i.i
  %i.co = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -40
  %i.cp = load <2 x i64>, ptr %i.co, align 8, !alias.scope !377, !noalias !380
  %i.cq = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -6
  %i.cr = load i8, ptr %i.cq, align 2, !range !232, !alias.scope !377, !noalias !380, !noundef !11
  %i.cs = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -5
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !377, !noalias !380, !noundef !11
  %.not.i1.i.i = icmp eq i64 %i.cm, -1
  br i1 %.not.i1.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %.sroa.0.0.i.i.i, align 8, !alias.scope !377, !noalias !380
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -112
  %.sroa.5.i.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !noalias !376
  %.sroa.5.i.i.sroa.4.0..sroa.57.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -104
  %.sroa.5.i.i.sroa.4.0.copyload.i = load i8, ptr %.sroa.5.i.i.sroa.4.0..sroa.57.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !376
  %.sroa.5.i.i.sroa.5.0..sroa.57.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -103
  %.sroa.5.i.i.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.i.i.sroa.5.0..sroa.57.0..sroa_idx.i.i.sroa_idx.i, align 1, !noalias !376
  %.sroa.5.i.i.sroa.6.0..sroa.57.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -102
  %.sroa.5.i.i.sroa.6.0.copyload.i = load i8, ptr %.sroa.5.i.i.sroa.6.0..sroa.57.0..sroa_idx.i.i.sroa_idx.i, align 2, !noalias !376
  %.sroa.5.i.i.sroa.7.0..sroa.57.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -101
  %.sroa.5.i.i.sroa.7.0.copyload.i = load i8, ptr %.sroa.5.i.i.sroa.7.0..sroa.57.0..sroa_idx.i.i.sroa_idx.i, align 1, !noalias !376
  %.sroa.5.i.i.sroa.8.0..sroa.57.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -100
  %.sroa.5.i.i.sroa.8.0.copyload.i = load i8, ptr %.sroa.5.i.i.sroa.8.0..sroa.57.0..sroa_idx.i.i.sroa_idx.i, align 4, !noalias !376
  %.sroa.5.i.i.sroa.9.0..sroa.57.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.i.i.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.i.i.sroa.9.0..sroa.57.0..sroa_idx.i.i.sroa_idx.i, i64 3, i1 false), !noalias !382
  br label %bb.s

bb.r:                                             ; preds = %_RINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_5EntryNtNtCsi68uqYEhoRA_5gimli6common13EhFrameOffsetINtNtCskKLDkoKarTP_4core6result6ResultINtNtNtB16_4read3cfi22CommonInformationEntryINtNtB2t_8relocate14RelocateReaderINtNtB2t_12endian_slice11EndianSliceNtNtB16_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtB2t_5ErrorEE18or_try_insert_withNCINvB2_14or_insert_withNCNCINvB4P_13dump_eh_frameB36_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtBd_2io5stdio6StdoutEEs0_00E0zEB4P_.exit.i.i
  %i.cu = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -112
  %.sroa.970.sroa.0.0.copyload140.i = load i64, ptr %i.cu, align 8, !noalias !382
  %.sroa.970.sroa.7.0..sroa_idx142.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -104
  %.sroa.970.sroa.11.0..sroa_idx154.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -100
  %.sroa.970.sroa.11.0.copyload155.i = load i8, ptr %.sroa.970.sroa.11.0..sroa_idx154.i, align 4, !noalias !382
  %.sroa.970.sroa.12.0..sroa_idx156.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -99
  %.sroa.9176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9176.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.970.sroa.12.0..sroa_idx156.i, i64 3, i1 false), !noalias !383
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.970.sroa.0.0.copyload140.i, ptr %i.cv, align 8, !alias.scope !263, !noalias !384
  %.sroa.4171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load <4 x i8>, ptr %.sroa.970.sroa.7.0..sroa_idx142.i, align 8, !noalias !382
  store <4 x i8> %i.cw, ptr %.sroa.4171.0..sroa_idx.i, align 8, !alias.scope !263, !noalias !384
  %.sroa.8175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.970.sroa.11.0.copyload155.i, ptr %.sroa.8175.0..sroa_idx.i, align 4, !alias.scope !263, !noalias !384
  store i64 -2, ptr %0, align 8, !alias.scope !263, !noalias !384
  br label %_RINvMss_NtNtCsi68uqYEhoRA_5gimli4read3cfiINtB6_21FrameDescriptionEntryINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE10parse_restINtB6_7EhFrameB16_ENCINvB2M_13dump_eh_frameB16_INtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEs0_0EB2M_.exit

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.5.i.i.sroa.0.0.i = phi i64 [ undef, %bb.p ], [ %.sroa.5.i.i.sroa.0.0.copyload.i, %bb.q ]
  %.sroa.5.i.i.sroa.4.0.i = phi i8 [ undef, %bb.p ], [ %.sroa.5.i.i.sroa.4.0.copyload.i, %bb.q ] ; 2 uses
  %.sroa.5.i.i.sroa.5.0.i = phi i8 [ undef, %bb.p ], [ %.sroa.5.i.i.sroa.5.0.copyload.i, %bb.q ] ; 2 uses
  %.sroa.5.i.i.sroa.6.0.i = phi i8 [ undef, %bb.p ], [ %.sroa.5.i.i.sroa.6.0.copyload.i, %bb.q ] ; 2 uses
  %.sroa.5.i.i.sroa.7.0.i = phi i8 [ undef, %bb.p ], [ %.sroa.5.i.i.sroa.7.0.copyload.i, %bb.q ] ; 3 uses
  %.sroa.5.i.i.sroa.8.0.i = phi i8 [ undef, %bb.p ], [ %.sroa.5.i.i.sroa.8.0.copyload.i, %bb.q ] ; 2 uses
  %.sroa.0.0.i2.i.i = phi i64 [ undef, %bb.p ], [ %.sroa.05.0.copyload.i.i.i, %bb.q ]
  %i.cx = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -4
  %i.cy = load i8, ptr %i.cx, align 4, !alias.scope !377, !noalias !380, !noundef !11 ; 5 uses
  %i.cz = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -24
  %i.da = load <2 x i64>, ptr %i.cz, align 8, !alias.scope !377, !noalias !380
  %i.db = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -8
  %i.dc = load i16, ptr %i.db, align 8, !alias.scope !377, !noalias !380, !noundef !11
  %i.dd = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -96
  %i.de = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -80
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !385, !noalias !390, !noundef !11
  %i.dg = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -72
  %.val.i.i.i.i.i = load i8, ptr %i.dg, align 8, !range !12, !alias.scope !385, !noalias !390, !noundef !11
  %i.dh = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -64
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !393, !noalias !396, !nonnull !11, !noundef !11
  %i.dj = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -56
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !393, !noalias !396, !noundef !11
  %i.dl = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -48
  %.val.i1.i.i.i.i = load i8, ptr %i.dl, align 8, !range !12, !alias.scope !393, !noalias !396, !noundef !11
  %i.dm = load <2 x ptr>, ptr %i.dd, align 8, !alias.scope !398, !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !400
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.dn, ptr %i.do, align 8, !noalias !400
  store i64 0, ptr %i.o, align 8, !noalias !400
  %i.dp = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i8 %i.cy, ptr %i.dp, align 8, !noalias !400
  %i.dq = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.ah, ptr %i.dq, align 8, !noalias !400
  %.not.i56.i = icmp ne i64 %i.cm, -1             ; 2 uses
  %i.dr = trunc nuw i8 %.sroa.5.i.i.sroa.6.0.i to i1
  %or.cond224.i = select i1 %.not.i56.i, i1 %i.dr, i1 false
  br i1 %or.cond224.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !401
  call void @_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader12read_addressB2c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.p, i8 noundef %i.cy), !noalias !407
  %i.ds = load i8, ptr %i.e, align 8, !range !127, !noalias !401, !noundef !11 ; 2 uses
  %.not75.i.i = icmp eq i8 %i.ds, -1
  br i1 %.not75.i.i, label %bb.aa, label %bb.z

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !401
  call fastcc void @_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi21parse_encoded_pointerINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2C_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, i8 noundef %.sroa.5.i.i.sroa.7.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.p), !noalias !408
  %i.dt = load i64, ptr %i.g, align 8, !range !8, !noalias !401, !noundef !11
  %i.du = trunc nuw i64 %i.dt to i1
  br i1 %i.du, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.044.0.copyload.i.i = load i64, ptr %i.dv, align 8, !noalias !401
  %.sroa.445.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.445.0.copyload.i.i = load i64, ptr %.sroa.445.0..sroa_idx.i.i, align 8, !noalias !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !401
  br label %bb.am
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_15PubSetEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2I_:bb.a
bb.d:                                             ; preds = %bb.b
  %.val9 = load i64, ptr %i.h, align 8
  %.val10 = load i8, ptr %i.i, align 2, !range !232, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !748
  call void @_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f, i8 noundef %.val10), !noalias !743
  %i.r = load i8, ptr %i.c, align 8, !range !127, !noalias !748, !noundef !11 ; 2 uses
  %.not.i = icmp eq i8 %i.r, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.446.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.443.0..sroa_idx.i, i64 7, i1 false), !noalias !746
  %.sroa.544.0.copyload.i = load i64, ptr %.sroa.544.0..sroa_idx.i, align 8, !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !748
  store i8 %i.r, ptr %0, align 8, !alias.scope !743, !noalias !746
  store i64 %.sroa.544.0.copyload.i, ptr %.sroa.547.0..sroa_idx.i, align 8, !alias.scope !743, !noalias !746
  br label %_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_11PubSetEntryINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5parseB2E_.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.s = load i64, ptr %.sroa.544.0..sroa_idx.i, align 8, !noalias !748, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !748
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_11PubSetEntryINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5parseB2E_.exit.thread33, label %bb.g

_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_11PubSetEntryINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5parseB2E_.exit.thread33: ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.k, align 8, !alias.scope !749, !noalias !743
  store i64 0, ptr %i.g, align 8, !alias.scope !749, !noalias !743
  store i8 2, ptr %i.e, align 8
  br label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.u = trunc nuw i8 %i.o to i1
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !760
  %i.v = call noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !763
  store i8 %i.v, ptr %i.a, align 1, !noalias !760
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.w = load i64, ptr %i.g, align 8, !alias.scope !770, !noalias !773, !noundef !11 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  %i.x = load ptr, ptr %i.k, align 8, !alias.scope !770, !noalias !773, !nonnull !11, !noundef !11 ; 3 uses
  br i1 %.not.i.i.i, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.k, %bb.g
  %.sroa.018.0.i = phi i8 [ %.sroa.0.0.copyload.i.i.i, %bb.k ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.019.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !748
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader26read_null_terminated_sliceB26_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f), !noalias !743
  %i.y = load i8, ptr %i.l, align 8, !range !39, !noalias !748, !noundef !11 ; 2 uses
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %bb.l, label %_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_11PubSetEntryINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5parseB2E_.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = ptrtoint ptr %i.x to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !760
  store i8 17, ptr %0, align 8, !alias.scope !743, !noalias !746
  store i8 0, ptr %.sroa.446.0..sroa_idx.i, align 1, !alias.scope !743, !noalias !746
  store i48 0, ptr %.sroa.556.0..sroa_idx.i, align 2, !alias.scope !743, !noalias !746
  store i64 %i.aa, ptr %.sroa.547.0..sroa_idx.i, align 8, !alias.scope !743, !noalias !746
  br label %_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_11PubSetEntryINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5parseB2E_.exit.thread

bb.k:                                             ; preds = %bb.h
  %i.ab = add i64 %i.w, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.ac, ptr %i.k, align 8, !alias.scope !770, !noalias !773, !captures !37
  store i64 %i.ab, ptr %i.g, align 8, !alias.scope !770, !noalias !773
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef range(i64 1, 9) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8), !noalias !779
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.a, align 1, !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !760
  br label %bb.i

bb.l:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.i, i64 16, i1 false), !noalias !746
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.019.i)
  br label %_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_11PubSetEntryINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5parseB2E_.exit.thread

_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_11PubSetEntryINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5parseB2E_.exit: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.019.i, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.736.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.559.0..sroa_idx.i, i64 7, i1 false), !noalias !746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.534.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.019.i, i64 48, i1 false), !noalias !746
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.019.i)
  store i64 %.val9, ptr %0, align 8, !alias.scope !743, !noalias !746
  store i64 %i.s, ptr %.sroa.547.0..sroa_idx.i, align 8, !alias.scope !743, !noalias !746
  store i8 %i.y, ptr %i.j, align 8
  store i8 %.sroa.018.0.i, ptr %.sroa.837.0..sroa_idx.i, align 8
  br label %bb.m

_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_11PubSetEntryINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5parseB2E_.exit.thread: ; preds = %bb.l, %bb.j, %bb.e
  store i8 -1, ptr %i.j, align 8
  store i8 %.sroa.837.0..sroa_idx.i.promoted, ptr %.sroa.837.0..sroa_idx.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr inttoptr (i64 1 to ptr), ptr %i.ad, align 8, !alias.scope !780
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 0, ptr %i.ae, align 8, !alias.scope !780
  store i8 2, ptr %i.e, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_11PubSetEntryINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5parseB2E_.exit, %_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_11PubSetEntryINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5parseB2E_.exit.thread, %bb.q
  ret void

bb.n:                                             ; preds = %bb.c
  store i8 %.sroa.837.0..sroa_idx.i.promoted, ptr %.sroa.837.0..sroa_idx.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

bb.p:                                             ; preds = %bb.c
  store i8 %.sroa.837.0..sroa_idx.i.promoted, ptr %.sroa.837.0..sroa_idx.i, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  store i8 %i.q, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_6PubSetINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5itemsB2y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) initializes((0, 27), (32, 57), (64, 81), (88, 89), (96, 121), (128, 145), (152, 153)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !785, !noalias !790, !nonnull !11, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !785, !noalias !790, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i = load i8, ptr %i.f, align 8, !range !12, !alias.scope !785, !noalias !790, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i1.i = load i8, ptr %i.i, align 8, !range !12, !alias.scope !793, !noalias !796, !noundef !11 ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !alias.scope !798, !noalias !801, !nonnull !11, !align !143, !noundef !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load i8, ptr %i.k, align 8, !range !12, !noundef !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.n = load i8, ptr %i.m, align 2, !range !232, !alias.scope !802, !noalias !805, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i16, ptr %i.o, align 8, !alias.scope !802, !noalias !805, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !807, !noalias !805, !noundef !11
  %i.s = load ptr, ptr %i.g, align 8, !alias.scope !810, !noalias !815, !nonnull !11, !noundef !11
  %i.t = load i64, ptr %i.h, align 8, !alias.scope !810, !noalias !815, !noundef !11
  %i.u = load <2 x i64>, ptr %1, align 8, !alias.scope !802, !noalias !805
  store <2 x i64> %i.u, ptr %0, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  %.sroa.06.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.p, ptr %.sroa.06.sroa.6.0..sroa_idx, align 8
  %.sroa.06.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.n, ptr %.sroa.06.sroa.7.0..sroa_idx, align 2
  %.sroa.06.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %.sroa.06.sroa.9.0..sroa_idx, align 8
  %.sroa.06.sroa.9.sroa.4.0..sroa.06.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %.sroa.06.sroa.9.sroa.4.0..sroa.06.sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.06.sroa.9.sroa.5.0..sroa.06.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.e, ptr %.sroa.06.sroa.9.sroa.5.0..sroa.06.sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.06.sroa.9.sroa.6.0..sroa.06.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.val.i.i, ptr %.sroa.06.sroa.9.sroa.6.0..sroa.06.sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.06.sroa.9.sroa.8.0..sroa.06.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.s, ptr %.sroa.06.sroa.9.sroa.8.0..sroa.06.sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.06.sroa.9.sroa.9.0..sroa.06.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.t, ptr %.sroa.06.sroa.9.sroa.9.0..sroa.06.sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.06.sroa.9.sroa.10.0..sroa.06.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.val.i1.i, ptr %.sroa.06.sroa.9.sroa.10.0..sroa.06.sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.l, ptr %.sroa.47.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.j, ptr %i.v, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.c, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.e, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %.val.i.i, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8
  %.sroa.01.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.01.sroa.8.0..sroa_idx, align 8
  %.sroa.01.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %.sroa.01.sroa.9.0..sroa_idx, align 8
  %.sroa.01.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %.val.i1.i, ptr %.sroa.01.sroa.10.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %i.l, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_14AddrHeaderIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((64, 65)) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [56 x i8], align 8                ; 14 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.30 = alloca [48 x i8], align 8           ; 4 uses
  %.sroa.41 = alloca [7 x i8], align 1            ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %.val2 = load i64, ptr %i.g, align 8, !noundef !11 ; 2 uses
  %i.h = icmp eq i64 %.val2, 0
  br i1 %i.h, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.41)
  %i.i = load i64, ptr %1, align 8, !noundef !11  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !821
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader19read_initial_lengthB26_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f), !noalias !823
  %i.j = load i64, ptr %i.e, align 8, !range !8, !noalias !821, !noundef !11
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.071.0.copyload.i = load i64, ptr %i.l, align 8, !noalias !821 ; 9 uses
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.472.0.copyload.i = load i8, ptr %.sroa.472.0..sroa_idx.i, align 8, !noalias !821 ; 3 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.573.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %.sroa.23.sroa.12.sroa.0.0.copyload = load i56, ptr %.sroa.573.0..sroa_idx.i, align 1, !noalias !818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !821
  br label %_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_10AddrHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE5parseB2B_.exit.thread

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !821
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !824, !noalias !831, !nonnull !11, !noundef !11 ; 5 uses
  %i.o = load i64, ptr %i.g, align 8, !alias.scope !824, !noalias !831, !noundef !11 ; 2 uses
  %i.p = icmp ult i64 %i.o, %.sroa.071.0.copyload.i
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = ptrtoint ptr %i.n to i64                 ; 2 uses
  %.sroa.23.sroa.0.0.extract.trunc22 = trunc i64 %i.q to i8
  %.sroa.23.sroa.12.0.extract.shift37 = lshr i64 %i.q, 8
  %.sroa.23.sroa.12.0.extract.trunc38 = trunc nuw i64 %.sroa.23.sroa.12.0.extract.shift37 to i56
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.f, align 8, !alias.scope !835, !noalias !838, !nonnull !11, !align !143, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i1.i.i.i = load i8, ptr %i.s, align 8, !range !12, !alias.scope !824, !noalias !831, !noundef !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i.i = load i8, ptr %i.t, align 8, !range !12, !alias.scope !839, !noalias !842, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !839, !noalias !842, !noundef !11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !839, !noalias !842, !nonnull !11, !noundef !11
  %i.y = sub nuw i64 %i.o, %.sroa.071.0.copyload.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.071.0.copyload.i
  store ptr %i.z, ptr %i.m, align 8, !alias.scope !844, !noalias !847, !captures !37
  store i64 %i.y, ptr %i.g, align 8, !alias.scope !844, !noalias !847
  %i.aa = ptrtoint ptr %i.x to i64
  store ptr %i.r, ptr %i.d, align 8, !noalias !821
  %.sroa.011.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.aa, ptr %.sroa.011.sroa.4.0..sroa_idx.i, align 8, !noalias !821
  %.sroa.011.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.v, ptr %.sroa.011.sroa.5.0..sroa_idx.i, align 8, !noalias !821
  %.sroa.011.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 %.val.i.i.i.i, ptr %.sroa.011.sroa.6.0..sroa_idx.i, align 8, !noalias !821
  %.sroa.011.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.sroa.011.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i8 %.val.i1.i.i.i, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !821
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !855
  %i.ab = tail call noundef i16 @_RNvXs13_NtCskKLDkoKarTP_4core5arrayAhj2_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !858
  store i16 %i.ab, ptr %i.a, align 2, !noalias !855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.ac = icmp ugt i64 %.sroa.071.0.copyload.i, 1
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = ptrtoint ptr %i.n to i64                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !855
  %.sroa.23.sroa.0.0.extract.trunc18 = trunc i64 %i.ad to i8
  %.sroa.23.sroa.12.0.extract.shift29 = lshr i64 %i.ad, 8
  %.sroa.23.sroa.12.0.extract.trunc30 = trunc nuw i64 %.sroa.23.sroa.12.0.extract.shift29 to i56
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.ae = add i64 %.sroa.071.0.copyload.i, -2
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store ptr %i.af, ptr %.sroa.011.sroa.8.0..sroa_idx.i, align 8, !alias.scope !865, !noalias !868, !captures !37
  store i64 %i.ae, ptr %.sroa.011.sroa.9.0..sroa_idx.i, align 8, !alias.scope !865, !noalias !868
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 1, 9) 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef range(i64 1, 9) 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8), !noalias !874
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.a, align 2, !noalias !855 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !855
  %i.ag = trunc nuw i8 %.val.i1.i.i.i to i1
  %i.ah = call i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i)
  %.sroa.0.0.i.i.i = select i1 %i.ag, i16 %i.ah, i16 %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.ai = icmp eq i16 %.sroa.0.0.i.i.i, 5
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !821
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader17read_address_sizeB26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d), !noalias !823
  %i.aj = load i8, ptr %i.c, align 8, !range !127, !noalias !821, !noundef !11 ; 2 uses
  %.not114.i = icmp eq i8 %i.aj, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !noalias !821 ; 5 uses
  br i1 %.not114.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  %.sroa.23.sroa.0.0.extract.trunc19 = trunc i16 %.sroa.0.0.i.i.i to i8
  %i.am = lshr i16 %.sroa.0.0.i.i.i, 8
  %.sroa.23.sroa.12.0.extract.trunc32 = zext nneg i16 %i.am to i56
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %.sroa.597.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.sroa.0.2.copyload = load i48, ptr %.sroa.597.0..sroa_idx.i, align 2, !noalias !818
  %.sroa.0.2.insert.ext = zext i48 %.sroa.0.2.copyload to i64
  %.sroa.0.2.insert.shift = shl nuw i64 %.sroa.0.2.insert.ext, 16
  %.sroa.23.2..sroa.597.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.23.2.copyload = load i64, ptr %.sroa.23.2..sroa.597.0..sroa_idx.i.sroa_idx, align 8, !noalias !818 ; 2 uses
  %.sroa.23.sroa.0.0.extract.trunc = trunc i64 %.sroa.23.2.copyload to i8
  %.sroa.23.sroa.12.0.extract.shift = lshr i64 %.sroa.23.2.copyload, 8
  %.sroa.23.sroa.12.0.extract.trunc = trunc nuw i64 %.sroa.23.sroa.12.0.extract.shift to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !821
  %.sroa.0.0.insert.ext = zext nneg i8 %i.aj to i64
  %.sroa.0.1.insert.ext = zext i8 %i.al to i64
  %.sroa.0.1.insert.shift = shl nuw nsw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.0.insert.insert8 = or disjoint i64 %.sroa.0.1.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.1.insert.insert25 = or disjoint i64 %.sroa.0.0.insert.insert8, %.sroa.0.2.insert.shift
  br label %bb.r

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !821
  call fastcc void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader7read_u8B26_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(56) %i.d) #17, !noalias !823
  %i.an = load i8, ptr %i.b, align 8, !range !127, !noalias !821, !noundef !11 ; 2 uses
  %.not115.i = icmp eq i8 %i.an, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !821 ; 3 uses
  br i1 %.not115.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.5106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.0.2.copyload42 = load i48, ptr %.sroa.5106.0..sroa_idx.i, align 2, !noalias !818
  %.sroa.0.2.insert.ext44 = zext i48 %.sroa.0.2.copyload42 to i64
  %.sroa.0.2.insert.shift45 = shl nuw i64 %.sroa.0.2.insert.ext44, 16
  %.sroa.23.2..sroa.5106.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.23.2.copyload12 = load i64, ptr %.sroa.23.2..sroa.5106.0..sroa_idx.i.sroa_idx, align 8, !noalias !818 ; 2 uses
  %.sroa.23.sroa.0.0.extract.trunc17 = trunc i64 %.sroa.23.2.copyload12 to i8
  %.sroa.23.sroa.12.0.extract.shift27 = lshr i64 %.sroa.23.2.copyload12, 8
  %.sroa.23.sroa.12.0.extract.trunc28 = trunc nuw i64 %.sroa.23.sroa.12.0.extract.shift27 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !821
  %.sroa.0.0.insert.ext10 = zext nneg i8 %i.an to i64
  %.sroa.0.1.insert.ext27 = zext i8 %i.ap to i64
  %.sroa.0.1.insert.shift28 = shl nuw nsw i64 %.sroa.0.1.insert.ext27, 8
  %.sroa.0.0.insert.insert12 = or disjoint i64 %.sroa.0.1.insert.shift28, %.sroa.0.0.insert.ext10
  %.sroa.0.1.insert.insert30 = or disjoint i64 %.sroa.0.0.insert.insert12, %.sroa.0.2.insert.shift45
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !821
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.o, label %2

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp eq i8 %i.al, 0
  br i1 %i.ar, label %bb.r, label %bb.p

2:                                                ; preds = %bb.n
  %.sroa.0.1.insert.ext32 = zext i8 %i.ap to i64
  %.sroa.0.1.insert.shift33 = shl nuw nsw i64 %.sroa.0.1.insert.ext32, 8
  %.sroa.0.1.insert.insert35 = or disjoint i64 %.sroa.0.1.insert.shift33, 61
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.as = icmp eq i8 %.sroa.472.0.copyload.i, 8
  %..i = select i1 %i.as, i8 16, i8 8
  %i.at = urem i8 %..i, %i.al                     ; 2 uses
  %i.au = icmp eq i8 %i.at, 0
  %i.av = sub nuw i8 %i.al, %i.at
  %.sroa.057.0.i = select i1 %i.au, i8 0, i8 %i.av
  %i.aw = zext i8 %.sroa.057.0.i to i64           ; 3 uses
  %i.ax = load i64, ptr %.sroa.011.sroa.9.0..sroa_idx.i, align 8, !alias.scope !875, !noalias !880, !noundef !11 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = load ptr, ptr %.sroa.011.sroa.8.0..sroa_idx.i, align 8, !alias.scope !875, !noalias !880, !nonnull !11, !noundef !11 ; 2 uses
  br i1 %i.ay, label %bb.q, label %_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_10AddrHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE5parseB2B_.exit

bb.q:                                             ; preds = %bb.p
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %.sroa.23.sroa.0.0.extract.trunc21 = trunc i64 %i.ba to i8
  %.sroa.23.sroa.12.0.extract.shift35 = lshr i64 %i.ba, 8
  %.sroa.23.sroa.12.0.extract.trunc36 = trunc nuw i64 %.sroa.23.sroa.12.0.extract.shift35 to i56
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %2, %bb.m, %bb.k, %bb.j, %bb.g, %bb.e
  %.sroa.23.sroa.12.sroa.0.0 = phi i56 [ %.sroa.23.sroa.12.0.extract.trunc38, %bb.e ], [ %.sroa.23.sroa.12.0.extract.trunc30, %bb.g ], [ %.sroa.23.sroa.12.0.extract.trunc36, %bb.q ], [ undef, %2 ], [ %.sroa.23.sroa.12.0.extract.trunc28, %bb.m ], [ %.sroa.23.sroa.12.0.extract.trunc, %bb.k ], [ %.sroa.23.sroa.12.0.extract.trunc32, %bb.j ], [ undef, %bb.o ]
  %.sroa.0.sroa.0.0 = phi i8 [ %.sroa.23.sroa.0.0.extract.trunc22, %bb.e ], [ %.sroa.23.sroa.0.0.extract.trunc18, %bb.g ], [ %.sroa.23.sroa.0.0.extract.trunc21, %bb.q ], [ undef, %2 ], [ %.sroa.23.sroa.0.0.extract.trunc17, %bb.m ], [ %.sroa.23.sroa.0.0.extract.trunc, %bb.k ], [ %.sroa.23.sroa.0.0.extract.trunc19, %bb.j ], [ undef, %bb.o ]
  %.sroa.0.0 = phi i64 [ 17, %bb.e ], [ 17, %bb.g ], [ 17, %bb.q ], [ %.sroa.0.1.insert.insert35, %2 ], [ %.sroa.0.1.insert.insert30, %bb.m ], [ %.sroa.0.1.insert.insert25, %bb.k ], [ 15, %bb.j ], [ 20, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !821
  br label %_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_10AddrHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE5parseB2B_.exit.thread

_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_10AddrHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE5parseB2B_.exit: ; preds = %bb.p
  %i.bb = sub nuw i64 %i.ax, %i.aw
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw
  store ptr %i.bc, ptr %.sroa.011.sroa.8.0..sroa_idx.i, align 8, !alias.scope !875, !noalias !880, !captures !37
  store i64 %i.bb, ptr %.sroa.011.sroa.9.0..sroa_idx.i, align 8, !alias.scope !875, !noalias !880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.30, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !818
  %.sroa.31.16.copyload = load i8, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !818 ; 2 uses
  %.sroa.41.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.41, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.41.16..sroa_idx, i64 7, i1 false), !noalias !818
  %.sroa.23.sroa.0.0.extract.trunc20 = trunc i64 %.sroa.071.0.copyload.i to i8
  %.sroa.23.sroa.12.0.extract.shift33 = lshr i64 %.sroa.071.0.copyload.i, 8
  %.sroa.23.sroa.12.0.extract.trunc34 = trunc nuw i64 %.sroa.23.sroa.12.0.extract.shift33 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !821
  %i.bd = icmp eq i8 %.sroa.31.16.copyload, 2
  br i1 %i.bd, label %_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_10AddrHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE5parseB2B_.exit.thread, label %bb.t

bb.s:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.v

_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_10AddrHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE5parseB2B_.exit.thread: ; preds = %bb.r, %bb.c, %_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_10AddrHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE5parseB2B_.exit
  %.sroa.0.sroa.22.199 = phi i64 [ %i.i, %_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_10AddrHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE5parseB2B_.exit ], [ %.sroa.0.0, %bb.r ], [ %.sroa.071.0.copyload.i, %bb.c ]
  %.sroa.23.sroa.0.1106 = phi i8 [ %.sroa.23.sroa.0.0.extract.trunc20, %_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_10AddrHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE5parseB2B_.exit ], [ %.sroa.0.sroa.0.0, %bb.r ], [ %.sroa.472.0.copyload.i, %bb.c ]
  %.sroa.23.sroa.12.sroa.0.1105 = phi i56 [ %.sroa.23.sroa.12.0.extract.trunc34, %_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_10AddrHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE5parseB2B_.exit ], [ %.sroa.23.sroa.12.sroa.0.0, %bb.r ], [ %.sroa.23.sroa.12.sroa.0.0.copyload, %bb.c ]
  %.sroa.23.sroa.12.0.insert.ext23 = zext i56 %.sroa.23.sroa.12.sroa.0.1105 to i64
  %.sroa.23.sroa.12.0.insert.shift24 = shl nuw i64 %.sroa.23.sroa.12.0.insert.ext23, 8
  %.sroa.23.sroa.0.0.insert.ext14 = zext i8 %.sroa.23.sroa.0.1106 to i64
  %.sroa.23.sroa.0.0.insert.insert16 = or disjoint i64 %.sroa.23.sroa.12.0.insert.shift24, %.sroa.23.sroa.0.0.insert.ext14
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.be, align 8, !alias.scope !883
  store i64 0, ptr %i.g, align 8, !alias.scope !883
  store i64 %.sroa.0.sroa.22.199, ptr %0, align 8
  %.sroa.489.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.23.sroa.0.0.insert.insert16, ptr %.sroa.489.0..sroa_idx.a, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 -1, ptr %i.bf, align 8
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_10AddrHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE5parseB2B_.exit
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.581.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.30, i64 48, i1 false)
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.783.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.41, i64 7, i1 false)
  %.val = load i64, ptr %i.g, align 8, !noundef !11
  %i.bg = sub i64 %.val2, %.val
  %i.bh = load i64, ptr %1, align 8, !alias.scope !888, !noundef !11
  %i.bi = add i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %1, align 8, !alias.scope !888
  store i64 %i.i, ptr %0, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.071.0.copyload.i, ptr %.sroa.480.0..sroa_idx, align 8
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sroa.31.16.copyload, ptr %.sroa.682.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.al, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %.sroa.472.0.copyload.i, ptr %.sroa.985.0..sroa_idx, align 1
  %.sroa.1086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 74
  store i16 5, ptr %.sroa.1086.0..sroa_idx, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvMs4_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_10AddrHeaderINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE5parseB2B_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtCsi68uqYEhoRA_5gimli4read3strINtB5_15DebugStrOffsetsINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE14get_str_offsetB2F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, i8 noundef range(i8 4, 9) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !896, !noalias !899, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load i8, ptr %i.e, align 8, !range !12, !alias.scope !896, !noalias !899, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !901, !noalias !904, !nonnull !11, !noundef !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !901, !noalias !904, !noundef !11 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i1.i = load i8, ptr %i.j, align 8, !range !12, !alias.scope !901, !noalias !904, !noundef !11
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !891, !noalias !894
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %.val.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !891, !noalias !894
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %.val.i1.i, ptr %.sroa.54.0..sroa_idx.i, align 16, !alias.scope !891, !noalias !894
  %i.l = load <2 x ptr>, ptr %1, align 8, !alias.scope !894, !noalias !891
  store <2 x ptr> %i.l, ptr %i.b, align 16, !alias.scope !891, !noalias !894
  %i.m = icmp ult i64 %i.i, %3
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.g to i64
  store i8 17, ptr %0, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %.sroa.572.0..sroa_idx, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.o = sub nuw i64 %i.i, %3                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %3 ; 2 uses
  %i.q = zext nneg i8 %2 to i64
  %i.r = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %i.q) ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %bb.k, label %bb.d, !prof !718

bb.d:                                             ; preds = %bb.c
  %i.t = extractvalue { i64, i1 } %i.r, 0         ; 3 uses
  %i.u = icmp ult i64 %i.o, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = ptrtoint ptr %i.p to i64
  store i8 17, ptr %0, align 8
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %.sroa.587.0..sroa_idx, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.w = sub nuw i64 %i.o, %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t
  store ptr %i.x, ptr %i.k, align 16, !alias.scope !906, !noalias !911, !captures !37
  store i64 %i.w, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !906, !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b, i8 noundef %2)
  %i.y = load i8, ptr %i.a, align 8, !range !127, !noundef !11
  %.not48 = icmp eq i8 %i.y, -1
  br i1 %.not48, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.k, %bb.e, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %bb.c
  store i8 50, ptr %0, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCsi68uqYEhoRA_5gimli4read4addrINtB5_13AddrEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !noundef !11
  %i.c = icmp eq i64 %.val, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i8, ptr %i.d, align 8, !noundef !11
  call void @_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader12read_addressB2c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i8 noundef %i.e)
  %i.f = load i8, ptr %i.a, align 8, !range !127, !noundef !11
  %.not = icmp eq i8 %i.f, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8, !alias.scope !914
  store i64 0, ptr %i.b, align 8, !alias.scope !914
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ 0, %bb.e ], [ 1, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read8pubnamesINtB5_15PubNamesSetIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 16), (88, 89)) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %.sroa.04 = alloca [88 x i8], align 8           ; 4 uses
  %.sroa.58 = alloca [7 x i8], align 1            ; 4 uses
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  call fastcc void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB4_10PubSetIterINtNtB6_8relocate14RelocateReaderINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2C_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.a, ptr noalias nofree noundef align 8 dereferenceable(64) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load i8, ptr %i.b, align 8, !range !742, !noundef !11 ; 3 uses
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 -1, ptr %i.e, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RNvMsQ_NtNtCsi68uqYEhoRA_5gimli4read3cfiINtB5_24CallFrameInstructionIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2O_:bb.a
  br label %_RINvMsP_NtNtCsi68uqYEhoRA_5gimli4read3cfiINtB6_20CallFrameInstructionjE5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2T_.exit

bb.dp:                                            ; preds = %bb.ad
  %.sroa.41250.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.41250.0.copyload.i = load i8, ptr %.sroa.41250.0..sroa_idx.i, align 1, !noalias !974
  %.sroa.51251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.51251.0.copyload.i = load i16, ptr %.sroa.51251.0..sroa_idx.i, align 2, !noalias !974
  %.sroa.61252.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.61252.sroa.0.0.copyload.i = load i32, ptr %.sroa.61252.0..sroa_idx.i, align 4, !noalias !974
  %.sroa.61252.sroa.4.0..sroa.61252.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.61252.sroa.4.0.copyload.i = load i64, ptr %.sroa.61252.sroa.4.0..sroa.61252.0..sroa_idx.sroa_idx.i, align 8, !noalias !974
  br label %bb.ds

bb.dq:                                            ; preds = %bb.ad
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !974, !noundef !11 ; 3 uses
  %i.gn = trunc nuw i64 %i.gm to i16
  %i.go = icmp ult i64 %i.gm, 65536
  br i1 %i.go, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !974
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader12read_uleb128B26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ah), !noalias !945
  %i.gp = load i8, ptr %i.c, align 8, !range !127, !noalias !974, !noundef !11 ; 2 uses
  %.not1308.i = icmp eq i8 %i.gp, -1
  br i1 %.not1308.i, label %bb.du, label %bb.dt

bb.ds:                                            ; preds = %bb.dq, %bb.dp
  %.sroa.0690.0.i = phi i8 [ %i.ca, %bb.dp ], [ 57, %bb.dq ]
  %.sroa.7693.0.i = phi i8 [ %.sroa.41250.0.copyload.i, %bb.dp ], [ undef, %bb.dq ]
  %.sroa.7698.0.i = phi i16 [ %.sroa.51251.0.copyload.i, %bb.dp ], [ undef, %bb.dq ]
  %.sroa.9703.sroa.0.0.i = phi i32 [ %.sroa.61252.sroa.0.0.copyload.i, %bb.dp ], [ undef, %bb.dq ]
  %.sroa.9703.sroa.6.0.i = phi i64 [ %.sroa.61252.sroa.4.0.copyload.i, %bb.dp ], [ %i.gm, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !974
  %.sroa.89.sroa.89.0.insert.ext188 = zext i16 %.sroa.7698.0.i to i48
  %.sroa.89.sroa.89.2.insert.ext = zext i32 %.sroa.9703.sroa.0.0.i to i48
  %.sroa.89.sroa.89.2.insert.shift = shl nuw i48 %.sroa.89.sroa.89.2.insert.ext, 16
  %.sroa.89.sroa.89.2.insert.insert = or disjoint i48 %.sroa.89.sroa.89.2.insert.shift, %.sroa.89.sroa.89.0.insert.ext188
  br label %bb.dz

bb.dt:                                            ; preds = %bb.dr
  %.sroa.41409.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.89.sroa.56.1.copyload113 = load i8, ptr %.sroa.41409.0..sroa_idx.i, align 1, !noalias !975
  %.sroa.89.sroa.89.1..sroa.41409.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.sroa.89.sroa.89.1.copyload159 = load i48, ptr %.sroa.89.sroa.89.1..sroa.41409.0..sroa_idx.i.sroa_idx, align 2, !noalias !975
  %.sroa.51410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.51410.0.copyload.i = load i64, ptr %.sroa.51410.0..sroa_idx.i, align 8, !noalias !974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !974
  br label %bb.dz

bb.du:                                            ; preds = %bb.dr
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !974, !noundef !11 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !974
  %.val.i = load ptr, ptr %i.at, align 8, !alias.scope !942, !noalias !977, !nonnull !11, !noundef !11 ; 2 uses
  %i.gs = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.gt = load i64, ptr %i.ai, align 8, !alias.scope !994, !noalias !999, !noundef !11 ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.gr
  br i1 %i.gu, label %bb.dz, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !alias.scope !945, !noalias !976, !nonnull !11, !align !143, !noundef !11
  %i.gx = getelementptr i8, ptr %i.gw, i64 32
  %.val1343.i = load ptr, ptr %i.gx, align 8, !noalias !945, !nonnull !11, !noundef !11
  %i.gy = ptrtoint ptr %.val1343.i to i64
  %i.gz = sub i64 %i.gs, %i.gy                    ; 2 uses
  %i.ha = sub nuw i64 %i.gt, %i.gr
  %i.hb = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.gr
  store ptr %i.hb, ptr %i.at, align 8, !alias.scope !994, !noalias !999, !captures !37
  store i64 %i.ha, ptr %i.ai, align 8, !alias.scope !994, !noalias !999
  %.sroa.89.sroa.89.0.extract.shift127 = and i64 %i.gz, -65536
  br label %_RINvMsP_NtNtCsi68uqYEhoRA_5gimli4read3cfiINtB6_20CallFrameInstructionjE5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2T_.exit

bb.dw:                                            ; preds = %bb.ae
  %.sroa.41288.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.89.sroa.56.1.copyload = load i8, ptr %.sroa.41288.0..sroa_idx.i, align 1, !noalias !975
  %.sroa.89.sroa.89.1..sroa.41288.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.89.sroa.89.1.copyload = load i48, ptr %.sroa.89.sroa.89.1..sroa.41288.0..sroa_idx.i.sroa_idx, align 2, !noalias !975
  %.sroa.51289.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.51289.0.copyload.i = load i64, ptr %.sroa.51289.0..sroa_idx.i, align 8, !noalias !974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !974
  br label %bb.dz

bb.dx:                                            ; preds = %bb.ae
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !noalias !974, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !974
  %.sroa.89.sroa.89.0.extract.shift = and i64 %i.hd, -65536
  br label %_RINvMsP_NtNtCsi68uqYEhoRA_5gimli4read3cfiINtB6_20CallFrameInstructionjE5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2T_.exit

bb.dy:                                            ; preds = %bb.a
  store i16 -1, ptr %0, align 8
  br label %bb.ea

bb.dz:                                            ; preds = %bb.e, %bb.dw, %bb.h, %bb.al, %bb.an, %bb.ap, %bb.ar, %bb.ax, %bb.aw, %bb.bc, %bb.bg, %bb.bk, %bb.bs, %bb.bo, %bb.bx, %bb.bw, %bb.cc, %bb.cd, %bb.ai, %bb.cf, %bb.cg, %bb.cm, %bb.cl, %bb.ct, %bb.cs, %bb.cz, %bb.cy, %bb.db, %bb.dh, %bb.dg, %bb.dn, %bb.dm, %bb.cn, %bb.dt, %bb.ds, %bb.af, %bb.aj, %bb.du
  %.sroa.89.sroa.89.1.ph = phi i48 [ undef, %bb.du ], [ %.sroa.89.sroa.89.0.extract.trunc152, %bb.ai ], [ undef, %bb.af ], [ %.sroa.89.sroa.89.2.insert.insert, %bb.ds ], [ %.sroa.89.sroa.89.1.copyload159, %bb.dt ], [ undef, %bb.cn ], [ %.sroa.89.sroa.89.2.insert.insert255, %bb.dm ], [ %.sroa.89.sroa.89.1.copyload160, %bb.dn ], [ %.sroa.89.sroa.89.2.insert.insert260, %bb.dg ], [ %.sroa.89.sroa.89.1.copyload161, %bb.dh ], [ %.sroa.89.sroa.89.1.copyload162, %bb.db ], [ %.sroa.89.sroa.89.2.insert.insert265, %bb.cy ], [ %.sroa.89.sroa.89.1.copyload163, %bb.cz ], [ %.sroa.89.sroa.89.2.insert.insert270, %bb.cs ], [ %.sroa.89.sroa.89.1.copyload164, %bb.ct ], [ %.sroa.89.sroa.89.2.insert.insert275, %bb.cl ], [ %.sroa.89.sroa.89.1.copyload165, %bb.cm ], [ undef, %bb.cg ], [ %.sroa.89.sroa.89.1.copyload166, %bb.cf ], [ undef, %bb.aj ], [ %.sroa.89.sroa.89.1.copyload167, %bb.cd ], [ %.sroa.89.sroa.89.2.insert.insert280, %bb.cc ], [ %.sroa.89.sroa.89.2.insert.insert285, %bb.bw ], [ %.sroa.89.sroa.89.1.copyload168, %bb.bx ], [ %.sroa.89.sroa.89.2.insert.insert290, %bb.bo ], [ %.sroa.89.sroa.89.2.insert.insert295, %bb.bs ], [ %.sroa.89.sroa.89.2.insert.insert300, %bb.bk ], [ %.sroa.89.sroa.89.2.insert.insert305, %bb.bg ], [ %.sroa.89.sroa.89.2.insert.insert310, %bb.bc ], [ %.sroa.89.sroa.89.2.insert.insert315, %bb.aw ], [ %.sroa.89.sroa.89.1.copyload169, %bb.ax ], [ %.sroa.89.sroa.89.2.insert.insert320, %bb.ar ], [ %.sroa.89.sroa.89.0.insert.insert246, %bb.ap ], [ %.sroa.89.sroa.89.2.copyload, %bb.an ], [ %.sroa.89.sroa.89.1.copyload170, %bb.al ], [ undef, %bb.h ], [ %.sroa.89.sroa.89.1.copyload, %bb.dw ], [ %.sroa.89.sroa.89.1.copyload171, %bb.e ]
  %.sroa.89.sroa.56.1.ph = phi i8 [ undef, %bb.du ], [ %.sroa.89.sroa.56.0.extract.trunc106, %bb.ai ], [ 45, %bb.af ], [ %.sroa.7693.0.i, %bb.ds ], [ %.sroa.89.sroa.56.1.copyload113, %bb.dt ], [ undef, %bb.cn ], [ %.sroa.7648.0.i, %bb.dm ], [ %.sroa.89.sroa.56.1.copyload114, %bb.dn ], [ %.sroa.7603.0.i, %bb.dg ], [ %.sroa.89.sroa.56.1.copyload115, %bb.dh ], [ %.sroa.89.sroa.56.1.copyload116, %bb.db ], [ %.sroa.7544.0.i, %bb.cy ], [ %.sroa.89.sroa.56.1.copyload117, %bb.cz ], [ %.sroa.7499.0.i, %bb.cs ], [ %.sroa.89.sroa.56.1.copyload118, %bb.ct ], [ %.sroa.7454.0.i, %bb.cl ], [ %.sroa.89.sroa.56.1.copyload119, %bb.cm ], [ undef, %bb.cg ], [ %.sroa.89.sroa.56.1.copyload120, %bb.cf ], [ undef, %bb.aj ], [ %.sroa.89.sroa.56.1.copyload121, %bb.cd ], [ %.sroa.7393.0.i, %bb.cc ], [ %.sroa.7348.0.i, %bb.bw ], [ %.sroa.89.sroa.56.1.copyload122, %bb.bx ], [ %.sroa.7280.0.i, %bb.bo ], [ %.sroa.7310.0.i, %bb.bs ], [ %.sroa.7247.0.i, %bb.bk ], [ %.sroa.7214.0.i, %bb.bg ], [ %.sroa.7181.0.i, %bb.bc ], [ %.sroa.7136.0.i, %bb.aw ], [ %.sroa.89.sroa.56.1.copyload123, %bb.ax ], [ %.sroa.89.sroa.56.1.copyload126, %bb.ar ], [ %.sroa.4803.0.copyload.i, %bb.ap ], [ %i.bi, %bb.an ], [ %.sroa.89.sroa.56.1.copyload124, %bb.al ], [ %.sroa.0.0.copyload.i.i.i, %bb.h ], [ %.sroa.89.sroa.56.1.copyload, %bb.dw ], [ %.sroa.89.sroa.56.1.copyload125, %bb.e ]
  %.sroa.89.sroa.0.1.ph = phi i8 [ 17, %bb.du ], [ %.sroa.89.sroa.0.0.extract.trunc76, %bb.ai ], [ 44, %bb.af ], [ %.sroa.0690.0.i, %bb.ds ], [ %i.gp, %bb.dt ], [ 17, %bb.cn ], [ %.sroa.0645.0.i, %bb.dm ], [ %i.gi, %bb.dn ], [ %.sroa.0600.0.i, %bb.dg ], [ %i.gb, %bb.dh ], [ %i.bx, %bb.db ], [ %.sroa.0541.0.i, %bb.cy ], [ %i.fs, %bb.cz ], [ %.sroa.0496.0.i, %bb.cs ], [ %i.fl, %bb.ct ], [ %.sroa.0451.0.i, %bb.cl ], [ %i.eu, %bb.cm ], [ 17, %bb.cg ], [ %i.bt, %bb.cf ], [ 56, %bb.aj ], [ %i.bs, %bb.cd ], [ %.sroa.0390.0.i, %bb.cc ], [ %.sroa.0345.0.i, %bb.bw ], [ %i.dv, %bb.bx ], [ %.sroa.0277.0.i, %bb.bo ], [ %.sroa.0307.0.i, %bb.bs ], [ %.sroa.0244.0.i, %bb.bk ], [ %.sroa.0211.0.i, %bb.bg ], [ %.sroa.0178.0.i, %bb.bc ], [ %.sroa.0133.0.i, %bb.aw ], [ %i.ct, %bb.ax ], [ %i.bk, %bb.ar ], [ %i.bj, %bb.ap ], [ %i.bg, %bb.an ], [ %i.ch, %bb.al ], [ 44, %bb.h ], [ %i.cb, %bb.dw ], [ %i.az, %bb.e ]
  %.sroa.208.1.ph = phi i64 [ %i.gs, %bb.du ], [ %.sroa.4765.0.copyload.i, %bb.ai ], [ undef, %bb.af ], [ %.sroa.9703.sroa.6.0.i, %bb.ds ], [ %.sroa.51410.0.copyload.i, %bb.dt ], [ %i.ex, %bb.cn ], [ %.sroa.9658.sroa.6.0.i, %bb.dm ], [ %.sroa.51245.0.copyload.i, %bb.dn ], [ %.sroa.9613.sroa.6.0.i, %bb.dg ], [ %.sroa.51210.0.copyload.i, %bb.dh ], [ %.sroa.51175.0.copyload.i, %bb.db ], [ %.sroa.9554.sroa.6.0.i, %bb.cy ], [ %.sroa.51166.0.copyload.i, %bb.cz ], [ %.sroa.9509.sroa.6.0.i, %bb.cs ], [ %.sroa.51131.0.copyload.i, %bb.ct ], [ %.sroa.9464.sroa.6.0.i, %bb.cl ], [ %.sroa.51392.0.copyload.i, %bb.cm ], [ %i.eg, %bb.cg ], [ %.sroa.5.0.copyload.i, %bb.cf ], [ undef, %bb.aj ], [ %.sroa.51052.0.copyload.i, %bb.cd ], [ %.sroa.9403.sroa.6.0.i, %bb.cc ], [ %.sroa.9358.sroa.6.0.i, %bb.bw ], [ %.sroa.51017.0.copyload.i, %bb.bx ], [ %.sroa.9290.sroa.6.0.i, %bb.bo ], [ %.sroa.9320.sroa.6.0.i, %bb.bs ], [ %.sroa.9257.sroa.6.0.i, %bb.bk ], [ %.sroa.9224.sroa.6.0.i, %bb.bg ], [ %.sroa.9191.sroa.6.0.i, %bb.bc ], [ %.sroa.9146.sroa.6.0.i, %bb.aw ], [ %.sroa.5852.0.copyload.i, %bb.ax ], [ %.sroa.6817.0.copyload.i, %bb.ar ], [ %.sroa.208.12.copyload, %bb.ap ], [ %.sroa.208.10.copyload, %bb.an ], [ %.sroa.5785.0.copyload.i, %bb.al ], [ undef, %bb.h ], [ %.sroa.51289.0.copyload.i, %bb.dw ], [ %.sroa.5758.0.copyload.i, %bb.e ]
  %.sroa.89.sroa.89.0.insert.ext155 = zext i48 %.sroa.89.sroa.89.1.ph to i64
  %.sroa.89.sroa.89.0.insert.shift156 = shl nuw i64 %.sroa.89.sroa.89.0.insert.ext155, 16
  %.sroa.89.sroa.56.0.insert.ext109 = zext i8 %.sroa.89.sroa.56.1.ph to i64
  %.sroa.89.sroa.56.0.insert.shift110 = shl nuw nsw i64 %.sroa.89.sroa.56.0.insert.ext109, 8
  %.sroa.89.sroa.56.0.insert.insert112 = or disjoint i64 %.sroa.89.sroa.56.0.insert.shift110, %.sroa.89.sroa.89.0.insert.shift156
  %.sroa.89.sroa.0.0.insert.ext78 = zext i8 %.sroa.89.sroa.0.1.ph to i64
  %.sroa.89.sroa.0.0.insert.insert80 = or disjoint i64 %.sroa.89.sroa.56.0.insert.insert112, %.sroa.89.sroa.0.0.insert.ext78
  store ptr inttoptr (i64 1 to ptr), ptr %i.at, align 8, !alias.scope !1002
  store i64 0, ptr %i.ai, align 8, !alias.scope !1002
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.89.sroa.0.0.insert.insert80, ptr %i.he, align 8
  %.sroa.4343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.208.1.ph, ptr %.sroa.4343.0..sroa_idx, align 8
  store i16 -2, ptr %0, align 8
  br label %bb.ea

_RINvMsP_NtNtCsi68uqYEhoRA_5gimli4read3cfiINtB6_20CallFrameInstructionjE5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2T_.exit: ; preds = %bb.af, %bb.h, %bb.dx, %bb.dv, %bb.do, %bb.di, %bb.dc, %bb.da, %bb.cu, %bb.co, %bb.ch, %bb.ce, %bb.cb, %bb.by, %bb.br, %bb.bj, %bb.bf, %bb.bb, %bb.ay, %bb.as, %bb.aq, %bb.ao, %bb.ak, %bb.s, %bb.r, %bb.g, %bb.f, %bb.c
  %.sroa.84.sroa.0.0 = phi i16 [ undef, %bb.h ], [ %.sroa.84.sroa.0.0.extract.trunc329, %bb.c ], [ undef, %bb.f ], [ undef, %bb.r ], [ undef, %bb.g ], [ undef, %bb.s ], [ undef, %bb.co ], [ undef, %bb.by ], [ undef, %bb.ak ], [ undef, %bb.dv ], [ %.sroa.84.sroa.0.0.extract.trunc328, %bb.ao ], [ undef, %bb.dc ], [ %i.cm, %bb.aq ], [ undef, %bb.cb ], [ %.sroa.84.sroa.0.0.extract.trunc, %bb.as ], [ undef, %bb.cu ], [ undef, %bb.ay ], [ undef, %bb.ce ], [ undef, %bb.do ], [ undef, %bb.bb ], [ undef, %bb.di ], [ undef, %bb.bf ], [ undef, %bb.ch ], [ undef, %bb.bj ], [ undef, %bb.da ], [ %i.dq, %bb.br ], [ undef, %bb.dx ], [ undef, %bb.af ]
  %.sroa.84.sroa.8.0 = phi i32 [ 0, %bb.h ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.r ], [ 0, %bb.g ], [ 0, %bb.s ], [ 0, %bb.co ], [ 0, %bb.by ], [ 0, %bb.ak ], [ 0, %bb.dv ], [ 0, %bb.ao ], [ 0, %bb.dc ], [ 0, %bb.aq ], [ 0, %bb.cb ], [ %.sroa.84.sroa.8.0.extract.shift, %bb.as ], [ 0, %bb.cu ], [ 0, %bb.ay ], [ 0, %bb.ce ], [ 0, %bb.do ], [ 0, %bb.bb ], [ 0, %bb.di ], [ 0, %bb.bf ], [ 0, %bb.ch ], [ 0, %bb.bj ], [ 0, %bb.da ], [ 0, %bb.br ], [ 0, %bb.dx ], [ 0, %bb.af ]
  %.sroa.89.sroa.89.1 = phi i64 [ 0, %bb.h ], [ 0, %bb.c ], [ %.sroa.89.sroa.89.0.extract.shift153, %bb.f ], [ 0, %bb.r ], [ 0, %bb.g ], [ 0, %bb.s ], [ %.sroa.89.sroa.89.0.extract.shift139, %bb.co ], [ %.sroa.89.sroa.89.0.extract.shift145, %bb.by ], [ %.sroa.89.sroa.89.0.extract.shift149, %bb.ak ], [ %.sroa.89.sroa.89.0.extract.shift127, %bb.dv ], [ 0, %bb.ao ], [ %.sroa.89.sroa.89.0.extract.shift133, %bb.dc ], [ 0, %bb.aq ], [ 0, %bb.cb ], [ 0, %bb.as ], [ %.sroa.89.sroa.89.0.extract.shift137, %bb.cu ], [ %.sroa.89.sroa.89.0.extract.shift147, %bb.ay ], [ %.sroa.89.sroa.89.0.extract.shift143, %bb.ce ], [ %.sroa.89.sroa.89.0.extract.shift129, %bb.do ], [ 0, %bb.bb ], [ %.sroa.89.sroa.89.0.extract.shift131, %bb.di ], [ 0, %bb.bf ], [ %.sroa.89.sroa.89.0.extract.shift141, %bb.ch ], [ 0, %bb.bj ], [ %.sroa.89.sroa.89.0.extract.shift135, %bb.da ], [ 0, %bb.br ], [ %.sroa.89.sroa.89.0.extract.shift, %bb.dx ], [ 0, %bb.af ]
  %.sroa.89.sroa.0.1 = phi i64 [ 0, %bb.h ], [ 0, %bb.c ], [ %i.bd, %bb.f ], [ 0, %bb.r ], [ 0, %bb.g ], [ 0, %bb.s ], [ %i.fe, %bb.co ], [ %i.dx, %bb.by ], [ %.sroa.068.0.i, %bb.ak ], [ %i.gz, %bb.dv ], [ 0, %bb.ao ], [ %i.fw, %bb.dc ], [ 0, %bb.aq ], [ 0, %bb.cb ], [ 0, %bb.as ], [ %i.fn, %bb.cu ], [ %i.cv, %bb.ay ], [ %i.ed, %bb.ce ], [ %i.gk, %bb.do ], [ 0, %bb.bb ], [ %i.gd, %bb.di ], [ 0, %bb.bf ], [ %i.en, %bb.ch ], [ 0, %bb.bj ], [ %i.fu, %bb.da ], [ 0, %bb.br ], [ %i.hd, %bb.dx ], [ 0, %bb.af ]
  %.sroa.208.1 = phi i64 [ undef, %bb.h ], [ undef, %bb.c ], [ undef, %bb.f ], [ undef, %bb.r ], [ undef, %bb.g ], [ undef, %bb.s ], [ %i.ew, %bb.co ], [ undef, %bb.by ], [ undef, %bb.ak ], [ %i.gr, %bb.dv ], [ undef, %bb.ao ], [ undef, %bb.dc ], [ undef, %bb.aq ], [ undef, %bb.cb ], [ undef, %bb.as ], [ undef, %bb.cu ], [ undef, %bb.ay ], [ undef, %bb.ce ], [ undef, %bb.do ], [ undef, %bb.bb ], [ undef, %bb.di ], [ undef, %bb.bf ], [ %i.ef, %bb.ch ], [ undef, %bb.bj ], [ undef, %bb.da ], [ undef, %bb.br ], [ undef, %bb.dx ], [ undef, %bb.af ]
  %.sroa.69.0 = phi i16 [ undef, %bb.h ], [ undef, %bb.c ], [ %i.bb, %bb.f ], [ undef, %bb.r ], [ %i.bf, %bb.g ], [ undef, %bb.s ], [ %i.es, %bb.co ], [ %i.dt, %bb.by ], [ undef, %bb.ak ], [ %i.gn, %bb.dv ], [ undef, %bb.ao ], [ undef, %bb.dc ], [ undef, %bb.aq ], [ %i.eb, %bb.cb ], [ undef, %bb.as ], [ %i.fj, %bb.cu ], [ %i.cr, %bb.ay ], [ undef, %bb.ce ], [ %i.gg, %bb.do ], [ %i.cz, %bb.bb ], [ %i.fz, %bb.di ], [ %i.dd, %bb.bf ], [ undef, %bb.ch ], [ %i.dh, %bb.bj ], [ %i.fq, %bb.da ], [ %i.dk, %bb.br ], [ undef, %bb.dx ], [ undef, %bb.af ]
  %.sroa.0.0 = phi i16 [ 22, %bb.h ], [ 1, %bb.c ], [ 10, %bb.f ], [ 18, %bb.r ], [ 17, %bb.g ], [ 19, %bb.s ], [ 15, %bb.co ], [ 2, %bb.by ], [ 0, %bb.ak ], [ 16, %bb.dv ], [ 1, %bb.ao ], [ 6, %bb.dc ], [ 1, %bb.aq ], [ 4, %bb.cb ], [ 1, %bb.as ], [ 11, %bb.cu ], [ 10, %bb.ay ], [ 5, %bb.ce ], [ 13, %bb.do ], [ 17, %bb.bb ], [ 12, %bb.di ], [ 8, %bb.bf ], [ 7, %bb.ch ], [ 9, %bb.bj ], [ 3, %bb.da ], [ 14, %bb.br ], [ 20, %bb.dx ], [ 21, %bb.af ]
  %.sroa.84.sroa.0.0.insert.ext = zext i16 %.sroa.84.sroa.0.0 to i32
  %.sroa.84.sroa.0.0.insert.insert = or disjoint i32 %.sroa.84.sroa.8.0, %.sroa.84.sroa.0.0.insert.ext
  %i.hf = and i64 %.sroa.89.sroa.0.1, 65535
  %.sroa.89.sroa.0.0.insert.insert = or disjoint i64 %i.hf, %.sroa.89.sroa.89.1
  store i16 %.sroa.0.0, ptr %0, align 8
  %.sroa.4338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.69.0, ptr %.sroa.4338.0..sroa_idx, align 2
  %.sroa.5339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.84.sroa.0.0.insert.insert, ptr %.sroa.5339.0..sroa_idx, align 4
  %.sroa.6340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.89.sroa.0.0.insert.insert, ptr %.sroa.6340.0..sroa_idx, align 8
  %.sroa.7341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.208.1, ptr %.sroa.7341.0..sroa_idx, align 8
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %_RINvMsP_NtNtCsi68uqYEhoRA_5gimli4read3cfiINtB6_20CallFrameInstructionjE5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2T_.exit, %bb.dy
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read3strINtB4_8DebugStrINtNtB6_8relocate14RelocateReaderINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE7get_strB2w_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1012, !noalias !1015, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load i8, ptr %i.d, align 8, !range !12, !alias.scope !1012, !noalias !1015, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1017, !noalias !1020, !nonnull !11, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1017, !noalias !1020, !noundef !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i1.i = load i8, ptr %i.i, align 8, !range !12, !alias.scope !1017, !noalias !1020, !noundef !11
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !1007, !noalias !1010
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.val.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1007, !noalias !1010
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 %.val.i1.i, ptr %.sroa.54.0..sroa_idx.i, align 16, !alias.scope !1007, !noalias !1010
  %i.j = load <2 x ptr>, ptr %1, align 8, !alias.scope !1010, !noalias !1007
  store <2 x ptr> %i.j, ptr %i.a, align 16, !alias.scope !1007, !noalias !1010
  %i.k = icmp ult i64 %i.h, %2
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.f to i64
  store i8 17, ptr %0, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %.sroa.514.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 2, ptr %i.m, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = sub nuw i64 %i.h, %2
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %2
  store ptr %i.p, ptr %i.n, align 16, !alias.scope !1022, !noalias !1027, !captures !37
  store i64 %i.o, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !1022, !noalias !1027
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader26read_null_terminated_sliceB26_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB4_10PubSetIterINtNtB6_8relocate14RelocateReaderINtNtB6_12endian_slice11EndianSliceNtNtB8_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2C_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) initializes((88, 89)) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [56 x i8], align 8                ; 14 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.27 = alloca [53 x i8], align 1           ; 3 uses
  %.sroa.36 = alloca [7 x i8], align 1            ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.val = load i64, ptr %i.f, align 8, !noundef !11
  %i.g = icmp eq i64 %.val, 0
  br i1 %i.g, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1033
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader19read_initial_lengthB26_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1035
  %i.h = load i64, ptr %i.e, align 8, !range !8, !noalias !1033, !noundef !11
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.073.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !1033 ; 8 uses
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.474.0.copyload.i = load i8, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !1033 ; 4 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %.sroa.16.sroa.11.sroa.0.0.copyload = load i56, ptr %.sroa.575.0..sroa_idx.i, align 1, !noalias !1030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1033
  br label %_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read6lookupNtB6_12PubSetHeader5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2L_.exit.thread

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1033
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1036, !noalias !1043, !nonnull !11, !noundef !11 ; 5 uses
  %i.m = load i64, ptr %i.f, align 8, !alias.scope !1036, !noalias !1043, !noundef !11 ; 2 uses
  %i.n = icmp ult i64 %i.m, %.sroa.073.0.copyload.i
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = ptrtoint ptr %i.l to i64                 ; 2 uses
  %.sroa.16.sroa.0.0.extract.trunc21 = trunc i64 %i.o to i8
  %.sroa.16.sroa.11.0.extract.shift34 = lshr i64 %i.o, 8
  %.sroa.16.sroa.11.0.extract.trunc35 = trunc nuw i64 %.sroa.16.sroa.11.0.extract.shift34 to i56
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %1, align 8, !alias.scope !1047, !noalias !1050, !nonnull !11, !align !143, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i1.i.i.i = load i8, ptr %i.q, align 8, !range !12, !alias.scope !1036, !noalias !1043, !noundef !11 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i = load i8, ptr %i.r, align 8, !range !12, !alias.scope !1051, !noalias !1054, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1051, !noalias !1054, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1051, !noalias !1054, !nonnull !11, !noundef !11
  %i.w = sub nuw i64 %i.m, %.sroa.073.0.copyload.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.073.0.copyload.i
  store ptr %i.x, ptr %i.k, align 8, !alias.scope !1056, !noalias !1059, !captures !37
  store i64 %i.w, ptr %i.f, align 8, !alias.scope !1056, !noalias !1059
  %i.y = ptrtoint ptr %i.v to i64
  store ptr %i.p, ptr %i.d, align 8, !noalias !1033
  %.sroa.011.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.y, ptr %.sroa.011.sroa.4.0..sroa_idx.i, align 8, !noalias !1033
  %.sroa.011.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.t, ptr %.sroa.011.sroa.5.0..sroa_idx.i, align 8, !noalias !1033
  %.sroa.011.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 %.val.i.i.i.i, ptr %.sroa.011.sroa.6.0..sroa_idx.i, align 8, !noalias !1033
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i8 %.val.i1.i.i.i, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !1033
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1067
  %i.z = tail call noundef i16 @_RNvXs13_NtCskKLDkoKarTP_4core5arrayAhj2_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !1070
  store i16 %i.z, ptr %i.a, align 2, !noalias !1067
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %i.aa = icmp ugt i64 %.sroa.073.0.copyload.i, 1
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = ptrtoint ptr %i.l to i64                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1067
  %.sroa.16.sroa.0.0.extract.trunc = trunc i64 %i.ab to i8
  %.sroa.16.sroa.11.0.extract.shift = lshr i64 %i.ab, 8
  %.sroa.16.sroa.11.0.extract.trunc = trunc nuw i64 %.sroa.16.sroa.11.0.extract.shift to i56
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %.sroa.011.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.011.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ac = add i64 %.sroa.073.0.copyload.i, -2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.ad, ptr %.sroa.011.sroa.8.0..sroa_idx.i, align 8, !alias.scope !1077, !noalias !1080, !captures !37
  store i64 %i.ac, ptr %.sroa.011.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1077, !noalias !1080
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 1, 9) 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef range(i64 1, 9) 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8), !noalias !1086
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.a, align 2, !noalias !1067 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1067
  %i.ae = trunc nuw i8 %.val.i1.i.i.i to i1
  %i.af = call i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i)
  %.sroa.0.0.i.i.i = select i1 %i.ae, i16 %i.af, i16 %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.ag = icmp eq i16 %.sroa.0.0.i.i.i, 2
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1033
  call void @_RNvXs0_NtNtCsi68uqYEhoRA_5gimli4read8relocateINtB5_14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader11read_offsetB2c_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d, i8 noundef %.sroa.474.0.copyload.i), !noalias !1035
  %i.ah = load i8, ptr %i.c, align 8, !range !127, !noalias !1033, !noundef !11 ; 2 uses
  %.not115.i = icmp eq i8 %i.ah, -1
  br i1 %.not115.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  %.sroa.16.sroa.0.0.extract.trunc17 = trunc i16 %.sroa.0.0.i.i.i to i8
  %i.ai = lshr i16 %.sroa.0.0.i.i.i, 8
  %.sroa.16.sroa.11.0.extract.trunc27 = zext nneg i16 %i.ai to i56
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %.sroa.495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.0.1.copyload = load i56, ptr %.sroa.495.0..sroa_idx.i, align 1, !noalias !1030
  %.sroa.0.1.insert.ext = zext i56 %.sroa.0.1.copyload to i64
  %.sroa.0.1.insert.shift = shl nuw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.sroa.15.1..sroa.495.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.596.0.copyload.i = load i64, ptr %.sroa.0.sroa.15.1..sroa.495.0..sroa_idx.i.sroa_idx, align 8, !noalias !1033 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1033
  %.sroa.0.0.insert.ext = zext nneg i8 %i.ah to i64
  %.sroa.0.0.insert.insert10 = or disjoint i64 %.sroa.0.1.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.16.sroa.0.0.extract.trunc18 = trunc i64 %.sroa.596.0.copyload.i to i8
  %.sroa.16.sroa.11.0.extract.shift28 = lshr i64 %.sroa.596.0.copyload.i, 8
  %.sroa.16.sroa.11.0.extract.trunc29 = trunc nuw i64 %.sroa.16.sroa.11.0.extract.shift28 to i56
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1033, !noundef !11 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1033
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader9read_wordB26_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d, i8 noundef range(i8 4, 9) %.sroa.474.0.copyload.i), !noalias !1035
  %i.al = load i8, ptr %i.b, align 8, !range !127, !noalias !1033, !noundef !11 ; 2 uses
  %.not116.i = icmp eq i8 %i.al, -1
  br i1 %.not116.i, label %_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read6lookupNtB6_12PubSetHeader5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2L_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.4110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.0.1.copyload19 = load i56, ptr %.sroa.4110.0..sroa_idx.i, align 1, !noalias !1030
  %.sroa.0.1.insert.ext21 = zext i56 %.sroa.0.1.copyload19 to i64
  %.sroa.0.1.insert.shift22 = shl nuw i64 %.sroa.0.1.insert.ext21, 8
  %.sroa.0.sroa.15.1..sroa.4110.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5111.0.copyload.i = load i64, ptr %.sroa.0.sroa.15.1..sroa.4110.0..sroa_idx.i.sroa_idx, align 8, !noalias !1033 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1033
  %.sroa.0.0.insert.ext12 = zext nneg i8 %i.al to i64
  %.sroa.0.0.insert.insert14 = or disjoint i64 %.sroa.0.1.insert.shift22, %.sroa.0.0.insert.ext12
  %.sroa.16.sroa.0.0.extract.trunc19 = trunc i64 %.sroa.5111.0.copyload.i to i8
  %.sroa.16.sroa.11.0.extract.shift30 = lshr i64 %.sroa.5111.0.copyload.i, 8
  %.sroa.16.sroa.11.0.extract.trunc31 = trunc nuw i64 %.sroa.16.sroa.11.0.extract.shift30 to i56
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.j, %bb.g, %bb.e
  %.sroa.16.sroa.11.sroa.0.0 = phi i56 [ %.sroa.16.sroa.11.0.extract.trunc35, %bb.e ], [ %.sroa.16.sroa.11.0.extract.trunc31, %bb.m ], [ %.sroa.16.sroa.11.0.extract.trunc29, %bb.k ], [ %.sroa.16.sroa.11.0.extract.trunc27, %bb.j ], [ %.sroa.16.sroa.11.0.extract.trunc, %bb.g ]
  %.sroa.16.sroa.0.0 = phi i8 [ %.sroa.16.sroa.0.0.extract.trunc21, %bb.e ], [ %.sroa.16.sroa.0.0.extract.trunc19, %bb.m ], [ %.sroa.16.sroa.0.0.extract.trunc18, %bb.k ], [ %.sroa.16.sroa.0.0.extract.trunc17, %bb.j ], [ %.sroa.16.sroa.0.0.extract.trunc, %bb.g ]
  %.sroa.0.0 = phi i64 [ 17, %bb.e ], [ %.sroa.0.0.insert.insert14, %bb.m ], [ %.sroa.0.0.insert.insert10, %bb.k ], [ 15, %bb.j ], [ 17, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1033
  br label %_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read6lookupNtB6_12PubSetHeader5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2L_.exit.thread

_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read6lookupNtB6_12PubSetHeader5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2L_.exit: ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noalias !1033, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1033
  %.sroa.27.32..sroa_idx10 = getelementptr inbounds nuw i8, ptr %.sroa.27, i64 5 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.27.32..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !1030
  %.sroa.29.32.copyload12 = load i8, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !1030 ; 2 uses
  %.sroa.36.32..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.d, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.36, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.36.32..sroa_idx13, i64 7, i1 false), !noalias !1030
  %.sroa.16.sroa.0.0.extract.trunc20 = trunc i64 %i.ak to i8
  %.sroa.16.sroa.11.0.extract.shift32 = lshr i64 %i.ak, 8
  %.sroa.16.sroa.11.0.extract.trunc33 = trunc nuw i64 %.sroa.16.sroa.11.0.extract.shift32 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1033
  %i.ao = icmp eq i8 %.sroa.29.32.copyload12, 2
  br i1 %i.ao, label %_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read6lookupNtB6_12PubSetHeader5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2L_.exit.thread, label %bb.p

bb.o:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.r

_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read6lookupNtB6_12PubSetHeader5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2L_.exit.thread: ; preds = %bb.n, %bb.c, %_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read6lookupNtB6_12PubSetHeader5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2L_.exit
  %.sroa.0.168 = phi i64 [ %.sroa.073.0.copyload.i, %_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read6lookupNtB6_12PubSetHeader5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2L_.exit ], [ %.sroa.0.0, %bb.n ], [ %.sroa.073.0.copyload.i, %bb.c ]
  %.sroa.16.sroa.0.187 = phi i8 [ %.sroa.16.sroa.0.0.extract.trunc20, %_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read6lookupNtB6_12PubSetHeader5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2L_.exit ], [ %.sroa.16.sroa.0.0, %bb.n ], [ %.sroa.474.0.copyload.i, %bb.c ]
  %.sroa.16.sroa.11.sroa.0.186 = phi i56 [ %.sroa.16.sroa.11.0.extract.trunc33, %_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read6lookupNtB6_12PubSetHeader5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2L_.exit ], [ %.sroa.16.sroa.11.sroa.0.0, %bb.n ], [ %.sroa.16.sroa.11.sroa.0.0.copyload, %bb.c ]
  %.sroa.16.sroa.11.0.insert.ext22 = zext i56 %.sroa.16.sroa.11.sroa.0.186 to i64
  %.sroa.16.sroa.11.0.insert.shift23 = shl nuw i64 %.sroa.16.sroa.11.0.insert.ext22, 8
  %.sroa.16.sroa.0.0.insert.ext14 = zext i8 %.sroa.16.sroa.0.187 to i64
  %.sroa.16.sroa.0.0.insert.insert16 = or disjoint i64 %.sroa.16.sroa.11.0.insert.shift23, %.sroa.16.sroa.0.0.insert.ext14
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !alias.scope !1087
  store i64 0, ptr %i.f, align 8, !alias.scope !1087
  store i64 %.sroa.0.168, ptr %0, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.16.sroa.0.0.insert.insert16, ptr %.sroa.472.0..sroa_idx, align 8
  br label %bb.q

bb.p:                                             ; preds = %_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read6lookupNtB6_12PubSetHeader5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2L_.exit
  %.sroa.02.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(48) %.sroa.27.32..sroa_idx10, i64 48, i1 false)
  %.sroa.02.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.02.sroa.11.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.36, i64 7, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ar = load i8, ptr %i.aq, align 8, !range !12, !noundef !11
  store i64 %.sroa.073.0.copyload.i, ptr %0, align 8
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.an, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 2, ptr %.sroa.02.sroa.6.0..sroa_idx, align 8
  %.sroa.02.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %.sroa.474.0.copyload.i, ptr %.sroa.02.sroa.7.0..sroa_idx, align 2
  %.sroa.02.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sroa.29.32.copyload12, ptr %.sroa.02.sroa.10.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read6lookupNtB6_12PubSetHeader5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2L_.exit.thread
  %.sink = phi i8 [ %i.ar, %bb.p ], [ -1, %_RINvMs2_NtNtCsi68uqYEhoRA_5gimli4read6lookupNtB6_12PubSetHeader5parseINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB2L_.exit.thread ]
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %.sink, ptr %.sroa.43.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsl_NtNtCsi68uqYEhoRA_5gimli4read3cfiINtB5_14CfiEntriesIterINtB5_7EhFrameINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB1c_E4nextB2S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) initializes((145, 146)) %0, ptr noalias nofree noundef align 8 dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [96 x i8], align 8                ; 15 uses
  %i.d = alloca [128 x i8], align 8               ; 9 uses
  %.sroa.631.i = alloca [16 x i8], align 8        ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %.val = load i64, ptr %i.f, align 8, !noundef !11
  %i.g = icmp eq i64 %.val, 0
  br i1 %i.g, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !nonnull !11, !align !143, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !1095, !noalias !1099, !nonnull !11, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %.val91.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1104, !noalias !1105, !nonnull !11, !noundef !11
  %i.l = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.m = ptrtoint ptr %.val91.i.i to i64
  %i.n = sub i64 %i.m, %i.l                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1107
  call void @_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader19read_initial_lengthB26_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e), !noalias !1105
  %i.o = load i64, ptr %i.b, align 8, !range !8, !noalias !1107, !noundef !11
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.060.0.copyload.i.i = load i64, ptr %i.q, align 8, !noalias !1107 ; 9 uses
  %.sroa.461.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.461.0.copyload.i.i = load i8, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !1107 ; 3 uses
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.562.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.10.sroa.9.sroa.0.0.copyload.i = load i56, ptr %.sroa.562.0..sroa_idx.i.i, align 1, !noalias !1108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1107
  %i.r = zext i56 %.sroa.10.sroa.9.sroa.0.0.copyload.i to i64
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1107
  %i.s = icmp eq i64 %.sroa.060.0.copyload.i.i, 0
  br i1 %i.s, label %_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi15parse_cfi_entryINtB2_7EhFrameINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB14_EB2K_.exit.thread8, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.k, align 8, !alias.scope !1109, !noalias !1116, !nonnull !11, !noundef !11 ; 5 uses
  %i.u = load i64, ptr %i.f, align 8, !alias.scope !1109, !noalias !1116, !noundef !11 ; 2 uses
  %i.v = icmp ult i64 %i.u, %.sroa.060.0.copyload.i.i
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = ptrtoint ptr %i.t to i64                 ; 2 uses
  %.sroa.10.sroa.0.0.extract.trunc92.i = trunc i64 %i.w to i8
  %.sroa.10.sroa.9.0.extract.shift99.i = lshr i64 %i.w, 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.e, align 8, !alias.scope !1120, !noalias !1123, !nonnull !11, !align !143, !noundef !11 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i1.i.i.i.i = load i8, ptr %i.y, align 8, !range !12, !alias.scope !1109, !noalias !1116, !noundef !11 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i.i.i = load i8, ptr %i.z, align 8, !range !12, !alias.scope !1124, !noalias !1127, !noundef !11 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1124, !noalias !1127, !noundef !11 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1124, !noalias !1127, !nonnull !11, !noundef !11
  %i.ae = sub nuw i64 %i.u, %.sroa.060.0.copyload.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.060.0.copyload.i.i
  store ptr %i.af, ptr %i.k, align 8, !alias.scope !1129, !noalias !1132, !captures !37
  store i64 %i.ae, ptr %i.f, align 8, !alias.scope !1129, !noalias !1132
  %i.ag = ptrtoint ptr %i.t to i64                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1134
  %i.ah = tail call noundef i32 @_RNvXs11_NtCskKLDkoKarTP_4core5arrayAhj4_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(), !noalias !1141
  store i32 %i.ah, ptr %i.a, align 4, !noalias !1134
  %i.ai = icmp ugt i64 %.sroa.060.0.copyload.i.i, 3
  br i1 %i.ai, label %bb.i, label %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread.i.i

_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1134
  %.sroa.10.sroa.0.0.extract.trunc.i = trunc i64 %i.ag to i8
  %.sroa.10.sroa.9.0.extract.shift.i = lshr i64 %i.ag, 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread.i.i, %bb.f, %bb.c
  %.sroa.10.sroa.9.sroa.0.0.ph.i = phi i64 [ %.sroa.10.sroa.9.0.extract.shift99.i, %bb.f ], [ %.sroa.10.sroa.9.0.extract.shift.i, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread.i.i ], [ %i.r, %bb.c ]
  %.sroa.10.sroa.0.0.ph.i = phi i8 [ %.sroa.10.sroa.0.0.extract.trunc92.i, %bb.f ], [ %.sroa.10.sroa.0.0.extract.trunc.i, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread.i.i ], [ %.sroa.461.0.copyload.i.i, %bb.c ]
  %.sroa.0.0.ph.i = phi i64 [ 17, %bb.f ], [ 17, %_RNvYINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapENtNtB7_6reader6Reader8read_u32B26_.exit.thread.i.i ], [ %.sroa.060.0.copyload.i.i, %bb.c ]
  %.sroa.10.sroa.9.0.insert.shift94.i = shl nuw i64 %.sroa.10.sroa.9.sroa.0.0.ph.i, 8
  %.sroa.10.sroa.0.0.insert.ext88.i = zext i8 %.sroa.10.sroa.0.0.ph.i to i64
  %.sroa.10.sroa.0.0.insert.insert90.i = or disjoint i64 %.sroa.10.sroa.9.0.insert.shift94.i, %.sroa.10.sroa.0.0.insert.ext88.i
  store i64 %.sroa.0.0.ph.i, ptr %0, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.4162.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.sroa.0.0.insert.insert90.i, ptr %.sroa.4162.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 -2, ptr %i.aj, align 1, !alias.scope !1092, !noalias !1142
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi15parse_cfi_entryINtB2_7EhFrameINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB14_EB2K_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ak = sub i64 %i.ag, %i.l                     ; 3 uses
  %i.al = ptrtoint ptr %i.ad to i64               ; 2 uses
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 1, 9) 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 1, 9) 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8), !noalias !1143
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.a, align 4, !noalias !1134 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1134
  %i.am = trunc nuw i8 %.val.i1.i.i.i.i to i1
  %i.an = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i.i.i)
  %.sroa.0.0.i.i.i.i = select i1 %i.am, i32 %i.an, i32 %.sroa.0.0.copyload.i.i.i.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.ap = add i64 %.sroa.060.0.copyload.i.i, -4   ; 2 uses
  %i.aq = zext i32 %.sroa.0.0.i.i.i.i to i64      ; 3 uses
  %i.ar = icmp eq i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp ult i64 %i.ak, %i.aq
  br i1 %.not.i.i, label %bb.l, label %_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi15parse_cfi_entryINtB2_7EhFrameINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB14_EB2K_.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1150
  store i64 %i.n, ptr %i.c, align 8, !noalias !1150
  %.sroa.01.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.060.0.copyload.i.i, ptr %.sroa.01.sroa.6.0..sroa_idx.i, align 8, !noalias !1150
  %.sroa.01.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.ak, ptr %.sroa.01.sroa.7.0..sroa_idx.i, align 8, !noalias !1150
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !1150
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.x, ptr %.sroa.7.0..sroa_idx7.i, align 8, !noalias !1150
  %.sroa.7.sroa.0.sroa.6.0..sroa.7.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.al, ptr %.sroa.7.sroa.0.sroa.6.0..sroa.7.0..sroa_idx7.sroa_idx.i, align 8, !noalias !1150
  %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.ab, ptr %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx7.sroa_idx.i, align 8, !noalias !1150
  %.sroa.7.sroa.0.sroa.8.0..sroa.7.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 %.val.i.i.i.i.i, ptr %.sroa.7.sroa.0.sroa.8.0..sroa.7.0..sroa_idx7.sroa_idx.i, align 8, !noalias !1150
  %.sroa.7.sroa.0.sroa.10.0..sroa.7.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.ao, ptr %.sroa.7.sroa.0.sroa.10.0..sroa.7.0..sroa_idx7.sroa_idx.i, align 8, !noalias !1150
  %.sroa.7.sroa.0.sroa.11.0..sroa.7.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 %i.ap, ptr %.sroa.7.sroa.0.sroa.11.0..sroa.7.0..sroa_idx7.sroa_idx.i, align 8, !noalias !1150
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i8 %.val.i1.i.i.i.i, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx7.sroa_idx.i, align 8, !noalias !1150
  %.sroa.78.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i8 %.sroa.461.0.copyload.i.i, ptr %.sroa.78.0..sroa_idx11.i, align 8, !noalias !1150
  call fastcc void @_RINvMsp_NtNtCsi68uqYEhoRA_5gimli4read3cfiINtB6_22CommonInformationEntryINtNtB8_8relocate14RelocateReaderINtNtB8_12endian_slice11EndianSliceNtNtBa_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjE11from_prefixINtB6_7EhFrameB17_EEB2N_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.i, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %i.c), !noalias !1092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1150
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !375, !noalias !1150, !noundef !11 ; 2 uses
  %i.au = icmp eq i64 %i.at, -2
  br i1 %i.au, label %bb.m, label %_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi15parse_cfi_entryINtB2_7EhFrameINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB14_EB2K_.exit.thread7

bb.l:                                             ; preds = %bb.j
  store i64 53, ptr %0, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.4175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %.sroa.4175.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 -2, ptr %i.av, align 1, !alias.scope !1092, !noalias !1142
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi15parse_cfi_entryINtB2_7EhFrameINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB14_EB2K_.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.631.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !noalias !1150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.631.i, i64 16, i1 false), !noalias !1142
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 -2, ptr %i.ax, align 1, !alias.scope !1092, !noalias !1142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631.i)
  br label %_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi15parse_cfi_entryINtB2_7EhFrameINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB14_EB2K_.exit.thread

_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi15parse_cfi_entryINtB2_7EhFrameINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB14_EB2K_.exit.thread7: ; preds = %bb.k
  %.sroa.075.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !1150
  %.sroa.577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.631.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.577.0..sroa_idx.i, i64 16, i1 false), !noalias !1150
  %.sroa.678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.648.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.678.0..sroa_idx.i, i64 96, i1 false), !noalias !1142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1150
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.547.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.631.i, i64 16, i1 false), !noalias !1142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631.i)
  store i64 %.sroa.075.0.copyload.i, ptr %0, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %.sroa.446.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.850.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 2, ptr %.sroa.850.0..sroa_idx.i, align 1, !alias.scope !1092, !noalias !1142
  br label %bb.o

_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi15parse_cfi_entryINtB2_7EhFrameINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB14_EB2K_.exit: ; preds = %bb.j
  %i.ay = sub nuw i64 %i.ak, %i.aq
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !1151, !noalias !1160, !noundef !11
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val.i.i.i.i82.i = load i8, ptr %i.bb, align 8, !range !12, !alias.scope !1151, !noalias !1160, !noundef !11
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !1167, !noalias !1170, !noundef !11
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val.i1.i.i.i83.i = load i8, ptr %i.be, align 8, !range !12, !alias.scope !1167, !noalias !1170, !noundef !11
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bg = load i8, ptr %i.bf, align 8, !alias.scope !1172, !noalias !1173, !noundef !11
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.bi = load i8, ptr %i.bh, align 1, !range !12, !alias.scope !1172, !noalias !1173, !noundef !11
  store i64 %i.n, ptr %0, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.060.0.copyload.i.i, ptr %.sroa.064.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ay, ptr %.sroa.064.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %.sroa.064.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %.sroa.064.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.al, ptr %.sroa.064.sroa.8.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ab, ptr %.sroa.064.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.val.i.i.i.i.i, ptr %.sroa.064.sroa.10.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %.sroa.064.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ap, ptr %.sroa.064.sroa.13.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.val.i1.i.i.i.i, ptr %.sroa.064.sroa.14.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = load <2 x ptr>, ptr %i.h, align 8, !alias.scope !1174, !noalias !1175
  store <2 x ptr> %i.bj, ptr %.sroa.064.sroa.16.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ba, ptr %.sroa.064.sroa.18.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %.val.i.i.i.i82.i, ptr %.sroa.064.sroa.19.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.val.i, ptr %.sroa.064.sroa.21.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.bd, ptr %.sroa.064.sroa.22.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %.val.i1.i.i.i83.i, ptr %.sroa.064.sroa.23.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.064.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.bg, ptr %.sroa.064.sroa.25.0..sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 %i.bi, ptr %.sroa.465.0..sroa_idx.i, align 1, !alias.scope !1092, !noalias !1142
  %.sroa.566.sroa.4.0..sroa.566.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %.sroa.461.0.copyload.i.i, ptr %.sroa.566.sroa.4.0..sroa.566.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1092, !noalias !1142
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 -1, ptr %.sroa.3.0..sroa_idx, align 1
  br label %bb.o

_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi15parse_cfi_entryINtB2_7EhFrameINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB14_EB2K_.exit.thread: ; preds = %bb.m, %bb.l, %bb.h
  store ptr inttoptr (i64 1 to ptr), ptr %i.k, align 8, !alias.scope !1176
  store i64 0, ptr %i.f, align 8, !alias.scope !1176
  br label %bb.o

_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi15parse_cfi_entryINtB2_7EhFrameINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB14_EB2K_.exit.thread8: ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 145
  store ptr inttoptr (i64 1 to ptr), ptr %i.k, align 8, !alias.scope !1181
  store i64 0, ptr %i.f, align 8, !alias.scope !1181
  store i8 -1, ptr %i.bk, align 1
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi15parse_cfi_entryINtB2_7EhFrameINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB14_EB2K_.exit, %_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi15parse_cfi_entryINtB2_7EhFrameINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB14_EB2K_.exit.thread7, %_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi15parse_cfi_entryINtB2_7EhFrameINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB14_EB2K_.exit.thread, %_RINvNtNtCsi68uqYEhoRA_5gimli4read3cfi15parse_cfi_entryINtB2_7EhFrameINtNtB4_8relocate14RelocateReaderINtNtB4_12endian_slice11EndianSliceNtNtB6_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEEB14_EB2K_.exit.thread8, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryINtNtCskKLDkoKarTP_4core6result6ResultINtNtBb_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB25_5ErrorEE10dying_nextCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyINtNtCskKLDkoKarTP_4core6result6ResultINtNtBb_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2H_5ErrorEE10take_frontCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !1186, !noundef !11
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyINtNtCskKLDkoKarTP_4core6result6ResultINtNtBc_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2I_5ErrorEE16deallocating_endNtNtBc_5alloc6GlobalECs4phXRVW1pDQ_9dwarfdump.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyINtNtCskKLDkoKarTP_4core6result6ResultINtNtBc_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2Q_5ErrorENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyINtNtCskKLDkoKarTP_4core6result6ResultINtNtBc_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2I_5ErrorEE16deallocating_endNtNtBc_5alloc6GlobalECs4phXRVW1pDQ_9dwarfdump.exit

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyINtNtCskKLDkoKarTP_4core6result6ResultINtNtBc_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB2I_5ErrorEE16deallocating_endNtNtBc_5alloc6GlobalECs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %0, align 8
  br label %bb.i

end_hunk_2
