Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.06?download=true
inline.NumInlined: 4463
inline.NumDeleted: 2366
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_RNvXs8_NtCscdodAO9FK5_5alloc5sliceINtNtB7_3vec3VecThNtNtCs4NRVxsYgnAr_4core4time8DurationEEINtNtNtNtBS_5slice4sort6stable8BufGuardBM_E13with_capacityCs844E4pPEVZX_17influxdb3_catalog:bb.a

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCscdodAO9FK5_5alloc5sliceINtNtB7_3vec3VecThNtNtCs4NRVxsYgnAr_4core4time8DurationEEINtNtNtNtBS_5slice4sort6stable8BufGuardBM_E19as_uninit_slice_mutCs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9538)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !13, !alias.scope !9538, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !9538, !nonnull !4, !noundef !4 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !9538, !noundef !4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9540)
  %i.g = load i64, ptr %0, align 8, !range !17, !alias.scope !9541, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !13, !alias.scope !9542, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !9541 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted26.i.i = load i8, ptr %i.m, align 8, !alias.scope !9542 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9543)
  %i.n = trunc nuw i8 %.promoted26.i.i to i1      ; 2 uses
  %i.o = icmp eq i64 %.promoted.i.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.promoted.i.i, %.val1.i
  br i1 %.not.i.i.i.peel.i, label %bb.d, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i.i, %.val1.i
  br i1 %i.p, label %bb.e, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.promoted.i.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !9544, !noalias !9545, !noundef !4
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.promoted.i.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i.i, %.val1.i
  br i1 %i.u, label %.loopexit19.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !9546, !noundef !4 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.peel.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1.i
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !9546, !noundef !4
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.peel.i, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.peel.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1.i
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !9546, !noundef !4
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i.peel.i, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.peel.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1.i
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !9546, !noundef !4
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

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.peel.i ], [ %i.bd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i.peel.i ], [ %i.ag, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.peel.i ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !9541, !noundef !4
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !9541, !nonnull !4, !noundef !4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !9541, !noundef !4 ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.j ], [ %..i.i.peel.i, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel.i, %.promoted.i.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !9547
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9548)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i = icmp ult i64 %i.bq, %.val1.i
  br i1 %.not.i.i.i.i, label %bb.o, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1.i
  br i1 %i.bs, label %bb.p, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !9544, !noalias !9549, !noundef !4
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1.i
  br i1 %i.bw, label %.sink.split.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !9550, !noundef !4 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.i: ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1.i
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.i
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1.i
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.i
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1.i
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split.i

.loopexit.i:                                      ; preds = %bb.o, %.split.i.i.i.i, %bb.d, %.split.i.i.i.peel.i
  %.lcssa15.i = phi i8 [ %.promoted26.i.i, %.split.i.i.i.peel.i ], [ %.promoted26.i.i, %bb.d ], [ 1, %.split.i.i.i.i ], [ 1, %bb.o ]
  %.lcssa12.i = phi i64 [ %.promoted.i.i, %.split.i.i.i.peel.i ], [ %.promoted.i.i, %bb.d ], [ %i.bq, %.split.i.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15.i, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !9542
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef %.lcssa12.i, i64 noundef %.val1.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #32, !noalias !9549
  unreachable

.loopexit19.i:                                    ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !9542
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19.i
  store i8 1, ptr %i.j, align 2, !alias.scope !9542
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i

.sink.split.i:                                    ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i.i, %bb.q, %bb.p, %bb.h
  %.ph.i = phi i64 [ %.val1.i, %bb.p ], [ %.promoted.i.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit14.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit12.i.i.i.i ]
  store i8 0, ptr %i.m, align 8, !alias.scope !9542
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %.loopexit19.i
  %1 = phi i64 [ %.val1.i, %.loopexit19.i ], [ %.ph.i, %.sink.split.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ck, align 8, !alias.scope !9539, !noalias !9538
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cl, align 8, !alias.scope !9539, !noalias !9538
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i: ; preds = %bb.s, %bb.r, %.preheader.i.i
  %storemerge.i.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i.i ]
  store i64 %storemerge.i.i, ptr %i.a, align 8, !alias.scope !9539, !noalias !9538
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.t:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.u:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i: ; preds = %bb.u, %bb.t, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i
  %i.cm = load i64, ptr %i.a, align 8, !range !17, !noalias !9538, !noundef !4
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noalias !9538, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !9538, !noundef !4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !9538, !noundef !4 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8, !alias.scope !9538
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs844E4pPEVZX_17influxdb3_catalog.exit.i

bb.w:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i
  %i.cw = load i8, ptr %i.b, align 1, !range !13, !alias.scope !9551, !noundef !4
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs844E4pPEVZX_17influxdb3_catalog.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !9551
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !13, !alias.scope !9551, !noundef !4
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i.i, label %bb.y

._crit_edge.i.i:                                  ; preds = %bb.x
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !9551
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i.i = load i64, ptr %.phi.trans.insert2.i.i, align 8, !alias.scope !9551
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !9551, !noundef !4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !9551, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs844E4pPEVZX_17influxdb3_catalog.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i
  %i.df = phi i64 [ %.pre3.i.i, %._crit_edge.i.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !9551, !nonnull !4, !noundef !4
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dg
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs844E4pPEVZX_17influxdb3_catalog.exit.i

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %.sroa.4.0.i = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.0.0.i = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ], [ null, %bb.y ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9538
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs844E4pPEVZX_17influxdb3_catalog.exit

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.a, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs844E4pPEVZX_17influxdb3_catalog.exit.i
  %.sroa.4.1.i = phi i64 [ %.sroa.4.0.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs844E4pPEVZX_17influxdb3_catalog.exit.i ], [ undef, %bb.a ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs844E4pPEVZX_17influxdb3_catalog.exit.i ], [ null, %bb.a ]
  %i.dj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i, 0
  %i.dk = insertvalue { ptr, i64 } %i.dj, i64 %.sroa.4.1.i, 1
  ret { ptr, i64 } %i.dk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9556, !noundef !4 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !10, !alias.scope !9557, !noundef !4
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog.exit.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1)
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog.exit.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !9556, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !9556
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9565, !noundef !4 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !alias.scope !9565, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog.exit.thread.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog.exit.i.i, !prof !5

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1), !noalias !9566
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !9567, !noundef !4 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCscdodAO9FK5_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterReINtNtBa_6borrow3CoweEINtNtNtBa_3vec9into_iter8IntoIterTB1s_B1u_EEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  br label %bb.h

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2neCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.j
  %.val12 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val12, i64 %.val11), !alias.scope !10013
  %.not25 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not25, label %bb.l, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2neCs844E4pPEVZX_17influxdb3_catalog.exit.thread

bb.l:                                             ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2neCs844E4pPEVZX_17influxdb3_catalog.exit
  %i.q = icmp eq i64 %.sroa.6.0, -1
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECs844E4pPEVZX_17influxdb3_catalog.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx19)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECs844E4pPEVZX_17influxdb3_catalog.exit14

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECs844E4pPEVZX_17influxdb3_catalog.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2neCs844E4pPEVZX_17influxdb3_catalog.exit.thread: ; preds = %bb.j, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2neCs844E4pPEVZX_17influxdb3_catalog.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  br label %bb.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscdodAO9FK5_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtB1v_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeINtNtNtBa_3vec9into_iter8IntoIterTB1s_B2h_EEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([20 x i8]) align 4 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #14 personality ptr @rust_eh_personality {
.peel.begin:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.promoted = load i32, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %.promoted49 = load ptr, ptr %i.c, align 8      ; 6 uses
  %i.d = trunc i32 %.promoted to i1
  br i1 %i.d, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.peel, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  %i.e = icmp eq ptr %.promoted49, %i.b
  br i1 %i.e, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.promoted49, i64 20 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !10031
  %.sroa.6.0..sroa_idx22.peel = getelementptr inbounds nuw i8, ptr %.promoted49, i64 8
  %.sroa.824.0..sroa_idx26.peel = getelementptr inbounds nuw i8, ptr %.promoted49, i64 12
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.peel

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.peel: ; preds = %bb.b, %.peel.begin
  %i.g = phi ptr [ %.promoted49, %.peel.begin ], [ %i.f, %bb.b ] ; 5 uses
  %.sroa.824.0.peel.in = phi ptr [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, %.peel.begin ], [ %.sroa.824.0..sroa_idx26.peel, %bb.b ]
  %.sroa.6.0.peel.in = phi ptr [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, %.peel.begin ], [ %.sroa.6.0..sroa_idx22.peel, %bb.b ]
  %.sroa.018.0.in.peel = phi ptr [ %.sroa.4.0..sroa_idx, %.peel.begin ], [ %.promoted49, %bb.b ]
  %.sroa.6.0.peel = load i32, ptr %.sroa.6.0.peel.in, align 4 ; 4 uses
  %.sroa.824.0.peel = load i64, ptr %.sroa.824.0.peel.in, align 4 ; 3 uses
  %.sroa.018.0.peel = load i64, ptr %.sroa.018.0.in.peel, align 4 ; 4 uses
  %.not.peel = icmp eq i32 %.sroa.6.0.peel, 0
  br i1 %.not.peel, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.peel
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10035)
  %i.h = icmp eq ptr %i.g, %i.b
  br i1 %i.h, label %.loopexit.sink.split, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2A_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit.peel

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2A_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit.peel: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !alias.scope !10036
  %.sroa.0.0.copyload10.i.peel = load i64, ptr %i.g, align 4, !noalias !10037 ; 3 uses
  %.sroa.411.0..sroa_idx.i.peel = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.411.0.copyload12.i.peel = load i32, ptr %.sroa.411.0..sroa_idx.i.peel, align 4, !noalias !10037 ; 3 uses
  %.sroa.5.0..sroa_idx.i.peel = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.5.0.copyload13.i.peel = load i64, ptr %.sroa.5.0..sroa_idx.i.peel, align 4, !noalias !10037 ; 2 uses
  store i64 %.sroa.0.0.copyload10.i.peel, ptr %.sroa.4.0..sroa_idx, align 4, !alias.scope !10032
  store i32 %.sroa.411.0.copyload12.i.peel, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 4, !alias.scope !10032
  store i64 %.sroa.5.0.copyload13.i.peel, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !10032
  %.not6.peel = icmp eq i32 %.sroa.411.0.copyload12.i.peel, 0
  br i1 %.not6.peel, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2A_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit.peel
  %spec.select.i.peel.not = icmp eq i64 %.sroa.0.0.copyload10.i.peel, %.sroa.018.0.peel
  br i1 %spec.select.i.peel.not, label %.peel.next, label %.loopexit54

.peel.next:                                       ; preds = %bb.d, %bb.f
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.copyload10.i, %bb.f ], [ %.sroa.0.0.copyload10.i.peel, %bb.d ] ; 4 uses
  %i.j = phi ptr [ %i.l, %bb.f ], [ %i.i, %bb.d ] ; 5 uses
  %.sroa.4.sroa.5.0.copyload48 = phi i64 [ %.sroa.5.0.copyload13.i, %bb.f ], [ %.sroa.5.0.copyload13.i.peel, %bb.d ] ; 3 uses
  %.sroa.4.sroa.4.0.copyload47 = phi i32 [ %.sroa.411.0.copyload12.i, %bb.f ], [ %.sroa.411.0.copyload12.i.peel, %bb.d ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10041)
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %.loopexit.sink.split, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2A_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2A_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %.peel.next
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 2 uses
  store ptr %i.l, ptr %i.c, align 8, !alias.scope !10042
  %.sroa.0.0.copyload10.i = load i64, ptr %i.j, align 4, !noalias !10043 ; 3 uses
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.411.0.copyload12.i = load i32, ptr %.sroa.411.0..sroa_idx.i, align 4, !noalias !10043 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.5.0.copyload13.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !10043 ; 2 uses
  store i64 %.sroa.0.0.copyload10.i, ptr %.sroa.4.0..sroa_idx, align 4, !alias.scope !10038
  store i32 %.sroa.411.0.copyload12.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 4, !alias.scope !10038
  store i64 %.sroa.5.0.copyload13.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !10038
  %.not6 = icmp eq i32 %.sroa.411.0.copyload12.i, 0
  br i1 %.not6, label %.loopexit, label %bb.f

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.peel, %bb.a
  store i32 0, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.m, align 4
  br label %bb.e

bb.e:                                             ; preds = %.loopexit54, %.loopexit, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.thread
  ret void

bb.f:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2A_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit
  %spec.select.i.not = icmp eq i64 %.sroa.0.0.copyload10.i, %.sroa.018.0
  br i1 %spec.select.i.not, label %.peel.next, label %.loopexit54, !llvm.loop !10030

.loopexit.sink.split:                             ; preds = %.peel.next, %bb.c
  %.sroa.824.0.lcssa.ph = phi i64 [ %.sroa.824.0.peel, %bb.c ], [ %.sroa.4.sroa.5.0.copyload48, %.peel.next ]
  %.sroa.6.0.lcssa.ph = phi i32 [ %.sroa.6.0.peel, %bb.c ], [ %.sroa.4.sroa.4.0.copyload47, %.peel.next ]
  %.sroa.018.0.lcssa.ph = phi i64 [ %.sroa.018.0.peel, %bb.c ], [ %.sroa.018.0, %.peel.next ]
  store i32 0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2A_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit, %.loopexit.sink.split, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2A_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit.peel
  %.sroa.824.0.lcssa = phi i64 [ %.sroa.824.0.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2A_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit.peel ], [ %.sroa.824.0.lcssa.ph, %.loopexit.sink.split ], [ %.sroa.4.sroa.5.0.copyload48, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2A_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit ]
  %.sroa.6.0.lcssa = phi i32 [ %.sroa.6.0.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2A_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit.peel ], [ %.sroa.6.0.lcssa.ph, %.loopexit.sink.split ], [ %.sroa.4.sroa.4.0.copyload47, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2A_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit ]
  %.sroa.018.0.lcssa = phi i64 [ %.sroa.018.0.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2A_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit.peel ], [ %.sroa.018.0.lcssa.ph, %.loopexit.sink.split ], [ %.sroa.018.0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdENtCsk0FzFVI8urx_8iox_time4TimeEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2A_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit ]
  store i32 1, ptr %1, align 8
  store i64 %.sroa.018.0.lcssa, ptr %0, align 4
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0.lcssa, ptr %.sroa.534.0..sroa_idx, align 4
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.824.0.lcssa, ptr %.sroa.635.0..sroa_idx, align 4
  br label %bb.e

.loopexit54:                                      ; preds = %bb.f, %bb.d
  %.sroa.824.0.lcssa52 = phi i64 [ %.sroa.824.0.peel, %bb.d ], [ %.sroa.4.sroa.5.0.copyload48, %bb.f ]
  %.sroa.6.0.lcssa51 = phi i32 [ %.sroa.6.0.peel, %bb.d ], [ %.sroa.4.sroa.4.0.copyload47, %bb.f ]
  %.sroa.018.0.lcssa50 = phi i64 [ %.sroa.018.0.peel, %bb.d ], [ %.sroa.018.0, %bb.f ]
  store i32 1, ptr %1, align 8
  store i64 %.sroa.018.0.lcssa50, ptr %0, align 4
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0.lcssa51, ptr %.sroa.538.0..sroa_idx, align 4
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.824.0.lcssa52, ptr %.sroa.639.0..sroa_idx, align 4
  br label %bb.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscdodAO9FK5_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtB1v_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEINtNtNtBa_3vec9into_iter8IntoIterTB1s_B2h_EEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.peel.begin:
  %.sroa.824 = alloca [20 x i8], align 4          ; 7 uses
  %.sroa.8.sroa.6 = alloca [20 x i8], align 4     ; 8 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %.promoted = load i64, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.promoted = load i32, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.promoted45 = load ptr, ptr %i.c, align 8      ; 6 uses
  %i.d = trunc nuw i64 %.promoted to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.824)
  br i1 %i.d, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.peel, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10061)
  %i.e = icmp eq ptr %.promoted45, %i.b
  br i1 %i.e, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.promoted45, i64 32 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !10061
  %.sroa.6.0..sroa_idx22.peel = getelementptr inbounds nuw i8, ptr %.promoted45, i64 8
  %.sroa.6.0.copyload23.peel = load i32, ptr %.sroa.6.0..sroa_idx22.peel, align 8, !noalias !10061
  %.sroa.824.0..sroa_idx25.peel = getelementptr inbounds nuw i8, ptr %.promoted45, i64 12
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.peel

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.peel: ; preds = %.peel.begin, %bb.b
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sink = phi ptr [ %.sroa.824.0..sroa_idx25.peel, %bb.b ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, %.peel.begin ]
  %i.g = phi ptr [ %i.f, %bb.b ], [ %.promoted45, %.peel.begin ] ; 5 uses
  %.sroa.6.0.peel = phi i32 [ %.sroa.6.0.copyload23.peel, %bb.b ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.promoted, %.peel.begin ] ; 4 uses
  %.sroa.018.0.peel.in = phi ptr [ %.promoted45, %bb.b ], [ %.sroa.4.0..sroa_idx, %.peel.begin ]
  %.sroa.018.0.peel = load i64, ptr %.sroa.018.0.peel.in, align 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.824, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sink, i64 20, i1 false)
  %.not.peel = icmp eq i32 %.sroa.6.0.peel, 0
  br i1 %.not.peel, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.peel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.sroa.6, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.824, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10065)
  %i.h = icmp eq ptr %i.g, %i.b
  br i1 %i.h, label %.loopexit51.sink.split, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit.peel

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit.peel: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !alias.scope !10066
  %.sroa.0.0.copyload10.i.peel = load i64, ptr %i.g, align 8, !noalias !10067 ; 3 uses
  %.sroa.411.0..sroa_idx.i.peel = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.411.0.copyload12.i.peel = load i32, ptr %.sroa.411.0..sroa_idx.i.peel, align 8, !noalias !10067 ; 3 uses
  %.sroa.5.0..sroa_idx.i.peel = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i64 %.sroa.0.0.copyload10.i.peel, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10062
  store i32 %.sroa.411.0.copyload12.i.peel, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !10062
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i.peel, i64 20, i1 false)
  %.not6.peel = icmp eq i32 %.sroa.411.0.copyload12.i.peel, 0
  br i1 %.not6.peel, label %.loopexit51, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit.peel
  %spec.select.i.peel.not = icmp eq i64 %.sroa.0.0.copyload10.i.peel, %.sroa.018.0.peel
  br i1 %spec.select.i.peel.not, label %.peel.next, label %.loopexit52

.peel.next:                                       ; preds = %bb.d, %bb.f
  %.sroa.4.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload10.i, %bb.f ], [ %.sroa.0.0.copyload10.i.peel, %bb.d ] ; 4 uses
  %i.j = phi ptr [ %i.l, %bb.f ], [ %i.i, %bb.d ] ; 5 uses
  %.sroa.4.sroa.4.0.copyload44 = phi i32 [ %.sroa.411.0.copyload12.i, %bb.f ], [ %.sroa.411.0.copyload12.i.peel, %bb.d ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.824)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.sroa.6, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10071)
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %.loopexit51.sink.split, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %.peel.next
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store ptr %i.l, ptr %i.c, align 8, !alias.scope !10072
  %.sroa.0.0.copyload10.i = load i64, ptr %i.j, align 8, !noalias !10073 ; 3 uses
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.411.0.copyload12.i = load i32, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !10073 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i64 %.sroa.0.0.copyload10.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10068
  store i32 %.sroa.411.0.copyload12.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !10068
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i, i64 20, i1 false)
  %.not6 = icmp eq i32 %.sroa.411.0.copyload12.i, 0
  br i1 %.not6, label %.loopexit51, label %bb.f

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.peel, %bb.a
  store i64 0, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.824)
  br label %bb.e

bb.e:                                             ; preds = %.loopexit52, %.loopexit51, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBZ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.6)
  ret void

bb.f:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit
  %spec.select.i.not = icmp eq i64 %.sroa.0.0.copyload10.i, %.sroa.4.sroa.0.0.copyload
  br i1 %spec.select.i.not, label %.peel.next, label %.loopexit52, !llvm.loop !10060

.loopexit51.sink.split:                           ; preds = %.peel.next, %bb.c
  %.sroa.6.0.lcssa48.ph = phi i32 [ %.sroa.6.0.peel, %bb.c ], [ %.sroa.4.sroa.4.0.copyload44, %.peel.next ]
  %.sroa.018.0.lcssa46.ph = phi i64 [ %.sroa.018.0.peel, %bb.c ], [ %.sroa.4.sroa.0.0.copyload, %.peel.next ]
  store i32 0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %.loopexit51

.loopexit51:                                      ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit, %.loopexit51.sink.split, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit.peel
  %.sroa.6.0.lcssa48 = phi i32 [ %.sroa.6.0.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit.peel ], [ %.sroa.6.0.lcssa48.ph, %.loopexit51.sink.split ], [ %.sroa.4.sroa.4.0.copyload44, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit ]
  %.sroa.018.0.lcssa46 = phi i64 [ %.sroa.018.0.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit.peel ], [ %.sroa.018.0.lcssa46.ph, %.loopexit51.sink.split ], [ %.sroa.4.sroa.0.0.copyload, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TTNtCsbFlE7Gjht9i_12influxdb3_id4DbIdNtBQ_7TableIdETNtCsk0FzFVI8urx_8iox_time4TimexEEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit ]
  store i64 1, ptr %1, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.632.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.sroa.6, i64 20, i1 false)
  store i64 %.sroa.018.0.lcssa46, ptr %0, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0.lcssa48, ptr %.sroa.531.0..sroa_idx, align 8
  br label %bb.e

.loopexit52:                                      ; preds = %bb.f, %bb.d
  %.sroa.6.0.lcssa49 = phi i32 [ %.sroa.6.0.peel, %bb.d ], [ %.sroa.4.sroa.4.0.copyload44, %bb.f ]
  %.sroa.018.0.lcssa47 = phi i64 [ %.sroa.018.0.peel, %bb.d ], [ %.sroa.4.sroa.0.0.copyload, %bb.f ]
  store i64 1, ptr %1, align 8
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.636.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.sroa.6, i64 20, i1 false)
  store i64 %.sroa.018.0.lcssa47, ptr %0, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0.lcssa49, ptr %.sroa.535.0..sroa_idx, align 8
  br label %bb.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCscdodAO9FK5_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterhNtNtCs4NRVxsYgnAr_4core4time8DurationINtNtNtBa_3vec9into_iter8IntoIterThB1t_EEENtNtNtNtB1x_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.017.sroa.6 = alloca [15 x i8], align 1   ; 6 uses
  %.sroa.7.sroa.0 = alloca [15 x i8], align 1     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.promoted = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.promoted = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %.promoted = load ptr, ptr %i.d, align 8
  %.sroa.01.sroa.0.0.copyload.pre = load i8, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.sroa.01.sroa.0.0.copyload = phi i8 [ %.sroa.017.sroa.0.0, %bb.i ], [ %.sroa.01.sroa.0.0.copyload.pre, %bb.a ]
  %i.e = phi ptr [ %i.j, %bb.i ], [ %.promoted, %bb.a ] ; 7 uses
  %.sroa.5.0.copyload50 = phi i32 [ %.sroa.5.0.copyload11.i, %bb.i ], [ %.sroa.5.0..sroa_idx.promoted, %bb.a ]
  %.sroa.4.0.copyload47 = phi i32 [ %.sroa.4.0.copyload9.i, %bb.i ], [ %.sroa.4.0..sroa_idx.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017.sroa.6)
  %.not = icmp eq i32 %.sroa.4.0.copyload47, -2
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.017.sroa.6, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.01.sroa.4.0..sroa_idx, i64 15, i1 false)
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs4NRVxsYgnAr_4core4time8DurationEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10083)
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs4NRVxsYgnAr_4core4time8DurationEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !alias.scope !10083
  %.sroa.017.sroa.0.0.copyload = load i8, ptr %i.e, align 8, !noalias !10083
  %.sroa.017.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.017.sroa.6, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.017.sroa.6.0..sroa_idx, i64 15, i1 false), !noalias !10083
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0.copyload19 = load i32, ptr %.sroa.6.0..sroa_idx18, align 8, !noalias !10083
  %.sroa.9.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.9.0.copyload21 = load i32, ptr %.sroa.9.0..sroa_idx20, align 4, !noalias !10083
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs4NRVxsYgnAr_4core4time8DurationEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs4NRVxsYgnAr_4core4time8DurationEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.e, %bb.c
  %i.h = phi ptr [ %i.e, %bb.c ], [ %i.g, %bb.e ] ; 5 uses
  %.sroa.017.sroa.0.0 = phi i8 [ %.sroa.01.sroa.0.0.copyload, %bb.c ], [ %.sroa.017.sroa.0.0.copyload, %bb.e ] ; 4 uses
  %.sroa.9.0 = phi i32 [ %.sroa.5.0.copyload50, %bb.c ], [ %.sroa.9.0.copyload21, %bb.e ] ; 2 uses
  %.sroa.6.0 = phi i32 [ %.sroa.4.0.copyload47, %bb.c ], [ %.sroa.6.0.copyload19, %bb.e ] ; 3 uses
  %.not10 = icmp eq i32 %.sroa.6.0, -1
  br i1 %.not10, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs4NRVxsYgnAr_4core4time8DurationEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.thread, label %bb.f

bb.f:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs4NRVxsYgnAr_4core4time8DurationEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.7.sroa.0, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.017.sroa.6, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10087)
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %.loopexit63, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_ThNtNtB5_4time8DurationEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1E_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_ThNtNtB5_4time8DurationEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1E_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !alias.scope !10088
  %.sroa.4.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0.copyload9.i = load i32, ptr %.sroa.4.0..sroa_idx8.i, align 8, !noalias !10089 ; 4 uses
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.5.0.copyload11.i = load i32, ptr %.sroa.5.0..sroa_idx10.i, align 4, !noalias !10089 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  store i32 %.sroa.5.0.copyload11.i, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !10084
  %i.k = icmp ne i32 %.sroa.4.0.copyload9.i, -2
  tail call void @llvm.assume(i1 %i.k)
  %.not11 = icmp eq i32 %.sroa.4.0.copyload9.i, -1
  br i1 %.not11, label %.loopexit63, label %bb.h

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs4NRVxsYgnAr_4core4time8DurationEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs4NRVxsYgnAr_4core4time8DurationEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit, %bb.d
  store i32 -2, ptr %.sroa.4.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017.sroa.6)
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.loopexit63, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterThNtNtCs4NRVxsYgnAr_4core4time8DurationEENtNtNtNtB11_4iter6traits8iterator8Iterator4nextCs844E4pPEVZX_17influxdb3_catalog.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0)
  ret void

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_ThNtNtB5_4time8DurationEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1E_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit
  %.val12 = load i8, ptr %i.a, align 8, !noundef !4
  %.not39 = icmp eq i8 %.sroa.017.sroa.0.0, %.val12
  br i1 %.not39, label %bb.i, label %bb.j

.loopexit63:                                      ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_ThNtNtB5_4time8DurationEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1E_8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECs844E4pPEVZX_17influxdb3_catalog.exit, %bb.f
  store i32 -1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.428.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.7.sroa.0, i64 15, i1 false)
  store i8 %.sroa.017.sroa.0.0, ptr %0, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.9.0, ptr %.sroa.630.0..sroa_idx, align 4
  br label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0)
  br label %bb.b

bb.j:                                             ; preds = %bb.h
  store i32 %.sroa.4.0.copyload9.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.432.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.7.sroa.0, i64 15, i1 false)
  store i8 %.sroa.017.sroa.0.0, ptr %0, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.9.0, ptr %.sroa.634.0..sroa_idx, align 4
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NvNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect14default_extendTINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnIdentifierEIB17_NtNtB1b_6string6StringEEINtB4_10SpecExtendINtNtB19_9into_iter8IntoIterTB1C_B30_EEE6extendB1K_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = ptrtoint ptr %.val3 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5                   ; 4 uses
  %.not = icmp eq ptr %.val3, %.val
  br i1 %.not, label %_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectTINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnIdentifierEIBQ_NtNtBU_6string6StringEEINtB5_6ExtendTB1l_B2I_EE14extend_reserveB1t_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !10100, !noundef !4 ; 2 uses
  %i.j = load i64, ptr %0, align 8, !range !10, !alias.scope !10100, !noundef !4
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.g, %i.k
  br i1 %i.l, label %bb.c, label %_RNvXsi_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnIdentifierEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBE_E14extend_reserveBM_.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.i, i64 noundef range(i64 1, 0) %i.g, i64 noundef 2, i64 noundef 6)
          to label %_RNvXsi_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnIdentifierEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBE_E14extend_reserveBM_.exit.i unwind label %bb.e

_RNvXsi_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types16ColumnIdentifierEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBE_E14extend_reserveBM_.exit.i: ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !10101, !noundef !4 ; 2 uses
  %i.p = load i64, ptr %i.m, align 8, !range !10, !alias.scope !10101, !noundef !4
  %i.q = sub i64 %i.p, %i.o
  %i.r = icmp ugt i64 %i.g, %i.q
end_hunk_1
