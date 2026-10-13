Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.04?download=true
inline.NumInlined: 364
inline.NumDeleted: 179
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCsaL1QbXo9JQH_3std2fs8metadataRNtNtB4_4path4PathECs7BtpbLEd5q3_9elfshaker:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !17, !noundef !5
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaL1QbXo9JQH_3std2fs8metadataRNtNtB4_4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !5
  call void @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  %i.d = load i64, ptr %i.a, align 8, !range !17, !noundef !5
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store i64 2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs1xwejQucwHj_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph104 = phi ptr [ %i.du, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph103 = phi i64 [ %i.df, %.outer ], [ %1, %bb.a ] ; 2 uses
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

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1xwejQucwHj_5alloc6string6String12split_at_mutCs7BtpbLEd5q3_9elfshaker.exit
  %i.i = icmp eq i32 %i.j, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph227

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1xwejQucwHj_5alloc6string6String12split_at_mutCs7BtpbLEd5q3_9elfshaker.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa95 = phi ptr [ %i.dg, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph104, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1xwejQucwHj_5alloc6string6String12split_at_mutCs7BtpbLEd5q3_9elfshaker.exit ], [ %i.du, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1xwejQucwHj_5alloc6string6String12split_at_mutCs7BtpbLEd5q3_9elfshaker.exit ], [ %i.df, %.outer ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs1xwejQucwHj_5alloc6string6StringNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa95, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.097.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph103, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs1xwejQucwHj_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph104, i64 noundef %.sroa.16.097.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph227:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.096226 = phi i32 [ %i.j, %bb.b ], [ %.sroa.025.0.ph102, %.lr.ph ]
  %.sroa.16.097225 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph103, %.lr.ph ] ; 21 uses
  %i.j = add i32 %.sroa.025.096226, -1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.k = lshr i64 %.sroa.16.097225, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.k, 96
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.k, 168
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %.idx2.i ; 4 uses
  %i.n = icmp samesign ult i64 %.sroa.16.097225, 64
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph227
  %i.o = call noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCs1xwejQucwHj_5alloc6string6StringNvYB14_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph104, ptr noundef nonnull readonly %i.l, ptr noundef nonnull readonly %i.m, i64 noundef %i.k, ptr noalias nofree noundef nonnull %6)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph227
  %.val10.i = load ptr, ptr %i.c, align 8, !alias.scope !275, !noalias !276, !nonnull !5, !noundef !5 ; 2 uses
  %.val11.i = load i64, ptr %i.d, align 8, !alias.scope !275, !noalias !276, !noundef !5 ; 4 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.val12.i = load ptr, ptr %i.p, align 8, !alias.scope !275, !noalias !276, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr i8, ptr %i.l, i64 16
  %.val13.i = load i64, ptr %i.q, align 8, !alias.scope !275, !noalias !276, !noundef !5 ; 4 uses
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.r = call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !277, !noalias !278 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %i.v = getelementptr i8, ptr %i.m, i64 8
  %.val8.i = load ptr, ptr %i.v, align 8, !alias.scope !275, !noalias !276, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = getelementptr i8, ptr %i.m, i64 16
  %.val9.i = load i64, ptr %i.w, align 8, !alias.scope !275, !noalias !276, !noundef !5 ; 4 uses
  %spec.store.select.i.i.i.i.i14.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.x = call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i14.i), !alias.scope !279, !noalias !278 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = sub nsw i64 %.val11.i, %.val9.i
  %spec.select.i.i.i.i.i15.i = select i1 %i.z, i64 %i.aa, i64 %i.y
  %i.ab = xor i64 %spec.select.i.i.i.i.i15.i, %spec.select.i.i.i.i.i.i
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val13.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.ad = call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i16.i), !alias.scope !280, !noalias !278 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub nsw i64 %.val13.i, %.val9.i
  %spec.select.i.i.i.i.i17.i = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = xor i64 %spec.select.i.i.i.i.i17.i, %spec.select.i.i.i.i.i.i
  %i.ai = icmp slt i64 %i.ah, 0
  %..i.i = select i1 %i.ai, ptr %i.m, ptr %i.l
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.o, %bb.c ], [ %.sroa.0.0.ph104, %bb.d ], [ %..i.i, %bb.e ]
  %i.aj = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ak = sub nuw i64 %i.aj, %i.e                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ak, 24         ; 3 uses
  %i.al = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.097225
  call void @llvm.assume(i1 %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %i.ak ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.028.0.val = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %.sroa.028.0.val37 = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val = load ptr, ptr %i.an, align 8, !nonnull !5, !noundef !5
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %.val38 = load i64, ptr %i.ao, align 8, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.028.0.val37, i64 range(i64 0, -9223372036854775808) %.val38)
  %i.ap = call i32 @memcmp(ptr nonnull readonly %.sroa.028.0.val, ptr nonnull readonly %.val, i64 %spec.store.select.i.i.i.i.i), !alias.scope !281 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp eq i32 %i.ap, 0
  %i.as = sub nsw i64 %.sroa.028.0.val37, %.val38
  %spec.select.i.i.i.i.i = select i1 %i.ar, i64 %i.as, i64 %i.aq
  %i.at = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.at, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !282)
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %.not71 = icmp samesign ult i64 %3, %.sroa.16.097225
  br i1 %.not71, label %bb.k, label %bb.j, !prof !284

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.097225 ; 4 uses
  %i.av = getelementptr i8, ptr %i.am, i64 8
  %i.aw = getelementptr i8, ptr %i.am, i64 16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.19.0.i = phi ptr [ %i.au, %bb.j ], [ %i.bm, %bb.m ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.11.1.lcssa.i, %bb.m ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph104, %bb.j ], [ %i.bo, %bb.m ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.097225, %bb.m ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i39 ; 2 uses
  %i.ay = icmp ult ptr %.sroa.5.0.i, %i.ax
  br i1 %i.ay, label %.lr.ph.i.a, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.a, %bb.l
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.l ], [ %i.bh, %.lr.ph.i.a ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.l ], [ %i.bj, %.lr.ph.i.a ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.l ], [ %i.bk, %.lr.ph.i.a ] ; 2 uses
  %i.az = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.097225
  br i1 %i.az, label %bb.n, label %bb.m

.lr.ph.i.a:                                       ; preds = %bb.l, %.lr.ph.i.a
  %.sroa.5.111.i = phi ptr [ %i.bk, %.lr.ph.i.a ], [ %.sroa.5.0.i, %bb.l ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %i.bj, %.lr.ph.i.a ], [ %.sroa.11.0.i, %bb.l ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.bh, %.lr.ph.i.a ], [ %.sroa.19.0.i, %bb.l ]
  %i.ba = getelementptr i8, ptr %.sroa.5.111.i, i64 8
  %.val.i = load ptr, ptr %i.ba, align 8, !alias.scope !282, !noalias !283, !nonnull !5, !noundef !5
  %i.bb = getelementptr i8, ptr %.sroa.5.111.i, i64 16
  %.val12.i40 = load i64, ptr %i.bb, align 8, !alias.scope !282, !noalias !283, !noundef !5 ; 2 uses
  %.val13.i41 = load ptr, ptr %i.av, align 8, !alias.scope !282, !noalias !283, !nonnull !5, !noundef !5
  %.val14.i.a = load i64, ptr %i.aw, align 8, !alias.scope !282, !noalias !283, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i42 = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i40, i64 range(i64 0, -9223372036854775808) %.val14.i.a)
  %i.bc = call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val13.i41, i64 %spec.store.select.i.i.i.i.i.i42), !alias.scope !285, !noalias !286 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp eq i32 %i.bc, 0
  %i.bf = sub nsw i64 %.val12.i40, %.val14.i.a
  %spec.select.i.i.i.i.i.i43 = select i1 %i.be, i64 %i.bf, i64 %i.bd ; 2 uses
  %i.bg = icmp slt i64 %spec.select.i.i.i.i.i.i43, 0
  %i.bh = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -24 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bg, ptr %2, ptr %i.bh
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i, i64 24, i1 false), !alias.scope !286, !noalias !287
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i43, 63
  %i.bj = add i64 %spec.select.i.i.i.i.i.lobit.i, %.sroa.11.110.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 24 ; 3 uses
  %i.bl = icmp ult ptr %i.bk, %i.ax
  br i1 %i.bl, label %.lr.ph.i.a, label %._crit_edge.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.bm = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -24 ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !286, !noalias !288
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 24
  br label %bb.l

bb.n:                                             ; preds = %._crit_edge.i
  %i.bp = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.bp, i1 false), !alias.scope !286
  %i.bq = sub i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.n
  %i.br = getelementptr [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.bq, 1
  %i.bs = icmp eq i64 %.sroa.16.097225, %.neg
  br i1 %i.bs, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.bq, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.bw, %bb.o ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.o ]
  %i.bt = xor i64 %.sroa.06.014.i, -1
  %i.bu = getelementptr [24 x i8], ptr %i.au, i64 %i.bt
  %i.bv = getelementptr [24 x i8], ptr %i.br, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !alias.scope !286
  %i.bw = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.bx = xor i64 %.sroa.06.014.i, -2
  %i.by = getelementptr [24 x i8], ptr %i.au, i64 %i.bx
  %i.bz = getelementptr [24 x i8], ptr %i.br, i64 %.sroa.06.014.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false), !alias.scope !286
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.o

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.bw, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod288 = trunc i64 %i.bq to i1
  call void @llvm.assume(i1 %lcmp.mod288)
  %i.cb = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.cc = getelementptr [24 x i8], ptr %i.au, i64 %i.cb
  %i.cd = getelementptr [24 x i8], ptr %i.br, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !alias.scope !286
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.n
  %i.ce = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ce, label %.thread, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.097225
  br i1 %.not.i44, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1xwejQucwHj_5alloc6string6String12split_at_mutCs7BtpbLEd5q3_9elfshaker.exit, !prof !9

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26, !noalias !289
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1xwejQucwHj_5alloc6string6String12split_at_mutCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph104) ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs1xwejQucwHj_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.a, ptr noalias nofree noundef nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cg = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.cg, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %.not72 = icmp samesign ult i64 %3, %.sroa.16.097225
  br i1 %.not72, label %bb.s, label %bb.r, !prof !284

bb.r:                                             ; preds = %.thread
  %i.ch = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.097225 ; 4 uses
  %i.ci = getelementptr i8, ptr %i.am, i64 8
  %i.cj = getelementptr i8, ptr %i.am, i64 16
  br label %bb.t

bb.s:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.19.0.i47 = phi ptr [ %i.ch, %bb.r ], [ %i.da, %bb.u ] ; 2 uses
  %.sroa.11.0.i48 = phi i64 [ 0, %bb.r ], [ %i.dc, %bb.u ] ; 2 uses
  %.sroa.5.0.i49 = phi ptr [ %.sroa.0.0.ph104, %bb.r ], [ %i.dd, %bb.u ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i, %bb.r ], [ %.sroa.16.097225, %bb.u ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i50 ; 2 uses
  %i.cl = icmp ult ptr %.sroa.5.0.i49, %i.ck
  br i1 %i.cl, label %.lr.ph.i59.a, label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %.lr.ph.i59.a, %bb.t
  %.sroa.19.1.lcssa.i52 = phi ptr [ %.sroa.19.0.i47, %bb.t ], [ %i.cu, %.lr.ph.i59.a ]
  %.sroa.11.1.lcssa.i53 = phi i64 [ %.sroa.11.0.i48, %bb.t ], [ %i.cx, %.lr.ph.i59.a ] ; 10 uses
  %.sroa.5.1.lcssa.i54 = phi ptr [ %.sroa.5.0.i49, %bb.t ], [ %i.cy, %.lr.ph.i59.a ] ; 2 uses
  %i.cm = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.097225
  br i1 %i.cm, label %bb.v, label %bb.u

.lr.ph.i59.a:                                     ; preds = %bb.t, %.lr.ph.i59.a
  %.sroa.5.111.i60 = phi ptr [ %i.cy, %.lr.ph.i59.a ], [ %.sroa.5.0.i49, %bb.t ] ; 4 uses
  %.sroa.11.110.i61 = phi i64 [ %i.cx, %.lr.ph.i59.a ], [ %.sroa.11.0.i48, %bb.t ] ; 2 uses
  %.sroa.19.19.i62 = phi ptr [ %i.cu, %.lr.ph.i59.a ], [ %.sroa.19.0.i47, %bb.t ]
  %i.cn = getelementptr i8, ptr %.sroa.5.111.i60, i64 8
  %.val.i63 = load ptr, ptr %i.cn, align 8, !alias.scope !290, !noalias !291, !nonnull !5, !noundef !5
  %i.co = getelementptr i8, ptr %.sroa.5.111.i60, i64 16
  %.val12.i64 = load i64, ptr %i.co, align 8, !alias.scope !290, !noalias !291, !noundef !5 ; 2 uses
  %.val13.i65 = load ptr, ptr %i.ci, align 8, !alias.scope !290, !noalias !291, !nonnull !5, !noundef !5
  %.val14.i66 = load i64, ptr %i.cj, align 8, !alias.scope !290, !noalias !291, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val14.i66, i64 range(i64 0, -9223372036854775808) %.val12.i64)
  %i.cp = call i32 @memcmp(ptr nonnull readonly %.val13.i65, ptr nonnull readonly %.val.i63, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !292, !noalias !293 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp eq i32 %i.cp, 0
  %i.cs = sub nsw i64 %.val14.i66, %.val12.i64
  %spec.select.i.i.i.i.i.i.i = select i1 %i.cr, i64 %i.cs, i64 %i.cq
  %i.ct = icmp sgt i64 %spec.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.19.19.i62, i64 -24 ; 3 uses
  %.sroa.01.0.i.i67 = select i1 %i.ct, ptr %2, ptr %i.cu
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i67, i64 %.sroa.11.110.i61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i60, i64 24, i1 false), !alias.scope !293, !noalias !294
  %i.cw = zext i1 %i.ct to i64
  %i.cx = add i64 %.sroa.11.110.i61, %i.cw        ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i60, i64 24 ; 3 uses
  %i.cz = icmp ult ptr %i.cy, %i.ck
  br i1 %i.cz, label %.lr.ph.i59.a, label %._crit_edge.i51

bb.u:                                             ; preds = %._crit_edge.i51
  %i.da = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i52, i64 -24
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i54, i64 24, i1 false), !alias.scope !293, !noalias !295
  %i.dc = add i64 %.sroa.11.1.lcssa.i53, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i54, i64 24
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge.i51
  %i.de = mul nuw nsw i64 %.sroa.11.1.lcssa.i53, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.de, i1 false), !alias.scope !293
  %i.df = sub i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i53 ; 6 uses
  %.not18.i55 = icmp eq i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i53
  %i.dg = getelementptr [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 4 uses
  br i1 %.not18.i55, label %.outer.thread, label %.lr.ph16.i56.preheader

.lr.ph16.i56.preheader:                           ; preds = %bb.v
  %.neg300 = add i64 %.sroa.11.1.lcssa.i53, 1
  %xtraiter295 = and i64 %i.df, 1
  %i.dh = icmp eq i64 %.sroa.16.097225, %.neg300
  br i1 %i.dh, label %.lr.ph16.i56.epil.preheader, label %.lr.ph16.i56.preheader.new

.lr.ph16.i56.preheader.new:                       ; preds = %.lr.ph16.i56.preheader
  %unroll_iter298 = and i64 %i.df, -2
  br label %.lr.ph16.i56

.lr.ph16.i56:                                     ; preds = %.lr.ph16.i56, %.lr.ph16.i56.preheader.new
  %.sroa.06.014.i57 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %i.dl, %.lr.ph16.i56 ] ; 5 uses
  %niter299 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %niter299.next.1, %.lr.ph16.i56 ]
  %i.di = xor i64 %.sroa.06.014.i57, -1
  %i.dj = getelementptr [24 x i8], ptr %i.ch, i64 %i.di
  %i.dk = getelementptr [24 x i8], ptr %i.dg, i64 %.sroa.06.014.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false), !alias.scope !293
  %i.dl = add nuw i64 %.sroa.06.014.i57, 2        ; 2 uses
  %i.dm = xor i64 %.sroa.06.014.i57, -2
  %i.dn = getelementptr [24 x i8], ptr %i.ch, i64 %i.dm
  %i.do = getelementptr [24 x i8], ptr %i.dg, i64 %.sroa.06.014.i57
  %i.dp = getelementptr i8, ptr %i.do, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 24, i1 false), !alias.scope !293
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1xwejQucwHj_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs7BtpbLEd5q3_9elfshaker.exit.unr-lcssa, label %.lr.ph16.i56

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1xwejQucwHj_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs7BtpbLEd5q3_9elfshaker.exit.unr-lcssa: ; preds = %.lr.ph16.i56
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1xwejQucwHj_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph16.i56.epil.preheader

.lr.ph16.i56.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1xwejQucwHj_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs7BtpbLEd5q3_9elfshaker.exit.unr-lcssa, %.lr.ph16.i56.preheader
  %.sroa.06.014.i57.epil.init = phi i64 [ 0, %.lr.ph16.i56.preheader ], [ %i.dl, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1xwejQucwHj_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs7BtpbLEd5q3_9elfshaker.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod297 = trunc i64 %i.df to i1
  call void @llvm.assume(i1 %lcmp.mod297)
  %i.dq = xor i64 %.sroa.06.014.i57.epil.init, -1
  %i.dr = getelementptr [24 x i8], ptr %i.ch, i64 %i.dq
  %i.ds = getelementptr [24 x i8], ptr %i.dg, i64 %.sroa.06.014.i57.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i64 24, i1 false), !alias.scope !293
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1xwejQucwHj_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1xwejQucwHj_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1xwejQucwHj_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs7BtpbLEd5q3_9elfshaker.exit.unr-lcssa, %.lr.ph16.i56.epil.preheader
  %i.dt = icmp ugt i64 %.sroa.11.1.lcssa.i53, %.sroa.16.097225
  br i1 %i.dt, label %bb.w, label %.outer, !prof !9

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1xwejQucwHj_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs7BtpbLEd5q3_9elfshaker.exit
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dv = icmp ult i64 %i.df, 33
  br i1 %i.dv, label %.outer._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs1xwejQucwHj_5alloc6string6StringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs7BtpbLEd5q3_9elfshaker.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i53, i64 noundef %.sroa.16.097225, i64 noundef %.sroa.16.097225, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #26
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden noundef { i64, ptr } @_RINvXNtNtNtCs1xwejQucwHj_5alloc2io4copy7genericNtNtCsaL1QbXo9JQH_3std2fs4FileNtB3_18BufferedReaderSpec7copy_toNtNtNtBN_2io5stdio6StdoutECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readnone align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc2io4copy7genericNtNtCsaL1QbXo9JQH_3std2fs4FileNtB6_18BufferedWriterSpec9copy_fromQQRShECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvNtNtNtCs1xwejQucwHj_5alloc2io4copy7generic17stack_buffer_copyQQRShNtNtCsaL1QbXo9JQH_3std2fs4FileECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvXs_NtNtNtCs1xwejQucwHj_5alloc2io4copy14specializationNtNtCsaL1QbXo9JQH_3std2fs4FileNtB5_13SpecCopyInner4copyNtNtNtBX_2io5stdio6StdoutECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readnone align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 {
bb.a:
  store i64 1, ptr %0, align 8, !alias.scope !300
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !alias.scope !300
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 4
  %i.i = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.08.us = phi i16 [ %i.w, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f
  call void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !306 ; 2 uses
  %.sroa.518.0.copyload.i.us = load ptr, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !306 ; 2 uses
  %.sroa.619.0.copyload.i.us = load i64, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !306 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !306 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.8.0.copyload.i.us, i64 %.sroa.619.0.copyload.i.us)
  %exitcond.not.i.us17.not = icmp ult i64 %.sroa.619.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us17.not, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us.preheader, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.518.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us
  %i.p = add i64 %.sroa.619.0.i.us18, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us

_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us.preheader, %bb.b
  %.sroa.619.0.i.us18 = phi i64 [ %i.p, %bb.b ], [ %.sroa.619.0.copyload.i.us, %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.518.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.s = load i8, ptr %i.q, align 1, !noundef !5
  %i.t = load i8, ptr %i.r, align 1, !noundef !5
  %.not17.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not17.i.us, label %bb.b, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7BtpbLEd5q3_9elfshaker.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.08.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.08 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.026.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.025.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.026.i, align 1, !alias.scope !304, !noalias !305
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.025.i, align 1, !alias.scope !305, !noalias !304
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7

end_hunk_0
