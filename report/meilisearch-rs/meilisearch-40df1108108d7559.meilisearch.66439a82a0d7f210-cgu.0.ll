Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-40df1108108d7559.meilisearch.66439a82a0d7f210-cgu.0?download=true
inline.NumInlined: 140831
inline.NumDeleted: 44699
loop-unroll.NumCompletelyUnrolled: 243
loop-unroll.NumRuntimeUnrolled: 906
loop-unroll.NumUnrolled: 1163
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@"_ZN59_$LT$geojson..errors..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hcb1e688194855861E":bb.a
bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.k, align 8
  %i.ap = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5720, i64 noundef 19, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @342)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.x

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.j, align 8
  %i.ar = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5721, i64 noundef 13, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5521)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.i, align 8
  %i.at = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5722, i64 noundef 30, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @284)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.x

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.h, align 8
  %i.av = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5723, i64 noundef 27, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @284)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.x

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.g, align 8
  %i.ax = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5724, i64 noundef 28, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @284)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

bb.q:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.az, ptr %i.f, align 8
  %i.ba = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5725, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5558, i64 noundef 8, ptr noundef nonnull align 1 %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5562, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5726, i64 noundef 6, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @342)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.e, align 8
  %i.bc = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5727, i64 noundef 19, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @284)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.d, align 8
  %i.be = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5728, i64 noundef 16, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @342)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.x

bb.t:                                             ; preds = %bb.a
  %i.bf = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5729, i64 noundef 16)
  br label %bb.x

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.c, align 8
  %i.bh = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5730, i64 noundef 18, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @342)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.x

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.b, align 8
  %i.bj = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5731, i64 noundef 19, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @284)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.a, align 8
  %i.bl = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5732, i64 noundef 16, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5239)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.y, %bb.c ], [ %i.aa, %bb.d ], [ %i.ac, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.g ], [ %i.ah, %bb.h ], [ %i.aj, %bb.i ], [ %i.am, %bb.j ], [ %i.an, %bb.k ], [ %i.ap, %bb.l ], [ %i.ar, %bb.m ], [ %i.at, %bb.n ], [ %i.av, %bb.o ], [ %i.ax, %bb.p ], [ %i.ba, %bb.q ], [ %i.bc, %bb.r ], [ %i.be, %bb.s ], [ %i.bf, %bb.t ], [ %i.bh, %bb.u ], [ %i.bj, %bb.v ], [ %i.bl, %bb.w ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN59_$LT$toml..de..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h981f486ad5d0a150E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h381febbf2dfea38aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5499, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @61, i64 noundef 7, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5562, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1264, i64 noundef 5, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5742, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5745, i64 noundef 4, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5743, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4631, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5744)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$6append17h77c0ffa6a92e1661E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 5 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !12 ; 5 uses
  %i.f = icmp ult i64 %i.e, 1152921504606846976
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ult i64 %i.b, %i.e
  br i1 %i.g, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !342226, !noalias !342229
  %.pre8 = load i64, ptr %0, align 8, !range !64, !alias.scope !342231, !noalias !342226
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342236)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342239)
  %i.i = load <2 x i64>, ptr %1, align 8, !alias.scope !342241, !noalias !12
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %1, align 8, !alias.scope !342243, !noalias !342236
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.h, align 8, !alias.scope !342244, !noalias !342239
  %i.j = load <2 x i64>, ptr %0, align 8, !alias.scope !342246, !noalias !12
  store <2 x i64> %i.i, ptr %0, align 8, !alias.scope !342246, !noalias !12
  store <2 x i64> %i.j, ptr %1, align 8, !alias.scope !342241, !noalias !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342249)
  store i64 %i.e, ptr %i.a, align 8, !alias.scope !342247, !noalias !342249
  store i64 %i.b, ptr %i.d, align 8, !alias.scope !342249, !noalias !342247
  %i.k = inttoptr i64 %.sroa.0.0.copyload.i.i.i.1.i.i to ptr
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.l = phi i64 [ %.pre8, %._crit_edge ], [ %.sroa.02.0.copyload.i.i.i.i.i, %bb.b ]
  %i.m = phi i64 [ %i.e, %._crit_edge ], [ %i.b, %bb.b ] ; 4 uses
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.k, %bb.b ]
  %i.o = phi i64 [ %i.b, %._crit_edge ], [ %i.e, %bb.b ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342251)
  %i.p = sub nsw i64 %i.l, %i.o
  %i.q = icmp ugt i64 %i.m, %i.p
  br i1 %i.q, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6append17hd1f704d30db69b69E.exit", !prof !10

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h9e458b4d76da882dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, i64 noundef %i.m, i64 noundef 8, i64 noundef 8), !noalias !342226
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !342252, !noalias !342226
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6append17hd1f704d30db69b69E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6append17hd1f704d30db69b69E.exit": ; preds = %bb.c, %bb.d
  %i.r = phi i64 [ %i.o, %bb.c ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !342252, !noalias !342226, !nonnull !12, !noundef !12 ; 13 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  %i.v = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull readonly align 8 %i.n, i64 %i.v, i1 false), !noalias !342253
  %i.w = add nuw nsw i64 %i.r, %i.m               ; 16 uses
  store i64 %i.w, ptr %i.a, align 8, !alias.scope !342252, !noalias !342226
  store i64 0, ptr %i.d, align 8, !alias.scope !342226, !noalias !342229
  %i.x = icmp samesign ult i64 %i.w, 1152921504606846976
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp eq i64 %i.o, %i.w
  br i1 %i.y, label %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$12rebuild_tail17hb652ddb6d071af83E.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6append17hd1f704d30db69b69E.exit"
  %i.z = sub nsw i64 %i.w, %i.o                   ; 3 uses
  %i.aa = icmp ult i64 %i.o, %i.z
  br i1 %i.aa, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp samesign ult i64 %i.w, 2049
  %i.ac = shl nuw nsw i64 %i.w, 1                 ; 2 uses
  br i1 %i.ab, label %.split.i, label %bb.g

.split.i:                                         ; preds = %bb.f
  %i.ad = tail call range(i64 4, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 1152921504606846976) %i.o, i1 false)
  %i.ae = sub nsw i64 63, %i.ad
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = mul i64 %i.z, %i.af
  %i.ah = icmp ult i64 %i.ac, %i.ag
  br i1 %i.ah, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = mul nuw i64 %i.z, 11
  %i.aj = icmp ult i64 %i.ac, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.i
  %i.ak = icmp samesign ult i64 %i.o, %i.w
  br i1 %i.ak, label %.lr.ph.i10.preheader.i, label %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$12rebuild_tail17hb652ddb6d071af83E.exit"

bb.i:                                             ; preds = %bb.g, %.split.i, %bb.e
  %i.al = lshr i64 %i.w, 1                        ; 2 uses
  %.not3.i.i = icmp eq i64 %i.al, 0
  br i1 %.not3.i.i, label %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$12rebuild_tail17hb652ddb6d071af83E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.am = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, 1152921504606846976) %i.w, i64 2) ; 2 uses
  %i.an = add nsw i64 %i.w, -2
  br label %bb.j

bb.j:                                             ; preds = %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$15sift_down_range17h4470395438847662E.exit.i.i", %.lr.ph.i.i
  %.sroa.0.04.i.i = phi i64 [ %i.al, %.lr.ph.i.i ], [ %i.ao, %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$15sift_down_range17h4470395438847662E.exit.i.i" ]
  %i.ao = add nsw i64 %.sroa.0.04.i.i, -1         ; 7 uses
  %i.ap = icmp ult i64 %i.ao, %i.w
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !12 ; 3 uses
  %.sroa.06.0.in23.i.i.i = shl nuw nsw i64 %i.ao, 1 ; 4 uses
  %.sroa.06.024.i.i.i = or disjoint i64 %.sroa.06.0.in23.i.i.i, 1 ; 2 uses
  %.not.not25.i.i.i = icmp samesign ult i64 %.sroa.06.0.in23.i.i.i, %i.am
  br i1 %.not.not25.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.m, %bb.j
  %.sroa.06.0.in.in.lcssa.i.i.i = phi i64 [ %i.ao, %bb.j ], [ %i.bg, %bb.m ] ; 3 uses
  %.sroa.06.0.in.lcssa.i.i.i = phi i64 [ %.sroa.06.0.in23.i.i.i, %bb.j ], [ %.sroa.06.0.in.i.i.i, %bb.m ]
  %.sroa.06.0.lcssa.i.i.i = phi i64 [ %.sroa.06.024.i.i.i, %bb.j ], [ %.sroa.06.0.i.i.i, %bb.m ] ; 3 uses
  %i.as = icmp eq i64 %.sroa.06.0.in.lcssa.i.i.i, %i.an
  br i1 %i.as, label %bb.k, label %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$15sift_down_range17h4470395438847662E.exit.i.i"

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.at = icmp ult i64 %.sroa.06.0.lcssa.i.i.i, %i.w
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.06.0.lcssa.i.i.i
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !342254, !noalias !342257, !noundef !12 ; 2 uses
  %i.aw = icmp ult i64 %i.ar, %i.av
  br i1 %i.aw, label %bb.l, label %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$15sift_down_range17h4470395438847662E.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.06.0.in.in.lcssa.i.i.i
  store i64 %i.av, ptr %i.ax, align 8
  br label %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$15sift_down_range17h4470395438847662E.exit.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.m
  %.sroa.06.028.i.i.i = phi i64 [ %.sroa.06.0.i.i.i, %bb.m ], [ %.sroa.06.024.i.i.i, %bb.j ] ; 2 uses
  %.sroa.06.0.in27.i.i.i = phi i64 [ %.sroa.06.0.in.i.i.i, %bb.m ], [ %.sroa.06.0.in23.i.i.i, %bb.j ]
  %.sroa.06.0.in.in26.i.i.i = phi i64 [ %i.bg, %bb.m ], [ %i.ao, %bb.j ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.06.028.i.i.i
  %i.az = add nuw nsw i64 %.sroa.06.0.in27.i.i.i, 2 ; 2 uses
  %i.ba = icmp samesign ult i64 %i.az, %i.w
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.az
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342262)
  %i.bc = load i64, ptr %i.ay, align 8, !alias.scope !342259, !noalias !342262, !noundef !12
  %i.bd = load i64, ptr %i.bb, align 8, !alias.scope !342262, !noalias !342259, !noundef !12
  %i.be = icmp ule i64 %i.bc, %i.bd
  %i.bf = zext i1 %i.be to i64
  %i.bg = add nuw nsw i64 %.sroa.06.028.i.i.i, %i.bf ; 5 uses
  %i.bh = icmp ult i64 %i.bg, %i.w
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bg
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !342264, !noalias !342267, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.ar, %i.bj
  br i1 %.not.i.i.i, label %bb.m, label %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$15sift_down_range17h4470395438847662E.exit.i.i"

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.06.0.in.in26.i.i.i
  store i64 %i.bj, ptr %i.bk, align 8
  %.sroa.06.0.in.i.i.i = shl nuw nsw i64 %i.bg, 1 ; 4 uses
  %.sroa.06.0.i.i.i = or disjoint i64 %.sroa.06.0.in.i.i.i, 1 ; 2 uses
  %.not.not.i.i.i = icmp samesign ult i64 %.sroa.06.0.in.i.i.i, %i.am
  br i1 %.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$15sift_down_range17h4470395438847662E.exit.i.i": ; preds = %.lr.ph.i.i.i, %bb.l, %bb.k, %._crit_edge.i.i.i
  %.sroa.06.0.in.in26.lcssa.sink.i.i.i = phi i64 [ %.sroa.06.0.in.in.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.06.0.lcssa.i.i.i, %bb.l ], [ %.sroa.06.0.in.in.lcssa.i.i.i, %bb.k ], [ %.sroa.06.0.in.in26.i.i.i, %.lr.ph.i.i.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.06.0.in.in26.lcssa.sink.i.i.i
  store i64 %i.ar, ptr %i.bl, align 8, !noalias !12
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$12rebuild_tail17hb652ddb6d071af83E.exit", label %bb.j

.lr.ph.i10.preheader.i:                           ; preds = %bb.h, %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$7sift_up17hd62073ee8798b753E.exit.loopexit.i"
  %.sroa.01.04.i = phi i64 [ %i.bm, %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$7sift_up17hd62073ee8798b753E.exit.loopexit.i" ], [ %i.o, %bb.h ] ; 3 uses
  %i.bm = add nuw nsw i64 %.sroa.01.04.i, 1       ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.01.04.i
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !12 ; 2 uses
  br label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %bb.n, %.lr.ph.i10.preheader.i
  %storemerge11.i.i = phi i64 [ %i.bq, %bb.n ], [ %.sroa.01.04.i, %.lr.ph.i10.preheader.i ] ; 3 uses
  %i.bp = add nsw i64 %storemerge11.i.i, -1
  %i.bq = lshr i64 %i.bp, 1                       ; 4 uses
  %i.br = icmp samesign ult i64 %i.bq, %i.w
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bq
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !342269, !noalias !342272, !noundef !12 ; 2 uses
  %.not9.i.i = icmp ugt i64 %i.bo, %i.bt
  br i1 %.not9.i.i, label %bb.n, label %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$7sift_up17hd62073ee8798b753E.exit.loopexit.i"

bb.n:                                             ; preds = %.lr.ph.i10.i
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %storemerge11.i.i
  store i64 %i.bt, ptr %i.bu, align 8
  %.not.i11.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i11.i, label %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$7sift_up17hd62073ee8798b753E.exit.loopexit.i", label %.lr.ph.i10.i

"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$7sift_up17hd62073ee8798b753E.exit.loopexit.i": ; preds = %bb.n, %.lr.ph.i10.i
  %storemerge.lcssa.i.ph.i = phi i64 [ 0, %bb.n ], [ %storemerge11.i.i, %.lr.ph.i10.i ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %storemerge.lcssa.i.ph.i
  store i64 %i.bo, ptr %i.bv, align 8, !noalias !342274
  %exitcond.not.i = icmp eq i64 %i.bm, %i.w
  br i1 %exitcond.not.i, label %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$12rebuild_tail17hb652ddb6d071af83E.exit", label %.lr.ph.i10.preheader.i

"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$12rebuild_tail17hb652ddb6d071af83E.exit": ; preds = %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$7sift_up17hd62073ee8798b753E.exit.loopexit.i", %"_ZN5alloc11collections11binary_heap23BinaryHeap$LT$T$C$A$GT$15sift_down_range17h4470395438847662E.exit.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6append17hd1f704d30db69b69E.exit", %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3fix178_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Owned$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$29fix_right_border_of_plentiful17h3c6899ca893ca220E"(ptr nofree captures(none) %.0.val, i64 %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = icmp eq i64 %.8.val, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17hb3d32091d6746102E.exit.i, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h81c77530d6dea502E.exit", %.split
  ret void

.lr.ph:                                           ; preds = %.split, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h81c77530d6dea502E.exit"
  %.sroa.02.010 = phi i64 [ %i.j, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h81c77530d6dea502E.exit" ], [ %.8.val, %.split ]
  %.sroa.03.09 = phi ptr [ %i.m, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h81c77530d6dea502E.exit" ], [ %.0.val, %.split ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.03.09, i64 450
  %i.d = load i16, ptr %i.c, align 2, !noundef !12 ; 3 uses
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.a, label %bb.b, !prof !10

bb.a:                                             ; preds = %.lr.ph
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5770, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5772) #85
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.e = zext nneg i16 %i.d to i64
  %i.f = add nsw i64 %i.e, -1                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.03.09, i64 456
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !342279, !nonnull !12, !noundef !12 ; 5 uses
  %i.j = add i64 %.sroa.02.010, -1                ; 3 uses
  %i.k = icmp ult i16 %i.d, 12
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !342285, !nonnull !12, !noundef !12 ; 19 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 450 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !noundef !12 ; 3 uses
  %i.p = icmp ult i16 %i.o, 5
  br i1 %i.p, label %bb.c, label %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h81c77530d6dea502E.exit"

"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h81c77530d6dea502E.exit": ; preds = %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h81c77530d6dea502E.exit.loopexit", %bb.b
  %i.q = icmp eq i64 %i.j, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %narrow = sub nuw nsw i16 5, %i.o               ; 2 uses
  %i.r = zext nneg i16 %narrow to i64             ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 450 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !noalias !342288, !noundef !12 ; 2 uses
  %i.u = zext nneg i16 %i.o to i64                ; 3 uses
  %.not.i = icmp ugt i16 %narrow, %i.t
  br i1 %.not.i, label %bb.d, label %_ZN5alloc11collections5btree4node13move_to_slice17hb3d32091d6746102E.exit.i, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5795, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5796) #85, !noalias !342288
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17hb3d32091d6746102E.exit.i: ; preds = %bb.c
  %i.v = zext i16 %i.t to i64                     ; 2 uses
  %i.w = sub nuw nsw i64 %i.v, %i.r               ; 4 uses
  %i.x = trunc nuw i64 %i.w to i16
  store i16 %i.x, ptr %i.s, align 2, !noalias !342288
  store i16 5, ptr %i.n, align 2, !noalias !342288
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 184 ; 4 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.r
  %i.aa = mul nuw nsw i64 %i.u, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.aa, i1 false), !alias.scope !342291, !noalias !342288
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.r
  %i.ac = shl nuw nsw i64 %i.u, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.m, i64 %i.ac, i1 false), !alias.scope !342294, !noalias !342288
  %i.ad = add nuw nsw i64 %i.w, 1                 ; 4 uses
  %i.ae = sub nuw nsw i64 %i.v, %i.ad             ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 184 ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ad
  %i.ah = mul nuw nsw i64 %i.ae, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull readonly align 8 %i.ag, i64 %i.ah, i1 false), !alias.scope !342297, !noalias !342288
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.ad
  %i.aj = shl nuw nsw i64 %i.ae, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull readonly align 8 %i.ai, i64 %i.aj, i1 false), !alias.scope !342301, !noalias !342288
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.w
end_hunk_0
begin_hunk_1_@"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hda7a3cf2c7a1b268E":bb.a
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h697e99393a156c0eE"(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hbcf4f42e82f21ceaE.exit
    i64 0, label %bb.e
  ], !prof !142915

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.l, i64 noundef %i.m) #85
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1535, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10816) #85
  unreachable

_ZN8smallvec10infallible17hbcf4f42e82f21ceaE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1535, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10817) #85
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hdf38041d1d733673E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !516582, !noalias !516585, !noundef !12 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !516582, !noalias !516585
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h1ccf82655794193bE"(ptr noalias noundef align 8 dereferenceable(104) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hbcf4f42e82f21ceaE.exit
    i64 0, label %bb.e
  ], !prof !142915

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #85
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1535, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10816) #85
  unreachable

_ZN8smallvec10infallible17hbcf4f42e82f21ceaE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1535, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10817) #85
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hee6f36afa9a40e5bE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !516587, !noalias !516590, !noundef !12 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !516587, !noalias !516590
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h7cec077212b4c6f7E"(ptr noalias noundef align 8 dereferenceable(104) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -9223372036854775807, label %_ZN8smallvec10infallible17hbcf4f42e82f21ceaE.exit
    i64 0, label %bb.e
  ], !prof !142915

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.m, i64 noundef %i.n) #85
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1535, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10816) #85
  unreachable

_ZN8smallvec10infallible17hbcf4f42e82f21ceaE.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1535, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10817) #85
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h13e339ee37629652E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !516592, !noalias !516595, !nonnull !12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10818, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10819) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 3                        ; 5 uses
  %i.k = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.k, label %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54.thread, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !516597
  br i1 %i.l, label %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit, label %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54.thread

_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit
  %i.m = shl nuw i64 %.sink.i, 3                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.n, label %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54.thread, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !516600
  br i1 %i.o, label %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54, label %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #79 ; 3 uses
  %.not73 = icmp eq ptr %i.p, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54.thread, label %bb.l

_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #79 ; 2 uses
  %.not72 = icmp eq ptr %i.q, null
  br i1 %.not72, label %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54.thread

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %0, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.s = shl i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.s, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.t = shl nuw i64 %.sink.i, 3                  ; 2 uses
  %i.u = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.u, label %bb.o, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !516603
  br i1 %i.v, label %_ZN8smallvec10deallocate17h95f5f18440424242E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516606
  store i64 0, ptr %i.a, align 8, !noalias !516606
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5361, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10815) #85, !noalias !516606
  unreachable

_ZN8smallvec10deallocate17h95f5f18440424242E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #79
  br label %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54.thread

_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h95f5f18440424242E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h95f5f18440424242E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h95f5f18440424242E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17hab4c0e995d83dbceE.exit54 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h1ccf82655794193bE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 8 uses
  %i.d = icmp ult i64 %i.c, 4                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 3
  %i.f = load ptr, ptr %0, align 8, !alias.scope !516609, !noalias !516612, !nonnull !12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10818, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10819) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 4
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 5                        ; 5 uses
  %i.k = icmp ugt i64 %1, 576460752303423487
  br i1 %i.k, label %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55.thread, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !516614
  br i1 %i.l, label %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit, label %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55.thread

_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit
  %i.m = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.n, label %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55.thread, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !516617
  br i1 %i.o, label %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55, label %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #79 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #79 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.c, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %0, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.s = shl i64 %.val, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.s, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.t = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.u = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.u, label %bb.o, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !516620
  br i1 %i.v, label %_ZN8smallvec10deallocate17hb3a5ecbdac78ecbdE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516623
  store i64 0, ptr %i.a, align 8, !noalias !516623
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5361, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10815) #85, !noalias !516623
  unreachable

_ZN8smallvec10deallocate17hb3a5ecbdac78ecbdE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #79
  br label %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55.thread

_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17hb3a5ecbdac78ecbdE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17hb3a5ecbdac78ecbdE.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17hb3a5ecbdac78ecbdE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17ha2c811a59e0f716cE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h4c1c3d517c40d147E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 8 uses
  %i.d = icmp ult i64 %i.c, 6                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 5
  %i.f = load ptr, ptr %0, align 8, !alias.scope !516626, !noalias !516629, !nonnull !12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 5) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10818, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10819) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 6
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 4                        ; 5 uses
  %i.k = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.k, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !516631
  br i1 %i.l, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread

_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit
  %i.m = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.n, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !516634
  br i1 %i.o, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #79 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #79 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %0, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.s = shl i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.s, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.t = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.u = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.u, label %bb.o, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !516637
  br i1 %i.v, label %_ZN8smallvec10deallocate17he2514fb978376ec3E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516640
  store i64 0, ptr %i.a, align 8, !noalias !516640
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5361, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10815) #85, !noalias !516640
  unreachable

_ZN8smallvec10deallocate17he2514fb978376ec3E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #79
  br label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread

_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17he2514fb978376ec3E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17he2514fb978376ec3E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17he2514fb978376ec3E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h5892f168484c37deE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(648) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 6 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16
  %i.f = load ptr, ptr %0, align 8, !alias.scope !516643, !noalias !516646, !nonnull !12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10818, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10819) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 17
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 40) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 0         ; 7 uses
  %i.l = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.l, label %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55.thread, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.m = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.k, i64 noundef 8), !noalias !516648
  br i1 %i.m, label %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit, label %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55.thread

_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 40) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 0         ; 4 uses
  %i.p = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.p, label %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55.thread, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.q = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.o, i64 noundef 8), !noalias !516651
  br i1 %i.q, label %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55, label %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.r = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #79 ; 3 uses
  %.not71 = icmp eq ptr %i.r, null
  br i1 %.not71, label %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55: ; preds = %bb.i
  %i.s = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.o, i64 noundef 8, i64 noundef %i.k) #79 ; 2 uses
  %.not70 = icmp eq ptr %i.s, null
  br i1 %.not70, label %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.r, %bb.l ], [ %i.s, %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.t = mul nuw nsw i64 %i.c, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %0, i64 %i.t, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.u = mul i64 %.val, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.u, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.v = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 40) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 0         ; 3 uses
  %i.x = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.x, label %bb.o, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.y = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.w, i64 noundef 8), !noalias !516654
  br i1 %i.y, label %_ZN8smallvec10deallocate17h68cb3d064991afb3E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516657
  store i64 0, ptr %i.a, align 8, !noalias !516657
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.w, ptr %i.z, align 8, !noalias !516657
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5361, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10815) #85, !noalias !516657
  unreachable

_ZN8smallvec10deallocate17h68cb3d064991afb3E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.w, i64 noundef 8) #79
  br label %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55.thread

_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h68cb3d064991afb3E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h68cb3d064991afb3E.exit ], [ %i.k, %bb.j ], [ undef, %bb.e ], [ %i.k, %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55 ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ %i.k, %bb.f ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h68cb3d064991afb3E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h6cefbc29661f4161E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.aa = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.ab = insertvalue { i64, i64 } %i.aa, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h697e99393a156c0eE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %0, align 8, !noundef !12  ; 6 uses
  %i.c = icmp ult i64 %i.b, 6                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !516660, !noalias !516663, !nonnull !12 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 5) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !12 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10818, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10819) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 6
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.b, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.i = shl nuw i64 %1, 3                        ; 5 uses
  %i.j = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.j, label %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55.thread, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.k = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.i, i64 noundef 8), !noalias !516665
  br i1 %i.k, label %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit, label %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55.thread

_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit: ; preds = %bb.g
  br i1 %i.c, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit
  %i.l = shl nuw i64 %.sink.i, 3                  ; 2 uses
  %i.m = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.m, label %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55.thread, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.n = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.l, i64 noundef 8), !noalias !516668
  br i1 %i.n, label %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55, label %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.o = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #79 ; 3 uses
  %.not73 = icmp eq ptr %i.o, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55: ; preds = %bb.i
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.i) #79 ; 2 uses
  %.not72 = icmp eq ptr %i.p, null
  br i1 %.not72, label %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.o, %bb.l ], [ %i.p, %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55 ]
  store ptr %.sroa.021.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.q = shl i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.e, i64 %i.q, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.r = shl i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.s = shl nuw i64 %.sink.i, 3                  ; 2 uses
  %i.t = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.t, label %bb.o, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.u = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.s, i64 noundef 8), !noalias !516671
  br i1 %i.u, label %_ZN8smallvec10deallocate17h3b3032a06c6d9131E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516674
  store i64 0, ptr %i.a, align 8, !noalias !516674
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5361, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10815) #85, !noalias !516674
  unreachable

_ZN8smallvec10deallocate17h3b3032a06c6d9131E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #79
  br label %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55.thread

_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h3b3032a06c6d9131E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h3b3032a06c6d9131E.exit ], [ %i.i, %bb.j ], [ undef, %bb.e ], [ %i.i, %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h3b3032a06c6d9131E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17hcbf17bfe2feb7d75E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.v = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.w = insertvalue { i64, i64 } %i.v, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.w
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h75be73e640b9449bE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 8 uses
  %i.d = icmp ult i64 %i.c, 4                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 3
  %i.f = load ptr, ptr %0, align 8, !alias.scope !516677, !noalias !516680, !nonnull !12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10818, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10819) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 4
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 4                        ; 5 uses
  %i.k = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.k, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !516682
  br i1 %i.l, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread

_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit
  %i.m = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.n, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !516685
  br i1 %i.o, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #79 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #79 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %0, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.s = shl i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.s, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.t = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.u = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.u, label %bb.o, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !516688
  br i1 %i.v, label %_ZN8smallvec10deallocate17he2514fb978376ec3E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516691
  store i64 0, ptr %i.a, align 8, !noalias !516691
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5361, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10815) #85, !noalias !516691
  unreachable

_ZN8smallvec10deallocate17he2514fb978376ec3E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #79
  br label %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread

_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17he2514fb978376ec3E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17he2514fb978376ec3E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17he2514fb978376ec3E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h2c54e3d09fb22c3bE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h7cec077212b4c6f7E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 8 uses
  %i.d = icmp ult i64 %i.c, 4                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 3
  %i.f = load ptr, ptr %0, align 8, !alias.scope !516694, !noalias !516697, !nonnull !12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 3) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10818, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10819) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 4
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 5                        ; 5 uses
  %i.k = icmp ugt i64 %1, 576460752303423487
  br i1 %i.k, label %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55.thread, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !516699
  br i1 %i.l, label %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit, label %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55.thread

_ZN8smallvec12layout_array17hbf0607eea159150dE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit
  %i.m = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.n, label %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55.thread, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !516702
  br i1 %i.o, label %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55, label %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #79 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #79 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.c, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %0, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.s = shl i64 %.val, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.s, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.t = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.u = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.u, label %bb.o, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !516705
  br i1 %i.v, label %_ZN8smallvec10deallocate17h39c929fc8cf6818aE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516708
  store i64 0, ptr %i.a, align 8, !noalias !516708
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5361, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10815) #85, !noalias !516708
  unreachable

_ZN8smallvec10deallocate17h39c929fc8cf6818aE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #79
  br label %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55.thread

_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h39c929fc8cf6818aE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h39c929fc8cf6818aE.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h39c929fc8cf6818aE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17hbf0607eea159150dE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h995dc6cee74d0fc8E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !12  ; 4 uses
  %i.c = icmp ult i64 %i.b, 6                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !516711, !noalias !516714, !nonnull !12 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 5) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !12 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10818, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10819) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 6
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.b, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 24) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 0         ; 7 uses
  %i.k = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.k, label %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55.thread, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !516716
  br i1 %i.l, label %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit, label %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55.thread

_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit: ; preds = %bb.g
  br i1 %i.c, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit
  %i.m = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 24) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0         ; 4 uses
  %i.o = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.o, label %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55.thread, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.p = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.n, i64 noundef 8), !noalias !516719
  br i1 %i.p, label %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55, label %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #79 ; 3 uses
  %.not70 = icmp eq ptr %i.q, null
  br i1 %.not70, label %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55: ; preds = %bb.i
  %i.r = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #79 ; 2 uses
  %.not69 = icmp eq ptr %i.r, null
  br i1 %.not69, label %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.q, %bb.l ], [ %i.r, %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55 ]
  store ptr %.sroa.021.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.s = mul i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.e, i64 %i.s, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.t = mul i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.t, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.u = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 24) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 0         ; 3 uses
  %i.w = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.w, label %bb.o, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.x = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.v, i64 noundef 8), !noalias !516722
  br i1 %i.x, label %_ZN8smallvec10deallocate17h1a391ddf6fa8518cE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516725
  store i64 0, ptr %i.a, align 8, !noalias !516725
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.v, ptr %i.y, align 8, !noalias !516725
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5361, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10815) #85, !noalias !516725
  unreachable

_ZN8smallvec10deallocate17h1a391ddf6fa8518cE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.v, i64 noundef 8) #79
  br label %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55.thread

_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h1a391ddf6fa8518cE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h1a391ddf6fa8518cE.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55 ], [ %i.j, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ %i.j, %bb.f ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h1a391ddf6fa8518cE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17hc61b3318677fcca9E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.z = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.aa = insertvalue { i64, i64 } %i.z, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h9d5ad12380f08c56E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 8 uses
  %i.d = icmp ult i64 %i.c, 6                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 5
  %i.f = load ptr, ptr %0, align 8, !alias.scope !516728, !noalias !516731, !nonnull !12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 5) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10818, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10819) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 6
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 5                        ; 5 uses
  %i.k = icmp ugt i64 %1, 576460752303423487
  br i1 %i.k, label %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55.thread, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !516733
  br i1 %i.l, label %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit, label %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55.thread

_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit
  %i.m = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.n, label %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55.thread, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !516736
  br i1 %i.o, label %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55, label %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #79 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #79 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.c, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %0, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.s = shl i64 %.val, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.s, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.t = shl nuw i64 %.sink.i, 5                  ; 2 uses
  %i.u = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.u, label %bb.o, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !516739
  br i1 %i.v, label %_ZN8smallvec10deallocate17h9f39a4e3a258b437E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516742
  store i64 0, ptr %i.a, align 8, !noalias !516742
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5361, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10815) #85, !noalias !516742
  unreachable

_ZN8smallvec10deallocate17h9f39a4e3a258b437E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #79
  br label %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55.thread

_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h9f39a4e3a258b437E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h9f39a4e3a258b437E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h9f39a4e3a258b437E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h7f9123de2d508d1fE.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17ha2cbd8e2f69b53c9E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 8 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8
  %i.f = load ptr, ptr %0, align 8, !alias.scope !516745, !noalias !516748, !nonnull !12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10818, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10819) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 9
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw i64 %1, 4                        ; 5 uses
  %i.k = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.k, label %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55.thread, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.j, i64 noundef 8), !noalias !516750
  br i1 %i.l, label %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit, label %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55.thread

_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit
  %i.m = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.n = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.n, label %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55.thread, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.m, i64 noundef 8), !noalias !516753
  br i1 %i.o, label %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55, label %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #79 ; 3 uses
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55: ; preds = %bb.i
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.j) #79 ; 2 uses
  %.not73 = icmp eq ptr %i.q, null
  br i1 %.not73, label %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.p, %bb.l ], [ %i.q, %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %0, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.s = shl i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.s, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.t = shl nuw i64 %.sink.i, 4                  ; 2 uses
  %i.u = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.u, label %bb.o, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.v = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.t, i64 noundef 8), !noalias !516756
  br i1 %i.v, label %_ZN8smallvec10deallocate17h49612f1c7f9cb453E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516759
  store i64 0, ptr %i.a, align 8, !noalias !516759
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5361, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10815) #85, !noalias !516759
  unreachable

_ZN8smallvec10deallocate17h49612f1c7f9cb453E.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.t, i64 noundef 8) #79
  br label %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55.thread

_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h49612f1c7f9cb453E.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h49612f1c7f9cb453E.exit ], [ %i.j, %bb.j ], [ undef, %bb.e ], [ %i.j, %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55 ], [ undef, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ undef, %bb.f ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h49612f1c7f9cb453E.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h2d9f3640bd116589E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17hf2be45021d8a6d92E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(456) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 6 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8
  %i.f = load ptr, ptr %0, align 8, !alias.scope !516762, !noalias !516765, !nonnull !12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10818, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10819) #85
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 9
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not47 = icmp eq i64 %i.c, %1
  br i1 %.not47, label %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55.thread, label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 56) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 0         ; 7 uses
  %i.l = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.l, label %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55.thread, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.m = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.k, i64 noundef 8), !noalias !516767
  br i1 %i.m, label %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit, label %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55.thread

_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit: ; preds = %bb.g
  br i1 %i.d, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 56) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 0         ; 4 uses
  %i.p = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.p, label %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55.thread, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.q = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.o, i64 noundef 8), !noalias !516770
  br i1 %i.q, label %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55, label %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55.thread

bb.j:                                             ; preds = %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.r = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #79 ; 3 uses
  %.not71 = icmp eq ptr %i.r, null
  br i1 %.not71, label %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55.thread, label %bb.l

_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55: ; preds = %bb.i
  %i.s = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.o, i64 noundef 8, i64 noundef %i.k) #79 ; 2 uses
  %.not70 = icmp eq ptr %i.s, null
  br i1 %.not70, label %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55.thread, label %bb.k

bb.k:                                             ; preds = %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55, %bb.l
  %.sroa.021.0 = phi ptr [ %i.r, %bb.l ], [ %i.s, %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55 ]
  store ptr %.sroa.021.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55.thread

bb.l:                                             ; preds = %bb.j
  %i.t = mul nuw nsw i64 %i.c, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %0, i64 %i.t, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.e
  %i.u = mul i64 %.val, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.u, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.v = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sink.i, i64 56) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 0         ; 3 uses
  %i.x = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.x, label %bb.o, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.y = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.w, i64 noundef 8), !noalias !516773
  br i1 %i.y, label %_ZN8smallvec10deallocate17h628c9ae3645911ddE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516776
  store i64 0, ptr %i.a, align 8, !noalias !516776
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.w, ptr %i.z, align 8, !noalias !516776
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5334, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5361, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10815) #85, !noalias !516776
  unreachable

_ZN8smallvec10deallocate17h628c9ae3645911ddE.exit: ; preds = %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.w, i64 noundef 8) #79
  br label %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55.thread

_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55.thread: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN8smallvec10deallocate17h628c9ae3645911ddE.exit, %bb.k, %bb.d, %bb.j, %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55
  %.sroa.7.1 = phi i64 [ undef, %_ZN8smallvec10deallocate17h628c9ae3645911ddE.exit ], [ %i.k, %bb.j ], [ undef, %bb.e ], [ %i.k, %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55 ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ undef, %bb.k ], [ %i.k, %bb.f ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %.sroa.0.1 = phi i64 [ -9223372036854775807, %_ZN8smallvec10deallocate17h628c9ae3645911ddE.exit ], [ 8, %bb.j ], [ -9223372036854775807, %bb.e ], [ 8, %_ZN8smallvec12layout_array17h9c2a8702f2db1409E.exit55 ], [ 0, %bb.g ], [ -9223372036854775807, %bb.d ], [ -9223372036854775807, %bb.k ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.aa = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.ab = insertvalue { i64, i64 } %i.aa, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 16, -9223372036854775808) i64 @_ZN8thin_vec10alloc_size17h713df6a9d55c1647E(i64 noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %.split, label %.split7

.split:                                           ; preds = %bb.a
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #85
  unreachable

.split7:                                          ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %0, 576460752303423487
  br i1 %i.b, label %.split7.thread, label %bb.b, !prof !516779

bb.b:                                             ; preds = %.split7
  %i.c = shl nuw nsw i64 %0, 4
  %i.d = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.c, i64 16) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c, !prof !10

.split7.thread:                                   ; preds = %.split7
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #85
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { i64, i1 } %i.d, 0
  ret i64 %i.f

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #85
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN8thin_vec16ThinVec$LT$T$GT$7reserve17h25f5494ed4f641b1E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 6 uses
  %i.e = add i64 %i.b, %1                         ; 3 uses
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %i.e, %i.d
  br i1 %.not, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #85
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.d, 0
  %i.h = icmp slt i64 %i.d, 0                     ; 2 uses
  %i.i = shl nuw i64 %i.d, 1
  %spec.select = select i1 %i.h, i64 -1, i64 %i.i, !prof !10
  %.sroa.01.0 = select i1 %i.g, i64 4, i64 %spec.select
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %i.e) ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516780)
  %.not.i = icmp eq ptr %i.a, @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE
  br i1 %.not.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = icmp slt i64 %.sroa.0.0.i, 0
  br i1 %i.j, label %.split.i.i.i, label %.split7.i.i.i

.split.i.i.i:                                     ; preds = %bb.e
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #85, !noalias !516780
  unreachable

.split7.i.i.i:                                    ; preds = %bb.e
  %i.k = icmp samesign ugt i64 %.sroa.0.0.i, 576460752303423487
  br i1 %i.k, label %.split7.thread.i.i.i, label %bb.f, !prof !516779

bb.f:                                             ; preds = %.split7.i.i.i
  %i.l = shl nuw nsw i64 %.sroa.0.0.i, 4
  %i.m = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.l, i64 16) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.g, label %_ZN8thin_vec10alloc_size17h713df6a9d55c1647E.exit.i.i, !prof !10

.split7.thread.i.i.i:                             ; preds = %.split7.i.i.i
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #85, !noalias !516780
  unreachable

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #85, !noalias !516780
  unreachable

_ZN8thin_vec10alloc_size17h713df6a9d55c1647E.exit.i.i: ; preds = %bb.f
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !516780
  %i.p = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #79, !noalias !516780 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %_ZN8thin_vec20header_with_capacity17hc31798d54e65e065E.exit.i, !prof !10

bb.h:                                             ; preds = %_ZN8thin_vec10alloc_size17h713df6a9d55c1647E.exit.i.i
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.o) #85, !noalias !516780
  unreachable

_ZN8thin_vec20header_with_capacity17hc31798d54e65e065E.exit.i: ; preds = %_ZN8thin_vec10alloc_size17h713df6a9d55c1647E.exit.i.i
  store i64 0, ptr %i.p, align 8, !noalias !516780
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$10reallocate17h50e2d7eae789b35cE.exit"

bb.i:                                             ; preds = %bb.d
  br i1 %i.h, label %.split.i.i, label %.split7.i.i

.split.i.i:                                       ; preds = %bb.i
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #85, !noalias !516780
  unreachable

.split7.i.i:                                      ; preds = %bb.i
  %i.r = icmp samesign ugt i64 %i.d, 576460752303423487
  br i1 %i.r, label %.split7.thread.i.i, label %bb.j, !prof !516779

bb.j:                                             ; preds = %.split7.i.i
  %i.s = shl nuw nsw i64 %i.d, 4
  %i.t = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.s, i64 16) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %bb.k, label %_ZN8thin_vec10alloc_size17h713df6a9d55c1647E.exit.i, !prof !10

.split7.thread.i.i:                               ; preds = %.split7.i.i
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #85, !noalias !516780
  unreachable

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #85, !noalias !516780
  unreachable

_ZN8thin_vec10alloc_size17h713df6a9d55c1647E.exit.i: ; preds = %bb.j
  %i.v = extractvalue { i64, i1 } %i.t, 0
  %i.w = icmp slt i64 %.sroa.0.0.i, 0
  br i1 %i.w, label %.split.i3.i, label %.split7.i1.i

.split.i3.i:                                      ; preds = %_ZN8thin_vec10alloc_size17h713df6a9d55c1647E.exit.i
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #85, !noalias !516780
  unreachable

.split7.i1.i:                                     ; preds = %_ZN8thin_vec10alloc_size17h713df6a9d55c1647E.exit.i
  %i.x = icmp samesign ugt i64 %.sroa.0.0.i, 576460752303423487
  br i1 %i.x, label %.split7.thread.i2.i, label %bb.l, !prof !516779

bb.l:                                             ; preds = %.split7.i1.i
  %i.y = shl nuw nsw i64 %.sroa.0.0.i, 4
  %i.z = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.y, i64 16) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %bb.m, label %_ZN8thin_vec10alloc_size17h713df6a9d55c1647E.exit4.i, !prof !10

.split7.thread.i2.i:                              ; preds = %.split7.i1.i
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #85, !noalias !516780
  unreachable

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN8thin_vec17capacity_overflow17hf55be1c5fc6868efE() #85, !noalias !516780
  unreachable

_ZN8thin_vec10alloc_size17h713df6a9d55c1647E.exit4.i: ; preds = %bb.l
  %i.ab = extractvalue { i64, i1 } %i.z, 0
  %i.ac = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.a, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.ab) #79, !noalias !516780 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.n, label %"_ZN8thin_vec16ThinVec$LT$T$GT$10reallocate17h50e2d7eae789b35cE.exit", !prof !10

bb.n:                                             ; preds = %_ZN8thin_vec10alloc_size17h713df6a9d55c1647E.exit4.i
  %i.ae = tail call fastcc noundef i64 @_ZN8thin_vec10alloc_size17h713df6a9d55c1647E(i64 noundef %.sroa.0.0.i), !noalias !516780
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.ae) #85, !noalias !516780
  unreachable

"_ZN8thin_vec16ThinVec$LT$T$GT$10reallocate17h50e2d7eae789b35cE.exit": ; preds = %_ZN8thin_vec20header_with_capacity17hc31798d54e65e065E.exit.i, %_ZN8thin_vec10alloc_size17h713df6a9d55c1647E.exit4.i
  %.sink9.i = phi ptr [ %i.p, %_ZN8thin_vec20header_with_capacity17hc31798d54e65e065E.exit.i ], [ %i.ac, %_ZN8thin_vec10alloc_size17h713df6a9d55c1647E.exit4.i ] ; 2 uses
end_hunk_1
