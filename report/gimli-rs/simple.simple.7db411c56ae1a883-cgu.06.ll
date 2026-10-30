Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple.simple.7db411c56ae1a883-cgu.06?download=true
inline.NumInlined: 95
inline.NumDeleted: 70
begin_hunk_0_@_RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple:bb.a

bb.be:                                            ; preds = %bb.bc
  %i.db = load ptr, ptr %i.g, align 8, !nonnull !5, !align !9, !noundef !5 ; 8 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 72
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !5
  %i.de = icmp ult i64 %i.cy, %i.dd
  br i1 %i.de, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader32NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCsaN7cMqnSAH7_6simple.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !130
  store ptr @0, ptr %i.b, align 8, !noalias !130
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 25, ptr %i.df, align 8, !noalias !130
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14, !noalias !130
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader32NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCsaN7cMqnSAH7_6simple.exit: ; preds = %bb.be
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !5, !noundef !5
  %i.di = getelementptr inbounds nuw [40 x i8], ptr %i.dh, i64 %i.cy ; 4 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 4
  %.val = load i32, ptr %i.dj, align 1            ; 2 uses
  %i.dk = tail call i32 @llvm.bswap.i32(i32 %.val)
  %.sroa.03.0.i.i = select i1 %i.k, i32 %i.dk, i32 %.val
  switch i32 %.sroa.03.0.i.i, label %.backedge [
    i32 9, label %bb.bg
    i32 4, label %bb.bh
    i32 1073741844, label %bb.bi
  ]

bb.bg:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader32NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCsaN7cMqnSAH7_6simple.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !5, !noundef !5
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !noundef !5
  call void @_RINvYINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_5Rel32BO_ERShECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.di, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.do)
  %i.dp = load i64, ptr %i.f, align 8, !range !6, !noundef !5
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %bb.bj, label %bb.bk

bb.bh:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader32NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCsaN7cMqnSAH7_6simple.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !5, !noundef !5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.du = load i64, ptr %i.dt, align 8, !noundef !5
  call void @_RINvYINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_6Rela32BO_ERShECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.di, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.du)
  %i.dv = load i64, ptr %i.e, align 8, !range !6, !noundef !5
  %i.dw = trunc nuw i64 %i.dv to i1
  br i1 %i.dw, label %bb.bl, label %bb.bm

bb.bi:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader32NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCsaN7cMqnSAH7_6simple.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !5, !noundef !5
  %i.dz = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !5
  call void @_RINvYINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.di, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dy, i64 noundef %i.ea)
  %i.eb = load i64, ptr %i.d, align 8, !range !6, !noundef !5
  %i.ec = trunc nuw i64 %i.eb to i1
  br i1 %i.ec, label %bb.bn, label %bb.bo

bb.bj:                                            ; preds = %bb.bk, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge

bb.bk:                                            ; preds = %bb.bg
  %i.ed = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ee = load i64, ptr %i.u, align 8, !noundef !5
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ee
  store ptr %i.ed, ptr %i.l, align 8
  store ptr %i.ef, ptr %i.n, align 8
  store i8 %i.j, ptr %.sroa.530.0..sroa_idx, align 8
  store i8 2, ptr %i.m, align 2
  br label %bb.bj

bb.bl:                                            ; preds = %bb.bm, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge

bb.bm:                                            ; preds = %bb.bh
  %i.eg = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.eh = load i64, ptr %i.s, align 8, !noundef !5
  %i.ei = getelementptr inbounds nuw [12 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load ptr, ptr %i.g, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !5, !noundef !5
  %i.em = tail call noundef zeroext i1 @_RNvYINtNtCs9Jn0q30Ea0B_6object3elf12FileHeader32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf4file10FileHeader11is_mips64elCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(52) %i.el, i1 noundef zeroext %i.k)
  %i.en = zext i1 %i.em to i8
  store ptr %i.eg, ptr %i.l, align 8
  store ptr %i.ei, ptr %i.n, align 8
  store i8 %i.j, ptr %.sroa.530.0..sroa_idx, align 8
  store i8 %i.en, ptr %.sroa.631.0..sroa_idx, align 1
  store i8 3, ptr %i.m, align 2
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bp, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge

.backedge:                                        ; preds = %bb.bn, %bb.bl, %bb.bj, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader32NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCsaN7cMqnSAH7_6simple.exit
  br label %bb.b

bb.bo:                                            ; preds = %bb.bi
  %i.eo = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.ep = load i64, ptr %i.p, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMse_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationNtB5_12CrelIterator3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %i.ep)
  %i.eq = load i8, ptr %i.q, align 2, !range !16, !noundef !5
  %i.er = icmp eq i8 %i.eq, 2
  br i1 %i.er, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bq, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bn

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  br label %bb.bp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !9, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load i8, ptr %i.i, align 8, !range !12, !noundef !5 ; 3 uses
  %i.k = trunc nuw i8 %i.j to i1                  ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 66 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 50
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.v = load i8, ptr %i.m, align 2, !range !13, !noundef !5 ; 3 uses
  %.not = icmp eq i8 %i.v, -1
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = add nsw i8 %i.v, -2
  %.inv.i = icmp samesign ult i8 %i.v, 2
  %narrow.i = select i1 %.inv.i, i8 2, i8 %i.w
  switch i8 %narrow.i, label %bb.d [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.l, align 8, !alias.scope !139, !nonnull !5, !noundef !5 ; 4 uses
  %i.y = load ptr, ptr %i.n, align 8, !alias.scope !139, !nonnull !5, !noundef !5
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.m, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.l, align 8, !alias.scope !139, !nonnull !5, !noundef !5 ; 6 uses
  %i.ab = load ptr, ptr %i.n, align 8, !alias.scope !139, !nonnull !5, !noundef !5
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.m, label %bb.i

bb.g:                                             ; preds = %bb.c
  call void @_RNvXsf_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationNtB5_12CrelIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.l), !noalias !140
  %i.ad = load i64, ptr %i.a, align 8, !range !14, !noalias !141, !noundef !5
  %cond = icmp eq i64 %i.ad, 0
  br i1 %cond, label %bb.j, label %bb.m

bb.h:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ae, ptr %i.l, align 8, !alias.scope !139
  %i.af = load i8, ptr %.sroa.530.0..sroa_idx, align 8, !range !12, !alias.scope !139, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1                ; 2 uses
  %.val.i = load i64, ptr %i.x, align 1, !noalias !141 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.x, i64 8
  %.val4.i = load i64, ptr %i.ah, align 1, !noalias !141 ; 2 uses
  %i.ai = tail call i64 @llvm.bswap.i64(i64 %.val.i)
  %.sroa.03.0.i.i.i.i = select i1 %i.ag, i64 %i.ai, i64 %.val.i
  %i.aj = tail call i64 @llvm.bswap.i64(i64 %.val4.i)
  %.sroa.03.0.i.i3.i.i = select i1 %i.ag, i64 %i.aj, i64 %.val4.i ; 2 uses
  %i.ak = lshr i64 %.sroa.03.0.i.i3.i.i, 32
  %i.al = trunc nuw i64 %i.ak to i32
  %i.am = trunc i64 %.sroa.03.0.i.i3.i.i to i32
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.an, ptr %i.l, align 8, !alias.scope !139
  %i.ao = load i8, ptr %.sroa.530.0..sroa_idx, align 8, !range !12, !alias.scope !139, !noundef !5
  %i.ap = trunc nuw i8 %i.ao to i1                ; 4 uses
  %i.aq = load i8, ptr %.sroa.631.0..sroa_idx, align 1, !range !12, !alias.scope !139, !noundef !5
  %i.ar = trunc nuw i8 %i.aq to i1                ; 2 uses
  %.val.i.i = load i64, ptr %i.aa, align 1, !alias.scope !142, !noalias !141 ; 2 uses
  %i.as = tail call i64 @llvm.bswap.i64(i64 %.val.i.i)
  %.sroa.03.0.i.i.i5.i = select i1 %i.ap, i64 %i.as, i64 %.val.i.i
  %i.at = tail call noundef i64 @_RNvMs5_NtCs9Jn0q30Ea0B_6object3elfINtB5_6Rela64NtNtB7_6endian10EndiannessE10get_r_infoCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(24) %i.aa, i1 noundef zeroext %i.ap, i1 noundef zeroext %i.ar), !noalias !143
  %i.au = lshr i64 %i.at, 32
  %i.av = trunc nuw i64 %i.au to i32
  %i.aw = tail call noundef i64 @_RNvMs5_NtCs9Jn0q30Ea0B_6object3elfINtB5_6Rela64NtNtB7_6endian10EndiannessE10get_r_infoCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(24) %i.aa, i1 noundef zeroext %i.ap, i1 noundef zeroext %i.ar), !noalias !143
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val1.i.i = load i64, ptr %i.ay, align 1, !alias.scope !142, !noalias !141 ; 2 uses
  %i.az = tail call i64 @llvm.bswap.i64(i64 %.val1.i.i)
  %.sroa.03.0.i.i2.i.i = select i1 %i.ap, i64 %i.az, i64 %.val1.i.i
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.538.8.copyload = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !139
  %.sroa.9.8..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.8.copyload = load i64, ptr %.sroa.9.8..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !139
  %.sroa.12.8..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.12.8.copyload = load i32, ptr %.sroa.12.8..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !139
  %.sroa.14.8..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.14.8.copyload = load i32, ptr %.sroa.14.8..sroa.4.0..sroa_idx.i.sroa_idx, align 4, !noalias !139
  br label %bb.l

bb.k:                                             ; preds = %bb.m, %bb.b
  %i.ba = load ptr, ptr %i.g, align 8, !nonnull !5, !align !9, !noundef !5
  %i.bb = load i64, ptr %1, align 8, !noundef !5
  %i.bc = tail call { i64, i64 } @_RNvMNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationNtB2_18RelocationSections3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba, i64 noundef %i.bb) ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.be, label %bb.bf

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.14.0 = phi i32 [ %i.ax, %bb.i ], [ %i.am, %bb.h ], [ %.sroa.14.8.copyload, %bb.j ] ; 94 uses
  %.sroa.12.0.a = phi i32 [ %i.av, %bb.i ], [ %i.al, %bb.h ], [ %.sroa.12.8.copyload, %bb.j ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.sroa.03.0.i.i2.i.i, %bb.i ], [ 0, %bb.h ], [ %.sroa.9.8.copyload, %bb.j ]
  %.sroa.538.0 = phi i64 [ %.sroa.03.0.i.i.i5.i, %bb.i ], [ %.sroa.03.0.i.i.i.i, %bb.h ], [ %.sroa.538.8.copyload, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = load ptr, ptr %i.g, align 8, !nonnull !5, !align !9, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !5, !noundef !5
  %i.bi = load i8, ptr %i.m, align 2, !range !15, !noundef !5 ; 3 uses
  %i.bj = add nsw i8 %i.bi, -2
  %.inv = icmp samesign ult i8 %i.bi, 2
  %narrow = select i1 %.inv, i8 2, i8 %i.bj
  switch i8 %narrow, label %bb.n [
    i8 0, label %bb.q
    i8 1, label %bb.o
    i8 2, label %bb.p
  ]

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 -1, ptr %i.m, align 2
  br label %bb.k

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.l
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.bk = and i8 %i.bi, 1
  %i.bl = xor i8 %i.bk, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p, %bb.o
  %.sroa.03.0 = phi i8 [ %i.bl, %bb.p ], [ 0, %bb.o ], [ 1, %bb.l ]
  %i.bm = getelementptr i8, ptr %i.bh, i64 18
  %.val36 = load i16, ptr %i.bm, align 1          ; 2 uses
  %i.bn = tail call i16 @llvm.bswap.i16(i16 %.val36)
  %.sroa.03.0.i.i.i = select i1 %i.k, i16 %i.bn, i16 %.val36
  switch i16 %.sroa.03.0.i.i.i, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i16 183, label %bb.r
    i16 -28634, label %bb.s
    i16 40, label %bb.t
    i16 83, label %bb.u
    i16 247, label %bb.v
    i16 252, label %bb.w
    i16 175, label %bb.x
    i16 3, label %bb.y
    i16 62, label %bb.z
    i16 164, label %bb.aa
    i16 258, label %bb.ab
    i16 4, label %bb.ac
    i16 8, label %bb.ad
    i16 105, label %bb.ae
    i16 15, label %bb.af
    i16 20, label %bb.ag
    i16 21, label %bb.ah
    i16 243, label %bb.ai
    i16 22, label %bb.aj
    i16 263, label %bb.ak
    i16 133, label %bb.al
    i16 2, label %bb.am
    i16 18, label %bb.am
    i16 43, label %bb.am
    i16 42, label %bb.an
    i16 94, label %bb.ao
  ]

bb.r:                                             ; preds = %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 0, label %bb.ap
    i32 257, label %bb.aq
    i32 258, label %bb.ar
    i32 259, label %bb.as
    i32 260, label %bb.at
    i32 261, label %bb.au
    i32 262, label %bb.av
    i32 283, label %bb.aw
  ]

bb.s:                                             ; preds = %bb.q
  %i.bo = icmp ult i32 %.sroa.14.0, 12
  %switch.maskindex = trunc i32 %.sroa.14.0 to i16
  %switch.shifted = lshr i16 3591, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.bo, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.t:                                             ; preds = %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 0, label %bb.ap
    i32 2, label %bb.ar
  ]

bb.u:                                             ; preds = %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 0, label %bb.ap
    i32 1, label %bb.ar
    i32 4, label %bb.as
  ]

bb.v:                                             ; preds = %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 0, label %bb.ap
    i32 1, label %bb.aq
    i32 10, label %bb.ar
  ]

bb.w:                                             ; preds = %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 0, label %bb.ap
    i32 1, label %bb.ar
    i32 5, label %bb.au
  ]

bb.x:                                             ; preds = %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 112, label %bb.ap
    i32 0, label %bb.ar
    i32 50, label %bb.aq
    i32 51, label %bb.ax
    i32 110, label %bb.ay
    i32 108, label %bb.bc
  ]

bb.y:                                             ; preds = %bb.q
  %i.bp = icmp ult i32 %.sroa.14.0, 24
  %switch.shifted88 = lshr i32 15730207, %.sroa.14.0
  %switch.lobit89 = trunc i32 %switch.shifted88 to i1
  %or.cond165 = select i1 %i.bp, i1 %switch.lobit89, i1 false
  br i1 %or.cond165, label %switch.lookup87, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.z:                                             ; preds = %bb.q
  %i.bq = icmp ult i32 %.sroa.14.0, 43
  %switch.maskindex100 = zext nneg i32 %.sroa.14.0 to i64
  %switch.shifted101 = lshr i64 6597069831711, %switch.maskindex100
  %switch.lobit102 = trunc i64 %switch.shifted101 to i1
  %or.cond166 = select i1 %i.bq, i1 %switch.lobit102, i1 false
  br i1 %or.cond166, label %switch.lookup99, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.aa:                                            ; preds = %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 0, label %bb.ap
    i32 6, label %bb.ar
  ]

bb.ab:                                            ; preds = %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 0, label %bb.ap
    i32 1, label %bb.ar
    i32 2, label %bb.aq
    i32 99, label %bb.au
    i32 109, label %bb.at
    i32 64, label %bb.az
    i32 65, label %bb.ba
    i32 66, label %bb.bb
  ]

bb.ac:                                            ; preds = %bb.q
  %i.br = icmp ult i32 %.sroa.14.0, 16
  br i1 %i.br, label %switch.lookup112, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.ad:                                            ; preds = %bb.q
  %i.bs = icmp ult i32 %.sroa.14.0, 19
  %switch.shifted120 = lshr i32 262151, %.sroa.14.0
  %switch.lobit121 = trunc i32 %switch.shifted120 to i1
  %or.cond167 = select i1 %i.bs, i1 %switch.lobit121, i1 false
  br i1 %or.cond167, label %switch.lookup119, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.ae:                                            ; preds = %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 0, label %bb.ap
    i32 1, label %bb.ar
    i32 5, label %bb.as
  ]

bb.af:                                            ; preds = %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 0, label %bb.ap
    i32 1, label %bb.ar
    i32 9, label %bb.au
  ]

bb.ag:                                            ; preds = %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 0, label %bb.ap
    i32 1, label %bb.ar
  ]

bb.ah:                                            ; preds = %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 0, label %bb.ap
    i32 1, label %bb.ar
    i32 38, label %bb.aq
  ]

bb.ai:                                            ; preds = %bb.q
  %i.bt = icmp ult i32 %.sroa.14.0, 3
  br i1 %i.bt, label %switch.lookup129, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.aj:                                            ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple:bb.a
  br i1 %or.cond168, label %switch.lookup132, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.ak:                                            ; preds = %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 0, label %bb.ap
    i32 1, label %bb.aq
    i32 10, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.q
  %switch.tableidx = add i32 %.sroa.14.0, -11     ; 6 uses
  %i.bv = icmp ult i32 %switch.tableidx, 15
  %switch.maskindex147 = trunc i32 %switch.tableidx to i16
  %switch.shifted148 = lshr i16 21503, %switch.maskindex147
  %switch.lobit149 = trunc i16 %switch.shifted148 to i1
  %or.cond169 = select i1 %i.bv, i1 %switch.lobit149, i1 false
  br i1 %or.cond169, label %switch.lookup146, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.am:                                            ; preds = %bb.q, %bb.q, %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 0, label %bb.ap
    i32 3, label %bb.ar
    i32 23, label %bb.ar
    i32 32, label %bb.aq
    i32 54, label %bb.aq
  ]

bb.an:                                            ; preds = %bb.q
  %i.bw = icmp ult i32 %.sroa.14.0, 3
  br i1 %i.bw, label %switch.lookup159, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.ao:                                            ; preds = %bb.q
  switch i32 %.sroa.14.0, label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit [
    i32 0, label %bb.ap
    i32 1, label %bb.ar
    i32 14, label %bb.au
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.ak, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.aq:                                            ; preds = %bb.am, %bb.am, %bb.ak, %bb.ah, %bb.ab, %bb.x, %bb.v, %bb.r
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.ar:                                            ; preds = %bb.ao, %bb.am, %bb.am, %bb.ak, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.as:                                            ; preds = %bb.ae, %bb.u, %bb.r
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.at:                                            ; preds = %bb.ab, %bb.r
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.au:                                            ; preds = %bb.ao, %bb.af, %bb.ab, %bb.w, %bb.r
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.av:                                            ; preds = %bb.r
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.aw:                                            ; preds = %bb.r
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.ax:                                            ; preds = %bb.x
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.ay:                                            ; preds = %bb.x
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.az:                                            ; preds = %bb.ab
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.ba:                                            ; preds = %bb.ab
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.bb:                                            ; preds = %bb.ab
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

bb.bc:                                            ; preds = %bb.x
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

switch.lookup:                                    ; preds = %bb.s
  %i.bx = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple, i64 %i.bx
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.by = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep81 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.50, i64 %i.by
  %switch.load82 = load i8, ptr %switch.gep81, align 1
  %i.bz = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep83 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.51, i64 %i.bz
  %switch.load84 = load i8, ptr %switch.gep83, align 1
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

switch.lookup87:                                  ; preds = %bb.y
  %i.ca = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep90 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.52, i64 %i.ca
  %switch.load91 = load i8, ptr %switch.gep90, align 1
  %switch.ext92 = zext i8 %switch.load91 to i32
  %i.cb = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep93 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.53, i64 %i.cb
  %switch.load94 = load i8, ptr %switch.gep93, align 1
  %i.cc = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep95 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.54, i64 %i.cc
  %switch.load96 = load i8, ptr %switch.gep95, align 1
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

switch.lookup99:                                  ; preds = %bb.z
  %i.cd = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep103 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.55, i64 %i.cd
  %switch.load104 = load i8, ptr %switch.gep103, align 1
  %switch.ext105 = zext i8 %switch.load104 to i32
  %i.ce = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep106 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.56, i64 %i.ce
  %switch.load107 = load i8, ptr %switch.gep106, align 1
  %i.cf = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep108 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.57, i64 %i.cf
  %switch.load109 = load i8, ptr %switch.gep108, align 1
  %i.cg = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep110 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.58, i64 %i.cg
  %switch.load111 = load i8, ptr %switch.gep110, align 1
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

switch.lookup112:                                 ; preds = %bb.ac
  %i.ch = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep113 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.59, i64 %i.ch
  %switch.load114 = load i8, ptr %switch.gep113, align 1
  %i.ci = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep115 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.60, i64 %i.ci
  %switch.load116 = load i8, ptr %switch.gep115, align 1
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

switch.lookup119:                                 ; preds = %bb.ad
  %i.cj = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep122 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.61, i64 %i.cj
  %switch.load123 = load i8, ptr %switch.gep122, align 1
  %switch.ext124 = zext i8 %switch.load123 to i32
  %i.ck = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep125 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.62, i64 %i.ck
  %switch.load126 = load i8, ptr %switch.gep125, align 1
  %i.cl = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep127 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.63, i64 %i.cl
  %switch.load128 = load i8, ptr %switch.gep127, align 1
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

switch.lookup129:                                 ; preds = %bb.ai
  %switch.idx.cast = trunc nuw i32 %.sroa.14.0 to i8
  %switch.idx.mult = shl nuw nsw i8 %switch.idx.cast, 5
  %switch.cast = trunc nuw i32 %.sroa.14.0 to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 131585, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

switch.lookup132:                                 ; preds = %bb.aj
  %i.cm = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep135 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.64, i64 %i.cm
  %switch.load136 = load i8, ptr %switch.gep135, align 1
  %switch.ext137 = zext i8 %switch.load136 to i32
  %i.cn = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep138 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.65, i64 %i.cn
  %switch.load139 = load i8, ptr %switch.gep138, align 1
  %i.co = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep140 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.66, i64 %i.co
  %switch.load141 = load i8, ptr %switch.gep140, align 1
  %i.cp = zext nneg i32 %.sroa.14.0 to i64
  %switch.gep142 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.67, i64 %i.cp
  %switch.load143 = load i8, ptr %switch.gep142, align 1
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

switch.lookup146:                                 ; preds = %bb.al
  %i.cq = zext nneg i32 %switch.tableidx to i64
  %switch.gep150 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.68, i64 %i.cq
  %switch.load151 = load i8, ptr %switch.gep150, align 1
  %switch.ext152 = zext i8 %switch.load151 to i32
  %i.cr = zext nneg i32 %switch.tableidx to i64
  %switch.gep153 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.69, i64 %i.cr
  %switch.load154 = load i8, ptr %switch.gep153, align 1
  %i.cs = zext nneg i32 %switch.tableidx to i64
  %switch.gep155 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.70, i64 %i.cs
  %switch.load156 = load i8, ptr %switch.gep155, align 1
  %i.ct = zext nneg i32 %switch.tableidx to i64
  %switch.gep157 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs3_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaN7cMqnSAH7_6simple.71, i64 %i.ct
  %switch.load158 = load i8, ptr %switch.gep157, align 1
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

switch.lookup159:                                 ; preds = %bb.an
  %switch.cast160 = trunc nuw i32 %.sroa.14.0 to i24
  %switch.shiftamt161 = shl nuw nsw i24 %switch.cast160, 3
  %switch.downshift162 = lshr i24 2105344, %switch.shiftamt161
  %switch.masked163 = trunc i24 %switch.downshift162 to i8
  %switch.idx.cast164 = trunc nuw i32 %.sroa.14.0 to i8
  %switch.offset = add nuw nsw i8 %switch.idx.cast164, 1
  br label %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit

_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit: ; preds = %switch.lookup159, %bb.an, %switch.lookup146, %bb.al, %switch.lookup132, %bb.aj, %switch.lookup129, %bb.ai, %switch.lookup119, %bb.ad, %switch.lookup112, %bb.ac, %switch.lookup99, %bb.z, %switch.lookup87, %bb.y, %switch.lookup, %bb.s, %bb.q, %bb.r, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.aa, %bb.ab, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ak, %bb.am, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc
  %.sroa.14.056 = phi i32 [ %.sroa.14.0, %bb.an ], [ %.sroa.14.0, %bb.q ], [ %.sroa.14.0, %bb.ap ], [ %.sroa.14.0, %bb.aq ], [ %.sroa.14.0, %bb.ar ], [ %.sroa.14.0, %bb.as ], [ %.sroa.14.0, %bb.at ], [ %.sroa.14.0, %bb.au ], [ %.sroa.14.0, %bb.av ], [ %.sroa.14.0, %bb.aw ], [ %.sroa.14.0, %bb.ad ], [ %.sroa.14.0, %switch.lookup112 ], [ %.sroa.14.0, %bb.ai ], [ %.sroa.14.0, %bb.r ], [ %.sroa.14.0, %bb.ao ], [ %.sroa.14.0, %bb.az ], [ %.sroa.14.0, %bb.ba ], [ %.sroa.14.0, %bb.am ], [ %.sroa.14.0, %bb.bb ], [ %.sroa.14.0, %bb.ab ], [ %.sroa.14.0, %bb.s ], [ %.sroa.14.0, %bb.ag ], [ %.sroa.14.0, %bb.al ], [ %.sroa.14.0, %bb.t ], [ %switch.ext92, %switch.lookup87 ], [ %.sroa.14.0, %bb.y ], [ %.sroa.14.0, %switch.lookup129 ], [ %.sroa.14.0, %bb.u ], [ %.sroa.14.0, %bb.bc ], [ %switch.ext124, %switch.lookup119 ], [ %.sroa.14.0, %bb.aa ], [ %.sroa.14.0, %bb.v ], [ %switch.ext152, %switch.lookup146 ], [ %.sroa.14.0, %switch.lookup159 ], [ %switch.ext, %switch.lookup ], [ %.sroa.14.0, %bb.w ], [ %.sroa.14.0, %bb.ah ], [ %.sroa.14.0, %bb.z ], [ %switch.ext105, %switch.lookup99 ], [ %.sroa.14.0, %bb.ax ], [ %.sroa.14.0, %bb.ay ], [ %.sroa.14.0, %bb.ak ], [ %.sroa.14.0, %bb.x ], [ %.sroa.14.0, %bb.ac ], [ %.sroa.14.0, %bb.ae ], [ %.sroa.14.0, %bb.af ], [ %.sroa.14.0, %bb.aj ], [ %switch.ext137, %switch.lookup132 ]
  %.sroa.07.0.i = phi i8 [ 0, %bb.an ], [ 0, %bb.q ], [ 0, %bb.ap ], [ 64, %bb.aq ], [ 32, %bb.ar ], [ 16, %bb.as ], [ 64, %bb.at ], [ 32, %bb.au ], [ 16, %bb.av ], [ 26, %bb.aw ], [ 0, %bb.ad ], [ %switch.load114, %switch.lookup112 ], [ 0, %bb.ai ], [ 0, %bb.r ], [ 0, %bb.ao ], [ 16, %bb.az ], [ 21, %bb.ba ], [ 0, %bb.am ], [ 26, %bb.bb ], [ 0, %bb.ab ], [ 0, %bb.s ], [ 0, %bb.ag ], [ 0, %bb.al ], [ 0, %bb.t ], [ %switch.load94, %switch.lookup87 ], [ 0, %bb.y ], [ %switch.idx.mult, %switch.lookup129 ], [ 0, %bb.u ], [ 32, %bb.bc ], [ %switch.load126, %switch.lookup119 ], [ 0, %bb.aa ], [ 0, %bb.v ], [ %switch.load154, %switch.lookup146 ], [ %switch.masked163, %switch.lookup159 ], [ %switch.load82, %switch.lookup ], [ 0, %bb.w ], [ 0, %bb.ah ], [ 0, %bb.z ], [ %switch.load107, %switch.lookup99 ], [ 64, %bb.ax ], [ 28, %bb.ay ], [ 0, %bb.ak ], [ 0, %bb.x ], [ 0, %bb.ac ], [ 0, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.aj ], [ %switch.load139, %switch.lookup132 ]
  %.sroa.06.0.i = phi i8 [ 0, %bb.an ], [ 0, %bb.q ], [ 1, %bb.ap ], [ 1, %bb.aq ], [ 1, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.at ], [ 1, %bb.au ], [ 1, %bb.av ], [ 7, %bb.aw ], [ 0, %bb.ad ], [ 1, %switch.lookup112 ], [ 0, %bb.ai ], [ 0, %bb.r ], [ 0, %bb.ao ], [ 8, %bb.az ], [ 8, %bb.ba ], [ 0, %bb.am ], [ 8, %bb.bb ], [ 0, %bb.ab ], [ 0, %bb.s ], [ 0, %bb.ag ], [ 0, %bb.al ], [ 0, %bb.t ], [ 1, %switch.lookup87 ], [ 0, %bb.y ], [ 1, %switch.lookup129 ], [ 0, %bb.u ], [ 1, %bb.bc ], [ 1, %switch.lookup119 ], [ 0, %bb.aa ], [ 0, %bb.v ], [ %switch.load156, %switch.lookup146 ], [ 1, %switch.lookup159 ], [ 1, %switch.lookup ], [ 0, %bb.w ], [ 0, %bb.ah ], [ 0, %bb.z ], [ %switch.load109, %switch.lookup99 ], [ 11, %bb.ax ], [ 12, %bb.ay ], [ 0, %bb.ak ], [ 0, %bb.x ], [ 0, %bb.ac ], [ 0, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.aj ], [ %switch.load141, %switch.lookup132 ]
  %.sroa.05.0.i = phi i8 [ 0, %bb.an ], [ 0, %bb.q ], [ 1, %bb.ap ], [ 2, %bb.aq ], [ 2, %bb.ar ], [ 2, %bb.as ], [ 3, %bb.at ], [ 3, %bb.au ], [ 3, %bb.av ], [ 8, %bb.aw ], [ 0, %bb.ad ], [ %switch.load116, %switch.lookup112 ], [ 0, %bb.ai ], [ 0, %bb.r ], [ 0, %bb.ao ], [ 3, %bb.az ], [ 3, %bb.ba ], [ 0, %bb.am ], [ 3, %bb.bb ], [ 0, %bb.ab ], [ 0, %bb.s ], [ 0, %bb.ag ], [ 0, %bb.al ], [ 0, %bb.t ], [ %switch.load96, %switch.lookup87 ], [ 0, %bb.y ], [ %switch.masked, %switch.lookup129 ], [ 0, %bb.u ], [ 4, %bb.bc ], [ %switch.load128, %switch.lookup119 ], [ 0, %bb.aa ], [ 0, %bb.v ], [ %switch.load158, %switch.lookup146 ], [ %switch.offset, %switch.lookup159 ], [ %switch.load84, %switch.lookup ], [ 0, %bb.w ], [ 0, %bb.ah ], [ 0, %bb.z ], [ %switch.load111, %switch.lookup99 ], [ 2, %bb.ax ], [ 3, %bb.ay ], [ 0, %bb.ak ], [ 0, %bb.x ], [ 0, %bb.ac ], [ 0, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.aj ], [ %switch.load143, %switch.lookup132 ]
  %i.cu = icmp eq i32 %.sroa.12.0.a, 0
  %2 = zext i32 %.sroa.12.0.a to i64
  %.sroa.02.0.i = select i1 %i.cu, i64 2, i64 0
  store i64 %.sroa.538.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.02.0.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.14.056, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.9.0, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.03.0, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.12.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %.sroa.05.0.i, ptr %.sroa.4.sroa.12.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %.sroa.06.0.i, ptr %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx.sroa_idx, align 2
  %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %.sroa.07.0.i, ptr %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %_RINvNtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECsaN7cMqnSAH7_6simple.exit
  ret void

bb.be:                                            ; preds = %bb.k
  %i.cv = extractvalue { i64, i64 } %i.bc, 1      ; 4 uses
  store i64 %i.cv, ptr %1, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.cx, align 8
  br label %bb.bd

bb.bg:                                            ; preds = %bb.be
  %i.cy = load ptr, ptr %i.g, align 8, !nonnull !5, !align !9, !noundef !5 ; 8 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.da = load i64, ptr %i.cz, align 8, !noundef !5
  %i.db = icmp ult i64 %i.cv, %i.da
  br i1 %i.db, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader64NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCsaN7cMqnSAH7_6simple.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !144
  store ptr @0, ptr %i.b, align 8, !noalias !144
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 25, ptr %i.dc, align 8, !noalias !144
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14, !noalias !144
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader64NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCsaN7cMqnSAH7_6simple.exit: ; preds = %bb.bg
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !5, !noundef !5
  %i.df = getelementptr inbounds nuw [64 x i8], ptr %i.de, i64 %i.cv ; 4 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %.val = load i32, ptr %i.dg, align 1            ; 2 uses
  %i.dh = tail call i32 @llvm.bswap.i32(i32 %.val)
  %.sroa.03.0.i.i = select i1 %i.k, i32 %i.dh, i32 %.val
  switch i32 %.sroa.03.0.i.i, label %.backedge [
    i32 9, label %bb.bi
    i32 4, label %bb.bj
    i32 1073741844, label %bb.bk
  ]

bb.bi:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader64NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCsaN7cMqnSAH7_6simple.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !5, !noundef !5
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !5
  call void @_RINvYINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_5Rel64BO_ERShECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.df, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dj, i64 noundef %i.dl)
  %i.dm = load i64, ptr %i.f, align 8, !range !6, !noundef !5
  %i.dn = trunc nuw i64 %i.dm to i1
  br i1 %i.dn, label %bb.bl, label %bb.bm

bb.bj:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader64NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCsaN7cMqnSAH7_6simple.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.do = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !5, !noundef !5
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !5
  call void @_RINvYINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_6Rela64BO_ERShECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.df, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dp, i64 noundef %i.dr)
  %i.ds = load i64, ptr %i.e, align 8, !range !6, !noundef !5
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %bb.bn, label %bb.bo

bb.bk:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader64NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCsaN7cMqnSAH7_6simple.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.du = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !5, !noundef !5
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !5
  call void @_RINvYINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.df, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dv, i64 noundef %i.dx)
  %i.dy = load i64, ptr %i.d, align 8, !range !6, !noundef !5
  %i.dz = trunc nuw i64 %i.dy to i1
  br i1 %i.dz, label %bb.bp, label %bb.bq

bb.bl:                                            ; preds = %bb.bm, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge

bb.bm:                                            ; preds = %bb.bi
  %i.ea = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.eb = load i64, ptr %i.u, align 8, !noundef !5
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.eb
  store ptr %i.ea, ptr %i.l, align 8
  store ptr %i.ec, ptr %i.n, align 8
  store i8 %i.j, ptr %.sroa.530.0..sroa_idx, align 8
  store i8 2, ptr %i.m, align 2
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bo, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge

bb.bo:                                            ; preds = %bb.bj
  %i.ed = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ee = load i64, ptr %i.s, align 8, !noundef !5
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load ptr, ptr %i.g, align 8, !nonnull !5, !align !9, !noundef !5
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !5, !noundef !5
  %i.ej = tail call noundef zeroext i1 @_RNvYINtNtCs9Jn0q30Ea0B_6object3elf12FileHeader64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf4file10FileHeader11is_mips64elCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.ei, i1 noundef zeroext %i.k)
  %i.ek = zext i1 %i.ej to i8
  store ptr %i.ed, ptr %i.l, align 8
  store ptr %i.ef, ptr %i.n, align 8
  store i8 %i.j, ptr %.sroa.530.0..sroa_idx, align 8
  store i8 %i.ek, ptr %.sroa.631.0..sroa_idx, align 1
  store i8 3, ptr %i.m, align 2
  br label %bb.bn

bb.bp:                                            ; preds = %bb.br, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge

.backedge:                                        ; preds = %bb.bp, %bb.bn, %bb.bl, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader64NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCsaN7cMqnSAH7_6simple.exit
  br label %bb.b

bb.bq:                                            ; preds = %bb.bk
  %i.el = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.em = load i64, ptr %i.p, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMse_NtNtNtCs9Jn0q30Ea0B_6object4read3elf10relocationNtB5_12CrelIterator3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.el, i64 noundef %i.em)
  %i.en = load i8, ptr %i.q, align 2, !range !16, !noundef !5
  %i.eo = icmp eq i8 %i.en, 2
  br i1 %i.eo, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bs, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bp

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  br label %bb.br
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCs9Jn0q30Ea0B_6object4readNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf7section13SectionHeader4linkCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(40), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf7section13SectionHeader9info_linkCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(40), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf7section13SectionHeader4linkCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtCs9Jn0q30Ea0B_6object3elf15SectionHeader64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf7section13SectionHeader9info_linkCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaN7cMqnSAH7_6simple(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0
end_hunk_1
