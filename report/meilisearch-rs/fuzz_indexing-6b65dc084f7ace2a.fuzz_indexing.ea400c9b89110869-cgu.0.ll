Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17habb04ec6e167ef00E":bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17habed6ddd7236b045E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !637
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hacaca9221eadd3d1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !640
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd17333c29b77f0ddE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !643
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !643
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !643
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he48dd3a725061a37E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !646
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17he93fac774c338900E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !16, !align !22, !noundef !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !16, !align !21, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !16, !noalias !649, !nonnull !16
  tail call void %i.c(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 1 %.val), !inline_history !1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17heae2a8abdec36cecE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 56                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !652
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !652
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !652
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hebc541a162171788E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !655
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf99fa6bb5b796392E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  store i64 %i.d, ptr %0, align 8, !alias.scope !658
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8, !alias.scope !658
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8, !alias.scope !658
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17he345db02d4d5836bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %.sroa.11.i.i.i = alloca [7 x i8], align 8      ; 6 uses
  %.sroa.105.i.i = alloca [7 x i8], align 8       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !709, !noalias !710, !nonnull !16, !align !22, !noundef !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !709, !noalias !710, !nonnull !16, !align !21, !noundef !16
  %i.c = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !16, !noalias !711, !nonnull !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !712
  call void %i.d(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 1 %.val.i.i.i), !noalias !712, !inline_history !671
  %i.e = load i64, ptr %i.a, align 8, !range !25, !noalias !712, !noundef !16 ; 2 uses
  %.not.i34.i.i = icmp eq i64 %i.e, 2
  br i1 %.not.i34.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.541.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.642.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.743.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.844.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !709, !noalias !710, !nonnull !16, !align !22, !noundef !16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !709, !noalias !710, !nonnull !16, !align !21, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %.val12.i.i.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !16, !noalias !713, !nonnull !16
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h901385a154bad3faE.exit.i.i", %.lr.ph.i.i
  %i.j = phi i64 [ %i.e, %.lr.ph.i.i ], [ %i.z, %"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h901385a154bad3faE.exit.i.i" ] ; 4 uses
  %.sroa.0.035.i.i = phi i64 [ %2, %.lr.ph.i.i ], [ %i.v, %"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h901385a154bad3faE.exit.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %.sroa.541.0.copyload.i.i.i = load ptr, ptr %.sroa.541.0..sroa_idx.i.i.i, align 8, !noalias !713 ; 7 uses
  %.sroa.642.0.copyload.i.i.i = load i64, ptr %.sroa.642.0..sroa_idx.i.i.i, align 8, !noalias !713 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.743.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !713
  %.sroa.844.0.copyload.i.i.i = load i8, ptr %.sroa.844.0..sroa_idx.i.i.i, align 1, !noalias !713 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !713
  %i.k = invoke { ptr, ptr } %i.i(ptr noundef nonnull align 1 %.val11.i.i.i)
          to label %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ba25a2ab13f45feE.exit.i.i.i" unwind label %bb.c, !noalias !713, !inline_history !2 ; 2 uses

._crit_edge.i.i:                                  ; preds = %"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h901385a154bad3faE.exit.i.i", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !713
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hb8ac2e106b979e69E.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ne i8 %.sroa.844.0.copyload.i.i.i, -1
  %i.o = icmp eq i64 %.sroa.642.0.copyload.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i.i, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hb8ac2e106b979e69E.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.541.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.541.0.copyload.i.i.i, i64 noundef %.sroa.642.0.copyload.i.i.i, i64 noundef 1) #63, !noalias !715
  br label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hb8ac2e106b979e69E.exit.i.i.i"

"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ba25a2ab13f45feE.exit.i.i.i": ; preds = %bb.b
  %i.p = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not9.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ba25a2ab13f45feE.exit.i.i.i"
  %i.q = icmp eq i64 %i.j, 0
  br i1 %i.q, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp ne i8 %.sroa.844.0.copyload.i.i.i, -1
  %i.s = icmp eq i64 %.sroa.642.0.copyload.i.i.i, 0
  %or.cond45.i.i.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond45.i.i.i, label %bb.h, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i.i.i": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.541.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.541.0.copyload.i.i.i, i64 noundef %.sroa.642.0.copyload.i.i.i, i64 noundef 1) #63, !noalias !716
  br label %bb.h

"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hb8ac2e106b979e69E.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i", %bb.d, %bb.c
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ba25a2ab13f45feE.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.105.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.105.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.i.i.i, i64 7, i1 false), !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i)
  %i.t = icmp eq i64 %.sroa.0.035.i.i, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.h:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i.i.i", %bb.f, %bb.e, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i)
  store i64 2, ptr %0, align 8, !alias.scope !718, !noalias !719
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3nth17h8d6ced4e7e68f989E.exit"

bb.i:                                             ; preds = %bb.g
  %i.u = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.610.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.105.i.i, i64 7, i1 false), !noalias !719
  store i64 %i.j, ptr %0, align 8, !alias.scope !718, !noalias !719
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.541.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !718, !noalias !719
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.642.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !718, !noalias !719
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.844.0.copyload.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 1, !alias.scope !718, !noalias !719
  %.sroa.811.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.p, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !alias.scope !718, !noalias !719
  %.sroa.912.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.u, ptr %.sroa.912.0..sroa_idx.i.i, align 8, !alias.scope !718, !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.105.i.i)
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3nth17h8d6ced4e7e68f989E.exit"

bb.j:                                             ; preds = %bb.g
  %i.v = add i64 %.sroa.0.035.i.i, -1
  %i.w = icmp eq i64 %i.j, 0
  br i1 %i.w, label %"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h901385a154bad3faE.exit.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = icmp ne i8 %.sroa.844.0.copyload.i.i.i, -1
  %i.y = icmp eq i64 %.sroa.642.0.copyload.i.i.i, 0
  %or.cond.i.i = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i.i, label %"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h901385a154bad3faE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i3.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i3.i.i": ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.541.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.541.0.copyload.i.i.i, i64 noundef %.sroa.642.0.copyload.i.i.i, i64 noundef 1) #63, !noalias !720
  br label %"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h901385a154bad3faE.exit.i.i"

"_ZN4core3ptr121drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$17h901385a154bad3faE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i3.i.i", %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.105.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !721
  call void %i.d(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 1 %.val.i.i.i), !noalias !721, !inline_history !671
  %i.z = load i64, ptr %i.a, align 8, !range !25, !noalias !721, !noundef !16 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.z, 2
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.b

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3nth17h8d6ced4e7e68f989E.exit": ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45916aa2df431b27E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.11.i = alloca [7 x i8], align 8          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !750
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !749, !noalias !748, !nonnull !16, !align !22, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10.i = load ptr, ptr %i.b, align 8, !alias.scope !749, !noalias !748, !nonnull !16, !align !21, !noundef !16
  %i.c = getelementptr inbounds nuw i8, ptr %.val10.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !16, !noalias !751, !nonnull !16
  call void %i.d(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 1 %.val.i), !noalias !750, !inline_history !727
  %i.e = load i64, ptr %i.a, align 8, !range !25, !noalias !750, !noundef !16 ; 4 uses
  %.not.i = icmp eq i64 %i.e, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.541.0.copyload.i = load ptr, ptr %.sroa.541.0..sroa_idx.i, align 8, !noalias !750 ; 5 uses
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.642.0.copyload.i = load i64, ptr %.sroa.642.0..sroa_idx.i, align 8, !noalias !750 ; 5 uses
  %.sroa.743.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.743.0..sroa_idx.i, i64 7, i1 false), !noalias !750
  %.sroa.844.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %.sroa.844.0.copyload.i = load i8, ptr %.sroa.844.0..sroa_idx.i, align 1, !noalias !750 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !750
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11.i = load ptr, ptr %i.f, align 8, !alias.scope !749, !noalias !748, !nonnull !16, !align !22, !noundef !16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12.i = load ptr, ptr %i.g, align 8, !alias.scope !749, !noalias !748, !nonnull !16, !align !21, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %.val12.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !16, !noalias !750, !nonnull !16
  %i.j = invoke { ptr, ptr } %i.i(ptr noundef nonnull align 1 %.val11.i)
          to label %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ba25a2ab13f45feE.exit.i" unwind label %bb.d, !noalias !750, !inline_history !2 ; 2 uses

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !750
  store i64 2, ptr %0, align 8, !alias.scope !748, !noalias !749
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h8e53028fda70898bE.exit"

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hb8ac2e106b979e69E.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp ne i8 %.sroa.844.0.copyload.i, -1
  %i.n = icmp eq i64 %.sroa.642.0.copyload.i, 0
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hb8ac2e106b979e69E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.541.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.541.0.copyload.i, i64 noundef %.sroa.642.0.copyload.i, i64 noundef 1) #63, !noalias !752
  br label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hb8ac2e106b979e69E.exit.i"

"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ba25a2ab13f45feE.exit.i": ; preds = %bb.b
  %i.o = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not9.i = icmp eq ptr %i.o, null
  br i1 %.not9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ba25a2ab13f45feE.exit.i"
  %i.p = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %.sroa.04.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.04.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.11.i, i64 7, i1 false), !noalias !749
  store i64 %i.e, ptr %0, align 8, !alias.scope !748, !noalias !749
  %.sroa.04.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.541.0.copyload.i, ptr %.sroa.04.sroa.4.0..sroa_idx.i, align 8, !alias.scope !748, !noalias !749
  %.sroa.04.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.642.0.copyload.i, ptr %.sroa.04.sroa.5.0..sroa_idx.i, align 8, !alias.scope !748, !noalias !749
  %.sroa.04.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.844.0.copyload.i, ptr %.sroa.04.sroa.7.0..sroa_idx.i, align 1, !alias.scope !748, !noalias !749
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !748, !noalias !749
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !748, !noalias !749
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h8e53028fda70898bE.exit"

bb.g:                                             ; preds = %"_ZN5alloc5boxed4iter99_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$alloc..boxed..Box$LT$I$C$A$GT$$GT$4next17h5ba25a2ab13f45feE.exit.i"
  store i64 2, ptr %0, align 8, !alias.scope !748, !noalias !749
  %i.q = icmp eq i64 %i.e, 0
  br i1 %i.q, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h8e53028fda70898bE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ne i8 %.sroa.844.0.copyload.i, -1
  %i.s = icmp eq i64 %.sroa.642.0.copyload.i, 0
  %or.cond45.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond45.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h8e53028fda70898bE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i": ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.541.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.541.0.copyload.i, i64 noundef %.sroa.642.0.copyload.i, i64 noundef 1) #63, !noalias !753
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h8e53028fda70898bE.exit"

"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17hb8ac2e106b979e69E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.e, %bb.d
  resume { ptr, i32 } %i.k

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h8e53028fda70898bE.exit": ; preds = %bb.c, %bb.f, %bb.g, %bb.h, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i14.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h3fff8b58eadc87fdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !765
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !764, !noalias !763, !nonnull !16, !align !22, !noundef !16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15.i = load ptr, ptr %i.c, align 8, !alias.scope !764, !noalias !763, !nonnull !16, !align !21, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %.val15.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !noalias !766, !nonnull !16
  call void %i.e(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 %.val.i), !noalias !765, !inline_history !759
  %i.f = load i64, ptr %i.b, align 8, !noalias !765, !noundef !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !27, !noalias !765, !noundef !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !765 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !765
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val16.i = load ptr, ptr %i.k, align 8, !alias.scope !764, !noalias !763, !nonnull !16, !align !22, !noundef !16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val17.i = load ptr, ptr %i.l, align 8, !alias.scope !764, !noalias !763, !nonnull !16, !align !21, !noundef !16
  %i.m = getelementptr inbounds nuw i8, ptr %.val17.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !16, !noalias !767, !nonnull !16
  call void %i.n(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 1 %.val16.i), !noalias !765, !inline_history !762
  %i.o = load i64, ptr %i.a, align 8, !noalias !765, !noundef !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !27, !noalias !765, !noundef !16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !765 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !765
  %i.t = trunc nuw i64 %i.h to i1
  %i.u = trunc nuw i64 %i.q to i1                 ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.u, label %bb.d, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$9size_hint17ha5f0e82c135d8033E.exit"

bb.c:                                             ; preds = %bb.a
  %.14.i = select i1 %i.u, i64 %i.s, i64 undef
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$9size_hint17ha5f0e82c135d8033E.exit"

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.i18.i = call noundef i64 @llvm.umin.i64(i64 %i.s, i64 %i.j)
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$9size_hint17ha5f0e82c135d8033E.exit"
end_hunk_0
begin_hunk_1_@"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he2d9878b86c20b05E":bb.a
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.0.0.i11
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !44864
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
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !44864, !noundef !16
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
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !16
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
  %.promoted22 = load i64, ptr %i.ak, align 8, !alias.scope !44865
  %.promoted24 = load i64, ptr %i.al, align 8, !alias.scope !44865
  br label %bb.q

bb.i:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !16
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !44866, !noundef !16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !44866, !noundef !16 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !44866, !noundef !16
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
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !44866
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !44866
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !44866
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !44865
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !44865
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.04.0.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.lcssa
  %.sroa.014.0.copyload.i18 = load i32, ptr %i.bl, align 1, !alias.scope !44867
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
  %.sroa.015.0.copyload.i17 = load i16, ptr %i.bq, align 1, !alias.scope !44867
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
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !44867, !noundef !16
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
define internal noundef zeroext i1 @"_ZN71_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h76bc4c6cc790d043E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1540, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 3, ptr %i.d, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hdede6b7140aa9959E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16
  %.val = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44870
  store ptr @1543, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !44870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$core..num..dec2flt..ParseFloatError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6db8bd8ea777a1c1E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1555, i64 noundef 15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1374, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1554)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$milli..fields_ids_map..FieldsIdsMap$u20$as$u20$core..fmt..Debug$GT$3fmt17hd4e2cb156ff6a34dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1561, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1562, i64 noundef 9, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1559, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1563, i64 noundef 9, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1560, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1564, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @514)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$serde_json..raw..RawValue$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h4cea744e19354dc3E"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %i.e = alloca [96 x i8], align 8                ; 4 uses
  %i.f = alloca [96 x i8], align 8                ; 7 uses
  %i.g = alloca [96 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17h8b449f535bf94047E"(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @325, i64 noundef 30, i64 noundef 1)
  %i.h = load i64, ptr %i.f, align 8, !range !59, !noundef !16
  %i.i = icmp eq i64 %i.h, -9223372036854775807
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !16, !align !21, !noundef !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.g, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !44923)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = load i64, ptr %i.g, align 8, !range !52, !alias.scope !44923, !noalias !44924, !noundef !16
  %i.n = icmp eq i64 %i.m, -9223372036854775808
  br i1 %i.n, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !44925)
  call void @llvm.experimental.noalias.scope.decl(metadata !44926)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !44927
  %i.o = call noundef dereferenceable_or_null(30) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 30, i64 noundef range(i64 1, 9) 1) #63, !noalias !44927 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 30, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2017) #64
          to label %.noexc unwind label %.body.thread12

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.o, ptr noundef nonnull align 1 dereferenceable(30) @325, i64 30, i1 false), !noalias !44928
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44929)
  %i.r = load i64, ptr %i.q, align 8, !range !52, !alias.scope !44930, !noalias !44931, !noundef !16 ; 3 uses
  %i.s = icmp eq i64 %i.r, -9223372036854775808
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !44932)
  call void @llvm.experimental.noalias.scope.decl(metadata !44933)
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !44934, !noalias !44931, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !44935
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.64.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  store ptr %i.o, ptr %.sroa.64.0..sroa_idx5.i.i.i, align 8, !alias.scope !44936, !noalias !44931
  %.sroa.7.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i64 30, ptr %.sroa.7.0..sroa_idx7.i.i.i, align 8, !alias.scope !44936, !noalias !44931
  call void @llvm.experimental.noalias.scope.decl(metadata !44937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44938
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 -9223372036854775808, ptr %i.q, align 8, !alias.scope !44939, !noalias !44940
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.64.0..sroa_idx5.i.i.i, i64 16, i1 false), !noalias !44940
  store i64 30, ptr %i.c, align 8, !noalias !44941
  %i.w = icmp slt i64 %2, 0
  br i1 %i.w, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.x = icmp eq i64 %2, 0
  br i1 %i.x, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !44942
  %i.y = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #63, !noalias !44942 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.j ], [ 0, %bb.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2017) #64
          to label %.noexc.i.i.i unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfd4d051844645fb1E.exit.i.i.i", !noalias !44941

.noexc.i.i.i:                                     ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.y, %bb.j ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !44943
  store i64 -9223372036854775805, ptr %i.b, align 8, !noalias !44941
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !44941
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !44941
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %2, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !44941
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h71af617761ec37cfE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b)
          to label %.noexc4 unwind label %.body.thread12

.noexc4:                                          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44941
  %i.aa = load i64, ptr %i.v, align 8, !range !53, !noalias !44941, !noundef !16
  %i.ab = icmp eq i64 %i.aa, -9223372036854775803
  br i1 %i.ab, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81cab5d51172adcaE.exit.i, label %bb.m

bb.m:                                             ; preds = %.noexc4
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17he0b5d12a3756c8d8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.v)
          to label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h81cab5d51172adcaE.exit.i unwind label %.body.thread12

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfd4d051844645fb1E.exit.i.i.i": ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !44944)
  call void @llvm.experimental.noalias.scope.decl(metadata !44945)
  %.val1.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !44946, !noalias !44941, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef 30, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !44947
  br label %.body.thread

_ZN10serde_core3ser12SerializeMap15serialize_entry17h81cab5d51172adcaE.exit.i: ; preds = %bb.m, %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44938
  br label %bb.s

bb.n:                                             ; preds = %bb.c
  invoke void @"_ZN87_$LT$serde_json..value..ser..RawValueEmitter$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h4c5e826fc6527e9eE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %.noexc6 unwind label %.body.thread12

.noexc6:                                          ; preds = %bb.n
  %i.ad = load i64, ptr %i.d, align 8, !range !53, !noalias !44948, !noundef !16
  %i.ae = icmp eq i64 %i.ad, -9223372036854775803
  br i1 %i.ae, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.noexc6
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !range !53, !alias.scope !44949, !noalias !44924, !noundef !16
  %i.ah = icmp eq i64 %i.ag, -9223372036854775803
  br i1 %i.ah, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hb4412187bd9c2c89E.exit.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17he0b5d12a3756c8d8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.af)
end_hunk_1
