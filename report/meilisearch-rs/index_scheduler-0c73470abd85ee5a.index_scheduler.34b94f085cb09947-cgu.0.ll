Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17had7ac7f964458247E":bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1399
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1399
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hbf4d0b733fe82922E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !1402
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc099f72b46b9738eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !57, !noundef !57
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !57, !noundef !57
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !1405
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1405
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1405
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd24d8e7a2dcc05bbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !57, !noundef !57
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !57, !noundef !57
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !1408
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1408
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1408
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he08f5c117d1d2ea1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !1413, !noalias !1412, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1413, !noalias !1412, !noundef !57
  %i.c = sub nuw i64 %.val1.i, %.val.i            ; 2 uses
  store i64 %i.c, ptr %0, align 8, !alias.scope !1412, !noalias !1413
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8, !alias.scope !1412, !noalias !1413
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8, !alias.scope !1412, !noalias !1413
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17heff3507ee4c42c99E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !1416
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf30ab2c4c1c1524cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !1419
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf71a26ff097936a1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !1424
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf7251eb2b384d45fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !1429
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h4c599acc85f99775E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %.sroa.11.i.i.i = alloca [7 x i8], align 8      ; 6 uses
  %.sroa.105.i.i = alloca [7 x i8], align 8       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !1480, !noalias !1481, !nonnull !57, !align !64, !noundef !57 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1480, !noalias !1481, !nonnull !57, !align !61, !noundef !57
  %i.c = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !57, !noalias !1482, !nonnull !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1483
  call void %i.d(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 1 %.val.i.i.i), !noalias !1483, !inline_history !1442
  %i.e = load i64, ptr %i.a, align 8, !range !72, !noalias !1483, !noundef !57 ; 2 uses
  %.not.i34.i.i = icmp eq i64 %i.e, 2
  br i1 %.not.i34.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.541.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.642.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.743.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.844.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1480, !noalias !1481, !nonnull !57, !align !64, !noundef !57
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1480, !noalias !1481, !nonnull !57, !align !61, !noundef !57
  %i.h = getelementptr inbounds nuw i8, ptr %.val12.i.i.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !57, !noalias !1484, !nonnull !57
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h8ae5f7ece75332f9E.exit.i.i", %.lr.ph.i.i
  %i.j = phi i64 [ %i.e, %.lr.ph.i.i ], [ %i.z, %"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h8ae5f7ece75332f9E.exit.i.i" ] ; 4 uses
  %.sroa.0.035.i.i = phi i64 [ %2, %.lr.ph.i.i ], [ %i.v, %"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h8ae5f7ece75332f9E.exit.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %.sroa.541.0.copyload.i.i.i = load ptr, ptr %.sroa.541.0..sroa_idx.i.i.i, align 8, !noalias !1484 ; 7 uses
  %.sroa.642.0.copyload.i.i.i = load i64, ptr %.sroa.642.0..sroa_idx.i.i.i, align 8, !noalias !1484 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.743.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !1484
  %.sroa.844.0.copyload.i.i.i = load i8, ptr %.sroa.844.0..sroa_idx.i.i.i, align 1, !noalias !1484 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1484
  %i.k = invoke { ptr, ptr } %i.i(ptr noundef nonnull align 1 %.val11.i.i.i)
          to label %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hbf8ca4c01943096eE.exit.i.i.i" unwind label %bb.c, !noalias !1484, !inline_history !2 ; 2 uses

._crit_edge.i.i:                                  ; preds = %"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h8ae5f7ece75332f9E.exit.i.i", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1484
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hd5a7daec67be1f89E.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ne i8 %.sroa.844.0.copyload.i.i.i, -1
  %i.o = icmp eq i64 %.sroa.642.0.copyload.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i.i, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hd5a7daec67be1f89E.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.541.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.541.0.copyload.i.i.i, i64 noundef %.sroa.642.0.copyload.i.i.i, i64 noundef 1) #79, !noalias !1486
  br label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hd5a7daec67be1f89E.exit.i.i.i"

"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hbf8ca4c01943096eE.exit.i.i.i": ; preds = %bb.b
  %i.p = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not9.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hbf8ca4c01943096eE.exit.i.i.i"
  %i.q = icmp eq i64 %i.j, 0
  br i1 %i.q, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp ne i8 %.sroa.844.0.copyload.i.i.i, -1
  %i.s = icmp eq i64 %.sroa.642.0.copyload.i.i.i, 0
  %or.cond45.i.i.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond45.i.i.i, label %bb.h, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i.i.i": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.541.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.541.0.copyload.i.i.i, i64 noundef %.sroa.642.0.copyload.i.i.i, i64 noundef 1) #79, !noalias !1487
  br label %bb.h

"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hd5a7daec67be1f89E.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i", %bb.d, %bb.c
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hbf8ca4c01943096eE.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.105.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.105.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.i.i.i, i64 7, i1 false), !noalias !1488
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i)
  %i.t = icmp eq i64 %.sroa.0.035.i.i, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.h:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i.i.i", %bb.f, %bb.e, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i)
  store i64 2, ptr %0, align 8, !alias.scope !1489, !noalias !1490
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3nth17h6ebd0752c497f95dE.exit"

bb.i:                                             ; preds = %bb.g
  %i.u = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.610.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.105.i.i, i64 7, i1 false), !noalias !1490
  store i64 %i.j, ptr %0, align 8, !alias.scope !1489, !noalias !1490
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.541.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1489, !noalias !1490
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.642.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1489, !noalias !1490
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.844.0.copyload.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 1, !alias.scope !1489, !noalias !1490
  %.sroa.811.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.p, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !alias.scope !1489, !noalias !1490
  %.sroa.912.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.u, ptr %.sroa.912.0..sroa_idx.i.i, align 8, !alias.scope !1489, !noalias !1490
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.105.i.i)
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3nth17h6ebd0752c497f95dE.exit"

bb.j:                                             ; preds = %bb.g
  %i.v = add i64 %.sroa.0.035.i.i, -1
  %i.w = icmp eq i64 %i.j, 0
  br i1 %i.w, label %"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h8ae5f7ece75332f9E.exit.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = icmp ne i8 %.sroa.844.0.copyload.i.i.i, -1
  %i.y = icmp eq i64 %.sroa.642.0.copyload.i.i.i, 0
  %or.cond.i.i = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i.i, label %"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h8ae5f7ece75332f9E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i3.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i3.i.i": ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.541.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.541.0.copyload.i.i.i, i64 noundef %.sroa.642.0.copyload.i.i.i, i64 noundef 1) #79, !noalias !1491
  br label %"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h8ae5f7ece75332f9E.exit.i.i"

"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h8ae5f7ece75332f9E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i3.i.i", %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.105.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1492
  call void %i.d(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 1 %.val.i.i.i), !noalias !1492, !inline_history !1442
  %i.z = load i64, ptr %i.a, align 8, !range !72, !noalias !1492, !noundef !57 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.z, 2
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.b

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3nth17h6ebd0752c497f95dE.exit": ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc050697b8edcb86E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.11.i = alloca [7 x i8], align 8          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1521
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !1520, !noalias !1519, !nonnull !57, !align !64, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10.i = load ptr, ptr %i.b, align 8, !alias.scope !1520, !noalias !1519, !nonnull !57, !align !61, !noundef !57
  %i.c = getelementptr inbounds nuw i8, ptr %.val10.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !57, !noalias !1522, !nonnull !57
  call void %i.d(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 1 %.val.i), !noalias !1521, !inline_history !1498
  %i.e = load i64, ptr %i.a, align 8, !range !72, !noalias !1521, !noundef !57 ; 4 uses
  %.not.i = icmp eq i64 %i.e, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.541.0.copyload.i = load ptr, ptr %.sroa.541.0..sroa_idx.i, align 8, !noalias !1521 ; 5 uses
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.642.0.copyload.i = load i64, ptr %.sroa.642.0..sroa_idx.i, align 8, !noalias !1521 ; 5 uses
  %.sroa.743.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.743.0..sroa_idx.i, i64 7, i1 false), !noalias !1521
  %.sroa.844.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %.sroa.844.0.copyload.i = load i8, ptr %.sroa.844.0..sroa_idx.i, align 1, !noalias !1521 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1521
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11.i = load ptr, ptr %i.f, align 8, !alias.scope !1520, !noalias !1519, !nonnull !57, !align !64, !noundef !57
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12.i = load ptr, ptr %i.g, align 8, !alias.scope !1520, !noalias !1519, !nonnull !57, !align !61, !noundef !57
  %i.h = getelementptr inbounds nuw i8, ptr %.val12.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !57, !noalias !1521, !nonnull !57
  %i.j = invoke { ptr, ptr } %i.i(ptr noundef nonnull align 1 %.val11.i)
          to label %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hbf8ca4c01943096eE.exit.i" unwind label %bb.d, !noalias !1521, !inline_history !2 ; 2 uses

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1521
  store i64 2, ptr %0, align 8, !alias.scope !1519, !noalias !1520
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h9f7feef6c4e6094fE.exit"

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hd5a7daec67be1f89E.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp ne i8 %.sroa.844.0.copyload.i, -1
  %i.n = icmp eq i64 %.sroa.642.0.copyload.i, 0
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hd5a7daec67be1f89E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.541.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.541.0.copyload.i, i64 noundef %.sroa.642.0.copyload.i, i64 noundef 1) #79, !noalias !1523
  br label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hd5a7daec67be1f89E.exit.i"

"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hbf8ca4c01943096eE.exit.i": ; preds = %bb.b
  %i.o = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not9.i = icmp eq ptr %i.o, null
  br i1 %.not9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hbf8ca4c01943096eE.exit.i"
  %i.p = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %.sroa.04.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.04.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.i, i64 7, i1 false), !noalias !1520
  store i64 %i.e, ptr %0, align 8, !alias.scope !1519, !noalias !1520
  %.sroa.04.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.541.0.copyload.i, ptr %.sroa.04.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1519, !noalias !1520
  %.sroa.04.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.642.0.copyload.i, ptr %.sroa.04.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1519, !noalias !1520
  %.sroa.04.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.844.0.copyload.i, ptr %.sroa.04.sroa.7.0..sroa_idx.i, align 1, !alias.scope !1519, !noalias !1520
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1519, !noalias !1520
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !1519, !noalias !1520
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h9f7feef6c4e6094fE.exit"

bb.g:                                             ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17hbf8ca4c01943096eE.exit.i"
  store i64 2, ptr %0, align 8, !alias.scope !1519, !noalias !1520
  %i.q = icmp eq i64 %i.e, 0
  br i1 %i.q, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h9f7feef6c4e6094fE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ne i8 %.sroa.844.0.copyload.i, -1
  %i.s = icmp eq i64 %.sroa.642.0.copyload.i, 0
  %or.cond45.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond45.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h9f7feef6c4e6094fE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i": ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.541.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.541.0.copyload.i, i64 noundef %.sroa.642.0.copyload.i, i64 noundef 1) #79, !noalias !1524
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h9f7feef6c4e6094fE.exit"

"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hd5a7daec67be1f89E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.e, %bb.d
  resume { ptr, i32 } %i.k

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h9f7feef6c4e6094fE.exit": ; preds = %bb.c, %bb.f, %bb.g, %bb.h, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5eeb75328510bb85E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1536
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !1535, !noalias !1534, !nonnull !57, !align !64, !noundef !57
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15.i = load ptr, ptr %i.c, align 8, !alias.scope !1535, !noalias !1534, !nonnull !57, !align !61, !noundef !57
  %i.d = getelementptr inbounds nuw i8, ptr %.val15.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !noalias !1537, !nonnull !57
  call void %i.e(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 %.val.i), !noalias !1536, !inline_history !1530
  %i.f = load i64, ptr %i.b, align 8, !noalias !1536, !noundef !57
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !71, !noalias !1536, !noundef !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !1536 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1536
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val16.i = load ptr, ptr %i.k, align 8, !alias.scope !1535, !noalias !1534, !nonnull !57, !align !64, !noundef !57
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val17.i = load ptr, ptr %i.l, align 8, !alias.scope !1535, !noalias !1534, !nonnull !57, !align !61, !noundef !57
  %i.m = getelementptr inbounds nuw i8, ptr %.val17.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !57, !noalias !1538, !nonnull !57
  call void %i.n(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 1 %.val16.i), !noalias !1536, !inline_history !1533
  %i.o = load i64, ptr %i.a, align 8, !noalias !1536, !noundef !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !71, !noalias !1536, !noundef !57 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !1536 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1536
  %i.t = trunc nuw i64 %i.h to i1
  %i.u = trunc nuw i64 %i.q to i1                 ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.u, label %bb.d, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$9size_hint17hbacc79ca893cd754E.exit"

bb.c:                                             ; preds = %bb.a
  %.14.i = select i1 %i.u, i64 %i.s, i64 undef
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$9size_hint17hbacc79ca893cd754E.exit"

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.i18.i = call noundef i64 @llvm.umin.i64(i64 %i.s, i64 %i.j)
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$9size_hint17hbacc79ca893cd754E.exit"
end_hunk_0
begin_hunk_1_@"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfd8132904707a64bE":bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !57, !noundef !57 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !noundef !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98815
  call void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !98816
  %.idx.i.i = mul nuw nsw i64 %.val1, 56
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i.i
  %i.g = icmp eq i64 %.val1, 0
  br i1 %i.g, label %"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e022d447b93e907E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %.val, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98817
  store ptr %.sroa.0.07.i.i.i, ptr %i.a, align 8, !noalias !98817
  %i.i = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2101) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98817
  %i.j = icmp eq ptr %i.h, %i.f
  br i1 %i.j, label %"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e022d447b93e907E.exit", label %.lr.ph.i.i.i

"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e022d447b93e907E.exit": ; preds = %.lr.ph.i.i.i, %bb.a
  %i.k = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98815
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfe50307e3fcc93c8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98821)
  %i.e = load i64, ptr %i.d, align 8, !range !62, !alias.scope !98821, !noalias !98822, !noundef !57
  switch i64 %i.e, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2307, i64 noundef 27), !noalias !98821
  br label %"_ZN54_$LT$file_store..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hac4291f2178eec31E.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98823
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.c, align 8, !noalias !98823
  %i.h = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2308, i64 noundef 7, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2024)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98823
  br label %"_ZN54_$LT$file_store..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hac4291f2178eec31E.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98823
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.b, align 8, !noalias !98823
  %i.j = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2310, i64 noundef 12, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2309)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98823
  br label %"_ZN54_$LT$file_store..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hac4291f2178eec31E.exit"

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98823
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.a, align 8, !noalias !98823
  %i.l = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2312, i64 noundef 9, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2311)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98823
  br label %"_ZN54_$LT$file_store..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hac4291f2178eec31E.exit"

"_ZN54_$LT$file_store..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hac4291f2178eec31E.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h16fd10c7f7b87440E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !64, !noundef !57
  %i.b = tail call noundef zeroext i1 @"_ZN68_$LT$rusty_s3..bucket..BucketError$u20$as$u20$core..fmt..Display$GT$3fmt17he86de060dd41f4ccE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h29a01b1e0567a229E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57
  %i.b = tail call noundef zeroext i1 @"_ZN73_$LT$http_client..reqwest..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h1a935945697988fdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h661c464c7df232c4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98827)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !98827, !noalias !98828, !nonnull !57, !noundef !57
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !98827, !noalias !98828, !noundef !57
  %i.f = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !98827
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h674c3f6d3ed2216eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57
  %i.b = tail call noundef zeroext i1 @"_ZN60_$LT$byte_unit..byte..Byte$u20$as$u20$core..fmt..Display$GT$3fmt17hed0266cf98321e7cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h75ade87a2d27e5c8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98832)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !98832, !noalias !98833, !nonnull !57, !align !64, !noundef !57
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !98832, !noalias !98833, !noundef !57
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !98832
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h773314d27161cf3dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !64, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !57, !align !61, !noundef !57
  %i.d = tail call noundef zeroext i1 @"_ZN71_$LT$dyn$u20$serde_core..de..Expected$u20$as$u20$core..fmt..Display$GT$3fmt17h7fa70bf68d896d0aE"(ptr noundef nonnull align 1 %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17ha76428732b488d75E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !163, !noundef !57
  %i.b = tail call noundef zeroext i1 @"_ZN68_$LT$milli..index..RollbackOutcome$u20$as$u20$core..fmt..Display$GT$3fmt17h5a66c8ecb6958d75E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbc9fd7e9ee5d27d6E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !200, !noundef !57
  %i.b = tail call noundef zeroext i1 @"_ZN63_$LT$http..status..StatusCode$u20$as$u20$core..fmt..Display$GT$3fmt17hc6318c9da583d3ddE"(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hc4584c6e718c69ccE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57
  %i.b = tail call noundef zeroext i1 @"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..fmt..Display$GT$3fmt17hb55cd4cfc4868ac5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hc7fe06cb46f87c5cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !57, !align !64, !noundef !57
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !57, !align !61, !noundef !57
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !57, !noalias !98837, !nonnull !57
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !98836
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcbf5b67aa29fd2c0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57
  %i.b = tail call noundef zeroext i1 @"_ZN95_$LT$index_scheduler..scheduler..create_batch..IndexOperation$u20$as$u20$core..fmt..Display$GT$3fmt17hf703406d45c222d4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(808) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd4d40562fc549de0E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !64, !noundef !57
  %i.b = tail call noundef zeroext i1 @"_ZN4uuid3fmt59_$LT$impl$u20$core..fmt..Display$u20$for$u20$uuid..Uuid$GT$3fmt17h147f08f520647497E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd4e1be0b4747a907E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !64, !noundef !57
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98854)
  %i.b = load i8, ptr %i.a, align 1, !range !63, !alias.scope !98853, !noalias !98854, !noundef !57
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11.i = load ptr, ptr %i.c, align 8, !alias.scope !98854, !noalias !98853, !nonnull !57, !noundef !57
  %.val10.i = load ptr, ptr %1, align 8, !alias.scope !98854, !noalias !98853, !nonnull !57, !noundef !57 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val11.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !noalias !98855, !nonnull !57 ; 6 uses
  switch i8 %i.b, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val10.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4206, i64 noundef 16), !noalias !98856, !inline_history !98857
  br label %"_ZN72_$LT$index_scheduler..error..DateField$u20$as$u20$core..fmt..Display$GT$3fmt17h07fd6a350f501066E.exit"

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val10.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4207, i64 noundef 15), !noalias !98858, !inline_history !98857
  br label %"_ZN72_$LT$index_scheduler..error..DateField$u20$as$u20$core..fmt..Display$GT$3fmt17h07fd6a350f501066E.exit"

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val10.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4208, i64 noundef 15), !noalias !98859, !inline_history !98857
  br label %"_ZN72_$LT$index_scheduler..error..DateField$u20$as$u20$core..fmt..Display$GT$3fmt17h07fd6a350f501066E.exit"

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val10.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4209, i64 noundef 14), !noalias !98860, !inline_history !98857
  br label %"_ZN72_$LT$index_scheduler..error..DateField$u20$as$u20$core..fmt..Display$GT$3fmt17h07fd6a350f501066E.exit"

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val10.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4210, i64 noundef 16), !noalias !98861, !inline_history !98857
  br label %"_ZN72_$LT$index_scheduler..error..DateField$u20$as$u20$core..fmt..Display$GT$3fmt17h07fd6a350f501066E.exit"

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 1 %.val10.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4211, i64 noundef 15), !noalias !98862, !inline_history !98857
  br label %"_ZN72_$LT$index_scheduler..error..DateField$u20$as$u20$core..fmt..Display$GT$3fmt17h07fd6a350f501066E.exit"

"_ZN72_$LT$index_scheduler..error..DateField$u20$as$u20$core..fmt..Display$GT$3fmt17h07fd6a350f501066E.exit": ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.d ], [ %i.g, %bb.c ], [ %i.k, %bb.g ], [ %i.j, %bb.f ], [ %i.i, %bb.e ], [ %i.f, %bb.b ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd77db9631efa3dbdE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57
  %.val = load ptr, ptr %i.a, align 8, !nonnull !57, !align !61, !noundef !57
  %i.b = tail call noundef zeroext i1 @"_ZN68_$LT$index_scheduler..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h4782f2150ead2bc7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !98863
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hdb0e18a1ced5b243E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !163, !noundef !57
  %i.b = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !64, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !57
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf1365fe4c76d632cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !61, !noundef !57
  %i.b = tail call noundef zeroext i1 @"_ZN58_$LT$milli..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h1b55c6da7ed7f60bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h3138a9cec21cb732E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !57, !align !64, !noundef !57
  %i.b = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0204d381306fb180E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN240_$LT$meilisearch_types..dynamic_search_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..dynamic_search_rules..DynamicSearchRuleUpdateRequest$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h189bde3728e8439eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h036d8db046e62db1E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1793, i64 noundef 14)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h040c9da4165e0bf7E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN280_$LT$$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..ImportIndexState$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$..visit_enum..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h0fd3922759058dccE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h045f766da20d56b0E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN253_$LT$$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Details$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$..visit_enum..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h005e457b833c371eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h058536872b3d5446E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1193, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h06a2bd3bdc8510f0E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN228_$LT$milli..filterable_attributes_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..filterable_attributes_rules..FilterableAttributesFeatures$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17hc0bca3ea8297dbdaE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h072fc30f014bfe5fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN228_$LT$milli..filterable_attributes_rules.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..filterable_attributes_rules..FilterableAttributesPatterns$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h08e66c81dafaefeeE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0758acd5e0b5065bE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN253_$LT$$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Details$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$..visit_enum..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17hc2bbd69a9572f8beE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h07e2226d4e128245E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN178_$LT$milli..foreign_key.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..foreign_key..ForeignKey$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h9fe5b33e64cb953bE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0856876c7408b171E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN209_$LT$meilisearch_types..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..settings..PaginationSettings$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17hf00d496950e76829E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0a0182d28a001a5fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN191_$LT$milli..vector..settings.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..vector..settings..Fragment$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h1f2508150772dc70E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0a6d2d605c2fd9beE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN261_$LT$$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$..visit_enum..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17hf2ce523bb80357b0E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0b142124d4cae40aE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN192_$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..Details$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h7dd6f8ae1d6349dcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0bfc5ab40715cddeE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN182_$LT$milli..update..chat.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$milli..update..chat..ChatSettings$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h0d77a5890a928cd2E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0bfff70757ba0318E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN261_$LT$$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$..visit_enum..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h9e73032a4283c860E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0e52be53e1f3cba4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN261_$LT$$LT$meilisearch_types..tasks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..KindWithContent$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$..visit_enum..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h073cb4ba7a74ed16E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17h0e5ed7d592a55778E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
end_hunk_1
begin_hunk_2_@"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hd7a32724a9c106aeE":bb.a
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.0.0.i11
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !182533
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.0.0.i11, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.011.0.i
  %i.q = or disjoint i64 %.sroa.0.0.i11, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.011.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.011.0.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i11, %bb.d ] ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !182533, !noundef !57
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.0.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.011.1.i
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit: ; preds = %bb.f, %bb.g
  %.sroa.011.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.011.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.011.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !57
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub i64 %2, %.sroa.0.0                  ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted21 = load i64, ptr %i.aj, align 8
  %.promoted22 = load i64, ptr %i.ak, align 8, !alias.scope !182534
  %.promoted24 = load i64, ptr %i.al, align 8, !alias.scope !182534
  br label %bb.q

bb.i:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !57
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !182535, !noundef !57
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !182535, !noundef !57 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !182535, !noundef !57
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !182535
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !182535
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !182535
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !182534
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !182534
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.04.0.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.lcssa
  %.sroa.014.0.copyload.i18 = load i32, ptr %i.bl, align 1, !alias.scope !182536
  %i.bm = zext i32 %.sroa.014.0.copyload.i18 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.011.0.i12 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.sroa.0.0.i13 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %i.bn = or disjoint i64 %.sroa.0.0.i13, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.04.0.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.0.0.i13
  %.sroa.015.0.copyload.i17 = load i16, ptr %i.bq, align 1, !alias.scope !182536
  %i.br = zext i16 %.sroa.015.0.copyload.i17 to i64
  %i.bs = shl nuw nsw i64 %.sroa.0.0.i13, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.011.0.i12
  %i.bv = or disjoint i64 %.sroa.0.0.i13, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.011.1.i14 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.011.0.i12, %bb.m ] ; 2 uses
  %.sroa.0.1.i15 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.0.0.i13, %bb.m ] ; 3 uses
  %i.bw = icmp samesign ult i64 %.sroa.0.1.i15, %i.ag
  br i1 %i.bw, label %bb.p, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.0.1.i15, %.sroa.04.0.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !182536, !noundef !57
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.0.1.i15, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.011.1.i14
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19: ; preds = %bb.o, %bb.p
  %.sroa.011.2.i16 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.011.1.i14, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.011.2.i16, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted24, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted21, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.04.020 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.020
  %.sroa.08.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.08.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.08.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.04.020, 8            ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17had624c8bcda92a85E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @4030, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 3, ptr %i.d, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !57, !noundef !57
  %.val = load ptr, ptr %1, align 8, !nonnull !57, !noundef !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182539
  store ptr @4029, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !182539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$http_client..reqwest..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h066554a392fafc3bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !align !61, !noundef !57
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4036, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4035)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4034, i64 noundef 7, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4033)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$milli..update..chat..SemanticRatio$u20$as$u20$core..fmt..Debug$GT$3fmt17hdecbd3061312f322E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2665, i64 noundef 13, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4179)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h1e99637e55f298eaE"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h2ef42e0efd2386a7E"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17hb8abb8ce85ffc684E"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17hd76d8f48f6cc947cE"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17hdc32da23b1fd030aE"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h0a019f4f3f3bfcf7E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h0df1bbc4a653ef31E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h3ff3e358c9bdc547E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5b160280ac4fa5ecE"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h9e1103bafd4fbaa5E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !57, !nonnull !57
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$core..num..dec2flt..ParseFloatError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6db8bd8ea777a1c1E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4200, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @705, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4199)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @"_ZN72_$LT$flate2..gz..write..GzEncoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5flush17h4afcb555e52c4607E"(ptr noalias noundef align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !57
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.i, !prof !58

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182560)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !182560, !noundef !57 ; 3 uses
end_hunk_2
begin_hunk_3_@"_ZN72_$LT$flate2..gz..write..GzEncoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17h0275a9f8a2e46077E":bb.a

"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.thread.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h06e6b7c0c4ae402bE.exit.i.i", %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.i", %.split.i
  %.val16.i = load i64, ptr %i.ab, align 8, !alias.scope !182639, !noalias !182642, !noundef !57 ; 2 uses
  %i.br = tail call noundef i8 @"_ZN58_$LT$flate2..mem..Compress$u20$as$u20$flate2..zio..Ops$GT$7run_vec17hfcf1bfa2d5e57b55E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i8 noundef 0), !noalias !182649 ; 2 uses
  %i.bs = icmp eq i8 %i.br, 3
  br i1 %i.bs, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.thread.i"
  %.val.i = load i64, ptr %i.ab, align 8, !alias.scope !182639, !noalias !182642, !noundef !57 ; 2 uses
  %i.bt = icmp eq i8 %i.br, 2
  %i.bu = icmp ne i64 %.val.i, %.val16.i
  %brmerge.i = or i1 %i.bt, %i.bu
  br i1 %brmerge.i, label %.loopexit, label %.split.i

.critedge.i:                                      ; preds = %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.thread.i", %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.thread.us.i"
  %i.bv = tail call noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 20, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3932, i64 noundef 22), !noalias !182649
  br label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.thread19.i"

.loopexit:                                        ; preds = %bb.l, %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.thread.us.i"
  %.us-phi49.i = phi i64 [ %.val16.us.i, %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.thread.us.i" ], [ %.val16.i, %bb.l ]
  %.us-phi50.i = phi i64 [ %.val.us.i, %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.thread.us.i" ], [ %.val.i, %bb.l ]
  %i.bw = sub i64 %.us-phi50.i, %.us-phi49.i      ; 4 uses
  %.not8 = icmp ugt i64 %i.bw, %2
  br i1 %.not8, label %bb.n, label %bb.m, !prof !107

bb.m:                                             ; preds = %.loopexit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6flate23crc14impl_crc32fast3Crc6update17h753381d122cdba06E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %i.bw)
  %i.by = inttoptr i64 %i.bw to ptr
  br label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.thread19.i"

bb.n:                                             ; preds = %.loopexit
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.bw, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4204) #80
  unreachable

"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.thread19.i": ; preds = %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.i", %.lr.ph.i9, %.lr.ph.us.i, %.critedge.i, %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.us.i", %"_ZN6flate22gz5write18GzEncoder$LT$W$GT$12write_header17h3a27209ab7110fd4E.exit", %bb.m
  %.sroa.4.0 = phi ptr [ %i.by, %bb.m ], [ %i.p, %"_ZN6flate22gz5write18GzEncoder$LT$W$GT$12write_header17h3a27209ab7110fd4E.exit" ], [ %i.bv, %.critedge.i ], [ inttoptr (i64 98784247811 to ptr), %.lr.ph.us.i ], [ inttoptr (i64 98784247811 to ptr), %.lr.ph.i9 ], [ %.lcssa30.us.i, %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.us.i" ], [ %.lcssa30.i, %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.i" ]
  %.sroa.0.0 = phi i64 [ 0, %bb.m ], [ 1, %"_ZN6flate22gz5write18GzEncoder$LT$W$GT$12write_header17h3a27209ab7110fd4E.exit" ], [ 1, %.critedge.i ], [ 1, %.lr.ph.us.i ], [ 1, %.lr.ph.i9 ], [ 1, %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.us.i" ], [ 1, %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17haddefcf055359286E.exit.i" ]
  %i.bz = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ca = insertvalue { i64, ptr } %i.bz, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.ca
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @"_ZN72_$LT$flate2..gz..write..GzEncoder$LT$W$GT$$u20$as$u20$std..io..Write$GT$5write17hfe90c937e3690db9E"(ptr noalias noundef align 8 dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !57
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef ptr @"_ZN6flate22gz5write18GzEncoder$LT$W$GT$12write_header17h2f50e920e1179609E"(ptr noalias noundef align 8 dereferenceable(112) %0) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.thread19.i"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  call void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @435, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4205) #80
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = icmp eq i64 %2, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182674)
  %.promoted.i.i = load i64, ptr %i.f, align 8, !alias.scope !182675, !noalias !182676 ; 3 uses
  %i.l = icmp sgt i64 %.promoted.i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %.promoted.i.i, 0
  br i1 %i.m, label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.thread.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.n = load ptr, ptr %i.g, align 8, !alias.scope !182675, !noalias !182676, !align !61, !noundef !57 ; 5 uses
  %.not.i.i = icmp eq ptr %i.n, null
  %i.o = load ptr, ptr %i.h, align 8, !alias.scope !182675, !noalias !182676, !nonnull !57 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br i1 %.not.i.i, label %bb.h, label %.lr.ph.split.i.i, !prof !60

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h3beaa0e2df299549E.exit.i.i"
  %i.r = phi i64 [ %i.aj, %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h3beaa0e2df299549E.exit.i.i" ], [ %.promoted.i.i, %.lr.ph.i.i ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182677)
  %i.s = load i64, ptr %i.n, align 8, !range !56, !alias.scope !182677, !noalias !182678, !noundef !57
  %i.t = load i64, ptr %i.p, align 8, !alias.scope !182677, !noalias !182678, !noundef !57 ; 4 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = sub nsw i64 %i.s, %i.t
  %i.w = icmp ult i64 %i.r, %i.v
  br i1 %i.w, label %bb.g, label %bb.f, !prof !58

bb.f:                                             ; preds = %.lr.ph.split.i.i
  %i.x = tail call { i64, ptr } @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10write_cold17h70306deeea6b2ea2E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.r), !noalias !182679
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h751f448b81065b55E.exit.i.i"

bb.g:                                             ; preds = %.lr.ph.split.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182680)
  %i.y = load ptr, ptr %i.q, align 8, !alias.scope !182681, !noalias !182682, !nonnull !57, !noundef !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.o, i64 range(i64 0, -9223372036854775808) %i.r, i1 false), !noalias !182683
  %i.aa = add nuw i64 %i.t, %i.r
  store i64 %i.aa, ptr %i.p, align 8, !alias.scope !182681, !noalias !182682
  %i.ab = inttoptr i64 %i.r to ptr
  %i.ac = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ab, 1
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h751f448b81065b55E.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h751f448b81065b55E.exit.i.i": ; preds = %bb.g, %bb.f
  %.merged.i.i.i.i = phi { i64, ptr } [ %i.ac, %bb.g ], [ %i.x, %bb.f ] ; 2 uses
  %i.ad = extractvalue { i64, ptr } %.merged.i.i.i.i, 0
  %i.ae = extractvalue { i64, ptr } %.merged.i.i.i.i, 1 ; 3 uses
  %i.af = ptrtoint ptr %i.ae to i64               ; 5 uses
  %i.ag = trunc nuw i64 %i.ad to i1
  %.not.i = icmp eq ptr %i.ae, null               ; 2 uses
  br i1 %i.ag, label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.i", label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3934) #80, !noalias !182679
  unreachable

bb.i:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h751f448b81065b55E.exit.i.i"
  br i1 %.not.i, label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.thread19.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182684)
  %i.ah = icmp ult i64 %i.r, %i.af
  br i1 %i.ah, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h06e6b7c0c4ae402bE.exit.i.i", !prof !60

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.af, i64 noundef range(i64 0, -9223372036854775808) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2548) #80, !noalias !182685
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h06e6b7c0c4ae402bE.exit.i.i": ; preds = %bb.j
  store i64 0, ptr %i.f, align 8, !alias.scope !182686, !noalias !182687
  %.not.i.i.i.i.i.i = icmp eq i64 %i.r, %i.af
  br i1 %.not.i.i.i.i.i.i, label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.thread.i", label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h3beaa0e2df299549E.exit.i.i"

"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h3beaa0e2df299549E.exit.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h06e6b7c0c4ae402bE.exit.i.i"
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.af
  %i.aj = sub nuw nsw i64 %i.r, %i.af             ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.ai, i64 %i.aj, i1 false), !noalias !182688
  store i64 %i.aj, ptr %i.f, align 8, !alias.scope !182675, !noalias !182689
  br label %.lr.ph.split.i.i

"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$5write17h751f448b81065b55E.exit.i.i"
  br i1 %.not.i, label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.thread.i", label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.thread19.i"

"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.thread.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h06e6b7c0c4ae402bE.exit.i.i", %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.i", %bb.e
  %.val16.i = load i64, ptr %i.j, align 8, !alias.scope !182690, !noalias !182676, !noundef !57 ; 2 uses
  %i.ak = tail call noundef i8 @"_ZN58_$LT$flate2..mem..Compress$u20$as$u20$flate2..zio..Ops$GT$7run_vec17hfcf1bfa2d5e57b55E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i8 noundef 0), !noalias !182691 ; 2 uses
  %i.al = icmp eq i8 %i.ak, 3
  br i1 %i.al, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.thread.i"
  %.val.i = load i64, ptr %i.j, align 8, !alias.scope !182690, !noalias !182676, !noundef !57 ; 2 uses
  %i.am = icmp eq i8 %i.ak, 2
  %i.an = icmp ne i64 %.val.i, %.val16.i
  %or.cond.not25.i = or i1 %i.k, %i.an
  %brmerge.i = or i1 %i.am, %or.cond.not25.i
  br i1 %brmerge.i, label %bb.m, label %bb.e

.critedge.i:                                      ; preds = %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.thread.i"
  %i.ao = tail call noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 20, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3932, i64 noundef 22), !noalias !182691
  br label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.thread19.i"

bb.m:                                             ; preds = %bb.l
  %i.ap = sub i64 %.val.i, %.val16.i              ; 4 uses
  %.not8 = icmp ugt i64 %i.ap, %2
  br i1 %.not8, label %bb.o, label %bb.n, !prof !107

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6flate23crc14impl_crc32fast3Crc6update17h753381d122cdba06E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %i.ap)
  %i.ar = inttoptr i64 %i.ap to ptr
  br label %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.thread19.i"

bb.o:                                             ; preds = %bb.m
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ap, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4204) #80
  unreachable

"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.thread19.i": ; preds = %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.i", %bb.i, %.critedge.i, %bb.b, %bb.n
  %.sroa.4.0 = phi ptr [ %i.ar, %bb.n ], [ %i.e, %bb.b ], [ %i.ao, %.critedge.i ], [ inttoptr (i64 98784247811 to ptr), %bb.i ], [ %i.ae, %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.i" ]
  %.sroa.0.0 = phi i64 [ 0, %bb.n ], [ 1, %bb.b ], [ 1, %.critedge.i ], [ 1, %bb.i ], [ 1, %"_ZN6flate23zio19Writer$LT$W$C$D$GT$4dump17h3edbac85a5ddbc65E.exit.i" ]
  %i.as = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.at = insertvalue { i64, ptr } %i.as, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.at
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$index_scheduler..error..DateField$u20$as$u20$core..fmt..Display$GT$3fmt17h07fd6a350f501066E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !63, !noundef !57
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.b, align 8, !nonnull !57, !noundef !57
  %.val10 = load ptr, ptr %1, align 8, !nonnull !57, !noundef !57 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val11, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !57, !noalias !57, !nonnull !57 ; 6 uses
  switch i8 %i.a, label %default.unreachable67 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable67:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4206, i64 noundef 16), !noalias !182704, !inline_history !240
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4207, i64 noundef 15), !noalias !182705, !inline_history !240
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4208, i64 noundef 15), !noalias !182706, !inline_history !240
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4209, i64 noundef 14), !noalias !182707, !inline_history !240
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4210, i64 noundef 16), !noalias !182708, !inline_history !240
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.g:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4211, i64 noundef 15), !noalias !182709, !inline_history !240
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.j, %bb.g ], [ %i.i, %bb.f ], [ %i.h, %bb.e ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$meilisearch_types..network..Network$u20$as$u20$core..fmt..Debug$GT$3fmt17h72f6eedce4d442a7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field5_finish17hdf1a0dbaab5abae2E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @807, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4214, i64 noundef 5, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3096, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @809, i64 noundef 7, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4212, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @813, i64 noundef 6, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4213, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @811, i64 noundef 6, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3096, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @507, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3141)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$meilisearch_types..tasks..Details$u20$as$u20$core..clone..Clone$GT$5clone17h62b3451881a95aadE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [168 x i8], align 8               ; 4 uses
  %i.d = alloca [760 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 3 uses
  %i.k = alloca [192 x i8], align 8               ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.53 = alloca [16 x i8], align 8           ; 4 uses
  %i.q = load i64, ptr %1, align 8, !range !208, !noundef !57 ; 3 uses
  %i.r = add nsw i64 %i.q, -4
  %i.s = icmp samesign ugt i64 %i.q, 3
  %i.t = select i1 %i.s, i64 %i.r, i64 15
  switch i64 %i.t, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.l
    i64 8, label %bb.m
    i64 9, label %bb.n
    i64 10, label %bb.o
    i64 11, label %bb.p
    i64 12, label %bb.q
    i64 13, label %bb.r
    i64 14, label %bb.s
    i64 15, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !57
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !71, !noundef !57 ; 2 uses
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8
  %.sroa.5.0 = select i1 %i.y, i64 %i.aa, i64 undef
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.v, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %i.ad, align 8
  store i64 4, ptr %0, align 8
  br label %bb.z

bb.d:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.ae, align 8            ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79
  %i.af = tail call noalias noundef align 8 dereferenceable_or_null(760) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 760, i64 noundef range(i64 1, -9223372036854775807) 8) #79 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.e, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h779af0ff0e4690b1E.exit.i", !prof !60

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 760) #80
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h779af0ff0e4690b1E.exit.i": ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !182764
  invoke fastcc void @"_ZN85_$LT$meilisearch_types..settings..Settings$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h110e21063ded94baE"(ptr noalias noundef align 8 captures(address) dereferenceable(760) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(760) %.val)
          to label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h60070cfd0a1e8d28E.exit" unwind label %bb.f

common.resume:                                    ; preds = %.body, %.body, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit55", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit55", %bb.ae, %bb.av, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit60", %bb.bh, %bb.w, %bb.x, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %i.ee, %bb.w ], [ %i.ee, %bb.x ], [ %.pn44, %bb.av ], [ %.pn49, %bb.ae ], [ %.pn49, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit55" ], [ %.pn49, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit55" ], [ %.pn44, %.body ], [ %.pn44, %.body ], [ %.pn, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit60" ], [ %.pn, %bb.bh ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h779af0ff0e4690b1E.exit.i"
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 760, i64 noundef 8) #79
  br label %common.resume

"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h60070cfd0a1e8d28E.exit": ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h779af0ff0e4690b1E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(760) %i.af, ptr noundef nonnull align 8 dereferenceable(760) %i.d, i64 760, i1 false), !noalias !182764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !182764
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ai, align 8
  store i64 5, ptr %0, align 8
  br label %bb.z

bb.g:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !range !83, !noundef !57
  %.not46 = icmp eq i64 %i.ak, -9223372036854775808
  br i1 %.not46, label %bb.ab, label %bb.aa

bb.h:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8, !noundef !57
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !71, !noundef !57 ; 2 uses
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8
  %.sroa.56.0 = select i1 %i.ap, i64 %i.ar, i64 undef
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.am, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ao, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.56.0, ptr %i.au, align 8
  store i64 7, ptr %0, align 8
  br label %bb.z

bb.i:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4215)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !71, !noundef !57 ; 2 uses
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load i64, ptr %i.ba, align 8
  %.sroa.58.0 = select i1 %i.az, i64 %i.bb, i64 undef
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ay, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.58.0, ptr %i.bd, align 8
  store i64 8, ptr %0, align 8
  br label %bb.z

bb.j:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@"_ZN85_$LT$index_scheduler..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h0800a47064805c0eE":bb.a
    i64 37, label %bb.g
    i64 38, label %bb.g
    i64 39, label %bb.g
    i64 40, label %bb.g
    i64 41, label %bb.g
    i64 42, label %bb.g
    i64 43, label %bb.g
    i64 44, label %bb.g
    i64 45, label %bb.g
    i64 46, label %bb.g
    i64 47, label %bb.ab
    i64 48, label %bb.ac
    i64 49, label %bb.ad
    i64 50, label %bb.ae
    i64 51, label %bb.af
    i64 52, label %bb.ag
    i64 53, label %bb.ah
    i64 54, label %bb.ai
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i16, ptr %i.f, align 8, !range !239, !noundef !57
  br label %bb.aj

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.aj

bb.e:                                             ; preds = %bb.a, %bb.a
  br label %bb.aj

bb.f:                                             ; preds = %bb.a
  br label %bb.aj

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.aj

switch.lookup:                                    ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i8, ptr %i.h, align 8, !range !63, !noundef !57
  %i.j = zext nneg i8 %i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN85_$LT$index_scheduler..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h0800a47064805c0eE", i64 %i.j
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %bb.aj

bb.h:                                             ; preds = %bb.a
  br label %bb.aj

bb.i:                                             ; preds = %bb.a
  br label %bb.aj

bb.j:                                             ; preds = %bb.a
  br label %bb.aj

bb.k:                                             ; preds = %bb.a
  br label %bb.aj

bb.l:                                             ; preds = %bb.a
  br label %bb.aj

bb.m:                                             ; preds = %bb.a, %bb.a
  br label %bb.aj

bb.n:                                             ; preds = %bb.a
  br label %bb.aj

bb.o:                                             ; preds = %bb.a
  br label %bb.aj

bb.p:                                             ; preds = %bb.a
  br label %bb.aj

bb.q:                                             ; preds = %bb.a, %bb.a
  br label %bb.aj

bb.r:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i16, ptr %i.k, align 8, !range !182, !noundef !57
  %i.m = add i16 %i.l, -400
  %.sroa.06.0.i = icmp ult i16 %i.m, 100
  %. = select i1 %.sroa.06.0.i, i16 222, i16 224
  br label %bb.aj

bb.s:                                             ; preds = %bb.a, %bb.a
  br label %bb.aj

bb.t:                                             ; preds = %bb.a
  br label %bb.aj

bb.u:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = tail call noundef i16 @"_ZN74_$LT$dump..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h61f58c981dfec459E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
  br label %bb.aj

bb.v:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = tail call noundef i16 @"_ZN67_$LT$heed..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h49284ce49e7e386bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br label %bb.aj

bb.w:                                             ; preds = %bb.a
  %i.r = tail call noundef i16 @"_ZN75_$LT$milli..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h070f3a4f5ae2a526E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0)
  br label %bb.aj

bb.x:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = tail call noundef i16 @"_ZN73_$LT$file_store..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17hf1f8b91e9ef65cd7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s)
  br label %bb.aj

bb.y:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = tail call noundef i16 @"_ZN77_$LT$std..io..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h9fa5a082e959804dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
  br label %bb.aj

bb.z:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = tail call noundef i16 @"_ZN84_$LT$tempfile..file..PersistError$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h62f4f574420d0092E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w)
  br label %bb.aj

bb.aa:                                            ; preds = %bb.a
  br label %bb.aj

bb.ab:                                            ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = tail call noundef i16 @"_ZN67_$LT$heed..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h49284ce49e7e386bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
  br label %bb.aj

bb.ac:                                            ; preds = %bb.a
  br label %bb.aj

bb.ad:                                            ; preds = %bb.a
  br label %bb.aj

bb.ae:                                            ; preds = %bb.a
  br label %bb.aj

bb.af:                                            ; preds = %bb.a
  br label %bb.aj

bb.ag:                                            ; preds = %bb.a
  br label %bb.aj

bb.ah:                                            ; preds = %bb.a
  br label %bb.aj

bb.ai:                                            ; preds = %bb.a
  br label %bb.aj

bb.aj:                                            ; preds = %switch.lookup, %bb.r, %bb.a, %bb.a, %bb.a, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i16 [ %i.g, %bb.c ], [ 264, %bb.ai ], [ 24, %bb.d ], [ 164, %bb.e ], [ 26, %bb.a ], [ 26, %bb.a ], [ 26, %bb.a ], [ 200, %bb.f ], [ 86, %bb.ah ], [ 20, %bb.ag ], [ 30, %bb.g ], [ %i.z, %bb.ab ], [ 182, %bb.aa ], [ %i.x, %bb.z ], [ %i.v, %bb.y ], [ %i.t, %bb.x ], [ 199, %bb.ad ], [ 179, %bb.h ], [ 180, %bb.i ], [ 177, %bb.j ], [ 178, %bb.k ], [ 173, %bb.l ], [ 68, %bb.m ], [ 211, %bb.n ], [ 212, %bb.o ], [ 213, %bb.p ], [ 198, %bb.q ], [ 22, %bb.af ], [ 21, %bb.ae ], [ 23, %bb.ac ], [ %switch.ext, %switch.lookup ], [ 224, %bb.s ], [ %., %bb.r ], [ 223, %bb.t ], [ %i.o, %bb.u ], [ %i.q, %bb.v ], [ %i.r, %bb.w ]
  ret i16 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN85_$LT$index_scheduler..error..FeatureNotEnabledError$u20$as$u20$core..fmt..Display$GT$3fmt17h0dac72c4fdeee277E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !57, !align !64, !noundef !57
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !57, !align !64, !noundef !57
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !57
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !57, !align !64, !noundef !57
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !noundef !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.h, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.l, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.p, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.t, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.u, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.410.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.v, align 8, !nonnull !57, !noundef !57
  %.val = load ptr, ptr %1, align 8, !nonnull !57, !noundef !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !192419
  store ptr @4814, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.w = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val11, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !192419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !192419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %i.w
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN85_$LT$meilisearch_types..settings..Settings$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h110e21063ded94baE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(760) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(760) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.622 = alloca [24 x i8], align 8          ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.616 = alloca [16 x i8], align 8          ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.612 = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.68 = alloca [200 x i8], align 8          ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [48 x i8], align 8                ; 10 uses
  %i.u = alloca [72 x i8], align 8                ; 8 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [32 x i8], align 8                ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.612)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.ah = load i64, ptr %i.ag, align 8, !range !84, !noundef !57 ; 2 uses
  %i.ai = icmp slt i64 %i.ah, 0
  %i.aj = add i64 %i.ah, -9223372036854775807
  %i.ak = select i1 %i.ai, i64 %i.aj, i64 0
  switch i64 %i.ak, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.d
  ]

default.unreachable95:                            ; preds = %bb.ee, %bb.dj, %bb.df, %bb.cs, %bb.cl, %bb.bt
  unreachable

bb.b:                                             ; preds = %bb.eb, %bb.dy, %bb.dr, %bb.ci, %bb.cc, %bb.ag, %bb.z, %bb.k, %bb.e, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 592
  %.val41 = load ptr, ptr %i.al, align 8, !nonnull !57, !noundef !57
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 600
  %.val42 = load i64, ptr %i.am, align 8, !noundef !57
  call fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17haa816563581f59b1E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr nonnull %.val41, i64 %.val42)
  %.sroa.010.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.010.0 = phi i64 [ %.sroa.010.0.copyload, %bb.c ], [ -9223372036854775807, %bb.d ], [ -9223372036854775808, %bb.a ]
  store i64 %.sroa.010.0, ptr %i.af, align 8
  %.sroa.612.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.ao = load i64, ptr %i.an, align 8, !range !84, !noundef !57 ; 2 uses
  %i.ap = icmp slt i64 %i.ao, 0
  %i.aq = add i64 %i.ao, -9223372036854775807
  %i.ar = select i1 %i.ap, i64 %i.aq, i64 0
  switch i64 %i.ar, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.k
    i64 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 616
  %.val = load ptr, ptr %i.as, align 8, !nonnull !57, !noundef !57
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 624
  %.val40 = load i64, ptr %i.at, align 8, !noundef !57
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17haa816563581f59b1E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr nonnull %.val, i64 %.val40)
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  br label %bb.k

bb.h:                                             ; preds = %"_ZN4core3ptr144drop_in_place$LT$milli..update..settings..Setting$LT$alloc..vec..Vec$LT$milli..filterable_attributes_rules..FilterableAttributesRule$GT$$GT$$GT$17h766e1065f83ab54fE.exit", %bb.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %"_ZN4core3ptr144drop_in_place$LT$milli..update..settings..Setting$LT$alloc..vec..Vec$LT$milli..filterable_attributes_rules..FilterableAttributesRule$GT$$GT$$GT$17h766e1065f83ab54fE.exit" ], [ %i.au, %bb.i ]
  call void @"_ZN4core3ptr65drop_in_place$LT$meilisearch_types..settings..WildcardSetting$GT$17he0e9debf992596f9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af) #81
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.i:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.f
  %.sroa.014.0.copyload = load i64, ptr %i.p, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.g
  %.sroa.014.0 = phi i64 [ %.sroa.014.0.copyload, %bb.j ], [ -9223372036854775807, %bb.g ], [ -9223372036854775808, %bb.e ]
  store i64 %.sroa.014.0, ptr %i.ae, align 8
  %.sroa.616.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.0..sroa_idx17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.aw = load i64, ptr %i.av, align 8, !range !84, !noundef !57 ; 2 uses
  %i.ax = icmp slt i64 %i.aw, 0
  %i.ay = add i64 %i.aw, -9223372036854775807
  %i.az = select i1 %i.ax, i64 %i.ay, i64 0
  switch i64 %i.az, label %bb.b [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 640
  %.val43 = load ptr, ptr %i.ba, align 8, !nonnull !57, !noundef !57
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.val44 = load i64, ptr %i.bb, align 8, !noundef !57
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h3f5fae740c4de563E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr nonnull %.val43, i64 %.val44)
          to label %bb.p unwind label %bb.o

bb.m:                                             ; preds = %bb.k
  store i64 -9223372036854775808, ptr %i.ad, align 8
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  store i64 -9223372036854775807, ptr %i.ad, align 8
  br label %bb.q

"_ZN4core3ptr144drop_in_place$LT$milli..update..settings..Setting$LT$alloc..vec..Vec$LT$milli..filterable_attributes_rules..FilterableAttributesRule$GT$$GT$$GT$17h766e1065f83ab54fE.exit": ; preds = %bb.x, %bb.w, %bb.o
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.o ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.w ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.x ]
  call void @"_ZN4core3ptr65drop_in_place$LT$meilisearch_types..settings..WildcardSetting$GT$17he0e9debf992596f9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae) #81
  br label %bb.h

bb.o:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr144drop_in_place$LT$milli..update..settings..Setting$LT$alloc..vec..Vec$LT$milli..filterable_attributes_rules..FilterableAttributesRule$GT$$GT$$GT$17h766e1065f83ab54fE.exit"

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.bd = load i64, ptr %1, align 8, !range !72, !noundef !57 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192456)
end_hunk_4
