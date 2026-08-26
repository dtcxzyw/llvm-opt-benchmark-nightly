Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-40df1108108d7559.meilisearch.66439a82a0d7f210-cgu.0?download=true
inline.NumInlined: 140831
inline.NumDeleted: 44699
loop-unroll.NumCompletelyUnrolled: 243
loop-unroll.NumRuntimeUnrolled: 906
loop-unroll.NumUnrolled: 1163
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6append17h8a070a91b2425c65E":bb.a
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !342725, !noalias !342728
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink23.i = phi i64 [ 1, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.sroa.7.0.copyload.sink.i = phi i64 [ %i.l, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink23.i, ptr %i.g, align 8, !alias.scope !342725, !noalias !342728
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.sink23.i, ptr %i.p, align 8, !alias.scope !342725, !noalias !342728
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %.sroa.7.0.copyload.sink.i, ptr %i.q, align 8, !alias.scope !342725, !noalias !342728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.032.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.433.0.copyload = load i64, ptr %.sroa.433.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %1, align 8
  store i64 0, ptr %i.h, align 8
  %.not.i14 = icmp eq ptr %.sroa.032.0.copyload, null
  br i1 %.not.i14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.2.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i19, align 8, !alias.scope !342730, !noalias !342733
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.032.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i20, align 8, !alias.scope !342730, !noalias !342733
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.433.0.copyload, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i21, align 8, !alias.scope !342730, !noalias !342733
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i22, align 8, !alias.scope !342730, !noalias !342733
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %.sroa.032.0.copyload, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i23, align 8, !alias.scope !342730, !noalias !342733
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.433.0.copyload, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i24, align 8, !alias.scope !342730, !noalias !342733
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink23.i25 = phi i64 [ 1, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.sroa.7.0.copyload.sink.i26 = phi i64 [ %i.i, %bb.h ], [ 0, %bb.g ]
  store i64 %.sink23.i25, ptr %i.f, align 8, !alias.scope !342730, !noalias !342733
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sink23.i25, ptr %i.r, align 8, !alias.scope !342730, !noalias !342733
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 %.sroa.7.0.copyload.sink.i26, ptr %i.s, align 8, !alias.scope !342730, !noalias !342733
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342735)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !342735
  %i.t = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !342735 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.j, label %.loopexit53.i, !prof !10

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #85
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %bb.j
  unreachable

.loopexit53.i:                                    ; preds = %bb.i
  store ptr null, ptr %i.t, align 8, !noalias !342735
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  store i16 0, ptr %i.v, align 2, !noalias !342735
  store ptr %i.t, ptr %0, align 8, !alias.scope !342735
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !342735
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.08, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  %.sroa.08.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.08, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.08.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !342738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.08, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.08)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342744)
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 145 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %.sroa.22.0..sroa_idx.i30.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.22.0..sroa_idx.i20.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.22.0..sroa_idx.i25.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i, %.loopexit53.i
  %.pre52 = phi i64 [ 0, %.loopexit53.i ], [ %i.et, %.loopexit.i ]
  %i.x = phi i8 [ 2, %.loopexit53.i ], [ %.pre, %.loopexit.i ]
  %.sroa.0.0.i = phi ptr [ %i.t, %.loopexit53.i ], [ %.sroa.0.1.i, %.loopexit.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342748)
  %i.y = load i8, ptr %.sroa.537.0..sroa_idx, align 1, !alias.scope !342751, !noalias !342738 ; 4 uses
  store i8 2, ptr %.sroa.436.0..sroa_idx, align 8, !alias.scope !342751, !noalias !342738
  switch i8 %i.x, label %bb.p [
    i8 2, label %bb.l
    i8 0, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !342752
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hf687e8610026c649E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.e)
          to label %.noexc.i unwind label %bb.x, !noalias !342738

.noexc.i:                                         ; preds = %bb.l
  %i.z = load ptr, ptr %i.d, align 8, !noalias !342752, !noundef !12 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit.i.i.i", label %bb.m

bb.m:                                             ; preds = %.noexc.i
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !noalias !342752
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.22.0.copyload.i.i.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !range !128909, !noalias !342752, !noundef !12
  br label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit.i.i.i": ; preds = %bb.m, %.noexc.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.ac, %bb.m ], [ -117, %.noexc.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !342752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !342755
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hf687e8610026c649E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.w)
          to label %.noexc18.i unwind label %bb.x, !noalias !342738

.noexc18.i:                                       ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit.i.i.i"
  %i.ad = load ptr, ptr %i.c, align 8, !noalias !342755, !noundef !12 ; 2 uses
  %.not.i19.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i19.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit23.i.i.i", label %bb.n

bb.n:                                             ; preds = %.noexc18.i
  %.sroa.22.0.copyload.i21.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i20.i.i.i, align 8, !noalias !342755
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.22.0.copyload.i21.i.i.i
  %i.ag = load i8, ptr %i.af, align 1, !range !128909, !noalias !342755, !noundef !12
  br label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit23.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit23.i.i.i": ; preds = %bb.n, %.noexc18.i
  %.sroa.0.0.i22.i.i.i = phi i8 [ %i.ag, %bb.n ], [ -117, %.noexc18.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !342755
  br label %bb.o

bb.o:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit33.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit28.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit23.i.i.i"
  %.sroa.034.0.i.i.i = phi i8 [ %i.y, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit28.i.i.i" ], [ %.sroa.0.0.i22.i.i.i, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit23.i.i.i" ], [ %.sroa.0.0.i32.i.i.i, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit33.i.i.i" ] ; 6 uses
  %.sroa.0.0.i.i.i = phi i8 [ %.sroa.0.0.i27.i.i.i, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit28.i.i.i" ], [ %.sroa.0.0.i.i.i.i, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit23.i.i.i" ], [ %i.y, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit33.i.i.i" ] ; 6 uses
  %.not16.i.i.i = icmp eq i8 %.sroa.0.0.i.i.i, -117
  %.not17.i.i.i = icmp eq i8 %.sroa.034.0.i.i.i, -117
  %or.cond.i.i.i = select i1 %.not16.i.i.i, i1 true, i1 %.not17.i.i.i
  br i1 %or.cond.i.i.i, label %bb.y, label %bb.t

bb.p:                                             ; preds = %bb.k
  %i.ah = icmp ult i8 %i.y, -117
  tail call void @llvm.assume(i1 %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !342758
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hf687e8610026c649E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.e)
          to label %.noexc19.i unwind label %bb.x, !noalias !342738

.noexc19.i:                                       ; preds = %bb.p
  %i.ai = load ptr, ptr %i.b, align 8, !noalias !342758, !noundef !12 ; 2 uses
  %.not.i24.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i24.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit28.i.i.i", label %bb.q

bb.q:                                             ; preds = %.noexc19.i
  %.sroa.22.0.copyload.i26.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i25.i.i.i, align 8, !noalias !342758
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.22.0.copyload.i26.i.i.i
  %i.al = load i8, ptr %i.ak, align 1, !range !128909, !noalias !342758, !noundef !12
  br label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit28.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit28.i.i.i": ; preds = %bb.q, %.noexc19.i
  %.sroa.0.0.i27.i.i.i = phi i8 [ %i.al, %bb.q ], [ -117, %.noexc19.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !342758
  br label %bb.o

bb.r:                                             ; preds = %bb.k
  %i.am = icmp ult i8 %i.y, -117
  tail call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !342761
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hf687e8610026c649E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.w)
          to label %.noexc20.i unwind label %bb.x, !noalias !342738

.noexc20.i:                                       ; preds = %bb.r
  %i.an = load ptr, ptr %i.a, align 8, !noalias !342761, !noundef !12 ; 2 uses
  %.not.i29.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i29.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit33.i.i.i", label %bb.s

bb.s:                                             ; preds = %.noexc20.i
  %.sroa.22.0.copyload.i31.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i30.i.i.i, align 8, !noalias !342761
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.22.0.copyload.i31.i.i.i
  %i.aq = load i8, ptr %i.ap, align 1, !range !128909, !noalias !342761, !noundef !12
  br label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit33.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit33.i.i.i": ; preds = %bb.s, %.noexc20.i
  %.sroa.0.0.i32.i.i.i = phi i8 [ %i.aq, %bb.s ], [ -117, %.noexc20.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !342761
  br label %bb.o

.sink.split.i.i.i:                                ; preds = %bb.v, %bb.t
  %.sink.i.i.i = phi i8 [ 0, %bb.v ], [ 1, %bb.t ]
  %.sroa.034.0.sink.i.i.i = phi i8 [ %.sroa.0.0.i.i.i, %bb.v ], [ %.sroa.034.0.i.i.i, %bb.t ]
  %.ph.i.i.i = phi i8 [ %.sroa.034.0.i.i.i, %bb.v ], [ -117, %bb.t ]
  %.ph38.i.i.i = phi i8 [ -117, %bb.v ], [ %.sroa.0.0.i.i.i, %bb.t ]
  store i8 %.sink.i.i.i, ptr %.sroa.436.0..sroa_idx, align 8, !alias.scope !342751, !noalias !342738
  store i8 %.sroa.034.0.sink.i.i.i, ptr %.sroa.537.0..sroa_idx, align 1, !alias.scope !342751, !noalias !342738
  br label %bb.y

bb.t:                                             ; preds = %bb.o
  %i.ar = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.sroa.0.0.i.i.i, i8 %.sroa.034.0.i.i.i)
  switch i8 %i.ar, label %bb.u [
    i8 -1, label %.sink.split.i.i.i
    i8 0, label %bb.y
    i8 1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  br label %.sink.split.i.i.i

bb.w:                                             ; preds = %bb.aa, %bb.x
  %.pn.i = phi { ptr, i32 } [ %i.az, %bb.aa ], [ %i.as, %bb.x ]
  invoke fastcc void @"_ZN4core3ptr288drop_in_place$LT$alloc..collections..btree..append..MergeIter$LT$meilisearch_types..locales..Locale$C$alloc..collections..btree..set_val..SetValZST$C$alloc..collections..btree..map..IntoIter$LT$meilisearch_types..locales..Locale$C$alloc..collections..btree..set_val..SetValZST$GT$$GT$$GT$17h1f6e84b44d6e3440E"(ptr noalias noundef align 8 dereferenceable(152) %i.e) #86
          to label %.critedge.thread unwind label %bb.an, !noalias !342738

bb.x:                                             ; preds = %bb.r, %bb.p, %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4c2381d89ec4b989E.exit.i.i.i", %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.t, %.sink.split.i.i.i, %bb.o
  %i.at = phi i8 [ %.sroa.034.0.i.i.i, %bb.t ], [ %.sroa.034.0.i.i.i, %bb.o ], [ %.ph.i.i.i, %.sink.split.i.i.i ] ; 2 uses
  %i.au = phi i8 [ %.sroa.0.0.i.i.i, %bb.t ], [ %.sroa.0.0.i.i.i, %bb.o ], [ %.ph38.i.i.i, %.sink.split.i.i.i ]
  %.not.i.i.i = icmp eq i8 %i.at, -117
  %..i.i.i = select i1 %.not.i.i.i, i8 %i.au, i8 %i.at ; 3 uses
  %.not.i29 = icmp eq i8 %..i.i.i, -117
  br i1 %.not.i29, label %.noexc30, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 10 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !noalias !342738, !noundef !12 ; 3 uses
  %i.ax = icmp ult i16 %i.aw, 11
  br i1 %i.ax, label %bb.am, label %.preheader.i

.noexc30:                                         ; preds = %bb.y
  call fastcc void @"_ZN4core3ptr288drop_in_place$LT$alloc..collections..btree..append..MergeIter$LT$meilisearch_types..locales..Locale$C$alloc..collections..btree..set_val..SetValZST$C$alloc..collections..btree..map..IntoIter$LT$meilisearch_types..locales..Locale$C$alloc..collections..btree..set_val..SetValZST$GT$$GT$$GT$17h1f6e84b44d6e3440E"(ptr noalias noundef align 8 dereferenceable(152) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !342738
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !342743, !noalias !342764, !nonnull !12, !noundef !12
  %.val12.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !342743, !noalias !342764, !noundef !12
  tail call fastcc void @"_ZN5alloc11collections5btree3fix178_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Owned$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$29fix_right_border_of_plentiful17h7875abe25b012e0fE"(ptr nonnull %.val.i, i64 %.val12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.c

.preheader.i:                                     ; preds = %bb.z, %bb.ab
  %.sroa.5.0.i = phi i64 [ %i.ba, %bb.ab ], [ 0, %bb.z ]
  %.sroa.02.0.i = phi ptr [ %i.ay, %bb.ab ], [ %.sroa.0.0.i, %bb.z ]
  %i.ay = load ptr, ptr %.sroa.02.0.i, align 8, !noalias !342765, !noundef !12 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.ai, %bb.ag
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.ab:                                            ; preds = %.preheader.i
  %i.ba = add i64 %.sroa.5.0.i, 1                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 10
  %i.bc = load i16, ptr %i.bb, align 2, !noalias !342738, !noundef !12
  %i.bd = icmp ult i16 %i.bc, 11
  br i1 %i.bd, label %.loopexit52.i, label %.preheader.i

bb.ac:                                            ; preds = %.preheader.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342768)
  %i.be = load ptr, ptr %0, align 8, !alias.scope !342771, !noalias !342764, !nonnull !12, !noundef !12 ; 3 uses
  %i.bf = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !342771, !noalias !342764, !noundef !12
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !342772
  %i.bg = tail call noalias noundef align 8 dereferenceable_or_null(120) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !342772 ; 7 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.ad, label %bb.af, !prof !10

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 120) #85
          to label %.noexc.i.i unwind label %bb.ae, !noalias !342772

.noexc.i.i:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.ac
  store ptr null, ptr %i.bg, align 8, !noalias !342772
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  store i16 0, ptr %i.bj, align 2, !noalias !342772
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.be, ptr %i.bk, align 8, !noalias !342772
  %i.bl = add i64 %i.bf, 1                        ; 2 uses
  store ptr %i.bg, ptr %i.be, align 8, !noalias !342773
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i16 0, ptr %i.bm, align 8, !noalias !342780
  store ptr %i.bg, ptr %0, align 8, !alias.scope !342771, !noalias !342764
  store i64 %i.bl, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !342771, !noalias !342764
  br label %.loopexit52.i

.loopexit52.i:                                    ; preds = %bb.ab, %bb.af
  %.sroa.035.0.i = phi ptr [ %i.bg, %bb.af ], [ %i.ay, %bb.ab ] ; 7 uses
  %.sroa.636.0.i = phi i64 [ %i.bl, %bb.af ], [ %i.ba, %bb.ab ] ; 6 uses
  %i.bn = add i64 %.sroa.636.0.i, -1              ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !342738
  %i.bo = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !342738 ; 5 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.ag, label %bb.ah, !prof !10

bb.ag:                                            ; preds = %.loopexit52.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #85
          to label %.noexc22.i unwind label %bb.aa, !noalias !342738

.noexc22.i:                                       ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %.loopexit52.i
  store ptr null, ptr %i.bo, align 8, !noalias !342738
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  store i16 0, ptr %i.bq, align 2, !noalias !342738
  %.not63.i = icmp eq i64 %i.bn, 0
  br i1 %.not63.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN5alloc11collections5btree3mem7replace17h5cfe324930c7f07cE.exit31.i, %bb.ah
  %.sroa.041.0.lcssa.i = phi ptr [ %i.bo, %bb.ah ], [ %i.eu, %_ZN5alloc11collections5btree3mem7replace17h5cfe324930c7f07cE.exit31.i ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.035.0.i, i64 10 ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2, !noalias !342738, !noundef !12 ; 3 uses
  %i.bt = icmp ult i16 %i.bs, 11
  br i1 %i.bt, label %bb.aj, label %bb.ai, !prof !17

bb.ai:                                            ; preds = %._crit_edge.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5777, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5781) #85
          to label %.noexc24.i unwind label %bb.aa, !noalias !342738

.noexc24.i:                                       ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %._crit_edge.i
  %i.bu = zext nneg i16 %i.bs to i64              ; 2 uses
  %i.bv = add nuw nsw i16 %i.bs, 1
  store i16 %i.bv, ptr %i.br, align 2, !noalias !342738
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.035.0.i, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  store i8 %..i.i.i, ptr %i.bx, align 1, !noalias !342738
  %i.by = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.035.0.i, i64 24
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  store ptr %.sroa.041.0.lcssa.i, ptr %i.ca, align 8, !noalias !342738
  store ptr %.sroa.035.0.i, ptr %.sroa.041.0.lcssa.i, align 8, !noalias !342781
  %i.cb = trunc nuw nsw i64 %i.by to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.041.0.lcssa.i, i64 8
  store i16 %i.cb, ptr %i.cc, align 8, !noalias !342781
  %i.cd = icmp eq i64 %.sroa.636.0.i, 0
  br i1 %i.cd, label %.loopexit.i, label %.lr.ph.i25.i.preheader

.lr.ph.i25.i.preheader:                           ; preds = %bb.aj
  %xtraiter = and i64 %.sroa.636.0.i, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i25.i.prol.loopexit, label %.lr.ph.i25.i.prol

.lr.ph.i25.i.prol:                                ; preds = %.lr.ph.i25.i.preheader, %.lr.ph.i25.i.prol
  %.sroa.03.06.i26.i.prol = phi i64 [ %i.cl, %.lr.ph.i25.i.prol ], [ %.sroa.636.0.i, %.lr.ph.i25.i.preheader ]
  %.sroa.04.05.i27.i.prol = phi ptr [ %i.ck, %.lr.ph.i25.i.prol ], [ %.sroa.035.0.i, %.lr.ph.i25.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i25.i.prol ], [ 0, %.lr.ph.i25.i.preheader ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i27.i.prol, i64 10
  %i.cf = load i16, ptr %i.ce, align 2, !noalias !342784, !noundef !12 ; 2 uses
  %i.cg = zext nneg i16 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i27.i.prol, i64 24
  %i.ci = icmp ult i16 %i.cf, 12
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !342787, !nonnull !12, !noundef !12 ; 3 uses
  %i.cl = add i64 %.sroa.03.06.i26.i.prol, -1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i25.i.prol.loopexit, label %.lr.ph.i25.i.prol, !llvm.loop !342790

.lr.ph.i25.i.prol.loopexit:                       ; preds = %.lr.ph.i25.i.prol, %.lr.ph.i25.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i25.i.preheader ], [ %i.ck, %.lr.ph.i25.i.prol ]
  %.sroa.03.06.i26.i.unr = phi i64 [ %.sroa.636.0.i, %.lr.ph.i25.i.preheader ], [ %i.cl, %.lr.ph.i25.i.prol ]
  %.sroa.04.05.i27.i.unr = phi ptr [ %.sroa.035.0.i, %.lr.ph.i25.i.preheader ], [ %i.ck, %.lr.ph.i25.i.prol ]
  %i.cm = icmp ult i64 %.sroa.636.0.i, 8
  br i1 %i.cm, label %.loopexit.i, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %.lr.ph.i25.i.prol.loopexit, %.lr.ph.i25.i
  %.sroa.03.06.i26.i = phi i64 [ %i.er, %.lr.ph.i25.i ], [ %.sroa.03.06.i26.i.unr, %.lr.ph.i25.i.prol.loopexit ]
  %.sroa.04.05.i27.i = phi ptr [ %i.eq, %.lr.ph.i25.i ], [ %.sroa.04.05.i27.i.unr, %.lr.ph.i25.i.prol.loopexit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i27.i, i64 10
  %i.co = load i16, ptr %i.cn, align 2, !noalias !342784, !noundef !12 ; 2 uses
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i27.i, i64 24
  %i.cr = icmp ult i16 %i.co, 12
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cp
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !342787, !nonnull !12, !noundef !12 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 10
  %i.cv = load i16, ptr %i.cu, align 2, !noalias !342784, !noundef !12 ; 2 uses
  %i.cw = zext nneg i16 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
end_hunk_0
begin_hunk_1_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6append17h8a070a91b2425c65E":bb.a
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dd
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !342787, !nonnull !12, !noundef !12 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 10
  %i.dj = load i16, ptr %i.di, align 2, !noalias !342784, !noundef !12 ; 2 uses
  %i.dk = zext nneg i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dm = icmp ult i16 %i.dj, 12
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !342787, !nonnull !12, !noundef !12 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 10
  %i.dq = load i16, ptr %i.dp, align 2, !noalias !342784, !noundef !12 ; 2 uses
  %i.dr = zext nneg i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dt = icmp ult i16 %i.dq, 12
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dr
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !342787, !nonnull !12, !noundef !12 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 10
  %i.dx = load i16, ptr %i.dw, align 2, !noalias !342784, !noundef !12 ; 2 uses
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.ea = icmp ult i16 %i.dx, 12
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !342787, !nonnull !12, !noundef !12 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 10
  %i.ee = load i16, ptr %i.ed, align 2, !noalias !342784, !noundef !12 ; 2 uses
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.eh = icmp ult i16 %i.ee, 12
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ef
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !342787, !nonnull !12, !noundef !12 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 10
  %i.el = load i16, ptr %i.ek, align 2, !noalias !342784, !noundef !12 ; 2 uses
  %i.em = zext nneg i16 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.eo = icmp ult i16 %i.el, 12
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.em
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !342787, !nonnull !12, !noundef !12 ; 2 uses
  %i.er = add i64 %.sroa.03.06.i26.i, -8          ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %.loopexit.i, label %.lr.ph.i25.i

.loopexit.i:                                      ; preds = %.lr.ph.i25.i.prol.loopexit, %.lr.ph.i25.i, %bb.am, %bb.aj
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.am ], [ %.sroa.035.0.i, %bb.aj ], [ %.lcssa.unr, %.lr.ph.i25.i.prol.loopexit ], [ %i.eq, %.lr.ph.i25.i ]
  %i.et = add i64 %.pre52, 1                      ; 2 uses
  store i64 %i.et, ptr %i.k, align 8, !alias.scope !342744, !noalias !342791
  %.pre = load i8, ptr %.sroa.436.0..sroa_idx, align 8, !range !1754, !alias.scope !342751, !noalias !342738
  br label %bb.k

.lr.ph.i:                                         ; preds = %bb.ah, %_ZN5alloc11collections5btree3mem7replace17h5cfe324930c7f07cE.exit31.i
  %.sroa.04.061.i = phi i64 [ %i.ex, %_ZN5alloc11collections5btree3mem7replace17h5cfe324930c7f07cE.exit31.i ], [ 0, %bb.ah ]
  %.sroa.041.059.i = phi ptr [ %i.eu, %_ZN5alloc11collections5btree3mem7replace17h5cfe324930c7f07cE.exit31.i ], [ %i.bo, %bb.ah ] ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !342792
  %i.eu = tail call noalias noundef align 8 dereferenceable_or_null(120) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !342792 ; 7 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ak, label %_ZN5alloc11collections5btree3mem7replace17h5cfe324930c7f07cE.exit31.i, !prof !10

bb.ak:                                            ; preds = %.lr.ph.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 120) #85
          to label %.noexc.i30.i unwind label %bb.al, !noalias !342792

.noexc.i30.i:                                     ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_ZN5alloc11collections5btree3mem7replace17h5cfe324930c7f07cE.exit31.i: ; preds = %.lr.ph.i
  %i.ex = add nuw i64 %.sroa.04.061.i, 1          ; 2 uses
  store ptr null, ptr %i.eu, align 8, !noalias !342792
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 10
  store i16 0, ptr %i.ey, align 2, !noalias !342792
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  store ptr %.sroa.041.059.i, ptr %i.ez, align 8, !noalias !342792
  store ptr %i.eu, ptr %.sroa.041.059.i, align 8, !noalias !342795
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.041.059.i, i64 8
  store i16 0, ptr %i.fa, align 8, !noalias !342802
  %exitcond.not.i = icmp eq i64 %i.ex, %i.bn
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.am:                                            ; preds = %bb.z
  %i.fb = zext nneg i16 %i.aw to i64
  %i.fc = add nuw nsw i16 %i.aw, 1
  store i16 %i.fc, ptr %i.av, align 2, !noalias !342803
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 12
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fb
  store i8 %..i.i.i, ptr %i.fe, align 1, !noalias !342803
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  br label %.loopexit.i

bb.an:                                            ; preds = %bb.w
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !342738
  unreachable

bb.ao:                                            ; preds = %bb.aq, %bb.ap
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87
  unreachable

bb.ap:                                            ; preds = %bb.j
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr151drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$meilisearch_types..locales..Locale$C$alloc..collections..btree..set_val..SetValZST$GT$$GT$17hd7d06d1cc2540773E"(ptr noalias noundef align 8 dereferenceable(72) %i.f) #86
          to label %bb.aq unwind label %bb.ao

.critedge.thread:                                 ; preds = %bb.w, %bb.aq
  %.pn.pn40 = phi { ptr, i32 } [ %i.fh, %bb.aq ], [ %.pn.i, %bb.w ]
  resume { ptr, i32 } %.pn.pn40

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @"_ZN4core3ptr151drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$meilisearch_types..locales..Locale$C$alloc..collections..btree..set_val..SetValZST$GT$$GT$17hd7d06d1cc2540773E"(ptr noalias noundef align 8 dereferenceable(72) %i.g) #86
          to label %.critedge.thread unwind label %bb.ao
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h06ab695605013010E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 8                ; 14 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [96 x i8], align 8                ; 9 uses
  %i.h = alloca [48 x i8], align 8                ; 12 uses
  %.sroa.0182.i.i = alloca [16 x i8], align 8     ; 12 uses
  %.sroa.017.i.i = alloca [16 x i8], align 8      ; 6 uses
  %.sroa.822.i.i = alloca [40 x i8], align 8      ; 6 uses
  %.sroa.03.i.i = alloca [16 x i8], align 8       ; 5 uses
  %.sroa.7.i.i = alloca [40 x i8], align 8        ; 5 uses
  %.sroa.10.i.i = alloca [40 x i8], align 8       ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342811)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !342809, !noalias !342813, !noundef !12 ; 5 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !342809, !noalias !342813, !noundef !12 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.k, %bb.b ], [ %i.an, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.am, %bb.f ] ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 714
  %i.m = load i16, ptr %i.l, align 2, !noalias !342814, !noundef !12 ; 4 uses
  %i.n = zext i16 %i.m to i64                     ; 5 uses
  %.idx = shl nuw nsw i64 %i.n, 4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.idx
  %i.p = icmp eq i16 %i.m, 0
  br i1 %i.p, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i"

bb.d:                                             ; preds = %endblock
  %i.q = add nuw nsw i64 %.sroa.8.0.i.i.i222, 1
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i221, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.o
  br i1 %i.s, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i": ; preds = %bb.c, %bb.d
  %.sroa.8.0.i.i.i222 = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.sroa.01.0.i.i.i221 = phi ptr [ %i.r, %bb.d ], [ %.sroa.0.0.i.i, %bb.c ] ; 3 uses
  %i.t = load i64, ptr %2, align 1
  %i.u = load i64, ptr %.sroa.01.0.i.i.i221, align 1
  %i.v = tail call i64 @llvm.bswap.i64(i64 %i.t)  ; 2 uses
  %i.w = tail call i64 @llvm.bswap.i64(i64 %i.u)  ; 2 uses
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %loadbb308, label %res_block

res_block:                                        ; preds = %loadbb308, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i"
  %phi.src1 = phi i64 [ %i.v, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i" ], [ %i.ae, %loadbb308 ]
  %phi.src2 = phi i64 [ %i.w, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i" ], [ %i.af, %loadbb308 ]
  %i.y = icmp ult i64 %phi.src1, %phi.src2
  %i.z = select i1 %i.y, i32 -1, i32 1
  br label %endblock

loadbb308:                                        ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i"
  %i.aa = getelementptr i8, ptr %2, i64 8
  %i.ab = getelementptr i8, ptr %.sroa.01.0.i.i.i221, i64 8
  %i.ac = load i64, ptr %i.aa, align 1
  %i.ad = load i64, ptr %i.ab, align 1
  %i.ae = tail call i64 @llvm.bswap.i64(i64 %i.ac) ; 2 uses
  %i.af = tail call i64 @llvm.bswap.i64(i64 %i.ad) ; 2 uses
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb308
  %phi.res = phi i32 [ 0, %loadbb308 ], [ %i.z, %res_block ]
  %i.ah = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  switch i8 %i.ah, label %bb.e [
    i8 -1, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i._crit_edge"
    i8 0, label %bb.bj
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %endblock
  unreachable

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i._crit_edge": ; preds = %bb.d, %endblock, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.n, %bb.c ], [ %i.n, %bb.d ], [ %.sroa.8.0.i.i.i222, %endblock ] ; 13 uses
  %i.ai = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i._crit_edge"
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 720
  %i.ak = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.4.0.i.ph.i.i
  %i.am = load ptr, ptr %i.al, align 8, !noalias !342820, !nonnull !12, !noundef !12
  %i.an = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

.thread:                                          ; preds = %bb.a
  %.sroa.7.8.copyload8 = load ptr, ptr %2, align 1, !alias.scope !342813, !noalias !342809
  %.sroa.11.8..sroa_idx11 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.11.8.copyload12 = load i64, ptr %.sroa.11.8..sroa_idx11, align 1, !alias.scope !342813, !noalias !342809
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !342823
  %i.ao = tail call noalias noundef align 8 dereferenceable_or_null(720) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 720, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !342823 ; 7 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.h, label %bb.i, !prof !10

bb.g:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i._crit_edge"
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 714
  %.sroa.7.8.copyload7 = load ptr, ptr %2, align 1, !alias.scope !342813, !noalias !342809 ; 2 uses
  %.sroa.11.8..sroa_idx9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.11.8.copyload10 = load i64, ptr %.sroa.11.8..sroa_idx9, align 1, !alias.scope !342813, !noalias !342809 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0182.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.sink62.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %.sink62.i.sroa.gep41.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 3 uses
  %.sink61.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sink61.i.sroa.gep43.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !342828
  %i.ar = icmp ugt i16 %i.m, 10
  br i1 %i.ar, label %bb.j, label %bb.k

bb.h:                                             ; preds = %.thread
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 720) #85
          to label %.noexc.i unwind label %bb.bg, !noalias !342823

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.thread
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 704
  store ptr null, ptr %i.as, align 8, !noalias !342823
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 714
  store ptr %i.ao, ptr %1, align 8, !noalias !342823
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.au, align 8, !noalias !342823
  store i16 1, ptr %i.at, align 2, !noalias !342834
  store ptr %.sroa.7.8.copyload8, ptr %i.ao, align 8, !noalias !342839
  %.sroa.9.8..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.sroa.11.8.copyload12, ptr %.sroa.9.8..sroa_idx26, align 8, !noalias !342839
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  br label %bb.bh

bb.j:                                             ; preds = %bb.g
  %i.aw = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  store ptr %.sroa.0.0.i.i, ptr %i.f, align 8, !noalias !342840
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.ax, align 8, !noalias !342840
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  br i1 %i.aw, label %.invoke.i.i.i, label %bb.n

bb.k:                                             ; preds = %bb.g
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.n
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  br i1 %.not.i.i.i.i.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342846)
  br label %.thread.i.i

bb.m:                                             ; preds = %bb.k
  %i.ba = add nuw nsw i64 %.sroa.4.0.i.ph.i.i, 1  ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %i.ba
  %i.bc = sub nuw nsw i64 %i.n, %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull align 1 %i.az, i64 %i.bd, i1 false), !alias.scope !342849, !noalias !342852
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.bf = getelementptr inbounds nuw [48 x i8], ptr %i.be, i64 %.sroa.4.0.i.ph.i.i
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.be, i64 %i.ba
  %i.bh = mul nuw nsw i64 %i.bc, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull align 8 %i.bf, i64 %i.bh, i1 false), !alias.scope !342859, !noalias !342861
  br label %.thread.i.i

bb.n:                                             ; preds = %bb.j
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.o [
    i64 5, label %.invoke.i.i.i
    i64 6, label %bb.p
  ]

.invoke.i.i.i:                                    ; preds = %bb.n, %bb.j
  %.sink.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %bb.n ], [ 4, %bb.j ]
  store i64 %.sink.i.i.i, ptr %i.ay, align 8, !noalias !342840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !342840
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hd2bf15bc6983e7e4E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.r unwind label %bb.v, !noalias !342840

bb.o:                                             ; preds = %bb.n
  store i64 6, ptr %i.ay, align 8, !noalias !342840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !342840
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hd2bf15bc6983e7e4E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.q unwind label %bb.v, !noalias !342840

bb.p:                                             ; preds = %bb.n
  store i64 5, ptr %i.ay, align 8, !noalias !342840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !342840
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hd2bf15bc6983e7e4E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.r unwind label %bb.v, !noalias !342840

bb.q:                                             ; preds = %bb.o
  %i.bi = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.invoke.i.i.i
  %.sink62.i.sroa.phi.i.i = phi ptr [ %.sink62.i.sroa.gep.i.i, %.invoke.i.i.i ], [ %.sink62.i.sroa.gep41.i.i, %bb.p ], [ %.sink62.i.sroa.gep41.i.i, %bb.q ]
  %.sroa.10.0.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %.invoke.i.i.i ], [ 0, %bb.p ], [ %i.bi, %bb.q ] ; 6 uses
  %i.bj = load ptr, ptr %.sink62.i.sroa.phi.i.i, align 8, !noalias !342840, !nonnull !12, !noundef !12 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 714 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !noalias !342862, !noundef !12 ; 2 uses
  %i.bm = zext i16 %i.bl to i64                   ; 2 uses
  %.not.i41.not.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i, %i.bm
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.sroa.10.0.i.i.i ; 3 uses
  br i1 %.not.i41.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342868)
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.bo = add nuw nsw i64 %.sroa.10.0.i.i.i, 1    ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bo
  %i.bq = sub nuw nsw i64 %i.bm, %.sroa.10.0.i.i.i ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull align 1 %i.bn, i64 %i.br, i1 false), !alias.scope !342871, !noalias !342874
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.bs, i64 %.sroa.10.0.i.i.i
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.bs, i64 %i.bo
  %i.bv = mul nuw nsw i64 %i.bq, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr nonnull align 8 %i.bt, i64 %i.bv, i1 false), !alias.scope !342876, !noalias !342878
  br label %bb.w

bb.u:                                             ; preds = %bb.v
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !342840
  unreachable

.thread.i.i:                                      ; preds = %bb.m, %bb.l
  store ptr %.sroa.7.8.copyload7, ptr %i.az, align 1, !noalias !342839
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.11.8.copyload10, ptr %i.bx, align 1, !noalias !342839
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 176
  %i.bz = add nuw nsw i16 %i.m, 1
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %i.by, i64 %.sroa.4.0.i.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.d, i64 48, i1 false), !alias.scope !342879, !noalias !342880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i16 %i.bz, ptr %i.aq, align 2, !noalias !342880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !342828
  br label %bb.y

bb.v:                                             ; preds = %bb.p, %bb.o, %.invoke.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17hf39cc9dd07a8ab34E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %3) #86
          to label %.body unwind label %bb.u

bb.w:                                             ; preds = %bb.t, %bb.s
  store ptr %.sroa.7.8.copyload7, ptr %i.bn, align 1, !noalias !342839
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %.sroa.11.8.copyload10, ptr %i.cc, align 1, !noalias !342839
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 176
  %i.ce = add i16 %i.bl, 1
  %i.cf = getelementptr inbounds nuw [48 x i8], ptr %i.cd, i64 %.sroa.10.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.c, i64 48, i1 false), !alias.scope !342881, !noalias !342862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i16 %i.ce, ptr %i.bk, align 2, !noalias !342862
end_hunk_1
begin_hunk_2_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hf1e4616a3b7bffd9E":bb.a
.lr.ph.i.i50.i.i.i.preheader:                     ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h8311db58ee934ac4E.exit.i49.i.i.i
  %i.hi = add nuw nsw i64 %i.gq, 1
  %i.hj = sub nsw i64 %i.hi, %.sroa.10.1.i.i.i
  %i.hk = sub nsw i64 %i.gq, %.sroa.10.1.i.i.i
  %xtraiter = and i64 %i.hj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i50.i.i.i.prol.loopexit, label %.lr.ph.i.i50.i.i.i.prol

.lr.ph.i.i50.i.i.i.prol:                          ; preds = %.lr.ph.i.i50.i.i.i.preheader, %.lr.ph.i.i50.i.i.i.prol
  %.sroa.0.06.i.i51.i.i.i.prol = phi i64 [ %i.hl, %.lr.ph.i.i50.i.i.i.prol ], [ %i.gs, %.lr.ph.i.i50.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i50.i.i.i.prol ], [ 0, %.lr.ph.i.i50.i.i.i.preheader ]
  %i.hl = add nuw nsw i64 %.sroa.0.06.i.i51.i.i.i.prol, 1 ; 2 uses
  %i.hm = icmp samesign ult i64 %.sroa.0.06.i.i51.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.hm)
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.sroa.0.06.i.i51.i.i.i.prol
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !345824, !nonnull !12, !noundef !12 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 176
  store ptr %i.gn, ptr %i.hp, align 8, !noalias !345829
  %i.hq = trunc nuw nsw i64 %.sroa.0.06.i.i51.i.i.i.prol to i16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 184
  store i16 %i.hq, ptr %i.hr, align 8, !noalias !345829
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i50.i.i.i.prol.loopexit, label %.lr.ph.i.i50.i.i.i.prol, !llvm.loop !345830

.lr.ph.i.i50.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i50.i.i.i.prol, %.lr.ph.i.i50.i.i.i.preheader
  %.sroa.0.06.i.i51.i.i.i.unr = phi i64 [ %i.gs, %.lr.ph.i.i50.i.i.i.preheader ], [ %i.hl, %.lr.ph.i.i50.i.i.i.prol ]
  %i.hs = icmp ult i64 %i.hk, 3
  br i1 %i.hs, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.i.i", label %.lr.ph.i.i50.i.i.i

.lr.ph.i.i50.i.i.i:                               ; preds = %.lr.ph.i.i50.i.i.i.prol.loopexit, %.lr.ph.i.i50.i.i.i
  %.sroa.0.06.i.i51.i.i.i = phi i64 [ %i.il, %.lr.ph.i.i50.i.i.i ], [ %.sroa.0.06.i.i51.i.i.i.unr, %.lr.ph.i.i50.i.i.i.prol.loopexit ] ; 7 uses
  %i.ht = add nuw nsw i64 %.sroa.0.06.i.i51.i.i.i, 1 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.sroa.0.06.i.i51.i.i.i
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !345824, !nonnull !12, !noundef !12 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 176
  store ptr %i.gn, ptr %i.hw, align 8, !noalias !345829
  %i.hx = trunc nuw nsw i64 %.sroa.0.06.i.i51.i.i.i to i16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 184
  store i16 %i.hx, ptr %i.hy, align 8, !noalias !345829
  %i.hz = add nuw nsw i64 %.sroa.0.06.i.i51.i.i.i, 2 ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.ht
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !345824, !nonnull !12, !noundef !12 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 176
  store ptr %i.gn, ptr %i.ic, align 8, !noalias !345829
  %i.id = trunc nuw nsw i64 %i.ht to i16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 184
  store i16 %i.id, ptr %i.ie, align 8, !noalias !345829
  %i.if = add nuw nsw i64 %.sroa.0.06.i.i51.i.i.i, 3 ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hz
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !345824, !nonnull !12, !noundef !12 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 176
  store ptr %i.gn, ptr %i.ii, align 8, !noalias !345829
  %i.ij = trunc nuw nsw i64 %i.hz to i16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 184
  store i16 %i.ij, ptr %i.ik, align 8, !noalias !345829
  %i.il = add nuw nsw i64 %.sroa.0.06.i.i51.i.i.i, 4 ; 2 uses
  %i.im = icmp ult i64 %.sroa.0.06.i.i51.i.i.i, 9
  tail call void @llvm.assume(i1 %i.im)
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.if
  %i.io = load ptr, ptr %i.in, align 8, !noalias !345824, !nonnull !12, !noundef !12 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 176
  store ptr %i.gn, ptr %i.ip, align 8, !noalias !345829
  %i.iq = trunc nuw nsw i64 %i.if to i16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 184
  store i16 %i.iq, ptr %i.ir, align 8, !noalias !345829
  %exitcond.not.i.i52.i.i.i.3 = icmp eq i64 %i.il, %i.hf
  br i1 %exitcond.not.i.i52.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.i.i", label %.lr.ph.i.i50.i.i.i

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.thread.i.i": ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h8311db58ee934ac4E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !345699
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h9d35cbc512f4344aE.exit"

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.i.i": ; preds = %.lr.ph.i.i50.i.i.i.prol.loopexit, %.lr.ph.i.i50.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h8311db58ee934ac4E.exit.i49.i.i.i
  %.sroa.09.0.copyload.i.i = load ptr, ptr %i.a, align 8, !noalias !345809 ; 2 uses
  %.sroa.711.0.copyload.i.i = load i64, ptr %.sroa.711.0..sroa_idx.i.i, align 8, !noalias !345809
  %.sroa.814.0.copyload.i.i = load ptr, ptr %.sroa.814.0..sroa_idx.i.i, align 8, !noalias !345809
  %.sroa.917.0.copyload.i.i = load i64, ptr %.sroa.917.0..sroa_idx.i.i, align 8, !noalias !345809
  %.sroa.1123.0.copyload.i.i = load i64, ptr %.sroa.1123.0..sroa_idx.i.i, align 8, !noalias !345809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !345767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !345699
  %.not37.i.i = icmp eq ptr %.sroa.09.0.copyload.i.i, null
  br i1 %.not37.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h9d35cbc512f4344aE.exit", label %bb.ai

bb.ai:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.thread57.i.i"
  %.sroa.1123.170.i.i = phi i64 [ %.sroa.1123.0.copyload25.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.thread57.i.i" ], [ %.sroa.1123.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.i.i" ] ; 2 uses
  %.sroa.1020.169.i.i = phi ptr [ %.sroa.1020.0.copyload22.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.thread57.i.i" ], [ %i.gn, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.i.i" ] ; 3 uses
  %.sroa.917.168.i.i = phi i64 [ %.sroa.917.0.copyload19.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.thread57.i.i" ], [ %.sroa.917.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.i.i" ] ; 2 uses
  %.sroa.814.167.i.i = phi ptr [ %.sroa.814.0.copyload16.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.thread57.i.i" ], [ %.sroa.814.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.i.i" ] ; 3 uses
  %.sroa.711.166.i.i = phi i64 [ %.sroa.711.0.copyload13.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.thread57.i.i" ], [ %.sroa.711.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.i.i" ]
  %.sroa.09.065.i.i = phi ptr [ %i.ei, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.thread57.i.i" ], [ %.sroa.09.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.i.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.814.167.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1020.169.i.i) ]
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.09.065.i.i, i64 176
  %i.it = load ptr, ptr %i.is, align 8, !noalias !345738, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.v

.thread:                                          ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !345831
  %i.iu = tail call noalias noundef align 8 dereferenceable_or_null(192) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !345831 ; 6 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.aj, label %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17ha5749990d29f8f1fE.exit.i", !prof !10

bb.aj:                                            ; preds = %.thread
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 192) #85, !noalias !345831
  unreachable

"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17ha5749990d29f8f1fE.exit.i": ; preds = %.thread
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 176
  store ptr null, ptr %i.iw, align 8, !noalias !345831
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 186
  store ptr %i.iu, ptr %0, align 8, !noalias !345831
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.iy, align 8, !noalias !345831
  store i16 1, ptr %i.ix, align 2, !noalias !345832
  store ptr %1, ptr %i.iu, align 8, !noalias !345832
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i64 %2, ptr %i.iz, align 8, !noalias !345832
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h9d35cbc512f4344aE.exit"

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h9d35cbc512f4344aE.exit": ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.i.i", %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h6695cd40b6297cddE.exit.thread.i.i", %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h6695cd40b6297cddE.exit.i.i", %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17hcaf50124f679aa04E.exit.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hf135189d0df28f5aE.exit.thread.i.i", %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17ha5749990d29f8f1fE.exit.i"
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !noalias !345831, !noundef !12
  %i.jc = add i64 %i.jb, 1
  store i64 %i.jc, ptr %i.ja, align 8, !noalias !345831
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cb61638298f64f7E.exit.i.i.i", %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h9d35cbc512f4344aE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6remove17h1aa627d8d8fdb45fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(16) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [88 x i8], align 8                ; 10 uses
  %i.f = alloca [1 x i8], align 1                 ; 6 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345836)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !345836, !noalias !345839, !noundef !12 ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17hf18520e3655e76efE.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !345836, !noalias !345839, !noundef !12 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.sroa.3.0.i.i = phi i64 [ %i.al, %bb.f ], [ %i.i, %bb.b ] ; 4 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ak, %bb.f ], [ %i.g, %bb.b ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 714
  %i.k = load i16, ptr %i.j, align 2, !noalias !345842, !noundef !12 ; 2 uses
  %i.l = zext i16 %i.k to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.l, 4
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.idx
  %i.n = icmp eq i16 %i.k, 0
  br i1 %i.n, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i"

bb.d:                                             ; preds = %endblock
  %i.o = add nuw nsw i64 %.sroa.8.0.i.i.i51, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i50, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i": ; preds = %bb.c, %bb.d
  %.sroa.8.0.i.i.i51 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %.sroa.01.0.i.i.i50 = phi ptr [ %i.p, %bb.d ], [ %.sroa.0.0.i.i, %bb.c ] ; 3 uses
  %i.r = load i64, ptr %2, align 1
  %i.s = load i64, ptr %.sroa.01.0.i.i.i50, align 1
  %i.t = tail call i64 @llvm.bswap.i64(i64 %i.r)  ; 2 uses
  %i.u = tail call i64 @llvm.bswap.i64(i64 %i.s)  ; 2 uses
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %loadbb81, label %res_block

res_block:                                        ; preds = %loadbb81, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i"
  %phi.src1 = phi i64 [ %i.t, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i" ], [ %i.ac, %loadbb81 ]
  %phi.src2 = phi i64 [ %i.u, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i" ], [ %i.ad, %loadbb81 ]
  %i.w = icmp ult i64 %phi.src1, %phi.src2
  %i.x = select i1 %i.w, i32 -1, i32 1
  br label %endblock

loadbb81:                                         ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i"
  %i.y = getelementptr i8, ptr %2, i64 8
  %i.z = getelementptr i8, ptr %.sroa.01.0.i.i.i50, i64 8
  %i.aa = load i64, ptr %i.y, align 1
  %i.ab = load i64, ptr %i.z, align 1
  %i.ac = tail call i64 @llvm.bswap.i64(i64 %i.aa) ; 2 uses
  %i.ad = tail call i64 @llvm.bswap.i64(i64 %i.ab) ; 2 uses
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb81
  %phi.res = phi i32 [ 0, %loadbb81 ], [ %i.x, %res_block ]
  %i.af = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  switch i8 %i.af, label %bb.e [
    i8 -1, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i._crit_edge"
    i8 0, label %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h94f74fefb4eebc89E.exit.i"
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %endblock
  unreachable

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i._crit_edge": ; preds = %bb.d, %endblock, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %.sroa.8.0.i.i.i51, %endblock ] ; 2 uses
  %i.ag = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.ag, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$12remove_entry17hf18520e3655e76efE.exit.thread", label %bb.f

bb.f:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6848cddca5109a8E.exit.i.i.i._crit_edge"
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 720
  %i.ai = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.sroa.4.0.i.ph.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !345848, !nonnull !12, !noundef !12
  %i.al = add i64 %.sroa.3.0.i.i, -1
  %indvar.next = add i64 %indvar, 1
  br label %bb.c

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h94f74fefb4eebc89E.exit.i": ; preds = %endblock
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !345851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !345852
  store i8 0, ptr %i.f, align 1, !noalias !345852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !345852
  %i.am = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h94f74fefb4eebc89E.exit.i"
  store ptr %.sroa.0.0.i.i, ptr %i.d, align 8, !noalias !345856
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !345856
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.8.0.i.i.i51, ptr %.sroa.4.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !345856
  call fastcc void @"_ZN5alloc11collections5btree6remove259_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14remove_leaf_kv17h27c80c62dbf778c5E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 1 dereferenceable(1) %i.f), !noalias !345852
  br label %"_ZN5alloc11collections5btree6remove269_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$18remove_kv_tracking17h4d7984306c782a4fE.exit.i.i"

bb.h:                                             ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h94f74fefb4eebc89E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !345856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !345856
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 720
  %i.ap = icmp samesign ult i64 %.sroa.8.0.i.i.i51, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.sroa.8.0.i.i.i51
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !345861, !nonnull !12, !noundef !12 ; 3 uses
  %i.as = add i64 %.sroa.3.0.i.i, -1              ; 4 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hfa963af891f6853eE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h
  %i.au = add i64 %i.i, -2
  %i.av = sub i64 %i.au, %indvar
  %xtraiter = and i64 %i.as, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.03.06.i.i.i.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.prol ], [ %i.as, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.04.05.i.i.i.i.i.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.prol ], [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.prol, i64 714
  %i.ax = load i16, ptr %i.aw, align 2, !noalias !345868, !noundef !12 ; 2 uses
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.prol, i64 720
  %i.ba = icmp ult i16 %i.ax, 12
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !345871, !nonnull !12, !noundef !12 ; 3 uses
  %i.bd = add i64 %.sroa.03.06.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !345874

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa55.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.03.06.i.i.i.i.i.unr = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.04.05.i.i.i.i.i.unr = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.i.i.i.prol ]
  %i.be = icmp ult i64 %i.av, 7
  br i1 %i.be, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hfa963af891f6853eE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.03.06.i.i.i.i.i = phi i64 [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sroa.04.05.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i, i64 714
  %i.bg = load i16, ptr %i.bf, align 2, !noalias !345868, !noundef !12 ; 2 uses
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i, i64 720
  %i.bj = icmp ult i16 %i.bg, 12
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !345871, !nonnull !12, !noundef !12 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 714
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !345868, !noundef !12 ; 2 uses
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 720
  %i.bq = icmp ult i16 %i.bn, 12
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !345871, !nonnull !12, !noundef !12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 714
  %i.bu = load i16, ptr %i.bt, align 2, !noalias !345868, !noundef !12 ; 2 uses
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 720
  %i.bx = icmp ult i16 %i.bu, 12
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !345871, !nonnull !12, !noundef !12 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 714
  %i.cb = load i16, ptr %i.ca, align 2, !noalias !345868, !noundef !12 ; 2 uses
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 720
  %i.ce = icmp ult i16 %i.cb, 12
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !345871, !nonnull !12, !noundef !12 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 714
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !345868, !noundef !12 ; 2 uses
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 720
  %i.cl = icmp ult i16 %i.ci, 12
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !345871, !nonnull !12, !noundef !12 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 714
  %i.cp = load i16, ptr %i.co, align 2, !noalias !345868, !noundef !12 ; 2 uses
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 720
  %i.cs = icmp ult i16 %i.cp, 12
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !345871, !nonnull !12, !noundef !12 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 714
  %i.cw = load i16, ptr %i.cv, align 2, !noalias !345868, !noundef !12 ; 2 uses
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 720
  %i.cz = icmp ult i16 %i.cw, 12
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  %i.db = load ptr, ptr %i.da, align 8, !noalias !345871, !nonnull !12, !noundef !12 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 714
  %i.dd = load i16, ptr %i.dc, align 2, !noalias !345868, !noundef !12 ; 2 uses
  %i.de = zext nneg i16 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 720
  %i.dg = icmp ult i16 %i.dd, 12
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.de
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !345871, !nonnull !12, !noundef !12 ; 2 uses
  %i.dj = add i64 %.sroa.03.06.i.i.i.i.i, -8      ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hfa963af891f6853eE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hfa963af891f6853eE.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.h
  %.sroa.04.0.lcssa.i.i.i.i.i = phi ptr [ %i.ar, %bb.h ], [ %.lcssa55.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.di, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i, i64 714
  %i.dm = load i16, ptr %i.dl, align 2, !noalias !345868, !noundef !12 ; 2 uses
  %i.dn = zext i16 %i.dm to i64
  %.not.i.i.i.i = icmp eq i16 %i.dm, 0            ; 2 uses
  %i.do = add nsw i64 %i.dn, -1
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i64 undef, i64 %i.do
  %spec.select53.i.i.i.i = select i1 %.not.i.i.i.i, ptr null, ptr %.sroa.04.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select53.i.i.i.i) ]
  store ptr %spec.select53.i.i.i.i, ptr %i.c, align 8, !noalias !345875
  %.sroa.7.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.7.0..sroa_idx5.i.i.i.i, align 8, !noalias !345875
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %spec.select.i.i.i.i, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx5.sroa_idx.i.i.i.i, align 8, !noalias !345875
  call fastcc void @"_ZN5alloc11collections5btree6remove259_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14remove_leaf_kv17h27c80c62dbf778c5E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 1 dereferenceable(1) %i.f), !noalias !345876
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.035.0.copyload.i.i.i.i = load ptr, ptr %i.dp, align 8, !noalias !345875, !nonnull !12, !noundef !12 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !345875 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !345875 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.035.0.copyload.i.i.i.i, i64 714
  %i.dr = load i16, ptr %i.dq, align 2, !noalias !345877, !noundef !12
  %i.ds = zext i16 %i.dr to i64
  %i.dt = icmp ult i64 %.sroa.3.0.copyload.i.i.i.i, %i.ds
  br i1 %i.dt, label %bb.i, label %.lr.ph.i33.i.i.i.i

.lr.ph.i33.i.i.i.i:                               ; preds = %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hfa963af891f6853eE.exit.i.i.i.i", %.lr.ph.i33.i.i.i.i
  %.sroa.0.038.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i33.i.i.i.i ], [ %.sroa.035.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hfa963af891f6853eE.exit.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i = phi i64 [ %i.dw, %.lr.ph.i33.i.i.i.i ], [ %.sroa.2.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hfa963af891f6853eE.exit.i.i.i.i" ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i, i64 704
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !345881, !nonnull !12, !noundef !12 ; 3 uses
  %i.dw = add i64 %.sroa.5.037.i.i.i.i.i, 1       ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i, i64 712
  %i.dy = load i16, ptr %i.dx, align 8, !noalias !345881 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 714
  %i.ea = load i16, ptr %i.dz, align 2, !noalias !345877, !noundef !12
  %i.eb = icmp ult i16 %i.dy, %i.ea
  br i1 %i.eb, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i33.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i33.i.i.i.i
  %i.ec = zext i16 %i.dy to i64
end_hunk_2
begin_hunk_3_@_ZN5tokio4sync4task12atomic_waker11AtomicWaker15register_by_ref17h96ba7c9b5941a720E
declare void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker15register_by_ref17h96ba7c9b5941a720E(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN92_$LT$tokio..sync..mpsc..bounded..Semaphore$u20$as$u20$tokio..sync..mpsc..chan..Semaphore$GT$7is_idle17h5b50e7b98e11b3c8E"(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN92_$LT$tokio..sync..mpsc..bounded..Semaphore$u20$as$u20$tokio..sync..mpsc..chan..Semaphore$GT$10add_permit17h8883a929a5112fc4E"(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN94_$LT$tokio..sync..mpsc..unbounded..Semaphore$u20$as$u20$tokio..sync..mpsc..chan..Semaphore$GT$7is_idle17h4d63f60eccc2cd6aE"(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN94_$LT$tokio..sync..mpsc..unbounded..Semaphore$u20$as$u20$tokio..sync..mpsc..chan..Semaphore$GT$10add_permit17h97c7a284914c88dbE"(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN92_$LT$tokio..sync..mpsc..bounded..Semaphore$u20$as$u20$tokio..sync..mpsc..chan..Semaphore$GT$5close17h750d1d4731ba37b2E"(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5tokio4sync6notify6Notify14notify_waiters17hd73ace121d40751aE(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN94_$LT$tokio..sync..mpsc..unbounded..Semaphore$u20$as$u20$tokio..sync..mpsc..chan..Semaphore$GT$9is_closed17h5b770b1d80d8d9dbE"(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN94_$LT$tokio..sync..mpsc..unbounded..Semaphore$u20$as$u20$tokio..sync..mpsc..chan..Semaphore$GT$11add_permits17h4ea607e3cf449ca5E"(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker4wake17h980b6260b7cb34d7E(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @"_ZN86_$LT$tokio..sync..batch_semaphore..Acquire$u20$as$u20$core..future..future..Future$GT$4poll17h34c94a569c0b42dbE"(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_ZN5tokio4sync15batch_semaphore9Semaphore11try_acquire17ha077fc1c38f8fbacE(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5tokio4sync15batch_semaphore9Semaphore3new17hbb242aa6d61f3f9eE(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5tokio4sync7oneshot4Task9drop_task17h4716b0adcea0322aE(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN5tokio4sync7oneshot5State12set_complete17hd7c1ac113075f48fE(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN5tokio4sync7oneshot5State4load17h7852ae69f84d6a44E(ptr noundef nonnull align 8, i8 noundef range(i8 0, 5)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5tokio4sync7oneshot4Task8set_task17hf2a8b67a2f898703E(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_ZN11parking_lot9raw_mutex8RawMutex9lock_slow17ha64df3a0baaf5021E(ptr noundef nonnull align 1, i64, i32 noundef range(i32 0, 1000000001)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_ZN5tokio4util9wake_list8WakeList8wake_all17h970713000c13dbb7E(ptr noalias noundef align 8 dereferenceable(520)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5tokio4util9wake_list8WakeList4push17h3d2bd79c8952bfb0E(ptr noalias noundef align 8 dereferenceable(520), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN5tokio4task4coop6Budget13has_remaining17hd0f7883b7083624eE(i1 noundef zeroext, i8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN78_$LT$tokio..runtime..handle..TryCurrentError$u20$as$u20$core..fmt..Display$GT$3fmt17h6785049ddcb87fb2E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_ZN5tokio4time7instant7Instant3now17hb8eb4bd65e3ef4afE() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_ZN5tokio4time7instant7Instant11checked_add17h3955414a2e49763aE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5tokio4time5sleep5Sleep10far_future17h64278bb47e7009a3E(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5tokio4time5sleep5Sleep11new_timeout17h35acbdfbe8675a47E(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking13assert_failed17h25379667b0dca6f8E(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #74

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking13assert_failed17h5c19afd61d06e712E(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #74

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5tokio7runtime9scheduler14current_thread134_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$8schedule17hf8ca7dccab44d288E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN103_$LT$tokio..runtime..blocking..schedule..BlockingSchedule$u20$as$u20$tokio..runtime..task..Schedule$GT$8schedule17hc1e7b37771adfe3fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5tokio7runtime9scheduler12multi_thread6handle140_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$8schedule17he7081564bce2df92E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef range(i64 1, 0)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5tokio7runtime4task3raw7RawTask8shutdown17hf9ad53cba5631027E(ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN5tokio7runtime4task7harness15can_read_output17hd4c5e1f44d4fb170E(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i1, i1 } @_ZN5tokio7runtime4task5state5State33transition_to_join_handle_dropped17h2ffd967fafba9122E(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5tokio7runtime4task4core7Trailer9set_waker17h4ecbb5fce603c1a0E(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32), ptr) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5tokio7runtime9scheduler12multi_thread6handle140_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$9yield_now17h6eed5f85c01f61bdE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef ptr @"_ZN5tokio7runtime9scheduler12multi_thread6handle140_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$7release17hd239d3481230f742E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef ptr @"_ZN5tokio7runtime9scheduler14current_thread134_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$7release17h81b92629685ce7d0E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN5tokio7runtime4task5state5State22transition_to_complete17hb27dfb94d4927aceE(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN5tokio7runtime4task5state5State22transition_to_terminal17hbe80bd7489bcd841E(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5tokio7runtime4task4core7Trailer9wake_join17hde58970b9445298fE(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN5tokio7runtime4task5state5State26unset_waker_after_complete17h026f36bf9d9b5710E(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN5tokio7runtime4task5state5State22transition_to_shutdown17h79fe3d1e61da0d7bE(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_ZN5tokio7runtime8blocking4pool7Spawner10spawn_task17h14133993b20e50b6E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull, i1 noundef zeroext, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5tokio7runtime10task_hooks9TaskHooks5spawn17ha0e35eabddcc960eE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5tokio7runtime9scheduler12multi_thread6worker73_$LT$impl$u20$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$34schedule_option_task_without_yield17h39268c2cda2bdf12E"(ptr noundef nonnull align 8, ptr noundef) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare i64 @"_ZN65_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone19clone_non_singleton17hd8faa5c91c028cfbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN4rhai9tokenizer5Token14literal_syntax17h022e30f041a4e210E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN12tracing_core10dispatcher8Dispatch9try_close17h90d608143a7d1e6dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN57_$LT$http..method..Method$u20$as$u20$core..fmt..Debug$GT$3fmt17h47fa77aea298892dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$http..header..name..HeaderName$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h4ec564a9537d44e8E"(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN92_$LT$bumparaw_collections..map..RawMap$u20$as$u20$milli..update..new..document..Document$GT$15top_level_field17h467269755f502d33E"(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 8 captures(address) dereferenceable(320), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @"_ZN92_$LT$bumparaw_collections..map..RawMap$u20$as$u20$milli..update..new..document..Document$GT$22top_level_fields_count17h0883d79f8253f2f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN90_$LT$tracing_core..span..Attributes$u20$as$u20$tracing_subscriber..field..RecordFields$GT$6record17h25f6120197ba10dcE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN86_$LT$tracing_core..span..Record$u20$as$u20$tracing_subscriber..field..RecordFields$GT$6record17hd5432abb8f9ca8f0E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN86_$LT$tracing_core..event..Event$u20$as$u20$tracing_subscriber..field..RecordFields$GT$6record17h07b3d157ebc3aaedE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN57_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Debug$GT$3fmt17hcf7df8db02731ce2E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN6flate23crc14impl_crc32fast3Crc6update17h753381d122cdba06E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef i64 @_ZN8foldhash15hash_bytes_long17hb63b6ecbd16360eeE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN8foldhash17hash_bytes_medium17h6c5462d152f74a00E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_fields_finish17h0cfcbb638c0202c7E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN50_$LT$std..fs..File$u20$as$u20$core..fmt..Debug$GT$3fmt17hc41d98b3344acb36E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_ZN10serde_json5error10make_error17h0aca2ec88570a3b5E(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #70

; Function Attrs: nonlazybind uwtable
declare void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$10record_str17h6d205ef19a572cacE"(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN94_$LT$tracing_subscriber..fmt..format..DefaultVisitor$u20$as$u20$tracing_core..field..Visit$GT$12record_error17hecc016bdaac075b6E"(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN82_$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$u20$as$u20$core..fmt..Debug$GT$3fmt17h210a165857e155fbE"(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @mdb_txn_abort(ptr noundef) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @"_ZN89_$LT$milli..search..new..matches..MatchBounds$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17hb840e51a18b85007E"(ptr dead_on_unwind noalias noundef writable sret([752 x i8]) align 8 captures(address) dereferenceable(752), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN77_$LT$milli..search..new..matches..MatchBounds$u20$as$u20$utoipa..ToSchema$GT$7schemas17hc92d8941b8b2314cE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN66_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Display$GT$3fmt17h031314d5fbfe9c00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h23cf1d30feee96e4E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h5b4061b4948bf14cE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha85601c498e5b8b7E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3069c76db93285fbE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he24a478c1366d808E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h5272a74365df404cE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hb1c3465404ea17e5E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3d53fef4ef0b464fE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264df20c0a921c22E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h796c775f5a4a984bE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h940cfb47f23fff8cE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #35

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1454cdbf54494b06E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #35

; Function Attrs: nonlazybind uwtable
declare void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$10clone_from17h3b1113510cb58582E"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN78_$LT$rustls_pki_types..server_name..ServerName$u20$as$u20$core..fmt..Debug$GT$3fmt17hc5b91c5c467b6228E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare void @"_ZN68_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop18drop_non_singleton17h8539b3518a87e87fE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare void @"_ZN68_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop18drop_non_singleton17hdb49387472a5ab4dE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare void @"_ZN68_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop18drop_non_singleton17h76dfe6a826cd8f21E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare void @"_ZN68_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop18drop_non_singleton17haf41491c561bb915E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare void @"_ZN68_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop18drop_non_singleton17h9bf87e7d9eb192bfE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare void @"_ZN68_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop18drop_non_singleton17h07103126fc48a906E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN73_$LT$rhai..types..parse_error..LexError$u20$as$u20$core..fmt..Display$GT$3fmt17h96b5e94b1ac4980aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17h2fb6b2129e0605faE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN93_$LT$milli..attribute_patterns..AttributePatterns$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17he8c90a3f12c7739fE"(ptr dead_on_unwind noalias noundef writable sret([752 x i8]) align 8 captures(address) dereferenceable(752), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN83_$LT$meilisearch_types..locales..Locale$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17h636017b9eb62356fE"(ptr dead_on_unwind noalias noundef writable sret([752 x i8]) align 8 captures(address) dereferenceable(752), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN81_$LT$milli..attribute_patterns..AttributePatterns$u20$as$u20$utoipa..ToSchema$GT$7schemas17hd2b47bd3eded5c2cE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN71_$LT$meilisearch_types..locales..Locale$u20$as$u20$utoipa..ToSchema$GT$7schemas17hf2d1d97a908e0598E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN40_$LT$str$u20$as$u20$zeroize..Zeroize$GT$7zeroize17h3aedbaf58958711fE"(ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN75_$LT$rustls..webpki..VerifierBuilderError$u20$as$u20$core..fmt..Display$GT$3fmt17h0673d4c334f3e68dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN57_$LT$std..env..VarError$u20$as$u20$core..fmt..Display$GT$3fmt17h8714fd71d9c01393E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN86_$LT$meilisearch_types..versioning..VersionFileError$u20$as$u20$core..fmt..Display$GT$3fmt17hab980c5ccf0cdebeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN71_$LT$rayon_core..ThreadPoolBuildError$u20$as$u20$core..fmt..Display$GT$3fmt17h5e2e03bcddf17713E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN61_$LT$toml..de..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h6248b1efda709646E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN57_$LT$dump..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h677382ec12a7c211E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #35

; Function Attrs: nonlazybind uwtable
declare void @"_ZN90_$LT$base64..engine..general_purpose..GeneralPurpose$u20$as$u20$base64..engine..Engine$GT$15internal_decode17he366f845365a0b7dE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(323), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull align 1, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN85_$LT$meilisearch_types..index_uid..IndexUid$u20$as$u20$core..str..traits..FromStr$GT$8from_str17haf666c177dc6229eE"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN6flate23crc14impl_crc32fast3Crc3new17h67c7dd1c6341d98eE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_ZN6flate22gz10bad_header17hf53491864857b5afE() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_ZN6flate22gz7corrupt17hdab2de0c993d2283E() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN6flate23mem10Decompress3new17h291e4726c574495cE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN94_$LT$flate2..gz..GzHeader$u20$as$u20$core..convert..From$LT$flate2..gz..GzHeaderParser$GT$$GT$4from17h74bf1629d620d90bE"(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare i64 @"_ZN60_$LT$flate2..mem..Decompress$u20$as$u20$flate2..zio..Ops$GT$7run_vec17h8e5495263c24c52eE"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24), i8 noundef range(i8 0, 5)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare i64 @"_ZN60_$LT$flate2..mem..Decompress$u20$as$u20$flate2..zio..Ops$GT$3run17h7f61b8b56e798308E"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull align 1, i64 noundef, i8 noundef range(i8 0, 5)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN52_$LT$f32$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17h8c0d11927218de64E"(ptr dead_on_unwind noalias noundef writable sret([752 x i8]) align 8 captures(address) dereferenceable(752), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN6utoipa7openapi4path8PathItem16merge_operations17hc271c62e46e1ac03E(ptr noalias noundef align 8 dereferenceable(4304), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(4304)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN6utoipa7openapi7OpenApi10merge_from17h6d26287b2176d428E(ptr dead_on_unwind noalias noundef writable sret([824 x i8]) align 8 captures(address) dereferenceable(824), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(824), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(824)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN132_$LT$actix_http..header..shared..content_encoding..ContentEncoding$u20$as$u20$actix_http..header..into_value..TryIntoHeaderValue$GT$14try_into_value17hffbd959462c79604E"(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), i8 noundef range(i8 0, 5)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN113_$LT$actix_web_lab..cache_control..CacheControl$u20$as$u20$actix_http..header..into_value..TryIntoHeaderValue$GT$14try_into_value17hd87eb6757d1304b1E"(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN55_$LT$h2..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hff78fd470a4d7eeaE"(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN6anyhow3fmt42_$LT$impl$u20$anyhow..error..ErrorImpl$GT$5debug17h22a71e1f002165e7E"(ptr noundef nonnull, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$9put_slice17he91f65def23323d7E"(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN76_$LT$cidr..errors..NetworkLengthTooLongError$u20$as$u20$core..fmt..Debug$GT$3fmt17hd6d28c0e79990a33E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN78_$LT$cidr..errors..NetworkLengthTooLongError$u20$as$u20$core..fmt..Display$GT$3fmt17hf83ec854dfef91c8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN8foldhash4seed19gen_per_hasher_seed17h40665e60abfadd55E() unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_ZN8foldhash4seed6global10GlobalSeed9init_slow17heea34a4b01fb9b4fE() unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare void @_ZN9actix_web3web5scope17h83d0c7e0f336c2a8E(ptr dead_on_unwind noalias noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN69_$LT$http..header..value..HeaderValue$u20$as$u20$core..fmt..Debug$GT$3fmt17h963513f3506a1c44E"(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2
end_hunk_3
begin_hunk_4_@"_ZN84_$LT$bool$u20$as$u20$meilisearch_types..deserr..query_params..FromQueryParameter$GT$16from_query_param17he587c7c163b490bdE"
declare void @"_ZN84_$LT$bool$u20$as$u20$meilisearch_types..deserr..query_params..FromQueryParameter$GT$16from_query_param17he587c7c163b490bdE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN10actix_http10extensions10Extensions6extend17hd651424c8cdb1aecE(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN9actix_web4rmap11ResourceMap10match_name17h728f5d4b0368faa2E(ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN9actix_web4info14ConnectionInfo3new17h4139c785aa3a5c26E(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN63_$LT$$RF$str$u20$as$u20$actix_router..pattern..IntoPatterns$GT$8patterns17h4a7ad9cf50e75d68E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN9actix_web8response10http_codes61_$LT$impl$u20$actix_web..response..response..HttpResponse$GT$16MethodNotAllowed17h31f114380fb87b68E"(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN10actix_http6header3map9HeaderMap3new17h0dfa7120b8713e36E(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable_or_null(64) ptr @_ZN9actix_web8response7builder19HttpResponseBuilder5inner17h228ba4e10ccd7ac0E(ptr noalias noundef align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 1114112) i32 @_ZN9byte_unit6common19get_char_from_bytes17h3278923d4ab29cc8E(i8 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN78_$LT$rust_decimal..decimal..Decimal$u20$as$u20$core..ops..arith..AddAssign$GT$10add_assign17h830300418ac00dd0E"(ptr noalias noundef align 4 dereferenceable(16), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN9byte_unit4unit5parse8read_xib17h2d84fa7f2a734216E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i1 noundef zeroext, i8, ptr noundef nonnull, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 2) i8 @"_ZN65_$LT$rust_decimal..decimal..Decimal$u20$as$u20$core..cmp..Ord$GT$3cmp17h15260d3ac525b478E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN12rust_decimal7decimal7Decimal4ceil17h0de2e8be52f0bddeE(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @"_ZN80_$LT$rust_decimal..decimal..Decimal$u20$as$u20$num_traits..cast..ToPrimitive$GT$6to_u6417h3f45ba8693bae9d2E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops130_$LT$impl$u20$core..ops..arith..SubAssign$LT$$RF$roaring..bitmap..RoaringBitmap$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$10sub_assign17h264c5df42b061371E"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN4heed6cursor8RwCursor11del_current17hf8f6939c3d3ee09eE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops88_$LT$impl$u20$core..ops..bit..BitOrAssign$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$12bitor_assign17h09102212d483a5f9E"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite7builder11FrozenItems3get17h8232a006ae0a176bE(ptr dead_on_unwind noalias noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$22explode_level_zero_geo17hcf0ca64506284c6eE"(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), i32 noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(152), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite7builder18get_children_cells17h56839557153c4de8E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), i64 noundef range(i64 1, 0)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops86_$LT$impl$u20$core..ops..bit..BitOr$u20$for$u20$$RF$roaring..bitmap..RoaringBitmap$GT$5bitor17h843290a2aaa5c578E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap8inherent79_$LT$impl$u20$core..clone..Clone$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$5clone17h4debcbbb2170dfb6E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite7builder14get_cell_shape17h4b4d0174ccd9b0d8E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare i48 @"_ZN139_$LT$zerometry..Zerometry$u20$as$u20$zerometry..relation..RelationBetweenShapes$LT$geo_types..geometry..multi_polygon..MultiPolygon$GT$$GT$8relation17h59cb8aadfa6cb0b1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i56) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN71_$LT$cellulite..metadata..Version$u20$as$u20$core..default..Default$GT$7default17hcacaaff74eccc834E"(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite9Cellulite11set_version17h1d01d6968d680604E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i64 1, 0) i64 @_ZN3h3o5index4cell9CellIndex13new_unchecked17h23669f4b7fb1e7a1E(i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN7roaring6bitmap3cmp48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$11is_disjoint17ha348ac29f04de799E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$23does_cell_have_children17h84537149144d1b60E"(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops87_$LT$impl$u20$core..ops..bit..BitAnd$u20$for$u20$$RF$roaring..bitmap..RoaringBitmap$GT$6bitand17h4de24adb76117199E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_ZN9getrandom3imp15getrandom_inner17hcc95ace2602abb33E(ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hbda1b32cb3f89ae5E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #77

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h27793721a080f5d1E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h10faf3647939f81dE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h9f4a91183dce6d2fE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h3174008c6fba5935E"(ptr noalias noundef align 8 dereferenceable(40), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h6548e87464b6da1dE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h3e91384f4d7fd971E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h21582f08ffd5e6cbE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h735543a5df864733E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17haaa7a586260f9f22E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8017c784a2f8de75E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd5337b6ce675cfa9E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hed6d773e1d62b7f4E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h06e275c880646753E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h016b03fd850c850bE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h62e5106d99f1b73fE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hba66d3ac0abe6abdE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h65190c6b1ed20d01E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h9e59368a592357f5E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h37a99633993753deE"(ptr noalias noundef align 8 dereferenceable(40), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hfc23a7c8fc51542aE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h77a9c9ef68d52054E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_ZN9once_cell3imp18initialize_or_wait17h8267270b59612bf2E(ptr noundef nonnull align 8, ptr noundef align 1, ptr) unnamed_addr #35

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef align 8 dereferenceable(64) ptr @"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$4init17h3a287387e363e5bcE"(ptr noundef nonnull align 8) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN62_$LT$getrandom..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h5d17286a64b5f174E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #66

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #66

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #70

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #70

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #83

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #70

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #70

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #70

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #84

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #70

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #77

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #77

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #77

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #70

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #70

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #70

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #70

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.smax.i128(i128, i128) #70

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #70

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #70

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #70

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { cold inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { nofree noinline norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #53 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #55 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { alwaysinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #57 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #58 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #59 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #60 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #61 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #62 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #63 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #64 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #65 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #66 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #67 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #68 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #69 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #70 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #71 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #72 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #73 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #74 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #75 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #76 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #77 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #78 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #79 = { nounwind }
attributes #80 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #81 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #82 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #83 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #84 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #85 = { noreturn }
attributes #86 = { cold }
attributes #87 = { cold noreturn nounwind }
attributes #88 = { "function-inline-cost-multiplier"="2" }
attributes #89 = { "function-inline-cost-multiplier"="4" }
attributes #90 = { noreturn nounwind }
attributes #91 = { cold "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!3 = !{!4, !6, !7}
!4 = distinct !{!4, !5, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E: argument 0"}
!5 = distinct !{!5, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E"}
!6 = distinct !{!6, !5, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E: argument 1"}
!7 = distinct !{!7, !8, !"_ZN10serde_json3ser9Formatter10write_null17h9e4653a62b07830cE: argument 0"}
!8 = distinct !{!8, !"_ZN10serde_json3ser9Formatter10write_null17h9e4653a62b07830cE"}
!9 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{i8 0, i8 42}
!12 = !{}
!13 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN10serde_json3ser9Formatter9write_f6417hb66451e56c3ed19dE: argument 0"}
!16 = distinct !{!16, !"_ZN10serde_json3ser9Formatter9write_f6417hb66451e56c3ed19dE"}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!19, !21, !22}
!19 = distinct !{!19, !20, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E: argument 0"}
!20 = distinct !{!20, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E"}
!21 = distinct !{!21, !20, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E: argument 1"}
!22 = distinct !{!22, !23, !"_ZN10serde_json3ser9Formatter12begin_object17hcb0875213cab8a32E: argument 0"}
!23 = distinct !{!23, !"_ZN10serde_json3ser9Formatter12begin_object17hcb0875213cab8a32E"}
!24 = !{!25, !27, !28}
!25 = distinct !{!25, !26, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E: argument 0"}
!26 = distinct !{!26, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E"}
!27 = distinct !{!27, !26, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E: argument 1"}
!28 = distinct !{!28, !29, !"_ZN10serde_json3ser9Formatter10end_object17ha3fcef866262af5cE: argument 0"}
!29 = distinct !{!29, !"_ZN10serde_json3ser9Formatter10end_object17ha3fcef866262af5cE"}
!30 = !{!31, !33, !34}
!31 = distinct !{!31, !32, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E: argument 0"}
!32 = distinct !{!32, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E"}
!33 = distinct !{!33, !32, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E: argument 1"}
!34 = distinct !{!34, !35, !"_ZN10serde_json3ser9Formatter11begin_array17ha450a28520e58675E: argument 0"}
!35 = distinct !{!35, !"_ZN10serde_json3ser9Formatter11begin_array17ha450a28520e58675E"}
!36 = !{!37, !39, !40}
!37 = distinct !{!37, !38, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E: argument 0"}
!38 = distinct !{!38, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E"}
!39 = distinct !{!39, !38, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E: argument 1"}
!40 = distinct !{!40, !41, !"_ZN10serde_json3ser9Formatter9end_array17h50e4a45871f29e69E: argument 0"}
!41 = distinct !{!41, !"_ZN10serde_json3ser9Formatter9end_array17h50e4a45871f29e69E"}
!42 = !{!43, !45, !46, !48, !50}
!43 = distinct !{!43, !44, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E: argument 0"}
!44 = distinct !{!44, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E"}
!45 = distinct !{!45, !44, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E: argument 1"}
!46 = distinct !{!46, !47, !"_ZN10serde_json3ser9Formatter12begin_string17hc6c875bb2cd938fbE: argument 0"}
!47 = distinct !{!47, !"_ZN10serde_json3ser9Formatter12begin_string17hc6c875bb2cd938fbE"}
!48 = distinct !{!48, !49, !"_ZN10serde_json3ser18format_escaped_str17h9f4c3019cf9718abE: argument 0"}
!49 = distinct !{!49, !"_ZN10serde_json3ser18format_escaped_str17h9f4c3019cf9718abE"}
!50 = distinct !{!50, !49, !"_ZN10serde_json3ser18format_escaped_str17h9f4c3019cf9718abE: argument 1"}
!51 = !{!50}
!52 = !{!53, !55, !56, !48, !50}
!53 = distinct !{!53, !54, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E: argument 0"}
!54 = distinct !{!54, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E"}
!55 = distinct !{!55, !54, !"_ZN3std2io5Write9write_all17h0fd6e694f06bfcc3E: argument 1"}
!56 = distinct !{!56, !57, !"_ZN10serde_json3ser9Formatter10end_string17ha2d8dd3999f92111E: argument 0"}
!57 = distinct !{!57, !"_ZN10serde_json3ser9Formatter10end_string17ha2d8dd3999f92111E"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN10serde_json3ser18format_escaped_str17hcd93f039a065653cE: argument 0"}
!60 = distinct !{!60, !"_ZN10serde_json3ser18format_escaped_str17hcd93f039a065653cE"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17hf3c40b0fddf7144bE: argument 0"}
!63 = distinct !{!63, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17hf3c40b0fddf7144bE"}
!64 = !{i64 0, i64 -9223372036854775808}
end_hunk_4
