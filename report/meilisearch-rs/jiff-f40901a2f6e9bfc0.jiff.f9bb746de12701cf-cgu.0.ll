Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jiff-f40901a2f6e9bfc0.jiff.f9bb746de12701cf-cgu.0?download=true
inline.NumInlined: 4054
inline.NumDeleted: 1353
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 73
begin_hunk_0_@"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$16parse_indicators17h1d7fe1d93387a029E":bb.a

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.8.val ; 2 uses
  %i.k = sub nuw i64 %i.g, %.8.val
  %i.l = icmp eq i64 %.16.val, 0
  %i.m = icmp eq i64 %.8.val, 0                   ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hd03898324ab7d980E.exit", label %.lr.ph79

bb.g:                                             ; preds = %bb.e
  br i1 %i.m, label %.lr.ph, label %bb.n

bb.h:                                             ; preds = %.lr.ph79
  %i.n = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %.not9.not.not.i.not = icmp eq ptr %i.n, %i.j
  br i1 %.not9.not.not.i.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hd03898324ab7d980E.exit", label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.f, %bb.h
  %i.o = phi ptr [ %i.n, %bb.h ], [ %i.f, %bb.f ] ; 2 uses
  %.val.i = load i8, ptr %i.o, align 1, !noalias !10608, !noundef !11
  %.not.i = icmp eq i8 %.val.i, 0
  br i1 %.not.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %.lr.ph79
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 12, ptr %i.p, align 8
  store ptr null, ptr %0, align 8
  br label %bb.r

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hd03898324ab7d980E.exit": ; preds = %bb.w, %bb.l, %bb.h, %bb.f
  store ptr %i.j, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.q, align 8
  br label %bb.r

.lr.ph:                                           ; preds = %bb.g, %bb.l
  %.sroa.05.058 = phi ptr [ %i.r, %bb.l ], [ %1, %bb.g ] ; 2 uses
  %.sroa.87.057 = phi i64 [ %i.s, %bb.l ], [ 0, %bb.g ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.05.058, i64 1 ; 2 uses
  %i.s = add nuw i64 %.sroa.87.057, 1
  %i.t = load i8, ptr %.sroa.05.058, align 1, !noundef !11 ; 2 uses
  %switch = icmp ult i8 %i.t, 2
  br i1 %switch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %exitcond67.not = icmp eq i64 %.sroa.87.057, %.160.val
  br i1 %exitcond67.not, label %bb.m, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 9, ptr %i.u, align 8
  store ptr null, ptr %0, align 8
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.152.val) ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.152.val, i64 %.sroa.87.057
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  store i8 %i.t, ptr %i.w, align 2
  %i.x = icmp eq ptr %i.r, %i.f
  br i1 %i.x, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hd03898324ab7d980E.exit", label %.lr.ph

bb.m:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.160.val, i64 noundef %.160.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @374) #45
  unreachable

bb.n:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.16.val, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.8.val, ptr %i.b, align 8
  %i.y = icmp eq i64 %.16.val, %.8.val
  br i1 %i.y, label %bb.p, label %bb.o, !prof !16

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  call void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @375) #45
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.w
  %.sroa.14.056 = phi i64 [ 0, %bb.p ], [ %i.z, %bb.w ] ; 5 uses
  %i.z = add nuw i64 %.sroa.14.056, 1             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.14.056
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.14.056
  %i.ac = load i8, ptr %i.aa, align 1, !noundef !11
  %i.ad = load i8, ptr %i.ab, align 1, !noundef !11 ; 3 uses
  switch i8 %i.ac, label %.loopexit [
    i8 0, label %bb.s
    i8 1, label %bb.t
  ]

bb.r:                                             ; preds = %bb.d, %bb.i, %.loopexit, %bb.k, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hd03898324ab7d980E.exit", %bb.b
  ret void

bb.s:                                             ; preds = %bb.q
  switch i8 %i.ad, label %.loopexit [
    i8 0, label %bb.u
    i8 1, label %.loopexit81
  ]

bb.t:                                             ; preds = %bb.q
  switch i8 %i.ad, label %.loopexit [
    i8 0, label %bb.u
    i8 1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.v
  %.sroa.013.0 = phi i8 [ 2, %bb.v ], [ %i.ad, %bb.s ], [ 1, %bb.t ]
  %exitcond.not = icmp eq i64 %.sroa.14.056, %.160.val
  br i1 %exitcond.not, label %bb.x, label %bb.w

.loopexit81:                                      ; preds = %bb.s
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.s, %bb.t, %.loopexit81
  %.sink = phi i8 [ 10, %.loopexit81 ], [ 8, %bb.t ], [ 8, %bb.s ], [ 8, %bb.q ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.ae, align 8
  store ptr null, ptr %0, align 8
  br label %bb.r

bb.v:                                             ; preds = %bb.t
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.152.val) ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.152.val, i64 %.sroa.14.056
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  store i8 %.sroa.013.0, ptr %i.ag, align 2
  %exitcond66.not = icmp eq i64 %i.z, %.16.val
  br i1 %exitcond66.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hd03898324ab7d980E.exit", label %bb.q

bb.x:                                             ; preds = %bb.u
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.160.val, i64 noundef %.160.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @376) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$17parse_transitions17hc1dedde9b107b744E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(264) %1, i64 %.0.val, i64 %.32.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.32.val, i64 %.0.val) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, i1 } %i.c, 0         ; 5 uses
  %i.f = icmp ugt i64 %i.e, %3
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 515, ptr %i.g, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1289, ptr %i.h, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.e
  %i.j = sub nuw i64 %3, %i.e
  %i.k = icmp eq i64 %.0.val, 0
  br i1 %i.k, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12chunks_exact17h42243817928ef77fE.exit", !prof !23

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10619
  store ptr @45, ptr %i.b, align 8, !noalias !10619
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.l, align 8, !noalias !10619
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.m, align 8, !noalias !10619
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8, !noalias !10619
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.o, align 8, !noalias !10619
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @377) #45, !noalias !10620
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12chunks_exact17h42243817928ef77fE.exit": ; preds = %bb.e
  %i.p = urem i64 %i.e, %.0.val                   ; 2 uses
  %i.q = sub nuw i64 %i.e, %i.p                   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  tail call fastcc void @"_ZN4jiff6shared4tzif243_$LT$impl$u20$jiff..shared..TzifTransitions$LT$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$19add_with_type_index17h93473856702afd88E"(ptr noalias noundef align 8 dereferenceable(96) %i.r, i64 noundef -377705023201)
  %i.s = icmp ult i64 %i.q, %.0.val
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12chunks_exact17h42243817928ef77fE.exit"
  switch i64 %.0.val, label %5 [
    i64 4, label %_ZN4jiff6shared4tzif17from_be_bytes_i3217h44d4e4b18690b629E.exit.us
    i64 8, label %_ZN4jiff6shared4tzif17from_be_bytes_i6417hd5843ce25972a629E.exit.us
  ]

_ZN4jiff6shared4tzif17from_be_bytes_i3217h44d4e4b18690b629E.exit.us: ; preds = %.lr.ph, %_ZN4jiff6shared4tzif17from_be_bytes_i3217h44d4e4b18690b629E.exit.us
  %.sroa.02.013.us = phi ptr [ %i.t, %_ZN4jiff6shared4tzif17from_be_bytes_i3217h44d4e4b18690b629E.exit.us ], [ %2, %.lr.ph ] ; 2 uses
  %.sroa.5.012.us = phi i64 [ %i.u, %_ZN4jiff6shared4tzif17from_be_bytes_i3217h44d4e4b18690b629E.exit.us ], [ %i.q, %.lr.ph ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.013.us, i64 4
  %i.u = add i64 %.sroa.5.012.us, -4              ; 2 uses
  %.sroa.02.0.copyload.i.us = load i32, ptr %.sroa.02.013.us, align 1, !alias.scope !10621
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.us)
  %i.w = sext i32 %i.v to i64
  tail call fastcc void @"_ZN4jiff6shared4tzif243_$LT$impl$u20$jiff..shared..TzifTransitions$LT$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$19add_with_type_index17h93473856702afd88E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.r, i64 noundef %i.w)
  %i.x = icmp ult i64 %i.u, 4
  br i1 %i.x, label %._crit_edge, label %_ZN4jiff6shared4tzif17from_be_bytes_i3217h44d4e4b18690b629E.exit.us

_ZN4jiff6shared4tzif17from_be_bytes_i6417hd5843ce25972a629E.exit.us: ; preds = %.lr.ph, %bb.h
  %.sroa.02.013.us14 = phi ptr [ %i.y, %bb.h ], [ %2, %.lr.ph ] ; 2 uses
  %.sroa.5.012.us15 = phi i64 [ %i.z, %bb.h ], [ %i.q, %.lr.ph ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.013.us14, i64 8
  %i.z = add i64 %.sroa.5.012.us15, -8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10622)
  %.sroa.01.0.copyload.i.us = load i64, ptr %.sroa.02.013.us14, align 1, !alias.scope !10622
  %i.aa = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.01.0.copyload.i.us) ; 3 uses
  %i.ab = add i64 %i.aa, 377705023201
  %or.cond.us16 = icmp ult i64 %i.ab, 631107230402
  br i1 %or.cond.us16, label %bb.h, label %bb.g

._crit_edge:                                      ; preds = %bb.h, %_ZN4jiff6shared4tzif17from_be_bytes_i3217h44d4e4b18690b629E.exit.us, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12chunks_exact17h42243817928ef77fE.exit"
  %4 = icmp eq i64 %i.p, 0
  br i1 %4, label %bb.i, label %bb.j, !prof !16

5:                                                ; preds = %.lr.ph
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @52, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #45, !noalias !10623
  unreachable

bb.g:                                             ; preds = %_ZN4jiff6shared4tzif17from_be_bytes_i6417hd5843ce25972a629E.exit.us
  %i.ac = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -377705023201)
  %.sroa.0.0.i32.us17 = tail call noundef range(i64 -377705023201, 253402207201) i64 @llvm.smin.i64(i64 %i.ac, i64 253402207200)
  br label %bb.h

bb.h:                                             ; preds = %_ZN4jiff6shared4tzif17from_be_bytes_i6417hd5843ce25972a629E.exit.us, %bb.g
  %.sroa.014.1.us18 = phi i64 [ %i.aa, %_ZN4jiff6shared4tzif17from_be_bytes_i6417hd5843ce25972a629E.exit.us ], [ %.sroa.0.0.i32.us17, %bb.g ]
  tail call fastcc void @"_ZN4jiff6shared4tzif243_$LT$impl$u20$jiff..shared..TzifTransitions$LT$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$19add_with_type_index17h93473856702afd88E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.r, i64 noundef %.sroa.014.1.us18)
  %i.ad = icmp ult i64 %i.z, 8
  br i1 %i.ad, label %._crit_edge, label %_ZN4jiff6shared4tzif17from_be_bytes_i6417hd5843ce25972a629E.exit.us

bb.i:                                             ; preds = %._crit_edge
  store ptr %i.i, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.ae, align 8
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @378, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #45
  unreachable

bb.k:                                             ; preds = %bb.c, %bb.d, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4jiff6shared4tzif371_$LT$impl$u20$jiff..shared..Tzif$LT$alloc..string..String$C$jiff..shared..util..array_str..ArrayStr$LT$30_usize$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifLocalTimeType$GT$$C$alloc..vec..Vec$LT$i64$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifDateTime$GT$$C$alloc..vec..Vec$LT$jiff..shared..TzifTransitionInfo$GT$$GT$$GT$28parse_time_zone_designations17hc0ec050490102eadE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(264) %1, i64 %.48.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = icmp ugt i64 %.48.val, %3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.c, align 8
  store ptr null, ptr %0, align 8
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.48.val
  %i.e = sub nuw i64 %3, %.48.val
  %i.f = icmp slt i64 %.48.val, 0
  br i1 %i.f, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.c
  %i.g = icmp eq i64 %.48.val, 0                  ; 3 uses
  br i1 %i.g, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h975a8781437437e3E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10645
  %i.h = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.48.val, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !10645 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %i.j = ptrtoint ptr %i.h to i64
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h975a8781437437e3E.exit"

bb.e:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.c
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %.48.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2010) #45, !noalias !10646
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h975a8781437437e3E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.d
  %.sroa.10.0.i.i = phi i64 [ %i.j, %bb.d ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ] ; 2 uses
  %i.k = inttoptr i64 %.sroa.10.0.i.i to ptr      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %2, i64 %.48.val, i1 false), !noalias !10647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10648
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.k, i64 noundef %.48.val)
          to label %bb.h unwind label %bb.f, !noalias !10648

bb.f:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h975a8781437437e3E.exit"
  %i.l = landingpad { ptr, i32 }
          cleanup
  br i1 %i.g, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h01b4c1eea2295df1E.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %.48.val, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !10648
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h01b4c1eea2295df1E.exit.i"

bb.h:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h975a8781437437e3E.exit"
  %i.m = load i64, ptr %i.a, align 8, !range !53, !noalias !10648, !noundef !11
  %i.n = trunc nuw i64 %i.m to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10648
  br i1 %i.n, label %bb.i, label %bb.l

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h01b4c1eea2295df1E.exit.i": ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.l

bb.i:                                             ; preds = %bb.h
  br i1 %i.g, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %.48.val, i64 noundef range(i64 1, -9223372036854775807) 1) #44
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 11, ptr %i.o, align 8
  store ptr null, ptr %0, align 8
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !10649)
  %.val.i86 = load i64, ptr %1, align 8, !alias.scope !10649 ; 2 uses
  %i.p = icmp eq i64 %.val.i86, 0
  br i1 %i.p, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !10649, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i86, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !10649
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit": ; preds = %bb.m, %bb.l
  store i64 %.48.val, ptr %1, align 8
  %.sroa.3.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.10.0.i.i, ptr %.sroa.3.0..sroa_idx17, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 %.48.val, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx19.sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.u = load i64, ptr %i.t, align 8, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit"
  %.sroa.076.181 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.aa
  %.sroa.076.183 = phi ptr [ %.sroa.076.181, %.lr.ph ], [ %.sroa.076.1, %bb.aa ] ; 3 uses
  %.sroa.076.082 = phi ptr [ %i.s, %.lr.ph ], [ %.sroa.076.183, %bb.aa ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.076.082, i64 4
  %i.y = load i8, ptr %i.x, align 4, !noundef !11 ; 2 uses
  %i.z = zext i8 %i.y to i64                      ; 7 uses
  %i.aa = load i64, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx19.sroa_idx, align 8, !noundef !11 ; 3 uses
  %i.ab = icmp eq i8 %i.y, 0
  br i1 %i.ab, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp ugt i64 %i.aa, %i.z
  br i1 %.not.i, label %bb.p, label %.split.i

.split.i:                                         ; preds = %bb.o
  %i.ac = icmp eq i64 %i.aa, %i.z
  br i1 %i.ac, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.z
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !10650, !noundef !11
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %bb.s, label %bb.r

._crit_edge:                                      ; preds = %bb.aa, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6595dbafa76a25cdE.exit"
  store ptr %i.d, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.ag, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.x, %bb.z, %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17he4f34af5c3eb5f9fE.exit.thread73", %bb.k, %._crit_edge, %bb.b
  ret void

bb.r:                                             ; preds = %bb.p, %.split.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.ah, align 8
  store ptr null, ptr %0, align 8
  br label %bb.q

bb.s:                                             ; preds = %bb.p, %.split.i, %bb.n
  %i.ai = sub nuw i64 %i.aa, %i.z                 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.z ; 2 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.s
  %i.ak = phi i64 [ 0, %bb.s ], [ %i.ax, %.backedge.i.backedge ] ; 5 uses
  %i.al = sub nuw i64 %i.ai, %i.ak                ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak ; 2 uses
  %i.an = icmp ult i64 %i.al, 16
  br i1 %i.an, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %.backedge.i
  %.not.i.i.i = icmp eq i64 %i.ai, %i.ak
  br i1 %.not.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17he4f34af5c3eb5f9fE.exit.thread73", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.t
  %.sroa.01.05.i.i.i = phi i64 [ %i.ar, %bb.t ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.01.05.i.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !10651, !noalias !10652, !noundef !11
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ar, %i.al
  br i1 %exitcond.not.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17he4f34af5c3eb5f9fE.exit.thread73", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %.backedge.i
  %i.as = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.am, i64 noundef %i.al), !noalias !10652 ; 2 uses
  %i.at = extractvalue { i64, i64 } %i.as, 0
  %i.au = extractvalue { i64, i64 } %i.as, 1
  %i.av = trunc nuw i64 %i.at to i1
  br i1 %i.av, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$4find17he4f34af5c3eb5f9fE.exit.thread73"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %.sroa.4.0.i27.i.i = phi i64 [ %i.au, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.aw = add i64 %i.ak, 1
  %i.ax = add i64 %i.aw, %.sroa.4.0.i27.i.i       ; 2 uses
end_hunk_0
