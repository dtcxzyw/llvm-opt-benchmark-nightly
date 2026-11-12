Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.00?download=true
inline.NumInlined: 930
inline.NumDeleted: 282
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvCs4phXRVW1pDQ_9dwarfdump17dump_gnu_pubtypesINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBO_12endian_slice11EndianSliceNtNtBQ_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_:bb.a
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1782, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val.i.i = load i8, ptr %i.t, align 8, !range !31, !alias.scope !1782, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1783, !nonnull !7, !noundef !7
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1783, !noundef !7
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val.i1.i = load i8, ptr %i.y, align 8, !range !31, !alias.scope !1783, !noundef !7
  %i.z = load <2 x ptr>, ptr %2, align 8, !alias.scope !1784
  store <2 x ptr> %i.z, ptr %i.i, align 16
  %.sroa.017.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.s, ptr %.sroa.017.sroa.5.0..sroa_idx, align 16
  %.sroa.017.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 %.val.i.i, ptr %.sroa.017.sroa.6.0..sroa_idx, align 8
  %.sroa.017.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.v, ptr %.sroa.017.sroa.8.0..sroa_idx, align 16
  %.sroa.017.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.x, ptr %.sroa.017.sroa.9.0..sroa_idx, align 8
  %.sroa.017.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i8 %.val.i1.i, ptr %.sroa.017.sroa.10.0..sroa_idx, align 16
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i8 1, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read8pubtypesINtB5_15PubTypesSetIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2K_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !range !14, !noundef !7 ; 2 uses
  %i.ac = icmp eq i8 %i.ab, -1
  br i1 %i.ac, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.e
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 89
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 89
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.024.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.024.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.526.sroa.4.0..sroa.526.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  br label %bb.f

._crit_edge64:                                    ; preds = %bb.l, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.423.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %.lr.ph63, %bb.l
  %i.ai = phi i8 [ %i.ab, %.lr.ph63 ], [ %i.ax, %bb.l ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.03, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.521.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not29 = icmp eq i8 %i.ai, 2
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.03, i64 88, i1 false)
  store i8 %i.ai, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aj = load i8, ptr %i.ad, align 2, !range !19, !noundef !7
  %i.ak = load i16, ptr %i.ae, align 8, !noundef !7
  %i.al = load i64, ptr %i.af, align 8, !noundef !7
  %i.am = load i64, ptr %i.ag, align 8, !noundef !7
  %i.an = load i64, ptr %i.g, align 8, !noundef !7
  call fastcc void @_RINvCs4phXRVW1pDQ_9dwarfdump19dump_pub_set_headerINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 dereferenceable(40) %1, i8 noundef %i.aj, i16 noundef %i.ak, i64 noundef %i.al, i64 noundef %i.am, i64 noundef %i.an, i1 noundef zeroext true)
  %i.ao = load i64, ptr %i.f, align 8, !range !12, !noundef !7
  %.not30 = icmp eq i64 %i.ao, -1
  br i1 %.not30, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtNtCsi68uqYEhoRA_5gimli4read6lookupINtB5_6PubSetINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE5itemsB2y_(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8pubtypesINtB5_17PubTypesEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2M_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.e)
  %i.ap = load i8, ptr %i.ah, align 16, !range !14, !noundef !7 ; 2 uses
  %i.aq = icmp eq i8 %i.ap, -1
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.n
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load <2 x i64>, ptr %i.d, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 0, ptr %0, align 8
  store <2 x i64> %i.ar, ptr %.sroa.428.0..sroa_idx, align 8
  br label %bb.o

.lr.ph:                                           ; preds = %bb.j, %bb.n
  %i.as = phi i8 [ %i.az, %bb.n ], [ %i.ap, %bb.j ]
  %.sroa.024.sroa.4.0.copyload = load i64, ptr %.sroa.024.sroa.4.0..sroa_idx, align 8
  %.sroa.024.sroa.6.0.copyload = load ptr, ptr %.sroa.024.sroa.6.0..sroa_idx, align 16
  %.sroa.024.sroa.7.0.copyload = load i64, ptr %.sroa.024.sroa.7.0..sroa_idx, align 8
  %.sroa.526.sroa.4.0.copyload = load i8, ptr %.sroa.526.sroa.4.0..sroa.526.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not31 = icmp eq i8 %i.as, 2
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.at = icmp slt i8 %.sroa.526.sroa.4.0.copyload, 0
  %i.au = lshr i8 %.sroa.526.sroa.4.0.copyload, 4
  %i.av = and i8 %i.au, 7
  call fastcc void @_RINvCs4phXRVW1pDQ_9dwarfdump18dump_gnu_pub_entryINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBP_12endian_slice11EndianSliceNtNtBR_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(40) %1, i64 noundef %.sroa.024.sroa.4.0.copyload, i1 noundef zeroext %i.at, i8 noundef %i.av, ptr %.sroa.024.sroa.6.0.copyload, i64 %.sroa.024.sroa.7.0.copyload)
  %i.aw = load i64, ptr %i.c, align 8, !range !12, !noundef !7
  %.not32 = icmp eq i64 %i.aw, -1
  br i1 %.not32, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs6_NtNtCsi68uqYEhoRA_5gimli4read8pubtypesINtB5_15PubTypesSetIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2K_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i)
  %i.ax = load i8, ptr %i.aa, align 8, !range !14, !noundef !7 ; 2 uses
  %i.ay = icmp eq i8 %i.ax, -1
  br i1 %i.ay, label %._crit_edge64, label %bb.f

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs9_NtNtCsi68uqYEhoRA_5gimli4read8pubtypesINtB5_17PubTypesEntryIterINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEE4nextB2M_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.e)
  %i.az = load i8, ptr %i.ah, align 16, !range !14, !noundef !7 ; 2 uses
  %i.ba = icmp eq i8 %i.az, -1
  br i1 %i.ba, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %bb.m, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h, %_RNvXs0_Cs4phXRVW1pDQ_9dwarfdumpNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBJ_2io5error5ErrorE4from.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCs4phXRVW1pDQ_9dwarfdump17load_file_sectionNtNtCsi68uqYEhoRA_5gimli9endianity13RunTimeEndianEB2_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i8 noundef range(i8 0, 25) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(304) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [80 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [56 x i8], align 8                ; 10 uses
  %i.q = alloca [48 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.r = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @83) ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = extractvalue { i64, i64 } %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) @85, i64 32, i1 false)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.s, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.t, ptr %.sroa.521.0..sroa_idx, align 8
  br i1 %4, label %switch.hole_check, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load i64, ptr %2, align 8, !range !38, !noundef !7
  %switch = icmp samesign ult i64 %i.u, 9
  br i1 %switch, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i8 %1, 22
  br i1 %i.v, label %switch.hole_check97, label %.thread

.body.thread72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6unwrapCs4phXRVW1pDQ_9dwarfdump.exit.i, %bb.v, %bb.s, %bb.t, %bb.z, %bb.d, %bb.w, %bb.i, %bb.g, %bb.r, %.noexc, %bb.u
  %lpad.loopexit.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %1 to i32
  %switch.shifted = lshr i32 32568841, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %bb.d, label %.thread

switch.hole_check97:                              ; preds = %bb.c
  %switch.maskindex99 = zext nneg i8 %1 to i32
  %switch.shifted100 = lshr i32 3036693, %switch.maskindex99
  %switch.lobit101 = trunc i32 %switch.shifted100 to i1
  br i1 %switch.lobit101, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.b, %switch.hole_check97, %switch.hole_check
  %.sroa.6.0.in.in = phi ptr [ @switch.table._RINvCs4phXRVW1pDQ_9dwarfdump17load_file_sectionNtNtCsi68uqYEhoRA_5gimli9endianity13RunTimeEndianEB2_.69, %switch.hole_check97 ], [ @switch.table._RINvCs4phXRVW1pDQ_9dwarfdump17load_file_sectionNtNtCsi68uqYEhoRA_5gimli9endianity13RunTimeEndianEB2_, %switch.hole_check ], [ @switch.table._RINvCs4phXRVW1pDQ_9dwarfdump9dump_unitINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2_, %bb.b ]
  %.sroa.0.0.in = phi ptr [ @switch.table._RINvCs4phXRVW1pDQ_9dwarfdump17load_file_sectionNtNtCsi68uqYEhoRA_5gimli9endianity13RunTimeEndianEB2_.70, %switch.hole_check97 ], [ @switch.table._RINvCs4phXRVW1pDQ_9dwarfdump17load_file_sectionNtNtCsi68uqYEhoRA_5gimli9endianity13RunTimeEndianEB2_.68, %switch.hole_check ], [ @switch.table._RINvCs4phXRVW1pDQ_9dwarfdump9dump_unitINtNtNtCsi68uqYEhoRA_5gimli4read8relocate14RelocateReaderINtNtBF_12endian_slice11EndianSliceNtNtBH_9endianity13RunTimeEndianERNtB2_13RelocationMapEINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB2_.74, %bb.b ]
  %7 = zext nneg i8 %1 to i64
  %switch.gep108 = getelementptr inbounds nuw i8, ptr %.sroa.6.0.in.in, i64 %7
  %.sroa.6.0.in = load i8, ptr %switch.gep108, align 1
  %switch.ext110 = zext i8 %.sroa.6.0.in to i64
  %.sroa.6.0 = zext nneg i8 %1 to i64
  %switch.gep111 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.in, i64 %.sroa.6.0
  %switch.load112 = load ptr, ptr %switch.gep111, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object21section_by_name_bytesCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load112, i64 noundef %switch.ext110)
          to label %bb.e unwind label %.body.thread72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %switch.hole_check97, %bb.c, %switch.hole_check
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 -1, ptr %i.p, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %.pr = load i64, ptr %i.p, align 8
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %4, label %bb.w, label %bb.r

bb.g:                                             ; preds = %.thread, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %.body.thread72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.k, align 8, !range !16, !noundef !7
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !36, !noundef !7 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.aa, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #26
          to label %bb.q unwind label %.body.thread72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.aa, align 8, !nonnull !7, !noundef !7
  %i.ad = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.k

bb.k:                                             ; preds = %bb.x, %bb.j
  %.sink = phi i64 [ %i.z, %bb.j ], [ %i.bh, %bb.x ] ; 2 uses
  %.sroa.425.0.copyload.sink = phi ptr [ %i.ac, %bb.j ], [ %i.bk, %bb.x ] ; 2 uses
  %.sroa.526.0.copyload.sink = phi i64 [ 0, %bb.j ], [ %i.bm, %bb.x ] ; 2 uses
  store i64 %.sink, ptr %i.n, align 8
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.425.0.copyload.sink, ptr %.sroa.63.0..sroa_idx4, align 8
  %.sroa.8.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.526.0.copyload.sink, ptr %.sroa.8.0..sroa_idx6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ae = load i64, ptr %5, align 8, !noalias !1801, !noundef !7
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %bb.l, label %bb.m, !prof !21

bb.l:                                             ; preds = %bb.k
  store i64 -1, ptr %5, align 8, !noalias !1801
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !1801, !noundef !7 ; 5 uses
  %i.ai = icmp ult i64 %i.ah, 384307168202282326
  call void @llvm.assume(i1 %i.ai)
  %i.aj = load i64, ptr %i.af, align 8, !range !28, !noalias !1801, !noundef !7
  %i.ak = icmp samesign ult i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.aa, label %bb.z

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @394) #26
          to label %bb.o unwind label %bb.p, !noalias !1801

bb.n:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !1802
  unreachable

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #21
          to label %.body.thread unwind label %bb.n, !noalias !1802

bb.q:                                             ; preds = %bb.i
  unreachable

bb.r:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1803
  invoke void @_RNvXs8_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_7SectionNtNtB7_6traits13ObjectSection11relocationsCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p)
          to label %.noexc unwind label %.body.thread72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.r
  invoke void @_RNvXsl_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_25SectionRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h)
          to label %.noexc37 unwind label %.body.thread72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc37:                                         ; preds = %.noexc
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !20, !noalias !1803, !noundef !7
  %.not15.i = icmp eq i64 %i.ao, 2
  br i1 %.not15.i, label %_RNvMs2_Cs4phXRVW1pDQ_9dwarfdumpNtB5_13RelocationMap3add.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.s

bb.s:                                             ; preds = %.noexc42, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1803
  %i.av = load i64, ptr %i.f, align 8, !noalias !1803, !noundef !7 ; 2 uses
  store i64 %i.av, ptr %i.g, align 8, !noalias !1803
  %i.aw = invoke { ptr, i64 } @_RINvMsc_NtCs9Jn0q30Ea0B_6object4readNtB6_13RelocationMap3addNtNtB6_3any4FileECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %2, i64 noundef %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.an)
          to label %.noexc38 unwind label %.body.thread72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc38:                                         ; preds = %bb.s
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0      ; 2 uses
  %.not14.i = icmp eq ptr %i.ax, null
  br i1 %.not14.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.noexc38
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1803
  store ptr %i.ax, ptr %i.e, align 8, !noalias !1803
  store i64 %i.ay, ptr %i.ap, align 8, !noalias !1803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1803
  invoke void @_RNvXs8_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_7SectionNtNtB7_6traits13ObjectSection4nameCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p)
          to label %.noexc39 unwind label %.body.thread72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  %i.az = load i64, ptr %i.c, align 8, !range !16, !alias.scope !1804, !noalias !1803, !noundef !7
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %bb.u, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6unwrapCs4phXRVW1pDQ_9dwarfdump.exit.i, !prof !22

bb.u:                                             ; preds = %.noexc39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1805
  %i.bb = load ptr, ptr %i.aq, align 8, !alias.scope !1804, !noalias !1803, !nonnull !7, !noundef !7
  %i.bc = load i64, ptr %i.ar, align 8, !alias.scope !1804, !noalias !1803, !noundef !7
  store ptr %i.bb, ptr %i.a, align 8, !noalias !1805
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !noalias !1805
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @396, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @398, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #25
          to label %.noexc40 unwind label %.body.thread72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %bb.u
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6unwrapCs4phXRVW1pDQ_9dwarfdump.exit.i: ; preds = %.noexc39
  %i.be = load ptr, ptr %i.aq, align 8, !alias.scope !1804, !noalias !1803, !nonnull !7, !noundef !7
  %i.bf = load i64, ptr %i.ar, align 8, !alias.scope !1804, !noalias !1803, !noundef !7
  store ptr %i.be, ptr %i.d, align 8, !noalias !1803
  store i64 %i.bf, ptr %i.as, align 8, !noalias !1803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1803
  store ptr %i.d, ptr %i.b, align 8, !noalias !1803
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs4phXRVW1pDQ_9dwarfdump, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !1803
  store ptr %i.g, ptr %i.at, align 8, !noalias !1803
  store ptr @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !1803
  store ptr %i.e, ptr %i.au, align 8, !noalias !1803
  store ptr @_RNvXNtCs9Jn0q30Ea0B_6object4readNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !1803
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull @402, ptr noundef nonnull %i.b)
          to label %.noexc41 unwind label %.body.thread72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtCs9Jn0q30Ea0B_6object4read5ErrorE6unwrapCs4phXRVW1pDQ_9dwarfdump.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1803
  br label %bb.v

bb.v:                                             ; preds = %.noexc41, %.noexc38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1803
  invoke void @_RNvXsl_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_25SectionRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h)
          to label %.noexc42 unwind label %.body.thread72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.v
  %i.bg = load i64, ptr %i.an, align 8, !range !20, !noalias !1803, !noundef !7
  %.not.i36 = icmp eq i64 %i.bg, 2
  br i1 %.not.i36, label %_RNvMs2_Cs4phXRVW1pDQ_9dwarfdumpNtB5_13RelocationMap3add.exit, label %bb.s

_RNvMs2_Cs4phXRVW1pDQ_9dwarfdumpNtB5_13RelocationMap3add.exit: ; preds = %.noexc42, %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.w:                                             ; preds = %_RNvMs2_Cs4phXRVW1pDQ_9dwarfdumpNtB5_13RelocationMap3add.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvYNtNtNtCs9Jn0q30Ea0B_6object4read3any7SectionNtNtB6_6traits13ObjectSection17uncompressed_dataCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p)
          to label %bb.x unwind label %.body.thread72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.bh = load i64, ptr %i.o, align 8, !range !9, !noundef !7 ; 2 uses
end_hunk_0
