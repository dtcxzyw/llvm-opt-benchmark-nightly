Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.13?download=true
inline.NumInlined: 1910
inline.NumDeleted: 823
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMsf_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22SnapshotCheckpointPath3new:.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs1_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsf_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22SnapshotCheckpointPath9from_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsi_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22SnapshotCheckpointPathINtNtCs4NRVxsYgnAr_4core7convert7TryFromNtNtCs1LivM9IBWqb_12object_store4path4PathE8try_from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsf_NtCs92BnbMq7p8c_15influxdb3_write5pathsNtB5_22SnapshotCheckpointPath9month_dir(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8
  store ptr %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs92BnbMq7p8c_15influxdb3_write, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtB6_7Display3fmtBy_, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @77, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXs1_NtCs1LivM9IBWqb_12object_store4pathNtB5_4PathINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs92BnbMq7p8c_15influxdb3_write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !9, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1 = load i64, ptr %i.f, align 8, !noundef !4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  %i.g = load i64, ptr %0, align 8, !range !5, !alias.scope !1828, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !9, !alias.scope !1829, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.i, align 8, !alias.scope !1828 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted26.i = load i8, ptr %i.m, align 8, !alias.scope !1829 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %i.n = trunc nuw i8 %.promoted26.i to i1        ; 2 uses
  %i.o = icmp eq i64 %.promoted.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %.val1
  br i1 %.not.i.i.i.peel, label %bb.d, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i, %.val1
  br i1 %i.p, label %bb.e, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !1831, !noalias !1832, !noundef !4
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i, %.val1
  br i1 %i.u, label %.loopexit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !1833, !noundef !4 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.peel: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !1833, !noundef !4
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.peel
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !1833, !noundef !4
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.peel
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !1833, !noundef !4
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i.peel ], [ %i.bd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i.peel ], [ %i.ag, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i.peel ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !1828, !noundef !4
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !1828, !nonnull !4, !noundef !4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1828, !noundef !4 ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.j ], [ %..i.i.peel, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !1834
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp ult i64 %i.bq, %.val1
  br i1 %.not.i.i.i, label %bb.o, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1
  br i1 %i.bs, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !1831, !noalias !1836, !noundef !4
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %.split.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1
  br i1 %i.bw, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !1837, !noundef !4 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i: ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i, label %.sink.split

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i, label %.sink.split

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split

.loopexit:                                        ; preds = %bb.o, %.split.i.i.i, %bb.d, %.split.i.i.i.peel
  %.lcssa15 = phi i8 [ %.promoted26.i, %.split.i.i.i.peel ], [ %.promoted26.i, %bb.d ], [ 1, %.split.i.i.i ], [ 1, %bb.o ]
  %.lcssa12 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.d ], [ %i.bq, %.split.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !1829
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, i64 noundef %.lcssa12, i64 noundef %.val1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2470) #25, !noalias !1836
  unreachable

.loopexit19:                                      ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !1829
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19
  store i8 1, ptr %i.j, align 2, !alias.scope !1829
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i

.sink.split:                                      ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i, %bb.q, %bb.h
  %.lcssa14 = phi i64 [ %.promoted.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit12.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit14.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs92BnbMq7p8c_15influxdb3_write.exit16.i.i.i ]
  store i8 0, ptr %i.m, align 8, !alias.scope !1829
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %.sink.split, %.loopexit19
  %1 = phi i64 [ %.lcssa14, %.sink.split ], [ %.val1, %.loopexit19 ], [ %.val1, %bb.p ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ck, align 8, !alias.scope !1827
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cl, align 8, !alias.scope !1827
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i: ; preds = %bb.s, %bb.r, %.preheader.i
  %storemerge.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i ]
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !1827
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.t:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.u:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, %bb.t, %bb.u
  %i.cm = load i64, ptr %i.a, align 8, !range !5, !noundef !4
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !4 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs92BnbMq7p8c_15influxdb3_write.exit

bb.w:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.cw = load i8, ptr %i.b, align 1, !range !9, !alias.scope !1838, !noundef !4
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs92BnbMq7p8c_15influxdb3_write.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !1838
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !9, !alias.scope !1838, !noundef !4
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i, label %bb.y

._crit_edge.i:                                    ; preds = %bb.x
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !1838
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8, !alias.scope !1838
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !1838, !noundef !4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !1838, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs92BnbMq7p8c_15influxdb3_write.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i
  %i.df = phi i64 [ %.pre3.i, %._crit_edge.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !1838, !nonnull !4, !noundef !4
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dg
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs92BnbMq7p8c_15influxdb3_write.exit

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %.sroa.4.0 = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.0.0 = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ], [ null, %bb.y ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs92BnbMq7p8c_15influxdb3_write.exit
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs92BnbMq7p8c_15influxdb3_write.exit ], [ undef, %bb.a ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs92BnbMq7p8c_15influxdb3_write.exit ], [ null, %bb.a ]
  %i.dj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.dk = insertvalue { ptr, i64 } %i.dj, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.dk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE9next_backCs92BnbMq7p8c_15influxdb3_write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !9, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !9, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8
  %i.g = tail call fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE9next_backCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(72) %0) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.k, label %bb.l

bb.d:                                             ; preds = %bb.k, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6 = load i64, ptr %i.l, align 8, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1842, !noundef !4 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.promoted.i = load i64, ptr %i.o, align 8, !alias.scope !1842 ; 3 uses
  %i.p = icmp ult i64 %.promoted.i, %i.n
  %.not25.i = icmp ugt i64 %.promoted.i, %.val6
  %or.cond26.i = or i1 %i.p, %.not25.i
  br i1 %or.cond26.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !1842, !noundef !4 ; 2 uses
  %i.u = zext nneg i8 %i.t to i64                 ; 3 uses
  %i.v = add nsw i64 %i.u, -1                     ; 3 uses
  %i.w = icmp ult i8 %i.t, 5
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %i.y = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %bb.h ]
  %i.z = sub nuw i64 %i.y, %i.n
  %i.aa = load i8, ptr %i.x, align 1, !alias.scope !1842, !noundef !4
  %i.ab = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr7memrchr(i8 noundef %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.z), !noalias !1843 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = extractvalue { i64, i64 } %i.ab, 1
  %i.af = add i64 %i.ae, %i.n                     ; 6 uses
  %.not15.i = icmp ult i64 %i.af, %i.v
  br i1 %.not15.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !1842
  br label %.loopexit

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.f
  store i64 %i.af, ptr %i.o, align 8, !alias.scope !1842
  %i.ag = icmp ult i64 %i.af, %i.n
  %.not.i = icmp ugt i64 %i.af, %.val6
  %or.cond.i = or i1 %i.ag, %.not.i
  br i1 %or.cond.i, label %.loopexit, label %bb.e

bb.i:                                             ; preds = %bb.f
  %i.ah = sub nuw i64 %i.af, %i.v                 ; 5 uses
  %i.ai = add i64 %i.ah, %i.u                     ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %.not16.i = icmp ugt i64 %i.ai, %.val6
  %or.cond17.i = or i1 %i.aj, %.not16.i
  br i1 %or.cond17.i, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.r, i64 %i.u), !noalias !1844
  %i.al = icmp eq i32 %bcmp.i, 0
  br i1 %i.al, label %bb.m, label %bb.h

bb.k:                                             ; preds = %bb.c
  %i.am = load i8, ptr %i.a, align 1, !range !9, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k, %bb.c, %bb.a, %bb.n
  %.sroa.8.0 = phi i64 [ %i.i, %bb.c ], [ %.sroa.8.1, %bb.n ], [ undef, %bb.a ], [ undef, %bb.k ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ %.sroa.0.1, %bb.n ], [ null, %bb.a ], [ null, %bb.k ]
  %i.ao = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ap = insertvalue { ptr, i64 } %i.ao, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.ap

bb.m:                                             ; preds = %bb.j
  store i64 %i.ah, ptr %i.o, align 8, !alias.scope !1842
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  %i.as = sub nuw i64 %i.ar, %i.ai
  store i64 %i.ah, ptr %i.aq, align 8
  br label %bb.n

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.d
  store i8 1, ptr %i.a, align 1
  %i.at = load i64, ptr %0, align 8, !noundef !4  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
