Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !21230, !noalias !21231
  %invariant.op.i = sub i64 %2, %i.i              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !21230, !noalias !21231 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !21230, !noalias !21231, !nonnull !17
  %.val10.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !21231, !noalias !21230, !nonnull !17
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.l, %bb.f ] ; 5 uses
  %i.l = add nuw i64 %.sroa.01.034.i.i.i.i, 1     ; 2 uses
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.m = icmp ult i64 %.reass.i.i.i.i, %.val11.i.i.i.i.i
  br i1 %i.m, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.i, i64 %invariant.op.i.i.i.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21235
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i": ; preds = %bb.c
  %.reass.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i ; 2 uses
  %i.n = icmp ult i64 %.reass.i, %.val9.i.i.i.i.i
  br i1 %i.n, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %.val9.i.i.i.i.i, i64 %invariant.op.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax17.i, i64 noundef %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21236
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i, i64 %.reass.i.i.i.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %.reass.i
  %.val12.i.i.i.i.i = load i32, ptr %i.o, align 4, !noalias !21237, !noundef !17
  %.val13.i.i.i.i.i = load i32, ptr %i.p, align 4, !noalias !21237, !noundef !17
  %i.q = icmp eq i32 %.val12.i.i.i.i.i, %.val13.i.i.i.i.i
  br i1 %i.q, label %bb.f, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit

bb.f:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %exitcond.not.i.i.i.i = icmp eq i64 %i.l, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83, label %bb.c

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit: ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %.not = icmp eq i64 %.sroa.01.034.i.i.i.i, 0
  br i1 %.not, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread: ; preds = %bb.b, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit", %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %.sroa.0.0.i82 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit ], [ %.sroa.0.0.i86, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit" ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.r = add i64 %.sroa.0.0.i82, %2               ; 11 uses
  %i.s = add i64 %.sroa.0.0.i82, %5               ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21239)
  %i.t = icmp uge i64 %i.r, %3
  %i.u = icmp uge i64 %i.s, %6
  %or.cond.i21 = or i1 %i.t, %i.u
  br i1 %or.cond.i21, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread
  %i.v = sub nuw i64 %3, %i.r                     ; 2 uses
  %i.w = sub nuw i64 %6, %i.s                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !21239, !noalias !21238
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i23 = load i64, ptr %i.z, align 8, !alias.scope !21239, !noalias !21238 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !21238, !noalias !21239
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i24 = load i64, ptr %i.ac, align 8, !alias.scope !21238, !noalias !21239 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i25 = load ptr, ptr %i.ad, align 8, !alias.scope !21238, !noalias !21239, !nonnull !17
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val10.i.i.i.i.i26 = load ptr, ptr %i.ae, align 8, !alias.scope !21239, !noalias !21238, !nonnull !17
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i22
  %i.af = phi i64 [ %3, %.lr.ph.i.i.i.i22 ], [ %i.ai, %bb.k ]
  %.sroa.01.031.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i22 ], [ %i.aq, %bb.k ] ; 3 uses
  %i.ag = phi i64 [ %6, %.lr.ph.i.i.i.i22 ], [ %i.ah, %bb.k ]
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  %exitcond.not.i.i.i.i27 = icmp eq i64 %.sroa.01.031.i.i.i.i, %i.v
  br i1 %exitcond.not.i.i.i.i27, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = add i64 %i.af, -1                       ; 2 uses
  %i.aj = sub i64 %i.ah, %i.y                     ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %.val11.i.i.i.i.i23
  br i1 %i.ak, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aj, i64 noundef %.val11.i.i.i.i.i23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21240
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28": ; preds = %bb.h
  %i.al = sub i64 %i.ai, %i.ab                    ; 3 uses
  %i.am = icmp ult i64 %i.al, %.val9.i.i.i.i.i24
  br i1 %i.am, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29", label %bb.j

bb.j:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.al, i64 noundef %.val9.i.i.i.i.i24, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21241
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28"
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i26, i64 %i.aj
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i25, i64 %i.al
  %.val12.i.i.i.i.i30 = load i32, ptr %i.an, align 4, !noalias !21242, !noundef !17
  %.val13.i.i.i.i.i31 = load i32, ptr %i.ao, align 4, !noalias !21242, !noundef !17
  %i.ap = icmp eq i32 %.val12.i.i.i.i.i30, %.val13.i.i.i.i.i31
  br i1 %i.ap, label %bb.k, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit

bb.k:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29"
  %i.aq = add nuw i64 %.sroa.01.031.i.i.i.i, 1    ; 2 uses
  %exitcond61.not.i.i.i.i = icmp eq i64 %i.aq, %i.w
  br i1 %exitcond61.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.g

_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit: ; preds = %bb.g, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29", %bb.k, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread
  %.sroa.0.0.i32 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread ], [ %i.v, %bb.g ], [ %.sroa.01.031.i.i.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29" ], [ %i.w, %bb.k ] ; 4 uses
  %i.ar = sub i64 %3, %.sroa.0.0.i32              ; 6 uses
  %i.as = sub i64 %6, %.sroa.0.0.i32              ; 6 uses
  %.not2 = icmp ult i64 %i.r, %i.ar               ; 2 uses
  %.not3 = icmp ult i64 %i.s, %i.as               ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.m, label %bb.n

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83: ; preds = %bb.f, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %.sroa.0.0.i86 = phi i64 [ %.sroa.01.034.i.i.i.i, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit ], [ %.sroa.0.0.i.i.i.i, %bb.f ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !21243, !noalias !21244, !noundef !17 ; 3 uses
  %i.aw = load i64, ptr %i.at, align 8, !range !20, !alias.scope !21243, !noalias !21244, !noundef !17
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

bb.l:                                             ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21245
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit": ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83, %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !21243, !noalias !21244, !nonnull !17, !noundef !17
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %i.av ; 4 uses
  store i64 0, ptr %i.ba, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %2, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %5, ptr %.sroa.557.0..sroa_idx, align 8
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %.sroa.0.0.i86, ptr %.sroa.658.0..sroa_idx, align 8
  %i.bb = add i64 %i.av, 1
  store i64 %i.bb, ptr %i.au, align 8, !alias.scope !21243, !noalias !21244
  br label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread

bb.m:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit
  br i1 %.not3, label %bb.o, label %bb.p

bb.n:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit33", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit35", %bb.y
  %.not5 = icmp eq i64 %.sroa.0.0.i32, 0
  br i1 %.not5, label %bb.ab, label %bb.z

bb.o:                                             ; preds = %bb.m
  br i1 %.not2, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.m
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.ar, i64 %i.r)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !21246, !noalias !21247, !noundef !17 ; 3 uses
  %i.bf = load i64, ptr %i.bc, align 8, !range !20, !alias.scope !21246, !noalias !21247, !noundef !17
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit33"

bb.q:                                             ; preds = %bb.p
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21248
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit33"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit33": ; preds = %bb.p, %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !21246, !noalias !21247, !nonnull !17, !noundef !17
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.be ; 4 uses
  store i64 1, ptr %i.bj, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.r, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %spec.select.i.i, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i64 %i.s, ptr %.sroa.668.0..sroa_idx, align 8
  %i.bk = add i64 %i.be, 1
  store i64 %i.bk, ptr %i.bd, align 8, !alias.scope !21246, !noalias !21247
  br label %bb.n

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17h74207d7c70bc4285E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.r, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.s, i64 noundef %i.as, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.bl = load i64, ptr %i.a, align 8, !range !44, !noundef !17
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %bb.u, label %bb.v

bb.s:                                             ; preds = %bb.o
  %spec.select.i.i3487 = sub nuw i64 %i.as, %i.s
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !21249, !noalias !21250, !noundef !17 ; 3 uses
  %i.bq = load i64, ptr %i.bn, align 8, !range !20, !alias.scope !21249, !noalias !21250, !noundef !17
  %i.br = icmp eq i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit35"

bb.t:                                             ; preds = %bb.s
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21251
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit35"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit35": ; preds = %bb.s, %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !21249, !noalias !21250, !nonnull !17, !noundef !17
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bp ; 4 uses
  store i64 2, ptr %i.bu, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.r, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %i.s, ptr %.sroa.577.0..sroa_idx, align 8
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i64 %spec.select.i.i3487, ptr %.sroa.678.0..sroa_idx, align 8
  %i.bv = add i64 %i.bp, 1
  store i64 %i.bv, ptr %i.bo, align 8, !alias.scope !21249, !noalias !21250
  br label %bb.n

bb.u:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !17 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !noundef !17 ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.r, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.s, i64 noundef %i.bz, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.bx, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bz, i64 noundef %i.as, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  %i.ca = sub nuw i64 %i.ar, %i.r
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !21252, !noalias !21253, !noundef !17 ; 4 uses
  %i.ce = load i64, ptr %i.cb, align 8, !range !20, !alias.scope !21252, !noalias !21253, !noundef !17
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"

bb.w:                                             ; preds = %bb.v
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21254
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36": ; preds = %bb.v, %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !21252, !noalias !21253, !nonnull !17, !noundef !17
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.ch, i64 %i.cd ; 4 uses
  store i64 1, ptr %i.ci, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.r, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %i.ca, ptr %.sroa.562.0..sroa_idx, align 8
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i64 %i.s, ptr %.sroa.663.0..sroa_idx, align 8
  %i.cj = add i64 %i.cd, 1                        ; 3 uses
  store i64 %i.cj, ptr %i.cc, align 8, !alias.scope !21252, !noalias !21253
  %i.ck = sub nuw i64 %i.as, %i.s
  %i.cl = load i64, ptr %i.cb, align 8, !range !20, !alias.scope !21255, !noalias !21256, !noundef !17
  %i.cm = icmp eq i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21257
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36", %bb.x
  %i.cn = load ptr, ptr %i.cg, align 8, !alias.scope !21255, !noalias !21256, !nonnull !17, !noundef !17
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %i.cn, i64 %i.cj ; 4 uses
  store i64 2, ptr %i.co, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %i.r, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %i.s, ptr %.sroa.572.0..sroa_idx, align 8
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store i64 %i.ck, ptr %.sroa.673.0..sroa_idx, align 8
  %i.cp = add i64 %i.cd, 2
  store i64 %i.cp, ptr %i.cc, align 8, !alias.scope !21255, !noalias !21256
  br label %bb.y

bb.y:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37", %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.z:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !21258, !noalias !21259, !noundef !17 ; 3 uses
  %i.ct = load i64, ptr %i.cq, align 8, !range !20, !alias.scope !21258, !noalias !21259, !noundef !17
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.aa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

bb.aa:                                            ; preds = %bb.z
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21260
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38": ; preds = %bb.z, %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !21258, !noalias !21259, !nonnull !17, !noundef !17
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %i.cw, i64 %i.cs ; 4 uses
  store i64 0, ptr %i.cx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %i.as, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 %.sroa.0.0.i32, ptr %.sroa.654.0..sroa_idx, align 8
  %i.cy = add i64 %i.cs, 1
  store i64 %i.cy, ptr %i.cr, align 8, !alias.scope !21258, !noalias !21259
  br label %bb.ab

bb.ab:                                            ; preds = %bb.n, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17h243d15f85d89e788E(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h2065f1dda291ed15E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 14 uses
  %i.d = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hd4a850fbcba52b1fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 10 uses
  %.not2 = icmp ult i64 %i.b, %i.e                ; 2 uses
  %.not3 = icmp ult i64 %i.c, %i.f                ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !21285
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.g, align 8, !alias.scope !21285
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !21286
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21286
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21286
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21286
  %i.i = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.i, i64 %.sroa.4.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.i, i64 %.sroa.52.0.copyload.i, i64 %5
  %i.j = select i1 %i.i, i64 %.sroa.6.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.j, %i.a
  store i64 1, ptr %i.h, align 8, !alias.scope !21286
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21286
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21286
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21286
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not3, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bc, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41", %bb.b, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit", %bb.bb
  %.not5 = icmp eq i64 %i.d, 0
  br i1 %.not5, label %bb.bg, label %bb.bf

bb.f:                                             ; preds = %bb.d
  br i1 %.not2, label %bb.j, label %bb.bb

bb.g:                                             ; preds = %bb.d
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b) ; 2 uses
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !21287
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21287
  %i.l = add i64 %.sroa.5.0.copyload.i, %spec.select.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit"

bb.i:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i22, align 8, !alias.scope !21287
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i21, align 8, !alias.scope !21287
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit": ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.l, %bb.h ], [ %spec.select.i.i, %bb.i ]
  store i64 1, ptr %0, align 8, !alias.scope !21287
  store i64 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21287
  br label %bb.e

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21289)
  %spec.select.i.i.i = sub nuw i64 %i.e, %i.b     ; 12 uses
  %spec.select.i.i56.i83 = sub i64 %i.f, %i.c     ; 7 uses
  %i.m = sub i64 %spec.select.i.i.i, %spec.select.i.i56.i83 ; 5 uses
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0                   ; 4 uses
  %i.o = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808), !noalias !21290
  store i64 0, ptr %i.o, align 8, !noalias !21290
  %i.p = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809), !noalias !21291
  store i64 0, ptr %i.p, align 8, !noalias !21291
  %i.q = add i64 %spec.select.i.i.i, 1
  %i.r = add i64 %i.q, %spec.select.i.i56.i83
  %i.s = lshr i64 %i.r, 1                         ; 3 uses
  %i.t = add nuw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !21288, !noalias !21290, !noundef !17 ; 2 uses
  %i.w = icmp ult i64 %i.v, 1152921504606846976
  tail call void @llvm.assume(i1 %i.w)
  %.not41.not.i = icmp samesign ugt i64 %i.v, %i.s
  br i1 %.not41.not.i, label %bb.l, label %bb.k, !prof !23

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54, !noalias !21291
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !21289, !noalias !21292, !noundef !17 ; 2 uses
  %i.z = icmp ult i64 %i.y, 1152921504606846976
  tail call void @llvm.assume(i1 %i.z)
  %.not42.not.i = icmp samesign ugt i64 %i.y, %i.s
  br i1 %.not42.not.i, label %bb.n, label %bb.m, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54, !noalias !21291
  unreachable

bb.n:                                             ; preds = %bb.l, %._crit_edge120.i
  %.sroa.029.1124.i = phi i64 [ %.sroa.029.1.i, %._crit_edge120.i ], [ 1, %bb.l ] ; 3 uses
  %.sroa.029.0123.i = phi i64 [ %.sroa.029.1124.i, %._crit_edge120.i ], [ 0, %bb.l ] ; 23 uses
  %i.aa = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef range(i32 0, 1000000001) %10), !noalias !21291
  br i1 %i.aa, label %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = sub nsw i64 0, %.sroa.029.0123.i        ; 9 uses
  %i.ac = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0123.i, i64 %i.ab) ; 2 uses
  switch i8 %i.ac, label %.loopexit.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.ad = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.029.0123.i, %bb.o ], [ %i.ad, %bb.p ] ; 2 uses
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.ae = icmp eq i64 %.sroa.029.0123.i, 0        ; 2 uses
  br i1 %i.ae, label %._crit_edge147.i, label %._crit_edge145.i

._crit_edge145.i:                                 ; preds = %bb.q
  %.pre159.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.af = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21291
  %i.ag = load i64, ptr %i.af, align 8, !noalias !21291, !noundef !17
  %i.ah = add i64 %i.ag, 1
  br label %bb.r

._crit_edge147.i:                                 ; preds = %bb.q
  %i.ai = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21291
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !21291, !noundef !17
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge147.i, %._crit_edge145.i
  %.sroa.06.0.peel.i = phi i64 [ %i.aj, %._crit_edge147.i ], [ %i.ah, %._crit_edge145.i ] ; 6 uses
  %i.ak = sub i64 %.sroa.06.0.peel.i, %.sroa.029.0123.i ; 3 uses
  %i.al = icmp ult i64 %.sroa.06.0.peel.i, %spec.select.i.i.i
  %i.am = icmp ult i64 %i.ak, %spec.select.i.i56.i83
  %or.cond107.peel.i = and i1 %i.al, %i.am
  br i1 %or.cond107.peel.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = add i64 %.sroa.06.0.peel.i, %i.b
  %i.ao = add i64 %i.ak, %i.c
  %i.ap = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h2065f1dda291ed15E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.an, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.ao, i64 noundef %i.f), !noalias !21293
  %i.aq = add i64 %i.ap, %.sroa.06.0.peel.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.06.1.peel.i = phi i64 [ %i.aq, %bb.s ], [ %.sroa.06.0.peel.i, %bb.r ]
  %i.ar = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21291
  store i64 %.sroa.06.1.peel.i, ptr %i.ar, align 8, !noalias !21291
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.012.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.as, i1 false)
  %.not47.not.peel.i = icmp slt i64 %.sroa.012.0.peel.i, %.sroa.029.0123.i
  br i1 %.not47.not.peel.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.at = sub i64 0, %i.as
  %i.au = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21291
  %i.av = load i64, ptr %i.au, align 8, !noalias !21291, !noundef !17
  %i.aw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21291
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !21291, !noundef !17
  %i.ay = add i64 %i.ax, %i.av
  %.not48.peel.i = icmp ult i64 %i.ay, %spec.select.i.i.i
  br i1 %.not48.peel.i, label %bb.w, label %.loopexit129.i

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %i.ab
  %or.cond108.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond108.peel.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.w, %bb.ay
  %.sroa.7.0111.i = phi i64 [ %.sroa.7.1.i, %bb.ay ], [ %.sroa.7.1.peel.i, %bb.w ] ; 5 uses
  %i.az = add nsw i64 %.sroa.7.0111.i, -1         ; 8 uses
  %i.ba = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.az, i64 %i.ab)
  switch i8 %i.ba, label %.loopexit.i [
    i8 -1, label %.lr.ph119.preheader.i
    i8 0, label %bb.y
    i8 1, label %bb.x
  ]

.loopexit.i:                                      ; preds = %bb.o, %.lr.ph.peel.next.i
  unreachable

bb.x:                                             ; preds = %.lr.ph.peel.next.i
  %i.bb = add nsw i64 %.sroa.7.0111.i, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.peel.next.i
  %.sroa.7.1.i = phi i64 [ %i.az, %.lr.ph.peel.next.i ], [ %i.bb, %bb.x ] ; 2 uses
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.x ]
  %i.bc = icmp eq i64 %i.az, %i.ab
  br i1 %i.bc, label %bb.at, label %bb.as

.lr.ph119.preheader.i:                            ; preds = %bb.ay, %.lr.ph.peel.next.i, %bb.w
  switch i8 %i.ac, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.aa
    i8 1, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph119.preheader.i
  %i.bd = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph119.preheader.i
  %.sroa.792.1.peel.i = phi i64 [ %.sroa.029.0123.i, %.lr.ph119.preheader.i ], [ %i.bd, %bb.z ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph119.preheader.i ], [ false, %bb.z ]
  br i1 %i.ae, label %._crit_edge150.i, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.aa
  %.pre153.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.be = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21291
  %i.bf = load i64, ptr %i.be, align 8, !noalias !21291, !noundef !17
  %i.bg = add i64 %i.bf, 1
  br label %bb.ab

._crit_edge150.i:                                 ; preds = %bb.aa
  %i.bh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21291
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !21291, !noundef !17
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge150.i, %._crit_edge148.i
  %.sroa.016.0.peel.i = phi i64 [ %i.bi, %._crit_edge150.i ], [ %i.bg, %._crit_edge148.i ] ; 5 uses
  %i.bj = sub i64 %.sroa.016.0.peel.i, %.sroa.029.0123.i ; 4 uses
  %i.bk = icmp ult i64 %.sroa.016.0.peel.i, %spec.select.i.i.i
  %i.bl = icmp ult i64 %i.bj, %spec.select.i.i56.i83
  %or.cond.peel.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.peel.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bm = sub nuw i64 %i.e, %.sroa.016.0.peel.i
  %i.bn = sub i64 %i.f, %i.bj
  %i.bo = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hd4a850fbcba52b1fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.bn), !noalias !21293 ; 2 uses
  %i.bp = add i64 %i.bo, %.sroa.016.0.peel.i
  %i.bq = add i64 %i.bo, %i.bj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.022.0.peel.i = phi i64 [ %i.bq, %bb.ac ], [ %i.bj, %bb.ab ]
  %.sroa.016.1.peel.i = phi i64 [ %i.bp, %bb.ac ], [ %.sroa.016.0.peel.i, %bb.ab ] ; 2 uses
  %i.br = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21291
  store i64 %.sroa.016.1.peel.i, ptr %i.br, align 8, !noalias !21291
  br i1 %.not.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bs = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.026.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.bs, i1 false)
  %.not44.peel.i = icmp sgt i64 %.sroa.026.0.peel.i, %.sroa.029.0123.i
  br i1 %.not44.peel.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = sub i64 0, %i.bs
  %i.bu = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21291
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !21291, !noundef !17
  %i.bw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21291
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !21291, !noundef !17
  %i.by = add i64 %i.bx, %i.bv
  %.not45.peel.i = icmp ult i64 %i.by, %spec.select.i.i.i
  br i1 %.not45.peel.i, label %bb.ag, label %.loopexit136.i

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.not.i57.peel.i = icmp slt i64 %.sroa.792.1.peel.i, %i.ab
  %or.cond109.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i57.peel.i
  br i1 %or.cond109.peel.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i

.lr.ph119.peel.next.i:                            ; preds = %bb.ag, %bb.aq
  %.sroa.792.0116.i = phi i64 [ %.sroa.792.1.i, %bb.aq ], [ %.sroa.792.1.peel.i, %bb.ag ] ; 5 uses
  %i.bz = add nsw i64 %.sroa.792.0116.i, -1       ; 8 uses
  %i.ca = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bz, i64 %i.ab)
  switch i8 %i.ca, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.ai
    i8 1, label %bb.ah
  ]

.loopexit135.i:                                   ; preds = %.lr.ph119.preheader.i, %.lr.ph119.peel.next.i
  unreachable

bb.ah:                                            ; preds = %.lr.ph119.peel.next.i
  %i.cb = add nsw i64 %.sroa.792.0116.i, -2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph119.peel.next.i
  %.sroa.792.1.i = phi i64 [ %i.bz, %.lr.ph119.peel.next.i ], [ %i.cb, %bb.ah ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph119.peel.next.i ], [ false, %bb.ah ]
  %i.cc = icmp eq i64 %i.bz, %i.ab
  br i1 %i.cc, label %bb.ak, label %bb.aj

._crit_edge120.i:                                 ; preds = %bb.aq, %.lr.ph119.peel.next.i, %bb.o, %bb.ag, %.lr.ph119.preheader.i
  %i.cd = icmp slt i64 %.sroa.029.1124.i, %i.t    ; 2 uses
  %i.ce = zext i1 %i.cd to i64
  %.sroa.029.1.i = add nuw nsw i64 %.sroa.029.1124.i, %i.ce
  br i1 %i.cd, label %bb.n, label %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit

bb.aj:                                            ; preds = %bb.ai
  %.not43.i = icmp eq i64 %i.bz, %.sroa.029.0123.i
  %.pre151.i = add nsw i64 %.sroa.792.0116.i, -2  ; 2 uses
  br i1 %.not43.i, label %._crit_edge149.i, label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.ai
  %i.cf = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21291
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !21291, !noundef !17
  br label %bb.am

._crit_edge149.i:                                 ; preds = %bb.al, %bb.aj
  %i.ch = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21291
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !21291, !noundef !17
  %i.cj = add i64 %i.ci, 1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ck = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814), !noalias !21291
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !21291, !noundef !17
  %i.cm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815), !noalias !21291
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !21291, !noundef !17
  %i.co = icmp ult i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.ak, label %._crit_edge149.i

bb.am:                                            ; preds = %._crit_edge149.i, %bb.ak
  %.sroa.016.0.i = phi i64 [ %i.cg, %bb.ak ], [ %i.cj, %._crit_edge149.i ] ; 5 uses
  %i.cp = sub i64 %.sroa.016.0.i, %i.bz           ; 4 uses
  %i.cq = icmp ult i64 %.sroa.016.0.i, %spec.select.i.i.i
  %i.cr = icmp ult i64 %i.cp, %spec.select.i.i56.i83
  %or.cond.i = and i1 %i.cq, %i.cr
  br i1 %or.cond.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %.sroa.022.0.i = phi i64 [ %i.cx, %bb.ao ], [ %i.cp, %bb.am ]
  %.sroa.016.1.i = phi i64 [ %i.cw, %bb.ao ], [ %.sroa.016.0.i, %bb.am ] ; 2 uses
  %i.cs = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21291
  store i64 %.sroa.016.1.i, ptr %i.cs, align 8, !noalias !21291
  br i1 %.not.i, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.ct = sub nuw i64 %i.e, %.sroa.016.0.i
  %i.cu = sub i64 %i.f, %i.cp
  %i.cv = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hd4a850fbcba52b1fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.cu), !noalias !21293 ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.016.0.i
  %i.cx = add i64 %i.cv, %i.cp
  br label %bb.an

bb.ap:                                            ; preds = %bb.an
  %i.cy = sub i64 %i.bz, %i.m                     ; 2 uses
  %.sroa.026.0.i = tail call i64 @llvm.abs.i64(i64 %i.cy, i1 false)
  %.not44.i = icmp sgt i64 %.sroa.026.0.i, %.sroa.029.0123.i
  br i1 %.not44.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.ap, %bb.an
  %.not.i57.i = icmp slt i64 %.sroa.792.1.i, %i.ab
  %or.cond109.i = select i1 %.sroa.12.1.i, i1 true, i1 %.not.i57.i
  br i1 %or.cond109.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i, !llvm.loop !21273

bb.ar:                                            ; preds = %bb.ap
  %i.cz = sub i64 0, %i.cy
  %i.da = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21291
  %i.db = load i64, ptr %i.da, align 8, !noalias !21291, !noundef !17
  %i.dc = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21291
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !21291, !noundef !17
  %i.de = add i64 %i.dd, %i.db
  %.not45.i = icmp ult i64 %i.de, %spec.select.i.i.i
  br i1 %.not45.i, label %bb.aq, label %.loopexit136.i

.loopexit136.i:                                   ; preds = %bb.af, %bb.ar
  %.sroa.022.0.lcssa.i = phi i64 [ %.sroa.022.0.i, %bb.ar ], [ %.sroa.022.0.peel.i, %bb.af ]
  %.sroa.016.1.lcssa.i = phi i64 [ %.sroa.016.1.i, %bb.ar ], [ %.sroa.016.1.peel.i, %bb.af ]
  %i.df = sub i64 %i.e, %.sroa.016.1.lcssa.i
  %i.dg = sub i64 %i.f, %.sroa.022.0.lcssa.i
  br label %bb.bc

bb.as:                                            ; preds = %bb.y
  %.not46.i = icmp eq i64 %i.az, %.sroa.029.0123.i
  %.pre157.i = add nsw i64 %.sroa.7.0111.i, -2    ; 2 uses
  br i1 %.not46.i, label %._crit_edge146.i, label %bb.au

bb.at:                                            ; preds = %bb.au, %bb.y
  %i.dh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21291
  %i.di = load i64, ptr %i.dh, align 8, !noalias !21291, !noundef !17
  br label %bb.av

._crit_edge146.i:                                 ; preds = %bb.au, %bb.as
  %i.dj = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21291
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !21291, !noundef !17
  %i.dl = add i64 %i.dk, 1
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.dm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821), !noalias !21291
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !21291, !noundef !17
  %i.do = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822), !noalias !21291
  %i.dp = load i64, ptr %i.do, align 8, !noalias !21291, !noundef !17
  %i.dq = icmp ult i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.at, label %._crit_edge146.i

bb.av:                                            ; preds = %._crit_edge146.i, %bb.at
  %.sroa.06.0.i = phi i64 [ %i.di, %bb.at ], [ %i.dl, %._crit_edge146.i ] ; 6 uses
  %i.dr = sub i64 %.sroa.06.0.i, %i.az            ; 3 uses
  %i.ds = icmp ult i64 %.sroa.06.0.i, %spec.select.i.i.i
  %i.dt = icmp ult i64 %i.dr, %spec.select.i.i56.i83
  %or.cond107.i = and i1 %i.ds, %i.dt
  br i1 %or.cond107.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %.sroa.06.1.i = phi i64 [ %i.dy, %bb.ax ], [ %.sroa.06.0.i, %bb.av ]
  %i.du = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21291
  store i64 %.sroa.06.1.i, ptr %i.du, align 8, !noalias !21291
  br i1 %.not.i, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.dv = add i64 %.sroa.06.0.i, %i.b
  %i.dw = add i64 %i.dr, %i.c
  %i.dx = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h2065f1dda291ed15E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.dv, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.dw, i64 noundef %i.f), !noalias !21293
  %i.dy = add i64 %i.dx, %.sroa.06.0.i
  br label %bb.aw

bb.ay:                                            ; preds = %bb.ba, %bb.az, %bb.aw
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.ab
  %or.cond108.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond108.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !21274

bb.az:                                            ; preds = %bb.aw
  %i.dz = sub i64 %i.az, %i.m                     ; 2 uses
  %.sroa.012.0.i = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.not47.not.i = icmp slt i64 %.sroa.012.0.i, %.sroa.029.0123.i
  br i1 %.not47.not.i, label %bb.ba, label %bb.ay

bb.ba:                                            ; preds = %bb.az
  %i.ea = sub i64 0, %i.dz
  %i.eb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21291
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !21291, !noundef !17
  %i.ed = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21291
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !21291, !noundef !17
  %i.ef = add i64 %i.ee, %i.ec
  %.not48.i = icmp ult i64 %i.ef, %spec.select.i.i.i
  br i1 %.not48.i, label %bb.ay, label %.loopexit129.i

.loopexit129.i:                                   ; preds = %bb.v, %bb.ba
  %.sroa.06.0.lcssa.i = phi i64 [ %.sroa.06.0.i, %bb.ba ], [ %.sroa.06.0.peel.i, %bb.v ]
  %.lcssa.i = phi i64 [ %i.dr, %bb.ba ], [ %i.ak, %bb.v ]
  %i.eg = add i64 %.sroa.06.0.lcssa.i, %i.b
  %i.eh = add i64 %.lcssa.i, %i.c
  br label %bb.bc

bb.bb:                                            ; preds = %bb.f
  %spec.select.i.i2484 = sub nuw i64 %i.f, %i.c
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i25 = load i64, ptr %i.ei, align 8, !alias.scope !21294
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i27 = load i64, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21294
  %.sroa.52.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i29 = load i64, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21294
  %.sroa.6.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i31 = load i64, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21294
  %i.ej = trunc nuw i64 %.sroa.01.0.copyload.i25 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i32 = select i1 %i.ej, i64 %.sroa.4.0.copyload.i27, i64 %i.b
  %.sroa.5.sroa.5.0.i33 = select i1 %i.ej, i64 %.sroa.52.0.copyload.i29, i64 %i.c
  %i.ek = select i1 %i.ej, i64 %.sroa.6.0.copyload.i31, i64 0
  %.sroa.5.sroa.6.0.i34 = add i64 %i.ek, %spec.select.i.i2484
  store i64 1, ptr %i.ei, align 8, !alias.scope !21294
  store i64 %.sroa.5.sroa.0.0.i32, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21294
  store i64 %.sroa.5.sroa.5.0.i33, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21294
  store i64 %.sroa.5.sroa.6.0.i34, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21294
  br label %bb.e

bb.bc:                                            ; preds = %.loopexit129.i, %.loopexit136.i
  %.sroa.677.0.ph = phi i64 [ %i.eh, %.loopexit129.i ], [ %i.dg, %.loopexit136.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.eg, %.loopexit129.i ], [ %i.df, %.loopexit136.i ] ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h243d15f85d89e788E(ptr noalias noundef align 8 dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.677.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h243d15f85d89e788E(ptr noalias noundef align 8 dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.677.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit: ; preds = %._crit_edge120.i, %bb.n
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0)
  %.sroa.0.0.copyload.i35 = load i64, ptr %0, align 8, !alias.scope !21295
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.el = trunc nuw i64 %.sroa.0.0.copyload.i35 to i1
  br i1 %i.el, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit
  %.sroa.5.0.copyload.i40 = load i64, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21295
  %i.em = add i64 %.sroa.5.0.copyload.i40, %spec.select.i.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41"

bb.be:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i38, align 8, !alias.scope !21295
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i37, align 8, !alias.scope !21295
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41": ; preds = %bb.bd, %bb.be
  %.sink.i39 = phi i64 [ %i.em, %bb.bd ], [ %spec.select.i.i.i, %bb.be ]
  store i64 1, ptr %0, align 8, !alias.scope !21295
  store i64 %.sink.i39, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21295
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i42 = load i64, ptr %i.en, align 8, !alias.scope !21296
  %.sroa.4.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i44 = load i64, ptr %.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !21296
  %.sroa.52.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i46 = load i64, ptr %.sroa.52.0..sroa_idx.i45, align 8, !alias.scope !21296
  %.sroa.6.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i48 = load i64, ptr %.sroa.6.0..sroa_idx.i47, align 8, !alias.scope !21296
  %i.eo = trunc nuw i64 %.sroa.01.0.copyload.i42 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i49 = select i1 %i.eo, i64 %.sroa.4.0.copyload.i44, i64 %i.b
  %.sroa.5.sroa.5.0.i50 = select i1 %i.eo, i64 %.sroa.52.0.copyload.i46, i64 %i.c
  %i.ep = select i1 %i.eo, i64 %.sroa.6.0.copyload.i48, i64 0
  %.sroa.5.sroa.6.0.i51 = add i64 %spec.select.i.i56.i83, %i.ep
  store i64 1, ptr %i.en, align 8, !alias.scope !21296
  store i64 %.sroa.5.sroa.0.0.i49, ptr %.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !21296
  store i64 %.sroa.5.sroa.5.0.i50, ptr %.sroa.52.0..sroa_idx.i45, align 8, !alias.scope !21296
  store i64 %.sroa.5.sroa.6.0.i51, ptr %.sroa.6.0..sroa_idx.i47, align 8, !alias.scope !21296
  br label %bb.e

bb.bf:                                            ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !21297
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.eq, align 8, !alias.scope !21297
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i52 = load i64, ptr %i.er, align 8, !alias.scope !21298
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i54 = load i64, ptr %.sroa.4.0..sroa_idx.i53, align 8, !alias.scope !21298
  %.sroa.52.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i56 = load i64, ptr %.sroa.52.0..sroa_idx.i55, align 8, !alias.scope !21298
  %.sroa.6.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i58 = load i64, ptr %.sroa.6.0..sroa_idx.i57, align 8, !alias.scope !21298
  %i.es = trunc nuw i64 %.sroa.01.0.copyload.i52 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i59 = select i1 %i.es, i64 %.sroa.4.0.copyload.i54, i64 %i.e
  %.sroa.5.sroa.5.0.i60 = select i1 %i.es, i64 %.sroa.52.0.copyload.i56, i64 %i.f
  %i.et = select i1 %i.es, i64 %.sroa.6.0.copyload.i58, i64 0
  %.sroa.5.sroa.6.0.i61 = add i64 %i.et, %i.d
  store i64 1, ptr %i.er, align 8, !alias.scope !21298
  store i64 %.sroa.5.sroa.0.0.i59, ptr %.sroa.4.0..sroa_idx.i53, align 8, !alias.scope !21298
  store i64 %.sroa.5.sroa.5.0.i60, ptr %.sroa.52.0..sroa_idx.i55, align 8, !alias.scope !21298
  store i64 %.sroa.5.sroa.6.0.i61, ptr %.sroa.6.0..sroa_idx.i57, align 8, !alias.scope !21298
  br label %bb.bg

bb.bg:                                            ; preds = %bb.e, %bb.bf
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17h55317f51294f0a9cE(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias noundef nonnull align 8 dereferenceable(32) %9, ptr noalias noundef nonnull align 8 dereferenceable(32) %10, i64 %11, i32 noundef range(i32 0, 1000000001) %12) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21390)
  %i.b = icmp uge i64 %3, %4
  %i.c = icmp uge i64 %7, %8
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %8, %7
  %spec.select.i.i4.i.i.i = sub nuw i64 %4, %3
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.b
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 %2) ; 2 uses
  %umax15.i = tail call i64 @llvm.umax.i64(i64 %7, i64 %6) ; 2 uses
  %i.d = sub nuw i64 %umax15.i, %7
  %i.e = sub nuw i64 %umax.i, %3
  %invariant.gep.i = getelementptr [16 x i8], ptr %5, i64 %7
  %invariant.gep21.i = getelementptr [16 x i8], ptr %1, i64 %3
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.preheader.i
  %.sroa.01.036.i.i.i.i = phi i64 [ %i.f, %bb.e ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 7 uses
  %i.f = add nuw i64 %.sroa.01.036.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.01.036.i.i.i.i, %i.d
  br i1 %exitcond.not.i, label %bb.c, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax15.i, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21391
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i
  %exitcond16.not.i = icmp eq i64 %.sroa.01.036.i.i.i.i, %i.e
  br i1 %exitcond16.not.i, label %bb.d, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i"

bb.d:                                             ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21392
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.01.036.i.i.i.i ; 2 uses
  %gep22.i = getelementptr [16 x i8], ptr %invariant.gep21.i, i64 %.sroa.01.036.i.i.i.i ; 2 uses
  %i.g = getelementptr i8, ptr %gep.i, i64 8
  %.val9.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !21390, !noalias !21393, !noundef !17 ; 2 uses
  %i.h = getelementptr i8, ptr %gep22.i, i64 8
  %.val11.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !21389, !noalias !21394, !noundef !17
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i.i.i.i, %.val11.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i", label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i"
  %.val10.i.i.i.i.i = load ptr, ptr %gep22.i, align 8, !alias.scope !21389, !noalias !21394, !nonnull !17, !align !31, !noundef !17
  %.val.i.i.i.i.i = load ptr, ptr %gep.i, align 8, !alias.scope !21390, !noalias !21393, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val10.i.i.i.i.i, i64 %.val9.i.i.i.i.i), !alias.scope !21395, !noalias !21396
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.i, label %bb.e, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit

bb.e:                                             ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i"
  %exitcond.not.i.i.i.i = icmp eq i64 %i.f, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread84, label %.lr.ph.i.i.i.i

_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit: ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i"
  %.not = icmp eq i64 %.sroa.01.036.i.i.i.i, 0
  br i1 %.not, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread84

_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread: ; preds = %bb.b, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit", %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit
  %.sroa.0.0.i83 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit ], [ %.sroa.0.0.i87, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit" ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.j = add i64 %.sroa.0.0.i83, %3               ; 11 uses
  %i.k = add i64 %.sroa.0.0.i83, %7               ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21398)
  %i.l = icmp uge i64 %i.j, %4
  %i.m = icmp uge i64 %i.k, %8
  %or.cond.i21 = or i1 %i.l, %i.m
  br i1 %or.cond.i21, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread
  %i.n = sub nuw i64 %4, %i.j                     ; 2 uses
  %i.o = sub nuw i64 %8, %i.k                     ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i22
  %i.p = phi i64 [ %4, %.lr.ph.i.i.i.i22 ], [ %i.s, %bb.j ]
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i22 ], [ %i.aa, %bb.j ] ; 4 uses
  %i.q = phi i64 [ %8, %.lr.ph.i.i.i.i22 ], [ %i.r, %bb.j ]
  %i.r = add i64 %i.q, -1                         ; 4 uses
  %exitcond.not.i.i.i.i23 = icmp eq i64 %.sroa.01.034.i.i.i.i, %i.n
  br i1 %exitcond.not.i.i.i.i23, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add i64 %i.p, -1                         ; 4 uses
  %i.t = icmp ult i64 %i.r, %6
  br i1 %i.t, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i24", label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.r, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21399
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i24": ; preds = %bb.g
  %i.u = icmp ult i64 %i.s, %2
  br i1 %i.u, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i25", label %bb.i

bb.i:                                             ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i24"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.s, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21400
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i25": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i24"
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.r ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val9.i.i.i.i.i26 = load i64, ptr %i.x, align 8, !alias.scope !21398, !noalias !21401, !noundef !17 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 8
  %.val11.i.i.i.i.i27 = load i64, ptr %i.y, align 8, !alias.scope !21397, !noalias !21402, !noundef !17
  %.not.i.i.i.i.i.i.i28 = icmp eq i64 %.val9.i.i.i.i.i26, %.val11.i.i.i.i.i27
  br i1 %.not.i.i.i.i.i.i.i28, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i30", label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i30": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i25"
  %.val10.i.i.i.i.i31 = load ptr, ptr %i.w, align 8, !alias.scope !21397, !noalias !21402, !nonnull !17, !align !31, !noundef !17
  %.val.i.i.i.i.i32 = load ptr, ptr %i.v, align 8, !alias.scope !21398, !noalias !21401, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i.i.i33 = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i32, ptr nonnull readonly align 1 %.val10.i.i.i.i.i31, i64 %.val9.i.i.i.i.i26), !alias.scope !21403, !noalias !21404
  %i.z = icmp eq i32 %bcmp.i.i.i.i.i.i.i33, 0
  br i1 %i.z, label %bb.j, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit

bb.j:                                             ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i30"
  %i.aa = add nuw i64 %.sroa.01.034.i.i.i.i, 1    ; 2 uses
  %exitcond63.not.i.i.i.i = icmp eq i64 %i.aa, %i.o
  br i1 %exitcond63.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %bb.f

_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit: ; preds = %bb.f, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i25", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i30", %bb.j, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread
  %.sroa.0.0.i29 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread ], [ %i.n, %bb.f ], [ %.sroa.01.034.i.i.i.i, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i25" ], [ %.sroa.01.034.i.i.i.i, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i30" ], [ %i.o, %bb.j ] ; 4 uses
  %i.ab = sub i64 %4, %.sroa.0.0.i29              ; 6 uses
  %i.ac = sub i64 %8, %.sroa.0.0.i29              ; 6 uses
  %.not2 = icmp ult i64 %i.j, %i.ab               ; 2 uses
  %.not3 = icmp ult i64 %i.k, %i.ac               ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.l, label %bb.m

_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread84: ; preds = %bb.e, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit
  %.sroa.0.0.i87 = phi i64 [ %.sroa.01.036.i.i.i.i, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit ], [ %.sroa.0.0.i.i.i.i, %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21405)
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !21405, !nonnull !17, !align !29, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21406)
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !21406, !noalias !21405, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 136 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !21407, !noalias !21408, !noundef !17 ; 3 uses
  %i.ai = load i64, ptr %i.af, align 8, !range !20, !alias.scope !21407, !noalias !21408, !noundef !17
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

bb.k:                                             ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread84
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21409
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit": ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread84, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !21407, !noalias !21408, !nonnull !17, !noundef !17
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %i.ah ; 4 uses
  store i64 0, ptr %i.am, align 8, !noalias !21410
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %3, ptr %.sroa.457.0..sroa_idx, align 8, !noalias !21410
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %7, ptr %.sroa.558.0..sroa_idx, align 8, !noalias !21410
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %.sroa.0.0.i87, ptr %.sroa.659.0..sroa_idx, align 8, !noalias !21410
  %i.an = add i64 %i.ah, 1
  store i64 %i.an, ptr %i.ag, align 8, !alias.scope !21407, !noalias !21408
  br label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread

bb.l:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit
  br i1 %.not3, label %bb.n, label %bb.o

bb.m:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit34", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36", %bb.x
  %.not5 = icmp eq i64 %.sroa.0.0.i29, 0
  br i1 %.not5, label %bb.aa, label %bb.y

bb.n:                                             ; preds = %bb.l
  br i1 %.not2, label %bb.q, label %bb.r

bb.o:                                             ; preds = %bb.l
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.ab, i64 %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21411)
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !21411, !nonnull !17, !align !29, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21412)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !21412, !noalias !21411, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 136 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !21413, !noalias !21414, !noundef !17 ; 3 uses
  %i.at = load i64, ptr %i.aq, align 8, !range !20, !alias.scope !21413, !noalias !21414, !noundef !17
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit34"

bb.p:                                             ; preds = %bb.o
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21415
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit34"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit34": ; preds = %bb.o, %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !21413, !noalias !21414, !nonnull !17, !noundef !17
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %i.as ; 4 uses
  store i64 1, ptr %i.ax, align 8, !noalias !21416
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.j, ptr %.sroa.462.0..sroa_idx, align 8, !noalias !21416
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %spec.select.i.i, ptr %.sroa.563.0..sroa_idx, align 8, !noalias !21416
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i64 %i.k, ptr %.sroa.664.0..sroa_idx, align 8, !noalias !21416
  %i.ay = add i64 %i.as, 1
  store i64 %i.ay, ptr %i.ar, align 8, !alias.scope !21413, !noalias !21414
  br label %bb.m

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17he29e0990f4fb73b2E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.j, i64 noundef %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.k, i64 noundef %i.ac, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  %i.az = load i64, ptr %i.a, align 8, !range !44, !noundef !17
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %bb.t, label %bb.u

bb.r:                                             ; preds = %bb.n
  %spec.select.i.i3588 = sub nuw i64 %i.ac, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21417)
  %i.bb = load ptr, ptr %0, align 8, !alias.scope !21417, !nonnull !17, !align !29, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21418)
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !21418, !noalias !21417, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 120 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 136 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !21419, !noalias !21420, !noundef !17 ; 3 uses
  %i.bg = load i64, ptr %i.bd, align 8, !range !20, !alias.scope !21419, !noalias !21420, !noundef !17
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.s, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"

bb.s:                                             ; preds = %bb.r
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21421
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36": ; preds = %bb.r, %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !21419, !noalias !21420, !nonnull !17, !noundef !17
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.bf ; 4 uses
  store i64 2, ptr %i.bk, align 8, !noalias !21422
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.j, ptr %.sroa.477.0..sroa_idx, align 8, !noalias !21422
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %i.k, ptr %.sroa.578.0..sroa_idx, align 8, !noalias !21422
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i64 %spec.select.i.i3588, ptr %.sroa.679.0..sroa_idx, align 8, !noalias !21422
  %i.bl = add i64 %i.bf, 1
  store i64 %i.bl, ptr %i.be, align 8, !alias.scope !21419, !noalias !21420
  br label %bb.m

bb.t:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !17 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !17 ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h55317f51294f0a9cE(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.j, i64 noundef %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.k, i64 noundef %i.bp, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h55317f51294f0a9cE(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.bn, i64 noundef %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.bp, i64 noundef %i.ac, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  br label %bb.x

bb.u:                                             ; preds = %bb.q
  %i.bq = sub nuw i64 %i.ab, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21423)
  %i.br = load ptr, ptr %0, align 8, !alias.scope !21423, !nonnull !17, !align !29, !noundef !17 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21424)
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !21424, !noalias !21423, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 120 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 136 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !21425, !noalias !21426, !noundef !17 ; 3 uses
  %i.bw = load i64, ptr %i.bt, align 8, !range !20, !alias.scope !21425, !noalias !21426, !noundef !17
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

bb.v:                                             ; preds = %bb.u
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21427
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37": ; preds = %bb.u, %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !21425, !noalias !21426, !nonnull !17, !noundef !17
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.bz, i64 %i.bv ; 4 uses
  store i64 1, ptr %i.ca, align 8, !noalias !21428
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %i.j, ptr %.sroa.467.0..sroa_idx, align 8, !noalias !21428
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 %i.bq, ptr %.sroa.568.0..sroa_idx, align 8, !noalias !21428
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i64 %i.k, ptr %.sroa.669.0..sroa_idx, align 8, !noalias !21428
  %i.cb = add i64 %i.bv, 1
  store i64 %i.cb, ptr %i.bu, align 8, !alias.scope !21425, !noalias !21426
  %i.cc = sub nuw i64 %i.ac, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21429)
  %i.cd = load ptr, ptr %i.br, align 8, !alias.scope !21429, !noalias !21430, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 120 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 136 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !21431, !noalias !21432, !noundef !17 ; 3 uses
  %i.ch = load i64, ptr %i.ce, align 8, !range !20, !alias.scope !21431, !noalias !21432, !noundef !17
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

bb.w:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21433
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37", %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 128
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !21431, !noalias !21432, !nonnull !17, !noundef !17
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.ck, i64 %i.cg ; 4 uses
  store i64 2, ptr %i.cl, align 8, !noalias !21434
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.j, ptr %.sroa.472.0..sroa_idx, align 8, !noalias !21434
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.k, ptr %.sroa.573.0..sroa_idx, align 8, !noalias !21434
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %i.cc, ptr %.sroa.674.0..sroa_idx, align 8, !noalias !21434
  %i.cm = add i64 %i.cg, 1
  store i64 %i.cm, ptr %i.cf, align 8, !alias.scope !21431, !noalias !21432
  br label %bb.x

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38", %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.y:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21435)
  %i.cn = load ptr, ptr %0, align 8, !alias.scope !21435, !nonnull !17, !align !29, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21436)
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !21436, !noalias !21435, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 120 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 136 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !21437, !noalias !21438, !noundef !17 ; 3 uses
  %i.cs = load i64, ptr %i.cp, align 8, !range !20, !alias.scope !21437, !noalias !21438, !noundef !17
  %i.ct = icmp eq i64 %i.cr, %i.cs
  br i1 %i.ct, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

bb.z:                                             ; preds = %bb.y
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21439
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39": ; preds = %bb.y, %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !21437, !noalias !21438, !nonnull !17, !noundef !17
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %i.cr ; 4 uses
  store i64 0, ptr %i.cw, align 8, !noalias !21440
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.ab, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !21440
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !21440
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 %.sroa.0.0.i29, ptr %.sroa.655.0..sroa_idx, align 8, !noalias !21440
  %i.cx = add i64 %i.cr, 1
  store i64 %i.cx, ptr %i.cq, align 8, !alias.scope !21437, !noalias !21438
  br label %bb.aa

bb.aa:                                            ; preds = %bb.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17h760b571683fd3f76E(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h71563fe1837903d2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 14 uses
  %i.d = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hbe1d6208897bcdf3E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 10 uses
  %.not2 = icmp ult i64 %i.b, %i.e                ; 2 uses
  %.not3 = icmp ult i64 %i.c, %i.f                ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !21465
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.g, align 8, !alias.scope !21465
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !21466
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21466
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21466
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21466
  %i.i = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.i, i64 %.sroa.4.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.i, i64 %.sroa.52.0.copyload.i, i64 %5
  %i.j = select i1 %i.i, i64 %.sroa.6.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.j, %i.a
  store i64 1, ptr %i.h, align 8, !alias.scope !21466
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21466
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21466
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21466
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not3, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bc, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41", %bb.b, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit", %bb.bb
  %.not5 = icmp eq i64 %i.d, 0
  br i1 %.not5, label %bb.bg, label %bb.bf

bb.f:                                             ; preds = %bb.d
  br i1 %.not2, label %bb.j, label %bb.bb

bb.g:                                             ; preds = %bb.d
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b) ; 2 uses
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17hc78c0996199f778aE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !21467
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21467
  %i.l = add i64 %.sroa.5.0.copyload.i, %spec.select.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit"

bb.i:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i22, align 8, !alias.scope !21467
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i21, align 8, !alias.scope !21467
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit": ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.l, %bb.h ], [ %spec.select.i.i, %bb.i ]
  store i64 1, ptr %0, align 8, !alias.scope !21467
  store i64 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21467
  br label %bb.e

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21469)
  %spec.select.i.i.i = sub nuw i64 %i.e, %i.b     ; 12 uses
  %spec.select.i.i56.i83 = sub i64 %i.f, %i.c     ; 7 uses
  %i.m = sub i64 %spec.select.i.i.i, %spec.select.i.i56.i83 ; 5 uses
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0                   ; 4 uses
  %i.o = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808), !noalias !21470
  store i64 0, ptr %i.o, align 8, !noalias !21470
  %i.p = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809), !noalias !21471
  store i64 0, ptr %i.p, align 8, !noalias !21471
  %i.q = add i64 %spec.select.i.i.i, 1
  %i.r = add i64 %i.q, %spec.select.i.i56.i83
  %i.s = lshr i64 %i.r, 1                         ; 3 uses
  %i.t = add nuw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !21468, !noalias !21470, !noundef !17 ; 2 uses
  %i.w = icmp ult i64 %i.v, 1152921504606846976
  tail call void @llvm.assume(i1 %i.w)
  %.not41.not.i = icmp samesign ugt i64 %i.v, %i.s
  br i1 %.not41.not.i, label %bb.l, label %bb.k, !prof !23

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54, !noalias !21471
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !21469, !noalias !21472, !noundef !17 ; 2 uses
  %i.z = icmp ult i64 %i.y, 1152921504606846976
  tail call void @llvm.assume(i1 %i.z)
  %.not42.not.i = icmp samesign ugt i64 %i.y, %i.s
  br i1 %.not42.not.i, label %bb.n, label %bb.m, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54, !noalias !21471
  unreachable

bb.n:                                             ; preds = %bb.l, %._crit_edge120.i
  %.sroa.029.1124.i = phi i64 [ %.sroa.029.1.i, %._crit_edge120.i ], [ 1, %bb.l ] ; 3 uses
  %.sroa.029.0123.i = phi i64 [ %.sroa.029.1124.i, %._crit_edge120.i ], [ 0, %bb.l ] ; 23 uses
  %i.aa = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef range(i32 0, 1000000001) %10), !noalias !21471
  br i1 %i.aa, label %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = sub nsw i64 0, %.sroa.029.0123.i        ; 9 uses
  %i.ac = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0123.i, i64 %i.ab) ; 2 uses
  switch i8 %i.ac, label %.loopexit.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.ad = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.029.0123.i, %bb.o ], [ %i.ad, %bb.p ] ; 2 uses
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.ae = icmp eq i64 %.sroa.029.0123.i, 0        ; 2 uses
  br i1 %i.ae, label %._crit_edge147.i, label %._crit_edge145.i

._crit_edge145.i:                                 ; preds = %bb.q
  %.pre159.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.af = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21471
  %i.ag = load i64, ptr %i.af, align 8, !noalias !21471, !noundef !17
  %i.ah = add i64 %i.ag, 1
  br label %bb.r

._crit_edge147.i:                                 ; preds = %bb.q
  %i.ai = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21471
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !21471, !noundef !17
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge147.i, %._crit_edge145.i
  %.sroa.06.0.peel.i = phi i64 [ %i.aj, %._crit_edge147.i ], [ %i.ah, %._crit_edge145.i ] ; 6 uses
  %i.ak = sub i64 %.sroa.06.0.peel.i, %.sroa.029.0123.i ; 3 uses
  %i.al = icmp ult i64 %.sroa.06.0.peel.i, %spec.select.i.i.i
  %i.am = icmp ult i64 %i.ak, %spec.select.i.i56.i83
  %or.cond107.peel.i = and i1 %i.al, %i.am
  br i1 %or.cond107.peel.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = add i64 %.sroa.06.0.peel.i, %i.b
  %i.ao = add i64 %i.ak, %i.c
  %i.ap = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h71563fe1837903d2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.an, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.ao, i64 noundef %i.f), !noalias !21473
  %i.aq = add i64 %i.ap, %.sroa.06.0.peel.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.06.1.peel.i = phi i64 [ %i.aq, %bb.s ], [ %.sroa.06.0.peel.i, %bb.r ]
  %i.ar = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21471
  store i64 %.sroa.06.1.peel.i, ptr %i.ar, align 8, !noalias !21471
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.012.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.as, i1 false)
  %.not47.not.peel.i = icmp slt i64 %.sroa.012.0.peel.i, %.sroa.029.0123.i
  br i1 %.not47.not.peel.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.at = sub i64 0, %i.as
  %i.au = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21471
  %i.av = load i64, ptr %i.au, align 8, !noalias !21471, !noundef !17
  %i.aw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21471
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !21471, !noundef !17
  %i.ay = add i64 %i.ax, %i.av
  %.not48.peel.i = icmp ult i64 %i.ay, %spec.select.i.i.i
  br i1 %.not48.peel.i, label %bb.w, label %.loopexit129.i

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %i.ab
  %or.cond108.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond108.peel.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.w, %bb.ay
  %.sroa.7.0111.i = phi i64 [ %.sroa.7.1.i, %bb.ay ], [ %.sroa.7.1.peel.i, %bb.w ] ; 5 uses
  %i.az = add nsw i64 %.sroa.7.0111.i, -1         ; 8 uses
  %i.ba = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.az, i64 %i.ab)
  switch i8 %i.ba, label %.loopexit.i [
    i8 -1, label %.lr.ph119.preheader.i
    i8 0, label %bb.y
    i8 1, label %bb.x
  ]

.loopexit.i:                                      ; preds = %bb.o, %.lr.ph.peel.next.i
  unreachable

bb.x:                                             ; preds = %.lr.ph.peel.next.i
  %i.bb = add nsw i64 %.sroa.7.0111.i, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.peel.next.i
  %.sroa.7.1.i = phi i64 [ %i.az, %.lr.ph.peel.next.i ], [ %i.bb, %bb.x ] ; 2 uses
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.x ]
  %i.bc = icmp eq i64 %i.az, %i.ab
  br i1 %i.bc, label %bb.at, label %bb.as

.lr.ph119.preheader.i:                            ; preds = %bb.ay, %.lr.ph.peel.next.i, %bb.w
  switch i8 %i.ac, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.aa
    i8 1, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph119.preheader.i
  %i.bd = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph119.preheader.i
  %.sroa.792.1.peel.i = phi i64 [ %.sroa.029.0123.i, %.lr.ph119.preheader.i ], [ %i.bd, %bb.z ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph119.preheader.i ], [ false, %bb.z ]
  br i1 %i.ae, label %._crit_edge150.i, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.aa
  %.pre153.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.be = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21471
  %i.bf = load i64, ptr %i.be, align 8, !noalias !21471, !noundef !17
  %i.bg = add i64 %i.bf, 1
  br label %bb.ab

._crit_edge150.i:                                 ; preds = %bb.aa
  %i.bh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21471
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !21471, !noundef !17
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge150.i, %._crit_edge148.i
  %.sroa.016.0.peel.i = phi i64 [ %i.bi, %._crit_edge150.i ], [ %i.bg, %._crit_edge148.i ] ; 5 uses
  %i.bj = sub i64 %.sroa.016.0.peel.i, %.sroa.029.0123.i ; 4 uses
  %i.bk = icmp ult i64 %.sroa.016.0.peel.i, %spec.select.i.i.i
  %i.bl = icmp ult i64 %i.bj, %spec.select.i.i56.i83
  %or.cond.peel.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.peel.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bm = sub nuw i64 %i.e, %.sroa.016.0.peel.i
  %i.bn = sub i64 %i.f, %i.bj
  %i.bo = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hbe1d6208897bcdf3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.bn), !noalias !21473 ; 2 uses
  %i.bp = add i64 %i.bo, %.sroa.016.0.peel.i
  %i.bq = add i64 %i.bo, %i.bj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.022.0.peel.i = phi i64 [ %i.bq, %bb.ac ], [ %i.bj, %bb.ab ]
  %.sroa.016.1.peel.i = phi i64 [ %i.bp, %bb.ac ], [ %.sroa.016.0.peel.i, %bb.ab ] ; 2 uses
  %i.br = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21471
  store i64 %.sroa.016.1.peel.i, ptr %i.br, align 8, !noalias !21471
  br i1 %.not.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bs = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.026.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.bs, i1 false)
  %.not44.peel.i = icmp sgt i64 %.sroa.026.0.peel.i, %.sroa.029.0123.i
  br i1 %.not44.peel.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = sub i64 0, %i.bs
  %i.bu = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21471
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !21471, !noundef !17
  %i.bw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21471
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !21471, !noundef !17
  %i.by = add i64 %i.bx, %i.bv
  %.not45.peel.i = icmp ult i64 %i.by, %spec.select.i.i.i
  br i1 %.not45.peel.i, label %bb.ag, label %.loopexit136.i

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.not.i57.peel.i = icmp slt i64 %.sroa.792.1.peel.i, %i.ab
  %or.cond109.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i57.peel.i
  br i1 %or.cond109.peel.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i

.lr.ph119.peel.next.i:                            ; preds = %bb.ag, %bb.aq
  %.sroa.792.0116.i = phi i64 [ %.sroa.792.1.i, %bb.aq ], [ %.sroa.792.1.peel.i, %bb.ag ] ; 5 uses
  %i.bz = add nsw i64 %.sroa.792.0116.i, -1       ; 8 uses
  %i.ca = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bz, i64 %i.ab)
  switch i8 %i.ca, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.ai
    i8 1, label %bb.ah
  ]

.loopexit135.i:                                   ; preds = %.lr.ph119.preheader.i, %.lr.ph119.peel.next.i
  unreachable

bb.ah:                                            ; preds = %.lr.ph119.peel.next.i
  %i.cb = add nsw i64 %.sroa.792.0116.i, -2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph119.peel.next.i
  %.sroa.792.1.i = phi i64 [ %i.bz, %.lr.ph119.peel.next.i ], [ %i.cb, %bb.ah ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph119.peel.next.i ], [ false, %bb.ah ]
  %i.cc = icmp eq i64 %i.bz, %i.ab
  br i1 %i.cc, label %bb.ak, label %bb.aj

._crit_edge120.i:                                 ; preds = %bb.aq, %.lr.ph119.peel.next.i, %bb.o, %bb.ag, %.lr.ph119.preheader.i
  %i.cd = icmp slt i64 %.sroa.029.1124.i, %i.t    ; 2 uses
  %i.ce = zext i1 %i.cd to i64
  %.sroa.029.1.i = add nuw nsw i64 %.sroa.029.1124.i, %i.ce
  br i1 %i.cd, label %bb.n, label %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit

bb.aj:                                            ; preds = %bb.ai
  %.not43.i = icmp eq i64 %i.bz, %.sroa.029.0123.i
  %.pre151.i = add nsw i64 %.sroa.792.0116.i, -2  ; 2 uses
  br i1 %.not43.i, label %._crit_edge149.i, label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.ai
  %i.cf = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21471
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !21471, !noundef !17
  br label %bb.am

._crit_edge149.i:                                 ; preds = %bb.al, %bb.aj
  %i.ch = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21471
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !21471, !noundef !17
  %i.cj = add i64 %i.ci, 1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ck = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814), !noalias !21471
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !21471, !noundef !17
  %i.cm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815), !noalias !21471
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !21471, !noundef !17
  %i.co = icmp ult i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.ak, label %._crit_edge149.i

bb.am:                                            ; preds = %._crit_edge149.i, %bb.ak
  %.sroa.016.0.i = phi i64 [ %i.cg, %bb.ak ], [ %i.cj, %._crit_edge149.i ] ; 5 uses
  %i.cp = sub i64 %.sroa.016.0.i, %i.bz           ; 4 uses
  %i.cq = icmp ult i64 %.sroa.016.0.i, %spec.select.i.i.i
  %i.cr = icmp ult i64 %i.cp, %spec.select.i.i56.i83
  %or.cond.i = and i1 %i.cq, %i.cr
  br i1 %or.cond.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %.sroa.022.0.i = phi i64 [ %i.cx, %bb.ao ], [ %i.cp, %bb.am ]
  %.sroa.016.1.i = phi i64 [ %i.cw, %bb.ao ], [ %.sroa.016.0.i, %bb.am ] ; 2 uses
  %i.cs = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21471
  store i64 %.sroa.016.1.i, ptr %i.cs, align 8, !noalias !21471
  br i1 %.not.i, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.ct = sub nuw i64 %i.e, %.sroa.016.0.i
  %i.cu = sub i64 %i.f, %i.cp
  %i.cv = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hbe1d6208897bcdf3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.cu), !noalias !21473 ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.016.0.i
  %i.cx = add i64 %i.cv, %i.cp
  br label %bb.an

bb.ap:                                            ; preds = %bb.an
  %i.cy = sub i64 %i.bz, %i.m                     ; 2 uses
  %.sroa.026.0.i = tail call i64 @llvm.abs.i64(i64 %i.cy, i1 false)
  %.not44.i = icmp sgt i64 %.sroa.026.0.i, %.sroa.029.0123.i
  br i1 %.not44.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.ap, %bb.an
  %.not.i57.i = icmp slt i64 %.sroa.792.1.i, %i.ab
  %or.cond109.i = select i1 %.sroa.12.1.i, i1 true, i1 %.not.i57.i
  br i1 %or.cond109.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i, !llvm.loop !21453

bb.ar:                                            ; preds = %bb.ap
  %i.cz = sub i64 0, %i.cy
  %i.da = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21471
  %i.db = load i64, ptr %i.da, align 8, !noalias !21471, !noundef !17
  %i.dc = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21471
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !21471, !noundef !17
  %i.de = add i64 %i.dd, %i.db
  %.not45.i = icmp ult i64 %i.de, %spec.select.i.i.i
  br i1 %.not45.i, label %bb.aq, label %.loopexit136.i

.loopexit136.i:                                   ; preds = %bb.af, %bb.ar
  %.sroa.022.0.lcssa.i = phi i64 [ %.sroa.022.0.i, %bb.ar ], [ %.sroa.022.0.peel.i, %bb.af ]
  %.sroa.016.1.lcssa.i = phi i64 [ %.sroa.016.1.i, %bb.ar ], [ %.sroa.016.1.peel.i, %bb.af ]
  %i.df = sub i64 %i.e, %.sroa.016.1.lcssa.i
  %i.dg = sub i64 %i.f, %.sroa.022.0.lcssa.i
  br label %bb.bc

bb.as:                                            ; preds = %bb.y
  %.not46.i = icmp eq i64 %i.az, %.sroa.029.0123.i
  %.pre157.i = add nsw i64 %.sroa.7.0111.i, -2    ; 2 uses
  br i1 %.not46.i, label %._crit_edge146.i, label %bb.au

bb.at:                                            ; preds = %bb.au, %bb.y
  %i.dh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21471
  %i.di = load i64, ptr %i.dh, align 8, !noalias !21471, !noundef !17
  br label %bb.av

._crit_edge146.i:                                 ; preds = %bb.au, %bb.as
  %i.dj = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21471
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !21471, !noundef !17
  %i.dl = add i64 %i.dk, 1
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.dm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821), !noalias !21471
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !21471, !noundef !17
  %i.do = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822), !noalias !21471
  %i.dp = load i64, ptr %i.do, align 8, !noalias !21471, !noundef !17
  %i.dq = icmp ult i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.at, label %._crit_edge146.i

bb.av:                                            ; preds = %._crit_edge146.i, %bb.at
  %.sroa.06.0.i = phi i64 [ %i.di, %bb.at ], [ %i.dl, %._crit_edge146.i ] ; 6 uses
  %i.dr = sub i64 %.sroa.06.0.i, %i.az            ; 3 uses
  %i.ds = icmp ult i64 %.sroa.06.0.i, %spec.select.i.i.i
  %i.dt = icmp ult i64 %i.dr, %spec.select.i.i56.i83
  %or.cond107.i = and i1 %i.ds, %i.dt
  br i1 %or.cond107.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %.sroa.06.1.i = phi i64 [ %i.dy, %bb.ax ], [ %.sroa.06.0.i, %bb.av ]
  %i.du = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21471
  store i64 %.sroa.06.1.i, ptr %i.du, align 8, !noalias !21471
  br i1 %.not.i, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.dv = add i64 %.sroa.06.0.i, %i.b
  %i.dw = add i64 %i.dr, %i.c
  %i.dx = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h71563fe1837903d2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.dv, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.dw, i64 noundef %i.f), !noalias !21473
  %i.dy = add i64 %i.dx, %.sroa.06.0.i
  br label %bb.aw

bb.ay:                                            ; preds = %bb.ba, %bb.az, %bb.aw
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.ab
  %or.cond108.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond108.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !21454

bb.az:                                            ; preds = %bb.aw
  %i.dz = sub i64 %i.az, %i.m                     ; 2 uses
  %.sroa.012.0.i = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.not47.not.i = icmp slt i64 %.sroa.012.0.i, %.sroa.029.0123.i
  br i1 %.not47.not.i, label %bb.ba, label %bb.ay

bb.ba:                                            ; preds = %bb.az
  %i.ea = sub i64 0, %i.dz
  %i.eb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21471
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !21471, !noundef !17
  %i.ed = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21471
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !21471, !noundef !17
  %i.ef = add i64 %i.ee, %i.ec
  %.not48.i = icmp ult i64 %i.ef, %spec.select.i.i.i
  br i1 %.not48.i, label %bb.ay, label %.loopexit129.i

.loopexit129.i:                                   ; preds = %bb.v, %bb.ba
  %.sroa.06.0.lcssa.i = phi i64 [ %.sroa.06.0.i, %bb.ba ], [ %.sroa.06.0.peel.i, %bb.v ]
  %.lcssa.i = phi i64 [ %i.dr, %bb.ba ], [ %i.ak, %bb.v ]
  %i.eg = add i64 %.sroa.06.0.lcssa.i, %i.b
  %i.eh = add i64 %.lcssa.i, %i.c
  br label %bb.bc

bb.bb:                                            ; preds = %bb.f
  %spec.select.i.i2484 = sub nuw i64 %i.f, %i.c
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17hc78c0996199f778aE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i25 = load i64, ptr %i.ei, align 8, !alias.scope !21474
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i27 = load i64, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21474
  %.sroa.52.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i29 = load i64, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21474
  %.sroa.6.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i31 = load i64, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21474
  %i.ej = trunc nuw i64 %.sroa.01.0.copyload.i25 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i32 = select i1 %i.ej, i64 %.sroa.4.0.copyload.i27, i64 %i.b
  %.sroa.5.sroa.5.0.i33 = select i1 %i.ej, i64 %.sroa.52.0.copyload.i29, i64 %i.c
  %i.ek = select i1 %i.ej, i64 %.sroa.6.0.copyload.i31, i64 0
  %.sroa.5.sroa.6.0.i34 = add i64 %i.ek, %spec.select.i.i2484
  store i64 1, ptr %i.ei, align 8, !alias.scope !21474
  store i64 %.sroa.5.sroa.0.0.i32, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21474
  store i64 %.sroa.5.sroa.5.0.i33, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21474
  store i64 %.sroa.5.sroa.6.0.i34, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21474
  br label %bb.e

bb.bc:                                            ; preds = %.loopexit129.i, %.loopexit136.i
  %.sroa.677.0.ph = phi i64 [ %i.eh, %.loopexit129.i ], [ %i.dg, %.loopexit136.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.eg, %.loopexit129.i ], [ %i.df, %.loopexit136.i ] ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h760b571683fd3f76E(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.677.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h760b571683fd3f76E(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.677.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit: ; preds = %._crit_edge120.i, %bb.n
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17hc78c0996199f778aE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i35 = load i64, ptr %0, align 8, !alias.scope !21475
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.el = trunc nuw i64 %.sroa.0.0.copyload.i35 to i1
  br i1 %i.el, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit
  %.sroa.5.0.copyload.i40 = load i64, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21475
  %i.em = add i64 %.sroa.5.0.copyload.i40, %spec.select.i.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41"

bb.be:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i38, align 8, !alias.scope !21475
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i37, align 8, !alias.scope !21475
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41": ; preds = %bb.bd, %bb.be
  %.sink.i39 = phi i64 [ %i.em, %bb.bd ], [ %spec.select.i.i.i, %bb.be ]
  store i64 1, ptr %0, align 8, !alias.scope !21475
  store i64 %.sink.i39, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21475
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17hc78c0996199f778aE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i42 = load i64, ptr %i.en, align 8, !alias.scope !21476
  %.sroa.4.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i44 = load i64, ptr %.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !21476
  %.sroa.52.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i46 = load i64, ptr %.sroa.52.0..sroa_idx.i45, align 8, !alias.scope !21476
  %.sroa.6.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i48 = load i64, ptr %.sroa.6.0..sroa_idx.i47, align 8, !alias.scope !21476
  %i.eo = trunc nuw i64 %.sroa.01.0.copyload.i42 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i49 = select i1 %i.eo, i64 %.sroa.4.0.copyload.i44, i64 %i.b
  %.sroa.5.sroa.5.0.i50 = select i1 %i.eo, i64 %.sroa.52.0.copyload.i46, i64 %i.c
  %i.ep = select i1 %i.eo, i64 %.sroa.6.0.copyload.i48, i64 0
  %.sroa.5.sroa.6.0.i51 = add i64 %spec.select.i.i56.i83, %i.ep
  store i64 1, ptr %i.en, align 8, !alias.scope !21476
  store i64 %.sroa.5.sroa.0.0.i49, ptr %.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !21476
  store i64 %.sroa.5.sroa.5.0.i50, ptr %.sroa.52.0..sroa_idx.i45, align 8, !alias.scope !21476
  store i64 %.sroa.5.sroa.6.0.i51, ptr %.sroa.6.0..sroa_idx.i47, align 8, !alias.scope !21476
  br label %bb.e

bb.bf:                                            ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !21477
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.eq, align 8, !alias.scope !21477
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i52 = load i64, ptr %i.er, align 8, !alias.scope !21478
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i54 = load i64, ptr %.sroa.4.0..sroa_idx.i53, align 8, !alias.scope !21478
  %.sroa.52.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i56 = load i64, ptr %.sroa.52.0..sroa_idx.i55, align 8, !alias.scope !21478
  %.sroa.6.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i58 = load i64, ptr %.sroa.6.0..sroa_idx.i57, align 8, !alias.scope !21478
  %i.es = trunc nuw i64 %.sroa.01.0.copyload.i52 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i59 = select i1 %i.es, i64 %.sroa.4.0.copyload.i54, i64 %i.e
  %.sroa.5.sroa.5.0.i60 = select i1 %i.es, i64 %.sroa.52.0.copyload.i56, i64 %i.f
  %i.et = select i1 %i.es, i64 %.sroa.6.0.copyload.i58, i64 0
  %.sroa.5.sroa.6.0.i61 = add i64 %i.et, %i.d
  store i64 1, ptr %i.er, align 8, !alias.scope !21478
  store i64 %.sroa.5.sroa.0.0.i59, ptr %.sroa.4.0..sroa_idx.i53, align 8, !alias.scope !21478
  store i64 %.sroa.5.sroa.5.0.i60, ptr %.sroa.52.0..sroa_idx.i55, align 8, !alias.scope !21478
  store i64 %.sroa.5.sroa.6.0.i61, ptr %.sroa.6.0..sroa_idx.i57, align 8, !alias.scope !21478
  br label %bb.bg

bb.bg:                                            ; preds = %bb.e, %bb.bf
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17ha843e1ee42b63447E(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h284e7a1f941e37c8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit", %bb.a
  %i.c = add i64 %i.b, %2                         ; 11 uses
  %i.d = add i64 %i.b, %5                         ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21549)
  %i.e = icmp uge i64 %i.c, %3
  %i.f = icmp uge i64 %i.d, %6
  %or.cond.i = or i1 %i.e, %i.f
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.g = sub nuw i64 %3, %i.c                     ; 2 uses
  %i.h = sub nuw i64 %6, %i.d                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !21549, !noalias !21548 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val10.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !21549, !noalias !21548, !nonnull !17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !21548, !noalias !21549 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !21548, !noalias !21549, !nonnull !17
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.m = phi i64 [ %3, %.lr.ph.i.i.i.i ], [ %i.p, %bb.g ]
  %.sroa.01.032.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.g ] ; 4 uses
  %i.n = phi i64 [ %6, %.lr.ph.i.i.i.i ], [ %i.o, %bb.g ]
  %i.o = add i64 %i.n, -1                         ; 4 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.032.i.i.i.i, %i.g
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add i64 %i.m, -1                         ; 4 uses
  %i.q = icmp ult i64 %i.o, %.val11.i.i.i.i.i
  br i1 %i.q, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.o, i64 noundef %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21550
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i": ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.val10.i.i.i.i.i, i64 %i.o ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !21551, !nonnull !17, !align !31, !noundef !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !21551, !noundef !17 ; 2 uses
  %i.v = icmp ult i64 %i.p, %.val9.i.i.i.i.i
  br i1 %i.v, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.p, i64 noundef %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21550
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i"
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noalias !21552, !noundef !17
  %.not.i.i.i.i.i.i = icmp eq i64 %i.u, %i.y
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i", label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i"
  %i.z = load ptr, ptr %i.w, align 8, !noalias !21552, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %i.s, ptr nonnull readonly align 1 %i.z, i64 %i.u), !alias.scope !21553, !noalias !21554
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aa, label %bb.g, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit

bb.g:                                             ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i"
  %i.ab = add nuw i64 %.sroa.01.032.i.i.i.i, 1    ; 2 uses
  %exitcond59.not.i.i.i.i = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond59.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %bb.c

_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit: ; preds = %bb.c, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i", %bb.g, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ %i.g, %bb.c ], [ %.sroa.01.032.i.i.i.i, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i" ], [ %.sroa.01.032.i.i.i.i, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i" ], [ %i.h, %bb.g ] ; 4 uses
  %i.ac = sub i64 %3, %.sroa.0.0.i                ; 6 uses
  %i.ad = sub i64 %6, %.sroa.0.0.i                ; 6 uses
  %.not2 = icmp ult i64 %i.c, %i.ac               ; 2 uses
  %.not3 = icmp ult i64 %i.d, %i.ad               ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21555)
  %i.ae = load ptr, ptr %0, align 8, !alias.scope !21555, !nonnull !17, !align !29, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21556)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !21556, !noalias !21555, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 136 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !21557, !noalias !21558, !noundef !17 ; 3 uses
  %i.aj = load i64, ptr %i.ag, align 8, !range !20, !alias.scope !21557, !noalias !21558, !noundef !17
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

bb.i:                                             ; preds = %bb.h
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21559
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit": ; preds = %bb.h, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !21557, !noalias !21558, !nonnull !17, !noundef !17
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.ai ; 4 uses
  store i64 0, ptr %i.an, align 8, !noalias !21560
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !21560
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !21560
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %i.b, ptr %.sroa.642.0..sroa_idx, align 8, !noalias !21560
  %i.ao = add i64 %i.ai, 1
  store i64 %i.ao, ptr %i.ah, align 8, !alias.scope !21557, !noalias !21558
  br label %bb.b

bb.j:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit
  br i1 %.not3, label %bb.l, label %bb.m

bb.k:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit21", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit23", %bb.v
  %.not5 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not5, label %bb.y, label %bb.w

bb.l:                                             ; preds = %bb.j
  br i1 %.not2, label %bb.o, label %bb.p

bb.m:                                             ; preds = %bb.j
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.ac, i64 %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21561)
  %i.ap = load ptr, ptr %0, align 8, !alias.scope !21561, !nonnull !17, !align !29, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21562)
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !21562, !noalias !21561, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 120 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 136 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !21563, !noalias !21564, !noundef !17 ; 3 uses
  %i.au = load i64, ptr %i.ar, align 8, !range !20, !alias.scope !21563, !noalias !21564, !noundef !17
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit21"

bb.n:                                             ; preds = %bb.m
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21565
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit21"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit21": ; preds = %bb.m, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !21563, !noalias !21564, !nonnull !17, !noundef !17
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.at ; 4 uses
  store i64 1, ptr %i.ay, align 8, !noalias !21566
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %i.c, ptr %.sroa.454.0..sroa_idx, align 8, !noalias !21566
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %spec.select.i.i, ptr %.sroa.555.0..sroa_idx, align 8, !noalias !21566
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i64 %i.d, ptr %.sroa.656.0..sroa_idx, align 8, !noalias !21566
  %i.az = add i64 %i.at, 1
  store i64 %i.az, ptr %i.as, align 8, !alias.scope !21563, !noalias !21564
  br label %bb.k

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17h1e00322c539418d3E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %i.c, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %i.d, i64 noundef %i.ad, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.ba = load i64, ptr %i.a, align 8, !range !44, !noundef !17
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.l
  %spec.select.i.i2268 = sub nuw i64 %i.ad, %i.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21567)
  %i.bc = load ptr, ptr %0, align 8, !alias.scope !21567, !nonnull !17, !align !29, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21568)
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !21568, !noalias !21567, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 120 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 136 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !21569, !noalias !21570, !noundef !17 ; 3 uses
  %i.bh = load i64, ptr %i.be, align 8, !range !20, !alias.scope !21569, !noalias !21570, !noundef !17
  %i.bi = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit23"

bb.q:                                             ; preds = %bb.p
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21571
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit23"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit23": ; preds = %bb.p, %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 128
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !21569, !noalias !21570, !nonnull !17, !noundef !17
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.bk, i64 %i.bg ; 4 uses
  store i64 2, ptr %i.bl, align 8, !noalias !21572
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.c, ptr %.sroa.464.0..sroa_idx, align 8, !noalias !21572
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %i.d, ptr %.sroa.565.0..sroa_idx, align 8, !noalias !21572
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i64 %spec.select.i.i2268, ptr %.sroa.666.0..sroa_idx, align 8, !noalias !21572
  %i.bm = add i64 %i.bg, 1
  store i64 %i.bm, ptr %i.bf, align 8, !alias.scope !21569, !noalias !21570
  br label %bb.k

bb.r:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !17 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !17 ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17ha843e1ee42b63447E(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %i.c, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %i.d, i64 noundef %i.bq, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17ha843e1ee42b63447E(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %i.bo, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %i.bq, i64 noundef %i.ad, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  %i.br = sub nuw i64 %i.ac, %i.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21573)
  %i.bs = load ptr, ptr %0, align 8, !alias.scope !21573, !nonnull !17, !align !29, !noundef !17 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21574)
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !21574, !noalias !21573, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 120 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 136 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !21575, !noalias !21576, !noundef !17 ; 3 uses
  %i.bx = load i64, ptr %i.bu, align 8, !range !20, !alias.scope !21575, !noalias !21576, !noundef !17
  %i.by = icmp eq i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit24"

bb.t:                                             ; preds = %bb.s
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21577
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit24"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit24": ; preds = %bb.s, %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 128
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !21575, !noalias !21576, !nonnull !17, !noundef !17
  %i.cb = getelementptr inbounds nuw [40 x i8], ptr %i.ca, i64 %i.bw ; 4 uses
  store i64 1, ptr %i.cb, align 8, !noalias !21578
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.c, ptr %.sroa.449.0..sroa_idx, align 8, !noalias !21578
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 %i.br, ptr %.sroa.550.0..sroa_idx, align 8, !noalias !21578
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store i64 %i.d, ptr %.sroa.651.0..sroa_idx, align 8, !noalias !21578
  %i.cc = add i64 %i.bw, 1
  store i64 %i.cc, ptr %i.bv, align 8, !alias.scope !21575, !noalias !21576
  %i.cd = sub nuw i64 %i.ad, %i.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21579)
  %i.ce = load ptr, ptr %i.bs, align 8, !alias.scope !21579, !noalias !21580, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 120 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 136 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !21581, !noalias !21582, !noundef !17 ; 3 uses
  %i.ci = load i64, ptr %i.cf, align 8, !range !20, !alias.scope !21581, !noalias !21582, !noundef !17
  %i.cj = icmp eq i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.u, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit25"

bb.u:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit24"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21583
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit25"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit25": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit24", %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 128
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !21581, !noalias !21582, !nonnull !17, !noundef !17
  %i.cm = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %i.ch ; 4 uses
  store i64 2, ptr %i.cm, align 8, !noalias !21584
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.c, ptr %.sroa.459.0..sroa_idx, align 8, !noalias !21584
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 %i.d, ptr %.sroa.560.0..sroa_idx, align 8, !noalias !21584
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store i64 %i.cd, ptr %.sroa.661.0..sroa_idx, align 8, !noalias !21584
  %i.cn = add i64 %i.ch, 1
  store i64 %i.cn, ptr %i.cg, align 8, !alias.scope !21581, !noalias !21582
  br label %bb.v

bb.v:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit25", %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.w:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21585)
  %i.co = load ptr, ptr %0, align 8, !alias.scope !21585, !nonnull !17, !align !29, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21586)
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !21586, !noalias !21585, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 120 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 136 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !21587, !noalias !21588, !noundef !17 ; 3 uses
  %i.ct = load i64, ptr %i.cq, align 8, !range !20, !alias.scope !21587, !noalias !21588, !noundef !17
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit26"

bb.x:                                             ; preds = %bb.w
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21589
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit26"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit26": ; preds = %bb.w, %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 128
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !21587, !noalias !21588, !nonnull !17, !noundef !17
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %i.cw, i64 %i.cs ; 4 uses
  store i64 0, ptr %i.cx, align 8, !noalias !21590
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.ac, ptr %.sroa.444.0..sroa_idx, align 8, !noalias !21590
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %i.ad, ptr %.sroa.545.0..sroa_idx, align 8, !noalias !21590
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 %.sroa.0.0.i, ptr %.sroa.646.0..sroa_idx, align 8, !noalias !21590
  %i.cy = add i64 %i.cs, 1
  store i64 %i.cy, ptr %i.cr, align 8, !alias.scope !21587, !noalias !21588
  br label %bb.y

bb.y:                                             ; preds = %bb.k, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit26"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17hb571f850c6d4c8c4E(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h284e7a1f941e37c8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit", %bb.a
  %i.c = add i64 %i.b, %2                         ; 11 uses
  %i.d = add i64 %i.b, %5                         ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21637)
  %i.e = icmp uge i64 %i.c, %3
  %i.f = icmp uge i64 %i.d, %6
  %or.cond.i = or i1 %i.e, %i.f
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.g = sub nuw i64 %3, %i.c                     ; 2 uses
  %i.h = sub nuw i64 %6, %i.d                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !21637, !noalias !21636 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val10.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !21637, !noalias !21636, !nonnull !17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !21636, !noalias !21637 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !21636, !noalias !21637, !nonnull !17
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.m = phi i64 [ %3, %.lr.ph.i.i.i.i ], [ %i.p, %bb.g ]
  %.sroa.01.032.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.g ] ; 4 uses
  %i.n = phi i64 [ %6, %.lr.ph.i.i.i.i ], [ %i.o, %bb.g ]
  %i.o = add i64 %i.n, -1                         ; 4 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.032.i.i.i.i, %i.g
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add i64 %i.m, -1                         ; 4 uses
  %i.q = icmp ult i64 %i.o, %.val11.i.i.i.i.i
  br i1 %i.q, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.o, i64 noundef %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21638
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i": ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.val10.i.i.i.i.i, i64 %i.o ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !21639, !nonnull !17, !align !31, !noundef !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !21639, !noundef !17 ; 2 uses
  %i.v = icmp ult i64 %i.p, %.val9.i.i.i.i.i
  br i1 %i.v, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.p, i64 noundef %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21638
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i"
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noalias !21640, !noundef !17
  %.not.i.i.i.i.i.i = icmp eq i64 %i.u, %i.y
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i", label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i"
  %i.z = load ptr, ptr %i.w, align 8, !noalias !21640, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %i.s, ptr nonnull readonly align 1 %i.z, i64 %i.u), !alias.scope !21641, !noalias !21642
  %i.aa = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aa, label %bb.g, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit

bb.g:                                             ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i"
  %i.ab = add nuw i64 %.sroa.01.032.i.i.i.i, 1    ; 2 uses
  %exitcond59.not.i.i.i.i = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond59.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %bb.c

_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit: ; preds = %bb.c, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i", %bb.g, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ %i.g, %bb.c ], [ %.sroa.01.032.i.i.i.i, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i" ], [ %.sroa.01.032.i.i.i.i, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i" ], [ %i.h, %bb.g ] ; 4 uses
  %i.ac = sub i64 %3, %.sroa.0.0.i                ; 6 uses
  %i.ad = sub i64 %6, %.sroa.0.0.i                ; 6 uses
  %.not2 = icmp ult i64 %i.c, %i.ac               ; 2 uses
  %.not3 = icmp ult i64 %i.d, %i.ad               ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !21643, !noalias !21644, !noundef !17 ; 3 uses
  %i.ah = load i64, ptr %i.ae, align 8, !range !20, !alias.scope !21643, !noalias !21644, !noundef !17
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

bb.i:                                             ; preds = %bb.h
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21645
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit": ; preds = %bb.h, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !21643, !noalias !21644, !nonnull !17, !noundef !17
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.ak, i64 %i.ag ; 4 uses
  store i64 0, ptr %i.al, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %2, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %5, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 %i.b, ptr %.sroa.646.0..sroa_idx, align 8
  %i.am = add i64 %i.ag, 1
  store i64 %i.am, ptr %i.af, align 8, !alias.scope !21643, !noalias !21644
  br label %bb.b

bb.j:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit
  br i1 %.not3, label %bb.l, label %bb.m

bb.k:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit21", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit23", %bb.v
  %.not5 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not5, label %bb.y, label %bb.w

bb.l:                                             ; preds = %bb.j
  br i1 %.not2, label %bb.o, label %bb.p

bb.m:                                             ; preds = %bb.j
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.ac, i64 %i.c)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !21646, !noalias !21647, !noundef !17 ; 3 uses
  %i.aq = load i64, ptr %i.an, align 8, !range !20, !alias.scope !21646, !noalias !21647, !noundef !17
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit21"

bb.n:                                             ; preds = %bb.m
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21648
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit21"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit21": ; preds = %bb.m, %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !21646, !noalias !21647, !nonnull !17, !noundef !17
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.ap ; 4 uses
  store i64 1, ptr %i.au, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.c, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %spec.select.i.i, ptr %.sroa.555.0..sroa_idx, align 8
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 %i.d, ptr %.sroa.656.0..sroa_idx, align 8
  %i.av = add i64 %i.ap, 1
  store i64 %i.av, ptr %i.ao, align 8, !alias.scope !21646, !noalias !21647
  br label %bb.k

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17h1e00322c539418d3E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %i.c, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %i.d, i64 noundef %i.ad, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.aw = load i64, ptr %i.a, align 8, !range !44, !noundef !17
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.l
  %spec.select.i.i2268 = sub nuw i64 %i.ad, %i.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !21649, !noalias !21650, !noundef !17 ; 3 uses
  %i.bb = load i64, ptr %i.ay, align 8, !range !20, !alias.scope !21649, !noalias !21650, !noundef !17
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit23"

bb.q:                                             ; preds = %bb.p
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21651
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit23"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit23": ; preds = %bb.p, %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !21649, !noalias !21650, !nonnull !17, !noundef !17
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.be, i64 %i.ba ; 4 uses
  store i64 2, ptr %i.bf, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.c, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %i.d, ptr %.sroa.565.0..sroa_idx, align 8
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 %spec.select.i.i2268, ptr %.sroa.666.0..sroa_idx, align 8
  %i.bg = add i64 %i.ba, 1
  store i64 %i.bg, ptr %i.az, align 8, !alias.scope !21649, !noalias !21650
  br label %bb.k

bb.r:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !17 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !17 ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17hb571f850c6d4c8c4E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %i.c, i64 noundef %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %i.d, i64 noundef %i.bk, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17hb571f850c6d4c8c4E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %i.bi, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %i.bk, i64 noundef %i.ad, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  %i.bl = sub nuw i64 %i.ac, %i.c
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !21652, !noalias !21653, !noundef !17 ; 4 uses
  %i.bp = load i64, ptr %i.bm, align 8, !range !20, !alias.scope !21652, !noalias !21653, !noundef !17
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit24"

bb.t:                                             ; preds = %bb.s
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21654
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit24"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit24": ; preds = %bb.s, %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !21652, !noalias !21653, !nonnull !17, !noundef !17
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %i.bo ; 4 uses
  store i64 1, ptr %i.bt, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %i.c, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %i.bl, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i64 %i.d, ptr %.sroa.651.0..sroa_idx, align 8
  %i.bu = add i64 %i.bo, 1                        ; 3 uses
  store i64 %i.bu, ptr %i.bn, align 8, !alias.scope !21652, !noalias !21653
  %i.bv = sub nuw i64 %i.ad, %i.d
  %i.bw = load i64, ptr %i.bm, align 8, !range !20, !alias.scope !21655, !noalias !21656, !noundef !17
  %i.bx = icmp eq i64 %i.bu, %i.bw
  br i1 %i.bx, label %bb.u, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit25"

bb.u:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit24"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21657
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit25"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit25": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit24", %bb.u
  %i.by = load ptr, ptr %i.br, align 8, !alias.scope !21655, !noalias !21656, !nonnull !17, !noundef !17
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %i.by, i64 %i.bu ; 4 uses
  store i64 2, ptr %i.bz, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.c, ptr %.sroa.459.0..sroa_idx, align 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 %i.d, ptr %.sroa.560.0..sroa_idx, align 8
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i64 %i.bv, ptr %.sroa.661.0..sroa_idx, align 8
  %i.ca = add i64 %i.bo, 2
  store i64 %i.ca, ptr %i.bn, align 8, !alias.scope !21655, !noalias !21656
  br label %bb.v

bb.v:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit25", %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.w:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !21658, !noalias !21659, !noundef !17 ; 3 uses
  %i.ce = load i64, ptr %i.cb, align 8, !range !20, !alias.scope !21658, !noalias !21659, !noundef !17
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit26"

bb.x:                                             ; preds = %bb.w
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21660
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit26"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit26": ; preds = %bb.w, %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !21658, !noalias !21659, !nonnull !17, !noundef !17
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.ch, i64 %i.cd ; 4 uses
  store i64 0, ptr %i.ci, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %i.ad, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i64 %.sroa.0.0.i, ptr %.sroa.642.0..sroa_idx, align 8
  %i.cj = add i64 %i.cd, 1
  store i64 %i.cj, ptr %i.cc, align 8, !alias.scope !21658, !noalias !21659
  br label %bb.y

bb.y:                                             ; preds = %bb.k, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit26"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17hc586c8503362c4e8E(ptr noalias noundef nonnull align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias noundef nonnull align 8 dereferenceable(32) %9, ptr noalias noundef nonnull align 8 dereferenceable(32) %10, i64 %11, i32 noundef range(i32 0, 1000000001) %12) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21728)
  %i.b = icmp uge i64 %3, %4
  %i.c = icmp uge i64 %7, %8
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %8, %7
  %spec.select.i.i4.i.i.i = sub nuw i64 %4, %3
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.b
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 %2) ; 2 uses
  %umax15.i = tail call i64 @llvm.umax.i64(i64 %7, i64 %6) ; 2 uses
  %i.d = sub nuw i64 %umax15.i, %7
  %i.e = sub nuw i64 %umax.i, %3
  %invariant.gep.i = getelementptr [16 x i8], ptr %5, i64 %7
  %invariant.gep21.i = getelementptr [16 x i8], ptr %1, i64 %3
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.preheader.i
  %.sroa.01.036.i.i.i.i = phi i64 [ %i.f, %bb.e ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 7 uses
  %i.f = add nuw i64 %.sroa.01.036.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.01.036.i.i.i.i, %i.d
  br i1 %exitcond.not.i, label %bb.c, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax15.i, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21729
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i
  %exitcond16.not.i = icmp eq i64 %.sroa.01.036.i.i.i.i, %i.e
  br i1 %exitcond16.not.i, label %bb.d, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i"

bb.d:                                             ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21730
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.01.036.i.i.i.i ; 2 uses
  %gep22.i = getelementptr [16 x i8], ptr %invariant.gep21.i, i64 %.sroa.01.036.i.i.i.i ; 2 uses
  %i.g = getelementptr i8, ptr %gep.i, i64 8
  %.val9.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !21728, !noalias !21731, !noundef !17 ; 2 uses
  %i.h = getelementptr i8, ptr %gep22.i, i64 8
  %.val11.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !21727, !noalias !21732, !noundef !17
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i.i.i.i, %.val11.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i", label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i"
  %.val10.i.i.i.i.i = load ptr, ptr %gep22.i, align 8, !alias.scope !21727, !noalias !21732, !nonnull !17, !align !31, !noundef !17
  %.val.i.i.i.i.i = load ptr, ptr %gep.i, align 8, !alias.scope !21728, !noalias !21731, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val10.i.i.i.i.i, i64 %.val9.i.i.i.i.i), !alias.scope !21733, !noalias !21734
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.i, label %bb.e, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit

bb.e:                                             ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i"
  %exitcond.not.i.i.i.i = icmp eq i64 %i.f, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread84, label %.lr.ph.i.i.i.i

_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit: ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i"
  %.not = icmp eq i64 %.sroa.01.036.i.i.i.i, 0
  br i1 %.not, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread84

_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread: ; preds = %bb.b, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit", %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit
  %.sroa.0.0.i83 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit ], [ %.sroa.0.0.i87, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit" ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.j = add i64 %.sroa.0.0.i83, %3               ; 11 uses
  %i.k = add i64 %.sroa.0.0.i83, %7               ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21736)
  %i.l = icmp uge i64 %i.j, %4
  %i.m = icmp uge i64 %i.k, %8
  %or.cond.i21 = or i1 %i.l, %i.m
  br i1 %or.cond.i21, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread
  %i.n = sub nuw i64 %4, %i.j                     ; 2 uses
  %i.o = sub nuw i64 %8, %i.k                     ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i22
  %i.p = phi i64 [ %4, %.lr.ph.i.i.i.i22 ], [ %i.s, %bb.j ]
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i22 ], [ %i.aa, %bb.j ] ; 4 uses
  %i.q = phi i64 [ %8, %.lr.ph.i.i.i.i22 ], [ %i.r, %bb.j ]
  %i.r = add i64 %i.q, -1                         ; 4 uses
  %exitcond.not.i.i.i.i23 = icmp eq i64 %.sroa.01.034.i.i.i.i, %i.n
  br i1 %exitcond.not.i.i.i.i23, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add i64 %i.p, -1                         ; 4 uses
  %i.t = icmp ult i64 %i.r, %6
  br i1 %i.t, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i24", label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.r, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21737
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i24": ; preds = %bb.g
  %i.u = icmp ult i64 %i.s, %2
  br i1 %i.u, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i25", label %bb.i

bb.i:                                             ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i24"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.s, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21738
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i25": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i24"
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.r ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val9.i.i.i.i.i26 = load i64, ptr %i.x, align 8, !alias.scope !21736, !noalias !21739, !noundef !17 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 8
  %.val11.i.i.i.i.i27 = load i64, ptr %i.y, align 8, !alias.scope !21735, !noalias !21740, !noundef !17
  %.not.i.i.i.i.i.i.i28 = icmp eq i64 %.val9.i.i.i.i.i26, %.val11.i.i.i.i.i27
  br i1 %.not.i.i.i.i.i.i.i28, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i30", label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i30": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i25"
  %.val10.i.i.i.i.i31 = load ptr, ptr %i.w, align 8, !alias.scope !21735, !noalias !21740, !nonnull !17, !align !31, !noundef !17
  %.val.i.i.i.i.i32 = load ptr, ptr %i.v, align 8, !alias.scope !21736, !noalias !21739, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i.i.i33 = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i32, ptr nonnull readonly align 1 %.val10.i.i.i.i.i31, i64 %.val9.i.i.i.i.i26), !alias.scope !21741, !noalias !21742
  %i.z = icmp eq i32 %bcmp.i.i.i.i.i.i.i33, 0
  br i1 %i.z, label %bb.j, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit

bb.j:                                             ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i30"
  %i.aa = add nuw i64 %.sroa.01.034.i.i.i.i, 1    ; 2 uses
  %exitcond63.not.i.i.i.i = icmp eq i64 %i.aa, %i.o
  br i1 %exitcond63.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %bb.f

_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit: ; preds = %bb.f, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i25", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i30", %bb.j, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread
  %.sroa.0.0.i29 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread ], [ %i.n, %bb.f ], [ %.sroa.01.034.i.i.i.i, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i25" ], [ %.sroa.01.034.i.i.i.i, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i30" ], [ %i.o, %bb.j ] ; 4 uses
  %i.ab = sub i64 %4, %.sroa.0.0.i29              ; 6 uses
  %i.ac = sub i64 %8, %.sroa.0.0.i29              ; 6 uses
  %.not2 = icmp ult i64 %i.j, %i.ab               ; 2 uses
  %.not3 = icmp ult i64 %i.k, %i.ac               ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.l, label %bb.m

_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread84: ; preds = %bb.e, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit
  %.sroa.0.0.i87 = phi i64 [ %.sroa.01.036.i.i.i.i, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit ], [ %.sroa.0.0.i.i.i.i, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !21743, !noalias !21744, !noundef !17 ; 3 uses
  %i.ag = load i64, ptr %i.ad, align 8, !range !20, !alias.scope !21743, !noalias !21744, !noundef !17
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

bb.k:                                             ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread84
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21745
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit": ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread84, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !21743, !noalias !21744, !nonnull !17, !noundef !17
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.af ; 4 uses
  store i64 0, ptr %i.ak, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %3, ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %7, ptr %.sroa.558.0..sroa_idx, align 8
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 %.sroa.0.0.i87, ptr %.sroa.659.0..sroa_idx, align 8
  %i.al = add i64 %i.af, 1
  store i64 %i.al, ptr %i.ae, align 8, !alias.scope !21743, !noalias !21744
  br label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit.thread

bb.l:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit
  br i1 %.not3, label %bb.n, label %bb.o

bb.m:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit34", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36", %bb.x
  %.not5 = icmp eq i64 %.sroa.0.0.i29, 0
  br i1 %.not5, label %bb.aa, label %bb.y

bb.n:                                             ; preds = %bb.l
  br i1 %.not2, label %bb.q, label %bb.r

bb.o:                                             ; preds = %bb.l
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.ab, i64 %i.j)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !21746, !noalias !21747, !noundef !17 ; 3 uses
  %i.ap = load i64, ptr %i.am, align 8, !range !20, !alias.scope !21746, !noalias !21747, !noundef !17
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit34"

bb.p:                                             ; preds = %bb.o
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21748
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit34"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit34": ; preds = %bb.o, %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !21746, !noalias !21747, !nonnull !17, !noundef !17
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.ao ; 4 uses
  store i64 1, ptr %i.at, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.j, ptr %.sroa.467.0..sroa_idx, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %spec.select.i.i, ptr %.sroa.568.0..sroa_idx, align 8
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %i.k, ptr %.sroa.669.0..sroa_idx, align 8
  %i.au = add i64 %i.ao, 1
  store i64 %i.au, ptr %i.an, align 8, !alias.scope !21746, !noalias !21747
  br label %bb.m

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17he29e0990f4fb73b2E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.j, i64 noundef %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.k, i64 noundef %i.ac, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  %i.av = load i64, ptr %i.a, align 8, !range !44, !noundef !17
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.t, label %bb.u

bb.r:                                             ; preds = %bb.n
  %spec.select.i.i3588 = sub nuw i64 %i.ac, %i.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !21749, !noalias !21750, !noundef !17 ; 3 uses
  %i.ba = load i64, ptr %i.ax, align 8, !range !20, !alias.scope !21749, !noalias !21750, !noundef !17
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.s, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"

bb.s:                                             ; preds = %bb.r
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21751
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36": ; preds = %bb.r, %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !21749, !noalias !21750, !nonnull !17, !noundef !17
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %i.az ; 4 uses
  store i64 2, ptr %i.be, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.j, ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.k, ptr %.sroa.578.0..sroa_idx, align 8
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 %spec.select.i.i3588, ptr %.sroa.679.0..sroa_idx, align 8
  %i.bf = add i64 %i.az, 1
  store i64 %i.bf, ptr %i.ay, align 8, !alias.scope !21749, !noalias !21750
  br label %bb.m

bb.t:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !17 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !17 ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17hc586c8503362c4e8E(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.j, i64 noundef %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.k, i64 noundef %i.bj, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17hc586c8503362c4e8E(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.bh, i64 noundef %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.bj, i64 noundef %i.ac, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  br label %bb.x

bb.u:                                             ; preds = %bb.q
  %i.bk = sub nuw i64 %i.ab, %i.j
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !21752, !noalias !21753, !noundef !17 ; 4 uses
  %i.bo = load i64, ptr %i.bl, align 8, !range !20, !alias.scope !21752, !noalias !21753, !noundef !17
  %i.bp = icmp eq i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

bb.v:                                             ; preds = %bb.u
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21754
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37": ; preds = %bb.u, %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !21752, !noalias !21753, !nonnull !17, !noundef !17
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.br, i64 %i.bn ; 4 uses
  store i64 1, ptr %i.bs, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.j, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %i.bk, ptr %.sroa.563.0..sroa_idx, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 %i.k, ptr %.sroa.664.0..sroa_idx, align 8
  %i.bt = add i64 %i.bn, 1                        ; 3 uses
  store i64 %i.bt, ptr %i.bm, align 8, !alias.scope !21752, !noalias !21753
  %i.bu = sub nuw i64 %i.ac, %i.k
  %i.bv = load i64, ptr %i.bl, align 8, !range !20, !alias.scope !21755, !noalias !21756, !noundef !17
  %i.bw = icmp eq i64 %i.bt, %i.bv
  br i1 %i.bw, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

bb.w:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21757
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37", %bb.w
  %i.bx = load ptr, ptr %i.bq, align 8, !alias.scope !21755, !noalias !21756, !nonnull !17, !noundef !17
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.bt ; 4 uses
  store i64 2, ptr %i.by, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.j, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.k, ptr %.sroa.573.0..sroa_idx, align 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store i64 %i.bu, ptr %.sroa.674.0..sroa_idx, align 8
  %i.bz = add i64 %i.bn, 2
  store i64 %i.bz, ptr %i.bm, align 8, !alias.scope !21755, !noalias !21756
  br label %bb.x

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38", %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.y:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !21758, !noalias !21759, !noundef !17 ; 3 uses
  %i.cd = load i64, ptr %i.ca, align 8, !range !20, !alias.scope !21758, !noalias !21759, !noundef !17
  %i.ce = icmp eq i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

bb.z:                                             ; preds = %bb.y
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21760
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39": ; preds = %bb.y, %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !21758, !noalias !21759, !nonnull !17, !noundef !17
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.cc ; 4 uses
  store i64 0, ptr %i.ch, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.ab, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i64 %.sroa.0.0.i29, ptr %.sroa.655.0..sroa_idx, align 8
  %i.ci = add i64 %i.cc, 1
  store i64 %i.ci, ptr %i.cb, align 8, !alias.scope !21758, !noalias !21759
  br label %bb.aa

bb.aa:                                            ; preds = %bb.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17heae852a2d3359bafE(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h6cff98eda6f4474bE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 14 uses
  %i.d = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17h1c064e633f72fd67E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 10 uses
  %.not2 = icmp ult i64 %i.b, %i.e                ; 2 uses
  %.not3 = icmp ult i64 %i.c, %i.f                ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !21785
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.g, align 8, !alias.scope !21785
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !21786
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21786
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21786
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21786
  %i.i = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.i, i64 %.sroa.4.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.i, i64 %.sroa.52.0.copyload.i, i64 %5
  %i.j = select i1 %i.i, i64 %.sroa.6.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.j, %i.a
  store i64 1, ptr %i.h, align 8, !alias.scope !21786
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21786
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21786
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21786
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not3, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bc, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41", %bb.b, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit", %bb.bb
  %.not5 = icmp eq i64 %i.d, 0
  br i1 %.not5, label %bb.bg, label %bb.bf

bb.f:                                             ; preds = %bb.d
  br i1 %.not2, label %bb.j, label %bb.bb

bb.g:                                             ; preds = %bb.d
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b) ; 2 uses
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h4c85eaf035ce3d41E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !21787
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21787
  %i.l = add i64 %.sroa.5.0.copyload.i, %spec.select.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit"

bb.i:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i22, align 8, !alias.scope !21787
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i21, align 8, !alias.scope !21787
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit": ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.l, %bb.h ], [ %spec.select.i.i, %bb.i ]
  store i64 1, ptr %0, align 8, !alias.scope !21787
  store i64 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21787
  br label %bb.e

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21789)
  %spec.select.i.i.i = sub nuw i64 %i.e, %i.b     ; 12 uses
  %spec.select.i.i56.i83 = sub i64 %i.f, %i.c     ; 7 uses
  %i.m = sub i64 %spec.select.i.i.i, %spec.select.i.i56.i83 ; 5 uses
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0                   ; 4 uses
  %i.o = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808), !noalias !21790
  store i64 0, ptr %i.o, align 8, !noalias !21790
  %i.p = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809), !noalias !21791
  store i64 0, ptr %i.p, align 8, !noalias !21791
  %i.q = add i64 %spec.select.i.i.i, 1
  %i.r = add i64 %i.q, %spec.select.i.i56.i83
  %i.s = lshr i64 %i.r, 1                         ; 3 uses
  %i.t = add nuw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !21788, !noalias !21790, !noundef !17 ; 2 uses
  %i.w = icmp ult i64 %i.v, 1152921504606846976
  tail call void @llvm.assume(i1 %i.w)
  %.not41.not.i = icmp samesign ugt i64 %i.v, %i.s
  br i1 %.not41.not.i, label %bb.l, label %bb.k, !prof !23

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54, !noalias !21791
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !21789, !noalias !21792, !noundef !17 ; 2 uses
  %i.z = icmp ult i64 %i.y, 1152921504606846976
  tail call void @llvm.assume(i1 %i.z)
  %.not42.not.i = icmp samesign ugt i64 %i.y, %i.s
  br i1 %.not42.not.i, label %bb.n, label %bb.m, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54, !noalias !21791
  unreachable

bb.n:                                             ; preds = %bb.l, %._crit_edge120.i
  %.sroa.029.1124.i = phi i64 [ %.sroa.029.1.i, %._crit_edge120.i ], [ 1, %bb.l ] ; 3 uses
  %.sroa.029.0123.i = phi i64 [ %.sroa.029.1124.i, %._crit_edge120.i ], [ 0, %bb.l ] ; 23 uses
  %i.aa = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef range(i32 0, 1000000001) %10), !noalias !21791
  br i1 %i.aa, label %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = sub nsw i64 0, %.sroa.029.0123.i        ; 9 uses
  %i.ac = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0123.i, i64 %i.ab) ; 2 uses
  switch i8 %i.ac, label %.loopexit.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.ad = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.029.0123.i, %bb.o ], [ %i.ad, %bb.p ] ; 2 uses
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.ae = icmp eq i64 %.sroa.029.0123.i, 0        ; 2 uses
  br i1 %i.ae, label %._crit_edge147.i, label %._crit_edge145.i

._crit_edge145.i:                                 ; preds = %bb.q
  %.pre159.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.af = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21791
  %i.ag = load i64, ptr %i.af, align 8, !noalias !21791, !noundef !17
  %i.ah = add i64 %i.ag, 1
  br label %bb.r

._crit_edge147.i:                                 ; preds = %bb.q
  %i.ai = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21791
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !21791, !noundef !17
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge147.i, %._crit_edge145.i
  %.sroa.06.0.peel.i = phi i64 [ %i.aj, %._crit_edge147.i ], [ %i.ah, %._crit_edge145.i ] ; 6 uses
  %i.ak = sub i64 %.sroa.06.0.peel.i, %.sroa.029.0123.i ; 3 uses
  %i.al = icmp ult i64 %.sroa.06.0.peel.i, %spec.select.i.i.i
  %i.am = icmp ult i64 %i.ak, %spec.select.i.i56.i83
  %or.cond107.peel.i = and i1 %i.al, %i.am
  br i1 %or.cond107.peel.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = add i64 %.sroa.06.0.peel.i, %i.b
  %i.ao = add i64 %i.ak, %i.c
  %i.ap = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h6cff98eda6f4474bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.an, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.ao, i64 noundef %i.f), !noalias !21793
  %i.aq = add i64 %i.ap, %.sroa.06.0.peel.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.06.1.peel.i = phi i64 [ %i.aq, %bb.s ], [ %.sroa.06.0.peel.i, %bb.r ]
  %i.ar = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21791
  store i64 %.sroa.06.1.peel.i, ptr %i.ar, align 8, !noalias !21791
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.012.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.as, i1 false)
  %.not47.not.peel.i = icmp slt i64 %.sroa.012.0.peel.i, %.sroa.029.0123.i
  br i1 %.not47.not.peel.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.at = sub i64 0, %i.as
  %i.au = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21791
  %i.av = load i64, ptr %i.au, align 8, !noalias !21791, !noundef !17
  %i.aw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21791
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !21791, !noundef !17
  %i.ay = add i64 %i.ax, %i.av
  %.not48.peel.i = icmp ult i64 %i.ay, %spec.select.i.i.i
  br i1 %.not48.peel.i, label %bb.w, label %.loopexit129.i

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %i.ab
  %or.cond108.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond108.peel.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.w, %bb.ay
  %.sroa.7.0111.i = phi i64 [ %.sroa.7.1.i, %bb.ay ], [ %.sroa.7.1.peel.i, %bb.w ] ; 5 uses
  %i.az = add nsw i64 %.sroa.7.0111.i, -1         ; 8 uses
  %i.ba = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.az, i64 %i.ab)
  switch i8 %i.ba, label %.loopexit.i [
    i8 -1, label %.lr.ph119.preheader.i
    i8 0, label %bb.y
    i8 1, label %bb.x
  ]

.loopexit.i:                                      ; preds = %bb.o, %.lr.ph.peel.next.i
  unreachable

bb.x:                                             ; preds = %.lr.ph.peel.next.i
  %i.bb = add nsw i64 %.sroa.7.0111.i, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.peel.next.i
  %.sroa.7.1.i = phi i64 [ %i.az, %.lr.ph.peel.next.i ], [ %i.bb, %bb.x ] ; 2 uses
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.x ]
  %i.bc = icmp eq i64 %i.az, %i.ab
  br i1 %i.bc, label %bb.at, label %bb.as

.lr.ph119.preheader.i:                            ; preds = %bb.ay, %.lr.ph.peel.next.i, %bb.w
  switch i8 %i.ac, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.aa
    i8 1, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph119.preheader.i
  %i.bd = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph119.preheader.i
  %.sroa.792.1.peel.i = phi i64 [ %.sroa.029.0123.i, %.lr.ph119.preheader.i ], [ %i.bd, %bb.z ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph119.preheader.i ], [ false, %bb.z ]
  br i1 %i.ae, label %._crit_edge150.i, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.aa
  %.pre153.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.be = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21791
  %i.bf = load i64, ptr %i.be, align 8, !noalias !21791, !noundef !17
  %i.bg = add i64 %i.bf, 1
  br label %bb.ab

._crit_edge150.i:                                 ; preds = %bb.aa
  %i.bh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21791
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !21791, !noundef !17
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge150.i, %._crit_edge148.i
  %.sroa.016.0.peel.i = phi i64 [ %i.bi, %._crit_edge150.i ], [ %i.bg, %._crit_edge148.i ] ; 5 uses
  %i.bj = sub i64 %.sroa.016.0.peel.i, %.sroa.029.0123.i ; 4 uses
  %i.bk = icmp ult i64 %.sroa.016.0.peel.i, %spec.select.i.i.i
  %i.bl = icmp ult i64 %i.bj, %spec.select.i.i56.i83
  %or.cond.peel.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.peel.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bm = sub nuw i64 %i.e, %.sroa.016.0.peel.i
  %i.bn = sub i64 %i.f, %i.bj
  %i.bo = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17h1c064e633f72fd67E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.bn), !noalias !21793 ; 2 uses
  %i.bp = add i64 %i.bo, %.sroa.016.0.peel.i
  %i.bq = add i64 %i.bo, %i.bj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.022.0.peel.i = phi i64 [ %i.bq, %bb.ac ], [ %i.bj, %bb.ab ]
  %.sroa.016.1.peel.i = phi i64 [ %i.bp, %bb.ac ], [ %.sroa.016.0.peel.i, %bb.ab ] ; 2 uses
  %i.br = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21791
  store i64 %.sroa.016.1.peel.i, ptr %i.br, align 8, !noalias !21791
  br i1 %.not.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bs = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.026.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.bs, i1 false)
  %.not44.peel.i = icmp sgt i64 %.sroa.026.0.peel.i, %.sroa.029.0123.i
  br i1 %.not44.peel.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = sub i64 0, %i.bs
  %i.bu = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21791
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !21791, !noundef !17
  %i.bw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21791
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !21791, !noundef !17
  %i.by = add i64 %i.bx, %i.bv
  %.not45.peel.i = icmp ult i64 %i.by, %spec.select.i.i.i
  br i1 %.not45.peel.i, label %bb.ag, label %.loopexit136.i

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.not.i57.peel.i = icmp slt i64 %.sroa.792.1.peel.i, %i.ab
  %or.cond109.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i57.peel.i
  br i1 %or.cond109.peel.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i

.lr.ph119.peel.next.i:                            ; preds = %bb.ag, %bb.aq
  %.sroa.792.0116.i = phi i64 [ %.sroa.792.1.i, %bb.aq ], [ %.sroa.792.1.peel.i, %bb.ag ] ; 5 uses
  %i.bz = add nsw i64 %.sroa.792.0116.i, -1       ; 8 uses
  %i.ca = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.bz, i64 %i.ab)
  switch i8 %i.ca, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.ai
    i8 1, label %bb.ah
  ]

.loopexit135.i:                                   ; preds = %.lr.ph119.preheader.i, %.lr.ph119.peel.next.i
  unreachable

bb.ah:                                            ; preds = %.lr.ph119.peel.next.i
  %i.cb = add nsw i64 %.sroa.792.0116.i, -2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph119.peel.next.i
  %.sroa.792.1.i = phi i64 [ %i.bz, %.lr.ph119.peel.next.i ], [ %i.cb, %bb.ah ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph119.peel.next.i ], [ false, %bb.ah ]
  %i.cc = icmp eq i64 %i.bz, %i.ab
  br i1 %i.cc, label %bb.ak, label %bb.aj

._crit_edge120.i:                                 ; preds = %bb.aq, %.lr.ph119.peel.next.i, %bb.o, %bb.ag, %.lr.ph119.preheader.i
  %i.cd = icmp slt i64 %.sroa.029.1124.i, %i.t    ; 2 uses
  %i.ce = zext i1 %i.cd to i64
  %.sroa.029.1.i = add nuw nsw i64 %.sroa.029.1124.i, %i.ce
  br i1 %i.cd, label %bb.n, label %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit

bb.aj:                                            ; preds = %bb.ai
  %.not43.i = icmp eq i64 %i.bz, %.sroa.029.0123.i
  %.pre151.i = add nsw i64 %.sroa.792.0116.i, -2  ; 2 uses
  br i1 %.not43.i, label %._crit_edge149.i, label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.ai
  %i.cf = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21791
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !21791, !noundef !17
  br label %bb.am

._crit_edge149.i:                                 ; preds = %bb.al, %bb.aj
  %i.ch = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21791
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !21791, !noundef !17
  %i.cj = add i64 %i.ci, 1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ck = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814), !noalias !21791
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !21791, !noundef !17
  %i.cm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815), !noalias !21791
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !21791, !noundef !17
  %i.co = icmp ult i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.ak, label %._crit_edge149.i

bb.am:                                            ; preds = %._crit_edge149.i, %bb.ak
  %.sroa.016.0.i = phi i64 [ %i.cg, %bb.ak ], [ %i.cj, %._crit_edge149.i ] ; 5 uses
  %i.cp = sub i64 %.sroa.016.0.i, %i.bz           ; 4 uses
  %i.cq = icmp ult i64 %.sroa.016.0.i, %spec.select.i.i.i
  %i.cr = icmp ult i64 %i.cp, %spec.select.i.i56.i83
  %or.cond.i = and i1 %i.cq, %i.cr
  br i1 %or.cond.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  %.sroa.022.0.i = phi i64 [ %i.cx, %bb.ao ], [ %i.cp, %bb.am ]
  %.sroa.016.1.i = phi i64 [ %i.cw, %bb.ao ], [ %.sroa.016.0.i, %bb.am ] ; 2 uses
  %i.cs = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21791
  store i64 %.sroa.016.1.i, ptr %i.cs, align 8, !noalias !21791
  br i1 %.not.i, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.ct = sub nuw i64 %i.e, %.sroa.016.0.i
  %i.cu = sub i64 %i.f, %i.cp
  %i.cv = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17h1c064e633f72fd67E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.cu), !noalias !21793 ; 2 uses
  %i.cw = add i64 %i.cv, %.sroa.016.0.i
  %i.cx = add i64 %i.cv, %i.cp
  br label %bb.an

bb.ap:                                            ; preds = %bb.an
  %i.cy = sub i64 %i.bz, %i.m                     ; 2 uses
  %.sroa.026.0.i = tail call i64 @llvm.abs.i64(i64 %i.cy, i1 false)
  %.not44.i = icmp sgt i64 %.sroa.026.0.i, %.sroa.029.0123.i
  br i1 %.not44.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.ap, %bb.an
  %.not.i57.i = icmp slt i64 %.sroa.792.1.i, %i.ab
  %or.cond109.i = select i1 %.sroa.12.1.i, i1 true, i1 %.not.i57.i
  br i1 %or.cond109.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i, !llvm.loop !21773

bb.ar:                                            ; preds = %bb.ap
  %i.cz = sub i64 0, %i.cy
  %i.da = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21791
  %i.db = load i64, ptr %i.da, align 8, !noalias !21791, !noundef !17
  %i.dc = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21791
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !21791, !noundef !17
  %i.de = add i64 %i.dd, %i.db
  %.not45.i = icmp ult i64 %i.de, %spec.select.i.i.i
  br i1 %.not45.i, label %bb.aq, label %.loopexit136.i

.loopexit136.i:                                   ; preds = %bb.af, %bb.ar
  %.sroa.022.0.lcssa.i = phi i64 [ %.sroa.022.0.i, %bb.ar ], [ %.sroa.022.0.peel.i, %bb.af ]
  %.sroa.016.1.lcssa.i = phi i64 [ %.sroa.016.1.i, %bb.ar ], [ %.sroa.016.1.peel.i, %bb.af ]
  %i.df = sub i64 %i.e, %.sroa.016.1.lcssa.i
  %i.dg = sub i64 %i.f, %.sroa.022.0.lcssa.i
  br label %bb.bc

bb.as:                                            ; preds = %bb.y
  %.not46.i = icmp eq i64 %i.az, %.sroa.029.0123.i
  %.pre157.i = add nsw i64 %.sroa.7.0111.i, -2    ; 2 uses
  br i1 %.not46.i, label %._crit_edge146.i, label %bb.au

bb.at:                                            ; preds = %bb.au, %bb.y
  %i.dh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21791
  %i.di = load i64, ptr %i.dh, align 8, !noalias !21791, !noundef !17
  br label %bb.av

._crit_edge146.i:                                 ; preds = %bb.au, %bb.as
  %i.dj = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21791
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !21791, !noundef !17
  %i.dl = add i64 %i.dk, 1
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.dm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821), !noalias !21791
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !21791, !noundef !17
  %i.do = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822), !noalias !21791
  %i.dp = load i64, ptr %i.do, align 8, !noalias !21791, !noundef !17
  %i.dq = icmp ult i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.at, label %._crit_edge146.i

bb.av:                                            ; preds = %._crit_edge146.i, %bb.at
  %.sroa.06.0.i = phi i64 [ %i.di, %bb.at ], [ %i.dl, %._crit_edge146.i ] ; 6 uses
  %i.dr = sub i64 %.sroa.06.0.i, %i.az            ; 3 uses
  %i.ds = icmp ult i64 %.sroa.06.0.i, %spec.select.i.i.i
  %i.dt = icmp ult i64 %i.dr, %spec.select.i.i56.i83
  %or.cond107.i = and i1 %i.ds, %i.dt
  br i1 %or.cond107.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %.sroa.06.1.i = phi i64 [ %i.dy, %bb.ax ], [ %.sroa.06.0.i, %bb.av ]
  %i.du = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21791
  store i64 %.sroa.06.1.i, ptr %i.du, align 8, !noalias !21791
  br i1 %.not.i, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.dv = add i64 %.sroa.06.0.i, %i.b
  %i.dw = add i64 %i.dr, %i.c
  %i.dx = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h6cff98eda6f4474bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.dv, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.dw, i64 noundef %i.f), !noalias !21793
  %i.dy = add i64 %i.dx, %.sroa.06.0.i
  br label %bb.aw

bb.ay:                                            ; preds = %bb.ba, %bb.az, %bb.aw
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.ab
  %or.cond108.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond108.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !21774

bb.az:                                            ; preds = %bb.aw
  %i.dz = sub i64 %i.az, %i.m                     ; 2 uses
  %.sroa.012.0.i = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.not47.not.i = icmp slt i64 %.sroa.012.0.i, %.sroa.029.0123.i
  br i1 %.not47.not.i, label %bb.ba, label %bb.ay

bb.ba:                                            ; preds = %bb.az
  %i.ea = sub i64 0, %i.dz
  %i.eb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21791
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !21791, !noundef !17
  %i.ed = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21791
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !21791, !noundef !17
  %i.ef = add i64 %i.ee, %i.ec
  %.not48.i = icmp ult i64 %i.ef, %spec.select.i.i.i
  br i1 %.not48.i, label %bb.ay, label %.loopexit129.i

.loopexit129.i:                                   ; preds = %bb.v, %bb.ba
  %.sroa.06.0.lcssa.i = phi i64 [ %.sroa.06.0.i, %bb.ba ], [ %.sroa.06.0.peel.i, %bb.v ]
  %.lcssa.i = phi i64 [ %i.dr, %bb.ba ], [ %i.ak, %bb.v ]
  %i.eg = add i64 %.sroa.06.0.lcssa.i, %i.b
  %i.eh = add i64 %.lcssa.i, %i.c
  br label %bb.bc

bb.bb:                                            ; preds = %bb.f
  %spec.select.i.i2484 = sub nuw i64 %i.f, %i.c
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h4c85eaf035ce3d41E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i25 = load i64, ptr %i.ei, align 8, !alias.scope !21794
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i27 = load i64, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21794
  %.sroa.52.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i29 = load i64, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21794
  %.sroa.6.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i31 = load i64, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21794
  %i.ej = trunc nuw i64 %.sroa.01.0.copyload.i25 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i32 = select i1 %i.ej, i64 %.sroa.4.0.copyload.i27, i64 %i.b
  %.sroa.5.sroa.5.0.i33 = select i1 %i.ej, i64 %.sroa.52.0.copyload.i29, i64 %i.c
  %i.ek = select i1 %i.ej, i64 %.sroa.6.0.copyload.i31, i64 0
  %.sroa.5.sroa.6.0.i34 = add i64 %i.ek, %spec.select.i.i2484
  store i64 1, ptr %i.ei, align 8, !alias.scope !21794
  store i64 %.sroa.5.sroa.0.0.i32, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21794
  store i64 %.sroa.5.sroa.5.0.i33, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21794
  store i64 %.sroa.5.sroa.6.0.i34, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21794
  br label %bb.e

bb.bc:                                            ; preds = %.loopexit129.i, %.loopexit136.i
  %.sroa.677.0.ph = phi i64 [ %i.eh, %.loopexit129.i ], [ %i.dg, %.loopexit136.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.eg, %.loopexit129.i ], [ %i.df, %.loopexit136.i ] ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17heae852a2d3359bafE(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.677.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17heae852a2d3359bafE(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.677.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit: ; preds = %._crit_edge120.i, %bb.n
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h4c85eaf035ce3d41E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i35 = load i64, ptr %0, align 8, !alias.scope !21795
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.el = trunc nuw i64 %.sroa.0.0.copyload.i35 to i1
  br i1 %i.el, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit
  %.sroa.5.0.copyload.i40 = load i64, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21795
  %i.em = add i64 %.sroa.5.0.copyload.i40, %spec.select.i.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41"

bb.be:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i38, align 8, !alias.scope !21795
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i37, align 8, !alias.scope !21795
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41": ; preds = %bb.bd, %bb.be
  %.sink.i39 = phi i64 [ %i.em, %bb.bd ], [ %spec.select.i.i.i, %bb.be ]
  store i64 1, ptr %0, align 8, !alias.scope !21795
  store i64 %.sink.i39, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21795
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h4c85eaf035ce3d41E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i42 = load i64, ptr %i.en, align 8, !alias.scope !21796
  %.sroa.4.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i44 = load i64, ptr %.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !21796
  %.sroa.52.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i46 = load i64, ptr %.sroa.52.0..sroa_idx.i45, align 8, !alias.scope !21796
  %.sroa.6.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i48 = load i64, ptr %.sroa.6.0..sroa_idx.i47, align 8, !alias.scope !21796
  %i.eo = trunc nuw i64 %.sroa.01.0.copyload.i42 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i49 = select i1 %i.eo, i64 %.sroa.4.0.copyload.i44, i64 %i.b
  %.sroa.5.sroa.5.0.i50 = select i1 %i.eo, i64 %.sroa.52.0.copyload.i46, i64 %i.c
  %i.ep = select i1 %i.eo, i64 %.sroa.6.0.copyload.i48, i64 0
  %.sroa.5.sroa.6.0.i51 = add i64 %spec.select.i.i56.i83, %i.ep
  store i64 1, ptr %i.en, align 8, !alias.scope !21796
  store i64 %.sroa.5.sroa.0.0.i49, ptr %.sroa.4.0..sroa_idx.i43, align 8, !alias.scope !21796
  store i64 %.sroa.5.sroa.5.0.i50, ptr %.sroa.52.0..sroa_idx.i45, align 8, !alias.scope !21796
  store i64 %.sroa.5.sroa.6.0.i51, ptr %.sroa.6.0..sroa_idx.i47, align 8, !alias.scope !21796
  br label %bb.e

bb.bf:                                            ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !21797
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.eq, align 8, !alias.scope !21797
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i52 = load i64, ptr %i.er, align 8, !alias.scope !21798
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i54 = load i64, ptr %.sroa.4.0..sroa_idx.i53, align 8, !alias.scope !21798
  %.sroa.52.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i56 = load i64, ptr %.sroa.52.0..sroa_idx.i55, align 8, !alias.scope !21798
  %.sroa.6.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i58 = load i64, ptr %.sroa.6.0..sroa_idx.i57, align 8, !alias.scope !21798
  %i.es = trunc nuw i64 %.sroa.01.0.copyload.i52 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i59 = select i1 %i.es, i64 %.sroa.4.0.copyload.i54, i64 %i.e
  %.sroa.5.sroa.5.0.i60 = select i1 %i.es, i64 %.sroa.52.0.copyload.i56, i64 %i.f
  %i.et = select i1 %i.es, i64 %.sroa.6.0.copyload.i58, i64 0
  %.sroa.5.sroa.6.0.i61 = add i64 %i.et, %i.d
  store i64 1, ptr %i.er, align 8, !alias.scope !21798
  store i64 %.sroa.5.sroa.0.0.i59, ptr %.sroa.4.0..sroa_idx.i53, align 8, !alias.scope !21798
  store i64 %.sroa.5.sroa.5.0.i60, ptr %.sroa.52.0..sroa_idx.i55, align 8, !alias.scope !21798
  store i64 %.sroa.5.sroa.6.0.i61, ptr %.sroa.6.0..sroa_idx.i57, align 8, !alias.scope !21798
  br label %bb.bg

bb.bg:                                            ; preds = %bb.e, %bb.bf
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17hf50ab8b4a586b331E(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21884)
  %i.b = icmp uge i64 %2, %3
  %i.c = icmp uge i64 %5, %6
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !21885, !noalias !21886, !noundef !17
  %invariant.op.i.i.i.i = sub i64 %5, %i.e        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !21884, !noalias !21887, !noundef !17 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !21883, !noalias !21884
  %invariant.op.i = sub i64 %2, %i.i              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !21883, !noalias !21884 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !21883, !noalias !21884, !nonnull !17
  %.val10.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !21884, !noalias !21883, !nonnull !17
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.l, %bb.f ] ; 5 uses
  %i.l = add nuw i64 %.sroa.01.034.i.i.i.i, 1     ; 2 uses
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.m = icmp ult i64 %.reass.i.i.i.i, %.val11.i.i.i.i.i
  br i1 %i.m, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.i, i64 %invariant.op.i.i.i.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21888
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i": ; preds = %bb.c
  %.reass.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i ; 2 uses
  %i.n = icmp ult i64 %.reass.i, %.val9.i.i.i.i.i
  br i1 %i.n, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %.val9.i.i.i.i.i, i64 %invariant.op.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax17.i, i64 noundef %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21889
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i, i64 %.reass.i.i.i.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %.reass.i
  %.val12.i.i.i.i.i = load i32, ptr %i.o, align 4, !noalias !21890, !noundef !17
  %.val13.i.i.i.i.i = load i32, ptr %i.p, align 4, !noalias !21890, !noundef !17
  %i.q = icmp eq i32 %.val12.i.i.i.i.i, %.val13.i.i.i.i.i
  br i1 %i.q, label %bb.f, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit

bb.f:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %exitcond.not.i.i.i.i = icmp eq i64 %i.l, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83, label %bb.c

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit: ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %.not = icmp eq i64 %.sroa.01.034.i.i.i.i, 0
  br i1 %.not, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread: ; preds = %bb.b, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit", %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %.sroa.0.0.i82 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit ], [ %.sroa.0.0.i86, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit" ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.r = add i64 %.sroa.0.0.i82, %2               ; 11 uses
  %i.s = add i64 %.sroa.0.0.i82, %5               ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21892)
  %i.t = icmp uge i64 %i.r, %3
  %i.u = icmp uge i64 %i.s, %6
  %or.cond.i21 = or i1 %i.t, %i.u
  br i1 %or.cond.i21, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread
  %i.v = sub nuw i64 %3, %i.r                     ; 2 uses
  %i.w = sub nuw i64 %6, %i.s                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !21892, !noalias !21891
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i23 = load i64, ptr %i.z, align 8, !alias.scope !21892, !noalias !21891 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !21891, !noalias !21892
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i24 = load i64, ptr %i.ac, align 8, !alias.scope !21891, !noalias !21892 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i25 = load ptr, ptr %i.ad, align 8, !alias.scope !21891, !noalias !21892, !nonnull !17
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val10.i.i.i.i.i26 = load ptr, ptr %i.ae, align 8, !alias.scope !21892, !noalias !21891, !nonnull !17
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i22
  %i.af = phi i64 [ %3, %.lr.ph.i.i.i.i22 ], [ %i.ai, %bb.k ]
  %.sroa.01.031.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i22 ], [ %i.aq, %bb.k ] ; 3 uses
  %i.ag = phi i64 [ %6, %.lr.ph.i.i.i.i22 ], [ %i.ah, %bb.k ]
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  %exitcond.not.i.i.i.i27 = icmp eq i64 %.sroa.01.031.i.i.i.i, %i.v
  br i1 %exitcond.not.i.i.i.i27, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = add i64 %i.af, -1                       ; 2 uses
  %i.aj = sub i64 %i.ah, %i.y                     ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %.val11.i.i.i.i.i23
  br i1 %i.ak, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aj, i64 noundef %.val11.i.i.i.i.i23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21893
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28": ; preds = %bb.h
  %i.al = sub i64 %i.ai, %i.ab                    ; 3 uses
  %i.am = icmp ult i64 %i.al, %.val9.i.i.i.i.i24
  br i1 %i.am, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29", label %bb.j

bb.j:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.al, i64 noundef %.val9.i.i.i.i.i24, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21894
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28"
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i26, i64 %i.aj
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i25, i64 %i.al
  %.val12.i.i.i.i.i30 = load i32, ptr %i.an, align 4, !noalias !21895, !noundef !17
  %.val13.i.i.i.i.i31 = load i32, ptr %i.ao, align 4, !noalias !21895, !noundef !17
  %i.ap = icmp eq i32 %.val12.i.i.i.i.i30, %.val13.i.i.i.i.i31
  br i1 %i.ap, label %bb.k, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit

bb.k:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29"
  %i.aq = add nuw i64 %.sroa.01.031.i.i.i.i, 1    ; 2 uses
  %exitcond61.not.i.i.i.i = icmp eq i64 %i.aq, %i.w
  br i1 %exitcond61.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.g

_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit: ; preds = %bb.g, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29", %bb.k, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread
  %.sroa.0.0.i32 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread ], [ %i.v, %bb.g ], [ %.sroa.01.031.i.i.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29" ], [ %i.w, %bb.k ] ; 4 uses
  %i.ar = sub i64 %3, %.sroa.0.0.i32              ; 6 uses
  %i.as = sub i64 %6, %.sroa.0.0.i32              ; 6 uses
  %.not2 = icmp ult i64 %i.r, %i.ar               ; 2 uses
  %.not3 = icmp ult i64 %i.s, %i.as               ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.m, label %bb.n

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83: ; preds = %bb.f, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %.sroa.0.0.i86 = phi i64 [ %.sroa.01.034.i.i.i.i, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit ], [ %.sroa.0.0.i.i.i.i, %bb.f ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21896)
  %i.at = load ptr, ptr %0, align 8, !alias.scope !21896, !nonnull !17, !align !29, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21897)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !21897, !noalias !21896, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 120 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 136 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !21898, !noalias !21899, !noundef !17 ; 3 uses
  %i.ay = load i64, ptr %i.av, align 8, !range !20, !alias.scope !21898, !noalias !21899, !noundef !17
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

bb.l:                                             ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21900
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit": ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !21898, !noalias !21899, !nonnull !17, !noundef !17
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %i.ax ; 4 uses
  store i64 0, ptr %i.bc, align 8, !noalias !21901
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %2, ptr %.sroa.456.0..sroa_idx, align 8, !noalias !21901
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %5, ptr %.sroa.557.0..sroa_idx, align 8, !noalias !21901
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store i64 %.sroa.0.0.i86, ptr %.sroa.658.0..sroa_idx, align 8, !noalias !21901
  %i.bd = add i64 %i.ax, 1
  store i64 %i.bd, ptr %i.aw, align 8, !alias.scope !21898, !noalias !21899
  br label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread

bb.m:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit
  br i1 %.not3, label %bb.o, label %bb.p

bb.n:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit33", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit35", %bb.y
  %.not5 = icmp eq i64 %.sroa.0.0.i32, 0
  br i1 %.not5, label %bb.ab, label %bb.z

bb.o:                                             ; preds = %bb.m
  br i1 %.not2, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.m
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.ar, i64 %i.r)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21902)
  %i.be = load ptr, ptr %0, align 8, !alias.scope !21902, !nonnull !17, !align !29, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21903)
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !21903, !noalias !21902, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 120 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 136 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !21904, !noalias !21905, !noundef !17 ; 3 uses
  %i.bj = load i64, ptr %i.bg, align 8, !range !20, !alias.scope !21904, !noalias !21905, !noundef !17
  %i.bk = icmp eq i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit33"

bb.q:                                             ; preds = %bb.p
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21906
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit33"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit33": ; preds = %bb.p, %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !21904, !noalias !21905, !nonnull !17, !noundef !17
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %i.bi ; 4 uses
  store i64 1, ptr %i.bn, align 8, !noalias !21907
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.r, ptr %.sroa.466.0..sroa_idx, align 8, !noalias !21907
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %spec.select.i.i, ptr %.sroa.567.0..sroa_idx, align 8, !noalias !21907
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i64 %i.s, ptr %.sroa.668.0..sroa_idx, align 8, !noalias !21907
  %i.bo = add i64 %i.bi, 1
  store i64 %i.bo, ptr %i.bh, align 8, !alias.scope !21904, !noalias !21905
  br label %bb.n

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17h74207d7c70bc4285E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.r, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.s, i64 noundef %i.as, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.bp = load i64, ptr %i.a, align 8, !range !44, !noundef !17
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.u, label %bb.v

bb.s:                                             ; preds = %bb.o
  %spec.select.i.i3487 = sub nuw i64 %i.as, %i.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21908)
  %i.br = load ptr, ptr %0, align 8, !alias.scope !21908, !nonnull !17, !align !29, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21909)
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !21909, !noalias !21908, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 120 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 136 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !21910, !noalias !21911, !noundef !17 ; 3 uses
  %i.bw = load i64, ptr %i.bt, align 8, !range !20, !alias.scope !21910, !noalias !21911, !noundef !17
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit35"

bb.t:                                             ; preds = %bb.s
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21912
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit35"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit35": ; preds = %bb.s, %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !21910, !noalias !21911, !nonnull !17, !noundef !17
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.bz, i64 %i.bv ; 4 uses
  store i64 2, ptr %i.ca, align 8, !noalias !21913
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %i.r, ptr %.sroa.476.0..sroa_idx, align 8, !noalias !21913
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 %i.s, ptr %.sroa.577.0..sroa_idx, align 8, !noalias !21913
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i64 %spec.select.i.i3487, ptr %.sroa.678.0..sroa_idx, align 8, !noalias !21913
  %i.cb = add i64 %i.bv, 1
  store i64 %i.cb, ptr %i.bu, align 8, !alias.scope !21910, !noalias !21911
  br label %bb.n

bb.u:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !17 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !17 ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17hf50ab8b4a586b331E(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.r, i64 noundef %i.cd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.s, i64 noundef %i.cf, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17hf50ab8b4a586b331E(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.cd, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.cf, i64 noundef %i.as, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  %i.cg = sub nuw i64 %i.ar, %i.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21914)
  %i.ch = load ptr, ptr %0, align 8, !alias.scope !21914, !nonnull !17, !align !29, !noundef !17 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21915)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !21915, !noalias !21914, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 120 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 136 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !21916, !noalias !21917, !noundef !17 ; 3 uses
  %i.cm = load i64, ptr %i.cj, align 8, !range !20, !alias.scope !21916, !noalias !21917, !noundef !17
  %i.cn = icmp eq i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"

bb.w:                                             ; preds = %bb.v
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21918
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36": ; preds = %bb.v, %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 128
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !21916, !noalias !21917, !nonnull !17, !noundef !17
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %i.cp, i64 %i.cl ; 4 uses
  store i64 1, ptr %i.cq, align 8, !noalias !21919
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.r, ptr %.sroa.461.0..sroa_idx, align 8, !noalias !21919
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i64 %i.cg, ptr %.sroa.562.0..sroa_idx, align 8, !noalias !21919
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store i64 %i.s, ptr %.sroa.663.0..sroa_idx, align 8, !noalias !21919
  %i.cr = add i64 %i.cl, 1
  store i64 %i.cr, ptr %i.ck, align 8, !alias.scope !21916, !noalias !21917
  %i.cs = sub nuw i64 %i.as, %i.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21920)
  %i.ct = load ptr, ptr %i.ch, align 8, !alias.scope !21920, !noalias !21921, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 120 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 136 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !21922, !noalias !21923, !noundef !17 ; 3 uses
  %i.cx = load i64, ptr %i.cu, align 8, !range !20, !alias.scope !21922, !noalias !21923, !noundef !17
  %i.cy = icmp eq i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21924
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36", %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 128
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !21922, !noalias !21923, !nonnull !17, !noundef !17
  %i.db = getelementptr inbounds nuw [40 x i8], ptr %i.da, i64 %i.cw ; 4 uses
  store i64 2, ptr %i.db, align 8, !noalias !21925
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %i.r, ptr %.sroa.471.0..sroa_idx, align 8, !noalias !21925
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 %i.s, ptr %.sroa.572.0..sroa_idx, align 8, !noalias !21925
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i64 %i.cs, ptr %.sroa.673.0..sroa_idx, align 8, !noalias !21925
  %i.dc = add i64 %i.cw, 1
  store i64 %i.dc, ptr %i.cv, align 8, !alias.scope !21922, !noalias !21923
  br label %bb.y

bb.y:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37", %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.z:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21926)
  %i.dd = load ptr, ptr %0, align 8, !alias.scope !21926, !nonnull !17, !align !29, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21927)
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !21927, !noalias !21926, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 120 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 136 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !21928, !noalias !21929, !noundef !17 ; 3 uses
  %i.di = load i64, ptr %i.df, align 8, !range !20, !alias.scope !21928, !noalias !21929, !noundef !17
  %i.dj = icmp eq i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.aa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

bb.aa:                                            ; preds = %bb.z
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21930
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38": ; preds = %bb.z, %bb.aa
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 128
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !21928, !noalias !21929, !nonnull !17, !noundef !17
  %i.dm = getelementptr inbounds nuw [40 x i8], ptr %i.dl, i64 %i.dh ; 4 uses
  store i64 0, ptr %i.dm, align 8, !noalias !21931
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !21931
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %i.as, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !21931
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store i64 %.sroa.0.0.i32, ptr %.sroa.654.0..sroa_idx, align 8, !noalias !21931
  %i.dn = add i64 %i.dh, 1
  store i64 %i.dn, ptr %i.dg, align 8, !alias.scope !21928, !noalias !21929
  br label %bb.ab

bb.ab:                                            ; preds = %bb.n, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h2065f1dda291ed15E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp uge i64 %1, %2
  %i.b = icmp uge i64 %4, %5
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h757d5f9a2c083c42E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i = sub nuw i64 %5, %4
  %spec.select.i.i4.i.i = sub nuw i64 %2, %1
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i, i64 %spec.select.i.i.i.i) ; 3 uses
  %.not = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not, label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h757d5f9a2c083c42E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val15.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !21957, !noundef !17 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13.i.i.i.i = load i64, ptr %i.e, align 8   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val12.i.i.i.i = load ptr, ptr %i.f, align 8, !nonnull !17
  %.val14.i.i.i.i = load ptr, ptr %i.d, align 8, !nonnull !17
  %umax = tail call i64 @llvm.umax.i64(i64 %.val13.i.i.i.i, i64 %1) ; 2 uses
  %umax41 = tail call i64 @llvm.umax.i64(i64 %.val15.i.i.i.i, i64 %4) ; 2 uses
  %i.g = sub i64 %umax41, %4
  %i.h = sub i64 %umax, %1
  %invariant.gep = getelementptr [24 x i8], ptr %.val14.i.i.i.i, i64 %4
  %invariant.gep61 = getelementptr [24 x i8], ptr %.val12.i.i.i.i, i64 %1
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.sroa.01.054.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.i, %bb.h ] ; 7 uses
  %i.i = add nuw i64 %.sroa.01.054.i.i.i, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.01.054.i.i.i, %i.g
  br i1 %exitcond.not, label %bb.d, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit.i.i.i.i"

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax41, i64 noundef %.val15.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21958
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit.i.i.i.i": ; preds = %bb.c
  %exitcond42.not = icmp eq i64 %.sroa.01.054.i.i.i, %i.h
  br i1 %exitcond42.not, label %bb.e, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit16.i.i.i.i"

bb.e:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax, i64 noundef %.val13.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21959
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit16.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit.i.i.i.i"
  %gep = getelementptr [24 x i8], ptr %invariant.gep, i64 %.sroa.01.054.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21961)
  %i.j = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !21960, !noalias !21962, !noundef !17 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !21960, !noalias !21962, !noundef !17 ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit16.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.m, i64 noundef %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #54, !noalias !21963
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha09f87515b79da06E.exit16.i.i.i.i"
  %gep62 = getelementptr [24 x i8], ptr %invariant.gep61, i64 %.sroa.01.054.i.i.i ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %gep62, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !21961, !noalias !21964, !noundef !17 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %gep62, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !21961, !noalias !21964, !noundef !17 ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.p
  br i1 %i.s, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit17.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.r, i64 noundef %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #54, !noalias !21965
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit17.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i"
  %i.t = load ptr, ptr %gep62, align 8, !alias.scope !21961, !noalias !21964, !nonnull !17, !align !29, !noundef !17
  %i.u = load ptr, ptr %gep, align 8, !alias.scope !21960, !noalias !21962, !nonnull !17, !align !29, !noundef !17
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.m ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.r ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val9.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !21957, !noundef !17 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 8
  %.val11.i.i.i.i = load i64, ptr %i.y, align 8, !noalias !21957, !noundef !17
  %.not.i.i.i.i.i.i = icmp eq i64 %.val9.i.i.i.i, %.val11.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i", label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h757d5f9a2c083c42E.exit"
end_hunk_0
