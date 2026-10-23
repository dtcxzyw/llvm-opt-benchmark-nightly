Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.03?download=true
inline.NumInlined: 101
inline.NumDeleted: 76
begin_hunk_0_@_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationINtB5_21ElfRelocationIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump:bb.a
  %i.ai = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val1.i, i1 noundef zeroext %i.ac), !noalias !29
  %i.aj = and i32 %i.ai, 255
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val3.i = load i32, ptr %i.ak, align 1, !alias.scope !28
  %i.al = tail call noundef i32 @_RNvMsg_NtCseHTIzroA4w0_6object6endianINtB5_3I32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val3.i, i1 noundef zeroext %i.ac), !noalias !29
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.an, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ah, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.aj, ptr %.sroa.69.0..sroa_idx, align 4
  br label %bb.g

bb.i:                                             ; preds = %bb.e
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationINtB5_21ElfRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.c = load i8, ptr %i.b, align 2, !range !10, !noundef !5 ; 2 uses
  %i.d = add nsw i8 %i.c, -2
  %.inv = icmp samesign ult i8 %i.c, 2
  %narrow = select i1 %.inv, i8 2, i8 %i.d
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @_RNvXsl_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  %i.m = load i64, ptr %i.a, align 8, !range !11, !noundef !5
  %cond = icmp eq i64 %i.m, 0
  br i1 %cond, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.n, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !12, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1                  ; 3 uses
  %.val = load i64, ptr %i.e, align 1
  %i.r = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load i64, ptr %i.r, align 1            ; 2 uses
  %i.s = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val, i1 noundef zeroext %i.q), !noalias !35
  %i.t = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val4, i1 noundef zeroext %i.q), !noalias !35
  %i.u = lshr i64 %i.t, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val4, i1 noundef zeroext %i.q), !noalias !35
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.y, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.v, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.x, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.i, %bb.d, %bb.h, %bb.f
  %.sink = phi i64 [ 1, %bb.h ], [ 0, %bb.d ], [ 1, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.h:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.z, ptr %1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ac = load i8, ptr %i.aa, align 8, !range !12, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1                ; 4 uses
  %i.ae = load i8, ptr %i.ab, align 1, !range !12, !noundef !5
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %.val.i = load i64, ptr %i.i, align 1, !alias.scope !36
  %i.ag = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val.i, i1 noundef zeroext %i.ad), !noalias !37
  %i.ah = tail call noundef i64 @_RNvMsl_NtCseHTIzroA4w0_6object3elfINtB5_6Rela64NtNtB7_6endian10EndiannessE10get_r_infoCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(24) %i.i, i1 noundef zeroext %i.ad, i1 noundef zeroext %i.af), !noalias !38
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = tail call noundef i64 @_RNvMsl_NtCseHTIzroA4w0_6object3elfINtB5_6Rela64NtNtB7_6endian10EndiannessE10get_r_infoCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(24) %i.i, i1 noundef zeroext %i.ad, i1 noundef zeroext %i.af), !noalias !38
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i = load i64, ptr %i.am, align 1, !alias.scope !36
  %i.an = tail call noundef i64 @_RNvMsj_NtCseHTIzroA4w0_6object6endianINtB5_3I64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val1.i, i1 noundef zeroext %i.ad), !noalias !38
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ao, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.an, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.aj, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.al, ptr %.sroa.69.0..sroa_idx, align 4
  br label %bb.g

bb.i:                                             ; preds = %bb.e
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationINtB5_28ElfDynamicRelocationIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load i8, ptr %i.i, align 8, !range !12, !noundef !5 ; 3 uses
  %i.k = trunc nuw i8 %i.j to i1                  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 66 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.u = load i8, ptr %i.m, align 2, !range !14, !noundef !5
  %.not = icmp eq i8 %i.u, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.backedge
  call fastcc void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationINtB5_21ElfRelocationIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef align 8 dereferenceable(56) %i.l)
  %i.v = load i64, ptr %i.f, align 8, !range !6, !noundef !5
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.e, %.backedge
  %i.x = load i64, ptr %1, align 8, !noundef !5   ; 4 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.z, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aa = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %i.ad = load i8, ptr %i.m, align 2, !range !10, !noundef !5 ; 3 uses
  %i.ae = add nsw i8 %i.ad, -2
  %.inv = icmp samesign ult i8 %i.ad, 2
  %narrow = select i1 %.inv, i8 2, i8 %i.ae
  switch i8 %narrow, label %bb.f [
    i8 0, label %bb.i
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.e:                                             ; preds = %bb.b
  store i8 -1, ptr %i.m, align 2
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.d
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %2 = trunc nuw i8 %i.ad to i1
  %3 = xor i1 %2, true
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.g
  %.sroa.03.0 = phi i1 [ %3, %bb.h ], [ false, %bb.g ], [ true, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %i.af = getelementptr i8, ptr %i.ac, i64 18
  %.val36 = load i16, ptr %i.af, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RINvNtNtNtCseHTIzroA4w0_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader32NtNtB8_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %.sroa.4.0..sroa_idx, i16 %.val36, i1 noundef zeroext %i.k, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.sroa.03.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  ret void

bb.k:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5
  %i.aj = icmp ult i64 %i.x, %i.ai
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ak, align 8
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.x ; 5 uses
  %i.ao = add nuw i64 %i.x, 1
  store i64 %i.ao, ptr %1, align 8
  %i.ap = tail call noundef i64 @_RNvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf7section13SectionHeader4linkCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.an, i1 noundef zeroext %i.k)
  %i.aq = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 232
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5
  %.not35 = icmp eq i64 %i.ap, %i.as
  br i1 %.not35, label %bb.n, label %.backedge.backedge

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr i8, ptr %i.an, i64 4
  %.val = load i32, ptr %i.at, align 1
  %i.au = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %i.k)
  switch i32 %i.au, label %.backedge.backedge [
    i32 9, label %bb.o
    i32 4, label %bb.p
    i32 1073741844, label %bb.q
  ]

.backedge.backedge:                               ; preds = %bb.n, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.y, %bb.m
  br label %.backedge

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.av = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !noundef !5
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_5Rel32BO_ERShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.an, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef %i.az)
  %i.ba = load i64, ptr %i.e, align 8, !range !6, !noundef !5
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bc = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !5
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_6Rela32BO_ERShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.an, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef %i.bg)
  %i.bh = load i64, ptr %i.d, align 8, !range !6, !noundef !5
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %bb.t, label %bb.u

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bj = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !5, !noundef !5
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !5
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.an, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef %i.bn)
  %i.bo = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %bb.v, label %bb.w

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge.backedge

bb.s:                                             ; preds = %bb.o
  %i.bq = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.br = load i64, ptr %i.t, align 8, !noundef !5
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br
  store ptr %i.bq, ptr %i.l, align 8
  store ptr %i.bs, ptr %.sroa.428.0..sroa_idx, align 8
  store i8 %i.j, ptr %.sroa.529.0..sroa_idx, align 8
  store i8 2, ptr %i.m, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge.backedge

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge.backedge

bb.u:                                             ; preds = %bb.p
  %i.bt = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bu = load i64, ptr %i.r, align 8, !noundef !5
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5, !noundef !5
  %i.bz = tail call noundef zeroext i1 @_RNvYINtNtCseHTIzroA4w0_6object3elf12FileHeader32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf4file10FileHeader11is_mips64elCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(52) %i.by, i1 noundef zeroext %i.k)
  %i.ca = zext i1 %i.bz to i8
  store ptr %i.bt, ptr %i.l, align 8
  store ptr %i.bv, ptr %.sroa.428.0..sroa_idx, align 8
  store i8 %i.j, ptr %.sroa.529.0..sroa_idx, align 8
  store i8 %i.ca, ptr %.sroa.630.0..sroa_idx, align 1
  store i8 3, ptr %i.m, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge.backedge

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge.backedge

bb.w:                                             ; preds = %bb.q
  %i.cb = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.cc = load i64, ptr %i.o, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %i.cc)
  %i.cd = load i8, ptr %i.p, align 2, !range !15, !noundef !5
  %i.ce = icmp eq i8 %i.cd, 2
  br i1 %i.ce, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge.backedge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationINtB5_28ElfDynamicRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load i8, ptr %i.i, align 8, !range !12, !noundef !5 ; 3 uses
  %i.k = trunc nuw i8 %i.j to i1                  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 66 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.u = load i8, ptr %i.m, align 2, !range !14, !noundef !5
  %.not = icmp eq i8 %i.u, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.backedge
  call fastcc void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationINtB5_21ElfRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef align 8 dereferenceable(56) %i.l)
  %i.v = load i64, ptr %i.f, align 8, !range !6, !noundef !5
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.e, %.backedge
  %i.x = load i64, ptr %1, align 8, !noundef !5   ; 4 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.z, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aa = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %i.ad = load i8, ptr %i.m, align 2, !range !10, !noundef !5 ; 3 uses
  %i.ae = add nsw i8 %i.ad, -2
  %.inv = icmp samesign ult i8 %i.ad, 2
  %narrow = select i1 %.inv, i8 2, i8 %i.ae
  switch i8 %narrow, label %bb.f [
    i8 0, label %bb.i
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.e:                                             ; preds = %bb.b
  store i8 -1, ptr %i.m, align 2
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.d
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %2 = trunc nuw i8 %i.ad to i1
  %3 = xor i1 %2, true
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.g
  %.sroa.03.0 = phi i1 [ %3, %bb.h ], [ false, %bb.g ], [ true, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %i.af = getelementptr i8, ptr %i.ac, i64 18
  %.val36 = load i16, ptr %i.af, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RINvNtNtNtCseHTIzroA4w0_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %.sroa.4.0..sroa_idx, i16 %.val36, i1 noundef zeroext %i.k, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.sroa.03.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  ret void

bb.k:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5
  %i.aj = icmp ult i64 %i.x, %i.ai
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ak, align 8
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.am, i64 %i.x ; 5 uses
  %i.ao = add nuw i64 %i.x, 1
  store i64 %i.ao, ptr %1, align 8
  %i.ap = tail call noundef i64 @_RNvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf7section13SectionHeader4linkCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.an, i1 noundef zeroext %i.k)
  %i.aq = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 232
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5
  %.not35 = icmp eq i64 %i.ap, %i.as
  br i1 %.not35, label %bb.n, label %.backedge.backedge

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr i8, ptr %i.an, i64 4
  %.val = load i32, ptr %i.at, align 1
  %i.au = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %i.k)
  switch i32 %i.au, label %.backedge.backedge [
    i32 9, label %bb.o
    i32 4, label %bb.p
    i32 1073741844, label %bb.q
  ]

.backedge.backedge:                               ; preds = %bb.n, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.y, %bb.m
  br label %.backedge

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.av = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !noundef !5
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_5Rel64BO_ERShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.an, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef %i.az)
  %i.ba = load i64, ptr %i.e, align 8, !range !6, !noundef !5
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bc = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !5
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_6Rela64BO_ERShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.an, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef %i.bg)
  %i.bh = load i64, ptr %i.d, align 8, !range !6, !noundef !5
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %bb.t, label %bb.u

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bj = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !5, !noundef !5
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !5
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.an, i1 noundef zeroext %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef %i.bn)
  %i.bo = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %bb.v, label %bb.w

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge.backedge

bb.s:                                             ; preds = %bb.o
  %i.bq = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.br = load i64, ptr %i.t, align 8, !noundef !5
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.br
  store ptr %i.bq, ptr %i.l, align 8
  store ptr %i.bs, ptr %.sroa.428.0..sroa_idx, align 8
  store i8 %i.j, ptr %.sroa.529.0..sroa_idx, align 8
  store i8 2, ptr %i.m, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge.backedge

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge.backedge

bb.u:                                             ; preds = %bb.p
  %i.bt = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bu = load i64, ptr %i.r, align 8, !noundef !5
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5, !noundef !5
  %i.bz = tail call noundef zeroext i1 @_RNvYINtNtCseHTIzroA4w0_6object3elf12FileHeader64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf4file10FileHeader11is_mips64elCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.by, i1 noundef zeroext %i.k)
  %i.ca = zext i1 %i.bz to i8
  store ptr %i.bt, ptr %i.l, align 8
  store ptr %i.bv, ptr %.sroa.428.0..sroa_idx, align 8
  store i8 %i.j, ptr %.sroa.529.0..sroa_idx, align 8
  store i8 %i.ca, ptr %.sroa.630.0..sroa_idx, align 1
  store i8 3, ptr %i.m, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge.backedge

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge.backedge

bb.w:                                             ; preds = %bb.q
  %i.cb = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.cc = load i64, ptr %i.o, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %i.cc)
  %i.cd = load i8, ptr %i.p, align 2, !range !15, !noundef !5
  %i.ce = icmp eq i8 %i.cd, 2
  br i1 %i.ce, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge.backedge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  %i.k = load i8, ptr %i.j, align 8, !range !12, !noundef !5 ; 3 uses
  %i.l = trunc nuw i8 %i.k to i1                  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 66 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 50
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.v = load i8, ptr %i.n, align 2, !range !14, !noundef !5
  %.not = icmp eq i8 %i.v, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationINtB5_21ElfRelocationIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(56) %i.m)
  %i.w = load i64, ptr %i.g, align 8, !range !6, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.f, %bb.b
  %i.y = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5
  %i.z = load i64, ptr %1, align 8, !noundef !5
  %i.aa = tail call { i64, i64 } @_RNvMNtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB2_18RelocationSections3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, i64 noundef %i.z) ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.l, label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.ad, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ae = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5
  %i.ah = load i8, ptr %i.n, align 2, !range !10, !noundef !5 ; 3 uses
  %i.ai = add nsw i8 %i.ah, -2
  %.inv = icmp samesign ult i8 %i.ah, 2
  %narrow = select i1 %.inv, i8 2, i8 %i.ai
  switch i8 %narrow, label %bb.g [
    i8 0, label %bb.j
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.c
  store i8 -1, ptr %i.n, align 2
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.e
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %2 = trunc nuw i8 %i.ah to i1
  %3 = xor i1 %2, true
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.h
  %.sroa.03.0 = phi i1 [ %3, %bb.i ], [ false, %bb.h ], [ true, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %i.aj = getelementptr i8, ptr %i.ag, i64 18
  %.val36 = load i16, ptr %i.aj, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RINvNtNtNtCseHTIzroA4w0_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader32NtNtB8_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %.sroa.4.0..sroa_idx, i16 %.val36, i1 noundef zeroext %i.l, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.b, i1 noundef zeroext %.sroa.03.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  ret void

bb.l:                                             ; preds = %bb.d
  %i.ak = extractvalue { i64, i64 } %i.aa, 1      ; 4 uses
  store i64 %i.ak, ptr %1, align 8
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.am, align 8
  br label %bb.k

bb.n:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !5
  %i.aq = icmp ult i64 %i.ak, %i.ap
  br i1 %i.aq, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41
  store ptr @0, ptr %i.a, align 8, !noalias !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 25, ptr %i.ar, align 8, !noalias !41
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #18, !noalias !41
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.ak ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %.val = load i32, ptr %i.av, align 1
  %i.aw = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %i.l)
  switch i32 %i.aw, label %.backedge [
    i32 9, label %bb.p
    i32 4, label %bb.q
    i32 1073741844, label %bb.r
  ]

bb.p:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ax = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !5, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !5
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_5Rel32BO_ERShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.au, i1 noundef zeroext %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.bb)
  %i.bc = load i64, ptr %i.f, align 8, !range !6, !noundef !5
  %i.bd = trunc nuw i64 %i.bc to i1
  br i1 %i.bd, label %bb.s, label %bb.t

bb.q:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.be = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_6Rela32BO_ERShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.au, i1 noundef zeroext %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi)
  %i.bj = load i64, ptr %i.e, align 8, !range !6, !noundef !5
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.u, label %bb.v

bb.r:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bl = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !5, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !5
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.au, i1 noundef zeroext %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp)
  %i.bq = load i64, ptr %i.d, align 8, !range !6, !noundef !5
  %i.br = trunc nuw i64 %i.bq to i1
  br i1 %i.br, label %bb.w, label %bb.x

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge

bb.t:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bt = load i64, ptr %i.u, align 8, !noundef !5
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  store ptr %i.bs, ptr %i.m, align 8
  store ptr %i.bu, ptr %.sroa.429.0..sroa_idx, align 8
  store i8 %i.k, ptr %.sroa.530.0..sroa_idx, align 8
  store i8 2, ptr %i.n, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge

bb.v:                                             ; preds = %bb.q
  %i.bv = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bw = load i64, ptr %i.s, align 8, !noundef !5
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5
  %i.cb = tail call noundef zeroext i1 @_RNvYINtNtCseHTIzroA4w0_6object3elf12FileHeader32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf4file10FileHeader11is_mips64elCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(52) %i.ca, i1 noundef zeroext %i.l)
  %i.cc = zext i1 %i.cb to i8
  store ptr %i.bv, ptr %i.m, align 8
  store ptr %i.bx, ptr %.sroa.429.0..sroa_idx, align 8
  store i8 %i.k, ptr %.sroa.530.0..sroa_idx, align 8
  store i8 %i.cc, ptr %.sroa.631.0..sroa_idx, align 1
  store i8 3, ptr %i.n, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge

bb.x:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.ce = load i64, ptr %i.p, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef %i.ce)
  %i.cf = load i8, ptr %i.q, align 2, !range !15, !noundef !5
  %i.cg = icmp eq i8 %i.cf, 2
  br i1 %i.cg, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge

.backedge:                                        ; preds = %bb.z, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationINtB5_28ElfSectionRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  %i.k = load i8, ptr %i.j, align 8, !range !12, !noundef !5 ; 3 uses
  %i.l = trunc nuw i8 %i.k to i1                  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 66 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 50
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.v = load i8, ptr %i.n, align 2, !range !14, !noundef !5
  %.not = icmp eq i8 %i.v, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationINtB5_21ElfRelocationIteratorINtNtBb_3elf12FileHeader64NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(56) %i.m)
  %i.w = load i64, ptr %i.g, align 8, !range !6, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.f, %bb.b
  %i.y = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5
  %i.z = load i64, ptr %1, align 8, !noundef !5
  %i.aa = tail call { i64, i64 } @_RNvMNtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB2_18RelocationSections3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, i64 noundef %i.z) ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.l, label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.ad, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ae = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5
  %i.ah = load i8, ptr %i.n, align 2, !range !10, !noundef !5 ; 3 uses
  %i.ai = add nsw i8 %i.ah, -2
  %.inv = icmp samesign ult i8 %i.ah, 2
  %narrow = select i1 %.inv, i8 2, i8 %i.ai
  switch i8 %narrow, label %bb.g [
    i8 0, label %bb.j
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.c
  store i8 -1, ptr %i.n, align 2
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.e
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %2 = trunc nuw i8 %i.ah to i1
  %3 = xor i1 %2, true
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.h
  %.sroa.03.0 = phi i1 [ %3, %bb.i ], [ false, %bb.h ], [ true, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %i.aj = getelementptr i8, ptr %i.ag, i64 18
  %.val36 = load i16, ptr %i.aj, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RINvNtNtNtCseHTIzroA4w0_6object4read3elf10relocation16parse_relocationINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %.sroa.4.0..sroa_idx, i16 %.val36, i1 noundef zeroext %i.l, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.b, i1 noundef zeroext %.sroa.03.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  ret void

bb.l:                                             ; preds = %bb.d
  %i.ak = extractvalue { i64, i64 } %i.aa, 1      ; 4 uses
  store i64 %i.ak, ptr %1, align 8
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.am, align 8
  br label %bb.k

bb.n:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !5
  %i.aq = icmp ult i64 %i.ak, %i.ap
  br i1 %i.aq, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44
  store ptr @0, ptr %i.a, align 8, !noalias !44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 25, ptr %i.ar, align 8, !noalias !44
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #18, !noalias !44
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.at, i64 %i.ak ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %.val = load i32, ptr %i.av, align 1
  %i.aw = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %i.l)
  switch i32 %i.aw, label %.backedge [
    i32 9, label %bb.p
    i32 4, label %bb.q
    i32 1073741844, label %bb.r
  ]

bb.p:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ax = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !5, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !5
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_5Rel64BO_ERShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.au, i1 noundef zeroext %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.bb)
  %i.bc = load i64, ptr %i.f, align 8, !range !6, !noundef !5
  %i.bd = trunc nuw i64 %i.bc to i1
  br i1 %i.bd, label %bb.s, label %bb.t

bb.q:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.be = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_6Rela64BO_ERShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.au, i1 noundef zeroext %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi)
  %i.bj = load i64, ptr %i.e, align 8, !range !6, !noundef !5
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.u, label %bb.v

bb.r:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bl = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !5, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !5
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.au, i1 noundef zeroext %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp)
  %i.bq = load i64, ptr %i.d, align 8, !range !6, !noundef !5
  %i.br = trunc nuw i64 %i.bq to i1
  br i1 %i.br, label %bb.w, label %bb.x

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge

bb.t:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bt = load i64, ptr %i.u, align 8, !noundef !5
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bt
  store ptr %i.bs, ptr %i.m, align 8
  store ptr %i.bu, ptr %.sroa.429.0..sroa_idx, align 8
  store i8 %i.k, ptr %.sroa.530.0..sroa_idx, align 8
  store i8 2, ptr %i.n, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge

bb.v:                                             ; preds = %bb.q
  %i.bv = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bw = load i64, ptr %i.s, align 8, !noundef !5
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5
  %i.cb = tail call noundef zeroext i1 @_RNvYINtNtCseHTIzroA4w0_6object3elf12FileHeader64NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf4file10FileHeader11is_mips64elCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.ca, i1 noundef zeroext %i.l)
  %i.cc = zext i1 %i.cb to i8
  store ptr %i.bv, ptr %i.m, align 8
  store ptr %i.bx, ptr %.sroa.429.0..sroa_idx, align 8
  store i8 %i.k, ptr %.sroa.530.0..sroa_idx, align 8
  store i8 %i.cc, ptr %.sroa.631.0..sroa_idx, align 1
  store i8 3, ptr %i.n, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge

bb.x:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.ce = load i64, ptr %i.p, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsk_NtNtNtCseHTIzroA4w0_6object4read3elf10relocationNtB5_12CrelIterator3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef %i.ce)
  %i.cf = load i8, ptr %i.q, align 2, !range !15, !noundef !5
  %i.cg = icmp eq i8 %i.cf, 2
  br i1 %i.cg, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge

.backedge:                                        ; preds = %bb.z, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultRINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtBN_6endian10EndiannessENtNtBN_4read5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs4_NtNtNtCseHTIzroA4w0_6object4read5xcoff6symbolINtB5_19XcoffSymbolIteratorNtNtBb_5xcoff12FileHeader32ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !47, !nonnull !5, !align !13, !noundef !5 ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val3.i = load i64, ptr %i.d, align 8, !noalias !47, !noundef !5
  %.promoted.i = load i64, ptr %i.b, align 8, !alias.scope !47
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = phi i64 [ %i.k, %bb.c ], [ %.promoted.i, %bb.a ] ; 4 uses
  %i.f = icmp ult i64 %i.e, %.val3.i
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !47, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw [18 x i8], ptr %.val.i, i64 %i.e ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 17
  %.val4.i = load i8, ptr %i.h, align 1, !noalias !47, !noundef !5
  %i.i = zext i8 %.val4.i to i64
  %i.j = add nuw i64 %i.e, 1
  %i.k = add i64 %i.j, %i.i                       ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !alias.scope !47
  %i.l = getelementptr i8, ptr %i.g, i64 16
  %.val5.i = load i8, ptr %i.l, align 1, !noalias !47, !noundef !5
  %i.m = icmp eq i8 %.val5.i, 0
  br i1 %i.m, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %1, align 8, !nonnull !5, !align !13, !noundef !5
  store ptr %i.n, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %.sroa.66.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
end_hunk_0
