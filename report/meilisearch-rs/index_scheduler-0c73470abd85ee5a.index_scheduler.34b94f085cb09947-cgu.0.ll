Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN66_$LT$geojson..geometry..Geometry$u20$as$u20$core..clone..Clone$GT$5clone17h099f12175d907343E":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180421)
  %i.v = load i64, ptr %1, align 8, !range !210, !alias.scope !180421, !noalias !180420, !noundef !57
  switch i64 %i.v, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
    i64 5, label %bb.l
    i64 6, label %bb.q
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.w, align 8, !alias.scope !180421, !noalias !180420, !nonnull !57, !noundef !57
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i = load i64, ptr %i.x, align 8, !alias.scope !180421, !noalias !180420, !noundef !57 ; 5 uses
  %i.y = shl i64 %.val1.i, 3                      ; 6 uses
  %i.z = icmp ugt i64 %.val1.i, 2305843009213693951
  %i.aa = icmp ugt i64 %i.y, 9223372036854775800
  %or.cond.i.i.i.i.i29 = or i1 %i.z, %i.aa
  br i1 %or.cond.i.i.i.i.i29, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i30, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i30: ; preds = %bb.f
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %.noexc, label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i30
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !180422
  %i.ac = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.y, i64 noundef range(i64 1, 9) 8) #79, !noalias !180422 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.invoke, label %.noexc

.noexc:                                           ; preds = %bb.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i30
  %.sroa.10.0.i.i.i31 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i30 ], [ %i.ac, %bb.g ] ; 2 uses
  %.sroa.4.0.i.i.i32 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i30 ], [ %.val1.i, %bb.g ] ; 2 uses
  %i.ae = icmp samesign ule i64 %.val1.i, %.sroa.4.0.i.i.i32
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i31, ptr nonnull readonly align 8 %.val.i, i64 %i.y, i1 false), !noalias !180423
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.4.0.i.i.i32, ptr %i.af, align 8, !noalias !180421
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.10.0.i.i.i31, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !180421
  %.sroa.5.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.val1.i, ptr %.sroa.5.0..sroa_idx52, align 8, !noalias !180421
  store i64 0, ptr %i.j, align 8, !alias.scope !180420, !noalias !180421
  br label %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !180424
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load ptr, ptr %i.ag, align 8, !alias.scope !180421, !noalias !180420, !nonnull !57, !noundef !57
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5.i = load i64, ptr %i.ah, align 8, !alias.scope !180421, !noalias !180420, !noundef !57
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h402419e1583fedfcE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr nonnull %.val4.i, i64 %.val5.i)
          to label %.noexc8 unwind label %bb.x, !inline_history !180378

.noexc8:                                          ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !180421
  store i64 1, ptr %i.j, align 8, !alias.scope !180420, !noalias !180421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !180424
  br label %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !180424
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load ptr, ptr %i.aj, align 8, !alias.scope !180421, !noalias !180420, !nonnull !57, !noundef !57
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i = load i64, ptr %i.ak, align 8, !alias.scope !180421, !noalias !180420, !noundef !57
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h402419e1583fedfcE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr nonnull %.val2.i, i64 %.val3.i)
          to label %.noexc9 unwind label %bb.x, !inline_history !180378

.noexc9:                                          ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !180421
  store i64 2, ptr %i.j, align 8, !alias.scope !180420, !noalias !180421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !180424
  br label %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !180424
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val8.i = load ptr, ptr %i.am, align 8, !alias.scope !180421, !noalias !180420, !nonnull !57, !noundef !57
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val9.i = load i64, ptr %i.an, align 8, !alias.scope !180421, !noalias !180420, !noundef !57
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha2a7ec1b91d9b315E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr nonnull %.val8.i, i64 %.val9.i)
          to label %.noexc10 unwind label %bb.x, !inline_history !180378

.noexc10:                                         ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !180421
  store i64 3, ptr %i.j, align 8, !alias.scope !180420, !noalias !180421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !180424
  br label %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !180424
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val6.i = load ptr, ptr %i.ap, align 8, !alias.scope !180421, !noalias !180420, !nonnull !57, !noundef !57
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val7.i = load i64, ptr %i.aq, align 8, !alias.scope !180421, !noalias !180420, !noundef !57
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha2a7ec1b91d9b315E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr nonnull %.val6.i, i64 %.val7.i)
          to label %.noexc11 unwind label %bb.x, !inline_history !180378

.noexc11:                                         ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !180421
  store i64 4, ptr %i.j, align 8, !alias.scope !180420, !noalias !180421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !180424
  br label %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"

bb.l:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10.i = load ptr, ptr %i.as, align 8, !alias.scope !180421, !noalias !180420, !nonnull !57, !noundef !57 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11.i = load i64, ptr %i.at, align 8, !alias.scope !180421, !noalias !180420, !noundef !57 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180425)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !180426
  %i.au = mul i64 %.val11.i, 24                   ; 4 uses
  %or.cond.i.i.i.i.i21 = icmp ugt i64 %.val11.i, 384307168202282325
  br i1 %or.cond.i.i.i.i.i21, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i22, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i22: ; preds = %bb.l
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.thread.i.i", label %bb.m

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.thread.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i22
  %i.aw = icmp eq i64 %.val11.i, 0
  tail call void @llvm.assume(i1 %i.aw)
  store i64 0, ptr %i.b, align 8, !noalias !180426
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ax, align 8, !noalias !180426
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.noexc12

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i22
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !180427
  %i.az = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.au, i64 noundef range(i64 1, 9) 8) #79, !noalias !180427 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.invoke, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i": ; preds = %bb.m
  store i64 %.val11.i, ptr %i.b, align 8, !noalias !180426
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !noalias !180426
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %.val10.i, i64 %.val11.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i"
  %.sroa.014.025.i.i = phi ptr [ %i.bj, %bb.o ], [ %.val10.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i" ] ; 4 uses
  %.sroa.7.024.i.i = phi i64 [ %i.bi, %bb.o ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i" ] ; 3 uses
  %.sroa.10.023.i.i = phi i64 [ %i.be, %bb.o ], [ %.val11.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.i.i" ]
  %i.be = add nsw i64 %.sroa.10.023.i.i, -1       ; 2 uses
  %i.bf = icmp eq ptr %.sroa.014.025.i.i, %i.bd
  br i1 %i.bf, label %.noexc12, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !180426
  %i.bg = getelementptr i8, ptr %.sroa.014.025.i.i, i64 8
  %.val.i.i23 = load ptr, ptr %i.bg, align 8, !alias.scope !180425, !noalias !180428, !nonnull !57, !noundef !57
  %i.bh = getelementptr i8, ptr %.sroa.014.025.i.i, i64 16
  %.val11.i.i24 = load i64, ptr %i.bh, align 8, !alias.scope !180425, !noalias !180428, !noundef !57
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha2a7ec1b91d9b315E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %.val.i.i23, i64 %.val11.i.i24)
          to label %bb.o unwind label %bb.p, !noalias !180426

bb.o:                                             ; preds = %bb.n
  %i.bi = add nuw nsw i64 %.sroa.7.024.i.i, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.014.025.i.i, i64 24
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.sroa.7.024.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !180426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !180426
  %i.bl = icmp eq i64 %i.be, 0
  br i1 %i.bl, label %.noexc12, label %.lr.ph.i.i

bb.p:                                             ; preds = %bb.n
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.024.i.i, ptr %i.bc, align 8, !alias.scope !180429, !noalias !180426
  call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$$GT$$GT$17hb1faba45ef0d5216E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #81, !noalias !180426
  br label %.body19

.noexc12:                                         ; preds = %bb.o, %.lr.ph.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.thread.i.i"
  %i.bm = phi ptr [ %i.ay, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h1b8af89e63a58f7cE.exit.thread.i.i" ], [ %i.bc, %.lr.ph.i.i ], [ %i.bc, %bb.o ]
  store i64 %.val11.i, ptr %i.bm, align 8, !noalias !180426
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !180426
  store i64 5, ptr %i.j, align 8, !alias.scope !180420, !noalias !180421
  br label %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"

bb.q:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180430)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !180430, !noalias !180431, !nonnull !57, !noundef !57 ; 2 uses
  %i.br = load i64, ptr %i.bo, align 8, !alias.scope !180430, !noalias !180431, !noundef !57 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !180432
  %i.bs = shl i64 %i.br, 7                        ; 5 uses
  %i.bt = icmp ugt i64 %i.br, 144115188075855871
  %i.bu = icmp ugt i64 %i.bs, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.bt, %i.bu
  br i1 %or.cond.i.i.i, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.q
  %i.bv = icmp eq i64 %i.bs, 0
  br i1 %i.bv, label %.noexc18.thread, label %bb.r

.noexc18.thread:                                  ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.bw = icmp eq i64 %i.br, 0
  tail call void @llvm.assume(i1 %i.bw)
  store i64 0, ptr %i.d, align 8, !noalias !180432
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bx, align 8, !noalias !180432
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.noexc13

bb.r:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !180433
  %i.bz = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bs, i64 noundef range(i64 1, 9) 8) #79, !noalias !180433 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %.invoke, label %.noexc18

.invoke:                                          ; preds = %bb.q, %bb.r, %bb.l, %bb.m, %bb.f, %bb.g
  %i.cb = phi i64 [ 0, %bb.l ], [ 0, %bb.f ], [ 8, %bb.g ], [ 8, %bb.m ], [ 8, %bb.r ], [ 0, %bb.q ]
  %i.cc = phi i64 [ %i.au, %bb.l ], [ %i.y, %bb.f ], [ %i.y, %bb.g ], [ %i.au, %bb.m ], [ %i.bs, %bb.r ], [ %i.bs, %bb.q ]
  %i.cd = phi ptr [ @4879, %bb.l ], [ @4878, %bb.f ], [ @4878, %bb.g ], [ @4879, %bb.m ], [ @4879, %bb.r ], [ @4879, %bb.q ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.cb, i64 %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cd) #80
          to label %.cont unwind label %bb.x

.cont:                                            ; preds = %.invoke
  unreachable

.noexc18:                                         ; preds = %bb.r
  store i64 %i.br, ptr %i.d, align 8, !noalias !180432
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bz, ptr %i.ce, align 8, !noalias !180432
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.cg = getelementptr inbounds nuw [128 x i8], ptr %i.bq, i64 %i.br
  %2 = icmp eq i64 %i.br, 0
  br i1 %2, label %.noexc13, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc18, %bb.t
  %.sroa.055.070 = phi ptr [ %i.ck, %bb.t ], [ %i.bq, %.noexc18 ] ; 3 uses
  %.sroa.757.069 = phi i64 [ %i.cj, %bb.t ], [ 0, %.noexc18 ] ; 3 uses
  %.sroa.10.068 = phi i64 [ %i.ch, %bb.t ], [ %i.br, %.noexc18 ]
  %i.ch = add nsw i64 %.sroa.10.068, -1           ; 2 uses
  %i.ci = icmp eq ptr %.sroa.055.070, %i.cg
  br i1 %i.ci, label %.noexc13, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !180432
  invoke fastcc void @"_ZN66_$LT$geojson..geometry..Geometry$u20$as$u20$core..clone..Clone$GT$5clone17h099f12175d907343E"(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %.sroa.055.070)
          to label %bb.t unwind label %bb.v, !noalias !180434, !inline_history !180400

bb.t:                                             ; preds = %bb.s
  %i.cj = add nuw nsw i64 %.sroa.757.069, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.055.070, i64 128
  %i.cl = getelementptr inbounds nuw [128 x i8], ptr %i.bz, i64 %.sroa.757.069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cl, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false), !noalias !180434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !180432
  %i.cm = icmp eq i64 %i.ch, 0
  br i1 %i.cm, label %.noexc13, label %.lr.ph

bb.u:                                             ; preds = %bb.v
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !180434, !inline_history !180400
  unreachable

bb.v:                                             ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.757.069, ptr %i.cf, align 8, !alias.scope !180435, !noalias !180434
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$geojson..geometry..Geometry$GT$$GT$17hec68bcf1c00fe9faE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #81
          to label %.body19 unwind label %bb.u, !noalias !180434, !inline_history !180400

.noexc13:                                         ; preds = %bb.t, %.lr.ph, %.noexc18.thread, %.noexc18
  %3 = phi ptr [ %i.by, %.noexc18.thread ], [ %i.cf, %.noexc18 ], [ %i.cf, %.lr.ph ], [ %i.cf, %bb.t ]
  store i64 %i.br, ptr %3, align 8, !noalias !180432
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !180432
  store i64 6, ptr %i.j, align 8, !alias.scope !180420, !noalias !180421
  br label %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"

.body19:                                          ; preds = %bb.v, %bb.p, %bb.x, %.body
  %.pn = phi { ptr, i32 } [ %i.df, %.body ], [ %lpad.loopexit, %bb.v ], [ %i.cq, %bb.x ], [ %lpad.loopexit.i.i, %bb.p ]
  %switch.i = icmp sgt i64 %.sroa.0.058, 0
  br i1 %switch.i, label %bb.w, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h31226e75a5788addE.exit"

bb.w:                                             ; preds = %.body19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  %i.cp = shl nuw i64 %.sroa.0.058, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.cp, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !180436
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h31226e75a5788addE.exit"

bb.x:                                             ; preds = %.invoke, %bb.k, %bb.j, %bb.i, %bb.h
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body19

"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit": ; preds = %.noexc13, %.noexc12, %.noexc11, %.noexc10, %.noexc9, %.noexc8, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cs = load i64, ptr %i.cr, align 8, !range !83, !noundef !57
  %.not5 = icmp eq i64 %i.cs, -9223372036854775808
  br i1 %.not5, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180437)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !180438
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) @30, i64 32, i1 false), !noalias !180438
  store i64 0, ptr %i.e, align 8, !noalias !180438
  %.sroa.4.0..sroa_idx.i.i15 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i15, align 8, !noalias !180438
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !180438
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180440)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke fastcc void @"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h7ae5461eec122304E"(ptr noalias noundef align 8 dereferenceable(32) %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cu)
          to label %.noexc.i unwind label %bb.aa, !noalias !180441, !inline_history !19

.noexc.i:                                         ; preds = %bb.y
  %i.cv = load i64, ptr %i.e, align 8, !range !56, !alias.scope !180439, !noalias !180442, !noundef !57
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !180443, !noalias !180444, !noundef !57 ; 4 uses
  %i.cy = icmp ult i64 %i.cx, 88686269585142076
  tail call void @llvm.assume(i1 %i.cy), !noalias !180445
  %i.cz = icmp samesign ult i64 %i.cv, %i.cx
  br i1 %i.cz, label %bb.z, label %.noexc2.i

bb.z:                                             ; preds = %.noexc.i
  %i.da = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !180439, !noalias !180442, !noundef !57 ; 2 uses
  %i.db = icmp ult i64 %i.da, 88686269585142076
  tail call void @llvm.assume(i1 %i.db), !noalias !180445
  %i.dc = sub nsw i64 %i.cx, %i.da
  invoke fastcc void @"_ZN8indexmap5inner17Core$LT$K$C$V$GT$15reserve_entries17he8fdee756bd21cb2E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef %i.dc)
          to label %.noexc2.i unwind label %bb.aa, !noalias !180446, !inline_history !19

.noexc2.i:                                        ; preds = %bb.z, %.noexc.i
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !180447, !noalias !180448, !nonnull !57, !noundef !57
  invoke fastcc void @"_ZN75_$LT$$u5b$T$u5d$$u20$as$u20$alloc..slice..SpecCloneIntoVec$LT$T$C$A$GT$$GT$10clone_into17h83c9e47d9ababa86E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.de, i64 noundef %i.cx, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %bb.ad unwind label %bb.aa, !noalias !180446, !inline_history !19

bb.aa:                                            ; preds = %.noexc2.i, %bb.z, %bb.y
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h7726d1a702c0460cE"(ptr noalias noundef align 8 dereferenceable(56) %i.e) #81
          to label %.body unwind label %bb.ab, !noalias !180449, !inline_history !20

bb.ab:                                            ; preds = %bb.aa
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !180449, !inline_history !20
  unreachable

bb.ac:                                            ; preds = %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit", %bb.ad
  %.sroa.0.0 = phi i64 [ -9223372036854775808, %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit" ], [ %.sroa.047.0.copyload, %bb.ad ]
  %i.dh = phi <2 x i64> [ undef, %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit" ], [ %i.dl, %bb.ad ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.058, ptr %i.di, align 8
  %.sroa.6.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx40, align 8
  %.sroa.7.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx42, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.0, ptr %i.dj, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.sroa.0, i64 48, i1 false)
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.dh, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

.body:                                            ; preds = %bb.aa
  invoke void @"_ZN4core3ptr45drop_in_place$LT$geojson..geometry..Value$GT$17hc46b007678d4d889E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j) #81
          to label %.body19 unwind label %bb.ae

bb.ad:                                            ; preds = %.noexc2.i
  %.sroa.047.0.copyload = load i64, ptr %i.e, align 8, !noalias !180437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i.i15, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !180438
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dl = load <2 x i64>, ptr %i.dk, align 8, !alias.scope !180437, !noalias !180441
  br label %bb.ac

bb.ae:                                            ; preds = %.body
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h31226e75a5788addE.exit": ; preds = %bb.w, %.body19
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$index_scheduler..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17ha4ae0c25eb7b2982E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = load i64, ptr %0, align 8, !range !162, !noundef !57 ; 3 uses
  %i.ax = icmp ne i64 %i.aw, 128
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nsw i64 %i.aw, -97
  %i.az = icmp samesign ugt i64 %i.aw, 96
  %i.ba = select i1 %i.az, i64 %i.ay, i64 31
  switch i64 %i.ba, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
end_hunk_0
