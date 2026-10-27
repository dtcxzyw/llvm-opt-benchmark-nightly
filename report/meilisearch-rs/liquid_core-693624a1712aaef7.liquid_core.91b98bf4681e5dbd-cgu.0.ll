Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN11liquid_core5model4find13augmented_get17h46ff90ade176ec95E:bb.a
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i128, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8, !invariant.load !6, !noalias !1840, !nonnull !6
  invoke void %i.hh(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 1 %.sroa.0.0.i129)
          to label %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h51c26f45faf3a7efE.exit131" unwind label %bb.ci, !inline_history !13

"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h51c26f45faf3a7efE.exit131": ; preds = %bb.ct
  %i.hi = load i64, ptr %i.a, align 8, !range !18, !alias.scope !1841, !noundef !6
  %i.hj = trunc nuw i64 %i.hi to i1
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.hj, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h51c26f45faf3a7efE.exit131"
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !1841, !noundef !6
  switch i8 %i.hm, label %bb.cw [
    i8 0, label %bb.cv
    i8 -1, label %bb.cy
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !1841, !noundef !6
  br label %.thread

bb.cw:                                            ; preds = %bb.cu
  %i.hp = load i8, ptr %i.hk, align 8, !alias.scope !1841, !noundef !6
  %i.hq = zext i8 %i.hp to i64
  br label %.thread

bb.cx:                                            ; preds = %"_ZN100_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h51c26f45faf3a7efE.exit131"
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !1841, !noundef !6
  store i8 0, ptr %0, align 8
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx, align 8
  %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hs, ptr %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  br label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit144"

.thread:                                          ; preds = %bb.cw, %bb.cv
  %.sroa.5.0.i132.ph.ph = phi i64 [ %i.hq, %bb.cw ], [ %i.ho, %bb.cv ]
  store i8 0, ptr %0, align 8
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx158167 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx158167, align 8
  %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx159168 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i132.ph.ph, ptr %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx159168, align 8
  br label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit144"

bb.cy:                                            ; preds = %bb.cu
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val2.i135 = load i64, ptr %i.ht, align 8, !alias.scope !1841, !noundef !6
  store i8 0, ptr %0, align 8
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx158 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx158, align 8
  %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx159 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val2.i135, ptr %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx159, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i.i.i.i141 = load i64, ptr %i.hu, align 8, !alias.scope !1847, !noundef !6 ; 2 uses
  %i.hv = icmp eq i64 %.val1.i.i.i.i.i141, 0
  br i1 %i.hv, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit144", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i142"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i142": ; preds = %bb.cy
  %.val.i.i.i.i.i143 = load ptr, ptr %i.hk, align 8, !alias.scope !1847, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i143, i64 noundef %.val1.i.i.i.i.i141, i64 noundef 1) #59, !noalias !1847
  br label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit144"

"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit144": ; preds = %.thread, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i142", %bb.cy, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cz

bb.cz:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit144", %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  %i.hw = icmp eq i64 %i.fx, 0
  br i1 %i.hw, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit148", label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  %i.hy = load i8, ptr %i.hx, align 1, !alias.scope !1853, !noundef !6
  %i.hz = icmp eq i8 %i.hy, -1
  br i1 %i.hz, label %bb.db, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit148"

bb.db:                                            ; preds = %bb.da
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val1.i.i.i.i.i145 = load i64, ptr %i.ia, align 8, !alias.scope !1853, !noundef !6 ; 2 uses
  %i.ib = icmp eq i64 %.val1.i.i.i.i.i145, 0
  br i1 %i.ib, label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit148", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i146"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i146": ; preds = %bb.db
  %.val.i.i.i.i.i147 = load ptr, ptr %i.fz, align 8, !alias.scope !1853, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i147, i64 noundef %.val1.i.i.i.i.i145, i64 noundef 1) #59, !noalias !1853
  br label %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit148"

"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit148": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i146", %bb.db, %bb.da, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  %i.ic = load i64, ptr %i.c, align 8, !range !7, !alias.scope !1856, !noundef !6 ; 2 uses
  %i.id = icmp samesign ugt i64 %i.ic, 1
  br i1 %i.id, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit", label %bb.dc

bb.dc:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit148"
  call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  call void @llvm.experimental.noalias.scope.decl(metadata !1858)
  %i.ie = icmp eq i64 %i.ic, 0
  br i1 %i.ie, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit", label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.if = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 31
  %i.ih = load i8, ptr %i.ig, align 1, !alias.scope !1862, !noundef !6
  %i.ii = icmp eq i8 %i.ih, -1
  br i1 %i.ii, label %bb.de, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit"

bb.de:                                            ; preds = %bb.dd
  %i.ij = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ij, align 8, !alias.scope !1862, !noundef !6 ; 2 uses
  %i.ik = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ik, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.de
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.if, align 8, !alias.scope !1862, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i, i64 noundef 1) #59, !noalias !1862
  br label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit"

"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit": ; preds = %"_ZN4core3ptr56drop_in_place$LT$kstring..string_cow..KStringCowBase$GT$17h00f69022207cf108E.exit148", %bb.dc, %bb.dd, %bb.de, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.df

bb.df:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit", %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.an
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11liquid_core5model4find14try_find_owned17hcab8f235efa7c42cE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noundef nonnull captures(address, read_provenance) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.6 = alloca [7 x i8], align 1             ; 5 uses
  %.sroa.8 = alloca [32 x i8], align 8            ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.e = icmp eq ptr %2, %3
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_ZN11liquid_core5model4find13augmented_get17h46ff90ade176ec95E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.d, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) @61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.e unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.g, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.d, align 8, !range !30, !noundef !6 ; 3 uses
  %.not8 = icmp eq i8 %i.g, 6
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.546.0..sroa_idx, i64 7, i1 false)
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.647.0.copyload = load ptr, ptr %.sroa.647.0..sroa_idx, align 8 ; 3 uses
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.748.0.copyload = load ptr, ptr %.sroa.748.0..sroa_idx, align 8 ; 3 uses
  %.sroa.849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.849.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.h = icmp eq i8 %i.g, 5
  br i1 %i.h, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 6, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  tail call void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h3ebd55d3060db4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.647.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.748.0.copyload) ]
  invoke fastcc void @_ZN11liquid_core5model4find17try_find_borrowed17h283472f9a26de5b9E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 1 %.sroa.647.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.748.0.copyload, ptr noundef nonnull %i.f, ptr noundef nonnull %3)
          to label %bb.l unwind label %bb.j

bb.i:                                             ; preds = %bb.f
  store i8 %i.g, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx29, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, i64 7, i1 false)
  %.sroa.630.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.647.0.copyload, ptr %.sroa.630.0..sroa_idx31, align 8
  %.sroa.7.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.748.0.copyload, ptr %.sroa.7.0..sroa_idx33, align 8
  %.sroa.8.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx35, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, i64 32, i1 false)
  invoke fastcc void @_ZN11liquid_core5model4find14try_find_owned17hcab8f235efa7c42cE(ptr noalias noundef align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %3)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.n, %bb.i, %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h3ebd55d3060db4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1) #58
          to label %bb.r unwind label %bb.q

bb.k:                                             ; preds = %bb.p, %_ZN11liquid_core5model5value3cow8ValueCow10into_owned17h0f9608e685fdce23E.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h3ebd55d3060db4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.d

bb.l:                                             ; preds = %bb.h
  %i.j = load i8, ptr %i.b, align 8, !range !30, !noundef !6 ; 3 uses
  %.not9 = icmp eq i8 %i.j, 6
  br i1 %.not9, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.318.0.copyload = load ptr, ptr %.sroa.318.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  %i.k = icmp eq i8 %i.j, 5
  br i1 %i.k, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.318.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !noalias !1868, !nonnull !6
  invoke void %i.m(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull align 1 %.sroa.318.0.copyload)
          to label %_ZN11liquid_core5model5value3cow8ValueCow10into_owned17h0f9608e685fdce23E.exit unwind label %bb.j, !inline_history !1869

bb.o:                                             ; preds = %bb.m
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.j, ptr %i.a, align 8, !alias.scope !1868
  %.sroa.3.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx17, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx, i64 7, i1 false)
  %.sroa.318.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.318.0.copyload, ptr %.sroa.318.0..sroa_idx19, align 8, !alias.scope !1868
  %.sroa.4.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx21, align 8, !alias.scope !1868
  %.sroa.523.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.523.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.523.0..sroa_idx, i64 32, i1 false)
  br label %_ZN11liquid_core5model5value3cow8ValueCow10into_owned17h0f9608e685fdce23E.exit

bb.p:                                             ; preds = %bb.l
  store i8 6, ptr %0, align 8
  br label %bb.k

_ZN11liquid_core5model5value3cow8ValueCow10into_owned17h0f9608e685fdce23E.exit: ; preds = %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.q:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.r:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11liquid_core5model4find17try_find_borrowed17h283472f9a26de5b9E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull captures(address, read_provenance) %3, ptr nofree noundef readnone captures(address) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.6 = alloca [7 x i8], align 1             ; 5 uses
  %.sroa.8 = alloca [32 x i8], align 8            ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.c = icmp eq ptr %3, %4
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_ZN11liquid_core5model4find13augmented_get17h46ff90ade176ec95E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3)
  %i.e = load i8, ptr %i.b, align 8, !range !30, !noundef !6 ; 3 uses
  %.not9 = icmp eq i8 %i.e, 6
  br i1 %.not9, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.536.0..sroa_idx, i64 7, i1 false)
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.637.0.copyload = load ptr, ptr %.sroa.637.0..sroa_idx, align 8 ; 3 uses
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.738.0.copyload = load ptr, ptr %.sroa.738.0..sroa_idx, align 8 ; 3 uses
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.839.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = icmp eq i8 %i.e, 5
  br i1 %i.f, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 6, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.i
  ret void

bb.g:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.637.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.738.0.copyload) ]
  tail call fastcc void @_ZN11liquid_core5model4find17try_find_borrowed17h283472f9a26de5b9E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull align 1 %.sroa.637.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.738.0.copyload, ptr noundef nonnull %i.d, ptr noundef nonnull %4)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  store i8 %i.e, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, i64 7, i1 false)
  %.sroa.620.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.637.0.copyload, ptr %.sroa.620.0..sroa_idx21, align 8
  %.sroa.7.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.738.0.copyload, ptr %.sroa.7.0..sroa_idx23, align 8
  %.sroa.8.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx25, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, i64 32, i1 false)
  call fastcc void @_ZN11liquid_core5model4find14try_find_owned17hcab8f235efa7c42cE(ptr noalias noundef align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %4)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core5model4find4Path7reserve17hce158b044236b044E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1872, !noundef !6 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !21, !alias.scope !1872, !noundef !6
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h448a4e48672593b2E.exit", !prof !12

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 32)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h448a4e48672593b2E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h448a4e48672593b2E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core5model4find4find17h92df724bd0696f7dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [15 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 11 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [48 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 2 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 8 uses
  %i.an = alloca [24 x i8], align 8               ; 20 uses
  %i.ao = alloca [56 x i8], align 8               ; 23 uses
  %i.ap = alloca [56 x i8], align 8               ; 6 uses
  %i.aq = alloca [56 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 4 uses
  store ptr %3, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %4, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %4
  call fastcc void @_ZN11liquid_core5model4find17try_find_borrowed17h283472f9a26de5b9E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.aq, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull readonly align 8 %3, ptr noundef nonnull readonly %i.at)
  %i.au = load i8, ptr %i.aq, align 8, !range !30, !noundef !6
  %.not = icmp eq i8 %i.au, 6
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i64 56, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.av = icmp ugt i64 %4, 1
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !prof !2107

bb.d:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..cow..ValueCow$GT$17h591a0b95efdae44aE.exit144", %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  ret void

.lr.ph:                                           ; preds = %bb.c, %bb.aq
  %i.aw = phi i64 [ %i.fa, %bb.aq ], [ 2, %bb.c ] ; 3 uses
  %.sroa.078.0226 = phi i64 [ %i.aw, %bb.aq ], [ 1, %bb.c ]
  %i.ax = sub nuw i64 %4, %.sroa.078.0226         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %.idx = shl nuw nsw i64 %i.ax, 5                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 2 uses
  call fastcc void @_ZN11liquid_core5model4find17try_find_borrowed17h283472f9a26de5b9E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ap, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noundef nonnull readonly align 8 %3, ptr noundef nonnull readonly %i.ay)
  %i.az = load i8, ptr %i.ap, align 8, !range !30, !noundef !6
  %.not83 = icmp eq i8 %i.az, 6
  br i1 %.not83, label %bb.aq, label %bb.h

._crit_edge:                                      ; preds = %bb.aq, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !invariant.load !6, !nonnull !6
  call void %i.bb(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noundef nonnull align 1 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ab, ptr %i.aa, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E", ptr %.sroa.473.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ar, ptr %i.bc, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha760b6541110f53bE", ptr %.sroa.477.0..sroa_idx, align 8
  store ptr @80, ptr %i.ac, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 2, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.aa, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 2, ptr %i.bg, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #57
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE"(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #58
          to label %"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..cow..ValueCow$GT$17h591a0b95efdae44aE.exit" unwind label %bb.g

bb.f:                                             ; preds = %bb.bh, %._crit_edge
  unreachable

bb.g:                                             ; preds = %bb.ar, %.thread205, %bb.ds, %bb.e
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..cow..ValueCow$GT$17h591a0b95efdae44aE.exit": ; preds = %.body, %bb.ar, %bb.e
  %.pn91.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.e ], [ %.pn91.pn, %bb.ar ], [ %.pn91.pn, %.body ]
  resume { ptr, i32 } %.pn91.pn.pn

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(56) %i.ap, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2108
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  %i.bk = load i64, ptr %3, align 8, !range !7, !alias.scope !2111, !noalias !2112, !noundef !6 ; 2 uses
  %i.bl = add nsw i64 %i.bk, -2
  %i.bm = icmp samesign ugt i64 %i.bk, 1
  %i.bn = select i1 %i.bm, i64 %i.bl, i64 5
  switch i64 %i.bn, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
    i64 4, label %bb.n
    i64 5, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ebbc9542ff2557eE.exit.i.i"
  ]

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ebbc9542ff2557eE.exit.i.i"

bb.k:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ebbc9542ff2557eE.exit.i.i"

bb.l:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9ebbc9542ff2557eE.exit.i.i"
end_hunk_0
begin_hunk_1_@"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8to_value17hb9fc7f170486e820E":_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9c754e64be9cbc74E.exit.i.i.thread.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store i64 0, ptr %i.b, align 8, !noalias !2314
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !2314
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h9e6bddbaab88aa36E.exit

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2315
  %i.j = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 9) 8) #59, !noalias !2315 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.a, label %.preheader.i.i.preheader.i.i.i.i

bb.a:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %.idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @460) #57, !noalias !2314
  unreachable

.preheader.i.i.preheader.i.i.i.i:                 ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  store i64 %i.f, ptr %i.b, align 8, !noalias !2314
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !2314
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.b, %.preheader.i.i.preheader.i.i.i.i
  %.val20.i.i.i.i.i.i.i.i.i = phi i64 [ %i.p, %bb.b ], [ 0, %.preheader.i.i.preheader.i.i.i.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.val20.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2318
  invoke void @"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h18705804cd257f94E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n)
          to label %bb.b unwind label %.body.i.i.i.i, !noalias !2319

bb.b:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %.val20.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !2320
  %i.p = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2318
  %i.q = icmp eq i64 %i.p, %i.f
  br i1 %i.q, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9e6bddbaab88aa36E.exit, label %.preheader.i.i.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.preheader.i.i.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !alias.scope !2321, !noalias !2322
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..model..value..values..Value$GT$$GT$17h0c3b0b40ff7ebe80E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
          to label %bb.d unwind label %bb.c, !noalias !2314

bb.c:                                             ; preds = %.body.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !2314
  unreachable

bb.d:                                             ; preds = %.body.i.i.i.i
  resume { ptr, i32 } %i.r

_ZN4core4iter6traits8iterator8Iterator7collect17h9e6bddbaab88aa36E.exit: ; preds = %bb.b, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9c754e64be9cbc74E.exit.i.i.thread.i.i.i.i"
  %i.t = phi ptr [ %i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9c754e64be9cbc74E.exit.i.i.thread.i.i.i.i" ], [ %i.m, %bb.b ]
  store i64 %i.f, ptr %i.t, align 8, !alias.scope !2321, !noalias !2322
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2314
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9type_name17h1644eb92fd965d5dE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @40, i64 5 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17h5975849bd89f2c86E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2325, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 164703072086692426
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2325, !nonnull !6
  %i.f = getelementptr [56 x i8], ptr %i.e, i64 %i.b
  %i.g = getelementptr i8, ptr %i.f, i64 -56
  %.sroa.0.0.i = select i1 %.not, ptr null, ptr %i.g
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @61, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView5first17h6c42d640d2df7e18E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2328, !noundef !6 ; 2 uses
  %i.c = icmp ult i64 %i.b, 164703072086692426
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2328, !nonnull !6
  %.sroa.0.0.i = select i1 %.not, ptr null, ptr %i.e
  %i.f = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @61, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core5model5value3cow8ValueCow10into_owned17h0f9608e685fdce23E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !19, !noundef !6
  %i.b = icmp eq i8 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !8, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !9, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.h(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull align 1 %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_ZN11liquid_core5model5value3ser17ArrayDeserializer3new17h833cf9a4a60ab5e0E(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(216) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !6, !nonnull !6
  %i.c = tail call { ptr, ptr } %i.b(ptr noundef nonnull align 1 %0)
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core5model5value3ser18ObjectDeserializer3new17h23a57512fc5cc211E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(216) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !6, !nonnull !6
  %i.c = tail call { ptr, ptr } %i.b(ptr noundef nonnull align 1 %1) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  store ptr %i.d, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN11liquid_core5model5value4view8value_eq17h5cfa56ac54299a2bE(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(160) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(160) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !6, !nonnull !6
  %i.j = tail call { ptr, ptr } %i.i(ptr noundef nonnull align 1 %0) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 3 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !6, !nonnull !6
  %i.o = tail call { ptr, ptr } %i.n(ptr noundef nonnull align 1 %2) ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 3 uses
  %i.q = extractvalue { ptr, ptr } %i.o, 1        ; 3 uses
  %.not = icmp eq ptr %i.k, null
  %.not33 = icmp eq ptr %i.p, null
  %or.cond = select i1 %.not, i1 true, i1 %.not33
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !6, !nonnull !6
  %i.t = tail call { ptr, ptr } %i.s(ptr noundef nonnull align 1 %0) ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.t, 0        ; 3 uses
  %i.v = extractvalue { ptr, ptr } %i.t, 1        ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !6, !nonnull !6
  %i.y = tail call { ptr, ptr } %i.x(ptr noundef nonnull align 1 %2) ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { ptr, ptr } %i.y, 1       ; 3 uses
  %.not34 = icmp eq ptr %i.u, null
  %.not35 = icmp eq ptr %i.z, null
  %or.cond46 = select i1 %.not34, i1 true, i1 %.not35
  br i1 %or.cond46, label %bb.m, label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !6, !nonnull !6
  %i.ad = tail call noundef i64 %i.ac(ptr noundef nonnull align 1 %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !6, !nonnull !6
  %i.ag = tail call noundef i64 %i.af(ptr noundef nonnull align 1 %i.p)
  %.not43 = icmp eq i64 %i.ad, %i.ag
  br i1 %.not43, label %bb.d, label %"_ZN4core3ptr216drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$GT$17h6e0887461c4416e2E.exit"

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !6, !nonnull !6
  %i.aj = tail call { ptr, ptr } %i.ai(ptr noundef nonnull align 1 %i.k) ; 2 uses
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 4 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1      ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !6, !nonnull !6
  %i.ao = invoke { ptr, ptr } %i.an(ptr noundef nonnull align 1 %i.p)
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ap = extractvalue { ptr, ptr } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %i.ao, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  store ptr %i.ak, ptr %i.g, align 8, !alias.scope !2377
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.al, ptr %i.ar, align 8, !alias.scope !2377
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.ap, ptr %i.as, align 8, !alias.scope !2377
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.aq, ptr %i.at, align 8, !alias.scope !2377
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false), !alias.scope !2377
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !invariant.load !6, !noalias !2378, !nonnull !6
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.noexc54, %bb.e
  %i.ay = invoke { ptr, ptr } %i.aw(ptr noundef nonnull align 1 %i.ak)
          to label %.noexc60 unwind label %bb.i, !inline_history !2339 ; 2 uses

.noexc60:                                         ; preds = %bb.f
  %i.az = extractvalue { ptr, ptr } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1      ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.noexc60
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bb = load ptr, ptr %i.ax, align 8, !invariant.load !6, !noalias !2378, !nonnull !6
  %i.bc = invoke { ptr, ptr } %i.bb(ptr noundef nonnull align 1 %i.ap)
          to label %.noexc61 unwind label %bb.i, !inline_history !2339 ; 2 uses

.noexc61:                                         ; preds = %bb.g
  %i.bd = extractvalue { ptr, ptr } %i.bc, 0      ; 2 uses
  %.not16.i.i = icmp eq ptr %i.bd, null
  br i1 %.not16.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.noexc61
  %i.be = extractvalue { ptr, ptr } %i.bc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %i.bf = invoke fastcc noundef zeroext i1 @_ZN11liquid_core5model5value4view8value_eq17h5cfa56ac54299a2bE(ptr noundef nonnull align 1 %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ba, ptr noundef nonnull align 1 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.be)
          to label %.noexc54 unwind label %bb.i, !inline_history !2340

.noexc54:                                         ; preds = %bb.h
  br i1 %i.bf, label %bb.f, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr360drop_in_place$LT$core..iter..adapters..zip..Zip$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$GT$$GT$17h78c813049d3005beE"(ptr noalias noundef align 8 dereferenceable(48) %i.g) #58
          to label %common.resume unwind label %bb.k

bb.j:                                             ; preds = %.noexc54, %.noexc61, %.noexc60
  %i.bh = phi i1 [ true, %.noexc61 ], [ true, %.noexc60 ], [ false, %.noexc54 ]
  call fastcc void @"_ZN4core3ptr360drop_in_place$LT$core..iter..adapters..zip..Zip$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$GT$$GT$17h78c813049d3005beE"(ptr noalias noundef align 8 dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %"_ZN4core3ptr216drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$GT$17h6e0887461c4416e2E.exit"

"_ZN4core3ptr216drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$GT$17h6e0887461c4416e2E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %bb.ai, %bb.am, %bb.ao, %bb.al, %bb.n, %bb.c, %bb.ay, %bb.av, %bb.j
  %.sroa.0.0 = phi i1 [ false, %bb.av ], [ %i.bh, %bb.j ], [ false, %bb.c ], [ %i.ei, %bb.ao ], [ false, %bb.n ], [ true, %bb.al ], [ %i.et, %bb.ay ], [ %i.ec, %bb.am ], [ %.not.i55.not, %bb.ai ], [ %.not.i55.not, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i" ]
  ret i1 %.sroa.0.0

bb.k:                                             ; preds = %.body, %bb.l, %bb.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

common.resume:                                    ; preds = %bb.aj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", %bb.i, %bb.l, %.body, %bb.aq, %bb.bb, %bb.aw
  %common.resume.op = phi { ptr, i32 } [ %i.ez, %bb.bb ], [ %i.bg, %bb.i ], [ %i.bj, %bb.l ], [ %i.en, %bb.aq ], [ %eh.lpad-body, %.body ], [ %i.eq, %bb.aw ], [ %i.dn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i" ], [ %i.dn, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  invoke fastcc void @"_ZN4core3ptr170drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$GT$17h3def0be3b6da2a5fE"(ptr %i.ak, ptr nonnull %i.al) #58
          to label %common.resume unwind label %bb.k

bb.m:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !6, !nonnull !6 ; 2 uses
  %i.bm = tail call noundef zeroext i1 %i.bl(ptr noundef nonnull align 1 %0)
  br i1 %i.bm, label %bb.al, label %bb.ak

bb.n:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.bo = load ptr, ptr %i.bn, align 8, !invariant.load !6, !nonnull !6
  %i.bp = tail call noundef i64 %i.bo(ptr noundef nonnull align 1 %i.u)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !6, !nonnull !6
  %i.bs = tail call noundef i64 %i.br(ptr noundef nonnull align 1 %i.z)
  %.not42 = icmp eq i64 %i.bp, %i.bs
  br i1 %.not42, label %bb.o, label %"_ZN4core3ptr216drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$GT$17h6e0887461c4416e2E.exit"

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.v, i64 192
  %i.bu = load ptr, ptr %i.bt, align 8, !invariant.load !6, !nonnull !6
  %i.bv = tail call { ptr, ptr } %i.bu(ptr noundef nonnull align 1 %i.u) ; 2 uses
  %i.bw = extractvalue { ptr, ptr } %i.bv, 0      ; 6 uses
  %i.bx = extractvalue { ptr, ptr } %i.bv, 1      ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !6, !noalias !2379, !nonnull !6
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  br label %bb.p

bb.p:                                             ; preds = %bb.ae, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2380
  invoke void %i.bz(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 1 %i.bw)
          to label %.noexc56 unwind label %bb.af, !inline_history !2346

.noexc56:                                         ; preds = %bb.p
  %i.cf = load i64, ptr %i.b, align 8, !range !37, !noalias !2380, !noundef !6
  %.not.i55.not = icmp eq i64 %i.cf, 2            ; 3 uses
  br i1 %.not.i55.not, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !6
  %.sroa.495.0.copyload = load ptr, ptr %.sroa.495.0..sroa_idx, align 8, !noalias !2380, !nonnull !6, !noundef !6
  %.sroa.596.0.copyload = load ptr, ptr %.sroa.596.0..sroa_idx, align 8, !noalias !2380, !nonnull !6, !noundef !6
  %i.cg = load i64, ptr %i.a, align 8, !range !18, !alias.scope !2382, !noalias !2381, !noundef !6
  %i.ch = trunc nuw i64 %i.cg to i1
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ci = load i8, ptr %i.cc, align 1, !alias.scope !2382, !noalias !2381, !noundef !6
  switch i8 %i.ci, label %bb.v [
    i8 0, label %bb.t
    i8 -1, label %bb.u
  ]

bb.s:                                             ; preds = %bb.q
  %i.cj = load ptr, ptr %i.ca, align 8, !alias.scope !2382, !noalias !2381, !nonnull !6, !align !8, !noundef !6
  %i.ck = load i64, ptr %i.cb, align 8, !alias.scope !2382, !noalias !2381, !noundef !6
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.cl = load ptr, ptr %i.ca, align 8, !alias.scope !2382, !noalias !2381, !nonnull !6, !align !8, !noundef !6
  %i.cm = load i64, ptr %i.cb, align 8, !alias.scope !2382, !noalias !2381, !noundef !6
  br label %bb.z

bb.u:                                             ; preds = %bb.r
  %.val.i71 = load ptr, ptr %i.ca, align 8, !alias.scope !2382, !noalias !2381, !nonnull !6, !align !8, !noundef !6
  %.val2.i = load i64, ptr %i.cb, align 8, !alias.scope !2382, !noalias !2381, !noundef !6
  br label %bb.z

bb.v:                                             ; preds = %bb.r
  %i.cn = load i8, ptr %i.ca, align 8, !alias.scope !2382, !noalias !2381, !noundef !6
  %i.co = zext i8 %i.cn to i64
  br label %bb.z

bb.w:                                             ; preds = %bb.ab, %bb.z
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2383)
  call void @llvm.experimental.noalias.scope.decl(metadata !2384), !noalias !2381
  %i.cq = load i64, ptr %i.a, align 8, !range !18, !alias.scope !2385, !noalias !2381, !noundef !6
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.body, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !2386), !noalias !2381
  call void @llvm.experimental.noalias.scope.decl(metadata !2387), !noalias !2381
  call void @llvm.experimental.noalias.scope.decl(metadata !2388), !noalias !2381
  %i.cs = load i8, ptr %i.cc, align 1, !alias.scope !2389, !noalias !2381, !noundef !6
  %i.ct = icmp eq i8 %i.cs, -1
  br i1 %i.ct, label %bb.y, label %.body

bb.y:                                             ; preds = %bb.x
  %.val1.i.i.i.i.i66 = load i64, ptr %i.cb, align 8, !alias.scope !2389, !noalias !2381, !noundef !6 ; 2 uses
  %i.cu = icmp eq i64 %.val1.i.i.i.i.i66, 0
  br i1 %i.cu, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i67"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i67": ; preds = %bb.y
  %.val.i.i.i.i.i68 = load ptr, ptr %i.ca, align 8, !alias.scope !2389, !noalias !2381, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i68, i64 noundef %.val1.i.i.i.i.i66, i64 noundef 1) #59, !noalias !2390
  br label %.body

bb.z:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.sroa.5.0.i = phi i64 [ %i.ck, %bb.s ], [ %i.co, %bb.v ], [ %i.cm, %bb.t ], [ %.val2.i, %bb.u ]
  %.sroa.0.0.i70 = phi ptr [ %i.cj, %bb.s ], [ %i.cd, %bb.v ], [ %i.cl, %bb.t ], [ %.val.i71, %bb.u ]
  %i.cv = load ptr, ptr %i.ce, align 8, !invariant.load !6, !noalias !2381, !nonnull !6
  %i.cw = invoke { ptr, ptr } %i.cv(ptr noundef nonnull align 1 %i.z, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i70, i64 noundef %.sroa.5.0.i)
          to label %bb.aa unwind label %bb.w, !noalias !2381, !inline_history !2365 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.cx = extractvalue { ptr, ptr } %i.cw, 0      ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i62, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hfc9bf4a5620468b7E.exit", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = extractvalue { ptr, ptr } %i.cw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  %i.cz = invoke fastcc noundef zeroext i1 @_ZN11liquid_core5model5value4view8value_eq17h5cfa56ac54299a2bE(ptr noundef nonnull align 1 %i.cx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.cy, ptr noundef nonnull align 1 %.sroa.495.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.596.0.copyload)
          to label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hfc9bf4a5620468b7E.exit" unwind label %bb.w, !inline_history !2366

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hfc9bf4a5620468b7E.exit": ; preds = %bb.ab, %bb.aa
  %.sroa.0.0.i.i = phi i1 [ false, %bb.aa ], [ %i.cz, %bb.ab ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  call void @llvm.experimental.noalias.scope.decl(metadata !2392), !noalias !2381
  %i.da = load i64, ptr %i.a, align 8, !range !18, !alias.scope !2393, !noalias !2381, !noundef !6
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.noexc57, label %bb.ac

bb.ac:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hfc9bf4a5620468b7E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !2394), !noalias !2381
  call void @llvm.experimental.noalias.scope.decl(metadata !2395), !noalias !2381
  call void @llvm.experimental.noalias.scope.decl(metadata !2396), !noalias !2381
  %i.dc = load i8, ptr %i.cc, align 1, !alias.scope !2397, !noalias !2381, !noundef !6
  %i.dd = icmp eq i8 %i.dc, -1
  br i1 %i.dd, label %bb.ad, label %.noexc57

bb.ad:                                            ; preds = %bb.ac
  %.val1.i.i.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !2397, !noalias !2381, !noundef !6 ; 2 uses
  %i.de = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.de, label %.noexc57, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.ad
  %.val.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !2397, !noalias !2381, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #59, !noalias !2398
  br label %.noexc57

.noexc57:                                         ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.ad, %bb.ac, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hfc9bf4a5620468b7E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2381
  br i1 %.sroa.0.0.i.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.noexc57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2380
  br label %bb.p

bb.af:                                            ; preds = %bb.p
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.x, %bb.y, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i67", %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.df, %bb.af ], [ %i.cp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i67" ], [ %i.cp, %bb.y ], [ %i.cp, %bb.x ], [ %i.cp, %bb.w ]
  invoke fastcc void @"_ZN4core3ptr216drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$GT$17h6e0887461c4416e2E"(ptr nonnull %i.bw, ptr nonnull %i.bx) #58
          to label %common.resume unwind label %bb.k

bb.ag:                                            ; preds = %.noexc57, %.noexc56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2380
  %i.dg = load ptr, ptr %i.bx, align 8, !invariant.load !6 ; 2 uses
  %.not.i58 = icmp eq ptr %i.dg, null
  br i1 %.not.i58, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void %i.dg(ptr noundef nonnull %i.bw)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !range !21, !invariant.load !6 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !range !31, !invariant.load !6 ; 2 uses
  %i.dl = icmp ult i64 %i.dk, -9223372036854775807
  call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp eq i64 %i.di, 0
  br i1 %i.dm, label %"_ZN4core3ptr216drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$GT$17h6e0887461c4416e2E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.ai
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) %i.dk) #59
  br label %"_ZN4core3ptr216drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$GT$17h6e0887461c4416e2E.exit"

bb.aj:                                            ; preds = %bb.ah
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !range !21, !invariant.load !6 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !range !31, !invariant.load !6 ; 2 uses
  %i.ds = icmp ult i64 %i.dr, -9223372036854775807
  call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp eq i64 %i.dp, 0
  br i1 %i.dt, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %bb.aj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.dp, i64 noundef range(i64 1, -9223372036854775807) %i.dr) #59
  br label %common.resume

bb.ak:                                            ; preds = %bb.al, %bb.m
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dv = load ptr, ptr %i.du, align 8, !invariant.load !6, !nonnull !6
  %i.dw = tail call noundef i8 %i.dv(ptr noundef nonnull align 1 %0) ; 2 uses
  %.not36 = icmp eq i8 %i.dw, 4
  br i1 %.not36, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.m
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.dy = load ptr, ptr %i.dx, align 8, !invariant.load !6, !nonnull !6
  %i.dz = tail call noundef zeroext i1 %i.dy(ptr noundef nonnull align 1 %2)
  br i1 %i.dz, label %"_ZN4core3ptr216drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$GT$17h6e0887461c4416e2E.exit", label %bb.ak

bb.am:                                            ; preds = %bb.ak
end_hunk_1
begin_hunk_2_@_ZN11liquid_core5model5value4view9ValueView9is_scalar17he5762e945fb06861E:"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17h1c945c6bcd70136cE.exit"
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17h1c945c6bcd70136cE.exit":
  %i.a = load i8, ptr %0, align 8, !range !15, !alias.scope !2437, !noundef !6
  %i.b = icmp eq i8 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17hea73abc5e679f2e2E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17h1c945c6bcd70136cE.exit":
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN11liquid_core5model5value4view9ValueView9is_scalar17hefa465b8dc36966eE(ptr noalias readonly align 4 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17h1c945c6bcd70136cE.exit":
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_ZN11liquid_core5model5value4view9value_cmp17h8ac1acd4dac859a5E(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(160) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(160) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 16 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.8 = alloca [7 x i8], align 8             ; 5 uses
  %.sroa.14 = alloca [7 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !6, !nonnull !6
  call void %i.j(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 1 %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !6, !nonnull !6
  invoke void %i.l(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noundef nonnull align 1 %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$liquid_core..model..scalar..ScalarCow$GT$$GT$17h1c945c6bcd70136cE"(ptr noalias noundef align 8 dereferenceable(32) %i.h) #58
  br label %.body

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.h, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0.copyload283 = load ptr, ptr %.sroa.6.0..sroa_idx282, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx286 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.7.0.copyload287 = load i64, ptr %.sroa.7.0..sroa_idx286, align 8 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8.0..sroa_idx, i64 7, i1 false)
  %.sroa.8291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 31
  %.sroa.8291.0.copyload = load i8, ptr %.sroa.8291.0..sroa_idx, align 1 ; 3 uses
  %.sroa.9.32.copyload = load i64, ptr %i.g, align 8 ; 4 uses
  %.sroa.12.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.12.32.copyload = load ptr, ptr %.sroa.12.32..sroa_idx, align 8 ; 4 uses
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.13.32.copyload = load i64, ptr %.sroa.13.32..sroa_idx, align 8 ; 5 uses
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.14.32..sroa_idx, i64 7, i1 false)
  %.sroa.14300.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 31
  %.sroa.14300.32.copyload = load i8, ptr %.sroa.14300.32..sroa_idx, align 1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq i64 %.sroa.0.0.copyload, 7
  %.not19 = icmp eq i64 %.sroa.9.32.copyload, 7
  %or.cond = select i1 %.not, i1 true, i1 %.not19
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %or.cond347.not360 = icmp ne i64 %.sroa.0.0.copyload, 1
  %i.n = icmp ne i8 %.sroa.8291.0.copyload, -1
  %or.cond348.not362 = select i1 %or.cond347.not360, i1 true, i1 %i.n
  %i.o = icmp eq i64 %.sroa.7.0.copyload287, 0
  %or.cond349 = select i1 %or.cond348.not362, i1 true, i1 %i.o
  br i1 %or.cond349, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit41", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i39"

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8
  %.sroa.6.0..sroa_idx284 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.6.0.copyload283, ptr %.sroa.6.0..sroa_idx284, align 8
  %.sroa.7.0..sroa_idx288 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.7.0.copyload287, ptr %.sroa.7.0..sroa_idx288, align 8
  %.sroa.8.0..sroa_idx290 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8.0..sroa_idx290, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8, i64 7, i1 false)
  %.sroa.8291.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.f, i64 31
  store i8 %.sroa.8291.0.copyload, ptr %.sroa.8291.0..sroa_idx292, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.9.32.copyload, ptr %i.e, align 8
  %.sroa.12.32..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.12.32.copyload, ptr %.sroa.12.32..sroa_idx295, align 8
  %.sroa.13.32..sroa_idx297 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.13.32.copyload, ptr %.sroa.13.32..sroa_idx297, align 8
  %.sroa.14.32..sroa_idx299 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.14.32..sroa_idx299, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.14, i64 7, i1 false)
  %.sroa.14300.32..sroa_idx301 = getelementptr inbounds nuw i8, ptr %i.e, i64 31
  store i8 %.sroa.14300.32.copyload, ptr %.sroa.14300.32..sroa_idx301, align 1
  %i.p = call fastcc noundef range(i8 -1, 3) i8 @_ZN11liquid_core5model6scalar10scalar_cmp17h2bfd2bd2498e5618E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  %or.cond340.not354 = icmp ne i64 %.sroa.9.32.copyload, 1
  %i.q = icmp ne i8 %.sroa.14300.32.copyload, -1
  %or.cond341.not356 = select i1 %or.cond340.not354, i1 true, i1 %i.q
  %i.r = icmp eq i64 %.sroa.13.32.copyload, 0
  %or.cond342 = select i1 %or.cond341.not356, i1 true, i1 %i.r
  br i1 %or.cond342, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.e
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.32.copyload, i64 noundef %.sroa.13.32.copyload, i64 noundef 1) #59, !noalias !2626
  br label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit"

"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i", %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %or.cond343.not357 = icmp ne i64 %.sroa.0.0.copyload, 1
  %i.s = icmp ne i8 %.sroa.8291.0.copyload, -1
  %or.cond344.not359 = select i1 %or.cond343.not357, i1 true, i1 %i.s
  %i.t = icmp eq i64 %.sroa.7.0.copyload287, 0
  %or.cond345 = select i1 %or.cond344.not359, i1 true, i1 %i.t
  br i1 %or.cond345, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit37", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i35"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i35": ; preds = %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload283, i64 noundef %.sroa.7.0.copyload287, i64 noundef 1) #59, !noalias !2627
  br label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit37"

"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit37": ; preds = %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i35"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.f

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i20.i72", %bb.ax, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i20.i", %bb.r, %bb.h, %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit37"
  %.sroa.0.0 = phi i8 [ %i.p, %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit37" ], [ 2, %bb.h ], [ %.sroa.3.0.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i20.i" ], [ %.sroa.3.0.i, %bb.r ], [ %.sroa.3.0.i61, %bb.ax ], [ %.sroa.3.0.i61, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i20.i72" ]
  ret i8 %.sroa.0.0

bb.g:                                             ; preds = %bb.ba, %bb.u
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

.body:                                            ; preds = %bb.b, %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f82f54a9080ce5cE.exit5.i.i.i", %bb.ay, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i18.i71", %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha0fea568551156ceE.exit5.i.i.i", %bb.s, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i18.i", %bb.ba, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn.i57, %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f82f54a9080ce5cE.exit5.i.i.i" ], [ %i.cr, %bb.u ], [ %i.m, %bb.b ], [ %i.gm, %bb.ba ], [ %i.cj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i18.i" ], [ %i.ge, %bb.ay ], [ %i.ge, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i18.i71" ], [ %i.cj, %bb.s ], [ %.pn.i, %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha0fea568551156ceE.exit5.i.i.i" ]
  resume { ptr, i32 } %.pn.pn

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i39": ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload283) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload283, i64 noundef %.sroa.7.0.copyload287, i64 noundef 1) #59, !noalias !2628
  br label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit41"

"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit41": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i39", %bb.d
  %or.cond351.not363 = icmp ne i64 %.sroa.9.32.copyload, 1
  %i.v = icmp ne i8 %.sroa.14300.32.copyload, -1
  %or.cond352.not365 = select i1 %or.cond351.not363, i1 true, i1 %i.v
  %i.w = icmp eq i64 %.sroa.13.32.copyload, 0
  %or.cond353 = select i1 %or.cond352.not365, i1 true, i1 %i.w
  br i1 %or.cond353, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit45", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i43"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i43": ; preds = %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit41"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.32.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.32.copyload, i64 noundef %.sroa.13.32.copyload, i64 noundef 1) #59, !noalias !2629
  br label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit45"

"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit45": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i43", %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit41"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !6, !nonnull !6
  %i.z = call { ptr, ptr } %i.y(ptr noundef nonnull align 1 %0) ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.z, 0       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !6, !nonnull !6
  %i.ad = call { ptr, ptr } %i.ac(ptr noundef nonnull align 1 %2) ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0      ; 2 uses
  %.not23 = icmp eq ptr %i.aa, null
  %.not24 = icmp eq ptr %i.ae, null
  %or.cond29 = select i1 %.not23, i1 true, i1 %.not24
  br i1 %or.cond29, label %bb.h, label %bb.i

bb.h:                                             ; preds = %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit45"
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !6, !nonnull !6
  %i.ah = call { ptr, ptr } %i.ag(ptr noundef nonnull align 1 %0) ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.ah, 0      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !6, !nonnull !6
  %i.al = call { ptr, ptr } %i.ak(ptr noundef nonnull align 1 %2) ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.al, 0      ; 2 uses
  %.not25 = icmp eq ptr %i.ai, null
  %.not26 = icmp eq ptr %i.am, null
  %or.cond30 = select i1 %.not25, i1 true, i1 %.not26
  br i1 %or.cond30, label %bb.f, label %bb.v

bb.i:                                             ; preds = %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit45"
  %i.an = extractvalue { ptr, ptr } %i.ad, 1      ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.z, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !invariant.load !6, !nonnull !6
  %i.ar = call { ptr, ptr } %i.aq(ptr noundef nonnull align 1 %i.aa) ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1      ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 176
  %i.av = load ptr, ptr %i.au, align 8, !invariant.load !6, !nonnull !6
  %i.aw = invoke { ptr, ptr } %i.av(ptr noundef nonnull align 1 %i.ae)
          to label %bb.j unwind label %bb.u       ; 2 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.ax = extractvalue { ptr, ptr } %i.aw, 0      ; 10 uses
  %i.ay = extractvalue { ptr, ptr } %i.aw, 1      ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !6, !noalias !2630, !nonnull !6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  br label %.noexc81

.noexc81:                                         ; preds = %.noexc97, %bb.j
  %i.bc = invoke { ptr, ptr } %i.ba(ptr noundef nonnull align 1 %i.as)
          to label %.noexc unwind label %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2496 ; 2 uses

.noexc:                                           ; preds = %.noexc81
  %i.bd = extractvalue { ptr, ptr } %i.bc, 0      ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i80, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.be = extractvalue { ptr, ptr } %i.bc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  %i.bf = load ptr, ptr %i.bb, align 8, !invariant.load !6, !noalias !2631, !nonnull !6
  %i.bg = invoke { ptr, ptr } %i.bf(ptr noundef nonnull align 1 %i.ax)
          to label %.noexc96 unwind label %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2500 ; 2 uses

.noexc96:                                         ; preds = %bb.k
  %i.bh = extractvalue { ptr, ptr } %i.bg, 0      ; 2 uses
  %.not.i94 = icmp eq ptr %i.bh, null
  br i1 %.not.i94, label %.loopexit244, label %bb.l

bb.l:                                             ; preds = %.noexc96
  %i.bi = extractvalue { ptr, ptr } %i.bg, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  %i.bj = invoke fastcc noundef range(i8 -1, 3) i8 @_ZN11liquid_core5model5value4view9value_cmp17h8ac1acd4dac859a5E(ptr noundef nonnull align 1 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.be, ptr noundef nonnull align 1 %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.bi)
          to label %.noexc97 unwind label %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2500 ; 2 uses

.noexc97:                                         ; preds = %bb.l
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %.noexc81, label %.loopexit244

.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.k, %.noexc81, %bb.m
  %lpad.loopexit.split-lp403 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  invoke fastcc void @"_ZN4core3ptr256drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$liquid_core..model..value..view..ValueViewCmp$GT$$GT$17hd0fcda9f381dfdb2E"(ptr %i.ax, ptr nonnull %i.ay) #58
          to label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha0fea568551156ceE.exit5.i.i.i" unwind label %bb.t, !inline_history !2501

bb.m:                                             ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  %i.bl = load ptr, ptr %i.bb, align 8, !invariant.load !6, !nonnull !6
  %i.bm = invoke { ptr, ptr } %i.bl(ptr noundef nonnull align 1 %i.ax)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52564cf05c147ca1E.exit.i" unwind label %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2502

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52564cf05c147ca1E.exit.i": ; preds = %bb.m
  %i.bn = extractvalue { ptr, ptr } %i.bm, 0
  %.not6.i = icmp ne ptr %i.bn, null
  %..i = sext i1 %.not6.i to i8
  br label %.loopexit244

.loopexit244:                                     ; preds = %.noexc97, %.noexc96, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52564cf05c147ca1E.exit.i"
  %.sroa.3.0.i = phi i8 [ %..i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52564cf05c147ca1E.exit.i" ], [ 1, %.noexc96 ], [ %i.bj, %.noexc97 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  %i.bo = load ptr, ptr %i.ay, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit244
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  invoke void %i.bo(ptr noundef nonnull %i.ax)
          to label %bb.o unwind label %bb.p, !inline_history !2501

bb.o:                                             ; preds = %bb.n, %.loopexit244
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !21, !invariant.load !6 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !range !31, !invariant.load !6 ; 2 uses
  %i.bt = icmp ult i64 %i.bs, -9223372036854775807
  call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp eq i64 %i.bq, 0
  br i1 %i.bu, label %"_ZN4core3ptr256drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$liquid_core..model..value..view..ValueViewCmp$GT$$GT$17hd0fcda9f381dfdb2E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %i.bs) #59, !inline_history !2501
  br label %"_ZN4core3ptr256drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$liquid_core..model..value..view..ValueViewCmp$GT$$GT$17hd0fcda9f381dfdb2E.exit.i"

bb.p:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !21, !invariant.load !6 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !31, !invariant.load !6 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, -9223372036854775807
  call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp eq i64 %i.bx, 0
  br i1 %i.cb, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha0fea568551156ceE.exit5.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.p
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) %i.bz) #59, !inline_history !2501
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha0fea568551156ceE.exit5.i.i.i"

"_ZN4core3ptr256drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$liquid_core..model..value..view..ValueViewCmp$GT$$GT$17hd0fcda9f381dfdb2E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.o
  %i.cc = load ptr, ptr %i.at, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i17.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i17.i, label %bb.r, label %bb.q

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha0fea568551156ceE.exit5.i.i.i": ; preds = %bb.p, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp403, %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i" ], [ %i.bv, %bb.p ]
  invoke fastcc void @"_ZN4core3ptr256drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$liquid_core..model..value..view..ValueViewCmp$GT$$GT$17hd0fcda9f381dfdb2E"(ptr nonnull %i.as, ptr nonnull %i.at) #58
          to label %.body unwind label %bb.t, !inline_history !2501

bb.q:                                             ; preds = %"_ZN4core3ptr256drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$liquid_core..model..value..view..ValueViewCmp$GT$$GT$17hd0fcda9f381dfdb2E.exit.i"
  invoke void %i.cc(ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.s, !inline_history !2501

bb.r:                                             ; preds = %bb.q, %"_ZN4core3ptr256drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$liquid_core..model..value..view..ValueViewCmp$GT$$GT$17hd0fcda9f381dfdb2E.exit.i"
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !21, !invariant.load !6 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !range !31, !invariant.load !6 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, -9223372036854775807
  call void @llvm.assume(i1 %i.ch)
  %i.ci = icmp eq i64 %i.ce, 0
  br i1 %i.ci, label %bb.f, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i20.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i20.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) %i.cg) #59, !inline_history !2501
  br label %bb.f

bb.s:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !range !21, !invariant.load !6 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !range !31, !invariant.load !6 ; 2 uses
  %i.co = icmp ult i64 %i.cn, -9223372036854775807
  call void @llvm.assume(i1 %i.co)
  %i.cp = icmp eq i64 %i.cl, 0
  br i1 %i.cp, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i18.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i18.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) %i.cn) #59, !inline_history !2501
  br label %.body

bb.t:                                             ; preds = %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha0fea568551156ceE.exit5.i.i.i", %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !inline_history !2501
  unreachable

bb.u:                                             ; preds = %bb.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  invoke fastcc void @"_ZN4core3ptr256drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$dyn$u20$liquid_core..model..value..view..ValueView$GT$$C$liquid_core..model..value..view..ValueViewCmp$GT$$GT$17hd0fcda9f381dfdb2E"(ptr %i.as, ptr nonnull %i.at) #58
          to label %.body unwind label %bb.g

bb.v:                                             ; preds = %bb.h
  %i.cs = extractvalue { ptr, ptr } %i.al, 1      ; 2 uses
  %i.ct = extractvalue { ptr, ptr } %i.ah, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 192
  %i.cv = load ptr, ptr %i.cu, align 8, !invariant.load !6, !nonnull !6
  %i.cw = call { ptr, ptr } %i.cv(ptr noundef nonnull align 1 %i.ai) ; 2 uses
  %i.cx = extractvalue { ptr, ptr } %i.cw, 0      ; 7 uses
  %i.cy = extractvalue { ptr, ptr } %i.cw, 1      ; 10 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 192
  %i.da = load ptr, ptr %i.cz, align 8, !invariant.load !6, !nonnull !6
  %i.db = invoke { ptr, ptr } %i.da(ptr noundef nonnull align 1 %i.am)
          to label %bb.w unwind label %bb.ba      ; 2 uses

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cx) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  %i.dc = extractvalue { ptr, ptr } %i.db, 0      ; 10 uses
  %i.dd = extractvalue { ptr, ptr } %i.db, 1      ; 11 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !6, !noalias !2632, !nonnull !6
  %.sroa.0145.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0145.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0145.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0145.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 31
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 2 uses
  %.sroa.8165.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.45.0..sroa_idx.i.i101 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.56.0..sroa_idx.i.i103 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.0173.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0173.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0173.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.0173.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %.sroa.0173.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.0173.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.6175.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 7 uses
  %.sroa.7176.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.8177.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 79 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  br label %bb.x

bb.x:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator11partial_cmp28_$u7b$$u7b$closure$u7d$$u7d$17h951c8ddfe28051c7E.exit.i", %bb.w
  invoke void %i.df(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 1 %i.cx)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2507

.noexc88:                                         ; preds = %bb.x
  %i.dm = load i64, ptr %i.c, align 8, !range !37, !noundef !6 ; 6 uses
  %.not.i.i83 = icmp eq i64 %i.dm, 2
  br i1 %.not.i.i83, label %bb.aq, label %bb.y

bb.y:                                             ; preds = %.noexc88
  %.sroa.0145.sroa.4.0.copyload = load ptr, ptr %.sroa.0145.sroa.4.0..sroa_idx, align 8 ; 9 uses
  %.sroa.0145.sroa.5.0.copyload = load i64, ptr %.sroa.0145.sroa.5.0..sroa_idx, align 8 ; 10 uses
  %.sroa.0145.sroa.7.0.copyload = load i8, ptr %.sroa.0145.sroa.7.0..sroa_idx, align 1 ; 6 uses
  %.sroa.4146.0.copyload = load ptr, ptr %.sroa.4146.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.5147.0.copyload = load ptr, ptr %.sroa.5147.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2633
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  %i.dn = load ptr, ptr %i.dg, align 8, !invariant.load !6, !noalias !2634, !nonnull !6
  invoke void %i.dn(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 1 %i.dc)
          to label %.noexc.i99 unwind label %bb.ao, !noalias !2635, !inline_history !2515

.noexc.i99:                                       ; preds = %bb.y
  %i.do = load i64, ptr %i.b, align 8, !range !37, !noalias !2633, !noundef !6 ; 5 uses
  %.not.i.i100 = icmp eq i64 %i.do, 2
  br i1 %.not.i.i100, label %bb.am, label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit.i.i.i"

"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit.i.i.i": ; preds = %.noexc.i99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6175.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8165.0..sroa_idx166, i64 24, i1 false), !noalias !2635
  %.sroa.45.0.copyload.i.i102 = load ptr, ptr %.sroa.45.0..sroa_idx.i.i101, align 8, !noalias !2633, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.56.0.copyload.i.i104 = load ptr, ptr %.sroa.56.0..sroa_idx.i.i103, align 8, !noalias !2633, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.0173.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.0145.sroa.6.0..sroa_idx, i64 7, i1 false)
  store ptr %.sroa.0145.sroa.4.0.copyload, ptr %.sroa.0173.sroa.4.0..sroa_idx, align 8, !noalias !2637
  store i64 %.sroa.0145.sroa.5.0.copyload, ptr %.sroa.0173.sroa.5.0..sroa_idx, align 8, !noalias !2637
  store i8 %.sroa.0145.sroa.7.0.copyload, ptr %.sroa.0173.sroa.7.0..sroa_idx, align 1, !noalias !2637
  store ptr %.sroa.4146.0.copyload, ptr %.sroa.0173.sroa.8.0..sroa_idx, align 8, !noalias !2637
  store ptr %.sroa.5147.0.copyload, ptr %.sroa.0173.sroa.9.0..sroa_idx, align 8, !noalias !2637
  store i64 %i.do, ptr %i.dh, align 8, !noalias !2638
  store ptr %.sroa.45.0.copyload.i.i102, ptr %.sroa.7176.48..sroa_idx, align 8, !noalias !2638
  store ptr %.sroa.56.0.copyload.i.i104, ptr %.sroa.8177.48..sroa_idx, align 8, !noalias !2638
  %i.dp = trunc nuw i64 %i.dm to i1
  %.sroa.0145.sroa.7.0.copyload.off = add i8 %.sroa.0145.sroa.7.0.copyload, -1
  %switch = icmp ult i8 %.sroa.0145.sroa.7.0.copyload.off, -2
  %or.cond233 = select i1 %i.dp, i1 %switch, i1 false ; 2 uses
  %i.dq = ptrtoint ptr %.sroa.0145.sroa.4.0.copyload to i64
  %i.dr = and i64 %i.dq, 255
  %.sroa.5.0.i.i.i.i = select i1 %or.cond233, i64 %i.dr, i64 %.sroa.0145.sroa.5.0.copyload ; 2 uses
  %.sroa.0.0.i.i.i.i = select i1 %or.cond233, ptr %i.di, ptr %.sroa.0145.sroa.4.0.copyload
  %i.ds = trunc nuw i64 %i.do to i1
  br i1 %i.ds, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit.i.i.i"
  %i.dt = load i8, ptr %i.dk, align 1, !alias.scope !2639, !noalias !2635, !noundef !6
  switch i8 %i.dt, label %bb.ad [
    i8 0, label %bb.ab
    i8 -1, label %bb.ac
  ]

bb.aa:                                            ; preds = %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit.i.i.i"
  %i.du = load ptr, ptr %.sroa.6175.48..sroa_idx, align 8, !alias.scope !2639, !noalias !2635, !nonnull !6, !align !8, !noundef !6
  %i.dv = load i64, ptr %i.dj, align 8, !alias.scope !2639, !noalias !2635, !noundef !6
  br label %"_ZN86_$LT$kstring..string_cow..KStringCowBase$LT$B$GT$$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd1ca297887cfee62E.exit.i"

bb.ab:                                            ; preds = %bb.z
  %i.dw = load ptr, ptr %.sroa.6175.48..sroa_idx, align 8, !alias.scope !2639, !noalias !2635, !nonnull !6, !align !8, !noundef !6
  %i.dx = load i64, ptr %i.dj, align 8, !alias.scope !2639, !noalias !2635, !noundef !6
  br label %"_ZN86_$LT$kstring..string_cow..KStringCowBase$LT$B$GT$$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd1ca297887cfee62E.exit.i"

bb.ac:                                            ; preds = %bb.z
  %.val.i7.i.i.i = load ptr, ptr %.sroa.6175.48..sroa_idx, align 8, !alias.scope !2639, !noalias !2635, !nonnull !6, !align !8, !noundef !6
  %.val2.i8.i.i.i = load i64, ptr %i.dj, align 8, !alias.scope !2639, !noalias !2635, !noundef !6
  br label %"_ZN86_$LT$kstring..string_cow..KStringCowBase$LT$B$GT$$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd1ca297887cfee62E.exit.i"

bb.ad:                                            ; preds = %bb.z
  %i.dy = load i8, ptr %.sroa.6175.48..sroa_idx, align 8, !alias.scope !2639, !noalias !2635, !noundef !6
  %i.dz = zext i8 %i.dy to i64
  br label %"_ZN86_$LT$kstring..string_cow..KStringCowBase$LT$B$GT$$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd1ca297887cfee62E.exit.i"

"_ZN86_$LT$kstring..string_cow..KStringCowBase$LT$B$GT$$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd1ca297887cfee62E.exit.i": ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.sroa.5.0.i5.i.i.i = phi i64 [ %i.dv, %bb.aa ], [ %i.dz, %bb.ad ], [ %i.dx, %bb.ab ], [ %.val2.i8.i.i.i, %bb.ac ] ; 2 uses
  %.sroa.0.0.i6.i.i.i = phi ptr [ %i.du, %bb.aa ], [ %i.dl, %bb.ad ], [ %i.dw, %bb.ab ], [ %.val.i7.i.i.i, %bb.ac ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.5.0.i.i.i.i, i64 %.sroa.5.0.i5.i.i.i)
  %i.ea = sub i64 %.sroa.5.0.i.i.i.i, %.sroa.5.0.i5.i.i.i
  %i.eb = call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i, ptr nonnull %.sroa.0.0.i6.i.i.i, i64 %..i.i.i), !noalias !2635, !inline_history !2526 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp eq i32 %i.eb, 0
  %spec.store.select.i.i.i = select i1 %i.ed, i64 %i.ea, i64 %i.ec ; 2 uses
  %i.ee = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i, i64 0)
  %i.ef = icmp eq i64 %spec.store.select.i.i.i, 0
  br i1 %i.ef, label %bb.ae, label %"_ZN4core5tuple65_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$U$C$T$RP$$GT$11partial_cmp17hffbeb077287b6cffE.exit.i.i"

bb.ae:                                            ; preds = %"_ZN86_$LT$kstring..string_cow..KStringCowBase$LT$B$GT$$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd1ca297887cfee62E.exit.i"
  %i.eg = invoke fastcc noundef range(i8 -1, 3) i8 @_ZN11liquid_core5model5value4view9value_cmp17h8ac1acd4dac859a5E(ptr noundef nonnull align 1 %.sroa.4146.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.5147.0.copyload, ptr noundef nonnull align 1 %.sroa.45.0.copyload.i.i102, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.56.0.copyload.i.i104)
          to label %"_ZN4core5tuple65_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$U$C$T$RP$$GT$11partial_cmp17hffbeb077287b6cffE.exit.i.i" unwind label %bb.af, !noalias !2635, !inline_history !2527

"_ZN4core5tuple65_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$U$C$T$RP$$GT$11partial_cmp17hffbeb077287b6cffE.exit.i.i": ; preds = %bb.ae, %"_ZN86_$LT$kstring..string_cow..KStringCowBase$LT$B$GT$$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd1ca297887cfee62E.exit.i"
  %.sroa.0.0.i.i.i = phi i8 [ %i.ee, %"_ZN86_$LT$kstring..string_cow..KStringCowBase$LT$B$GT$$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd1ca297887cfee62E.exit.i" ], [ %i.eg, %bb.ae ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2640)
  call void @llvm.experimental.noalias.scope.decl(metadata !2641)
  call void @llvm.experimental.noalias.scope.decl(metadata !2642)
  %i.eh = icmp eq i64 %i.do, 0
  br i1 %i.eh, label %"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit.i.i", label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  call void @llvm.experimental.noalias.scope.decl(metadata !2644)
  call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  %i.ej = icmp eq i64 %i.do, 0
  br i1 %i.ej, label %"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit16.i", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !2646)
  call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  call void @llvm.experimental.noalias.scope.decl(metadata !2648)
  %i.ek = load i8, ptr %i.dk, align 1, !alias.scope !2649, !noalias !2635, !noundef !6
  %i.el = icmp eq i8 %i.ek, -1
  br i1 %i.el, label %bb.ah, label %"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit16.i"

bb.ah:                                            ; preds = %bb.ag
  %.val1.i.i.i.i.i.i13.i = load i64, ptr %i.dj, align 8, !alias.scope !2649, !noalias !2635, !noundef !6 ; 2 uses
  %i.em = icmp eq i64 %.val1.i.i.i.i.i.i13.i, 0
  br i1 %i.em, label %"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit16.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i14.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i14.i": ; preds = %bb.ah
  %.val.i.i.i.i.i.i15.i = load ptr, ptr %.sroa.6175.48..sroa_idx, align 8, !alias.scope !2649, !noalias !2635, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i15.i, i64 noundef %.val1.i.i.i.i.i.i13.i, i64 noundef 1) #59, !noalias !2650, !inline_history !2526
  br label %"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit16.i"

"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit16.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i14.i", %bb.ah, %bb.ag, %bb.af
  %i.en = icmp eq i64 %i.dm, 0
  br i1 %i.en, label %.body119, label %bb.ak

bb.ai:                                            ; preds = %"_ZN4core5tuple65_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$U$C$T$RP$$GT$11partial_cmp17hffbeb077287b6cffE.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !2651)
  call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  %i.eo = load i8, ptr %i.dk, align 1, !alias.scope !2654, !noalias !2635, !noundef !6
  %i.ep = icmp eq i8 %i.eo, -1
  br i1 %i.ep, label %bb.aj, label %"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit.i.i"

bb.aj:                                            ; preds = %bb.ai
  %.val1.i.i.i.i.i.i.i.i113 = load i64, ptr %i.dj, align 8, !alias.scope !2654, !noalias !2635, !noundef !6 ; 2 uses
  %i.eq = icmp eq i64 %.val1.i.i.i.i.i.i.i.i113, 0
  br i1 %i.eq, label %"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i114"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i114": ; preds = %bb.aj
  %.val.i.i.i.i.i.i.i.i115 = load ptr, ptr %.sroa.6175.48..sroa_idx, align 8, !alias.scope !2654, !noalias !2635, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i115, i64 noundef %.val1.i.i.i.i.i.i.i.i113, i64 noundef 1) #59, !noalias !2655, !inline_history !2554
  br label %"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit.i.i"

"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i114", %bb.aj, %bb.ai, %"_ZN4core5tuple65_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$$LP$U$C$T$RP$$GT$11partial_cmp17hffbeb077287b6cffE.exit.i.i"
  %i.er = icmp eq i64 %i.dm, 0
  br i1 %i.er, label %"_ZN4core4iter6traits8iterator8Iterator11partial_cmp28_$u7b$$u7b$closure$u7d$$u7d$17h951c8ddfe28051c7E.exit.i", label %bb.al

bb.ak:                                            ; preds = %"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit16.i"
  %i.es = icmp ne i8 %.sroa.0145.sroa.7.0.copyload, -1
  %i.et = icmp eq i64 %.sroa.0145.sroa.5.0.copyload, 0
  %or.cond234 = select i1 %i.es, i1 true, i1 %i.et
  br i1 %or.cond234, label %.body119, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i10.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i10.i": ; preds = %bb.ak
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0145.sroa.4.0.copyload, i64 noundef %.sroa.0145.sroa.5.0.copyload, i64 noundef 1) #59, !noalias !2656, !inline_history !2526
  br label %.body119

bb.al:                                            ; preds = %"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit.i.i"
  %i.eu = icmp ne i8 %.sroa.0145.sroa.7.0.copyload, -1
  %i.ev = icmp eq i64 %.sroa.0145.sroa.5.0.copyload, 0
  %or.cond235 = select i1 %i.eu, i1 true, i1 %i.ev
  br i1 %or.cond235, label %"_ZN4core4iter6traits8iterator8Iterator11partial_cmp28_$u7b$$u7b$closure$u7d$$u7d$17h951c8ddfe28051c7E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i3.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i3.i.i": ; preds = %bb.al
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0145.sroa.4.0.copyload, i64 noundef %.sroa.0145.sroa.5.0.copyload, i64 noundef 1) #59, !noalias !2657, !inline_history !2554
  br label %"_ZN4core4iter6traits8iterator8Iterator11partial_cmp28_$u7b$$u7b$closure$u7d$$u7d$17h951c8ddfe28051c7E.exit.i"

"_ZN4core4iter6traits8iterator8Iterator11partial_cmp28_$u7b$$u7b$closure$u7d$$u7d$17h951c8ddfe28051c7E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i3.i.i", %bb.al, %"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2636
  %i.ew = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.ew, label %bb.x, label %"_ZN4core3ptr140drop_in_place$LT$core..option..Option$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$$GT$17h1d8fc99dbe747a54E.exit.i"

bb.am:                                            ; preds = %.noexc.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2633
  %i.ex = icmp eq i64 %i.dm, 0
  br i1 %i.ex, label %"_ZN4core3ptr140drop_in_place$LT$core..option..Option$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$$GT$17h1d8fc99dbe747a54E.exit.i", label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ey = icmp ne i8 %.sroa.0145.sroa.7.0.copyload, -1
  %i.ez = icmp eq i64 %.sroa.0145.sroa.5.0.copyload, 0
  %or.cond236 = select i1 %i.ey, i1 true, i1 %i.ez
  br i1 %or.cond236, label %"_ZN4core3ptr140drop_in_place$LT$core..option..Option$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$$GT$17h1d8fc99dbe747a54E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i117"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i117": ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0145.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0145.sroa.4.0.copyload, i64 noundef %.sroa.0145.sroa.5.0.copyload, i64 noundef 1) #59, !noalias !2658, !inline_history !2526
  br label %"_ZN4core3ptr140drop_in_place$LT$core..option..Option$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$$GT$17h1d8fc99dbe747a54E.exit.i"

bb.ao:                                            ; preds = %bb.y
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fb = icmp eq i64 %i.dm, 0
  br i1 %i.fb, label %.body119, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fc = icmp ne i8 %.sroa.0145.sroa.7.0.copyload, -1
  %i.fd = icmp eq i64 %.sroa.0145.sroa.5.0.copyload, 0
  %or.cond237 = select i1 %i.fc, i1 true, i1 %i.fd
  br i1 %or.cond237, label %.body119, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0145.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0145.sroa.4.0.copyload, i64 noundef %.sroa.0145.sroa.5.0.copyload, i64 noundef 1) #59, !noalias !2659
  br label %.body119

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body119

.body119:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.ap, %bb.ao, %"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit16.i", %bb.ak, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i10.i"
  %eh.lpad-body120 = phi { ptr, i32 } [ %i.fa, %bb.ap ], [ %i.ei, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i10.i" ], [ %i.ei, %"_ZN4core3ptr112drop_in_place$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$17h3dacc60a74f2b459E.exit16.i" ], [ %i.ei, %bb.ak ], [ %i.fa, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i" ], [ %i.fa, %bb.ao ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  invoke fastcc void @"_ZN4core3ptr328drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$C$liquid_core..model..value..view..value_cmp..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb478d2a7ba2831e8E"(ptr %i.dc, ptr nonnull %i.dd) #58
          to label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f82f54a9080ce5cE.exit5.i.i.i" unwind label %bb.az, !inline_history !2603

bb.aq:                                            ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2660
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  %i.fe = load ptr, ptr %i.dg, align 8, !invariant.load !6, !noalias !2661, !nonnull !6
  invoke void %i.fe(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noundef nonnull align 1 %i.dc)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2611

.noexc.i:                                         ; preds = %bb.aq
  %i.ff = load i64, ptr %i.d, align 8, !range !37, !noalias !2660, !noundef !6 ; 2 uses
  %.not.i.i75 = icmp eq i64 %i.ff, 2
  br i1 %.not.i.i75, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72ac10bf7b90e880E.exit.i.thread", label %bb.ar

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72ac10bf7b90e880E.exit.i.thread": ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2660
  br label %"_ZN4core3ptr140drop_in_place$LT$core..option..Option$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$$GT$17h1d8fc99dbe747a54E.exit.i"

bb.ar:                                            ; preds = %.noexc.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2662 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !2662 ; 2 uses
  %.sroa.8129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 31
  %.sroa.8129.0.copyload = load i8, ptr %.sroa.8129.0..sroa_idx, align 1, !noalias !2662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2660
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %"_ZN4core3ptr140drop_in_place$LT$core..option..Option$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$$GT$17h1d8fc99dbe747a54E.exit.i", label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fh = icmp ne i8 %.sroa.8129.0.copyload, -1
  %i.fi = icmp eq i64 %.sroa.7.0.copyload, 0
  %or.cond238 = select i1 %i.fh, i1 true, i1 %i.fi
  br i1 %or.cond238, label %"_ZN4core3ptr140drop_in_place$LT$core..option..Option$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$$GT$17h1d8fc99dbe747a54E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.7.0.copyload, i64 noundef 1) #59, !noalias !2663, !inline_history !2603
  br label %"_ZN4core3ptr140drop_in_place$LT$core..option..Option$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$$GT$17h1d8fc99dbe747a54E.exit.i"

"_ZN4core3ptr140drop_in_place$LT$core..option..Option$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$$GT$17h1d8fc99dbe747a54E.exit.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator11partial_cmp28_$u7b$$u7b$closure$u7d$$u7d$17h951c8ddfe28051c7E.exit.i", %bb.am, %bb.an, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i117", %bb.ar, %bb.as, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72ac10bf7b90e880E.exit.i.thread"
  %.sroa.3.0.i61 = phi i8 [ -1, %bb.as ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72ac10bf7b90e880E.exit.i.thread" ], [ -1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i" ], [ -1, %bb.ar ], [ 1, %bb.am ], [ 1, %bb.an ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i117" ], [ %.sroa.0.0.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator11partial_cmp28_$u7b$$u7b$closure$u7d$$u7d$17h951c8ddfe28051c7E.exit.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  %i.fj = load ptr, ptr %i.dd, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i65, label %bb.au, label %bb.at

bb.at:                                            ; preds = %"_ZN4core3ptr140drop_in_place$LT$core..option..Option$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$$GT$17h1d8fc99dbe747a54E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  invoke void %i.fj(ptr noundef nonnull %i.dc)
          to label %bb.au unwind label %bb.av, !inline_history !2603

bb.au:                                            ; preds = %bb.at, %"_ZN4core3ptr140drop_in_place$LT$core..option..Option$LT$$LP$kstring..string_cow..KStringCowBase$C$liquid_core..model..value..view..ValueViewCmp$RP$$GT$$GT$17h1d8fc99dbe747a54E.exit.i"
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !range !21, !invariant.load !6 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !range !31, !invariant.load !6 ; 2 uses
  %i.fo = icmp ult i64 %i.fn, -9223372036854775807
  call void @llvm.assume(i1 %i.fo)
  %i.fp = icmp eq i64 %i.fl, 0
  br i1 %i.fp, label %"_ZN4core3ptr328drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$C$liquid_core..model..value..view..value_cmp..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb478d2a7ba2831e8E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i67"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i67": ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dc, i64 noundef %i.fl, i64 noundef range(i64 1, -9223372036854775807) %i.fn) #59, !inline_history !2603
  br label %"_ZN4core3ptr328drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$C$liquid_core..model..value..view..value_cmp..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb478d2a7ba2831e8E.exit.i"

bb.av:                                            ; preds = %bb.at
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !range !21, !invariant.load !6 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !range !31, !invariant.load !6 ; 2 uses
  %i.fv = icmp ult i64 %i.fu, -9223372036854775807
  call void @llvm.assume(i1 %i.fv)
  %i.fw = icmp eq i64 %i.fs, 0
  br i1 %i.fw, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f82f54a9080ce5cE.exit5.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i66"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i66": ; preds = %bb.av
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dc, i64 noundef %i.fs, i64 noundef range(i64 1, -9223372036854775807) %i.fu) #59, !inline_history !2603
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f82f54a9080ce5cE.exit5.i.i.i"

"_ZN4core3ptr328drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$C$liquid_core..model..value..view..value_cmp..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb478d2a7ba2831e8E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i67", %bb.au
  %i.fx = load ptr, ptr %i.cy, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i17.i70 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i17.i70, label %bb.ax, label %bb.aw

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f82f54a9080ce5cE.exit5.i.i.i": ; preds = %bb.av, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i66", %.body119
  %.pn.i57 = phi { ptr, i32 } [ %eh.lpad-body120, %.body119 ], [ %i.fq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i66" ], [ %i.fq, %bb.av ]
  invoke fastcc void @"_ZN4core3ptr328drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$C$liquid_core..model..value..view..value_cmp..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17habc85d6267c93d6fE"(ptr nonnull %i.cx, ptr nonnull %i.cy) #58
          to label %.body unwind label %bb.az, !inline_history !2603

bb.aw:                                            ; preds = %"_ZN4core3ptr328drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$C$liquid_core..model..value..view..value_cmp..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb478d2a7ba2831e8E.exit.i"
  invoke void %i.fx(ptr noundef nonnull %i.cx)
          to label %bb.ax unwind label %bb.ay, !inline_history !2603

bb.ax:                                            ; preds = %bb.aw, %"_ZN4core3ptr328drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$C$liquid_core..model..value..view..value_cmp..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb478d2a7ba2831e8E.exit.i"
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !range !21, !invariant.load !6 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !range !31, !invariant.load !6 ; 2 uses
  %i.gc = icmp ult i64 %i.gb, -9223372036854775807
  call void @llvm.assume(i1 %i.gc)
  %i.gd = icmp eq i64 %i.fz, 0
  br i1 %i.gd, label %bb.f, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i20.i72"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i20.i72": ; preds = %bb.ax
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef %i.fz, i64 noundef range(i64 1, -9223372036854775807) %i.gb) #59, !inline_history !2603
  br label %bb.f

bb.ay:                                            ; preds = %bb.aw
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !range !21, !invariant.load !6 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !range !31, !invariant.load !6 ; 2 uses
  %i.gj = icmp ult i64 %i.gi, -9223372036854775807
  call void @llvm.assume(i1 %i.gj)
  %i.gk = icmp eq i64 %i.gg, 0
  br i1 %i.gk, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i18.i71"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i18.i71": ; preds = %bb.ay
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef %i.gg, i64 noundef range(i64 1, -9223372036854775807) %i.gi) #59, !inline_history !2603
  br label %.body

bb.az:                                            ; preds = %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f82f54a9080ce5cE.exit5.i.i.i", %.body119
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !inline_history !2603
  unreachable

bb.ba:                                            ; preds = %bb.v
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  invoke fastcc void @"_ZN4core3ptr328drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$C$liquid_core..model..value..view..value_cmp..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17habc85d6267c93d6fE"(ptr %i.cx, ptr nonnull %i.cy) #58
          to label %.body unwind label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core5model5value6values5Value10into_array17h909ead2d44be0983E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !15, !noundef !6
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %.thread, %bb.c
  ret void

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h3ebd55d3060db4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 5) i8 @_ZN11liquid_core5model5value6values5Value10into_state17h7850b8675bef7dfaE(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !15, !noundef !6
  %i.b = icmp eq i8 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !range !17
  %.sroa.0.0 = select i1 %i.b, i8 %i.d, i8 4
  tail call void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h3ebd55d3060db4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core5model5value6values5Value11into_object17h8a5e54fe43e00fb3E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !15, !noundef !6
  %i.b = icmp eq i8 %i.a, 2
  br i1 %i.b, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %.thread, %bb.c
  ret void

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  tail call void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h3ebd55d3060db4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core5model5value6values5Value11into_scalar17h16a5d8bae46581baE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !15, !noundef !6
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
end_hunk_2
begin_hunk_3_@_ZN11liquid_core7runtime8variable8Variable12try_evaluate17h3f5acb744f918f16E:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !7259, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_ref17hc7fab5beb62fb6deE.exit.i"

bb.k:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %i.l, align 8, !alias.scope !7259, !nonnull !6, !align !8, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !7259, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_ref17hc7fab5beb62fb6deE.exit.i"

bb.l:                                             ; preds = %bb.i
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !7259, !nonnull !6, !align !8, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10.i.i = load i64, ptr %i.u, align 8, !alias.scope !7259, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_ref17hc7fab5beb62fb6deE.exit.i"

bb.m:                                             ; preds = %bb.i
  %i.v = load i8, ptr %i.l, align 8, !alias.scope !7259, !noundef !6
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_ref17hc7fab5beb62fb6deE.exit.i"

"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_ref17hc7fab5beb62fb6deE.exit.i": ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.sroa.12.0.i = phi i64 [ %i.w, %bb.m ], [ %i.t, %bb.k ], [ %.val10.i.i, %bb.l ], [ %i.q, %bb.j ]
  %.sroa.7.0.i = phi ptr [ %i.x, %bb.m ], [ %i.r, %bb.k ], [ %.val.i.i, %bb.l ], [ %i.o, %bb.j ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.m ], [ 1, %bb.k ], [ 0, %bb.l ], [ 0, %bb.j ]
  store i64 %.sroa.0.0.i, ptr %i.e, align 8, !alias.scope !7256
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.7.0.i, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !7256
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.12.0.i, ptr %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !7256
  %.sroa.45.sroa.6.0..sroa.45.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 31
  store i8 0, ptr %.sroa.45.sroa.6.0..sroa.45.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !7256
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_ref17hc7fab5beb62fb6deE.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7260)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !7261
  %i.y = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #59, !noalias !7261 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.n, label %_ZN11liquid_core5model4find4Path10with_index17hc285e5e602f9998aE.exit, !prof !12

bb.n:                                             ; preds = %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #57
          to label %bb.o unwind label %bb.p, !noalias !7261

bb.o:                                             ; preds = %bb.n
  unreachable

common.resume:                                    ; preds = %.body, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.e) #58, !noalias !7260
  br label %common.resume

_ZN11liquid_core5model4find4Path10with_index17hc285e5e602f9998aE.exit: ; preds = %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !7260
  store i64 1, ptr %i.f, align 8, !alias.scope !7260
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.y, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !7260
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !7260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !6 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, 144115188075855872
  tail call void @llvm.assume(i1 %i.ad)
  %.not10 = icmp eq i64 %i.ac, 0
  br i1 %.not10, label %._crit_edge, label %bb.q, !prof !24

bb.q:                                             ; preds = %_ZN11liquid_core5model4find4Path10with_index17hc285e5e602f9998aE.exit
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1, i64 noundef %i.ac, i64 noundef 8, i64 noundef 32)
          to label %.lr.ph unwind label %.loopexit.split-lp.loopexit.split-lp

.body:                                            ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %bb.af
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.af ], [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp13, %.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$liquid_core..model..find..Path$GT$17hf732e4d9d83fc5f9E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #58
  br label %common.resume

.lr.ph:                                           ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ac, 6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.7.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.ag
  %i.ai = phi i8 [ undef, %.lr.ph ], [ %i.be, %bb.ag ] ; 3 uses
  %.sroa.03.012 = phi ptr [ %i.af, %.lr.ph ], [ %i.aj, %bb.ag ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.012, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN11liquid_core7runtime10expression10Expression12try_evaluate17hf3c01eb92064c0a1E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.03.012, ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %3)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit

._crit_edge.loopexit:                             ; preds = %bb.ag
  store i8 %i.be, ptr %i.b, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN11liquid_core5model4find4Path10with_index17hc285e5e602f9998aE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %"_ZN4core3ptr51drop_in_place$LT$liquid_core..model..find..Path$GT$17hf732e4d9d83fc5f9E.exit"

bb.s:                                             ; preds = %bb.r
  %i.ak = load i8, ptr %i.d, align 8, !range !30, !noundef !6 ; 5 uses
  %.not = icmp eq i8 %i.ak, 6
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.531.0..sroa_idx, i64 7, i1 false)
  %.sroa.632.0.copyload = load ptr, ptr %.sroa.632.0..sroa_idx, align 8 ; 3 uses
  %.sroa.733.0.copyload = load ptr, ptr %.sroa.733.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.834.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.al = icmp eq i8 %i.ak, 5
  br i1 %i.al, label %bb.aa, label %bb.ab

bb.u:                                             ; preds = %bb.s
  store i8 %i.ai, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

bb.v:                                             ; preds = %.loopexit11, %bb.u
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.experimental.noalias.scope.decl(metadata !7262)
  call void @llvm.experimental.noalias.scope.decl(metadata !7263)
  %.val.i.i7 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !7264, !nonnull !6, !noundef !6 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !7264, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7265)
  %i.am = icmp eq i64 %.val1.i.i, 0
  br i1 %i.am, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d17bde342206137E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.ao, %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit.i.i.i.i" ], [ 0, %bb.v ] ; 2 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i7, i64 %.sroa.0.07.i.i.i.i ; 4 uses
  %i.ao = add nuw i64 %.sroa.0.07.i.i.i.i, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7266)
  call void @llvm.experimental.noalias.scope.decl(metadata !7267)
  %i.ap = load i64, ptr %i.an, align 8, !range !7, !alias.scope !7268, !noalias !7264, !noundef !6 ; 2 uses
  %i.aq = icmp samesign ugt i64 %i.ap, 1
  br i1 %i.aq, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7269)
  call void @llvm.experimental.noalias.scope.decl(metadata !7270)
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7271)
  call void @llvm.experimental.noalias.scope.decl(metadata !7272)
  call void @llvm.experimental.noalias.scope.decl(metadata !7273)
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 31
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !7274, !noalias !7264, !noundef !6
  %i.av = icmp eq i8 %i.au, -1
  br i1 %i.av, label %bb.y, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit.i.i.i.i"

bb.y:                                             ; preds = %bb.x
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !7274, !noalias !7264, !noundef !6 ; 2 uses
  %i.ax = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ax, label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.y
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !7274, !noalias !7264, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1) #59, !noalias !7275
  br label %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.y, %bb.x, %bb.w, %.lr.ph.i.i.i.i
  %i.ay = icmp eq i64 %i.ao, %.val1.i.i
  br i1 %i.ay, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d17bde342206137E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d17bde342206137E.exit.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E.exit.i.i.i.i", %bb.v
  %.val2.i.i = load i64, ptr %i.f, align 8, !range !21, !alias.scope !7264, !noundef !6 ; 2 uses
  %i.az = icmp eq i64 %.val2.i.i, 0
  br i1 %i.az, label %"_ZN4core3ptr51drop_in_place$LT$liquid_core..model..find..Path$GT$17hf732e4d9d83fc5f9E.exit", label %bb.z

bb.z:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d17bde342206137E.exit.i.i"
  %i.ba = shl nuw i64 %.val2.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i7, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !7264
  br label %"_ZN4core3ptr51drop_in_place$LT$liquid_core..model..find..Path$GT$17hf732e4d9d83fc5f9E.exit"

bb.aa:                                            ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.632.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.733.0.copyload) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.733.0.copyload, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !6, !nonnull !6
  invoke void %i.bc(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull align 1 %.sroa.632.0.copyload)
          to label %_ZN11liquid_core5model5value6values5Value11into_scalar17h16a5d8bae46581baE.exit unwind label %.loopexit.split-lp.loopexit

bb.ab:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx15, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, i64 7, i1 false)
  store ptr %.sroa.632.0.copyload, ptr %i.ah, align 8
  store ptr %.sroa.733.0.copyload, ptr %.sroa.7.0..sroa_idx19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, i64 32, i1 false)
  %i.bd = icmp eq i8 %i.ak, 0
  br i1 %i.bd, label %.thread.i, label %bb.ac

.thread.i:                                        ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !alias.scope !7276
  br label %_ZN11liquid_core5model5value6values5Value11into_scalar17h16a5d8bae46581baE.exit

bb.ac:                                            ; preds = %bb.ab
  store i8 %i.ak, ptr %i.b, align 8
  invoke void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h3ebd55d3060db4bcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.b)
          to label %.loopexit11 unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.aa, %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i8 %i.ai, ptr %i.b, align 8
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.q, %bb.ac
  %lpad.loopexit.split-lp13 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN11liquid_core5model5value6values5Value11into_scalar17h16a5d8bae46581baE.exit: ; preds = %.thread.i, %bb.aa
  %i.be = phi i8 [ %i.ak, %.thread.i ], [ %i.ai, %bb.aa ] ; 4 uses
  %.pr = load i64, ptr %i.c, align 8
  %.not5 = icmp eq i64 %.pr, 7
  br i1 %.not5, label %.loopexit11.loopexit, label %bb.ad

bb.ad:                                            ; preds = %_ZN11liquid_core5model5value6values5Value11into_scalar17h16a5d8bae46581baE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !7277)
  %i.bf = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !7277, !noundef !6 ; 3 uses
  %i.bg = load i64, ptr %i.f, align 8, !range !21, !alias.scope !7277, !noundef !6
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h82d2964783738d40E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367)
          to label %bb.ag unwind label %bb.af, !noalias !7278

bb.af:                                            ; preds = %bb.ae
  %i.bi = landingpad { ptr, i32 }
          cleanup
  store i8 %i.be, ptr %i.b, align 8
  call void @"_ZN4core3ptr58drop_in_place$LT$liquid_core..model..scalar..ScalarCow$GT$17hb919e81e30971ca9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a) #58, !noalias !7277
  br label %.body

.loopexit11.loopexit:                             ; preds = %_ZN11liquid_core5model5value6values5Value11into_scalar17h16a5d8bae46581baE.exit
  store i8 %i.be, ptr %i.b, align 8
  br label %.loopexit11

.loopexit11:                                      ; preds = %bb.ac, %.loopexit11.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.v

"_ZN4core3ptr51drop_in_place$LT$liquid_core..model..find..Path$GT$17hf732e4d9d83fc5f9E.exit": ; preds = %bb.z, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0d17bde342206137E.exit.i.i", %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.bj = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !7277, !nonnull !6, !noundef !6
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !7277
  %i.bl = add i64 %i.bf, 1
  store i64 %i.bl, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !7277
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.bm = icmp eq ptr %i.aj, %i.ag
  br i1 %i.bm, label %._crit_edge.loopexit, label %bb.r
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core7runtime8variable8Variable8evaluate17h40ebf90a78da2d8eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noundef nonnull align 1 %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 15 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [56 x i8], align 8                ; 8 uses
  %i.l = alloca [56 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7349)
  %i.o = load i64, ptr %1, align 8, !range !7, !alias.scope !7349, !noundef !6 ; 3 uses
  %i.p = add nsw i64 %i.o, -2
  %i.q = icmp samesign ugt i64 %i.o, 1
  %i.r = select i1 %i.q, i64 %i.p, i64 5
  switch i64 %i.r, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !7350
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !7350
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !7350
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !7350
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !7350
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

bb.h:                                             ; preds = %bb.a
  %i.s = trunc nuw i64 %i.o to i1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !7351, !noundef !6
  switch i8 %i.v, label %bb.m [
    i8 0, label %bb.k
    i8 -1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.t, align 8, !alias.scope !7351, !nonnull !6, !align !8, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !7351, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_ref17hc7fab5beb62fb6deE.exit.i"

bb.k:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.t, align 8, !alias.scope !7351, !nonnull !6, !align !8, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !7351, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_ref17hc7fab5beb62fb6deE.exit.i"

bb.l:                                             ; preds = %bb.i
  %.val.i.i = load ptr, ptr %i.t, align 8, !alias.scope !7351, !nonnull !6, !align !8, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10.i.i = load i64, ptr %i.ac, align 8, !alias.scope !7351, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_ref17hc7fab5beb62fb6deE.exit.i"

bb.m:                                             ; preds = %bb.i
  %i.ad = load i8, ptr %i.t, align 8, !alias.scope !7351, !noundef !6
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_ref17hc7fab5beb62fb6deE.exit.i"

"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_ref17hc7fab5beb62fb6deE.exit.i": ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.sroa.12.0.i = phi i64 [ %i.ae, %bb.m ], [ %i.ab, %bb.k ], [ %.val10.i.i, %bb.l ], [ %i.y, %bb.j ]
  %.sroa.7.0.i = phi ptr [ %i.af, %bb.m ], [ %i.z, %bb.k ], [ %.val.i.i, %bb.l ], [ %i.w, %bb.j ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.m ], [ 1, %bb.k ], [ 0, %bb.l ], [ 0, %bb.j ]
  store i64 %.sroa.0.0.i, ptr %i.m, align 8, !alias.scope !7348
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.7.0.i, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !7348
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.12.0.i, ptr %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !7348
  %.sroa.45.sroa.6.0..sroa.45.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 31
  store i8 0, ptr %.sroa.45.sroa.6.0..sroa.45.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !7348
  br label %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit

_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_ref17hc7fab5beb62fb6deE.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7352)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !7353
  %i.ag = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #59, !noalias !7353 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.n, label %_ZN11liquid_core5model4find4Path10with_index17hc285e5e602f9998aE.exit, !prof !12

bb.n:                                             ; preds = %_ZN11liquid_core5model6scalar9ScalarCow6as_ref17hd779f90d0ab759ffE.exit
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #57
          to label %bb.o unwind label %bb.p, !noalias !7353
end_hunk_3
