Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.05?download=true
inline.NumInlined: 145
inline.NumDeleted: 103
begin_hunk_0_@_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE8versionsCs8aoZCP6pRcV_7objdump:bb.a

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.16, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.i, i64 15, i1 false)
  br label %.loopexit142

bb.j:                                             ; preds = %bb.h
  %i.al = icmp eq ptr %i.ag, %i.ae
  br i1 %i.al, label %.loopexit142, label %bb.g

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.an, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.w

.loopexit142:                                     ; preds = %bb.j, %bb.i
  %.sroa.7.1.ph = phi i64 [ %i.ak, %bb.i ], [ undef, %bb.j ]
  %.sroa.094.1.ph = phi ptr [ %i.aj, %bb.i ], [ undef, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %.not70 = icmp eq i8 %i.ah, 2
  br i1 %.not70, label %.lr.ph.i80, label %bb.l

bb.l:                                             ; preds = %.loopexit142
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6110.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16, i64 7, i1 false)
  store ptr %.sroa.094.1.ph, ptr %i.f, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.7.1.ph, ptr %.sroa.4108.0..sroa_idx, align 8
  br label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.loopexit142, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 %i.ah, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i78)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.425.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.627.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph.i80
  %.sroa.022.02.i83 = phi ptr [ %.val, %.lr.ph.i80 ], [ %i.aq, %bb.p ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.022.02.i83, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !141
  call void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader11gnu_verneedRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %.sroa.022.02.i83, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4), !noalias !142
  %i.ar = load i8, ptr %i.ap, align 8, !range !8, !noalias !141, !noundef !5 ; 4 uses
  %i.as = icmp eq i8 %i.ar, -1
  %i.at = load ptr, ptr %i.a, align 8, !noalias !141 ; 3 uses
  %i.au = load i64, ptr %.sroa.425.0..sroa_idx.i81, align 8, !noalias !141 ; 2 uses
  br i1 %i.as, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.i78, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.627.0..sroa_idx.i82, i64 15, i1 false), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !141
  %.not.i84 = icmp eq i8 %i.ar, 2
  br i1 %.not.i84, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.16102, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.i78, i64 15, i1 false)
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.av = icmp eq ptr %i.aq, %i.ae
  br i1 %i.av, label %.loopexit, label %bb.m

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i78)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.au, ptr %i.ax, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.w

.loopexit:                                        ; preds = %bb.p, %bb.o
  %.sroa.798.1.ph = phi i64 [ %i.au, %bb.o ], [ undef, %bb.p ]
  %.sroa.097.1.ph = phi ptr [ %i.at, %bb.o ], [ undef, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i78)
  %.not71 = icmp eq i8 %i.ar, 2
  br i1 %.not71, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6118.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16102, i64 7, i1 false)
  store ptr %.sroa.097.1.ph, ptr %i.e, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.798.1.ph, ptr %.sroa.4116.0..sroa_idx, align 8
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 %i.ar, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvMs0_NtNtNtCseHTIzroA4w0_6object4read3elf7versionINtB6_12VersionTableINtNtBc_3elf12FileHeader64NtNtBc_6endian10EndiannessEE5parseRShECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h)
  %i.az = load i64, ptr %i.d, align 8, !range !9, !noundef !5
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !5, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.be, ptr %i.bg, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.w:                                             ; preds = %_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader64NtNtBa_6endian10EndiannessEE21symbol_table_by_indexCs8aoZCP6pRcV_7objdump.exit.thread, %bb.q, %bb.k, %bb.v, %.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCseHTIzroA4w0_6object4read5macho10relocationINtB2_23MachORelocationIteratorINtNtB8_5macho12MachHeader32NtNtB8_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 25 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted = load ptr, ptr %i.b, align 8        ; 2 uses
  %i.e = icmp eq ptr %.promoted, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 17 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.010.0225 = phi i64 [ 0, %.lr.ph ], [ %.sroa.010.2, %bb.k ] ; 35 uses
  %.sroa.017.0224 = phi i64 [ 0, %.lr.ph ], [ %.sroa.017.2, %bb.k ] ; 3 uses
  %.sroa.4.0223 = phi i64 [ undef, %.lr.ph ], [ %.sroa.4.2, %bb.k ] ; 3 uses
  %i.m = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.k ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.b, align 8
  %i.o = load i8, ptr %i.g, align 8, !range !11, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.r = tail call noundef i32 @_RNvXs6_NtNtNtCseHTIzroA4w0_6object4read5macho4fileINtNtBb_5macho12MachHeader32NtNtBb_6endian10EndiannessENtB5_10MachHeader7cputypeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(28) %i.q, i1 noundef zeroext %i.p) ; 3 uses
  %i.s = icmp eq i32 %i.r, 16777223
  br i1 %i.s, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.06.0.copyload57 = load i64, ptr %i.m, align 1
  %i.t = load i8, ptr %i.g, align 8, !range !11, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1
  call void @_RNvMss_NtCseHTIzroA4w0_6object5machoINtB5_10RelocationNtNtB7_6endian10EndiannessE4infoCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i64 noundef %.sroa.06.0.copyload57, i1 noundef zeroext %i.u)
  %i.v = load i8, ptr %i.i, align 1, !noundef !5  ; 4 uses
  %i.w = load i8, ptr %i.j, align 2, !range !11, !noundef !5 ; 6 uses
  %i.x = load i8, ptr %i.k, align 4, !noundef !5  ; 15 uses
  switch i8 %i.v, label %.loopexit.split.loop.exit172 [
    i8 0, label %.split366
    i8 1, label %.split
    i8 2, label %.split420
    i8 4, label %.split374
    i8 3, label %.split405
    i8 5, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.y, align 8
  br label %bb.o

bb.c:                                             ; preds = %bb.b
  %.sroa.030.0.copyload = load i32, ptr %i.m, align 1 ; 2 uses
  %i.z = shl i32 %.sroa.030.0.copyload, 24
  %.sroa.03.0.i = select i1 %i.p, i32 %i.z, i32 %.sroa.030.0.copyload
  %.not35 = icmp sgt i32 %.sroa.03.0.i, -1
  br i1 %.not35, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.06.0.copyload = load i64, ptr %i.m, align 1
  %i.aa = load i8, ptr %i.g, align 8, !range !11, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  call void @_RNvMss_NtCseHTIzroA4w0_6object5machoINtB5_10RelocationNtNtB7_6endian10EndiannessE4infoCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i64 noundef %.sroa.06.0.copyload, i1 noundef zeroext %i.ab)
  %i.ac = load i8, ptr %i.i, align 1, !noundef !5 ; 12 uses
  %i.ad = load i8, ptr %i.j, align 2, !range !11, !noundef !5 ; 11 uses
  %i.ae = load i8, ptr %i.k, align 4, !noundef !5 ; 20 uses
  switch i32 %i.r, label %.loopexit.split.loop.exit [
    i32 12, label %.split428
    i32 16777228, label %bb.e
    i32 33554444, label %bb.e
    i32 7, label %.split436
    i32 16777234, label %.loopexit
    i32 18, label %.loopexit
  ]

.split428:                                        ; preds = %bb.d
  %i.af = and i8 %i.ae, 7
  %i.ag = shl i8 8, %i.af
  %2 = or i8 %i.ad, %i.ac
  %brmerge.not = icmp eq i8 %2, 0                 ; 2 uses
  %. = select i1 %brmerge.not, i8 2, i8 0
  %.37 = zext i1 %brmerge.not to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ai = load i8, ptr %i.ah, align 1, !range !11, !noundef !5
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = load i32, ptr %i.l, align 4             ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  %spec.select56433 = select i1 %i.al, i64 2, i64 1
  %.sroa.419.0434 = zext i32 %i.ak to i64
  %.sroa.018.0435 = select i1 %i.aj, i64 0, i64 %spec.select56433
  %i.am = icmp eq i64 %.sroa.010.0225, 0
  br label %.thread456

bb.e:                                             ; preds = %bb.d, %bb.d
  switch i8 %i.ac, label %.loopexit.split.loop.exit162 [
    i8 0, label %.split389
    i8 2, label %bb.f
    i8 7, label %.split397
    i8 10, label %bb.g
    i8 1, label %bb.h
  ]

.split436:                                        ; preds = %bb.d
  %i.an = trunc nuw i8 %i.ad to i1
  %i.ao = and i8 %i.ae, 7
  %i.ap = shl i8 8, %i.ao                         ; 2 uses
  %3 = or i8 %i.ad, %i.ac
  %brmerge2.not = icmp eq i8 %3, 0                ; 2 uses
  %.38 = select i1 %brmerge2.not, i8 2, i8 0      ; 2 uses
  %.39 = zext i1 %brmerge2.not to i8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ar = load i8, ptr %i.aq, align 1, !range !11, !noundef !5
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load i32, ptr %i.l, align 4             ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  %spec.select56441 = select i1 %i.au, i64 2, i64 1
  %.sroa.419.0442 = zext i32 %i.at to i64         ; 2 uses
  %.sroa.018.0443 = select i1 %i.as, i64 0, i64 %spec.select56441 ; 2 uses
  %i.av = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.an, label %.thread462, label %.thread456

.loopexit.split.loop.exit:                        ; preds = %bb.d
  %i.aw = trunc nuw i8 %i.ad to i1
  %i.ax = and i8 %i.ae, 7
  %i.ay = shl i8 8, %i.ax                         ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ba = load i8, ptr %i.az, align 1, !range !11, !noundef !5
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = load i32, ptr %i.l, align 4             ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  %spec.select56386 = select i1 %i.bd, i64 2, i64 1
  %.sroa.419.0387 = zext i32 %i.bc to i64         ; 2 uses
  %.sroa.018.0388 = select i1 %i.bb, i64 0, i64 %spec.select56386 ; 2 uses
  %i.be = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.aw, label %.loopexit.thread, label %.thread456

.loopexit.split.loop.exit162:                     ; preds = %bb.e
  %i.bf = trunc nuw i8 %i.ad to i1
  %i.bg = and i8 %i.ae, 7
  %i.bh = shl i8 8, %i.bg                         ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.bj = load i8, ptr %i.bi, align 1, !range !11, !noundef !5
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = load i32, ptr %i.l, align 4             ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  %spec.select56363 = select i1 %i.bm, i64 2, i64 1
  %.sroa.419.0364 = zext i32 %i.bl to i64         ; 2 uses
  %.sroa.018.0365 = select i1 %i.bk, i64 0, i64 %spec.select56363 ; 2 uses
  %i.bn = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.bf, label %.loopexit.thread, label %.thread456

.loopexit.split.loop.exit172:                     ; preds = %.thread
  %i.bo = trunc nuw i8 %i.w to i1
  %i.bp = and i8 %i.x, 7
  %i.bq = shl i8 8, %i.bp                         ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.bs = load i8, ptr %i.br, align 1, !range !11, !noundef !5
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = load i32, ptr %i.l, align 4             ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  %spec.select56417 = select i1 %i.bv, i64 2, i64 1
  %.sroa.419.0418 = zext i32 %i.bu to i64         ; 2 uses
  %.sroa.018.0419 = select i1 %i.bt, i64 0, i64 %spec.select56417 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.bo, label %.thread445, label %.thread456

.loopexit:                                        ; preds = %bb.d, %bb.d
  %i.bx = trunc nuw i8 %i.ad to i1
  %i.by = and i8 %i.ae, 7
  %i.bz = shl i8 8, %i.by                         ; 2 uses
  %4 = or i8 %i.ad, %i.ac
  %brmerge4.not = icmp eq i8 %4, 0                ; 2 uses
  %.40 = select i1 %brmerge4.not, i8 2, i8 0      ; 2 uses
  %.41 = zext i1 %brmerge4.not to i8              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !range !11, !noundef !5
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = load i32, ptr %i.l, align 4             ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  %spec.select56 = select i1 %i.ce, i64 2, i64 1
  %.sroa.419.0 = zext i32 %i.cd to i64            ; 2 uses
  %.sroa.018.0 = select i1 %i.cc, i64 0, i64 %spec.select56 ; 2 uses
  %i.cf = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.bx, label %.loopexit.thread, label %.thread456

.split389:                                        ; preds = %bb.e
  %i.cg = trunc nuw i8 %i.ad to i1
  %i.ch = and i8 %i.ae, 7
  %i.ci = shl i8 8, %i.ch                         ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ck = load i8, ptr %i.cj, align 1, !range !11, !noundef !5
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = load i32, ptr %i.l, align 4             ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  %spec.select56394 = select i1 %i.cn, i64 2, i64 1
  %.sroa.419.0395 = zext i32 %i.cm to i64         ; 2 uses
  %.sroa.018.0396 = select i1 %i.cl, i64 0, i64 %spec.select56394 ; 2 uses
  %i.co = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.cg, label %.loopexit.thread, label %.thread456

bb.f:                                             ; preds = %bb.e
  %i.cp = trunc nuw i8 %i.ad to i1
  %i.cq = and i8 %i.ae, 7
  %i.cr = shl i8 8, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ct = load i8, ptr %i.cs, align 1, !range !11, !noundef !5
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = load i32, ptr %i.l, align 4             ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  %spec.select56332 = select i1 %i.cw, i64 2, i64 1
  %.sroa.419.0333 = zext i32 %i.cv to i64         ; 2 uses
  %.sroa.018.0334 = select i1 %i.cu, i64 0, i64 %spec.select56332 ; 2 uses
  %i.cx = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.cp, label %.loopexit.thread, label %.thread456

.split397:                                        ; preds = %bb.e
  %i.cy = trunc nuw i8 %i.ad to i1
  %i.cz = and i8 %i.ae, 7
  %i.da = shl i8 8, %i.cz                         ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.dc = load i8, ptr %i.db, align 1, !range !11, !noundef !5
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = load i32, ptr %i.l, align 4             ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  %spec.select56402 = select i1 %i.df, i64 2, i64 1
  %.sroa.419.0403 = zext i32 %i.de to i64         ; 2 uses
  %.sroa.018.0404 = select i1 %i.dd, i64 0, i64 %spec.select56402 ; 2 uses
  %i.dg = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.cy, label %.loopexit.thread, label %.thread456

bb.g:                                             ; preds = %bb.e
  %i.dh = load i32, ptr %i.l, align 4, !noundef !5
  %i.di = zext i32 %i.dh to i64
  %i.dj = shl i64 %i.di, 40
  %i.dk = ashr exact i64 %i.dj, 40
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.dl = load i32, ptr %i.l, align 4, !noundef !5
  %i.dm = zext i32 %i.dl to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h, %bb.g
  %.sroa.4.1 = phi i64 [ %.sroa.4.0223, %bb.g ], [ %i.dm, %bb.h ], [ %i.fh, %bb.j ]
  %.sroa.017.1 = phi i64 [ %.sroa.017.0224, %bb.g ], [ 1, %bb.h ], [ 1, %bb.j ]
  %.sroa.010.1 = phi i64 [ %i.dk, %bb.g ], [ %.sroa.010.0225, %bb.h ], [ %.sroa.010.0225, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

.split366:                                        ; preds = %.thread
  %i.dn = trunc nuw i8 %i.w to i1
  %i.do = and i8 %i.x, 7
  %i.dp = shl i8 8, %i.do                         ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.dr = load i8, ptr %i.dq, align 1, !range !11, !noundef !5
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = load i32, ptr %i.l, align 4             ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  %spec.select56371 = select i1 %i.du, i64 2, i64 1
  %.sroa.419.0372 = zext i32 %i.dt to i64         ; 2 uses
  %.sroa.018.0373 = select i1 %i.ds, i64 0, i64 %spec.select56371 ; 2 uses
  %i.dv = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.dn, label %.thread445.thread, label %.thread456

.split:                                           ; preds = %.thread
  %i.dw = trunc nuw i8 %i.w to i1
  %i.dx = and i8 %i.x, 7
  %i.dy = shl i8 8, %i.dx                         ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ea = load i8, ptr %i.dz, align 1, !range !11, !noundef !5
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = load i32, ptr %i.l, align 4             ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 0
  %spec.select56356 = select i1 %i.ed, i64 2, i64 1
  %.sroa.419.0357 = zext i32 %i.ec to i64         ; 2 uses
  %.sroa.018.0358 = select i1 %i.eb, i64 0, i64 %spec.select56356 ; 2 uses
  %i.ee = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.dw, label %.thread445.thread, label %.thread456

.split420:                                        ; preds = %.thread
  %i.ef = trunc nuw i8 %i.w to i1
  %i.eg = and i8 %i.x, 7
  %i.eh = shl i8 8, %i.eg                         ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ej = load i8, ptr %i.ei, align 1, !range !11, !noundef !5
  %i.ek = trunc nuw i8 %i.ej to i1
  %i.el = load i32, ptr %i.l, align 4             ; 2 uses
  %i.em = icmp eq i32 %i.el, 0
  %spec.select56425 = select i1 %i.em, i64 2, i64 1
  %.sroa.419.0426 = zext i32 %i.el to i64         ; 2 uses
  %.sroa.018.0427 = select i1 %i.ek, i64 0, i64 %spec.select56425 ; 2 uses
  %i.en = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.ef, label %.thread445.thread, label %.thread456

.split374:                                        ; preds = %.thread
  %i.eo = trunc nuw i8 %i.w to i1
  %i.ep = and i8 %i.x, 7
  %i.eq = shl i8 8, %i.ep                         ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.es = load i8, ptr %i.er, align 1, !range !11, !noundef !5
  %i.et = trunc nuw i8 %i.es to i1
  %i.eu = load i32, ptr %i.l, align 4             ; 2 uses
  %i.ev = icmp eq i32 %i.eu, 0
  %spec.select56379 = select i1 %i.ev, i64 2, i64 1
  %.sroa.419.0380 = zext i32 %i.eu to i64         ; 2 uses
  %.sroa.018.0381 = select i1 %i.et, i64 0, i64 %spec.select56379 ; 2 uses
  %i.ew = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.eo, label %.thread445.thread, label %.thread456

.split405:                                        ; preds = %.thread
  %i.ex = trunc nuw i8 %i.w to i1
  %i.ey = and i8 %i.x, 7
  %i.ez = shl i8 8, %i.ey                         ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.fb = load i8, ptr %i.fa, align 1, !range !11, !noundef !5
  %i.fc = trunc nuw i8 %i.fb to i1
  %i.fd = load i32, ptr %i.l, align 4             ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 0
  %spec.select56410 = select i1 %i.fe, i64 2, i64 1
  %.sroa.419.0411 = zext i32 %i.fd to i64         ; 2 uses
  %.sroa.018.0412 = select i1 %i.fc, i64 0, i64 %spec.select56410 ; 2 uses
  %i.ff = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.ex, label %.thread445.thread, label %.thread456

bb.j:                                             ; preds = %.thread
  %i.fg = load i32, ptr %i.l, align 4, !noundef !5
  %i.fh = zext i32 %i.fg to i64
  br label %bb.i

bb.k:                                             ; preds = %bb.c, %bb.i
  %.sroa.4.2 = phi i64 [ %.sroa.4.1, %bb.i ], [ %.sroa.4.0223, %bb.c ]
  %.sroa.017.2 = phi i64 [ %.sroa.017.1, %bb.i ], [ %.sroa.017.0224, %bb.c ]
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %bb.i ], [ %.sroa.010.0225, %bb.c ]
  %i.fi = icmp eq ptr %i.n, %i.d
  br i1 %i.fi, label %._crit_edge, label %bb.b

.thread456:                                       ; preds = %bb.f, %.split428, %.thread445.thread, %.split436, %.split420, %.loopexit.split.loop.exit172, %.split405, %.split397, %.split389, %.loopexit.split.loop.exit, %.split374, %.split366, %.loopexit.split.loop.exit162, %.split, %bb.n, %bb.m, %bb.l, %.thread445, %.thread462, %.loopexit.thread, %.loopexit
  %i.fj = phi i1 [ %i.fq, %.loopexit.thread ], [ %i.fr, %.thread462 ], [ %i.ga, %.thread445 ], [ %i.ga, %bb.l ], [ %i.ga, %bb.m ], [ %i.ga, %bb.n ], [ %i.cf, %.loopexit ], [ %i.am, %.split428 ], [ %i.ee, %.split ], [ %i.bn, %.loopexit.split.loop.exit162 ], [ %i.dv, %.split366 ], [ %i.ew, %.split374 ], [ %i.be, %.loopexit.split.loop.exit ], [ %i.co, %.split389 ], [ %i.dg, %.split397 ], [ %i.ff, %.split405 ], [ %i.bw, %.loopexit.split.loop.exit172 ], [ %i.en, %.split420 ], [ %.ph473, %.thread445.thread ], [ %i.av, %.split436 ], [ %i.cx, %bb.f ]
  %.sroa.018.0343 = phi i64 [ %.sroa.018.0344, %.loopexit.thread ], [ %.sroa.018.0344468, %.thread462 ], [ %.sroa.018.0344451, %.thread445 ], [ %.sroa.018.0344451, %bb.l ], [ %.sroa.018.0344451, %bb.m ], [ %.sroa.018.0344451, %bb.n ], [ %.sroa.018.0, %.loopexit ], [ %.sroa.018.0435, %.split428 ], [ %.sroa.018.0358, %.split ], [ %.sroa.018.0365, %.loopexit.split.loop.exit162 ], [ %.sroa.018.0373, %.split366 ], [ %.sroa.018.0381, %.split374 ], [ %.sroa.018.0388, %.loopexit.split.loop.exit ], [ %.sroa.018.0396, %.split389 ], [ %.sroa.018.0404, %.split397 ], [ %.sroa.018.0412, %.split405 ], [ %.sroa.018.0419, %.loopexit.split.loop.exit172 ], [ %.sroa.018.0427, %.split420 ], [ %.sroa.018.0344451.ph, %.thread445.thread ], [ %.sroa.018.0443, %.split436 ], [ %.sroa.018.0334, %bb.f ]
  %.sroa.419.0341 = phi i64 [ %.sroa.419.0342, %.loopexit.thread ], [ %.sroa.419.0342469, %.thread462 ], [ %.sroa.419.0342452, %.thread445 ], [ %.sroa.419.0342452, %bb.l ], [ %.sroa.419.0342452, %bb.m ], [ %.sroa.419.0342452, %bb.n ], [ %.sroa.419.0, %.loopexit ], [ %.sroa.419.0434, %.split428 ], [ %.sroa.419.0357, %.split ], [ %.sroa.419.0364, %.loopexit.split.loop.exit162 ], [ %.sroa.419.0372, %.split366 ], [ %.sroa.419.0380, %.split374 ], [ %.sroa.419.0387, %.loopexit.split.loop.exit ], [ %.sroa.419.0395, %.split389 ], [ %.sroa.419.0403, %.split397 ], [ %.sroa.419.0411, %.split405 ], [ %.sroa.419.0418, %.loopexit.split.loop.exit172 ], [ %.sroa.419.0426, %.split420 ], [ %.sroa.419.0342452.ph, %.thread445.thread ], [ %.sroa.419.0442, %.split436 ], [ %.sroa.419.0333, %bb.f ]
  %.sroa.09.0339 = phi i8 [ %.sroa.09.0340, %.loopexit.thread ], [ %.sroa.09.0340470, %.thread462 ], [ %.sroa.09.0340453, %.thread445 ], [ %.sroa.09.0340453, %bb.l ], [ %.sroa.09.0340453, %bb.m ], [ %.sroa.09.0340453, %bb.n ], [ %i.bz, %.loopexit ], [ %i.ag, %.split428 ], [ %i.dy, %.split ], [ %i.bh, %.loopexit.split.loop.exit162 ], [ %i.dp, %.split366 ], [ %i.eq, %.split374 ], [ %i.ay, %.loopexit.split.loop.exit ], [ %i.ci, %.split389 ], [ %i.da, %.split397 ], [ %i.ez, %.split405 ], [ %i.bq, %.loopexit.split.loop.exit172 ], [ %i.eh, %.split420 ], [ %.sroa.09.0340453.ph, %.thread445.thread ], [ %i.ap, %.split436 ], [ %i.cr, %bb.f ]
  %.sroa.029.0337 = phi i8 [ %.sroa.029.0338, %.loopexit.thread ], [ %.sroa.029.0338471, %.thread462 ], [ %.sroa.029.0338454, %.thread445 ], [ %.sroa.029.0338454, %bb.l ], [ %.sroa.029.0338454, %bb.m ], [ %.sroa.029.0338454, %bb.n ], [ %.41, %.loopexit ], [ %.37, %.split428 ], [ 0, %.split ], [ 0, %.loopexit.split.loop.exit162 ], [ 1, %.split366 ], [ 0, %.split374 ], [ 0, %.loopexit.split.loop.exit ], [ 1, %.split389 ], [ 0, %.split397 ], [ 0, %.split405 ], [ 0, %.loopexit.split.loop.exit172 ], [ 0, %.split420 ], [ %.sroa.029.0338454.ph, %.thread445.thread ], [ %.39, %.split436 ], [ 0, %bb.f ]
  %.sroa.028.0335 = phi i8 [ %.sroa.028.0336, %.loopexit.thread ], [ %.sroa.028.0336472, %.thread462 ], [ %.sroa.028.0336455, %.thread445 ], [ %.sroa.028.0336455, %bb.l ], [ %.sroa.028.0336455, %bb.m ], [ %.sroa.028.0336455, %bb.n ], [ %.40, %.loopexit ], [ %., %.split428 ], [ 0, %.split ], [ 0, %.loopexit.split.loop.exit162 ], [ 2, %.split366 ], [ 0, %.split374 ], [ 0, %.loopexit.split.loop.exit ], [ 2, %.split389 ], [ 0, %.split397 ], [ 0, %.split405 ], [ 0, %.loopexit.split.loop.exit172 ], [ 0, %.split420 ], [ %.sroa.028.0336455.ph, %.thread445.thread ], [ %.38, %.split436 ], [ 0, %bb.f ]
  %i.fk = phi i8 [ %i.ac, %.loopexit.thread ], [ %i.ac, %.thread462 ], [ %i.fz, %.thread445 ], [ 6, %bb.l ], [ 7, %bb.m ], [ 8, %bb.n ], [ %i.ac, %.loopexit ], [ %i.ac, %.split428 ], [ 1, %.split ], [ %i.ac, %.loopexit.split.loop.exit162 ], [ 0, %.split366 ], [ 4, %.split374 ], [ %i.ac, %.loopexit.split.loop.exit ], [ 0, %.split389 ], [ 7, %.split397 ], [ 3, %.split405 ], [ %i.v, %.loopexit.split.loop.exit172 ], [ 2, %.split420 ], [ %i.v, %.thread445.thread ], [ %i.ac, %.split436 ], [ 2, %bb.f ]
  %i.fl = phi i8 [ 1, %.loopexit.thread ], [ 1, %.thread462 ], [ 1, %.thread445 ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 0, %.loopexit ], [ %i.ad, %.split428 ], [ 0, %.split ], [ 0, %.loopexit.split.loop.exit162 ], [ 0, %.split366 ], [ 0, %.split374 ], [ 0, %.loopexit.split.loop.exit ], [ 0, %.split389 ], [ 0, %.split397 ], [ 0, %.split405 ], [ 0, %.loopexit.split.loop.exit172 ], [ 0, %.split420 ], [ 1, %.thread445.thread ], [ 0, %.split436 ], [ 0, %bb.f ]
  %i.fm = phi i8 [ %i.ae, %.loopexit.thread ], [ %i.ae, %.thread462 ], [ %i.fy, %.thread445 ], [ %i.fy, %bb.l ], [ %i.fy, %bb.m ], [ %i.fy, %bb.n ], [ %i.ae, %.loopexit ], [ %i.ae, %.split428 ], [ %i.x, %.split ], [ %i.ae, %.loopexit.split.loop.exit162 ], [ %i.x, %.split366 ], [ %i.x, %.split374 ], [ %i.ae, %.loopexit.split.loop.exit ], [ %i.ae, %.split389 ], [ %i.ae, %.split397 ], [ %i.x, %.split405 ], [ %i.x, %.loopexit.split.loop.exit172 ], [ %i.x, %.split420 ], [ %i.x, %.thread445.thread ], [ %i.ae, %.split436 ], [ %i.ae, %bb.f ]
  %.sroa.010.3 = phi i64 [ %.sroa.010.0225, %.loopexit.thread ], [ %i.fu, %.thread462 ], [ %i.gd, %.thread445 ], [ %i.ge, %bb.l ], [ %i.gf, %bb.m ], [ %i.gg, %bb.n ], [ %.sroa.010.0225, %.loopexit ], [ %.sroa.010.0225, %.split428 ], [ %.sroa.010.0225, %.split ], [ %.sroa.010.0225, %.loopexit.split.loop.exit162 ], [ %.sroa.010.0225, %.split366 ], [ %.sroa.010.0225, %.split374 ], [ %.sroa.010.0225, %.loopexit.split.loop.exit ], [ %.sroa.010.0225, %.split389 ], [ %.sroa.010.0225, %.split397 ], [ %.sroa.010.0225, %.split405 ], [ %.sroa.010.0225, %.loopexit.split.loop.exit172 ], [ %.sroa.010.0225, %.split420 ], [ %i.fx, %.thread445.thread ], [ %.sroa.010.0225, %.split436 ], [ %.sroa.010.0225, %bb.f ]
  %i.fn = load i32, ptr %i.a, align 4, !noundef !5
  %i.fo = zext i32 %i.fn to i64
  %i.fp = zext i1 %i.fj to i8
  store i64 %i.fo, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.017.0224, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0223, ptr %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.sroa.5.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.018.0343, ptr %.sroa.421.sroa.5.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.sroa.6.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.419.0341, ptr %.sroa.421.sroa.6.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.sroa.7.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %.sroa.421.sroa.7.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.sroa.8.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.fk, ptr %.sroa.421.sroa.8.0..sroa.421.0..sroa_idx.sroa_idx, align 1
  %.sroa.421.sroa.9.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %i.fm, ptr %.sroa.421.sroa.9.0..sroa.421.0..sroa_idx.sroa_idx, align 2
  %.sroa.421.sroa.10.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 43
  store i8 %i.fl, ptr %.sroa.421.sroa.10.0..sroa.421.0..sroa_idx.sroa_idx, align 1
  %.sroa.421.sroa.12.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.010.3, ptr %.sroa.421.sroa.12.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.sroa.13.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.fp, ptr %.sroa.421.sroa.13.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.sroa.14.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %.sroa.028.0335, ptr %.sroa.421.sroa.14.0..sroa.421.0..sroa_idx.sroa_idx, align 1
  %.sroa.421.sroa.15.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %.sroa.029.0337, ptr %.sroa.421.sroa.15.0..sroa.421.0..sroa_idx.sroa_idx, align 2
  %.sroa.421.sroa.16.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %.sroa.09.0339, ptr %.sroa.421.sroa.16.0..sroa.421.0..sroa_idx.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

.loopexit.thread:                                 ; preds = %bb.f, %.split397, %.split389, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit162, %.loopexit
  %i.fq = phi i1 [ %i.co, %.split389 ], [ %i.cf, %.loopexit ], [ %i.dg, %.split397 ], [ %i.bn, %.loopexit.split.loop.exit162 ], [ %i.be, %.loopexit.split.loop.exit ], [ %i.cx, %bb.f ] ; 3 uses
  %.sroa.018.0344 = phi i64 [ %.sroa.018.0396, %.split389 ], [ %.sroa.018.0, %.loopexit ], [ %.sroa.018.0404, %.split397 ], [ %.sroa.018.0365, %.loopexit.split.loop.exit162 ], [ %.sroa.018.0388, %.loopexit.split.loop.exit ], [ %.sroa.018.0334, %bb.f ] ; 3 uses
  %.sroa.419.0342 = phi i64 [ %.sroa.419.0395, %.split389 ], [ %.sroa.419.0, %.loopexit ], [ %.sroa.419.0403, %.split397 ], [ %.sroa.419.0364, %.loopexit.split.loop.exit162 ], [ %.sroa.419.0387, %.loopexit.split.loop.exit ], [ %.sroa.419.0333, %bb.f ] ; 3 uses
  %.sroa.09.0340 = phi i8 [ %i.ci, %.split389 ], [ %i.bz, %.loopexit ], [ %i.da, %.split397 ], [ %i.bh, %.loopexit.split.loop.exit162 ], [ %i.ay, %.loopexit.split.loop.exit ], [ 26, %bb.f ] ; 3 uses
  %.sroa.029.0338 = phi i8 [ 0, %.split389 ], [ %.41, %.loopexit ], [ 1, %.split397 ], [ 0, %.loopexit.split.loop.exit162 ], [ 0, %.loopexit.split.loop.exit ], [ 7, %bb.f ] ; 3 uses
  %.sroa.028.0336 = phi i8 [ 0, %.split389 ], [ %.40, %.loopexit ], [ 5, %.split397 ], [ 0, %.loopexit.split.loop.exit162 ], [ 0, %.loopexit.split.loop.exit ], [ 8, %bb.f ] ; 3 uses
  switch i32 %i.r, label %.thread456 [
    i32 7, label %.thread462
    i32 16777223, label %.thread445
  ]

.thread462:                                       ; preds = %.split436, %.loopexit.thread
  %.sroa.028.0336472 = phi i8 [ %.sroa.028.0336, %.loopexit.thread ], [ %.38, %.split436 ]
  %.sroa.029.0338471 = phi i8 [ %.sroa.029.0338, %.loopexit.thread ], [ %.39, %.split436 ]
  %.sroa.09.0340470 = phi i8 [ %.sroa.09.0340, %.loopexit.thread ], [ %i.ap, %.split436 ]
  %.sroa.419.0342469 = phi i64 [ %.sroa.419.0342, %.loopexit.thread ], [ %.sroa.419.0442, %.split436 ]
  %.sroa.018.0344468 = phi i64 [ %.sroa.018.0344, %.loopexit.thread ], [ %.sroa.018.0443, %.split436 ]
  %i.fr = phi i1 [ %i.fq, %.loopexit.thread ], [ %i.av, %.split436 ]
  %i.fs = and i8 %i.ae, 63
  %i.ft = zext nneg i8 %i.fs to i64
  %.neg36 = shl nsw i64 -1, %i.ft
  %i.fu = add i64 %.neg36, %.sroa.010.0225
  br label %.thread456

.thread445.thread:                                ; preds = %.split420, %.split405, %.split374, %.split366, %.split
  %.sroa.028.0336455.ph = phi i8 [ 3, %.split ], [ 0, %.split366 ], [ 5, %.split374 ], [ 5, %.split405 ], [ 8, %.split420 ]
  %.sroa.029.0338454.ph = phi i8 [ 3, %.split ], [ 0, %.split366 ], [ 1, %.split374 ], [ 4, %.split405 ], [ 5, %.split420 ]
  %.sroa.09.0340453.ph = phi i8 [ %i.dy, %.split ], [ %i.dp, %.split366 ], [ %i.eq, %.split374 ], [ %i.ez, %.split405 ], [ %i.eh, %.split420 ]
  %.sroa.419.0342452.ph = phi i64 [ %.sroa.419.0357, %.split ], [ %.sroa.419.0372, %.split366 ], [ %.sroa.419.0380, %.split374 ], [ %.sroa.419.0411, %.split405 ], [ %.sroa.419.0426, %.split420 ]
  %.sroa.018.0344451.ph = phi i64 [ %.sroa.018.0358, %.split ], [ %.sroa.018.0373, %.split366 ], [ %.sroa.018.0381, %.split374 ], [ %.sroa.018.0412, %.split405 ], [ %.sroa.018.0427, %.split420 ]
  %.ph473 = phi i1 [ %i.ee, %.split ], [ %i.dv, %.split366 ], [ %i.ew, %.split374 ], [ %i.ff, %.split405 ], [ %i.en, %.split420 ]
  %i.fv = and i8 %i.x, 63
  %i.fw = zext nneg i8 %i.fv to i64
  %.neg479 = shl nsw i64 -1, %i.fw
  %i.fx = add i64 %.neg479, %.sroa.010.0225
  br label %.thread456

.thread445:                                       ; preds = %.loopexit.split.loop.exit172, %.loopexit.thread
  %i.fy = phi i8 [ %i.ae, %.loopexit.thread ], [ %i.x, %.loopexit.split.loop.exit172 ] ; 5 uses
  %i.fz = phi i8 [ %i.ac, %.loopexit.thread ], [ %i.v, %.loopexit.split.loop.exit172 ] ; 2 uses
  %.sroa.028.0336455 = phi i8 [ %.sroa.028.0336, %.loopexit.thread ], [ 0, %.loopexit.split.loop.exit172 ] ; 4 uses
  %.sroa.029.0338454 = phi i8 [ %.sroa.029.0338, %.loopexit.thread ], [ 0, %.loopexit.split.loop.exit172 ] ; 4 uses
  %.sroa.09.0340453 = phi i8 [ %.sroa.09.0340, %.loopexit.thread ], [ %i.bq, %.loopexit.split.loop.exit172 ] ; 4 uses
  %.sroa.419.0342452 = phi i64 [ %.sroa.419.0342, %.loopexit.thread ], [ %.sroa.419.0418, %.loopexit.split.loop.exit172 ] ; 4 uses
  %.sroa.018.0344451 = phi i64 [ %.sroa.018.0344, %.loopexit.thread ], [ %.sroa.018.0419, %.loopexit.split.loop.exit172 ] ; 4 uses
  %i.ga = phi i1 [ %i.fq, %.loopexit.thread ], [ %i.bw, %.loopexit.split.loop.exit172 ] ; 4 uses
  %i.gb = and i8 %i.fy, 63
  %i.gc = zext nneg i8 %i.gb to i64
  %.neg = shl nsw i64 -1, %i.gc
  %i.gd = add i64 %.neg, %.sroa.010.0225          ; 4 uses
  switch i8 %i.fz, label %.thread456 [
    i8 6, label %bb.l
    i8 7, label %bb.m
    i8 8, label %bb.n
  ]

bb.l:                                             ; preds = %.thread445
  %i.ge = add i64 %i.gd, -1
  br label %.thread456

bb.m:                                             ; preds = %.thread445
  %i.gf = add i64 %i.gd, -2
  br label %.thread456

bb.n:                                             ; preds = %.thread445
  %i.gg = add i64 %i.gd, -4
  br label %.thread456

bb.o:                                             ; preds = %.thread456, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCseHTIzroA4w0_6object4read5macho10relocationINtB2_23MachORelocationIteratorINtNtB8_5macho12MachHeader64NtNtB8_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 25 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted = load ptr, ptr %i.b, align 8        ; 2 uses
  %i.e = icmp eq ptr %.promoted, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 17 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.010.0225 = phi i64 [ 0, %.lr.ph ], [ %.sroa.010.2, %bb.k ] ; 35 uses
  %.sroa.017.0224 = phi i64 [ 0, %.lr.ph ], [ %.sroa.017.2, %bb.k ] ; 3 uses
  %.sroa.4.0223 = phi i64 [ undef, %.lr.ph ], [ %.sroa.4.2, %bb.k ] ; 3 uses
  %i.m = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.k ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.b, align 8
  %i.o = load i8, ptr %i.g, align 8, !range !11, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.r = tail call noundef i32 @_RNvXs8_NtNtNtCseHTIzroA4w0_6object4read5macho4fileINtNtBb_5macho12MachHeader64NtNtBb_6endian10EndiannessENtB5_10MachHeader7cputypeCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.q, i1 noundef zeroext %i.p) ; 3 uses
  %i.s = icmp eq i32 %i.r, 16777223
  br i1 %i.s, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.06.0.copyload57 = load i64, ptr %i.m, align 1
  %i.t = load i8, ptr %i.g, align 8, !range !11, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1
  call void @_RNvMss_NtCseHTIzroA4w0_6object5machoINtB5_10RelocationNtNtB7_6endian10EndiannessE4infoCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i64 noundef %.sroa.06.0.copyload57, i1 noundef zeroext %i.u)
  %i.v = load i8, ptr %i.i, align 1, !noundef !5  ; 4 uses
  %i.w = load i8, ptr %i.j, align 2, !range !11, !noundef !5 ; 6 uses
  %i.x = load i8, ptr %i.k, align 4, !noundef !5  ; 15 uses
  switch i8 %i.v, label %.loopexit.split.loop.exit172 [
    i8 0, label %.split366
    i8 1, label %.split
    i8 2, label %.split420
    i8 4, label %.split374
    i8 3, label %.split405
    i8 5, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.y, align 8
  br label %bb.o

bb.c:                                             ; preds = %bb.b
  %.sroa.030.0.copyload = load i32, ptr %i.m, align 1 ; 2 uses
  %i.z = shl i32 %.sroa.030.0.copyload, 24
  %.sroa.03.0.i = select i1 %i.p, i32 %i.z, i32 %.sroa.030.0.copyload
  %.not35 = icmp sgt i32 %.sroa.03.0.i, -1
  br i1 %.not35, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.06.0.copyload = load i64, ptr %i.m, align 1
  %i.aa = load i8, ptr %i.g, align 8, !range !11, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  call void @_RNvMss_NtCseHTIzroA4w0_6object5machoINtB5_10RelocationNtNtB7_6endian10EndiannessE4infoCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i64 noundef %.sroa.06.0.copyload, i1 noundef zeroext %i.ab)
  %i.ac = load i8, ptr %i.i, align 1, !noundef !5 ; 12 uses
  %i.ad = load i8, ptr %i.j, align 2, !range !11, !noundef !5 ; 11 uses
  %i.ae = load i8, ptr %i.k, align 4, !noundef !5 ; 20 uses
  switch i32 %i.r, label %.loopexit.split.loop.exit [
    i32 12, label %.split428
    i32 16777228, label %bb.e
    i32 33554444, label %bb.e
    i32 7, label %.split436
    i32 16777234, label %.loopexit
    i32 18, label %.loopexit
  ]

.split428:                                        ; preds = %bb.d
  %i.af = and i8 %i.ae, 7
  %i.ag = shl i8 8, %i.af
  %2 = or i8 %i.ad, %i.ac
  %brmerge.not = icmp eq i8 %2, 0                 ; 2 uses
  %. = select i1 %brmerge.not, i8 2, i8 0
  %.37 = zext i1 %brmerge.not to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ai = load i8, ptr %i.ah, align 1, !range !11, !noundef !5
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = load i32, ptr %i.l, align 4             ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  %spec.select56433 = select i1 %i.al, i64 2, i64 1
  %.sroa.419.0434 = zext i32 %i.ak to i64
  %.sroa.018.0435 = select i1 %i.aj, i64 0, i64 %spec.select56433
  %i.am = icmp eq i64 %.sroa.010.0225, 0
  br label %.thread456

bb.e:                                             ; preds = %bb.d, %bb.d
  switch i8 %i.ac, label %.loopexit.split.loop.exit162 [
    i8 0, label %.split389
    i8 2, label %bb.f
    i8 7, label %.split397
    i8 10, label %bb.g
    i8 1, label %bb.h
  ]

.split436:                                        ; preds = %bb.d
  %i.an = trunc nuw i8 %i.ad to i1
  %i.ao = and i8 %i.ae, 7
  %i.ap = shl i8 8, %i.ao                         ; 2 uses
  %3 = or i8 %i.ad, %i.ac
  %brmerge2.not = icmp eq i8 %3, 0                ; 2 uses
  %.38 = select i1 %brmerge2.not, i8 2, i8 0      ; 2 uses
  %.39 = zext i1 %brmerge2.not to i8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ar = load i8, ptr %i.aq, align 1, !range !11, !noundef !5
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load i32, ptr %i.l, align 4             ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  %spec.select56441 = select i1 %i.au, i64 2, i64 1
  %.sroa.419.0442 = zext i32 %i.at to i64         ; 2 uses
  %.sroa.018.0443 = select i1 %i.as, i64 0, i64 %spec.select56441 ; 2 uses
  %i.av = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.an, label %.thread462, label %.thread456

.loopexit.split.loop.exit:                        ; preds = %bb.d
  %i.aw = trunc nuw i8 %i.ad to i1
  %i.ax = and i8 %i.ae, 7
  %i.ay = shl i8 8, %i.ax                         ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ba = load i8, ptr %i.az, align 1, !range !11, !noundef !5
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = load i32, ptr %i.l, align 4             ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  %spec.select56386 = select i1 %i.bd, i64 2, i64 1
  %.sroa.419.0387 = zext i32 %i.bc to i64         ; 2 uses
  %.sroa.018.0388 = select i1 %i.bb, i64 0, i64 %spec.select56386 ; 2 uses
  %i.be = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.aw, label %.loopexit.thread, label %.thread456

.loopexit.split.loop.exit162:                     ; preds = %bb.e
  %i.bf = trunc nuw i8 %i.ad to i1
  %i.bg = and i8 %i.ae, 7
  %i.bh = shl i8 8, %i.bg                         ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.bj = load i8, ptr %i.bi, align 1, !range !11, !noundef !5
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = load i32, ptr %i.l, align 4             ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  %spec.select56363 = select i1 %i.bm, i64 2, i64 1
  %.sroa.419.0364 = zext i32 %i.bl to i64         ; 2 uses
  %.sroa.018.0365 = select i1 %i.bk, i64 0, i64 %spec.select56363 ; 2 uses
  %i.bn = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.bf, label %.loopexit.thread, label %.thread456

.loopexit.split.loop.exit172:                     ; preds = %.thread
  %i.bo = trunc nuw i8 %i.w to i1
  %i.bp = and i8 %i.x, 7
  %i.bq = shl i8 8, %i.bp                         ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.bs = load i8, ptr %i.br, align 1, !range !11, !noundef !5
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = load i32, ptr %i.l, align 4             ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  %spec.select56417 = select i1 %i.bv, i64 2, i64 1
  %.sroa.419.0418 = zext i32 %i.bu to i64         ; 2 uses
  %.sroa.018.0419 = select i1 %i.bt, i64 0, i64 %spec.select56417 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.bo, label %.thread445, label %.thread456

.loopexit:                                        ; preds = %bb.d, %bb.d
  %i.bx = trunc nuw i8 %i.ad to i1
  %i.by = and i8 %i.ae, 7
  %i.bz = shl i8 8, %i.by                         ; 2 uses
  %4 = or i8 %i.ad, %i.ac
  %brmerge4.not = icmp eq i8 %4, 0                ; 2 uses
  %.40 = select i1 %brmerge4.not, i8 2, i8 0      ; 2 uses
  %.41 = zext i1 %brmerge4.not to i8              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !range !11, !noundef !5
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = load i32, ptr %i.l, align 4             ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  %spec.select56 = select i1 %i.ce, i64 2, i64 1
  %.sroa.419.0 = zext i32 %i.cd to i64            ; 2 uses
  %.sroa.018.0 = select i1 %i.cc, i64 0, i64 %spec.select56 ; 2 uses
  %i.cf = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.bx, label %.loopexit.thread, label %.thread456

.split389:                                        ; preds = %bb.e
  %i.cg = trunc nuw i8 %i.ad to i1
  %i.ch = and i8 %i.ae, 7
  %i.ci = shl i8 8, %i.ch                         ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ck = load i8, ptr %i.cj, align 1, !range !11, !noundef !5
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = load i32, ptr %i.l, align 4             ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  %spec.select56394 = select i1 %i.cn, i64 2, i64 1
  %.sroa.419.0395 = zext i32 %i.cm to i64         ; 2 uses
  %.sroa.018.0396 = select i1 %i.cl, i64 0, i64 %spec.select56394 ; 2 uses
  %i.co = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.cg, label %.loopexit.thread, label %.thread456

bb.f:                                             ; preds = %bb.e
  %i.cp = trunc nuw i8 %i.ad to i1
  %i.cq = and i8 %i.ae, 7
  %i.cr = shl i8 8, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ct = load i8, ptr %i.cs, align 1, !range !11, !noundef !5
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = load i32, ptr %i.l, align 4             ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  %spec.select56332 = select i1 %i.cw, i64 2, i64 1
  %.sroa.419.0333 = zext i32 %i.cv to i64         ; 2 uses
  %.sroa.018.0334 = select i1 %i.cu, i64 0, i64 %spec.select56332 ; 2 uses
  %i.cx = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.cp, label %.loopexit.thread, label %.thread456

.split397:                                        ; preds = %bb.e
  %i.cy = trunc nuw i8 %i.ad to i1
  %i.cz = and i8 %i.ae, 7
  %i.da = shl i8 8, %i.cz                         ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.dc = load i8, ptr %i.db, align 1, !range !11, !noundef !5
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = load i32, ptr %i.l, align 4             ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  %spec.select56402 = select i1 %i.df, i64 2, i64 1
  %.sroa.419.0403 = zext i32 %i.de to i64         ; 2 uses
  %.sroa.018.0404 = select i1 %i.dd, i64 0, i64 %spec.select56402 ; 2 uses
  %i.dg = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.cy, label %.loopexit.thread, label %.thread456

bb.g:                                             ; preds = %bb.e
  %i.dh = load i32, ptr %i.l, align 4, !noundef !5
  %i.di = zext i32 %i.dh to i64
  %i.dj = shl i64 %i.di, 40
  %i.dk = ashr exact i64 %i.dj, 40
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.dl = load i32, ptr %i.l, align 4, !noundef !5
  %i.dm = zext i32 %i.dl to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h, %bb.g
  %.sroa.4.1 = phi i64 [ %.sroa.4.0223, %bb.g ], [ %i.dm, %bb.h ], [ %i.fh, %bb.j ]
  %.sroa.017.1 = phi i64 [ %.sroa.017.0224, %bb.g ], [ 1, %bb.h ], [ 1, %bb.j ]
  %.sroa.010.1 = phi i64 [ %i.dk, %bb.g ], [ %.sroa.010.0225, %bb.h ], [ %.sroa.010.0225, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

.split366:                                        ; preds = %.thread
  %i.dn = trunc nuw i8 %i.w to i1
  %i.do = and i8 %i.x, 7
  %i.dp = shl i8 8, %i.do                         ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.dr = load i8, ptr %i.dq, align 1, !range !11, !noundef !5
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = load i32, ptr %i.l, align 4             ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  %spec.select56371 = select i1 %i.du, i64 2, i64 1
  %.sroa.419.0372 = zext i32 %i.dt to i64         ; 2 uses
  %.sroa.018.0373 = select i1 %i.ds, i64 0, i64 %spec.select56371 ; 2 uses
  %i.dv = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.dn, label %.thread445.thread, label %.thread456

.split:                                           ; preds = %.thread
  %i.dw = trunc nuw i8 %i.w to i1
  %i.dx = and i8 %i.x, 7
  %i.dy = shl i8 8, %i.dx                         ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ea = load i8, ptr %i.dz, align 1, !range !11, !noundef !5
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = load i32, ptr %i.l, align 4             ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 0
  %spec.select56356 = select i1 %i.ed, i64 2, i64 1
  %.sroa.419.0357 = zext i32 %i.ec to i64         ; 2 uses
  %.sroa.018.0358 = select i1 %i.eb, i64 0, i64 %spec.select56356 ; 2 uses
  %i.ee = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.dw, label %.thread445.thread, label %.thread456

.split420:                                        ; preds = %.thread
  %i.ef = trunc nuw i8 %i.w to i1
  %i.eg = and i8 %i.x, 7
  %i.eh = shl i8 8, %i.eg                         ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ej = load i8, ptr %i.ei, align 1, !range !11, !noundef !5
  %i.ek = trunc nuw i8 %i.ej to i1
  %i.el = load i32, ptr %i.l, align 4             ; 2 uses
  %i.em = icmp eq i32 %i.el, 0
  %spec.select56425 = select i1 %i.em, i64 2, i64 1
  %.sroa.419.0426 = zext i32 %i.el to i64         ; 2 uses
  %.sroa.018.0427 = select i1 %i.ek, i64 0, i64 %spec.select56425 ; 2 uses
  %i.en = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.ef, label %.thread445.thread, label %.thread456

.split374:                                        ; preds = %.thread
  %i.eo = trunc nuw i8 %i.w to i1
  %i.ep = and i8 %i.x, 7
  %i.eq = shl i8 8, %i.ep                         ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.es = load i8, ptr %i.er, align 1, !range !11, !noundef !5
  %i.et = trunc nuw i8 %i.es to i1
  %i.eu = load i32, ptr %i.l, align 4             ; 2 uses
  %i.ev = icmp eq i32 %i.eu, 0
  %spec.select56379 = select i1 %i.ev, i64 2, i64 1
  %.sroa.419.0380 = zext i32 %i.eu to i64         ; 2 uses
  %.sroa.018.0381 = select i1 %i.et, i64 0, i64 %spec.select56379 ; 2 uses
  %i.ew = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.eo, label %.thread445.thread, label %.thread456

.split405:                                        ; preds = %.thread
  %i.ex = trunc nuw i8 %i.w to i1
  %i.ey = and i8 %i.x, 7
  %i.ez = shl i8 8, %i.ey                         ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.fb = load i8, ptr %i.fa, align 1, !range !11, !noundef !5
  %i.fc = trunc nuw i8 %i.fb to i1
  %i.fd = load i32, ptr %i.l, align 4             ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 0
  %spec.select56410 = select i1 %i.fe, i64 2, i64 1
  %.sroa.419.0411 = zext i32 %i.fd to i64         ; 2 uses
  %.sroa.018.0412 = select i1 %i.fc, i64 0, i64 %spec.select56410 ; 2 uses
  %i.ff = icmp eq i64 %.sroa.010.0225, 0          ; 2 uses
  br i1 %i.ex, label %.thread445.thread, label %.thread456

bb.j:                                             ; preds = %.thread
  %i.fg = load i32, ptr %i.l, align 4, !noundef !5
  %i.fh = zext i32 %i.fg to i64
  br label %bb.i

bb.k:                                             ; preds = %bb.c, %bb.i
  %.sroa.4.2 = phi i64 [ %.sroa.4.1, %bb.i ], [ %.sroa.4.0223, %bb.c ]
  %.sroa.017.2 = phi i64 [ %.sroa.017.1, %bb.i ], [ %.sroa.017.0224, %bb.c ]
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %bb.i ], [ %.sroa.010.0225, %bb.c ]
  %i.fi = icmp eq ptr %i.n, %i.d
  br i1 %i.fi, label %._crit_edge, label %bb.b

.thread456:                                       ; preds = %bb.f, %.split428, %.thread445.thread, %.split436, %.split420, %.loopexit.split.loop.exit172, %.split405, %.split397, %.split389, %.loopexit.split.loop.exit, %.split374, %.split366, %.loopexit.split.loop.exit162, %.split, %bb.n, %bb.m, %bb.l, %.thread445, %.thread462, %.loopexit.thread, %.loopexit
  %i.fj = phi i1 [ %i.fq, %.loopexit.thread ], [ %i.fr, %.thread462 ], [ %i.ga, %.thread445 ], [ %i.ga, %bb.l ], [ %i.ga, %bb.m ], [ %i.ga, %bb.n ], [ %i.cf, %.loopexit ], [ %i.am, %.split428 ], [ %i.ee, %.split ], [ %i.bn, %.loopexit.split.loop.exit162 ], [ %i.dv, %.split366 ], [ %i.ew, %.split374 ], [ %i.be, %.loopexit.split.loop.exit ], [ %i.co, %.split389 ], [ %i.dg, %.split397 ], [ %i.ff, %.split405 ], [ %i.bw, %.loopexit.split.loop.exit172 ], [ %i.en, %.split420 ], [ %.ph473, %.thread445.thread ], [ %i.av, %.split436 ], [ %i.cx, %bb.f ]
  %.sroa.018.0343 = phi i64 [ %.sroa.018.0344, %.loopexit.thread ], [ %.sroa.018.0344468, %.thread462 ], [ %.sroa.018.0344451, %.thread445 ], [ %.sroa.018.0344451, %bb.l ], [ %.sroa.018.0344451, %bb.m ], [ %.sroa.018.0344451, %bb.n ], [ %.sroa.018.0, %.loopexit ], [ %.sroa.018.0435, %.split428 ], [ %.sroa.018.0358, %.split ], [ %.sroa.018.0365, %.loopexit.split.loop.exit162 ], [ %.sroa.018.0373, %.split366 ], [ %.sroa.018.0381, %.split374 ], [ %.sroa.018.0388, %.loopexit.split.loop.exit ], [ %.sroa.018.0396, %.split389 ], [ %.sroa.018.0404, %.split397 ], [ %.sroa.018.0412, %.split405 ], [ %.sroa.018.0419, %.loopexit.split.loop.exit172 ], [ %.sroa.018.0427, %.split420 ], [ %.sroa.018.0344451.ph, %.thread445.thread ], [ %.sroa.018.0443, %.split436 ], [ %.sroa.018.0334, %bb.f ]
  %.sroa.419.0341 = phi i64 [ %.sroa.419.0342, %.loopexit.thread ], [ %.sroa.419.0342469, %.thread462 ], [ %.sroa.419.0342452, %.thread445 ], [ %.sroa.419.0342452, %bb.l ], [ %.sroa.419.0342452, %bb.m ], [ %.sroa.419.0342452, %bb.n ], [ %.sroa.419.0, %.loopexit ], [ %.sroa.419.0434, %.split428 ], [ %.sroa.419.0357, %.split ], [ %.sroa.419.0364, %.loopexit.split.loop.exit162 ], [ %.sroa.419.0372, %.split366 ], [ %.sroa.419.0380, %.split374 ], [ %.sroa.419.0387, %.loopexit.split.loop.exit ], [ %.sroa.419.0395, %.split389 ], [ %.sroa.419.0403, %.split397 ], [ %.sroa.419.0411, %.split405 ], [ %.sroa.419.0418, %.loopexit.split.loop.exit172 ], [ %.sroa.419.0426, %.split420 ], [ %.sroa.419.0342452.ph, %.thread445.thread ], [ %.sroa.419.0442, %.split436 ], [ %.sroa.419.0333, %bb.f ]
  %.sroa.09.0339 = phi i8 [ %.sroa.09.0340, %.loopexit.thread ], [ %.sroa.09.0340470, %.thread462 ], [ %.sroa.09.0340453, %.thread445 ], [ %.sroa.09.0340453, %bb.l ], [ %.sroa.09.0340453, %bb.m ], [ %.sroa.09.0340453, %bb.n ], [ %i.bz, %.loopexit ], [ %i.ag, %.split428 ], [ %i.dy, %.split ], [ %i.bh, %.loopexit.split.loop.exit162 ], [ %i.dp, %.split366 ], [ %i.eq, %.split374 ], [ %i.ay, %.loopexit.split.loop.exit ], [ %i.ci, %.split389 ], [ %i.da, %.split397 ], [ %i.ez, %.split405 ], [ %i.bq, %.loopexit.split.loop.exit172 ], [ %i.eh, %.split420 ], [ %.sroa.09.0340453.ph, %.thread445.thread ], [ %i.ap, %.split436 ], [ %i.cr, %bb.f ]
  %.sroa.029.0337 = phi i8 [ %.sroa.029.0338, %.loopexit.thread ], [ %.sroa.029.0338471, %.thread462 ], [ %.sroa.029.0338454, %.thread445 ], [ %.sroa.029.0338454, %bb.l ], [ %.sroa.029.0338454, %bb.m ], [ %.sroa.029.0338454, %bb.n ], [ %.41, %.loopexit ], [ %.37, %.split428 ], [ 0, %.split ], [ 0, %.loopexit.split.loop.exit162 ], [ 1, %.split366 ], [ 0, %.split374 ], [ 0, %.loopexit.split.loop.exit ], [ 1, %.split389 ], [ 0, %.split397 ], [ 0, %.split405 ], [ 0, %.loopexit.split.loop.exit172 ], [ 0, %.split420 ], [ %.sroa.029.0338454.ph, %.thread445.thread ], [ %.39, %.split436 ], [ 0, %bb.f ]
  %.sroa.028.0335 = phi i8 [ %.sroa.028.0336, %.loopexit.thread ], [ %.sroa.028.0336472, %.thread462 ], [ %.sroa.028.0336455, %.thread445 ], [ %.sroa.028.0336455, %bb.l ], [ %.sroa.028.0336455, %bb.m ], [ %.sroa.028.0336455, %bb.n ], [ %.40, %.loopexit ], [ %., %.split428 ], [ 0, %.split ], [ 0, %.loopexit.split.loop.exit162 ], [ 2, %.split366 ], [ 0, %.split374 ], [ 0, %.loopexit.split.loop.exit ], [ 2, %.split389 ], [ 0, %.split397 ], [ 0, %.split405 ], [ 0, %.loopexit.split.loop.exit172 ], [ 0, %.split420 ], [ %.sroa.028.0336455.ph, %.thread445.thread ], [ %.38, %.split436 ], [ 0, %bb.f ]
  %i.fk = phi i8 [ %i.ac, %.loopexit.thread ], [ %i.ac, %.thread462 ], [ %i.fz, %.thread445 ], [ 6, %bb.l ], [ 7, %bb.m ], [ 8, %bb.n ], [ %i.ac, %.loopexit ], [ %i.ac, %.split428 ], [ 1, %.split ], [ %i.ac, %.loopexit.split.loop.exit162 ], [ 0, %.split366 ], [ 4, %.split374 ], [ %i.ac, %.loopexit.split.loop.exit ], [ 0, %.split389 ], [ 7, %.split397 ], [ 3, %.split405 ], [ %i.v, %.loopexit.split.loop.exit172 ], [ 2, %.split420 ], [ %i.v, %.thread445.thread ], [ %i.ac, %.split436 ], [ 2, %bb.f ]
  %i.fl = phi i8 [ 1, %.loopexit.thread ], [ 1, %.thread462 ], [ 1, %.thread445 ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 0, %.loopexit ], [ %i.ad, %.split428 ], [ 0, %.split ], [ 0, %.loopexit.split.loop.exit162 ], [ 0, %.split366 ], [ 0, %.split374 ], [ 0, %.loopexit.split.loop.exit ], [ 0, %.split389 ], [ 0, %.split397 ], [ 0, %.split405 ], [ 0, %.loopexit.split.loop.exit172 ], [ 0, %.split420 ], [ 1, %.thread445.thread ], [ 0, %.split436 ], [ 0, %bb.f ]
  %i.fm = phi i8 [ %i.ae, %.loopexit.thread ], [ %i.ae, %.thread462 ], [ %i.fy, %.thread445 ], [ %i.fy, %bb.l ], [ %i.fy, %bb.m ], [ %i.fy, %bb.n ], [ %i.ae, %.loopexit ], [ %i.ae, %.split428 ], [ %i.x, %.split ], [ %i.ae, %.loopexit.split.loop.exit162 ], [ %i.x, %.split366 ], [ %i.x, %.split374 ], [ %i.ae, %.loopexit.split.loop.exit ], [ %i.ae, %.split389 ], [ %i.ae, %.split397 ], [ %i.x, %.split405 ], [ %i.x, %.loopexit.split.loop.exit172 ], [ %i.x, %.split420 ], [ %i.x, %.thread445.thread ], [ %i.ae, %.split436 ], [ %i.ae, %bb.f ]
  %.sroa.010.3 = phi i64 [ %.sroa.010.0225, %.loopexit.thread ], [ %i.fu, %.thread462 ], [ %i.gd, %.thread445 ], [ %i.ge, %bb.l ], [ %i.gf, %bb.m ], [ %i.gg, %bb.n ], [ %.sroa.010.0225, %.loopexit ], [ %.sroa.010.0225, %.split428 ], [ %.sroa.010.0225, %.split ], [ %.sroa.010.0225, %.loopexit.split.loop.exit162 ], [ %.sroa.010.0225, %.split366 ], [ %.sroa.010.0225, %.split374 ], [ %.sroa.010.0225, %.loopexit.split.loop.exit ], [ %.sroa.010.0225, %.split389 ], [ %.sroa.010.0225, %.split397 ], [ %.sroa.010.0225, %.split405 ], [ %.sroa.010.0225, %.loopexit.split.loop.exit172 ], [ %.sroa.010.0225, %.split420 ], [ %i.fx, %.thread445.thread ], [ %.sroa.010.0225, %.split436 ], [ %.sroa.010.0225, %bb.f ]
  %i.fn = load i32, ptr %i.a, align 4, !noundef !5
  %i.fo = zext i32 %i.fn to i64
  %i.fp = zext i1 %i.fj to i8
  store i64 %i.fo, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.017.0224, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0223, ptr %.sroa.421.sroa.4.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.sroa.5.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.018.0343, ptr %.sroa.421.sroa.5.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.sroa.6.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.419.0341, ptr %.sroa.421.sroa.6.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.sroa.7.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %.sroa.421.sroa.7.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.sroa.8.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.fk, ptr %.sroa.421.sroa.8.0..sroa.421.0..sroa_idx.sroa_idx, align 1
  %.sroa.421.sroa.9.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %i.fm, ptr %.sroa.421.sroa.9.0..sroa.421.0..sroa_idx.sroa_idx, align 2
  %.sroa.421.sroa.10.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 43
  store i8 %i.fl, ptr %.sroa.421.sroa.10.0..sroa.421.0..sroa_idx.sroa_idx, align 1
  %.sroa.421.sroa.12.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.010.3, ptr %.sroa.421.sroa.12.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.sroa.13.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.fp, ptr %.sroa.421.sroa.13.0..sroa.421.0..sroa_idx.sroa_idx, align 8
  %.sroa.421.sroa.14.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %.sroa.028.0335, ptr %.sroa.421.sroa.14.0..sroa.421.0..sroa_idx.sroa_idx, align 1
  %.sroa.421.sroa.15.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %.sroa.029.0337, ptr %.sroa.421.sroa.15.0..sroa.421.0..sroa_idx.sroa_idx, align 2
  %.sroa.421.sroa.16.0..sroa.421.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %.sroa.09.0339, ptr %.sroa.421.sroa.16.0..sroa.421.0..sroa_idx.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

.loopexit.thread:                                 ; preds = %bb.f, %.split397, %.split389, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit162, %.loopexit
  %i.fq = phi i1 [ %i.co, %.split389 ], [ %i.cf, %.loopexit ], [ %i.dg, %.split397 ], [ %i.bn, %.loopexit.split.loop.exit162 ], [ %i.be, %.loopexit.split.loop.exit ], [ %i.cx, %bb.f ] ; 3 uses
  %.sroa.018.0344 = phi i64 [ %.sroa.018.0396, %.split389 ], [ %.sroa.018.0, %.loopexit ], [ %.sroa.018.0404, %.split397 ], [ %.sroa.018.0365, %.loopexit.split.loop.exit162 ], [ %.sroa.018.0388, %.loopexit.split.loop.exit ], [ %.sroa.018.0334, %bb.f ] ; 3 uses
  %.sroa.419.0342 = phi i64 [ %.sroa.419.0395, %.split389 ], [ %.sroa.419.0, %.loopexit ], [ %.sroa.419.0403, %.split397 ], [ %.sroa.419.0364, %.loopexit.split.loop.exit162 ], [ %.sroa.419.0387, %.loopexit.split.loop.exit ], [ %.sroa.419.0333, %bb.f ] ; 3 uses
  %.sroa.09.0340 = phi i8 [ %i.ci, %.split389 ], [ %i.bz, %.loopexit ], [ %i.da, %.split397 ], [ %i.bh, %.loopexit.split.loop.exit162 ], [ %i.ay, %.loopexit.split.loop.exit ], [ 26, %bb.f ] ; 3 uses
  %.sroa.029.0338 = phi i8 [ 0, %.split389 ], [ %.41, %.loopexit ], [ 1, %.split397 ], [ 0, %.loopexit.split.loop.exit162 ], [ 0, %.loopexit.split.loop.exit ], [ 7, %bb.f ] ; 3 uses
  %.sroa.028.0336 = phi i8 [ 0, %.split389 ], [ %.40, %.loopexit ], [ 5, %.split397 ], [ 0, %.loopexit.split.loop.exit162 ], [ 0, %.loopexit.split.loop.exit ], [ 8, %bb.f ] ; 3 uses
  switch i32 %i.r, label %.thread456 [
    i32 7, label %.thread462
    i32 16777223, label %.thread445
  ]

.thread462:                                       ; preds = %.split436, %.loopexit.thread
  %.sroa.028.0336472 = phi i8 [ %.sroa.028.0336, %.loopexit.thread ], [ %.38, %.split436 ]
  %.sroa.029.0338471 = phi i8 [ %.sroa.029.0338, %.loopexit.thread ], [ %.39, %.split436 ]
  %.sroa.09.0340470 = phi i8 [ %.sroa.09.0340, %.loopexit.thread ], [ %i.ap, %.split436 ]
  %.sroa.419.0342469 = phi i64 [ %.sroa.419.0342, %.loopexit.thread ], [ %.sroa.419.0442, %.split436 ]
  %.sroa.018.0344468 = phi i64 [ %.sroa.018.0344, %.loopexit.thread ], [ %.sroa.018.0443, %.split436 ]
  %i.fr = phi i1 [ %i.fq, %.loopexit.thread ], [ %i.av, %.split436 ]
  %i.fs = and i8 %i.ae, 63
  %i.ft = zext nneg i8 %i.fs to i64
  %.neg36 = shl nsw i64 -1, %i.ft
  %i.fu = add i64 %.neg36, %.sroa.010.0225
  br label %.thread456

.thread445.thread:                                ; preds = %.split420, %.split405, %.split374, %.split366, %.split
  %.sroa.028.0336455.ph = phi i8 [ 3, %.split ], [ 0, %.split366 ], [ 5, %.split374 ], [ 5, %.split405 ], [ 8, %.split420 ]
  %.sroa.029.0338454.ph = phi i8 [ 3, %.split ], [ 0, %.split366 ], [ 1, %.split374 ], [ 4, %.split405 ], [ 5, %.split420 ]
  %.sroa.09.0340453.ph = phi i8 [ %i.dy, %.split ], [ %i.dp, %.split366 ], [ %i.eq, %.split374 ], [ %i.ez, %.split405 ], [ %i.eh, %.split420 ]
  %.sroa.419.0342452.ph = phi i64 [ %.sroa.419.0357, %.split ], [ %.sroa.419.0372, %.split366 ], [ %.sroa.419.0380, %.split374 ], [ %.sroa.419.0411, %.split405 ], [ %.sroa.419.0426, %.split420 ]
  %.sroa.018.0344451.ph = phi i64 [ %.sroa.018.0358, %.split ], [ %.sroa.018.0373, %.split366 ], [ %.sroa.018.0381, %.split374 ], [ %.sroa.018.0412, %.split405 ], [ %.sroa.018.0427, %.split420 ]
  %.ph473 = phi i1 [ %i.ee, %.split ], [ %i.dv, %.split366 ], [ %i.ew, %.split374 ], [ %i.ff, %.split405 ], [ %i.en, %.split420 ]
  %i.fv = and i8 %i.x, 63
  %i.fw = zext nneg i8 %i.fv to i64
  %.neg479 = shl nsw i64 -1, %i.fw
  %i.fx = add i64 %.neg479, %.sroa.010.0225
  br label %.thread456

.thread445:                                       ; preds = %.loopexit.split.loop.exit172, %.loopexit.thread
  %i.fy = phi i8 [ %i.ae, %.loopexit.thread ], [ %i.x, %.loopexit.split.loop.exit172 ] ; 5 uses
  %i.fz = phi i8 [ %i.ac, %.loopexit.thread ], [ %i.v, %.loopexit.split.loop.exit172 ] ; 2 uses
  %.sroa.028.0336455 = phi i8 [ %.sroa.028.0336, %.loopexit.thread ], [ 0, %.loopexit.split.loop.exit172 ] ; 4 uses
  %.sroa.029.0338454 = phi i8 [ %.sroa.029.0338, %.loopexit.thread ], [ 0, %.loopexit.split.loop.exit172 ] ; 4 uses
  %.sroa.09.0340453 = phi i8 [ %.sroa.09.0340, %.loopexit.thread ], [ %i.bq, %.loopexit.split.loop.exit172 ] ; 4 uses
  %.sroa.419.0342452 = phi i64 [ %.sroa.419.0342, %.loopexit.thread ], [ %.sroa.419.0418, %.loopexit.split.loop.exit172 ] ; 4 uses
  %.sroa.018.0344451 = phi i64 [ %.sroa.018.0344, %.loopexit.thread ], [ %.sroa.018.0419, %.loopexit.split.loop.exit172 ] ; 4 uses
  %i.ga = phi i1 [ %i.fq, %.loopexit.thread ], [ %i.bw, %.loopexit.split.loop.exit172 ] ; 4 uses
  %i.gb = and i8 %i.fy, 63
  %i.gc = zext nneg i8 %i.gb to i64
  %.neg = shl nsw i64 -1, %i.gc
  %i.gd = add i64 %.neg, %.sroa.010.0225          ; 4 uses
  switch i8 %i.fz, label %.thread456 [
    i8 6, label %bb.l
    i8 7, label %bb.m
    i8 8, label %bb.n
  ]

bb.l:                                             ; preds = %.thread445
  %i.ge = add i64 %i.gd, -1
  br label %.thread456

bb.m:                                             ; preds = %.thread445
  %i.gf = add i64 %i.gd, -2
  br label %.thread456

bb.n:                                             ; preds = %.thread445
  %i.gg = add i64 %i.gd, -4
  br label %.thread456

bb.o:                                             ; preds = %.thread456, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCseHTIzroA4w0_6object4read5xcoff7sectionINtB2_20XcoffSectionIteratorNtNtB8_5xcoff12FileHeader32ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !147, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !147, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !147
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !148, !noundef !5
  %i.i = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !148
  %i.j = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCseHTIzroA4w0_6object4read5xcoff7sectionINtB2_20XcoffSectionIteratorNtNtB8_5xcoff12FileHeader64ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !153, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !153, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !153
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !154, !noundef !5
  %i.i = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !154
  %i.j = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 0, 24) i8 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read4coff4fileINtB5_8CoffFileRShNtNtBb_2pe22AnonObjectHeaderBigobjENtNtB9_6traits6Object12architectureCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr i8, ptr %i.a, i64 6
  %.val = load i16, ptr %i.b, align 1
  switch i16 %.val, label %bb.g [
    i16 452, label %bb.b
    i16 -21916, label %bb.c
    i16 -22975, label %bb.c
    i16 332, label %bb.d
    i16 -31132, label %bb.e
    i16 496, label %bb.f
    i16 497, label %bb.f
    i16 498, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 23, %bb.f ], [ 4, %bb.b ], [ 1, %bb.c ], [ 10, %bb.d ], [ 11, %bb.e ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 0, 24) i8 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read4coff4fileNtB5_8CoffFileNtNtB9_6traits6Object12architectureCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i16, ptr %i.a, align 1
  switch i16 %.val, label %bb.g [
    i16 452, label %bb.b
    i16 -21916, label %bb.c
    i16 -22975, label %bb.c
    i16 332, label %bb.d
    i16 -31132, label %bb.e
    i16 496, label %bb.f
    i16 497, label %bb.f
    i16 498, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 23, %bb.f ], [ 4, %bb.b ], [ 1, %bb.c ], [ 10, %bb.d ], [ 11, %bb.e ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs1_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB5_18ElfSectionIteratorINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !159, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !159, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
end_hunk_0
