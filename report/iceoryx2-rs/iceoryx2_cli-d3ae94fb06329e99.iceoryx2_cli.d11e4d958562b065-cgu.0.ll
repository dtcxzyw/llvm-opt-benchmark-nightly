Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cli-d3ae94fb06329e99.iceoryx2_cli.d11e4d958562b065-cgu.0?download=true
inline.NumInlined: 156
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot11median3_recNtNtCsigunbJSLHCW_3std4path7PathBufNvYB14_NtNtBa_3cmp10PartialOrd2ltECshX8c74mBP8L_12iceoryx2_cli:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.val15) ]
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.08.0.val15, i64 noundef %.sroa.08.0.val16) #20
  %i.aa = call noundef range(i8 -1, 2) i8 @_RNvNtCsigunbJSLHCW_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = xor i8 %i.aa, %i.x
  %i.ac = icmp slt i8 %i.ab, 0
  br i1 %i.ac, label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot7median3NtNtCsigunbJSLHCW_3std4path7PathBufNvYBZ_NtNtBa_3cmp10PartialOrd2ltECshX8c74mBP8L_12iceoryx2_cli.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.04.0.val = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %.sroa.04.0.val12 = load i64, ptr %i.w, align 8, !noundef !4
  %.sroa.08.0.val = load ptr, ptr %i.y, align 8   ; 2 uses
  %.sroa.08.0.val13 = load i64, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.val, i64 noundef %.sroa.04.0.val12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.val) ]
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.08.0.val, i64 noundef %.sroa.08.0.val13) #20
  %i.ad = call noundef range(i8 -1, 2) i8 @_RNvNtCsigunbJSLHCW_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = xor i8 %i.ad, %i.x
  %i.af = icmp slt i8 %i.ae, 0
  %..i = select i1 %i.af, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot7median3NtNtCsigunbJSLHCW_3std4path7PathBufNvYBZ_NtNtBa_3cmp10PartialOrd2ltECshX8c74mBP8L_12iceoryx2_cli.exit

_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot7median3NtNtCsigunbJSLHCW_3std4path7PathBufNvYBZ_NtNtBa_3cmp10PartialOrd2ltECshX8c74mBP8L_12iceoryx2_cli.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort9quicksortNtNtCsigunbJSLHCW_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = icmp samesign ult i64 %1, 33
  br i1 %i.n, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph102 = phi ptr [ %i.dp, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph101 = phi i64 [ %i.da, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph100 = phi i32 [ %i.v, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph99 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.o = getelementptr i8, ptr %.sroa.0.0.ph102, i64 8
  %i.p = getelementptr i8, ptr %.sroa.0.0.ph102, i64 16
  %i.q = ptrtoint ptr %.sroa.0.0.ph102 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph99, null
  %i.r = getelementptr i8, ptr %.sroa.028.0.ph99, i64 8
  %i.s = getelementptr i8, ptr %.sroa.028.0.ph99, i64 16
  %i.t = icmp eq i32 %.sroa.025.0.ph100, 0
  br i1 %i.t, label %.lr.ph._crit_edge, label %.lr.ph225

bb.b:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtCsigunbJSLHCW_3std4path7PathBuf12split_at_mutCshX8c74mBP8L_12iceoryx2_cli.exit
  %i.u = icmp eq i32 %i.v, 0
  br i1 %i.u, label %.lr.ph._crit_edge, label %.lr.ph225

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtCsigunbJSLHCW_3std4path7PathBuf12split_at_mutCshX8c74mBP8L_12iceoryx2_cli.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa93 = phi ptr [ %i.db, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph102, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtCsigunbJSLHCW_3std4path7PathBuf12split_at_mutCshX8c74mBP8L_12iceoryx2_cli.exit ], [ %i.dp, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtCsigunbJSLHCW_3std4path7PathBuf12split_at_mutCshX8c74mBP8L_12iceoryx2_cli.exit ], [ %i.da, %.outer ]
  call void @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsigunbJSLHCW_3std4path7PathBufNvYB1s_NtNtBa_3cmp10PartialOrd2ltECshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa93, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull %6) #20
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.095.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph101, %.lr.ph ]
  call void @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable5drift4sortNtNtCsigunbJSLHCW_3std4path7PathBufNvYBW_NtNtBa_3cmp10PartialOrd2ltECshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph102, i64 noundef %.sroa.16.095.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull %6) #20
  br label %bb.f

.lr.ph225:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.094224 = phi i32 [ %i.v, %bb.b ], [ %.sroa.025.0.ph100, %.lr.ph ]
  %.sroa.16.095223 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph101, %.lr.ph ] ; 21 uses
  %i.v = add i32 %.sroa.025.094224, -1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.w = lshr i64 %.sroa.16.095223, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.w, 96
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph102, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.w, 168
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph102, i64 %.idx2.i ; 4 uses
  %i.z = icmp samesign ult i64 %.sroa.16.095223, 64
  br i1 %i.z, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph225
  %i.aa = call fastcc noundef ptr @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot11median3_recNtNtCsigunbJSLHCW_3std4path7PathBufNvYB14_NtNtBa_3cmp10PartialOrd2ltECshX8c74mBP8L_12iceoryx2_cli(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph102, ptr noundef readonly %i.x, ptr noundef readonly %i.y, i64 noundef %i.w) #20
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph225
  %.val10.i = load ptr, ptr %i.o, align 8, !alias.scope !145, !nonnull !4, !noundef !4 ; 2 uses
  %.val11.i = load i64, ptr %i.p, align 8, !alias.scope !145, !noundef !4 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 8
  %.val12.i = load ptr, ptr %i.ab, align 8, !alias.scope !145 ; 3 uses
  %i.ac = getelementptr i8, ptr %i.x, i64 16
  %.val13.i = load i64, ptr %i.ac, align 8, !alias.scope !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !145
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i) #20, !noalias !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !145
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i) #20, !noalias !145
  %i.ad = call noundef range(i8 -1, 2) i8 @_RNvNtCsigunbJSLHCW_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.k) #20, !noalias !145 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !145
  %i.ae = getelementptr i8, ptr %i.y, i64 8
  %.val8.i = load ptr, ptr %i.ae, align 8, !alias.scope !145 ; 3 uses
  %i.af = getelementptr i8, ptr %i.y, i64 16
  %.val9.i = load i64, ptr %i.af, align 8, !alias.scope !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !145
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i) #20, !noalias !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !145
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i) #20, !noalias !145
  %i.ag = call noundef range(i8 -1, 2) i8 @_RNvNtCsigunbJSLHCW_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.i) #20, !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !145
  %i.ah = xor i8 %i.ag, %i.ad
  %i.ai = icmp slt i8 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !145
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i) #20, !noalias !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !145
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i) #20, !noalias !145
  %i.aj = call noundef range(i8 -1, 2) i8 @_RNvNtCsigunbJSLHCW_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.g) #20, !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !145
  %i.ak = xor i8 %i.aj, %i.ad
  %i.al = icmp slt i8 %i.ak, 0
  %..i.i = select i1 %i.al, ptr %i.y, ptr %i.x
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.aa, %bb.c ], [ %.sroa.0.0.ph102, %bb.d ], [ %..i.i, %bb.e ]
  %i.am = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.an = sub nuw i64 %i.am, %i.q                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.an, 24         ; 3 uses
  %i.ao = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.095223
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph102, i64 %i.an ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.028.0.val = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %.sroa.028.0.val37 = load i64, ptr %i.s, align 8, !noundef !4
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %.val = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 16
  %.val38 = load i64, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.028.0.val, i64 noundef %.sroa.028.0.val37) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val38) #20
  %i.as = call noundef range(i8 -1, 2) i8 @_RNvNtCsigunbJSLHCW_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.at = icmp slt i8 %i.as, 0
  br i1 %i.at, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %.not69 = icmp samesign ult i64 %3, %.sroa.16.095223
  br i1 %.not69, label %bb.k, label %bb.j, !prof !148

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.095223 ; 4 uses
  %i.av = getelementptr i8, ptr %i.ap, i64 8
  %i.aw = getelementptr i8, ptr %i.ap, i64 16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.19.0.i = phi ptr [ %i.au, %bb.j ], [ %i.bk, %bb.m ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.11.1.lcssa.i, %bb.m ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph102, %bb.j ], [ %i.bm, %bb.m ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.095223, %bb.m ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph102, i64 %.sroa.0.0.i39 ; 2 uses
  %i.ay = icmp ult ptr %.sroa.5.0.i, %i.ax
  br i1 %i.ay, label %.lr.ph.i.a, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.a, %bb.l
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.l ], [ %i.be, %.lr.ph.i.a ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.l ], [ %i.bh, %.lr.ph.i.a ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.l ], [ %i.bi, %.lr.ph.i.a ] ; 2 uses
  %i.az = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.095223
  br i1 %i.az, label %bb.n, label %bb.m

.lr.ph.i.a:                                       ; preds = %bb.l, %.lr.ph.i.a
  %.sroa.5.111.i = phi ptr [ %i.bi, %.lr.ph.i.a ], [ %.sroa.5.0.i, %bb.l ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %i.bh, %.lr.ph.i.a ], [ %.sroa.11.0.i, %bb.l ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.be, %.lr.ph.i.a ], [ %.sroa.19.0.i, %bb.l ]
  %i.ba = getelementptr i8, ptr %.sroa.5.111.i, i64 8
  %.val.i = load ptr, ptr %i.ba, align 8, !alias.scope !146, !nonnull !4, !noundef !4
  %i.bb = getelementptr i8, ptr %.sroa.5.111.i, i64 16
  %.val12.i40 = load i64, ptr %i.bb, align 8, !alias.scope !146, !noundef !4
  %.val13.i41 = load ptr, ptr %i.av, align 8, !alias.scope !146 ; 2 uses
  %.val14.i.a = load i64, ptr %i.aw, align 8, !alias.scope !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !149
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val12.i40) #20, !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !149
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i41) ]
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val13.i41, i64 noundef %.val14.i.a) #20, !noalias !149
  %i.bc = call noundef range(i8 -1, 2) i8 @_RNvNtCsigunbJSLHCW_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.c) #20, !noalias !149 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !149
  %i.bd = icmp slt i8 %i.bc, 0
  %i.be = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -24 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bd, ptr %2, ptr %i.be
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i, i64 24, i1 false), !alias.scope !149, !noalias !150
  %.lobit.i = lshr i8 %i.bc, 7
  %i.bg = zext nneg i8 %.lobit.i to i64
  %i.bh = add i64 %.sroa.11.110.i, %i.bg          ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 24 ; 3 uses
  %i.bj = icmp ult ptr %i.bi, %i.ax
  br i1 %i.bj, label %.lr.ph.i.a, label %._crit_edge.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.bk = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -24 ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !149, !noalias !151
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 24
  br label %bb.l

bb.n:                                             ; preds = %._crit_edge.i
  %i.bn = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph102, ptr nonnull align 8 %2, i64 %i.bn, i1 false), !alias.scope !149
  %i.bo = sub i64 %.sroa.16.095223, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.095223, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.n
  %i.bp = getelementptr [24 x i8], ptr %.sroa.0.0.ph102, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.bo, 1
  %i.bq = icmp eq i64 %.sroa.16.095223, %.neg
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.bo, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.bu, %bb.o ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.o ]
  %i.br = xor i64 %.sroa.06.014.i, -1
  %i.bs = getelementptr [24 x i8], ptr %i.au, i64 %i.br
  %i.bt = getelementptr [24 x i8], ptr %i.bp, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !alias.scope !149
  %i.bu = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.bv = xor i64 %.sroa.06.014.i, -2
  %i.bw = getelementptr [24 x i8], ptr %i.au, i64 %i.bv
  %i.bx = getelementptr [24 x i8], ptr %i.bp, i64 %.sroa.06.014.i
  %i.by = getelementptr i8, ptr %i.bx, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !alias.scope !149
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.o

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.bu, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod286 = trunc i64 %i.bo to i1
  call void @llvm.assume(i1 %lcmp.mod286)
  %i.bz = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.ca = getelementptr [24 x i8], ptr %i.au, i64 %i.bz
  %i.cb = getelementptr [24 x i8], ptr %i.bp, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !alias.scope !149
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.n
  %i.cc = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.cc, label %.thread, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %.not.i42 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.095223
  br i1 %.not.i42, label %bb.q, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtCsigunbJSLHCW_3std4path7PathBuf12split_at_mutCshX8c74mBP8L_12iceoryx2_cli.exit, !prof !10

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !152
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core5sliceSNtNtCsigunbJSLHCW_3std4path7PathBuf12split_at_mutCshX8c74mBP8L_12iceoryx2_cli.exit: ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph102, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph102) ]
  call void @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort9quicksortNtNtCsigunbJSLHCW_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull align 8 %i.cd, i64 noundef %i.bo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.m, ptr noalias nofree noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ce = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.ce, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %.not70 = icmp samesign ult i64 %3, %.sroa.16.095223
  br i1 %.not70, label %bb.s, label %bb.r, !prof !148

bb.r:                                             ; preds = %.thread
  %i.cf = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.095223 ; 4 uses
  %i.cg = getelementptr i8, ptr %i.ap, i64 8
  %i.ch = getelementptr i8, ptr %i.ap, i64 16
  br label %bb.t

bb.s:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.19.0.i45 = phi ptr [ %i.cf, %bb.r ], [ %i.cv, %bb.u ] ; 2 uses
  %.sroa.11.0.i46 = phi i64 [ 0, %bb.r ], [ %i.cx, %bb.u ] ; 2 uses
  %.sroa.5.0.i47 = phi ptr [ %.sroa.0.0.ph102, %bb.r ], [ %i.cy, %bb.u ] ; 3 uses
  %.sroa.0.0.i48 = phi i64 [ %.sroa.0.0.i, %bb.r ], [ %.sroa.16.095223, %bb.u ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph102, i64 %.sroa.0.0.i48 ; 2 uses
  %i.cj = icmp ult ptr %.sroa.5.0.i47, %i.ci
  br i1 %i.cj, label %.lr.ph.i57.a, label %._crit_edge.i49

._crit_edge.i49:                                  ; preds = %.lr.ph.i57.a, %bb.t
  %.sroa.19.1.lcssa.i50 = phi ptr [ %.sroa.19.0.i45, %bb.t ], [ %i.cp, %.lr.ph.i57.a ]
  %.sroa.11.1.lcssa.i51 = phi i64 [ %.sroa.11.0.i46, %bb.t ], [ %i.cs, %.lr.ph.i57.a ] ; 10 uses
  %.sroa.5.1.lcssa.i52 = phi ptr [ %.sroa.5.0.i47, %bb.t ], [ %i.ct, %.lr.ph.i57.a ] ; 2 uses
  %i.ck = icmp eq i64 %.sroa.0.0.i48, %.sroa.16.095223
  br i1 %i.ck, label %bb.v, label %bb.u

.lr.ph.i57.a:                                     ; preds = %bb.t, %.lr.ph.i57.a
  %.sroa.5.111.i58 = phi ptr [ %i.ct, %.lr.ph.i57.a ], [ %.sroa.5.0.i47, %bb.t ] ; 4 uses
  %.sroa.11.110.i59 = phi i64 [ %i.cs, %.lr.ph.i57.a ], [ %.sroa.11.0.i46, %bb.t ] ; 2 uses
  %.sroa.19.19.i60 = phi ptr [ %i.cp, %.lr.ph.i57.a ], [ %.sroa.19.0.i45, %bb.t ]
  %i.cl = getelementptr i8, ptr %.sroa.5.111.i58, i64 8
  %.val.i61 = load ptr, ptr %i.cl, align 8, !alias.scope !153 ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.5.111.i58, i64 16
  %.val12.i62 = load i64, ptr %i.cm, align 8, !alias.scope !153
  %.val13.i63 = load ptr, ptr %i.cg, align 8, !alias.scope !153, !nonnull !4, !noundef !4
  %.val14.i64 = load i64, ptr %i.ch, align 8, !alias.scope !153, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !155
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val13.i63, i64 noundef %.val14.i64) #20, !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !155
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i61) ]
  call void @_RNvMs16_NtCsigunbJSLHCW_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i61, i64 noundef %.val12.i62) #20, !noalias !155
  %i.cn = call noundef range(i8 -1, 2) i8 @_RNvNtCsigunbJSLHCW_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a) #20, !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !155
  %i.co = icmp sgt i8 %i.cn, -1                   ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.sroa.19.19.i60, i64 -24 ; 3 uses
  %.sroa.01.0.i.i65 = select i1 %i.co, ptr %2, ptr %i.cp
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i65, i64 %.sroa.11.110.i59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i58, i64 24, i1 false), !alias.scope !155, !noalias !156
  %i.cr = zext i1 %i.co to i64
  %i.cs = add i64 %.sroa.11.110.i59, %i.cr        ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i58, i64 24 ; 3 uses
  %i.cu = icmp ult ptr %i.ct, %i.ci
  br i1 %i.cu, label %.lr.ph.i57.a, label %._crit_edge.i49

bb.u:                                             ; preds = %._crit_edge.i49
  %i.cv = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i50, i64 -24
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i52, i64 24, i1 false), !alias.scope !155, !noalias !157
  %i.cx = add i64 %.sroa.11.1.lcssa.i51, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i52, i64 24
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge.i49
  %i.cz = mul nuw nsw i64 %.sroa.11.1.lcssa.i51, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph102, ptr nonnull align 8 %2, i64 %i.cz, i1 false), !alias.scope !155
  %i.da = sub i64 %.sroa.16.095223, %.sroa.11.1.lcssa.i51 ; 6 uses
  %.not18.i53 = icmp eq i64 %.sroa.16.095223, %.sroa.11.1.lcssa.i51
  %i.db = getelementptr [24 x i8], ptr %.sroa.0.0.ph102, i64 %.sroa.11.1.lcssa.i51 ; 4 uses
  br i1 %.not18.i53, label %.outer.thread, label %.lr.ph16.i54.preheader

.lr.ph16.i54.preheader:                           ; preds = %bb.v
  %.neg298 = add i64 %.sroa.11.1.lcssa.i51, 1
  %xtraiter293 = and i64 %i.da, 1
  %i.dc = icmp eq i64 %.sroa.16.095223, %.neg298
  br i1 %i.dc, label %.lr.ph16.i54.epil.preheader, label %.lr.ph16.i54.preheader.new

.lr.ph16.i54.preheader.new:                       ; preds = %.lr.ph16.i54.preheader
  %unroll_iter296 = and i64 %i.da, -2
  br label %.lr.ph16.i54

.lr.ph16.i54:                                     ; preds = %.lr.ph16.i54, %.lr.ph16.i54.preheader.new
  %.sroa.06.014.i55 = phi i64 [ 0, %.lr.ph16.i54.preheader.new ], [ %i.dg, %.lr.ph16.i54 ] ; 5 uses
  %niter297 = phi i64 [ 0, %.lr.ph16.i54.preheader.new ], [ %niter297.next.1, %.lr.ph16.i54 ]
  %i.dd = xor i64 %.sroa.06.014.i55, -1
  %i.de = getelementptr [24 x i8], ptr %i.cf, i64 %i.dd
  %i.df = getelementptr [24 x i8], ptr %i.db, i64 %.sroa.06.014.i55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false), !alias.scope !155
  %i.dg = add nuw i64 %.sroa.06.014.i55, 2        ; 2 uses
  %i.dh = xor i64 %.sroa.06.014.i55, -2
  %i.di = getelementptr [24 x i8], ptr %i.cf, i64 %i.dh
  %i.dj = getelementptr [24 x i8], ptr %i.db, i64 %.sroa.06.014.i55
  %i.dk = getelementptr i8, ptr %i.dj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false), !alias.scope !155
  %niter297.next.1 = add i64 %niter297, 2         ; 2 uses
  %niter297.ncmp.1 = icmp eq i64 %niter297.next.1, %unroll_iter296
  br i1 %niter297.ncmp.1, label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsigunbJSLHCW_3std4path7PathBufNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECshX8c74mBP8L_12iceoryx2_cli.exit.unr-lcssa, label %.lr.ph16.i54

_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsigunbJSLHCW_3std4path7PathBufNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECshX8c74mBP8L_12iceoryx2_cli.exit.unr-lcssa: ; preds = %.lr.ph16.i54
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsigunbJSLHCW_3std4path7PathBufNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECshX8c74mBP8L_12iceoryx2_cli.exit, label %.lr.ph16.i54.epil.preheader

.lr.ph16.i54.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsigunbJSLHCW_3std4path7PathBufNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECshX8c74mBP8L_12iceoryx2_cli.exit.unr-lcssa, %.lr.ph16.i54.preheader
  %.sroa.06.014.i55.epil.init = phi i64 [ 0, %.lr.ph16.i54.preheader ], [ %i.dg, %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsigunbJSLHCW_3std4path7PathBufNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECshX8c74mBP8L_12iceoryx2_cli.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod295 = trunc i64 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod295)
  %i.dl = xor i64 %.sroa.06.014.i55.epil.init, -1
  %i.dm = getelementptr [24 x i8], ptr %i.cf, i64 %i.dl
  %i.dn = getelementptr [24 x i8], ptr %i.db, i64 %.sroa.06.014.i55.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !alias.scope !155
  br label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsigunbJSLHCW_3std4path7PathBufNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECshX8c74mBP8L_12iceoryx2_cli.exit

_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsigunbJSLHCW_3std4path7PathBufNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECshX8c74mBP8L_12iceoryx2_cli.exit: ; preds = %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsigunbJSLHCW_3std4path7PathBufNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECshX8c74mBP8L_12iceoryx2_cli.exit.unr-lcssa, %.lr.ph16.i54.epil.preheader
  %i.do = icmp ugt i64 %.sroa.11.1.lcssa.i51, %.sroa.16.095223
  br i1 %i.do, label %bb.w, label %.outer, !prof !10

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsigunbJSLHCW_3std4path7PathBufNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECshX8c74mBP8L_12iceoryx2_cli.exit
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph102, i64 %.sroa.11.1.lcssa.i51 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dq = icmp ult i64 %i.da, 33
  br i1 %i.dq, label %.outer._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsigunbJSLHCW_3std4path7PathBufNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECshX8c74mBP8L_12iceoryx2_cli.exit
  call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i51, i64 noundef %.sroa.16.095223, i64 noundef %.sroa.16.095223, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCs8Chj7Szqq0n_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshX8c74mBP8L_12iceoryx2_cli(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %i.c
  %bound1 = icmp ult ptr %1, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.d, align 1, !alias.scope !171, !noalias !172
  %wide.load6 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !171, !noalias !172
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !173
  %wide.load8 = load <2 x i64>, ptr %i.g, align 1, !alias.scope !173
  store <2 x i64> %wide.load7, ptr %i.d, align 1, !alias.scope !171, !noalias !172
  store <2 x i64> %wide.load8, ptr %i.f, align 1, !alias.scope !171, !noalias !172
  store <2 x i64> %wide.load, ptr %i.e, align 1, !alias.scope !173
  store <2 x i64> %wide.load6, ptr %i.g, align 1, !alias.scope !173
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.i = or disjoint i64 %.sroa.0.04.ph, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.j, align 1, !alias.scope !169
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.k, align 1, !alias.scope !170
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.j, align 1, !alias.scope !169
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.k, align 1, !alias.scope !170
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.i, %scalar.ph.prol ]
  %i.l = icmp eq i64 %2, %.neg
  br i1 %i.l, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.m = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 1, !alias.scope !169
  %.sroa.02.0.copyload.i = load i64, ptr %i.o, align 1, !alias.scope !170
  store i64 %.sroa.02.0.copyload.i, ptr %i.n, align 1, !alias.scope !169
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 1, !alias.scope !170
  %i.p = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.q, align 1, !alias.scope !176
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.r, align 1, !alias.scope !177
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.q, align 1, !alias.scope !176
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.r, align 1, !alias.scope !177
  %exitcond.not.1 = icmp eq i64 %i.p, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !168
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXNtCs2wk0oZsur5i_6anyhow7contextINtNtCs8Chj7Szqq0n_4core6result6ResultNtCsgamQOnaNDe8_14cargo_metadata8MetadataNtNtB1c_6errors5ErrorEINtB5_7ContextB1a_B1P_E7contextReECshX8c74mBP8L_12iceoryx2_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(208) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %1, align 8, !range !9, !noundef !4
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %i.e = call fastcc noundef nonnull ptr @_RINvXNtNtCs2wk0oZsur5i_6anyhow7context3extNtNtCsgamQOnaNDe8_14cargo_metadata6errors5ErrorNtB3_8StdError11ext_contextReECshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
end_hunk_0
