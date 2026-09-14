Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf7cc02afd0a9273dE":bb.a
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !27, !noundef !16
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1243, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @406)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1242, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN66_$LT$geojson..geometry..Geometry$u20$as$u20$core..clone..Clone$GT$5clone17h099f12175d907343E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [128 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [64 x i8], align 8            ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 20 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !range !52, !noundef !16
  %.not = icmp eq i64 %i.l, -9223372036854775808
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.m, align 8, !nonnull !16, !noundef !16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val7 = load i64, ptr %i.n, align 8, !noundef !16 ; 5 uses
  %i.o = shl i64 %.val7, 3                        ; 5 uses
  %i.p = icmp ugt i64 %.val7, 2305843009213693951
  %i.q = icmp ugt i64 %i.o, 9223372036854775800
  %or.cond.i.i.i.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.b
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4179ca4cb46d0abeE.exit", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !43875
  %i.s = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, 9) 8) #65, !noalias !43875 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4179ca4cb46d0abeE.exit"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2017) #66, !noalias !43876
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4179ca4cb46d0abeE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.c
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %.val7, %bb.c ] ; 2 uses
  %i.u = icmp samesign ule i64 %.val7, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.u)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i, ptr nonnull readonly align 8 %.val, i64 %i.o, i1 false), !noalias !43877
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4179ca4cb46d0abeE.exit"
  %.sroa.7.0 = phi i64 [ %.val7, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4179ca4cb46d0abeE.exit" ], [ undef, %bb.a ]
  %.sroa.6.0 = phi ptr [ %.sroa.10.0.i.i.i, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4179ca4cb46d0abeE.exit" ], [ undef, %bb.a ] ; 3 uses
  %.sroa.0.050 = phi i64 [ %.sroa.4.0.i.i.i, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4179ca4cb46d0abeE.exit" ], [ -9223372036854775808, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43879)
  %i.v = load i64, ptr %1, align 8, !range !88, !alias.scope !43879, !noalias !43878, !noundef !16
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
  %.val.i = load ptr, ptr %i.w, align 8, !alias.scope !43879, !noalias !43878, !nonnull !16, !noundef !16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i = load i64, ptr %i.x, align 8, !alias.scope !43879, !noalias !43878, !noundef !16 ; 5 uses
  %i.y = shl i64 %.val1.i, 3                      ; 6 uses
  %i.z = icmp ugt i64 %.val1.i, 2305843009213693951
  %i.aa = icmp ugt i64 %i.y, 9223372036854775800
  %or.cond.i.i.i.i.i24 = or i1 %i.z, %i.aa
  br i1 %or.cond.i.i.i.i.i24, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i25, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i25: ; preds = %bb.f
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %.noexc, label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i25
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !43880
  %i.ac = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.y, i64 noundef range(i64 1, 9) 8) #65, !noalias !43880 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.invoke, label %.noexc

.noexc:                                           ; preds = %bb.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i25
  %.sroa.10.0.i.i.i26 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i25 ], [ %i.ac, %bb.g ] ; 2 uses
  %.sroa.4.0.i.i.i27 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i25 ], [ %.val1.i, %bb.g ] ; 2 uses
  %i.ae = icmp samesign ule i64 %.val1.i, %.sroa.4.0.i.i.i27
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i26, ptr nonnull readonly align 8 %.val.i, i64 %i.y, i1 false), !noalias !43881
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.4.0.i.i.i27, ptr %i.af, align 8, !noalias !43879
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.10.0.i.i.i26, ptr %.sroa.443.0..sroa_idx, align 8, !noalias !43879
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.val1.i, ptr %.sroa.544.0..sroa_idx, align 8, !noalias !43879
  store i64 0, ptr %i.j, align 8, !alias.scope !43878, !noalias !43879
  br label %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !43882
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load ptr, ptr %i.ag, align 8, !alias.scope !43879, !noalias !43878, !nonnull !16, !noundef !16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5.i = load i64, ptr %i.ah, align 8, !alias.scope !43879, !noalias !43878, !noundef !16
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6399ecee63163ddaE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr nonnull %.val4.i, i64 %.val5.i)
          to label %.noexc8 unwind label %bb.x, !inline_history !43848

.noexc8:                                          ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !43879
  store i64 1, ptr %i.j, align 8, !alias.scope !43878, !noalias !43879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43882
  br label %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !43882
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load ptr, ptr %i.aj, align 8, !alias.scope !43879, !noalias !43878, !nonnull !16, !noundef !16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i = load i64, ptr %i.ak, align 8, !alias.scope !43879, !noalias !43878, !noundef !16
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6399ecee63163ddaE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr nonnull %.val2.i, i64 %.val3.i)
          to label %.noexc9 unwind label %bb.x, !inline_history !43848

.noexc9:                                          ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !43879
  store i64 2, ptr %i.j, align 8, !alias.scope !43878, !noalias !43879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !43882
  br label %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !43882
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val8.i = load ptr, ptr %i.am, align 8, !alias.scope !43879, !noalias !43878, !nonnull !16, !noundef !16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val9.i = load i64, ptr %i.an, align 8, !alias.scope !43879, !noalias !43878, !noundef !16
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h80e6216c687d94d7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr nonnull %.val8.i, i64 %.val9.i)
          to label %.noexc10 unwind label %bb.x, !inline_history !43848

.noexc10:                                         ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !43879
  store i64 3, ptr %i.j, align 8, !alias.scope !43878, !noalias !43879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !43882
  br label %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !43882
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val6.i = load ptr, ptr %i.ap, align 8, !alias.scope !43879, !noalias !43878, !nonnull !16, !noundef !16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val7.i = load i64, ptr %i.aq, align 8, !alias.scope !43879, !noalias !43878, !noundef !16
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h80e6216c687d94d7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr nonnull %.val6.i, i64 %.val7.i)
          to label %.noexc11 unwind label %bb.x, !inline_history !43848

.noexc11:                                         ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !43879
  store i64 4, ptr %i.j, align 8, !alias.scope !43878, !noalias !43879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43882
  br label %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"

bb.l:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10.i = load ptr, ptr %i.as, align 8, !alias.scope !43879, !noalias !43878, !nonnull !16, !noundef !16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11.i = load i64, ptr %i.at, align 8, !alias.scope !43879, !noalias !43878, !noundef !16 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43883)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43884
  %i.au = mul i64 %.val11.i, 24                   ; 4 uses
  %or.cond.i.i.i.i.i16 = icmp ugt i64 %.val11.i, 384307168202282325
  br i1 %or.cond.i.i.i.i.i16, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i17, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i17: ; preds = %bb.l
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.thread.i.i", label %bb.m

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.thread.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i17
  %i.aw = icmp eq i64 %.val11.i, 0
  tail call void @llvm.assume(i1 %i.aw)
  store i64 0, ptr %i.b, align 8, !noalias !43884
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ax, align 8, !noalias !43884
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.noexc12

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i17
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !43885
  %i.az = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.au, i64 noundef range(i64 1, 9) 8) #65, !noalias !43885 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.invoke, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i": ; preds = %bb.m
  store i64 %.val11.i, ptr %i.b, align 8, !noalias !43884
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !noalias !43884
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %.val10.i, i64 %.val11.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i"
  %.sroa.014.025.i.i = phi ptr [ %i.bj, %bb.o ], [ %.val10.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i" ] ; 4 uses
  %.sroa.7.024.i.i = phi i64 [ %i.bi, %bb.o ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i" ] ; 3 uses
  %.sroa.10.023.i.i = phi i64 [ %i.be, %bb.o ], [ %.val11.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i.i" ]
  %i.be = add nsw i64 %.sroa.10.023.i.i, -1       ; 2 uses
  %i.bf = icmp eq ptr %.sroa.014.025.i.i, %i.bd
  br i1 %i.bf, label %.noexc12, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43884
  %i.bg = getelementptr i8, ptr %.sroa.014.025.i.i, i64 8
  %.val.i.i18 = load ptr, ptr %i.bg, align 8, !alias.scope !43883, !noalias !43886, !nonnull !16, !noundef !16
  %i.bh = getelementptr i8, ptr %.sroa.014.025.i.i, i64 16
  %.val11.i.i19 = load i64, ptr %i.bh, align 8, !alias.scope !43883, !noalias !43886, !noundef !16
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h80e6216c687d94d7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %.val.i.i18, i64 %.val11.i.i19)
          to label %bb.o unwind label %bb.p, !noalias !43884

bb.o:                                             ; preds = %bb.n
  %i.bi = add nuw nsw i64 %.sroa.7.024.i.i, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.014.025.i.i, i64 24
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.sroa.7.024.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !43884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43884
  %i.bl = icmp eq i64 %i.be, 0
  br i1 %i.bl, label %.noexc12, label %.lr.ph.i.i

bb.p:                                             ; preds = %bb.n
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.024.i.i, ptr %i.bc, align 8, !alias.scope !43887, !noalias !43884
  call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$$GT$$GT$17h8edeff3a8769d9bcE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #67, !noalias !43884
  br label %.body

.noexc12:                                         ; preds = %bb.o, %.lr.ph.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.thread.i.i"
  %2 = phi ptr [ %i.ay, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.thread.i.i" ], [ %i.bc, %.lr.ph.i.i ], [ %i.bc, %bb.o ]
  store i64 %.val11.i, ptr %2, align 8, !noalias !43884
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43884
  store i64 5, ptr %i.j, align 8, !alias.scope !43878, !noalias !43879
  br label %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"

bb.q:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43888)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !43888, !noalias !43889, !nonnull !16, !noundef !16 ; 2 uses
  %i.bq = load i64, ptr %i.bn, align 8, !alias.scope !43888, !noalias !43889, !noundef !16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !43890
  %i.br = shl i64 %i.bq, 7                        ; 5 uses
  %i.bs = icmp ugt i64 %i.bq, 144115188075855871
  %i.bt = icmp ugt i64 %i.br, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.bs, %i.bt
  br i1 %or.cond.i.i.i, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.q
  %i.bu = icmp eq i64 %i.br, 0
  br i1 %i.bu, label %.noexc15.thread, label %bb.r

.noexc15.thread:                                  ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.bv = icmp eq i64 %i.bq, 0
  tail call void @llvm.assume(i1 %i.bv)
  store i64 0, ptr %i.d, align 8, !noalias !43890
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bw, align 8, !noalias !43890
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.noexc13

bb.r:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !43891
  %i.by = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.br, i64 noundef range(i64 1, 9) 8) #65, !noalias !43891 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.invoke, label %.noexc15

.invoke:                                          ; preds = %bb.q, %bb.r, %bb.l, %bb.m, %bb.f, %bb.g
  %i.ca = phi i64 [ 0, %bb.l ], [ 0, %bb.f ], [ 8, %bb.g ], [ 8, %bb.m ], [ 8, %bb.r ], [ 0, %bb.q ]
  %i.cb = phi i64 [ %i.au, %bb.l ], [ %i.y, %bb.f ], [ %i.y, %bb.g ], [ %i.au, %bb.m ], [ %i.br, %bb.r ], [ %i.br, %bb.q ]
  %i.cc = phi ptr [ @2016, %bb.l ], [ @2017, %bb.f ], [ @2017, %bb.g ], [ @2016, %bb.m ], [ @2016, %bb.r ], [ @2016, %bb.q ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ca, i64 %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc) #66
          to label %.cont unwind label %bb.x

.cont:                                            ; preds = %.invoke
  unreachable

.noexc15:                                         ; preds = %bb.r
  store i64 %i.bq, ptr %i.d, align 8, !noalias !43890
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.by, ptr %i.cd, align 8, !noalias !43890
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.cf = getelementptr inbounds nuw [128 x i8], ptr %i.bp, i64 %i.bq
  %i.cg = icmp eq i64 %i.bq, 0
  br i1 %i.cg, label %.noexc13, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc15, %bb.t
  %.sroa.047.062 = phi ptr [ %i.ck, %bb.t ], [ %i.bp, %.noexc15 ] ; 3 uses
  %.sroa.749.061 = phi i64 [ %i.cj, %bb.t ], [ 0, %.noexc15 ] ; 3 uses
  %.sroa.10.060 = phi i64 [ %i.ch, %bb.t ], [ %i.bq, %.noexc15 ]
  %i.ch = add nsw i64 %.sroa.10.060, -1           ; 2 uses
  %i.ci = icmp eq ptr %.sroa.047.062, %i.cf
  br i1 %i.ci, label %.noexc13, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !43890
  invoke fastcc void @"_ZN66_$LT$geojson..geometry..Geometry$u20$as$u20$core..clone..Clone$GT$5clone17h099f12175d907343E"(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %.sroa.047.062)
          to label %bb.t unwind label %bb.v, !noalias !43892, !inline_history !43870

bb.t:                                             ; preds = %bb.s
  %i.cj = add nuw nsw i64 %.sroa.749.061, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.047.062, i64 128
  %i.cl = getelementptr inbounds nuw [128 x i8], ptr %i.by, i64 %.sroa.749.061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cl, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false), !noalias !43892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !43890
  %i.cm = icmp eq i64 %i.ch, 0
  br i1 %i.cm, label %.noexc13, label %.lr.ph

bb.u:                                             ; preds = %bb.v
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68, !noalias !43892, !inline_history !43870
  unreachable

bb.v:                                             ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.749.061, ptr %i.ce, align 8, !alias.scope !43893, !noalias !43892
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$geojson..geometry..Geometry$GT$$GT$17h53ed7b7e6cea7648E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #67
          to label %.body unwind label %bb.u, !noalias !43892, !inline_history !43870

.noexc13:                                         ; preds = %bb.t, %.lr.ph, %.noexc15.thread, %.noexc15
  %i.co = phi ptr [ %i.bx, %.noexc15.thread ], [ %i.ce, %.noexc15 ], [ %i.ce, %.lr.ph ], [ %i.ce, %bb.t ]
  store i64 %i.bq, ptr %i.co, align 8, !noalias !43890
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !43890
  store i64 6, ptr %i.j, align 8, !alias.scope !43878, !noalias !43879
  br label %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"

.body:                                            ; preds = %bb.v, %bb.p, %bb.x, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.aa ], [ %lpad.loopexit, %bb.v ], [ %i.cr, %bb.x ], [ %lpad.loopexit.i.i, %bb.p ]
  %switch.i = icmp sgt i64 %.sroa.0.050, 0
  br i1 %switch.i, label %bb.w, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h78e05ac6fb021eedE.exit"

bb.w:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  %i.cq = shl nuw i64 %.sroa.0.050, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !43894
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h78e05ac6fb021eedE.exit"

bb.x:                                             ; preds = %.invoke, %bb.k, %bb.j, %bb.i, %bb.h
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit": ; preds = %.noexc13, %.noexc12, %.noexc11, %.noexc10, %.noexc9, %.noexc8, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !range !52, !noundef !16
  %.not5 = icmp eq i64 %i.ct, -9223372036854775808
  br i1 %.not5, label %bb.z, label %bb.y

bb.y:                                             ; preds = %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17heda6574164ad8a44E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cs)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit", %bb.ab
  %.sroa.0.0 = phi i64 [ %.sroa.03.0.copyload, %bb.ab ], [ -9223372036854775808, %"_ZN63_$LT$geojson..geometry..Value$u20$as$u20$core..clone..Clone$GT$5clone17hc83a8c6e75d30730E.exit" ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.050, ptr %i.cu, align 8
  %.sroa.6.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx35, align 8
  %.sroa.7.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx37, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.0, ptr %i.cv, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.aa:                                            ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$geojson..geometry..Value$GT$17ha99327d9f4f64f4bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j) #67
          to label %.body unwind label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %.sroa.03.0.copyload = load i64, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #68
  unreachable

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h78e05ac6fb021eedE.exit": ; preds = %bb.w, %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h297e24a772b7642aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !align !22, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !21, !noundef !16
  %i.d = tail call noundef zeroext i1 @"_ZN82_$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$u20$as$u20$core..fmt..Debug$GT$3fmt17h210a165857e155fbE"(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h2d2fe2639682db67E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !align !22, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !21, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h345b73d10766c358E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_0
begin_hunk_1_@"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h345b73d10766c358E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !43901
  %i.co = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.co, ptr %i.s, align 8, !noalias !43901
  %i.cp = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field3_finish17h60c420ae607814c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1515, i64 noundef 17, ptr noundef nonnull readonly align 1 %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @567, ptr noundef nonnull readonly align 1 %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1513, ptr noundef nonnull align 1 %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.s:                                             ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !43901
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.cs, ptr %i.r, align 8, !noalias !43901
  %i.ct = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field3_finish17h60c420ae607814c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1516, i64 noundef 19, ptr noundef nonnull readonly align 1 %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @567, ptr noundef nonnull readonly align 1 %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1513, ptr noundef nonnull align 1 %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !43901
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.cu, ptr %i.q, align 8, !noalias !43901
  %i.cv = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1517, i64 noundef 8, ptr noundef nonnull align 1 %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.u:                                             ; preds = %bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !43901
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.cx, ptr %i.p, align 8, !noalias !43901
  %i.cy = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1518, i64 noundef 13, ptr noundef nonnull readonly align 1 %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @583, ptr noundef nonnull align 1 %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.v:                                             ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !43901
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.da, ptr %i.o, align 8, !noalias !43901
  %i.db = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1519, i64 noundef 32, ptr noundef nonnull readonly align 1 %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @583, ptr noundef nonnull align 1 %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.w:                                             ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !43901
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.dd, ptr %i.n, align 8, !noalias !43901
  %i.de = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1520, i64 noundef 25, ptr noundef nonnull readonly align 1 %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @583, ptr noundef nonnull align 1 %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.x:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !43901
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.dg, ptr %i.m, align 8, !noalias !43901
  %i.dh = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1521, i64 noundef 12, ptr noundef nonnull readonly align 1 %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @583, ptr noundef nonnull align 1 %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.y:                                             ; preds = %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !43901
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.dj, ptr %i.l, align 8, !noalias !43901
  %i.dk = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1522, i64 noundef 15, ptr noundef nonnull readonly align 1 %i.di, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @583, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !43901
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.dl, ptr %i.k, align 8, !noalias !43901
  %i.dm = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1523, i64 noundef 22, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !43901
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.dn, ptr %i.j, align 8, !noalias !43901
  %i.do = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1524, i64 noundef 21, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !43901
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.dp, ptr %i.i, align 8, !noalias !43901
  %i.dq = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1525, i64 noundef 19, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.ac:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !43901
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.dr, ptr %i.h, align 8, !noalias !43901
  %i.ds = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1526, i64 noundef 18, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.ad:                                            ; preds = %bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !43901
  %i.du = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.du, ptr %i.g, align 8, !noalias !43901
  %i.dv = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1527, i64 noundef 17, ptr noundef nonnull readonly align 1 %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @583, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.ae:                                            ; preds = %bb.a
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !43901
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.dx, ptr %i.f, align 8, !noalias !43901
  %i.dy = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1528, i64 noundef 15, ptr noundef nonnull readonly align 1 %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1502, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.af:                                            ; preds = %bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !43901
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.eb, ptr %i.e, align 8, !noalias !43901
  %i.ec = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field3_finish17h60c420ae607814c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1529, i64 noundef 17, ptr noundef nonnull readonly align 1 %i.dz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @583, ptr noundef nonnull readonly align 1 %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @964, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.ag:                                            ; preds = %bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !43901
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.ee, ptr %i.d, align 8, !noalias !43901
  %i.ef = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1530, i64 noundef 12, ptr noundef nonnull readonly align 1 %i.ed, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1502, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.ah:                                            ; preds = %bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !43901
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.ei, ptr %i.c, align 8, !noalias !43901
  %i.ej = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field3_finish17h60c420ae607814c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1531, i64 noundef 9, ptr noundef nonnull readonly align 1 %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noundef nonnull readonly align 1 %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1502, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.ai:                                            ; preds = %bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43901
  %i.el = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.el, ptr %i.b, align 8, !noalias !43901
  %i.em = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1532, i64 noundef 6, ptr noundef nonnull readonly align 1 %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1502, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

bb.aj:                                            ; preds = %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43901
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.eo, ptr %i.a, align 8, !noalias !43901
  %i.ep = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field2_finish17hcc10f9db4edfa28aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1533, i64 noundef 4, ptr noundef nonnull readonly align 1 %i.en, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1502, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1496), !inline_history !43898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43901
  br label %"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit"

"_ZN70_$LT$rhai..types..error..EvalAltResult$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9f5b24ab58cc85aE.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.sroa.0.0.in.i = phi i1 [ %i.an, %bb.b ], [ %i.aq, %bb.c ], [ %i.at, %bb.d ], [ %i.aw, %bb.e ], [ %i.az, %bb.f ], [ %i.bc, %bb.g ], [ %i.bf, %bb.h ], [ %i.bi, %bb.i ], [ %i.bl, %bb.j ], [ %i.bq, %bb.k ], [ %i.bu, %bb.l ], [ %i.bw, %bb.m ], [ %i.ca, %bb.n ], [ %i.ce, %bb.o ], [ %i.ch, %bb.p ], [ %i.cl, %bb.q ], [ %i.cp, %bb.r ], [ %i.ct, %bb.s ], [ %i.cv, %bb.t ], [ %i.cy, %bb.u ], [ %i.db, %bb.v ], [ %i.de, %bb.w ], [ %i.dh, %bb.x ], [ %i.dk, %bb.y ], [ %i.dm, %bb.z ], [ %i.do, %bb.aa ], [ %i.dq, %bb.ab ], [ %i.ds, %bb.ac ], [ %i.dv, %bb.ad ], [ %i.dy, %bb.ae ], [ %i.ec, %bb.af ], [ %i.ef, %bb.ag ], [ %i.ej, %bb.ah ], [ %i.em, %bb.ai ], [ %i.ep, %bb.aj ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8e7e5a6f8b60efabE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !align !21, !noundef !16
  %i.b = tail call noundef zeroext i1 @"_ZN77_$LT$rhai..types..parse_error..ParseErrorType$u20$as$u20$core..fmt..Debug$GT$3fmt17h0ffb9e35b8e7b541E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6399ecee63163ddaE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43922)
  %i.a = mul i64 %.16.val, 24                     ; 4 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.c = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.c)
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd2553ce86aa6c669E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !43923
  %i.d = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.a, i64 noundef range(i64 1, 9) 8) #65, !noalias !43923 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2016) #66, !noalias !43924
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i": ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i", %bb.g
  %.sroa.014.034.i = phi ptr [ %i.i, %bb.g ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i" ] ; 4 uses
  %.sroa.7.033.i = phi i64 [ %i.j, %bb.g ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i" ] ; 4 uses
  %.sroa.10.032.i = phi i64 [ %i.g, %bb.g ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i" ]
  %i.g = add nsw i64 %.sroa.10.032.i, -1          ; 2 uses
  %i.h = icmp eq ptr %.sroa.014.034.i, %i.f
  br i1 %i.h, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd2553ce86aa6c669E.exit", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.034.i, i64 24
  %i.j = add nuw nsw i64 %.sroa.7.033.i, 1
  %i.k = getelementptr i8, ptr %.sroa.014.034.i, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !43922, !noalias !43925, !nonnull !16, !noundef !16
  %i.l = getelementptr i8, ptr %.sroa.014.034.i, i64 16
  %.val11.i = load i64, ptr %i.l, align 8, !alias.scope !43922, !noalias !43925, !noundef !16 ; 5 uses
  %i.m = shl i64 %.val11.i, 3                     ; 5 uses
  %i.n = icmp ugt i64 %.val11.i, 2305843009213693951
  %i.o = icmp ugt i64 %i.m, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i.i.i.i, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.d
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !43926
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 8) #65, !noalias !43926 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.e ], [ 0, %bb.d ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2017) #66
          to label %.noexc.i unwind label %bb.h, !noalias !43924

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.val11.i, %bb.e ] ; 2 uses
  %i.s = icmp samesign ule i64 %.val11.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.s)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 8 %.val.i, i64 %i.m, i1 false), !noalias !43927
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.7.033.i ; 3 uses
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.t, align 8, !noalias !43924
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !43924
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.val11.i, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !43924
  %i.u = icmp eq i64 %i.g, 0
  br i1 %i.u, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd2553ce86aa6c669E.exit", label %.lr.ph.i

bb.h:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43928), !noalias !43924
  %i.w = icmp eq i64 %.sroa.7.033.i, 0
  br i1 %i.w, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h13123c5a9a87a445E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h4ace91fdd4b06517E.exit.i.i.i"
  %.sroa.0.011.i.i.i = phi i64 [ %i.y, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h4ace91fdd4b06517E.exit.i.i.i" ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.0.011.i.i.i, 1    ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !43928, !noalias !43929 ; 2 uses
  %i.z = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.z, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h4ace91fdd4b06517E.exit.i.i.i", label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %.val9.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !43928, !noalias !43929, !nonnull !16, !noundef !16
  %i.ab = shl nuw i64 %.val8.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !43930
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h4ace91fdd4b06517E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h4ace91fdd4b06517E.exit.i.i.i": ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ac = icmp eq i64 %i.y, %.sroa.7.033.i
  br i1 %i.ac, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h13123c5a9a87a445E.exit", label %.lr.ph.i.i.i

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h13123c5a9a87a445E.exit": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f64$GT$$GT$17h4ace91fdd4b06517E.exit.i.i.i", %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !43929
  resume { ptr, i32 } %i.v

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd2553ce86aa6c669E.exit": ; preds = %.lr.ph.i, %bb.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.thread.i"
  %.sroa.6.0 = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.thread.i" ], [ %i.d, %bb.g ], [ %i.d, %.lr.ph.i ]
  store i64 %.16.val, ptr %0, align 8, !noalias !43922
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !43922
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.16.val, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !43922
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h80e6216c687d94d7E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43940)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43941
  %i.c = mul i64 %.16.val, 24                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.e = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.e)
  store i64 0, ptr %i.b, align 8, !noalias !43941
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !43941
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h54747987b6b750dcE.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !43942
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #65, !noalias !43942 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2016) #66, !noalias !43941
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !43941
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !43941
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i", %bb.e
  %.sroa.014.025.i = phi ptr [ %i.r, %bb.e ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i" ] ; 4 uses
  %.sroa.7.024.i = phi i64 [ %i.q, %bb.e ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i" ] ; 3 uses
  %.sroa.10.023.i = phi i64 [ %i.m, %bb.e ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.i" ]
  %i.m = add nsw i64 %.sroa.10.023.i, -1          ; 2 uses
  %i.n = icmp eq ptr %.sroa.014.025.i, %i.l
  br i1 %i.n, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h54747987b6b750dcE.exit", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43941
  %i.o = getelementptr i8, ptr %.sroa.014.025.i, i64 8
  %.val.i = load ptr, ptr %i.o, align 8, !alias.scope !43940, !noalias !43943, !nonnull !16, !noundef !16
  %i.p = getelementptr i8, ptr %.sroa.014.025.i, i64 16
  %.val11.i = load i64, ptr %i.p, align 8, !alias.scope !43940, !noalias !43943, !noundef !16
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6399ecee63163ddaE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %.val.i, i64 %.val11.i)
          to label %bb.e unwind label %bb.f, !noalias !43941

bb.e:                                             ; preds = %bb.d
  %i.q = add nuw nsw i64 %.sroa.7.024.i, 1
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.025.i, i64 24
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.7.024.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !43941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43941
  %i.t = icmp eq i64 %i.m, 0
  br i1 %i.t, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h54747987b6b750dcE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.024.i, ptr %i.k, align 8, !alias.scope !43944, !noalias !43941
  call fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$$GT$17h8df462e8582d6b3dE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #67, !noalias !43941
  resume { ptr, i32 } %lpad.loopexit.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h54747987b6b750dcE.exit": ; preds = %.lr.ph.i, %bb.e, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.thread.i"
  %1 = phi ptr [ %i.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd79a75da39bca8fbE.exit.thread.i" ], [ %i.k, %bb.e ], [ %i.k, %.lr.ph.i ]
  store i64 %.16.val, ptr %1, align 8, !noalias !43941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !43940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43941
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$core..array..TryFromSliceError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8b4f2226071a9a78E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1365, i64 noundef 17, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1364)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN67_$LT$flume..signal..SyncSignal$u20$as$u20$flume..signal..Signal$GT$6as_any17h2fefd6dddccb434aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @1370, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @"_ZN67_$LT$flume..signal..SyncSignal$u20$as$u20$flume..signal..Signal$GT$6as_ptr17ha55bb94ad7ee61e0E"(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$h3o..error..geom..PlotterError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb8f9fb55679b5742E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !42, !noundef !16
  %.not = icmp eq i64 %i.c, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1372, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1371)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.b, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @916, i64 noundef 15, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @915)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3a87f33f6dad506E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1156, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1374, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1373)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc280949cfd32142E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1448, i64 noundef 11)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$core..str..error..ParseBoolError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf390f1ccdb904956E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1449, i64 noundef 14)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$milli..vector..error..EmbedError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6cc8683074a3fb81E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1383, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1374, i64 noundef 4, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1458, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1460, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1459)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$rayon_core..ThreadPoolBuildError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8381eb48305c62d3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1465, i64 noundef 20, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1374, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1464)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN6grenad5block20BlockCursor$LT$B$GT$12move_on_next17h809d0294464c2079E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = load i64, ptr %1, align 8, !range !27, !noundef !16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = trunc nuw i64 %i.d to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @_ZN6grenad5block5Block8entry_at17hfdd34c738526eb46E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.h, i64 noundef %i.g)
  %.sroa.3.8.copyload = load ptr, ptr %i.c, align 8
  %.sroa.51.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.51.8.copyload = load i64, ptr %.sroa.51.8..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %.sroa.3.8.copyload, null
  br i1 %.not, label %bb.j, label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43955)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !43955, !noalias !43954, !noundef !16
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !43955, !noalias !43954, !nonnull !16, !noundef !16
  %i.n = load i64, ptr %i.m, align 8, !noalias !43956, !noundef !16 ; 2 uses
  store i64 1, ptr %1, align 8, !alias.scope !43955, !noalias !43954
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !43955, !noalias !43954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43957
  call void @_ZN6grenad5block5Block8entry_at17hfdd34c738526eb46E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.k, i64 noundef %i.n), !noalias !43958
  %i.o = load ptr, ptr %i.b, align 8, !noalias !43957, !noundef !16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %1, align 8, !alias.scope !43955, !noalias !43954
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43959)
  store ptr null, ptr %0, align 8, !alias.scope !43958, !noalias !43960
  br label %"_ZN6grenad5block20BlockCursor$LT$B$GT$13move_on_first17h319f01aad825c339E.exit"

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !43957, !noundef !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !43957, !nonnull !16, !align !22, !noundef !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.u = load i64, ptr %i.t, align 8, !noalias !43957, !noundef !16
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !43958, !noalias !43960
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !43958, !noalias !43960
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !43958, !noalias !43960
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  store ptr %i.o, ptr %0, align 8, !alias.scope !43958, !noalias !43960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43957
  br label %"_ZN6grenad5block20BlockCursor$LT$B$GT$13move_on_first17h319f01aad825c339E.exit"

"_ZN6grenad5block20BlockCursor$LT$B$GT$13move_on_first17h319f01aad825c339E.exit": ; preds = %bb.g, %bb.e, %bb.j, %"_ZN6grenad5block20BlockCursor$LT$B$GT$7current17h7866cdc2ec6e4dadE.exit"
  ret void

bb.h:                                             ; preds = %bb.b
  store i64 1, ptr %1, align 8
  store i64 %.sroa.51.8.copyload, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !43961)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43962
  call void @_ZN6grenad5block5Block8entry_at17hfdd34c738526eb46E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.h, i64 noundef %.sroa.51.8.copyload), !noalias !43961
  %i.v = load ptr, ptr %i.a, align 8, !noalias !43962, !noundef !16 ; 2 uses
  %.not.i5 = icmp eq ptr %i.v, null
  br i1 %.not.i5, label %"_ZN6grenad5block20BlockCursor$LT$B$GT$7current17h7866cdc2ec6e4dadE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !43962, !noundef !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !noalias !43962, !nonnull !16, !align !22, !noundef !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !43962, !noundef !16
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !43961, !noalias !43963
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
