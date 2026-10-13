Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_clap_blocks-33116f0a76da8199.influxdb3_clap_blocks.b4f6f4653be3b393-cgu.13?download=true
inline.NumInlined: 705
inline.NumDeleted: 317
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYBW_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks:bb.a
  %i.bv = shl nuw nsw i64 %i.bn, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.br, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bw = or i64 %i.bl, 1
  %i.bx = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 384307168202282326) %i.bl, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5), !inline_history !1385
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYBX_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 384307168202282326) %i.bn, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %i.bl, ptr noalias noundef nonnull %5)
  %i.cb = shl nuw nsw i64 %i.bn, 1
  %i.cc = or disjoint i64 %i.cb, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.x:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bl
  %i.ce = or i64 %i.bm, 1
  %i.cf = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %i.cd, i64 noundef range(i64 0, 384307168202282326) %i.bm, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5), !inline_history !1385
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB16_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cc, %bb.w ], [ %i.bv, %bb.t ] ; 2 uses
  %i.cj = icmp ugt i64 %i.be, 1
  br i1 %i.cj, label %.lr.ph63, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ck = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cl = lshr i64 %.sroa.018.0, 1
  %i.cm = add nuw i64 %i.cl, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cn = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cn, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.co = or i64 %1, 1
  %i.cp = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5), !inline_history !1385
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias noundef nonnull %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph104 = phi ptr [ %i.de, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph103 = phi i64 [ %i.cp, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph102 = phi i32 [ %i.j, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph101 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph104, i64 8
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph104, i64 16
  %i.e = ptrtoint ptr %.sroa.0.0.ph104 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph101, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph101, i64 8
  %i.g = getelementptr i8, ptr %.sroa.028.0.ph101, i64 16
  %i.h = icmp eq i32 %.sroa.025.0.ph102, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph227

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path12split_at_mutCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.i = icmp eq i32 %i.j, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph227

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path12split_at_mutCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa95 = phi ptr [ %i.cq, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph104, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path12split_at_mutCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ %i.de, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path12split_at_mutCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ], [ %i.cp, %.outer ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1s_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph.lcssa95, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias noundef nonnull %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.097.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph103, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYBW_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph104, i64 noundef %.sroa.16.097.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull %6)
  br label %bb.f

.lr.ph227:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.096226 = phi i32 [ %i.j, %bb.b ], [ %.sroa.025.0.ph102, %.lr.ph ]
  %.sroa.16.097225 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph103, %.lr.ph ] ; 21 uses
  %i.j = add i32 %.sroa.025.096226, -1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  %i.k = lshr i64 %.sroa.16.097225, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.k, 96
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.k, 168
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %.idx2.i ; 4 uses
  %i.n = icmp samesign ult i64 %.sroa.16.097225, 64
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph227
  %i.o = call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB14_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph104, ptr noundef nonnull readonly %i.l, ptr noundef nonnull readonly %i.m, i64 noundef %i.k, ptr noalias noundef nonnull %6)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph227
  %.val10.i = load ptr, ptr %i.c, align 8, !alias.scope !1409, !noalias !1410, !nonnull !8, !noundef !8 ; 2 uses
  %.val11.i = load i64, ptr %i.d, align 8, !alias.scope !1409, !noalias !1410, !noundef !8 ; 2 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.val12.i = load ptr, ptr %i.p, align 8, !alias.scope !1409, !noalias !1410, !nonnull !8, !noundef !8 ; 2 uses
  %i.q = getelementptr i8, ptr %i.l, i64 16
  %.val13.i = load i64, ptr %i.q, align 8, !alias.scope !1409, !noalias !1410, !noundef !8 ; 2 uses
  %i.r = call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !1411 ; 2 uses
  %.not.i.i.i = icmp ne i8 %i.r, -2
  %i.s = icmp slt i8 %i.r, 0
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.s     ; 2 uses
  %i.t = getelementptr i8, ptr %i.m, i64 8
  %.val8.i = load ptr, ptr %i.t, align 8, !alias.scope !1409, !noalias !1410, !nonnull !8, !noundef !8 ; 2 uses
  %i.u = getelementptr i8, ptr %i.m, i64 16
  %.val9.i = load i64, ptr %i.u, align 8, !alias.scope !1409, !noalias !1410, !noundef !8 ; 2 uses
  %i.v = call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !1411 ; 2 uses
  %.not.i.i14.i = icmp ne i8 %i.v, -2
  %i.w = icmp slt i8 %i.v, 0
  %.sroa.0.0.i.i15.i = and i1 %.not.i.i14.i, %i.w
  %i.x = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i15.i
  br i1 %i.x, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !1411 ; 2 uses
  %.not.i.i16.i = icmp ne i8 %i.y, -2
  %i.z = icmp slt i8 %i.y, 0
  %.sroa.0.0.i.i17.i = and i1 %.not.i.i16.i, %i.z
  %i.aa = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i17.i
  %..i.i = select i1 %i.aa, ptr %i.m, ptr %i.l
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.o, %bb.c ], [ %.sroa.0.0.ph104, %bb.d ], [ %..i.i, %bb.e ]
  %i.ab = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ac = sub nuw i64 %i.ab, %i.e                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ac, 24         ; 3 uses
  %i.ad = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.097225
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %i.ac ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.028.0.val = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8
  %.sroa.028.0.val37 = load i64, ptr %i.g, align 8, !noundef !8
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val = load ptr, ptr %i.af, align 8, !nonnull !8, !noundef !8
  %i.ag = getelementptr i8, ptr %i.ae, i64 16
  %.val38 = load i64, ptr %i.ag, align 8, !noundef !8
  %i.ah = call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.028.0.val, i64 noundef %.sroa.028.0.val37, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val38) ; 2 uses
  %.not.i.i = icmp ne i8 %i.ah, -2
  %i.ai = icmp slt i8 %i.ah, 0
  %.sroa.0.0.i.i = and i1 %.not.i.i, %i.ai
  br i1 %.sroa.0.0.i.i, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  %.not71 = icmp samesign ult i64 %3, %.sroa.16.097225
  br i1 %.not71, label %bb.k, label %bb.j, !prof !1414

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.097225 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.ae, i64 8
  %i.al = getelementptr i8, ptr %i.ae, i64 16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.19.0.i = phi ptr [ %i.aj, %bb.j ], [ %i.az, %bb.m ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.11.1.lcssa.i, %bb.m ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph104, %bb.j ], [ %i.bb, %bb.m ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.097225, %bb.m ] ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i39 ; 2 uses
  %i.an = icmp ult ptr %.sroa.5.0.i, %i.am
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l
  %.val13.i40 = load ptr, ptr %i.ak, align 8, !alias.scope !1412, !noalias !1413, !nonnull !8, !noundef !8
  %.val14.i = load i64, ptr %i.al, align 8, !alias.scope !1412, !noalias !1413, !noundef !8
  br label %.lr.ph.i.a

._crit_edge.i:                                    ; preds = %.lr.ph.i.a, %bb.l
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.l ], [ %i.at, %.lr.ph.i.a ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.l ], [ %i.aw, %.lr.ph.i.a ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.l ], [ %i.ax, %.lr.ph.i.a ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.097225
  br i1 %i.ao, label %bb.n, label %bb.m

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.i
  %.sroa.5.111.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.ax, %.lr.ph.i.a ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.aw, %.lr.ph.i.a ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.at, %.lr.ph.i.a ]
  %i.ap = getelementptr i8, ptr %.sroa.5.111.i, i64 8
  %.val.i = load ptr, ptr %i.ap, align 8, !alias.scope !1412, !noalias !1413, !nonnull !8, !noundef !8
  %i.aq = getelementptr i8, ptr %.sroa.5.111.i, i64 16
  %.val14.i.a = load i64, ptr %i.aq, align 8, !alias.scope !1412, !noalias !1413, !noundef !8
  %i.ar = call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val14.i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val13.i40, i64 noundef %.val14.i), !noalias !1415 ; 2 uses
  %.not.i.i.i42 = icmp ne i8 %i.ar, -2
  %i.as = icmp slt i8 %i.ar, 0
  %.sroa.0.0.i.i.i43 = and i1 %.not.i.i.i42, %i.as ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -24 ; 3 uses
  %.sroa.01.0.i.i = select i1 %.sroa.0.0.i.i.i43, ptr %2, ptr %i.at
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i, i64 24, i1 false), !alias.scope !1415, !noalias !1416
  %i.av = zext i1 %.sroa.0.0.i.i.i43 to i64
  %i.aw = add i64 %.sroa.11.110.i, %i.av          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 24 ; 3 uses
  %i.ay = icmp ult ptr %i.ax, %i.am
  br i1 %i.ay, label %.lr.ph.i.a, label %._crit_edge.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -24 ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !1415, !noalias !1417
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 24
  br label %bb.l

bb.n:                                             ; preds = %._crit_edge.i
  %i.bc = mul i64 %.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.bc, i1 false), !alias.scope !1415
  %i.bd = sub i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.n
  %i.be = getelementptr [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.bd, 1
  %i.bf = icmp eq i64 %.sroa.16.097225, %.neg
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.bd, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.bj, %bb.o ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.o ]
  %i.bg = xor i64 %.sroa.06.014.i, -1
  %i.bh = getelementptr [24 x i8], ptr %i.aj, i64 %i.bg
  %i.bi = getelementptr [24 x i8], ptr %i.be, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !alias.scope !1415
  %i.bj = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.bk = xor i64 %.sroa.06.014.i, -2
  %i.bl = getelementptr [24 x i8], ptr %i.aj, i64 %i.bk
  %i.bm = getelementptr [24 x i8], ptr %i.be, i64 %.sroa.06.014.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !alias.scope !1415
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.o

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.bj, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod288 = trunc i64 %i.bd to i1
  call void @llvm.assume(i1 %lcmp.mod288)
  %i.bo = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.bp = getelementptr [24 x i8], ptr %i.aj, i64 %i.bo
  %i.bq = getelementptr [24 x i8], ptr %i.be, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !alias.scope !1415
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.n
  %i.br = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.br, label %.thread, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.097225
  br i1 %.not.i44, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path12split_at_mutCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, !prof !7

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @50, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25, !noalias !1418
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path12split_at_mutCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph104) ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 %i.bs, i64 noundef %i.bd, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.a, ptr noalias noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bt = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.bt, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %.not72 = icmp samesign ult i64 %3, %.sroa.16.097225
  br i1 %.not72, label %bb.s, label %bb.r, !prof !1414

bb.r:                                             ; preds = %.thread
  %i.bu = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.097225 ; 4 uses
  %i.bv = getelementptr i8, ptr %i.ae, i64 8
  %i.bw = getelementptr i8, ptr %i.ae, i64 16
  br label %bb.t

bb.s:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.19.0.i47 = phi ptr [ %i.bu, %bb.r ], [ %i.ck, %bb.u ] ; 2 uses
  %.sroa.11.0.i48 = phi i64 [ 0, %bb.r ], [ %i.cm, %bb.u ] ; 2 uses
  %.sroa.5.0.i49 = phi ptr [ %.sroa.0.0.ph104, %bb.r ], [ %i.cn, %bb.u ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i, %bb.r ], [ %.sroa.16.097225, %bb.u ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i50 ; 2 uses
  %i.by = icmp ult ptr %.sroa.5.0.i49, %i.bx
  br i1 %i.by, label %.lr.ph.i59, label %._crit_edge.i51

.lr.ph.i59:                                       ; preds = %bb.t
  %.val13.i60 = load ptr, ptr %i.bv, align 8, !alias.scope !1419, !noalias !1420, !nonnull !8, !noundef !8
  %.val14.i61 = load i64, ptr %i.bw, align 8, !alias.scope !1419, !noalias !1420, !noundef !8
  br label %.lr.ph.i59.a

._crit_edge.i51:                                  ; preds = %.lr.ph.i59.a, %bb.t
  %.sroa.19.1.lcssa.i52 = phi ptr [ %.sroa.19.0.i47, %bb.t ], [ %i.ce, %.lr.ph.i59.a ]
  %.sroa.11.1.lcssa.i53 = phi i64 [ %.sroa.11.0.i48, %bb.t ], [ %i.ch, %.lr.ph.i59.a ] ; 10 uses
  %.sroa.5.1.lcssa.i54 = phi ptr [ %.sroa.5.0.i49, %bb.t ], [ %i.ci, %.lr.ph.i59.a ] ; 2 uses
  %i.bz = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.097225
  br i1 %i.bz, label %bb.v, label %bb.u

.lr.ph.i59.a:                                     ; preds = %.lr.ph.i59.a, %.lr.ph.i59
  %.sroa.5.111.i60 = phi ptr [ %.sroa.5.0.i49, %.lr.ph.i59 ], [ %i.ci, %.lr.ph.i59.a ] ; 4 uses
  %.sroa.11.110.i61 = phi i64 [ %.sroa.11.0.i48, %.lr.ph.i59 ], [ %i.ch, %.lr.ph.i59.a ] ; 2 uses
  %.sroa.19.19.i62 = phi ptr [ %.sroa.19.0.i47, %.lr.ph.i59 ], [ %i.ce, %.lr.ph.i59.a ]
  %i.ca = getelementptr i8, ptr %.sroa.5.111.i60, i64 8
  %.val.i63 = load ptr, ptr %i.ca, align 8, !alias.scope !1419, !noalias !1420, !nonnull !8, !noundef !8
  %i.cb = getelementptr i8, ptr %.sroa.5.111.i60, i64 16
  %.val14.i66 = load i64, ptr %i.cb, align 8, !alias.scope !1419, !noalias !1420, !noundef !8
  %i.cc = call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val13.i60, i64 noundef %.val14.i61, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i63, i64 noundef %.val14.i66), !noalias !1421 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.cc, -2
  %i.cd = icmp sgt i8 %i.cc, -1
  %.sroa.0.0.i.i.not.i.i = or i1 %.not.i.i.i.i, %i.cd ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %.sroa.19.19.i62, i64 -24 ; 3 uses
  %.sroa.01.0.i.i67 = select i1 %.sroa.0.0.i.i.not.i.i, ptr %2, ptr %i.ce
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i67, i64 %.sroa.11.110.i61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i60, i64 24, i1 false), !alias.scope !1421, !noalias !1422
  %i.cg = zext i1 %.sroa.0.0.i.i.not.i.i to i64
  %i.ch = add i64 %.sroa.11.110.i61, %i.cg        ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i60, i64 24 ; 3 uses
  %i.cj = icmp ult ptr %i.ci, %i.bx
  br i1 %i.cj, label %.lr.ph.i59.a, label %._crit_edge.i51

bb.u:                                             ; preds = %._crit_edge.i51
  %i.ck = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i52, i64 -24
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i54, i64 24, i1 false), !alias.scope !1421, !noalias !1423
  %i.cm = add i64 %.sroa.11.1.lcssa.i53, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i54, i64 24
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge.i51
  %i.co = mul i64 %.sroa.11.1.lcssa.i53, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.co, i1 false), !alias.scope !1421
  %i.cp = sub i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i53 ; 6 uses
  %.not18.i55 = icmp eq i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i53
  %i.cq = getelementptr [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 4 uses
  br i1 %.not18.i55, label %.outer.thread, label %.lr.ph16.i56.preheader

.lr.ph16.i56.preheader:                           ; preds = %bb.v
  %.neg300 = add i64 %.sroa.11.1.lcssa.i53, 1
  %xtraiter295 = and i64 %i.cp, 1
  %i.cr = icmp eq i64 %.sroa.16.097225, %.neg300
  br i1 %i.cr, label %.lr.ph16.i56.epil.preheader, label %.lr.ph16.i56.preheader.new

.lr.ph16.i56.preheader.new:                       ; preds = %.lr.ph16.i56.preheader
  %unroll_iter298 = and i64 %i.cp, -2
  br label %.lr.ph16.i56

.lr.ph16.i56:                                     ; preds = %.lr.ph16.i56, %.lr.ph16.i56.preheader.new
  %.sroa.06.014.i57 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %i.cv, %.lr.ph16.i56 ] ; 5 uses
  %niter299 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %niter299.next.1, %.lr.ph16.i56 ]
  %i.cs = xor i64 %.sroa.06.014.i57, -1
  %i.ct = getelementptr [24 x i8], ptr %i.bu, i64 %i.cs
  %i.cu = getelementptr [24 x i8], ptr %i.cq, i64 %.sroa.06.014.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !alias.scope !1421
  %i.cv = add nuw i64 %.sroa.06.014.i57, 2        ; 2 uses
  %i.cw = xor i64 %.sroa.06.014.i57, -2
  %i.cx = getelementptr [24 x i8], ptr %i.bu, i64 %i.cw
  %i.cy = getelementptr [24 x i8], ptr %i.cq, i64 %.sroa.06.014.i57
  %i.cz = getelementptr i8, ptr %i.cy, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !alias.scope !1421
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.unr-lcssa, label %.lr.ph16.i56

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.unr-lcssa: ; preds = %.lr.ph16.i56
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %.lr.ph16.i56.epil.preheader

.lr.ph16.i56.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.unr-lcssa, %.lr.ph16.i56.preheader
  %.sroa.06.014.i57.epil.init = phi i64 [ 0, %.lr.ph16.i56.preheader ], [ %i.cv, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod297 = trunc i64 %i.cp to i1
  call void @llvm.assume(i1 %lcmp.mod297)
  %i.da = xor i64 %.sroa.06.014.i57.epil.init, -1
  %i.db = getelementptr [24 x i8], ptr %i.bu, i64 %i.da
  %i.dc = getelementptr [24 x i8], ptr %i.cq, i64 %.sroa.06.014.i57.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false), !alias.scope !1421
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.unr-lcssa, %.lr.ph16.i56.epil.preheader
  %i.dd = icmp ugt i64 %.sroa.11.1.lcssa.i53, %.sroa.16.097225
  br i1 %i.dd, label %bb.w, label %.outer, !prof !7

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.df = icmp ult i64 %i.cp, 33
  br i1 %i.df, label %.outer._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i53, i64 noundef %.sroa.16.097225, i64 noundef %.sroa.16.097225, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB1w_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore16list_with_offset0INtNtCscdodAO9FK5_5alloc3vec3VecINtNtCs4NRVxsYgnAr_4core6result6ResultNtB32_10ObjectMetaNtB32_5ErrorEEEB1y_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [3 x i8], align 1                 ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 0, ptr %i.j, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 0, ptr %i.i, align 1
  %i.k = call { ptr, i64 } @_RINvNtNtCseCDlJsl44RV_5tokio7runtime7context14with_schedulerINtNtCs4NRVxsYgnAr_4core6result6ResultuReENCINvNtNtNtB4_9scheduler12multi_thread6worker12with_currentBW_NCINvB1H_14block_in_placeNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB3a_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore16list_with_offset0INtNtCscdodAO9FK5_5alloc3vec3VecIBX_NtB4G_10ObjectMetaNtB4G_5ErrorEEE0E0EB3c_(ptr noalias noundef nonnull dereferenceable(1) %i.j, ptr noalias noundef nonnull dereferenceable(1) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.m, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsfxgMthLVlAZ_21influxdb3_clap_blocks, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = load i8, ptr %i.j, align 1, !range !15, !noundef !8
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1442
  %i.q = call { i64, ptr } @_RNvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46), !noalias !1442 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0        ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  store i64 %i.r, ptr %i.e, align 8, !noalias !1442
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.s, ptr %i.t, align 8, !noalias !1442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1442
  %i.u = load ptr, ptr %1, align 8, !alias.scope !1441, !noalias !1443, !nonnull !8, !align !13, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1441, !noalias !1443, !nonnull !8, !align !13, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1441, !noalias !1443, !nonnull !8, !align !13, !noundef !8
  %i.z = load ptr, ptr %i.u, align 8, !noalias !1442, !nonnull !8, !align !13, !noundef !8
  store ptr %i.z, ptr %i.d, align 8, !noalias !1442
  %i.aa = load ptr, ptr %i.w, align 8, !noalias !1442, !align !13, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !1442
  %i.ac = load ptr, ptr %i.y, align 8, !noalias !1442, !nonnull !8, !align !13, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !noalias !1442
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i8 0, ptr %i.ae, align 8, !noalias !1442
  invoke void @_RINvMNtNtCseCDlJsl44RV_5tokio7runtime6handleNtB3_6Handle8block_onNCNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB1c_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore16list_with_offset00EB1e_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47)
          to label %bb.f unwind label %bb.e, !noalias !1441

bb.e:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCseCDlJsl44RV_5tokio7runtime6handle6HandleECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(16) %i.e) #26
          to label %common.resume unwind label %bb.k, !noalias !1442

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1442
  %i.ag = icmp eq i64 %i.r, 0
  %i.ah = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !1444
  %i.ai = icmp eq i64 %i.ah, 1                    ; 2 uses
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ai, label %bb.h, label %_RNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB8_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore16list_with_offset0Ba_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t), !noalias !1442
  br label %_RNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB8_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore16list_with_offset0Ba_.exit

bb.i:                                             ; preds = %bb.f
  br i1 %i.ai, label %bb.j, label %_RNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB8_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore16list_with_offset0Ba_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCseCDlJsl44RV_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t), !noalias !1442
  br label %_RNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB8_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore16list_with_offset0Ba_.exit

bb.k:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1442
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNCNvXs15_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks12object_storeNtB8_31LocalFileSystemWithSortedListOpNtCs1LivM9IBWqb_12object_store11ObjectStore16list_with_offset0Ba_.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1442
  br label %bb.w

end_hunk_0
