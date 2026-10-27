Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h25ea1702966dfb4dE":bb.a
  call fastcc void @_ZN4core3str7pattern8Searcher10next_match17he533b94192612ad2E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.e = load i64, ptr %i.a, align 8, !range !44, !noundef !17
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.d, %bb.e
  %lpad.loopexit.split-lp4 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5419)
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !5419 ; 2 uses
  %i.i = icmp eq i64 %.val.i, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit", label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5419, !nonnull !17, !noundef !17
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !5419
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit"

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %i.j = phi ptr [ inttoptr (i64 1 to ptr), %.lr.ph ], [ %i.ak, %bb.i ]
  %i.k = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.i ] ; 3 uses
  %.sroa.08.070 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.i ] ; 2 uses
  %i.l = load i64, ptr %i.g, align 8, !noundef !17
  %i.m = load i64, ptr %i.h, align 8, !noundef !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.070
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5420)
  %gepdiff68 = sub nuw nsw i64 %i.l, %.sroa.08.070 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5421)
  %i.o = load i64, ptr %i.c, align 8, !range !20, !alias.scope !5422, !noundef !17 ; 2 uses
  %i.p = sub i64 %i.o, %i.k
  %i.q = icmp ugt i64 %gepdiff68, %i.p
  br i1 %i.q, label %bb.d, label %bb.g, !prof !22

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.k, i64 noundef %gepdiff68, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %.pre.i.i = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !5423
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5423
  %.pre73 = load i64, ptr %i.c, align 8, !range !20, !alias.scope !5424
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre75 = load i64, ptr %i.c, align 8, !range !20, !alias.scope !5425
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.r = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.ak, %._crit_edge.loopexit ]
  %i.s = phi i64 [ 0, %bb.a ], [ %.pre75, %._crit_edge.loopexit ]
  %i.t = phi i64 [ 0, %bb.a ], [ %i.ao, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.08.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.m, %._crit_edge.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5426)
  %gepdiff = sub nuw nsw i64 %2, %.sroa.08.0.lcssa ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5427)
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ugt i64 %gepdiff, %i.u
  br i1 %i.v, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %._crit_edge
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.t, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.e
  %.pre.i.i30 = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !5428
  %.pre76 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5428
  br label %bb.f

bb.f:                                             ; preds = %.noexc31, %._crit_edge
  %i.w = phi ptr [ %i.r, %._crit_edge ], [ %.pre76, %.noexc31 ]
  %i.x = phi i64 [ %i.t, %._crit_edge ], [ %.pre.i.i30, %.noexc31 ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.0.lcssa
  %i.z = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.y, i64 %gepdiff, i1 false), !noalias !5428
  %i.ab = add i64 %i.x, %gepdiff
  store i64 %i.ab, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !5428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %.noexc, %bb.c
  %i.ac = phi ptr [ %i.j, %bb.c ], [ %.pre, %.noexc ] ; 2 uses
  %i.ad = phi i64 [ %i.o, %bb.c ], [ %.pre73, %.noexc ]
  %i.ae = phi i64 [ %i.k, %bb.c ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.n, i64 %gepdiff68, i1 false), !noalias !5423
  %i.ah = add i64 %i.ae, %gepdiff68               ; 4 uses
  store i64 %i.ah, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !5423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5430)
  %i.ai = sub i64 %i.ad, %i.ah
  %i.aj = icmp ugt i64 %5, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.i, !prof !22

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ah, i64 noundef %5, i64 noundef 1, i64 noundef 1)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.h
  %.pre.i.i33 = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !5431
  %.pre74 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5431
  br label %bb.i

bb.i:                                             ; preds = %.noexc34, %bb.g
  %i.ak = phi ptr [ %i.ac, %bb.g ], [ %.pre74, %.noexc34 ] ; 3 uses
  %i.al = phi i64 [ %i.ah, %bb.g ], [ %.pre.i.i33, %.noexc34 ] ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull readonly align 1 %4, i64 %5, i1 false), !noalias !5431
  %i.ao = add nuw i64 %i.al, %5                   ; 3 uses
  store i64 %i.ao, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !5431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN4core3str7pattern8Searcher10next_match17he533b94192612ad2E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.ap = load i64, ptr %i.a, align 8, !range !44, !noundef !17
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.c, label %._crit_edge.loopexit

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit": ; preds = %bb.b, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h825828b0cbb0b431E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef range(i64 2, 9) %4, ptr noalias noundef nonnull readonly align 1 captures(none) %5, i64 noundef range(i64 1, 9) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 21 uses
  %.not18 = icmp samesign ugt i64 %4, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br i1 %.not18, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %2, 0
  br i1 %i.c, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !5481

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.b
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !5482
  %i.e = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 17) 1) #51, !noalias !5482 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit"

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #54
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.06.0134137 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %2, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ 0, %bb.a ]
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i" ], [ inttoptr (i64 1 to ptr), %bb.a ] ; 5 uses
  store i64 %.sroa.06.0134137, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 15 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef range(i64 2, 9) %4)
          to label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit" unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd5e7ac0f9a14006eE.exit"
  %.sroa.0114.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4115.0.copyload = load i64, ptr %.sroa.4115.0..sroa_idx, align 8 ; 25 uses
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6117.0.copyload = load i64, ptr %.sroa.6117.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7118.0.copyload = load i64, ptr %.sroa.7118.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.8119.0.copyload = load i64, ptr %.sroa.8119.0..sroa_idx, align 8
  %.sroa.10121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.10121.0.copyload = load i64, ptr %.sroa.10121.0..sroa_idx, align 8
  %.sroa.12123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.12123.0.copyload = load ptr, ptr %.sroa.12123.0..sroa_idx, align 8 ; 17 uses
  %.sroa.13124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.13124.0.copyload = load i64, ptr %.sroa.13124.0..sroa_idx, align 8 ; 42 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = trunc nuw i64 %.sroa.0114.0.copyload to i1
  %i.h = add i64 %.sroa.15.0.copyload, -1         ; 3 uses
  br i1 %i.g, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us", label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12123.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.i = sub i64 %.sroa.15.0.copyload, %.sroa.6117.0.copyload
  %umax50.i.us = call i64 @llvm.umax.i64(i64 %.sroa.4115.0.copyload, i64 %.sroa.15.0.copyload)
  %i.j = add i64 %.sroa.4115.0.copyload, -1
  %.first_iter = icmp ult i64 %i.j, %.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.4115.0.copyload
  %exitcond.not.i.us438.not = icmp ult i64 %.sroa.4115.0.copyload, %.sroa.15.0.copyload
  %invariant.op563 = sub i64 1, %.sroa.4115.0.copyload
  %.not147.us441 = icmp eq i64 %.sroa.4115.0.copyload, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.y, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us"
  %i.k = phi ptr [ %.sroa.10.0.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %i.cm, %bb.y ] ; 5 uses
  %i.l = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %i.co, %bb.y ] ; 7 uses
  %.sroa.3079.0.us = phi i64 [ %.sroa.10121.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %.sroa.3079.1.us, %bb.y ] ; 2 uses
  %.sroa.18.0.us = phi i64 [ %.sroa.8119.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %.sroa.11127.1.us, %bb.y ] ; 3 uses
  %.sroa.08.0.us = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.split.us" ], [ %.sroa.11127.1.us, %bb.y ] ; 6 uses
  %i.m = icmp eq i64 %.sroa.3079.0.us, -1
  %i.n = add i64 %.sroa.18.0.us, %i.h             ; 3 uses
  %i.o = icmp ult i64 %i.n, %.sroa.13124.0.copyload ; 2 uses
  br i1 %i.m, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !5483)
  call void @llvm.experimental.noalias.scope.decl(metadata !5484)
  br i1 %i.o, label %.lr.ph.i51.us, label %.critedge25

.lr.ph.i51.us:                                    ; preds = %bb.e, %.sink.split.i.us
  %i.p = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.3079.0.us, %bb.e ] ; 3 uses
  %i.q = phi i64 [ %i.at, %.sink.split.i.us ], [ %i.n, %bb.e ]
  %i.r = phi i64 [ %.ph72.i.us, %.sink.split.i.us ], [ %.sroa.18.0.us, %bb.e ] ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !5483, !noundef !17
  %i.u = and i8 %i.t, 63
  %i.v = zext nneg i8 %i.u to i64
  %i.w = shl nuw i64 1, %i.v
  %i.x = and i64 %i.w, %.sroa.7118.0.copyload
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i51.us
  %.sroa.0.0.i.i53.us = call i64 @llvm.umax.i64(i64 %i.p, i64 %.sroa.4115.0.copyload) ; 4 uses
  %umax50.i54.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i53.us, i64 %.sroa.15.0.copyload)
  %exitcond.not.i56.us433.not = icmp ult i64 %.sroa.0.0.i.i53.us, %.sroa.15.0.copyload
  br i1 %exitcond.not.i56.us433.not, label %.lr.ph, label %.preheader149.us.preheader

bb.g:                                             ; preds = %bb.h
  %i.z = add i64 %.sroa.02.0.i55.us434, 1         ; 2 uses
  %exitcond.not.i56.us = icmp eq i64 %i.z, %umax50.i54.us
  br i1 %exitcond.not.i56.us, label %.preheader149.us.preheader, label %.lr.ph

.preheader149.us.preheader:                       ; preds = %bb.g, %bb.f
  %i.aa = icmp ult i64 %i.p, %.sroa.4115.0.copyload
  br i1 %i.aa, label %.lr.ph436, label %.loopexit.i.us

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.02.0.i55.us434 = phi i64 [ %i.z, %bb.g ], [ %.sroa.0.0.i.i53.us, %bb.f ] ; 4 uses
  %i.ab = add i64 %.sroa.02.0.i55.us434, %i.r     ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %.sroa.13124.0.copyload
  br i1 %i.ac, label %bb.h, label %.split.us

bb.h:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i55.us434
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !5484, !noundef !17
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.ab
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !5483, !noundef !17
  %.not22.i58.us = icmp eq i8 %i.ae, %i.ag
  br i1 %.not22.i58.us, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.reass.reass = add i64 %i.r, %invariant.op
  %i.ah = add i64 %.reass.reass, %.sroa.02.0.i55.us434
  br label %.sink.split.i.us

.preheader149.us:                                 ; preds = %bb.k
  %i.ai = icmp ult i64 %i.p, %i.aj
  br i1 %i.ai, label %.lr.ph436, label %.loopexit.i.us

.lr.ph436:                                        ; preds = %.preheader149.us.preheader, %.preheader149.us
  %.sroa.57.0.i59.us435 = phi i64 [ %i.aj, %.preheader149.us ], [ %.sroa.4115.0.copyload, %.preheader149.us.preheader ]
  %i.aj = add i64 %.sroa.57.0.i59.us435, -1       ; 6 uses
  %i.ak = icmp ult i64 %i.aj, %.sroa.15.0.copyload
  br i1 %i.ak, label %bb.j, label %.split.us.invoke

bb.j:                                             ; preds = %.lr.ph436
  %i.al = add i64 %i.aj, %i.r                     ; 3 uses
  %i.am = icmp ult i64 %i.al, %.sroa.13124.0.copyload
  br i1 %i.am, label %bb.k, label %.split.us.invoke

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.aj
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !5484, !noundef !17
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.al
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !5483, !noundef !17
  %.not.i60.us = icmp eq i8 %i.ao, %i.aq
  br i1 %.not.i60.us, label %.preheader149.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = add i64 %i.r, %.sroa.6117.0.copyload
  br label %.sink.split.i.us

bb.m:                                             ; preds = %.lr.ph.i51.us
  %i.as = add i64 %i.r, %.sroa.15.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.m, %bb.l, %bb.i
  %.sink.i.us = phi i64 [ %i.i, %bb.l ], [ 0, %bb.i ], [ 0, %bb.m ]
  %.ph72.i.us = phi i64 [ %i.ar, %bb.l ], [ %i.ah, %bb.i ], [ %i.as, %bb.m ] ; 2 uses
  %i.at = add i64 %.ph72.i.us, %i.h               ; 2 uses
  %i.au = icmp ult i64 %i.at, %.sroa.13124.0.copyload
  br i1 %i.au, label %.lr.ph.i51.us, label %.critedge25

bb.n:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !5485)
  call void @llvm.experimental.noalias.scope.decl(metadata !5486)
  br i1 %i.o, label %.lr.ph.i44.us, label %.critedge25

.lr.ph.i44.us:                                    ; preds = %bb.n, %bb.u
  %i.av = phi i64 [ %i.bw, %bb.u ], [ %i.n, %bb.n ]
  %i.aw = phi i64 [ %i.bv, %bb.u ], [ %.sroa.18.0.us, %bb.n ] ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !5485, !noundef !17
  %i.az = and i8 %i.ay, 63
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = and i64 %i.bb, %.sroa.7118.0.copyload
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.t, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i44.us
  br i1 %exitcond.not.i.us438.not, label %.lr.ph440, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.o
  %i.be = add i64 %.sroa.02.0.i.us439, 1          ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.be, %umax50.i.us
  br i1 %exitcond.not.i.us, label %.preheader.us.preheader, label %.lr.ph440

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not147.us441, label %.loopexit.i.us, label %.lr.ph443

.lr.ph440:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i.us439 = phi i64 [ %i.be, %.preheader ], [ %.sroa.4115.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.bf = add i64 %.sroa.02.0.i.us439, %i.aw      ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %.sroa.13124.0.copyload
  br i1 %i.bg, label %bb.o, label %.split213.us

bb.o:                                             ; preds = %.lr.ph440
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i.us439
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !5486, !noundef !17
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.bf
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !5485, !noundef !17
  %.not22.i.us = icmp eq i8 %i.bi, %i.bk
  br i1 %.not22.i.us, label %.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.reass374.reass = add i64 %i.aw, %invariant.op563
  %i.bl = add i64 %.reass374.reass, %.sroa.02.0.i.us439
  br label %bb.u

.preheader.us:                                    ; preds = %bb.r
  %.not147.us = icmp eq i64 %i.bm, 0
  br i1 %.not147.us, label %.loopexit.i.us, label %.lr.ph443

.lr.ph443:                                        ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.57.0.i.us442 = phi i64 [ %i.bm, %.preheader.us ], [ %.sroa.4115.0.copyload, %.preheader.us.preheader ]
  %i.bm = add i64 %.sroa.57.0.i.us442, -1         ; 5 uses
  br i1 %.first_iter, label %bb.q, label %.split.us.invoke

bb.q:                                             ; preds = %.lr.ph443
  %i.bn = add i64 %i.bm, %i.aw                    ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %.sroa.13124.0.copyload
  br i1 %i.bo, label %bb.r, label %.split.us.invoke

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.bm
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !5486, !noundef !17
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.12123.0.copyload, i64 %i.bn
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !5485, !noundef !17
  %.not.i.us = icmp eq i8 %i.bq, %i.bs
  br i1 %.not.i.us, label %.preheader.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = add i64 %.sroa.6117.0.copyload, %i.aw
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.i44.us
  %i.bu = add i64 %i.aw, %.sroa.15.0.copyload
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.p
  %i.bv = phi i64 [ %i.bl, %bb.p ], [ %i.bt, %bb.s ], [ %i.bu, %bb.t ] ; 2 uses
  %i.bw = add i64 %i.bv, %i.h                     ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %.sroa.13124.0.copyload
  br i1 %i.bx, label %.lr.ph.i44.us, label %.critedge25

.loopexit.i.us:                                   ; preds = %.preheader149.us.preheader, %.preheader.us.preheader, %.preheader149.us, %.preheader.us
  %.sroa.7126.1.us = phi i64 [ %i.aw, %.preheader.us ], [ %i.r, %.preheader149.us ], [ %i.aw, %.preheader.us.preheader ], [ %i.r, %.preheader149.us.preheader ] ; 2 uses
  %.sroa.3079.1.us = phi i64 [ -1, %.preheader.us ], [ 0, %.preheader149.us ], [ -1, %.preheader.us.preheader ], [ 0, %.preheader149.us.preheader ]
  %.sroa.11127.1.us = add i64 %.sroa.7126.1.us, %.sroa.15.0.copyload ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.0.us
  call void @llvm.experimental.noalias.scope.decl(metadata !5487)
end_hunk_0
begin_hunk_1_@_ZN5insta3env15get_tool_config17h016556f261d07703E:bb.a
  br i1 %i.mw, label %bb.fc, label %bb.fd, !prof !22

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 368) #54
          to label %.noexc.i.i unwind label %bb.hk, !noalias !6161

.noexc.i.i:                                       ; preds = %bb.fc
  unreachable

bb.fd:                                            ; preds = %bb.fb
  store ptr null, ptr %i.mv, align 8, !noalias !6161
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 362
  store ptr %i.mv, ptr %i.at, align 8, !alias.scope !6152, !noalias !6162
  store i64 0, ptr %i.au, align 8, !alias.scope !6152, !noalias !6162
  store i16 1, ptr %i.mx, align 2, !noalias !6163
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store i64 %1, ptr %i.my, align 8, !noalias !6164
  %.sroa.521.0..sroa_idx22.i.i = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store ptr %.sroa.10.0.i.i, ptr %.sroa.521.0..sroa_idx22.i.i, align 8, !noalias !6164
  %.sroa.6.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  store i64 %1, ptr %.sroa.6.0..sroa_idx24.i.i, align 8, !noalias !6164
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 272
  store ptr %i.ll, ptr %i.mz, align 8, !noalias !6163
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h9a1e7f1187879c36E.exit.thread"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hdd23626ae1c2607aE.exit.i": ; preds = %._crit_edge393
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6159
  store ptr %i.ll, ptr %i.i, align 8, !noalias !6165
  %.sink62.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %.sink62.i.sroa.gep92.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %.sink61.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sink61.i.sroa.gep94.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6166
  store ptr %i.ll, ptr %i.g, align 8, !noalias !6167
  %i.nb = icmp ugt i16 %i.mb, 10
  br i1 %i.nb, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hdd23626ae1c2607aE.exit.i"
  %i.nc = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i, ptr %i.f, align 8, !noalias !6167
  %i.nd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.nd, align 8, !noalias !6167
  %i.ne = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  br i1 %i.nc, label %.invoke.i.i.i.i, label %bb.fi

bb.ff:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hdd23626ae1c2607aE.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !6168)
  %.not.i.i.i.i.not.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, %i.mc
  %i.nf = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %.sroa.4.0.i.ph.i.i.i ; 7 uses
  br i1 %.not.i.i.i.i.not.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  store i64 %1, ptr %i.nf, align 8, !alias.scope !6169, !noalias !6170
  %.sroa.916.0..sroa_idx19.i.i.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.916.0..sroa_idx19.i.i.i, align 8, !alias.scope !6169, !noalias !6170
  %.sroa.1125.0..sroa_idx28.i.i.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store i64 %1, ptr %.sroa.1125.0..sroa_idx28.i.i.i, align 8, !alias.scope !6169, !noalias !6170
  br label %.thread.i.i.i

bb.fh:                                            ; preds = %bb.ff
  %i.ng = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i, 1 ; 2 uses
  %i.nh = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %i.ng
  %i.ni = sub nuw nsw i64 %i.mc, %.sroa.4.0.i.ph.i.i.i ; 2 uses
  %i.nj = mul nuw nsw i64 %i.ni, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nh, ptr nonnull align 8 %i.nf, i64 %i.nj, i1 false), !alias.scope !6171, !noalias !6172
  store i64 %1, ptr %i.nf, align 8, !alias.scope !6169, !noalias !6170
  %.sroa.916.0..sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.916.0..sroa_idx17.i.i.i, align 8, !alias.scope !6169, !noalias !6170
  %.sroa.1125.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store i64 %1, ptr %.sroa.1125.0..sroa_idx26.i.i.i, align 8, !alias.scope !6169, !noalias !6170
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 272 ; 2 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %.sroa.4.0.i.ph.i.i.i
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.ng
  %i.nn = shl nuw nsw i64 %i.ni, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nm, ptr nonnull align 8 %i.nl, i64 %i.nn, i1 false), !alias.scope !6173, !noalias !6172
  br label %.thread.i.i.i

bb.fi:                                            ; preds = %bb.fe
  switch i64 %.sroa.4.0.i.ph.i.i.i, label %bb.fj [
    i64 5, label %.invoke.i.i.i.i
    i64 6, label %bb.fk
  ]

.invoke.i.i.i.i:                                  ; preds = %bb.fi, %bb.fe
  %.sink.i.i.i.i29 = phi i64 [ %.sroa.4.0.i.ph.i.i.i, %bb.fi ], [ 4, %bb.fe ]
  store i64 %.sink.i.i.i.i29, ptr %i.ne, align 8, !noalias !6167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6167
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h17ba06540d407e11E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.fm unwind label %bb.fp, !noalias !6174

bb.fj:                                            ; preds = %bb.fi
  store i64 6, ptr %i.ne, align 8, !noalias !6167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6167
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h17ba06540d407e11E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.fl unwind label %bb.fp, !noalias !6174

bb.fk:                                            ; preds = %bb.fi
  store i64 5, ptr %i.ne, align 8, !noalias !6167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6167
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h17ba06540d407e11E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.fm unwind label %bb.fp, !noalias !6174

bb.fl:                                            ; preds = %bb.fj
  %i.no = add nsw i64 %.sroa.4.0.i.ph.i.i.i, -7
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk, %.invoke.i.i.i.i
  %.sink62.i.sroa.phi.i.i.i = phi ptr [ %.sink62.i.sroa.gep.i.i.i, %.invoke.i.i.i.i ], [ %.sink62.i.sroa.gep92.i.i.i, %bb.fk ], [ %.sink62.i.sroa.gep92.i.i.i, %bb.fl ]
  %.sroa.10.0.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i, %.invoke.i.i.i.i ], [ 0, %bb.fk ], [ %i.no, %bb.fl ] ; 6 uses
  %i.np = load ptr, ptr %.sink62.i.sroa.phi.i.i.i, align 8, !noalias !6167, !nonnull !17, !noundef !17 ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 362 ; 2 uses
  %i.nr = load i16, ptr %i.nq, align 2, !noalias !6175, !noundef !17 ; 2 uses
  %i.ns = zext i16 %i.nr to i64                   ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6176)
  %.not.i40.not.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i, %i.ns
  %i.nu = getelementptr inbounds nuw [24 x i8], ptr %i.nt, i64 %.sroa.10.0.i.i.i.i ; 7 uses
  br i1 %.not.i40.not.i.i.i.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  store i64 %1, ptr %i.nu, align 8, !alias.scope !6177, !noalias !6178
  %.sroa.916.0..sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.916.0..sroa_idx21.i.i.i, align 8, !alias.scope !6177, !noalias !6178
  %.sroa.1125.0..sroa_idx30.i.i.i = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store i64 %1, ptr %.sroa.1125.0..sroa_idx30.i.i.i, align 8, !alias.scope !6177, !noalias !6178
  br label %bb.ft

bb.fo:                                            ; preds = %bb.fm
  %i.nv = add nuw nsw i64 %.sroa.10.0.i.i.i.i, 1  ; 2 uses
  %i.nw = getelementptr inbounds nuw [24 x i8], ptr %i.nt, i64 %i.nv
  %i.nx = sub nuw nsw i64 %i.ns, %.sroa.10.0.i.i.i.i ; 2 uses
  %i.ny = mul nuw nsw i64 %i.nx, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nw, ptr nonnull align 8 %i.nu, i64 %i.ny, i1 false), !alias.scope !6179, !noalias !6175
  store i64 %1, ptr %i.nu, align 8, !alias.scope !6177, !noalias !6178
  %.sroa.916.0..sroa_idx23.i.i.i = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.916.0..sroa_idx23.i.i.i, align 8, !alias.scope !6177, !noalias !6178
  %.sroa.1125.0..sroa_idx32.i.i.i = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store i64 %1, ptr %.sroa.1125.0..sroa_idx32.i.i.i, align 8, !alias.scope !6177, !noalias !6178
  %i.nz = getelementptr inbounds nuw i8, ptr %i.np, i64 272 ; 2 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %.sroa.10.0.i.i.i.i
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.nv
  %i.oc = shl nuw nsw i64 %i.nx, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ob, ptr nonnull align 8 %i.oa, i64 %i.oc, i1 false), !alias.scope !6180, !noalias !6175
  br label %bb.ft

.thread.i.i.i:                                    ; preds = %bb.fh, %bb.fg
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 272
  %i.oe = add nuw nsw i16 %i.mb, 1
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %.sroa.4.0.i.ph.i.i.i
  store ptr %i.ll, ptr %i.of, align 8, !alias.scope !6173, !noalias !6172
  store i16 %i.oe, ptr %i.na, align 2, !noalias !6172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6166
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h9a1e7f1187879c36E.exit.thread"

bb.fp:                                            ; preds = %bb.fk, %bb.fj, %.invoke.i.i.i.i
  %i.og = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oh = atomicrmw add ptr %i.ll, i64 -1 release, align 8, !noalias !6181
  %i.oi = icmp eq i64 %i.oh, 1
  br i1 %i.oi, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2a159089507e2e4fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g), !noalias !6174
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  br i1 %i.lp, label %.body30, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6182
  br label %.body30

bb.ft:                                            ; preds = %bb.fo, %bb.fn
  %i.oj = getelementptr inbounds nuw i8, ptr %i.np, i64 272
  %i.ok = add i16 %i.nr, 1
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %.sroa.10.0.i.i.i.i
  store ptr %i.ll, ptr %i.ol, align 8, !alias.scope !6180, !noalias !6175
  store i16 %i.ok, ptr %i.nq, align 2, !noalias !6175
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.e, align 8, !noalias !6183 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !6183 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6183 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6183 ; 2 uses
  %.sroa.76.0.copyload.i.i.i = load ptr, ptr %.sink62.i.sroa.gep.i.i.i, align 8, !noalias !6183 ; 4 uses
  %.sroa.8.0.copyload.i.i.i = load i64, ptr %.sink61.i.sroa.gep.i.i.i, align 8, !noalias !6183 ; 2 uses
  %.sroa.9.0.copyload.i.i.i = load ptr, ptr %.sink62.i.sroa.gep92.i.i.i, align 8, !noalias !6183 ; 3 uses
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sink61.i.sroa.gep94.i.i.i, align 8, !noalias !6183 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6166
  %.not.i.i.i = icmp eq i64 %.sroa.03.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h9a1e7f1187879c36E.exit.thread", label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.76.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i) ]
  %i.om = load ptr, ptr %.sroa.76.0.copyload.i.i.i, align 8, !noalias !6184, !noundef !17 ; 2 uses
  %.not.i174.i.i.i = icmp eq ptr %i.om, null
  br i1 %.not.i174.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.fu
  %i.on = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.sroa.842.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.845.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.948.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.1154.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.842.sroa.6.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.842.sroa.7.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.gj

._crit_edge.i.i.i:                                ; preds = %bb.hi, %bb.fu
  %.sroa.16.0.i.i.i = phi ptr [ %.sroa.7.sroa.6.0.copyload.i.i.i, %bb.fu ], [ %.sroa.842.sroa.7.0.i.i.i, %bb.hi ] ; 5 uses
  %.sroa.15.0.i.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i, %bb.fu ], [ %.sroa.842.sroa.6.0.i.i.i, %bb.hi ] ; 2 uses
  %.sroa.12.0.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i, %bb.fu ], [ %.sroa.842.sroa.0.0.i.i.i, %bb.hi ] ; 5 uses
  %.sroa.0.0.i.i8.i = phi i64 [ %.sroa.03.0.copyload.i.i.i, %bb.fu ], [ %.sroa.039.0.i.i.i, %bb.hi ] ; 6 uses
  %.lcssa139.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i, %bb.fu ], [ %.sroa.1154.0.copyload56.i.i.i, %bb.hi ] ; 2 uses
  %.lcssa134.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i, %bb.fu ], [ %.sroa.1051.0.i.i.i, %bb.hi ] ; 4 uses
  %.lcssa129.i.i.i = phi i64 [ %.sroa.8.0.copyload.i.i.i, %bb.fu ], [ %.sroa.948.0.i.i.i, %bb.hi ]
  %.lcssa124.i.i.i = phi ptr [ %.sroa.76.0.copyload.i.i.i, %bb.fu ], [ %.sroa.845.0.i.i.i, %bb.hi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6166
  store i64 %.sroa.0.0.i.i8.i, ptr %i.h, align 8, !noalias !6166
  %.sroa.02.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.12.0.i.i.i, ptr %.sroa.02.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !6166
  %.sroa.02.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.15.0.i.i.i, ptr %.sroa.02.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !6166
  %.sroa.02.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %.sroa.16.0.i.i.i, ptr %.sroa.02.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !6166
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %.lcssa124.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !6166
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %.lcssa129.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !noalias !6166
  %.sroa.65.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %.lcssa134.i.i.i, ptr %.sroa.65.0..sroa_idx.i.i.i, align 8, !noalias !6166
  %.sroa.76.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %.lcssa139.i.i.i, ptr %.sroa.76.0..sroa_idx.i.i.i, align 8, !noalias !6166
  %i.oq = load ptr, ptr %i.at, align 8, !alias.scope !6152, !noalias !6185, !noundef !17 ; 4 uses
  %.not.i23.i.i.i = icmp eq ptr %i.oq, null
  br i1 %.not.i23.i.i.i, label %bb.fv, label %bb.fx, !prof !22

bb.fv:                                            ; preds = %._crit_edge.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #54
          to label %bb.fw unwind label %bb.gf, !noalias !6186

bb.fw:                                            ; preds = %bb.fv
  unreachable

bb.fx:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6187)
  %i.or = load i64, ptr %i.au, align 8, !alias.scope !6188, !noalias !6185, !noundef !17 ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6189
  %i.os = call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 464, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !6189 ; 12 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %bb.fy, label %bb.ga, !prof !22

bb.fy:                                            ; preds = %bb.fx
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 464) #54
          to label %.noexc.i.i.i.i.i unwind label %bb.fz, !noalias !6189

.noexc.i.i.i.i.i:                                 ; preds = %bb.fy
  unreachable

bb.fz:                                            ; preds = %bb.fy
  %i.ou = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

bb.ga:                                            ; preds = %bb.fx
  store ptr null, ptr %i.os, align 8, !noalias !6189
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 362 ; 2 uses
  store i16 0, ptr %i.ov, align 2, !noalias !6189
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 368
  store ptr %i.oq, ptr %i.ow, align 8, !noalias !6189
  %i.ox = add i64 %i.or, 1
  store ptr %i.os, ptr %i.oq, align 8, !noalias !6190
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oq, i64 360
  store i16 0, ptr %i.oy, align 8, !noalias !6191
  store ptr %i.os, ptr %i.at, align 8, !alias.scope !6188, !noalias !6185
  store i64 %i.ox, ptr %i.au, align 8, !alias.scope !6188, !noalias !6185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6192
  store ptr %.sroa.16.0.i.i.i, ptr %i.d, align 8, !noalias !6193
  %i.oz = icmp eq i64 %.lcssa139.i.i.i, %i.or
  br i1 %i.oz, label %bb.hj, label %.invoke.i.i.i.i.i, !prof !23

.invoke.i.i.i.i.i:                                ; preds = %bb.ga
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #54
          to label %.cont.i.i.i.i.i unwind label %bb.gb, !noalias !6194

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

bb.gb:                                            ; preds = %.invoke.i.i.i.i.i
  %i.pa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pb = atomicrmw add ptr %.sroa.16.0.i.i.i, i64 -1 release, align 8, !noalias !6195
  %i.pc = icmp eq i64 %i.pb, 1
  br i1 %i.pc, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2a159089507e2e4fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d), !noalias !6194
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.pd = icmp eq i64 %.sroa.0.0.i.i8.i, 0
  br i1 %i.pd, label %.body30, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.0.i.i.i, i64 noundef %.sroa.0.0.i.i8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6196
  br label %.body30

bb.gf:                                            ; preds = %bb.fv
  %i.pe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pf = icmp eq i64 %.sroa.0.0.i.i8.i, 0
  br i1 %i.pf, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.0.i.i.i, i64 noundef %.sroa.0.0.i.i8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6197
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.pg = atomicrmw add ptr %.sroa.16.0.i.i.i, i64 -1 release, align 8, !noalias !6198
  %i.ph = icmp eq i64 %i.pg, 1
  br i1 %i.ph, label %bb.gi, label %.body30

bb.gi:                                            ; preds = %bb.gh
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2a159089507e2e4fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.02.sroa.6.0..sroa_idx.i.i.i), !noalias !6199
  br label %.body30

bb.gj:                                            ; preds = %bb.hi, %.lr.ph.i.i.i
  %.sroa.16.1.i.i.i = phi ptr [ %.sroa.7.sroa.6.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.842.sroa.7.0.i.i.i, %bb.hi ] ; 9 uses
  %.sroa.15.1.i.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.842.sroa.6.0.i.i.i, %bb.hi ] ; 6 uses
  %.sroa.12.1.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.842.sroa.0.0.i.i.i, %bb.hi ] ; 8 uses
  %.sroa.1154.0196.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.1154.0.copyload56.i.i.i, %bb.hi ]
  %.sroa.1051.0192.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.1051.0.i.i.i, %bb.hi ] ; 3 uses
  %.sroa.948.0188.i.i.i = phi i64 [ %.sroa.8.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.948.0.i.i.i, %bb.hi ] ; 2 uses
  %.sroa.845.0184.i.i.i = phi ptr [ %.sroa.76.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.845.0.i.i.i, %bb.hi ]
  %.sroa.039.0180.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.039.0.i.i.i, %bb.hi ] ; 8 uses
  %i.pi = phi ptr [ %i.om, %.lr.ph.i.i.i ], [ %i.wg, %bb.hi ] ; 13 uses
  %i.pj = add i64 %.sroa.948.0188.i.i.i, 1
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.845.0184.i.i.i, i64 360
  %i.pl = load i16, ptr %i.pk, align 8, !noalias !6184 ; 5 uses
  %i.pm = zext i16 %i.pl to i64                   ; 17 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.1.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6166
  store ptr %.sroa.16.1.i.i.i, ptr %i.c, align 8, !noalias !6200
  %i.pn = icmp eq i64 %.sroa.1154.0196.i.i.i, %.sroa.948.0188.i.i.i
  br i1 %i.pn, label %bb.gl, label %bb.gk, !prof !23

bb.gk:                                            ; preds = %bb.gj
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @217, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #54
          to label %bb.gm unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !6201

bb.gl:                                            ; preds = %bb.gj
  %i.po = getelementptr inbounds nuw i8, ptr %i.pi, i64 362
  %i.pp = load i16, ptr %i.po, align 2, !noalias !6201, !noundef !17 ; 4 uses
  %i.pq = icmp ult i16 %i.pp, 11
  br i1 %i.pq, label %bb.go, label %bb.gn

bb.gm:                                            ; preds = %bb.gk
  unreachable

bb.gn:                                            ; preds = %bb.gl
  %i.pr = icmp ult i16 %i.pl, 5
  store ptr %i.pi, ptr %i.b, align 8, !noalias !6200
  store i64 %i.pj, ptr %i.on, align 8, !noalias !6200
  br i1 %i.pr, label %.invoke.i34.i.i.i, label %bb.gs

bb.go:                                            ; preds = %bb.gl
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pi, i64 362
  %i.pt = zext nneg i16 %i.pp to i64              ; 4 uses
  %i.pu = add nuw nsw i16 %i.pp, 1
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6202)
  %i.pw = add nuw nsw i64 %i.pm, 1                ; 7 uses
  %.not.i.i36.not.i.i.i = icmp ult i16 %i.pl, %i.pp
  %i.px = getelementptr inbounds nuw [24 x i8], ptr %i.pv, i64 %i.pm ; 7 uses
  br i1 %.not.i.i36.not.i.i.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  store i64 %.sroa.039.0180.i.i.i, ptr %i.px, align 8, !alias.scope !6203, !noalias !6204
  %.sroa.1164.0..sroa_idx75.i.i.i = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store ptr %.sroa.12.1.i.i.i, ptr %.sroa.1164.0..sroa_idx75.i.i.i, align 8, !alias.scope !6203, !noalias !6204
  %.sroa.13.0..sroa_idx87.i.i.i = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  store i64 %.sroa.15.1.i.i.i, ptr %.sroa.13.0..sroa_idx87.i.i.i, align 8, !alias.scope !6203, !noalias !6204
  %i.py = getelementptr inbounds nuw i8, ptr %i.pi, i64 272
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %i.pm
  store ptr %.sroa.16.1.i.i.i, ptr %i.pz, align 8, !alias.scope !6205, !noalias !6206
  br label %bb.gr

end_hunk_1
begin_hunk_2_@_ZN5insta3env15get_tool_config17h016556f261d07703E:bb.a
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %i.ti
  %i.tp = load ptr, ptr %i.to, align 8, !noalias !6216, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ru, ptr %i.tp, align 8, !noalias !6217
  %i.tq = trunc nuw nsw i64 %i.ti to i16
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 360
  store i16 %i.tq, ptr %i.tr, align 8, !noalias !6217
  %i.ts = add nuw nsw i64 %.sroa.0.06.i.i41.i.i.i.i, 4 ; 2 uses
  %i.tt = icmp ult i64 %.sroa.0.06.i.i41.i.i.i.i, 9
  call void @llvm.assume(i1 %i.tt)
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %i.tn
  %i.tv = load ptr, ptr %i.tu, align 8, !noalias !6216, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ru, ptr %i.tv, align 8, !noalias !6217
  %i.tw = trunc nuw nsw i64 %i.tn to i16
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 360
  store i16 %i.tw, ptr %i.tx, align 8, !noalias !6217
  %exitcond.not.i.i42.i.i.i.i.3 = icmp eq i64 %i.ts, %i.sq
  br i1 %exitcond.not.i.i42.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit43.i.i.i.i", label %.lr.ph.i.i40.i.i.i.i

bb.gz:                                            ; preds = %bb.hd, %bb.gu
  %.sroa.10.1.i.i.i.i = phi i64 [ %i.wc, %bb.hd ], [ 0, %bb.gu ] ; 9 uses
  %i.ty = load ptr, ptr %i.op, align 8, !noalias !6200, !nonnull !17, !noundef !17 ; 12 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 362 ; 2 uses
  %i.ua = load i16, ptr %i.tz, align 2, !noalias !6218, !noundef !17 ; 2 uses
  %i.ub = zext i16 %i.ua to i64                   ; 5 uses
  %i.uc = add i16 %i.ua, 1
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ty, i64 8 ; 2 uses
  %i.ue = add nuw nsw i64 %.sroa.10.1.i.i.i.i, 1  ; 7 uses
  %.not.i44.not.i.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i.i, %i.ub
  %i.uf = getelementptr inbounds nuw [24 x i8], ptr %i.ud, i64 %.sroa.10.1.i.i.i.i ; 7 uses
  br i1 %.not.i44.not.i.i.i.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  store i64 %.sroa.039.0180.i.i.i, ptr %i.uf, align 8, !noalias !6212
  %.sroa.1164.0..sroa_idx65.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  store ptr %.sroa.12.1.i.i.i, ptr %.sroa.1164.0..sroa_idx65.i.i.i, align 8, !noalias !6212
  %.sroa.13.0..sroa_idx77.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  store i64 %.sroa.15.1.i.i.i, ptr %.sroa.13.0..sroa_idx77.i.i.i, align 8, !noalias !6212
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ty, i64 272
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %.sroa.10.1.i.i.i.i
  store ptr %.sroa.16.1.i.i.i, ptr %i.uh, align 8, !alias.scope !6219, !noalias !6218
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gz
  %i.ui = getelementptr inbounds nuw [24 x i8], ptr %i.ud, i64 %i.ue
  %i.uj = sub nuw nsw i64 %i.ub, %.sroa.10.1.i.i.i.i ; 2 uses
  %i.uk = mul nuw nsw i64 %i.uj, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ui, ptr nonnull align 8 %i.uf, i64 %i.uk, i1 false), !alias.scope !6220, !noalias !6218
  store i64 %.sroa.039.0180.i.i.i, ptr %i.uf, align 8, !noalias !6212
  %.sroa.1164.0..sroa_idx67.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  store ptr %.sroa.12.1.i.i.i, ptr %.sroa.1164.0..sroa_idx67.i.i.i, align 8, !noalias !6212
  %.sroa.13.0..sroa_idx79.i.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  store i64 %.sroa.15.1.i.i.i, ptr %.sroa.13.0..sroa_idx79.i.i.i, align 8, !noalias !6212
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ty, i64 272 ; 2 uses
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.ul, i64 %.sroa.10.1.i.i.i.i ; 2 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.ul, i64 %i.ue
  %i.uo = shl nuw nsw i64 %i.uj, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.un, ptr nonnull align 8 %i.um, i64 %i.uo, i1 false), !alias.scope !6219, !noalias !6218
  store ptr %.sroa.16.1.i.i.i, ptr %i.um, align 8, !alias.scope !6219, !noalias !6218
  %i.up = getelementptr inbounds nuw i8, ptr %i.ty, i64 368 ; 2 uses
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.up, i64 %i.ue
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.up, i64 %.sroa.10.1.i.i.i.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.us, ptr nonnull align 8 %i.uq, i64 %i.uo, i1 false), !alias.scope !6221, !noalias !6218
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ty, i64 368 ; 6 uses
  %i.uu = add nuw nsw i64 %i.ub, 2                ; 2 uses
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.ue
  store ptr %.sroa.1051.0192.i.i.i, ptr %i.uv, align 8, !alias.scope !6221, !noalias !6218
  store i16 %i.uc, ptr %i.tz, align 2, !noalias !6218
  %i.uw = icmp samesign ult i64 %i.ue, %i.uu
  br i1 %i.uw, label %.lr.ph.i.i45.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit48.i.i.i.i"

.lr.ph.i.i45.i.i.i.i.preheader:                   ; preds = %bb.hc
  %i.ux = add nuw nsw i64 %i.ub, 1
  %i.uy = sub nsw i64 %i.ux, %.sroa.10.1.i.i.i.i
  %i.uz = sub nsw i64 %i.ub, %.sroa.10.1.i.i.i.i
  %xtraiter = and i64 %i.uy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i45.i.i.i.i.prol.loopexit, label %.lr.ph.i.i45.i.i.i.i.prol

.lr.ph.i.i45.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i45.i.i.i.i.preheader, %.lr.ph.i.i45.i.i.i.i.prol
  %.sroa.0.06.i.i46.i.i.i.i.prol = phi i64 [ %i.va, %.lr.ph.i.i45.i.i.i.i.prol ], [ %i.ue, %.lr.ph.i.i45.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i45.i.i.i.i.prol ], [ 0, %.lr.ph.i.i45.i.i.i.i.preheader ]
  %i.va = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i.prol, 1 ; 2 uses
  %i.vb = icmp samesign ult i64 %.sroa.0.06.i.i46.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.vb)
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %.sroa.0.06.i.i46.i.i.i.i.prol
  %i.vd = load ptr, ptr %i.vc, align 8, !noalias !6222, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ty, ptr %i.vd, align 8, !noalias !6223
  %i.ve = trunc nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i.prol to i16
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 360
  store i16 %i.ve, ptr %i.vf, align 8, !noalias !6223
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i45.i.i.i.i.prol.loopexit, label %.lr.ph.i.i45.i.i.i.i.prol, !llvm.loop !6065

.lr.ph.i.i45.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i45.i.i.i.i.prol, %.lr.ph.i.i45.i.i.i.i.preheader
  %.sroa.0.06.i.i46.i.i.i.i.unr = phi i64 [ %i.ue, %.lr.ph.i.i45.i.i.i.i.preheader ], [ %i.va, %.lr.ph.i.i45.i.i.i.i.prol ]
  %i.vg = icmp ult i64 %i.uz, 3
  br i1 %i.vg, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit48.i.i.i.i", label %.lr.ph.i.i45.i.i.i.i

.lr.ph.i.i45.i.i.i.i:                             ; preds = %.lr.ph.i.i45.i.i.i.i.prol.loopexit, %.lr.ph.i.i45.i.i.i.i
  %.sroa.0.06.i.i46.i.i.i.i = phi i64 [ %i.vw, %.lr.ph.i.i45.i.i.i.i ], [ %.sroa.0.06.i.i46.i.i.i.i.unr, %.lr.ph.i.i45.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.vh = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 1 ; 2 uses
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %.sroa.0.06.i.i46.i.i.i.i
  %i.vj = load ptr, ptr %i.vi, align 8, !noalias !6222, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ty, ptr %i.vj, align 8, !noalias !6223
  %i.vk = trunc nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i to i16
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 360
  store i16 %i.vk, ptr %i.vl, align 8, !noalias !6223
  %i.vm = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 2 ; 2 uses
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.vh
  %i.vo = load ptr, ptr %i.vn, align 8, !noalias !6222, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ty, ptr %i.vo, align 8, !noalias !6223
  %i.vp = trunc nuw nsw i64 %i.vh to i16
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 360
  store i16 %i.vp, ptr %i.vq, align 8, !noalias !6223
  %i.vr = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 3 ; 2 uses
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.vm
  %i.vt = load ptr, ptr %i.vs, align 8, !noalias !6222, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ty, ptr %i.vt, align 8, !noalias !6223
  %i.vu = trunc nuw nsw i64 %i.vm to i16
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 360
  store i16 %i.vu, ptr %i.vv, align 8, !noalias !6223
  %i.vw = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 4 ; 2 uses
  %i.vx = icmp ult i64 %.sroa.0.06.i.i46.i.i.i.i, 9
  call void @llvm.assume(i1 %i.vx)
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.vr
  %i.vz = load ptr, ptr %i.vy, align 8, !noalias !6222, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ty, ptr %i.vz, align 8, !noalias !6223
  %i.wa = trunc nuw nsw i64 %i.vr to i16
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 360
  store i16 %i.wa, ptr %i.wb, align 8, !noalias !6223
  %exitcond.not.i.i47.i.i.i.i.3 = icmp eq i64 %i.vw, %i.uu
  br i1 %exitcond.not.i.i47.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit48.i.i.i.i", label %.lr.ph.i.i45.i.i.i.i

bb.hd:                                            ; preds = %bb.gt
  %i.wc = add nsw i64 %i.pm, -7
  br label %bb.gz

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit48.i.i.i.i": ; preds = %.lr.ph.i.i45.i.i.i.i.prol.loopexit, %.lr.ph.i.i45.i.i.i.i, %bb.hc
  %.sroa.842.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.842.0..sroa_idx.i.i.i, align 8, !noalias !6224
  %.sroa.842.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.842.sroa.6.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6224
  %.sroa.842.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.842.sroa.7.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6224
  %.sroa.845.0.copyload.i.i.i = load ptr, ptr %.sroa.845.0..sroa_idx.i.i.i, align 8, !noalias !6224
  %.sroa.948.0.copyload.i.i.i = load i64, ptr %.sroa.948.0..sroa_idx.i.i.i, align 8, !noalias !6224
  br label %bb.hh

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit43.i.i.i.i": ; preds = %.lr.ph.i.i40.i.i.i.i.prol.loopexit, %.lr.ph.i.i40.i.i.i.i, %bb.gy
  %.sroa.842.sroa.0.0.copyload270.i.i.i = load ptr, ptr %.sroa.842.0..sroa_idx.i.i.i, align 8, !noalias !6224
  %.sroa.842.sroa.6.0.copyload271.i.i.i = load i64, ptr %.sroa.842.sroa.6.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6224
  %.sroa.842.sroa.7.0.copyload272.i.i.i = load ptr, ptr %.sroa.842.sroa.7.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6224
  %.sroa.948.0.copyload50.i.i.i = load i64, ptr %.sroa.948.0..sroa_idx.i.i.i, align 8, !noalias !6224
  %.sroa.1051.0.copyload53.i.i.i = load ptr, ptr %i.op, align 8, !noalias !6224
  br label %bb.hh

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i34.i.i.i, %bb.gt, %bb.gu, %bb.gk
  %lpad.loopexit.split-lp398 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wd = atomicrmw add ptr %.sroa.16.1.i.i.i, i64 -1 release, align 8, !noalias !6225
  %i.we = icmp eq i64 %i.wd, 1
  br i1 %i.we, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2a159089507e2e4fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c), !noalias !6201
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.wf = icmp eq i64 %.sroa.039.0180.i.i.i, 0
  br i1 %i.wf, label %.body30, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.1.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.1.i.i.i, i64 noundef %.sroa.039.0180.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6226
  br label %.body30

.thread112.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6166
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h9a1e7f1187879c36E.exit.thread"

bb.hh:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit43.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit48.i.i.i.i"
  %.sroa.842.sroa.0.0.i.i.i = phi ptr [ %.sroa.842.sroa.0.0.copyload270.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit43.i.i.i.i" ], [ %.sroa.842.sroa.0.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.842.sroa.6.0.i.i.i = phi i64 [ %.sroa.842.sroa.6.0.copyload271.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit43.i.i.i.i" ], [ %.sroa.842.sroa.6.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.842.sroa.7.0.i.i.i = phi ptr [ %.sroa.842.sroa.7.0.copyload272.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit43.i.i.i.i" ], [ %.sroa.842.sroa.7.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.1051.0.i.i.i = phi ptr [ %.sroa.1051.0.copyload53.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit43.i.i.i.i" ], [ %i.ty, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit48.i.i.i.i" ] ; 3 uses
  %.sroa.948.0.i.i.i = phi i64 [ %.sroa.948.0.copyload50.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit43.i.i.i.i" ], [ %.sroa.948.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.845.0.i.i.i = phi ptr [ %i.ru, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit43.i.i.i.i" ], [ %.sroa.845.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h8e62454146cc489dE.exit48.i.i.i.i" ] ; 4 uses
  %.sroa.039.0.i.i.i = load i64, ptr %i.a, align 8, !noalias !6224 ; 3 uses
  %.sroa.1154.0.copyload56.i.i.i = load i64, ptr %.sroa.1154.0..sroa_idx.i.i.i, align 8, !noalias !6224 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6166
  %.not16.i.i.i = icmp eq i64 %.sroa.039.0.i.i.i, -9223372036854775808
  br i1 %.not16.i.i.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h9a1e7f1187879c36E.exit.thread", label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.845.0.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1051.0.i.i.i) ]
  %i.wg = load ptr, ptr %.sroa.845.0.i.i.i, align 8, !noalias !6184, !noundef !17 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.wg, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i, label %bb.gj

bb.hj:                                            ; preds = %bb.ga
  store i16 1, ptr %i.ov, align 2, !noalias !6194
  %i.wh = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  store i64 %.sroa.0.0.i.i8.i, ptr %i.wh, align 8, !noalias !6186
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  store ptr %.sroa.12.0.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i, align 8, !noalias !6186
  %.sroa.6.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  store i64 %.sroa.15.0.i.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i.i, align 8, !noalias !6186
  %i.wi = getelementptr inbounds nuw i8, ptr %i.os, i64 272
  store ptr %.sroa.16.0.i.i.i, ptr %i.wi, align 8, !noalias !6194
  %i.wj = getelementptr inbounds nuw i8, ptr %i.os, i64 376
  store ptr %.lcssa134.i.i.i, ptr %i.wj, align 8, !noalias !6194
  store ptr %i.os, ptr %.lcssa134.i.i.i, align 8, !noalias !6227
  %i.wk = getelementptr inbounds nuw i8, ptr %.lcssa134.i.i.i, i64 360
  store i16 1, ptr %i.wk, align 8, !noalias !6227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6166
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h9a1e7f1187879c36E.exit.thread"

bb.hk:                                            ; preds = %bb.fc
  %i.wl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wm = atomicrmw add ptr %i.ll, i64 -1 release, align 8, !noalias !6228
  %i.wn = icmp eq i64 %i.wm, 1
  br i1 %i.wn, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2a159089507e2e4fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.i), !noalias !6161
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  br i1 %i.lp, label %.body30, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6229
  br label %.body30

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h9a1e7f1187879c36E.exit.thread": ; preds = %bb.hh, %bb.fd, %.thread.i.i.i, %bb.ft, %.thread112.i.i.i, %bb.hj
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24 ; 2 uses
  %i.wp = load i64, ptr %i.wo, align 8, !alias.scope !6152, !noalias !6162, !noundef !17
  %i.wq = add i64 %i.wp, 1
  store i64 %i.wq, ptr %i.wo, align 8, !alias.scope !6152, !noalias !6162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6159
  br label %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"

bb.ho:                                            ; preds = %bb.et
  call void @llvm.trap()
  unreachable

bb.hp:                                            ; preds = %bb.fa, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hb7a48eaccdd54deeE.exit.i.i"
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 272
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %.sroa.8.0.i.i.i.i389 ; 2 uses
  %i.wt = load ptr, ptr %i.ws, align 8, !noalias !6230, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ll, ptr %i.ws, align 8, !noalias !6230
  store ptr %i.wt, ptr %i.aa, align 8
  %i.wu = atomicrmw add ptr %i.wt, i64 -1 release, align 8, !noalias !6231
  %i.wv = icmp eq i64 %i.wu, 1
  br i1 %i.wv, label %bb.hq, label %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"

bb.hq:                                            ; preds = %bb.hp
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2a159089507e2e4fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.aa)
  br label %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"

"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit": ; preds = %bb.hq, %bb.hp, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h9a1e7f1187879c36E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br i1 %i.as, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32, label %bb.hr

bb.hr:                                            ; preds = %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"
  %i.ww = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.wx = and i64 %i.ww, 9223372036854775807
  %i.wy = icmp eq i64 %i.wx, 0
  br i1 %i.wy, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32, label %bb.hs, !prof !23

bb.hs:                                            ; preds = %bb.hr
  %i.wz = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.wz, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  store atomic i8 1, ptr %i.an monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32: ; preds = %bb.ht, %bb.hs, %bb.hr, %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"
  %i.xa = atomicrmw xchg ptr %.sroa.0.0.i.i, i32 0 release, align 4
  %i.xb = icmp eq i32 %i.xa, 2
  br i1 %i.xb, label %bb.hu, label %"_ZN4core3ptr183drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$$GT$17h450a86ba0230a52aE.exit", !prof !22

bb.hu:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.sroa.0.0.i.i)
  br label %"_ZN4core3ptr183drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$$GT$17h450a86ba0230a52aE.exit"

bb.hv:                                            ; preds = %.body
  %i.xc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN5insta3env19get_cargo_workspace17ha45e33e1c19dd782E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 15 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 15 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 10 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %i.k = alloca [200 x i8], align 8               ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 3 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 10 uses
  %i.t = alloca [200 x i8], align 8               ; 10 uses
  %i.u = alloca [56 x i8], align 8                ; 6 uses
  %i.v = alloca [56 x i8], align 8                ; 10 uses
  %i.w = alloca [32 x i8], align 8                ; 11 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h642343348153e75bE", i64 32) acquire, align 8 ; 2 uses
  %i.z = icmp ult i8 %i.y, 4
  tail call void @llvm.assume(i1 %i.z)
  %.not.i.i = icmp eq i8 %i.y, 2
  br i1 %.not.i.i, label %"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.aa = tail call fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17he193102fc3095ee6E"()
  br label %"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit"

"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.aa, %bb.b ], [ @"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h642343348153e75bE", %bb.a ] ; 9 uses
  %i.ab = cmpxchg ptr %.sroa.0.0.i.i, i32 0, i32 1 acquire monotonic, align 4, !noalias !6465
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit"
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.sroa.0.0.i.i), !noalias !6465
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit"
  %i.ad = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !6465
  %i.ae = and i64 %i.ad, 9223372036854775807
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hb4a4c5dd9f6a1b9bE.exit", label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !6465
  %i.ah = xor i1 %i.ag, true
  %i.ai = zext i1 %i.ah to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hb4a4c5dd9f6a1b9bE.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hb4a4c5dd9f6a1b9bE.exit": ; preds = %bb.d, %bb.e
  %.sroa.01.0.i.i = phi i8 [ %i.ai, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4 ; 2 uses
  %i.ak = load atomic i8, ptr %i.aj monotonic, align 4, !noalias !6465 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 5 uses
  %.val = load ptr, ptr %i.al, align 8, !noundef !17 ; 2 uses
  %i.am = getelementptr i8, ptr %.sroa.0.0.i.i, i64 16 ; 5 uses
  %.not.i47 = icmp eq ptr %.val, null
  br i1 %.not.i47, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hb4a4c5dd9f6a1b9bE.exit"
  %.val38 = load i64, ptr %i.am, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.h
  %.sroa.3.0.i.i = phi i64 [ %i.bi, %bb.h ], [ %.val38, %.preheader.i.preheader ] ; 2 uses
  %.sroa.0.0.i.i48 = phi ptr [ %i.bh, %bb.h ], [ %.val, %.preheader.i.preheader ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i48, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i48, i64 362
  %i.ap = load i16, ptr %i.ao, align 2, !noalias !6466, !noundef !17 ; 2 uses
  %i.aq = zext i16 %i.ap to i64                   ; 3 uses
  %.idx = mul nuw nsw i64 %i.aq, 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx
  %i.as = icmp eq i16 %i.ap, 0
  br i1 %i.as, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i484, i64 24 ; 2 uses
  %i.au = add nuw nsw i64 %.sroa.8.0.i.i.i483, 1
  %i.av = icmp eq ptr %i.at, %i.ar
  br i1 %i.av, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %bb.f
  %.sroa.01.0.i.i.i484 = phi ptr [ %i.at, %bb.f ], [ %i.an, %.preheader.i ] ; 3 uses
  %.sroa.8.0.i.i.i483 = phi i64 [ %i.au, %bb.f ], [ 0, %.preheader.i ] ; 4 uses
  %i.aw = getelementptr i8, ptr %.sroa.01.0.i.i.i484, i64 8
  %.val6.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !6466, !nonnull !17, !noundef !17
end_hunk_2
begin_hunk_3_@_ZN5insta3env19get_cargo_workspace17ha45e33e1c19dd782E:bb.a
  br i1 %i.gq, label %bb.cj, label %bb.ck, !prof !22

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 368) #54
          to label %.noexc.i.i unwind label %bb.er, !noalias !6514

.noexc.i.i:                                       ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.ci
  store ptr null, ptr %i.gp, align 8, !noalias !6514
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 362
  store ptr %i.gp, ptr %i.al, align 8, !alias.scope !6505, !noalias !6515
  store i64 0, ptr %i.am, align 8, !alias.scope !6505, !noalias !6515
  store i16 1, ptr %i.gr, align 2, !noalias !6516
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i64 %1, ptr %i.gs, align 8, !noalias !6517
  %.sroa.521.0..sroa_idx22.i.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store ptr %.sroa.10.0.i.i102, ptr %.sroa.521.0..sroa_idx22.i.i, align 8, !noalias !6517
  %.sroa.6.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store i64 %1, ptr %.sroa.6.0..sroa_idx24.i.i, align 8, !noalias !6517
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 272
  store ptr %i.fh, ptr %i.gt, align 8, !noalias !6516
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h1a2b9517f2064d5cE.exit.i": ; preds = %._crit_edge495
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i110, i64 362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6512
  store ptr %i.fh, ptr %i.i, align 8, !noalias !6518
  %.sink62.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %.sink62.i.sroa.gep92.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %.sink61.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sink61.i.sroa.gep94.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6519
  store ptr %i.fh, ptr %i.g, align 8, !noalias !6520
  %i.gv = icmp ugt i16 %i.fv, 10
  br i1 %i.gv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h1a2b9517f2064d5cE.exit.i"
  %i.gw = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i110, ptr %i.f, align 8, !noalias !6520
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.gx, align 8, !noalias !6520
  %i.gy = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  br i1 %i.gw, label %.invoke.i.i.i.i, label %bb.cp

bb.cm:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h1a2b9517f2064d5cE.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !6521)
  %.not.i.i.i.i.not.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, %i.fw
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %.sroa.4.0.i.ph.i.i.i ; 7 uses
  br i1 %.not.i.i.i.i.not.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store i64 %1, ptr %i.gz, align 8, !alias.scope !6522, !noalias !6523
  %.sroa.916.0..sroa_idx19.i.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %.sroa.10.0.i.i102, ptr %.sroa.916.0..sroa_idx19.i.i.i, align 8, !alias.scope !6522, !noalias !6523
  %.sroa.1125.0..sroa_idx28.i.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i64 %1, ptr %.sroa.1125.0..sroa_idx28.i.i.i, align 8, !alias.scope !6522, !noalias !6523
  br label %.thread.i.i.i

bb.co:                                            ; preds = %bb.cm
  %i.ha = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i, 1 ; 2 uses
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %i.ha
  %i.hc = sub nuw nsw i64 %i.fw, %.sroa.4.0.i.ph.i.i.i ; 2 uses
  %i.hd = mul nuw nsw i64 %i.hc, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hb, ptr nonnull align 8 %i.gz, i64 %i.hd, i1 false), !alias.scope !6524, !noalias !6525
  store i64 %1, ptr %i.gz, align 8, !alias.scope !6522, !noalias !6523
  %.sroa.916.0..sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %.sroa.10.0.i.i102, ptr %.sroa.916.0..sroa_idx17.i.i.i, align 8, !alias.scope !6522, !noalias !6523
  %.sroa.1125.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i64 %1, ptr %.sroa.1125.0..sroa_idx26.i.i.i, align 8, !alias.scope !6522, !noalias !6523
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i110, i64 272 ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.sroa.4.0.i.ph.i.i.i
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.ha
  %i.hh = shl nuw nsw i64 %i.hc, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hg, ptr nonnull align 8 %i.hf, i64 %i.hh, i1 false), !alias.scope !6526, !noalias !6525
  br label %.thread.i.i.i

bb.cp:                                            ; preds = %bb.cl
  switch i64 %.sroa.4.0.i.ph.i.i.i, label %bb.cq [
    i64 5, label %.invoke.i.i.i.i
    i64 6, label %bb.cr
  ]

.invoke.i.i.i.i:                                  ; preds = %bb.cp, %bb.cl
  %.sink.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i, %bb.cp ], [ 4, %bb.cl ]
  store i64 %.sink.i.i.i.i, ptr %i.gy, align 8, !noalias !6520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6520
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h7692a747b5a77d48E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.ct unwind label %bb.cw, !noalias !6527

bb.cq:                                            ; preds = %bb.cp
  store i64 6, ptr %i.gy, align 8, !noalias !6520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6520
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h7692a747b5a77d48E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.cs unwind label %bb.cw, !noalias !6527

bb.cr:                                            ; preds = %bb.cp
  store i64 5, ptr %i.gy, align 8, !noalias !6520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6520
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h7692a747b5a77d48E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.ct unwind label %bb.cw, !noalias !6527

bb.cs:                                            ; preds = %bb.cq
  %i.hi = add nsw i64 %.sroa.4.0.i.ph.i.i.i, -7
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %.invoke.i.i.i.i
  %.sink62.i.sroa.phi.i.i.i = phi ptr [ %.sink62.i.sroa.gep.i.i.i, %.invoke.i.i.i.i ], [ %.sink62.i.sroa.gep92.i.i.i, %bb.cr ], [ %.sink62.i.sroa.gep92.i.i.i, %bb.cs ]
  %.sroa.10.0.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i, %.invoke.i.i.i.i ], [ 0, %bb.cr ], [ %i.hi, %bb.cs ] ; 6 uses
  %i.hj = load ptr, ptr %.sink62.i.sroa.phi.i.i.i, align 8, !noalias !6520, !nonnull !17, !noundef !17 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 362 ; 2 uses
  %i.hl = load i16, ptr %i.hk, align 2, !noalias !6528, !noundef !17 ; 2 uses
  %i.hm = zext i16 %i.hl to i64                   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6529)
  %.not.i40.not.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i, %i.hm
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %.sroa.10.0.i.i.i.i ; 7 uses
  br i1 %.not.i40.not.i.i.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i64 %1, ptr %i.ho, align 8, !alias.scope !6530, !noalias !6531
  %.sroa.916.0..sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store ptr %.sroa.10.0.i.i102, ptr %.sroa.916.0..sroa_idx21.i.i.i, align 8, !alias.scope !6530, !noalias !6531
  %.sroa.1125.0..sroa_idx30.i.i.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store i64 %1, ptr %.sroa.1125.0..sroa_idx30.i.i.i, align 8, !alias.scope !6530, !noalias !6531
  br label %bb.da

bb.cv:                                            ; preds = %bb.ct
  %i.hp = add nuw nsw i64 %.sroa.10.0.i.i.i.i, 1  ; 2 uses
  %i.hq = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %i.hp
  %i.hr = sub nuw nsw i64 %i.hm, %.sroa.10.0.i.i.i.i ; 2 uses
  %i.hs = mul nuw nsw i64 %i.hr, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hq, ptr nonnull align 8 %i.ho, i64 %i.hs, i1 false), !alias.scope !6532, !noalias !6528
  store i64 %1, ptr %i.ho, align 8, !alias.scope !6530, !noalias !6531
  %.sroa.916.0..sroa_idx23.i.i.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store ptr %.sroa.10.0.i.i102, ptr %.sroa.916.0..sroa_idx23.i.i.i, align 8, !alias.scope !6530, !noalias !6531
  %.sroa.1125.0..sroa_idx32.i.i.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store i64 %1, ptr %.sroa.1125.0..sroa_idx32.i.i.i, align 8, !alias.scope !6530, !noalias !6531
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 272 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %.sroa.10.0.i.i.i.i
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hp
  %i.hw = shl nuw nsw i64 %i.hr, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hv, ptr nonnull align 8 %i.hu, i64 %i.hw, i1 false), !alias.scope !6533, !noalias !6528
  br label %bb.da

.thread.i.i.i:                                    ; preds = %bb.co, %bb.cn
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i110, i64 272
  %i.hy = add nuw nsw i16 %i.fv, 1
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %.sroa.4.0.i.ph.i.i.i
  store ptr %i.fh, ptr %i.hz, align 8, !alias.scope !6526, !noalias !6525
  store i16 %i.hy, ptr %i.gu, align 2, !noalias !6525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6519
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread"

bb.cw:                                            ; preds = %bb.cr, %bb.cq, %.invoke.i.i.i.i
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = atomicrmw add ptr %i.fh, i64 -1 release, align 8, !noalias !6534
  %i.ic = icmp eq i64 %i.ib, 1
  br i1 %i.ic, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0af500350cceb38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g), !noalias !6527
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  br i1 %i.fj, label %.body113, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i102, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6535
  br label %.body113

bb.da:                                            ; preds = %bb.cv, %bb.cu
  %i.id = getelementptr inbounds nuw i8, ptr %i.hj, i64 272
  %i.ie = add i16 %i.hl, 1
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.sroa.10.0.i.i.i.i
  store ptr %i.fh, ptr %i.if, align 8, !alias.scope !6533, !noalias !6528
  store i16 %i.ie, ptr %i.hk, align 2, !noalias !6528
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.e, align 8, !noalias !6536 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !6536 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6536 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6536 ; 2 uses
  %.sroa.76.0.copyload.i.i.i = load ptr, ptr %.sink62.i.sroa.gep.i.i.i, align 8, !noalias !6536 ; 4 uses
  %.sroa.8.0.copyload.i.i.i = load i64, ptr %.sink61.i.sroa.gep.i.i.i, align 8, !noalias !6536 ; 2 uses
  %.sroa.9.0.copyload.i.i.i = load ptr, ptr %.sink62.i.sroa.gep92.i.i.i, align 8, !noalias !6536 ; 3 uses
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sink61.i.sroa.gep94.i.i.i, align 8, !noalias !6536 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6519
  %.not.i.i.i = icmp eq i64 %.sroa.03.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread", label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.76.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i) ]
  %i.ig = load ptr, ptr %.sroa.76.0.copyload.i.i.i, align 8, !noalias !6537, !noundef !17 ; 2 uses
  %.not.i174.i.i.i = icmp eq ptr %i.ig, null
  br i1 %.not.i174.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.db
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.sroa.842.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.845.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.948.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.1154.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.842.sroa.6.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.842.sroa.7.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.dq

._crit_edge.i.i.i:                                ; preds = %bb.ep, %bb.db
  %.sroa.16.0.i.i.i = phi ptr [ %.sroa.7.sroa.6.0.copyload.i.i.i, %bb.db ], [ %.sroa.842.sroa.7.0.i.i.i, %bb.ep ] ; 5 uses
  %.sroa.15.0.i.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i, %bb.db ], [ %.sroa.842.sroa.6.0.i.i.i, %bb.ep ] ; 2 uses
  %.sroa.12.0.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i, %bb.db ], [ %.sroa.842.sroa.0.0.i.i.i, %bb.ep ] ; 5 uses
  %.sroa.0.0.i.i8.i = phi i64 [ %.sroa.03.0.copyload.i.i.i, %bb.db ], [ %.sroa.039.0.i.i.i, %bb.ep ] ; 6 uses
  %.lcssa139.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i, %bb.db ], [ %.sroa.1154.0.copyload56.i.i.i, %bb.ep ] ; 2 uses
  %.lcssa134.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i, %bb.db ], [ %.sroa.1051.0.i.i.i, %bb.ep ] ; 4 uses
  %.lcssa129.i.i.i = phi i64 [ %.sroa.8.0.copyload.i.i.i, %bb.db ], [ %.sroa.948.0.i.i.i, %bb.ep ]
  %.lcssa124.i.i.i = phi ptr [ %.sroa.76.0.copyload.i.i.i, %bb.db ], [ %.sroa.845.0.i.i.i, %bb.ep ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6519
  store i64 %.sroa.0.0.i.i8.i, ptr %i.h, align 8, !noalias !6519
  %.sroa.02.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.12.0.i.i.i, ptr %.sroa.02.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !6519
  %.sroa.02.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.15.0.i.i.i, ptr %.sroa.02.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !6519
  %.sroa.02.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %.sroa.16.0.i.i.i, ptr %.sroa.02.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !6519
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %.lcssa124.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !6519
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %.lcssa129.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !noalias !6519
  %.sroa.65.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %.lcssa134.i.i.i, ptr %.sroa.65.0..sroa_idx.i.i.i, align 8, !noalias !6519
  %.sroa.76.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %.lcssa139.i.i.i, ptr %.sroa.76.0..sroa_idx.i.i.i, align 8, !noalias !6519
  %i.ik = load ptr, ptr %i.al, align 8, !alias.scope !6505, !noalias !6538, !noundef !17 ; 4 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i23.i.i.i, label %bb.dc, label %bb.de, !prof !22

bb.dc:                                            ; preds = %._crit_edge.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #54
          to label %bb.dd unwind label %bb.dm, !noalias !6539

bb.dd:                                            ; preds = %bb.dc
  unreachable

bb.de:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6540)
  %i.il = load i64, ptr %i.am, align 8, !alias.scope !6541, !noalias !6538, !noundef !17 ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6542
  %i.im = call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 464, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !6542 ; 12 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.df, label %bb.dh, !prof !22

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 464) #54
          to label %.noexc.i.i.i.i.i unwind label %bb.dg, !noalias !6542

.noexc.i.i.i.i.i:                                 ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %bb.df
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

bb.dh:                                            ; preds = %bb.de
  store ptr null, ptr %i.im, align 8, !noalias !6542
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 362 ; 2 uses
  store i16 0, ptr %i.ip, align 2, !noalias !6542
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 368
  store ptr %i.ik, ptr %i.iq, align 8, !noalias !6542
  %i.ir = add i64 %i.il, 1
  store ptr %i.im, ptr %i.ik, align 8, !noalias !6543
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 360
  store i16 0, ptr %i.is, align 8, !noalias !6544
  store ptr %i.im, ptr %i.al, align 8, !alias.scope !6541, !noalias !6538
  store i64 %i.ir, ptr %i.am, align 8, !alias.scope !6541, !noalias !6538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6545
  store ptr %.sroa.16.0.i.i.i, ptr %i.d, align 8, !noalias !6546
  %i.it = icmp eq i64 %.lcssa139.i.i.i, %i.il
  br i1 %i.it, label %bb.eq, label %.invoke.i.i.i.i.i, !prof !23

.invoke.i.i.i.i.i:                                ; preds = %bb.dh
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #54
          to label %.cont.i.i.i.i.i unwind label %bb.di, !noalias !6547

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

bb.di:                                            ; preds = %.invoke.i.i.i.i.i
  %i.iu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iv = atomicrmw add ptr %.sroa.16.0.i.i.i, i64 -1 release, align 8, !noalias !6548
  %i.iw = icmp eq i64 %i.iv, 1
  br i1 %i.iw, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0af500350cceb38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d), !noalias !6547
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.ix = icmp eq i64 %.sroa.0.0.i.i8.i, 0
  br i1 %i.ix, label %.body113, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.0.i.i.i, i64 noundef %.sroa.0.0.i.i8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6549
  br label %.body113

bb.dm:                                            ; preds = %bb.dc
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iz = icmp eq i64 %.sroa.0.0.i.i8.i, 0
  br i1 %i.iz, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.0.i.i.i, i64 noundef %.sroa.0.0.i.i8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6550
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.ja = atomicrmw add ptr %.sroa.16.0.i.i.i, i64 -1 release, align 8, !noalias !6551
  %i.jb = icmp eq i64 %i.ja, 1
  br i1 %i.jb, label %bb.dp, label %.body113

bb.dp:                                            ; preds = %bb.do
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0af500350cceb38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.02.sroa.6.0..sroa_idx.i.i.i), !noalias !6552
  br label %.body113

bb.dq:                                            ; preds = %bb.ep, %.lr.ph.i.i.i
  %.sroa.16.1.i.i.i = phi ptr [ %.sroa.7.sroa.6.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.842.sroa.7.0.i.i.i, %bb.ep ] ; 9 uses
  %.sroa.15.1.i.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.842.sroa.6.0.i.i.i, %bb.ep ] ; 6 uses
  %.sroa.12.1.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.842.sroa.0.0.i.i.i, %bb.ep ] ; 8 uses
  %.sroa.1154.0196.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.1154.0.copyload56.i.i.i, %bb.ep ]
  %.sroa.1051.0192.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.1051.0.i.i.i, %bb.ep ] ; 3 uses
  %.sroa.948.0188.i.i.i = phi i64 [ %.sroa.8.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.948.0.i.i.i, %bb.ep ] ; 2 uses
  %.sroa.845.0184.i.i.i = phi ptr [ %.sroa.76.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.845.0.i.i.i, %bb.ep ]
  %.sroa.039.0180.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.039.0.i.i.i, %bb.ep ] ; 8 uses
  %i.jc = phi ptr [ %i.ig, %.lr.ph.i.i.i ], [ %i.qa, %bb.ep ] ; 13 uses
  %i.jd = add i64 %.sroa.948.0188.i.i.i, 1
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.845.0184.i.i.i, i64 360
  %i.jf = load i16, ptr %i.je, align 8, !noalias !6537 ; 5 uses
  %i.jg = zext i16 %i.jf to i64                   ; 17 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.1.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6519
  store ptr %.sroa.16.1.i.i.i, ptr %i.c, align 8, !noalias !6553
  %i.jh = icmp eq i64 %.sroa.1154.0196.i.i.i, %.sroa.948.0188.i.i.i
  br i1 %i.jh, label %bb.ds, label %bb.dr, !prof !23

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @217, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #54
          to label %bb.dt unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !6554

bb.ds:                                            ; preds = %bb.dq
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 362
  %i.jj = load i16, ptr %i.ji, align 2, !noalias !6554, !noundef !17 ; 4 uses
  %i.jk = icmp ult i16 %i.jj, 11
  br i1 %i.jk, label %bb.dv, label %bb.du

bb.dt:                                            ; preds = %bb.dr
  unreachable

bb.du:                                            ; preds = %bb.ds
  %i.jl = icmp ult i16 %i.jf, 5
  store ptr %i.jc, ptr %i.b, align 8, !noalias !6553
  store i64 %i.jd, ptr %i.ih, align 8, !noalias !6553
  br i1 %i.jl, label %.invoke.i34.i.i.i, label %bb.dz

bb.dv:                                            ; preds = %bb.ds
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 362
  %i.jn = zext nneg i16 %i.jj to i64              ; 4 uses
  %i.jo = add nuw nsw i16 %i.jj, 1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6555)
  %i.jq = add nuw nsw i64 %i.jg, 1                ; 7 uses
  %.not.i.i36.not.i.i.i = icmp ult i16 %i.jf, %i.jj
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.jp, i64 %i.jg ; 7 uses
  br i1 %.not.i.i36.not.i.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  store i64 %.sroa.039.0180.i.i.i, ptr %i.jr, align 8, !alias.scope !6556, !noalias !6557
  %.sroa.1164.0..sroa_idx75.i.i.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr %.sroa.12.1.i.i.i, ptr %.sroa.1164.0..sroa_idx75.i.i.i, align 8, !alias.scope !6556, !noalias !6557
  %.sroa.13.0..sroa_idx87.i.i.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store i64 %.sroa.15.1.i.i.i, ptr %.sroa.13.0..sroa_idx87.i.i.i, align 8, !alias.scope !6556, !noalias !6557
  %i.js = getelementptr inbounds nuw i8, ptr %i.jc, i64 272
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jg
  store ptr %.sroa.16.1.i.i.i, ptr %i.jt, align 8, !alias.scope !6558, !noalias !6559
  br label %bb.dy

end_hunk_3
begin_hunk_4_@_ZN5insta3env19get_cargo_workspace17ha45e33e1c19dd782E:bb.a
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.nc
  %i.nj = load ptr, ptr %i.ni, align 8, !noalias !6569, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.lo, ptr %i.nj, align 8, !noalias !6570
  %i.nk = trunc nuw nsw i64 %i.nc to i16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 360
  store i16 %i.nk, ptr %i.nl, align 8, !noalias !6570
  %i.nm = add nuw nsw i64 %.sroa.0.06.i.i41.i.i.i.i, 4 ; 2 uses
  %i.nn = icmp ult i64 %.sroa.0.06.i.i41.i.i.i.i, 9
  call void @llvm.assume(i1 %i.nn)
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.nh
  %i.np = load ptr, ptr %i.no, align 8, !noalias !6569, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.lo, ptr %i.np, align 8, !noalias !6570
  %i.nq = trunc nuw nsw i64 %i.nh to i16
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 360
  store i16 %i.nq, ptr %i.nr, align 8, !noalias !6570
  %exitcond.not.i.i42.i.i.i.i.3 = icmp eq i64 %i.nm, %i.mk
  br i1 %exitcond.not.i.i42.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i", label %.lr.ph.i.i40.i.i.i.i

bb.eg:                                            ; preds = %bb.ek, %bb.eb
  %.sroa.10.1.i.i.i.i = phi i64 [ %i.pw, %bb.ek ], [ 0, %bb.eb ] ; 9 uses
  %i.ns = load ptr, ptr %i.ij, align 8, !noalias !6553, !nonnull !17, !noundef !17 ; 12 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 362 ; 2 uses
  %i.nu = load i16, ptr %i.nt, align 2, !noalias !6571, !noundef !17 ; 2 uses
  %i.nv = zext i16 %i.nu to i64                   ; 5 uses
  %i.nw = add i16 %i.nu, 1
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 2 uses
  %i.ny = add nuw nsw i64 %.sroa.10.1.i.i.i.i, 1  ; 7 uses
  %.not.i44.not.i.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i.i, %i.nv
  %i.nz = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %.sroa.10.1.i.i.i.i ; 7 uses
  br i1 %.not.i44.not.i.i.i.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  store i64 %.sroa.039.0180.i.i.i, ptr %i.nz, align 8, !noalias !6565
  %.sroa.1164.0..sroa_idx65.i.i.i = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store ptr %.sroa.12.1.i.i.i, ptr %.sroa.1164.0..sroa_idx65.i.i.i, align 8, !noalias !6565
  %.sroa.13.0..sroa_idx77.i.i.i = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  store i64 %.sroa.15.1.i.i.i, ptr %.sroa.13.0..sroa_idx77.i.i.i, align 8, !noalias !6565
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ns, i64 272
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %.sroa.10.1.i.i.i.i
  store ptr %.sroa.16.1.i.i.i, ptr %i.ob, align 8, !alias.scope !6572, !noalias !6571
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  %i.oc = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.ny
  %i.od = sub nuw nsw i64 %i.nv, %.sroa.10.1.i.i.i.i ; 2 uses
  %i.oe = mul nuw nsw i64 %i.od, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.oc, ptr nonnull align 8 %i.nz, i64 %i.oe, i1 false), !alias.scope !6573, !noalias !6571
  store i64 %.sroa.039.0180.i.i.i, ptr %i.nz, align 8, !noalias !6565
  %.sroa.1164.0..sroa_idx67.i.i.i = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store ptr %.sroa.12.1.i.i.i, ptr %.sroa.1164.0..sroa_idx67.i.i.i, align 8, !noalias !6565
  %.sroa.13.0..sroa_idx79.i.i.i = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  store i64 %.sroa.15.1.i.i.i, ptr %.sroa.13.0..sroa_idx79.i.i.i, align 8, !noalias !6565
  %i.of = getelementptr inbounds nuw i8, ptr %i.ns, i64 272 ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %.sroa.10.1.i.i.i.i ; 2 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.ny
  %i.oi = shl nuw nsw i64 %i.od, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.oh, ptr nonnull align 8 %i.og, i64 %i.oi, i1 false), !alias.scope !6572, !noalias !6571
  store ptr %.sroa.16.1.i.i.i, ptr %i.og, align 8, !alias.scope !6572, !noalias !6571
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ns, i64 368 ; 2 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.ny
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %.sroa.10.1.i.i.i.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.om, ptr nonnull align 8 %i.ok, i64 %i.oi, i1 false), !alias.scope !6574, !noalias !6571
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.on = getelementptr inbounds nuw i8, ptr %i.ns, i64 368 ; 6 uses
  %i.oo = add nuw nsw i64 %i.nv, 2                ; 2 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.ny
  store ptr %.sroa.1051.0192.i.i.i, ptr %i.op, align 8, !alias.scope !6574, !noalias !6571
  store i16 %i.nw, ptr %i.nt, align 2, !noalias !6571
  %i.oq = icmp samesign ult i64 %i.ny, %i.oo
  br i1 %i.oq, label %.lr.ph.i.i45.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i"

.lr.ph.i.i45.i.i.i.i.preheader:                   ; preds = %bb.ej
  %i.or = add nuw nsw i64 %i.nv, 1
  %i.os = sub nsw i64 %i.or, %.sroa.10.1.i.i.i.i
  %i.ot = sub nsw i64 %i.nv, %.sroa.10.1.i.i.i.i
  %xtraiter = and i64 %i.os, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i45.i.i.i.i.prol.loopexit, label %.lr.ph.i.i45.i.i.i.i.prol

.lr.ph.i.i45.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i45.i.i.i.i.preheader, %.lr.ph.i.i45.i.i.i.i.prol
  %.sroa.0.06.i.i46.i.i.i.i.prol = phi i64 [ %i.ou, %.lr.ph.i.i45.i.i.i.i.prol ], [ %i.ny, %.lr.ph.i.i45.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i45.i.i.i.i.prol ], [ 0, %.lr.ph.i.i45.i.i.i.i.preheader ]
  %i.ou = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i.prol, 1 ; 2 uses
  %i.ov = icmp samesign ult i64 %.sroa.0.06.i.i46.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.ov)
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %.sroa.0.06.i.i46.i.i.i.i.prol
  %i.ox = load ptr, ptr %i.ow, align 8, !noalias !6575, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ns, ptr %i.ox, align 8, !noalias !6576
  %i.oy = trunc nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i.prol to i16
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 360
  store i16 %i.oy, ptr %i.oz, align 8, !noalias !6576
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i45.i.i.i.i.prol.loopexit, label %.lr.ph.i.i45.i.i.i.i.prol, !llvm.loop !6442

.lr.ph.i.i45.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i45.i.i.i.i.prol, %.lr.ph.i.i45.i.i.i.i.preheader
  %.sroa.0.06.i.i46.i.i.i.i.unr = phi i64 [ %i.ny, %.lr.ph.i.i45.i.i.i.i.preheader ], [ %i.ou, %.lr.ph.i.i45.i.i.i.i.prol ]
  %i.pa = icmp ult i64 %i.ot, 3
  br i1 %i.pa, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i", label %.lr.ph.i.i45.i.i.i.i

.lr.ph.i.i45.i.i.i.i:                             ; preds = %.lr.ph.i.i45.i.i.i.i.prol.loopexit, %.lr.ph.i.i45.i.i.i.i
  %.sroa.0.06.i.i46.i.i.i.i = phi i64 [ %i.pq, %.lr.ph.i.i45.i.i.i.i ], [ %.sroa.0.06.i.i46.i.i.i.i.unr, %.lr.ph.i.i45.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.pb = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 1 ; 2 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %.sroa.0.06.i.i46.i.i.i.i
  %i.pd = load ptr, ptr %i.pc, align 8, !noalias !6575, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ns, ptr %i.pd, align 8, !noalias !6576
  %i.pe = trunc nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i to i16
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 360
  store i16 %i.pe, ptr %i.pf, align 8, !noalias !6576
  %i.pg = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 2 ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.pb
  %i.pi = load ptr, ptr %i.ph, align 8, !noalias !6575, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ns, ptr %i.pi, align 8, !noalias !6576
  %i.pj = trunc nuw nsw i64 %i.pb to i16
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 360
  store i16 %i.pj, ptr %i.pk, align 8, !noalias !6576
  %i.pl = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 3 ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.pg
  %i.pn = load ptr, ptr %i.pm, align 8, !noalias !6575, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ns, ptr %i.pn, align 8, !noalias !6576
  %i.po = trunc nuw nsw i64 %i.pg to i16
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 360
  store i16 %i.po, ptr %i.pp, align 8, !noalias !6576
  %i.pq = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 4 ; 2 uses
  %i.pr = icmp ult i64 %.sroa.0.06.i.i46.i.i.i.i, 9
  call void @llvm.assume(i1 %i.pr)
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.pl
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !6575, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ns, ptr %i.pt, align 8, !noalias !6576
  %i.pu = trunc nuw nsw i64 %i.pl to i16
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 360
  store i16 %i.pu, ptr %i.pv, align 8, !noalias !6576
  %exitcond.not.i.i47.i.i.i.i.3 = icmp eq i64 %i.pq, %i.oo
  br i1 %exitcond.not.i.i47.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i", label %.lr.ph.i.i45.i.i.i.i

bb.ek:                                            ; preds = %bb.ea
  %i.pw = add nsw i64 %i.jg, -7
  br label %bb.eg

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i": ; preds = %.lr.ph.i.i45.i.i.i.i.prol.loopexit, %.lr.ph.i.i45.i.i.i.i, %bb.ej
  %.sroa.842.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.842.0..sroa_idx.i.i.i, align 8, !noalias !6577
  %.sroa.842.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.842.sroa.6.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6577
  %.sroa.842.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.842.sroa.7.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6577
  %.sroa.845.0.copyload.i.i.i = load ptr, ptr %.sroa.845.0..sroa_idx.i.i.i, align 8, !noalias !6577
  %.sroa.948.0.copyload.i.i.i = load i64, ptr %.sroa.948.0..sroa_idx.i.i.i, align 8, !noalias !6577
  br label %bb.eo

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i": ; preds = %.lr.ph.i.i40.i.i.i.i.prol.loopexit, %.lr.ph.i.i40.i.i.i.i, %bb.ef
  %.sroa.842.sroa.0.0.copyload270.i.i.i = load ptr, ptr %.sroa.842.0..sroa_idx.i.i.i, align 8, !noalias !6577
  %.sroa.842.sroa.6.0.copyload271.i.i.i = load i64, ptr %.sroa.842.sroa.6.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6577
  %.sroa.842.sroa.7.0.copyload272.i.i.i = load ptr, ptr %.sroa.842.sroa.7.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6577
  %.sroa.948.0.copyload50.i.i.i = load i64, ptr %.sroa.948.0..sroa_idx.i.i.i, align 8, !noalias !6577
  %.sroa.1051.0.copyload53.i.i.i = load ptr, ptr %i.ij, align 8, !noalias !6577
  br label %bb.eo

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i34.i.i.i, %bb.ea, %bb.eb, %bb.dr
  %lpad.loopexit.split-lp500 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.px = atomicrmw add ptr %.sroa.16.1.i.i.i, i64 -1 release, align 8, !noalias !6578
  %i.py = icmp eq i64 %i.px, 1
  br i1 %i.py, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0af500350cceb38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c), !noalias !6554
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.pz = icmp eq i64 %.sroa.039.0180.i.i.i, 0
  br i1 %i.pz, label %.body113, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.1.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.1.i.i.i, i64 noundef %.sroa.039.0180.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6579
  br label %.body113

.thread112.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6519
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread"

bb.eo:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i"
  %.sroa.842.sroa.0.0.i.i.i = phi ptr [ %.sroa.842.sroa.0.0.copyload270.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.842.sroa.0.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.842.sroa.6.0.i.i.i = phi i64 [ %.sroa.842.sroa.6.0.copyload271.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.842.sroa.6.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.842.sroa.7.0.i.i.i = phi ptr [ %.sroa.842.sroa.7.0.copyload272.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.842.sroa.7.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.1051.0.i.i.i = phi ptr [ %.sroa.1051.0.copyload53.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %i.ns, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 3 uses
  %.sroa.948.0.i.i.i = phi i64 [ %.sroa.948.0.copyload50.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.948.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.845.0.i.i.i = phi ptr [ %i.lo, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.845.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 4 uses
  %.sroa.039.0.i.i.i = load i64, ptr %i.a, align 8, !noalias !6577 ; 3 uses
  %.sroa.1154.0.copyload56.i.i.i = load i64, ptr %.sroa.1154.0..sroa_idx.i.i.i, align 8, !noalias !6577 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6519
  %.not16.i.i.i = icmp eq i64 %.sroa.039.0.i.i.i, -9223372036854775808
  br i1 %.not16.i.i.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread", label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.845.0.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1051.0.i.i.i) ]
  %i.qa = load ptr, ptr %.sroa.845.0.i.i.i, align 8, !noalias !6537, !noundef !17 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.qa, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i, label %bb.dq

bb.eq:                                            ; preds = %bb.dh
  store i16 1, ptr %i.ip, align 2, !noalias !6547
  %i.qb = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i64 %.sroa.0.0.i.i8.i, ptr %i.qb, align 8, !noalias !6539
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store ptr %.sroa.12.0.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i, align 8, !noalias !6539
  %.sroa.6.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  store i64 %.sroa.15.0.i.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i.i, align 8, !noalias !6539
  %i.qc = getelementptr inbounds nuw i8, ptr %i.im, i64 272
  store ptr %.sroa.16.0.i.i.i, ptr %i.qc, align 8, !noalias !6547
  %i.qd = getelementptr inbounds nuw i8, ptr %i.im, i64 376
  store ptr %.lcssa134.i.i.i, ptr %i.qd, align 8, !noalias !6547
  store ptr %i.im, ptr %.lcssa134.i.i.i, align 8, !noalias !6580
  %i.qe = getelementptr inbounds nuw i8, ptr %.lcssa134.i.i.i, i64 360
  store i16 1, ptr %i.qe, align 8, !noalias !6580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6519
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread"

bb.er:                                            ; preds = %bb.cj
  %i.qf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qg = atomicrmw add ptr %i.fh, i64 -1 release, align 8, !noalias !6581
  %i.qh = icmp eq i64 %i.qg, 1
  br i1 %i.qh, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0af500350cceb38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.i), !noalias !6514
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  br i1 %i.fj, label %.body113, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i102, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6582
  br label %.body113

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread": ; preds = %bb.eo, %bb.ck, %.thread.i.i.i, %bb.da, %.thread112.i.i.i, %bb.eq
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24 ; 2 uses
  %i.qj = load i64, ptr %i.qi, align 8, !alias.scope !6505, !noalias !6515, !noundef !17
  %i.qk = add i64 %i.qj, 1
  store i64 %i.qk, ptr %i.qi, align 8, !alias.scope !6505, !noalias !6515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6512
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit"

bb.ev:                                            ; preds = %bb.ca
  call void @llvm.trap()
  unreachable

bb.ew:                                            ; preds = %bb.ch, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h282e0635a3347628E.exit.i.i"
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i110, i64 272
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %.sroa.8.0.i.i.i.i491 ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !noalias !6583, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.fh, ptr %i.qm, align 8, !noalias !6583
  store ptr %i.qn, ptr %i.o, align 8
  %i.qo = atomicrmw add ptr %i.qn, i64 -1 release, align 8, !noalias !6584
  %i.qp = icmp eq i64 %i.qo, 1
  br i1 %i.qp, label %bb.ex, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit"

bb.ex:                                            ; preds = %bb.ew
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0af500350cceb38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.o)
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit"

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit": ; preds = %bb.ex, %bb.ew, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.m

bb.ey:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit", %.body33, %.body31
  %i.qq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

.body35.thread:                                   ; preds = %.body35, %.body31, %bb.w, %bb.ae, %bb.ad, %.body35.thread343
  %.pn27338 = phi { ptr, i32 } [ %.pn.ph, %.body35.thread343 ], [ %i.eu, %.body35 ], [ %i.co, %bb.ad ], [ %i.co, %bb.ae ], [ %i.cf, %bb.w ], [ %eh.lpad-body32, %.body31 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6585)
  %i.qr = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val.i115 = load i64, ptr %i.qr, align 8, !range !30, !alias.scope !6585, !noundef !17 ; 2 uses
  %switch.i116 = icmp sgt i64 %.val.i115, 0
  br i1 %switch.i116, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i118", label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i118": ; preds = %.body35.thread
  %i.qs = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val1.i120 = load ptr, ptr %i.qs, align 8, !alias.scope !6585, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i120, i64 noundef %.val.i115, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6585
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"

bb.ez:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"
  resume { ptr, i32 } %.pn29
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef align 16 dereferenceable_or_null(64) ptr @_ZN5insta3env7resolve17h78cdb00d323002e5E(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #27 personality ptr @rust_eh_personality {
.lr.ph.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6600)
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %bb.c, %.lr.ph.i
  %.tr.i.i.i = phi ptr [ %0, %.lr.ph.i ], [ %i.c, %bb.c ] ; 5 uses
  %i.a = load i8, ptr %.tr.i.i.i, align 16, !range !51, !noalias !6601, !noundef !17
  switch i8 %i.a, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit [
    i8 17, label %bb.c
    i8 21, label %bb.a
    i8 22, label %bb.b
    i8 27, label %bb.d
    i8 28, label %.loopexit40
    i8 29, label %bb.i
  ]

bb.a:                                             ; preds = %tailrecurse.i.i.i
  br label %bb.c

bb.b:                                             ; preds = %tailrecurse.i.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %tailrecurse.i.i.i
  %.sink.i.i.i = phi i64 [ 40, %bb.b ], [ 24, %bb.a ], [ 8, %tailrecurse.i.i.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 %.sink.i.i.i
  %i.c = load ptr, ptr %i.b, align 8, !noalias !6601, !nonnull !17, !align !50, !noundef !17
  br label %tailrecurse.i.i.i

bb.d:                                             ; preds = %tailrecurse.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !6601, !nonnull !17, !noundef !17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noalias !6601, !noundef !17 ; 2 uses
  %.idx5.i.i = shl nuw nsw i64 %i.g, 7
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx5.i.i
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.j = load ptr, ptr %1, align 8, !alias.scope !6600, !noalias !6602, !nonnull !17, !align !31, !noundef !17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !6600, !noalias !6603 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge.i.i.i, %.lr.ph.i.i.i
  %i.m = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.q, %.backedge.i.i.i ] ; 3 uses
  br label %tailrecurse.i.i.i.i.i.i

tailrecurse.i.i.i.i.i.i:                          ; preds = %bb.h, %bb.e
  %.tr.i.i.i.i.i.i = phi ptr [ %i.m, %bb.e ], [ %i.p, %bb.h ] ; 4 uses
  %i.n = load i8, ptr %.tr.i.i.i.i.i.i, align 16, !range !51, !noalias !6604, !noundef !17 ; 2 uses
  switch i8 %i.n, label %_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i [
    i8 17, label %bb.h
    i8 21, label %bb.f
    i8 22, label %bb.g
  ]

bb.f:                                             ; preds = %tailrecurse.i.i.i.i.i.i
  br label %bb.h

bb.g:                                             ; preds = %tailrecurse.i.i.i.i.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %tailrecurse.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi i64 [ 40, %bb.g ], [ 24, %bb.f ], [ 8, %tailrecurse.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i.i, i64 %.sink.i.i.i.i.i.i
  %i.p = load ptr, ptr %i.o, align 8, !noalias !6604, !nonnull !17, !align !50, !noundef !17
  br label %tailrecurse.i.i.i.i.i.i

_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i: ; preds = %tailrecurse.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.n, 14
  %i.r = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i.i, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noalias !6604
  %.not6.i.i.i.i = icmp eq i64 %i.s, %i.l
  %or.cond.i.i = select i1 %.not.i.i.i.i, i1 %.not6.i.i.i.i, i1 false
  br i1 %or.cond.i.i, label %.split.i.i.i, label %.backedge.i.i.i

.split.i.i.i:                                     ; preds = %_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !6604, !nonnull !17
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.u, ptr nonnull %i.j, i64 %i.l), !noalias !6604
  %i.v = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.v, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i", label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.split.i.i.i, %_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i
  %i.w = icmp eq ptr %i.q, %i.h
  br i1 %i.w, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %bb.e

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i": ; preds = %.split.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  br label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i"

.loopexit40:                                      ; preds = %tailrecurse.i.i.i
  br label %bb.i

bb.i:                                             ; preds = %tailrecurse.i.i.i, %.loopexit40
  %.sink = phi i64 [ 24, %.loopexit40 ], [ 40, %tailrecurse.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 %.sink ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
end_hunk_4
begin_hunk_5_@_ZN5insta6output15SnapshotPrinter15print_changeset17h296982a1490293ddE:bb.a
  %i.kz = icmp eq ptr %.sroa.0.1.ph.i.i, %i.jj
  br i1 %i.kz, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.thread.i.i
  %i.la = icmp eq i32 %.sroa.4.0.i.ph.fr.i.i, 13
  %.sroa.3.0.insert.ext.i.i = zext nneg i8 %.sroa.011.2.i.i to i24
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i24 %.sroa.3.0.insert.ext.i.i, 16
  %.sroa.2.0.insert.ext.i.i = zext nneg i8 %.sroa.09.2.i.i to i24
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i24 %.sroa.2.0.insert.ext.i.i, 8
  %.sroa.2.0.insert.insert.i.i = or disjoint i24 %.sroa.2.0.insert.shift.i.i, %.sroa.3.0.insert.shift.i.i
  %i.lb = zext nneg i8 %.sroa.010.2.i.i to i24
  %spec.select.i49.i = select i1 %i.la, i24 1, i24 %i.lb
  %i.lc = or disjoint i24 %.sroa.2.0.insert.insert.i.i, %spec.select.i49.i
  br label %_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit.i

_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit.i: ; preds = %._crit_edge.i.i, %bb.h
  %.sroa.0.0.insert.insert.i.i = phi i24 [ 0, %bb.h ], [ %i.lc, %._crit_edge.i.i ] ; 3 uses
  %i.ld = trunc i24 %.sroa.0.0.insert.insert.i.i to i1
  %i.le = and i24 %.sroa.0.0.insert.insert.i.i, 256
  %.not31.i = icmp ne i24 %i.le, 0                ; 2 uses
  %.not32.i = icmp samesign ugt i24 %.sroa.0.0.insert.insert.i.i, 65535
  %i.lf = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.io ; 4 uses
  %i.lg = icmp samesign eq i64 %i.io, 0
  br i1 %i.lg, label %_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit75.i, label %.lr.ph.i50.i

.lr.ph.i50.i:                                     ; preds = %_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit.i, %.thread.i57.i
  %.sroa.04.036.i51.i = phi i32 [ %.sroa.4.0.i.ph.fr.i60.i, %.thread.i57.i ], [ 1114112, %_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit.i ]
  %.sroa.09.035.i52.i = phi i8 [ %.sroa.09.2.i64.i, %.thread.i57.i ], [ 0, %_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit.i ]
  %.sroa.010.034.i53.i = phi i8 [ %.sroa.010.2.i63.i, %.thread.i57.i ], [ 0, %_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit.i ]
  %.sroa.011.033.i54.i = phi i8 [ %.sroa.011.2.i62.i, %.thread.i57.i ], [ 0, %_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit.i ]
  %.sroa.0.032.i55.i = phi ptr [ %.sroa.0.1.ph.i58.i, %.thread.i57.i ], [ %i.in, %_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit.i ] ; 5 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i55.i, i64 1 ; 3 uses
  %i.li = load i8, ptr %.sroa.0.032.i55.i, align 1, !alias.scope !8114, !noalias !8115, !noundef !17 ; 5 uses
  %i.lj = icmp sgt i8 %i.li, -1
  br i1 %i.lj, label %bb.j, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i56.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i56.i": ; preds = %.lr.ph.i50.i
  %i.lk = and i8 %i.li, 31
  %i.ll = zext nneg i8 %i.lk to i32               ; 3 uses
  %i.lm = icmp ne ptr %i.lh, %i.lf
  tail call void @llvm.assume(i1 %i.lm)
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i55.i, i64 2 ; 3 uses
  %i.lo = load i8, ptr %i.lh, align 1, !alias.scope !8114, !noalias !8115, !noundef !17
  %i.lp = shl nuw nsw i32 %i.ll, 6
  %i.lq = and i8 %i.lo, 63
  %i.lr = zext nneg i8 %i.lq to i32               ; 2 uses
  %i.ls = or disjoint i32 %i.lp, %i.lr
  %i.lt = icmp samesign ugt i8 %i.li, -33
  br i1 %i.lt, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i73.i", label %.thread.i57.i

bb.j:                                             ; preds = %.lr.ph.i50.i
  %i.lu = zext nneg i8 %i.li to i32
  br label %.thread.i57.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i73.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i56.i"
  %i.lv = icmp ne ptr %i.ln, %i.lf
  tail call void @llvm.assume(i1 %i.lv)
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i55.i, i64 3 ; 3 uses
  %i.lx = load i8, ptr %i.ln, align 1, !alias.scope !8114, !noalias !8115, !noundef !17
  %i.ly = shl nuw nsw i32 %i.lr, 6
  %i.lz = and i8 %i.lx, 63
  %i.ma = zext nneg i8 %i.lz to i32
  %i.mb = or disjoint i32 %i.ly, %i.ma            ; 2 uses
  %i.mc = shl nuw nsw i32 %i.ll, 12
  %i.md = or disjoint i32 %i.mb, %i.mc
  %i.me = icmp samesign ugt i8 %i.li, -17
  br i1 %i.me, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i74.i", label %.thread.i57.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i74.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i73.i"
  %i.mf = icmp ne ptr %i.lw, %i.lf
  tail call void @llvm.assume(i1 %i.mf)
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i55.i, i64 4
  %i.mh = load i8, ptr %i.lw, align 1, !alias.scope !8114, !noalias !8115, !noundef !17
  %i.mi = shl nuw nsw i32 %i.ll, 18
  %i.mj = and i32 %i.mi, 1835008
  %i.mk = shl nuw nsw i32 %i.mb, 6
  %i.ml = and i8 %i.mh, 63
  %i.mm = zext nneg i8 %i.ml to i32
  %i.mn = or disjoint i32 %i.mk, %i.mm
  %i.mo = or disjoint i32 %i.mn, %i.mj
  br label %.thread.i57.i

.thread.i57.i:                                    ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i74.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i73.i", %bb.j, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i56.i"
  %.sroa.0.1.ph.i58.i = phi ptr [ %i.ln, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i56.i" ], [ %i.lw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i73.i" ], [ %i.mg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i74.i" ], [ %i.lh, %bb.j ] ; 2 uses
  %.sroa.4.0.i.ph.i59.i = phi i32 [ %i.ls, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit12.i.i56.i" ], [ %i.md, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit14.i.i73.i" ], [ %i.mo, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he157bbbf2d19e5c4E.exit16.i.i74.i" ], [ %i.lu, %bb.j ]
  %.sroa.4.0.i.ph.fr.i60.i = freeze i32 %.sroa.4.0.i.ph.i59.i ; 4 uses
  %i.mp = icmp samesign ult i32 %.sroa.4.0.i.ph.fr.i60.i, 1114112
  tail call void @llvm.assume(i1 %i.mp)
  %i.mq = icmp eq i32 %.sroa.4.0.i.ph.fr.i60.i, 10 ; 3 uses
  %cond.i61.i = icmp ne i32 %.sroa.04.036.i51.i, 13 ; 3 uses
  %i.mr = and i1 %cond.i61.i, %i.mq
  %.sroa.011.2.i62.i = select i1 %i.mr, i8 1, i8 %.sroa.011.033.i54.i ; 2 uses
  %i.ms = or i1 %cond.i61.i, %i.mq
  %.sroa.010.2.i63.i = select i1 %i.ms, i8 %.sroa.010.034.i53.i, i8 1 ; 2 uses
  %i.mt = xor i1 %cond.i61.i, true
  %i.mu = and i1 %i.mq, %i.mt
  %.sroa.09.2.i64.i = select i1 %i.mu, i8 1, i8 %.sroa.09.035.i52.i ; 2 uses
  %i.mv = icmp eq ptr %.sroa.0.1.ph.i58.i, %i.lf
  br i1 %i.mv, label %._crit_edge.i65.i, label %.lr.ph.i50.i

._crit_edge.i65.i:                                ; preds = %.thread.i57.i
  %i.mw = icmp eq i32 %.sroa.4.0.i.ph.fr.i60.i, 13
  %.sroa.3.0.insert.ext.i66.i = zext nneg i8 %.sroa.011.2.i62.i to i24
  %.sroa.3.0.insert.shift.i67.i = shl nuw nsw i24 %.sroa.3.0.insert.ext.i66.i, 16
  %.sroa.2.0.insert.ext.i68.i = zext nneg i8 %.sroa.09.2.i64.i to i24
  %.sroa.2.0.insert.shift.i69.i = shl nuw nsw i24 %.sroa.2.0.insert.ext.i68.i, 8
  %.sroa.2.0.insert.insert.i70.i = or disjoint i24 %.sroa.2.0.insert.shift.i69.i, %.sroa.3.0.insert.shift.i67.i
  %i.mx = zext nneg i8 %.sroa.010.2.i63.i to i24
  %spec.select.i71.i = select i1 %i.mw, i24 1, i24 %i.mx
  %i.my = or disjoint i24 %.sroa.2.0.insert.insert.i70.i, %spec.select.i71.i
  br label %_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit75.i

_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit75.i: ; preds = %._crit_edge.i65.i, %_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit.i
  %.sroa.0.0.insert.insert.i72.i = phi i24 [ 0, %_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit.i ], [ %i.my, %._crit_edge.i65.i ] ; 3 uses
  %i.mz = and i24 %.sroa.0.0.insert.insert.i72.i, 256
  %.sroa.028.1.extract.trunc.i = icmp ne i24 %i.mz, 0 ; 3 uses
  %.sroa.028.2.extract.trunc.i = icmp samesign ugt i24 %.sroa.0.0.insert.insert.i72.i, 65535
  %i.na = trunc i24 %.sroa.0.0.insert.insert.i72.i to i1 ; 2 uses
  %.sroa.028.2.extract.trunc.34.i = select i1 %.not32.i, i1 true, i1 %.sroa.028.2.extract.trunc.i ; 4 uses
  br i1 %i.ld, label %.split.i, label %bb.k

bb.k:                                             ; preds = %_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit75.i
  br i1 %.not31.i, label %bb.m, label %bb.l

.split.i:                                         ; preds = %_ZN5insta6output15detect_newlines17h6c8532c188d81005E.exit75.i
  %.sroa.028.1.extract.trunc..i = select i1 %.not31.i, i1 true, i1 %.sroa.028.1.extract.trunc.i
  br i1 %.sroa.028.1.extract.trunc..i, label %bb.p, label %_ZN5insta6output15newlines_matter17h68d3ff27cb318568E.exit

bb.l:                                             ; preds = %bb.k
  br i1 %i.na, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  br i1 %i.na, label %bb.p, label %_ZN5insta6output15newlines_matter17h68d3ff27cb318568E.exit

bb.n:                                             ; preds = %bb.l
  %spec.select.i = select i1 %.sroa.028.1.extract.trunc.i, i1 %.sroa.028.2.extract.trunc.34.i, i1 false
  br label %_ZN5insta6output15newlines_matter17h68d3ff27cb318568E.exit

bb.o:                                             ; preds = %bb.l
  br i1 %.sroa.028.1.extract.trunc.i, label %bb.p, label %_ZN5insta6output15newlines_matter17h68d3ff27cb318568E.exit

bb.p:                                             ; preds = %bb.o, %bb.m, %.split.i
  br label %_ZN5insta6output15newlines_matter17h68d3ff27cb318568E.exit

_ZN5insta6output15newlines_matter17h68d3ff27cb318568E.exit: ; preds = %_ZN5insta6output16trailing_newline17hcf2b4cf73ec31bf0E.exit48.i, %bb.g, %.split.i, %bb.m, %bb.n, %bb.o, %bb.p
  %.sroa.0.0.i = phi i1 [ true, %bb.g ], [ true, %_ZN5insta6output16trailing_newline17hcf2b4cf73ec31bf0E.exit48.i ], [ true, %bb.p ], [ %.sroa.028.2.extract.trunc.34.i, %bb.o ], [ %spec.select.i, %bb.n ], [ %.sroa.028.2.extract.trunc.34.i, %bb.m ], [ %.sroa.028.2.extract.trunc.34.i, %.split.i ] ; 3 uses
  %i.nb = tail call fastcc noundef i64 @_ZN5insta5utils10term_width17hc96ac73894589751E() ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !8116
  call void @"_ZN63_$LT$str$u20$as$u20$similar..text..abstraction..DiffableStr$GT$14tokenize_lines17hc39ff819e80f5388E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ch, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.02.0.i, i64 noundef %.sroa.3.0.i), !noalias !8117
  %.sroa.0.0.copyload.i = load i64, ptr %i.ch, align 8, !noalias !8116 ; 7 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !8116 ; 18 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !8116 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !8116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !8116
  invoke void @"_ZN63_$LT$str$u20$as$u20$similar..text..abstraction..DiffableStr$GT$14tokenize_lines17hc39ff819e80f5388E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.in, i64 noundef %i.io)
          to label %bb.q unwind label %bb.cb, !noalias !8118

bb.q:                                             ; preds = %_ZN5insta6output15newlines_matter17h68d3ff27cb318568E.exit
  %.sroa.08.0.copyload.i = load i64, ptr %i.cg, align 8, !noalias !8116 ; 6 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !8116 ; 18 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !8116 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !8116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !8116
  store i64 1, ptr %i.ce, align 8, !noalias !8119
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !noalias !8120
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i32 500000000, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.sroa_idx, align 8, !noalias !8120
  %i.nc = invoke { i64, i32 } @_ZN7similar4text8Deadline12into_instant17h9c338cf0625c7906E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ce)
          to label %bb.r unwind label %bb.t, !noalias !8121 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.nd = extractvalue { i64, i32 } %i.nc, 0      ; 4 uses
  %i.ne = extractvalue { i64, i32 } %i.nc, 1      ; 4 uses
  %i.nf = icmp ugt i64 %.sroa.10.0.copyload.i, 100
  %i.ng = icmp ugt i64 %.sroa.8.0.copyload.i, 100
  %or.cond.i.i = select i1 %i.nf, i1 true, i1 %i.ng
  br i1 %or.cond.i.i, label %._crit_edge.i.i490, label %bb.u

.body.i.i:                                        ; preds = %.body.i63.i.i, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h08b21e2ae6fad3b9E.exit85.i.i.i", %.body.i.i.i, %bb.t
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i64.i.i, %.body.i63.i.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ni, %bb.t ], [ %lpad.loopexit.split-lp10003, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h08b21e2ae6fad3b9E.exit85.i.i.i" ] ; 2 uses
  %switch.i.i = icmp sgt i64 %.sroa.08.0.copyload.i, 0
  br i1 %switch.i.i, label %bb.s, label %"_ZN4core3ptr64drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$$RF$str$u5d$$GT$$GT$17h477abc9ed95423c9E.exit.i.i"

bb.s:                                             ; preds = %.body.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.nh = shl nuw i64 %.sroa.08.0.copyload.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.nh, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8121
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$$RF$str$u5d$$GT$$GT$17h477abc9ed95423c9E.exit.i.i"

bb.t:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i.i.i.i", %bb.q
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.u:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !8122
  store i64 0, ptr %i.cd, align 8, !noalias !8122
  %.sroa.05.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store i64 0, ptr %.sroa.05.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !8122
  %.sroa.05.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  store i64 0, ptr %.sroa.05.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !8122
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 96 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !8122
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 104 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !8122
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 112 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.cd, i64 120
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !8122
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !8122
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !noalias !8122
  %i.nk = getelementptr inbounds nuw i8, ptr %i.cd, i64 144
  store ptr %.sroa.6.0.copyload.i, ptr %i.nk, align 8, !noalias !8122
  %i.nl = getelementptr inbounds nuw i8, ptr %i.cd, i64 152
  store i64 %.sroa.10.0.copyload.i, ptr %i.nl, align 8, !noalias !8122
  %i.nm = getelementptr inbounds nuw i8, ptr %i.cd, i64 160
  store ptr %.sroa.5.0.copyload.i, ptr %i.nm, align 8, !noalias !8122
  %i.nn = getelementptr inbounds nuw i8, ptr %i.cd, i64 168
  store i64 %.sroa.8.0.copyload.i, ptr %i.nn, align 8, !noalias !8122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !8123
  invoke fastcc void @_ZN7similar10algorithms5utils6unique17h4935206e95fb3fa9E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.6.0.copyload.i, i64 noundef %.sroa.10.0.copyload.i, i64 noundef 0, i64 noundef %.sroa.10.0.copyload.i)
          to label %.noexc17.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !8124

.noexc17.i.i.i:                                   ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !8123
  invoke fastcc void @_ZN7similar10algorithms5utils6unique17h4935206e95fb3fa9E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.0.copyload.i, i64 noundef %.sroa.8.0.copyload.i, i64 noundef 0, i64 noundef %.sroa.8.0.copyload.i)
          to label %bb.x unwind label %bb.w, !noalias !8125

"_ZN4core3ptr107drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$$u5b$$RF$str$u5d$$GT$$GT$$GT$17hadbd8b59c5eb0241E.exit22.i.i.i.i.i": ; preds = %bb.ah, %.body.i.i.i.i.i, %bb.w
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.nr, %bb.w ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i, %bb.ah ] ; 2 uses
  %.val20.i.i.i.i.i = load i64, ptr %i.cc, align 8, !noalias !8123 ; 2 uses
  %i.no = icmp eq i64 %.val20.i.i.i.i.i, 0
  br i1 %i.no, label %.body.i.i.i, label %bb.v

bb.v:                                             ; preds = %"_ZN4core3ptr107drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$$u5b$$RF$str$u5d$$GT$$GT$$GT$17hadbd8b59c5eb0241E.exit22.i.i.i.i.i"
  %i.np = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.val21.i.i.i.i.i = load ptr, ptr %i.np, align 8, !noalias !8123, !nonnull !17, !noundef !17
  %i.nq = mul nuw i64 %.val20.i.i.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i.i.i.i, i64 noundef %i.nq, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8124
  br label %.body.i.i.i

bb.w:                                             ; preds = %.noexc17.i.i.i
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr107drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$$u5b$$RF$str$u5d$$GT$$GT$$GT$17hadbd8b59c5eb0241E.exit22.i.i.i.i.i"

bb.x:                                             ; preds = %.noexc17.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !8123
  %i.ns = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !noalias !8123, !nonnull !17, !noundef !17
  %i.nu = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.nv = load i64, ptr %i.nu, align 8, !noalias !8123, !noundef !17 ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 3 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !noalias !8123, !nonnull !17, !noundef !17
  %i.ny = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.nz = load i64, ptr %i.ny, align 8, !noalias !8123, !noundef !17 ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ca, i64 96 ; 2 uses
  store ptr %.sroa.6.0.copyload.i, ptr %i.oa, align 8, !noalias !8123
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 104 ; 2 uses
  store i64 %.sroa.10.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8123
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  store ptr %i.nt, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8123
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 120
  store i64 %i.nv, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8123
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 128 ; 2 uses
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8123
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 136 ; 2 uses
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8123
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 144
  store ptr %i.nx, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8123
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 152
  store i64 %i.nz, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8123
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 160 ; 2 uses
  store i64 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8123
  %.sroa.12.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 168 ; 2 uses
  store i64 %.sroa.10.0.copyload.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8123
  %.sroa.13.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 176 ; 2 uses
  store i64 0, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8123
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 184 ; 2 uses
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8123
  %.sroa.15.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 192 ; 2 uses
  store ptr %i.cd, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8123
  %.sroa.16.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 200 ; 2 uses
  store i64 %i.nd, ptr %.sroa.16.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8123
  %.sroa.17.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 208 ; 2 uses
  store i32 %i.ne, ptr %.sroa.17.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8123
  store i64 0, ptr %i.ca, align 8, !noalias !8123
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  store i64 0, ptr %i.ob, align 8, !noalias !8123
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  store i64 0, ptr %i.oc, align 8, !noalias !8123
  %i.od = icmp ult i64 %i.nv, 384307168202282326
  call void @llvm.assume(i1 %i.od)
  %i.oe = icmp ult i64 %i.nz, 384307168202282326
  call void @llvm.assume(i1 %i.oe)
  call void @llvm.experimental.noalias.scope.decl(metadata !8126)
  %i.of = add nuw nsw i64 %i.nv, 1
  %i.og = add nuw nsw i64 %i.of, %i.nz
  %i.oh = lshr i64 %i.og, 1
  %i.oi = add nuw nsw i64 %i.oh, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !8127
  invoke void @_ZN7similar10algorithms5myers1V3new17hbcc4419b04149885E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bz, i64 noundef %i.oi)
          to label %.noexc.i.i.i.i.i unwind label %bb.ag, !noalias !8124

.noexc.i.i.i.i.i:                                 ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !8127
  invoke void @_ZN7similar10algorithms5myers1V3new17hbcc4419b04149885E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.by, i64 noundef %i.oi)
          to label %bb.aa unwind label %bb.z, !noalias !8128

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14.i.i.i.i.i.i": ; preds = %bb.ac, %bb.ab, %bb.z
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.om, %bb.z ], [ %i.on, %bb.ab ], [ %i.on, %bb.ac ] ; 2 uses
  %.val11.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !noalias !8127 ; 2 uses
  %i.oj = icmp eq i64 %.val11.i.i.i.i.i.i, 0
  br i1 %i.oj, label %.body.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14.i.i.i.i.i.i"
  %i.ok = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.val12.i.i.i.i.i.i = load ptr, ptr %i.ok, align 8, !noalias !8127, !nonnull !17, !noundef !17
  %i.ol = shl nuw i64 %.val11.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i.i.i.i.i.i, i64 noundef %i.ol, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8124
  br label %.body.i.i.i.i.i

bb.z:                                             ; preds = %.noexc.i.i.i.i.i
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14.i.i.i.i.i.i"

bb.aa:                                            ; preds = %.noexc.i.i.i.i.i
  invoke fastcc void @_ZN7similar10algorithms5myers7conquer17h243d15f85d89e788E(ptr noalias noundef nonnull align 8 dereferenceable(216) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc, i64 noundef 0, i64 noundef range(i64 0, 384307168202282326) %i.nv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb, i64 noundef 0, i64 noundef range(i64 0, 384307168202282326) %i.nz, ptr noalias noundef align 8 dereferenceable(32) %i.by, ptr noalias noundef align 8 dereferenceable(32) %i.bz, i64 %i.nd, i32 noundef range(i32 0, 1000000001) %i.ne)
          to label %bb.ad unwind label %bb.ab, !noalias !8124

bb.ab:                                            ; preds = %.noexc.i.i.i.i.i.i, %bb.ad, %bb.aa
  %i.on = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val9.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !noalias !8127 ; 2 uses
  %i.oo = icmp eq i64 %.val9.i.i.i.i.i.i, 0
  br i1 %i.oo, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14.i.i.i.i.i.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.op = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.val10.i.i.i.i.i.i = load ptr, ptr %i.op, align 8, !noalias !8127, !nonnull !17, !noundef !17
  %i.oq = shl nuw i64 %.val9.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i.i.i.i, i64 noundef %i.oq, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8124
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14.i.i.i.i.i.i"

bb.ad:                                            ; preds = %bb.aa
  invoke fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %i.ca)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ab, !noalias !8124

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ad
  store i64 0, ptr %i.ca, align 8, !alias.scope !8129, !noalias !8123
  store i64 0, ptr %i.ob, align 8, !alias.scope !8129, !noalias !8123
  %i.or = load ptr, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8130, !noalias !8123, !nonnull !17, !align !29, !noundef !17
  %i.os = load ptr, ptr %i.oa, align 8, !alias.scope !8130, !noalias !8123, !nonnull !17, !align !29, !noundef !17
  %i.ot = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8130, !noalias !8123, !noundef !17
  %i.ou = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8130, !noalias !8123, !noundef !17
  %i.ov = load i64, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8130, !noalias !8123, !noundef !17
  %i.ow = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8130, !noalias !8123, !nonnull !17, !align !29, !noundef !17
  %i.ox = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8130, !noalias !8123, !noundef !17
  %i.oy = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8130, !noalias !8123, !noundef !17
  %i.oz = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8130, !noalias !8123, !noundef !17
  %i.pa = load i64, ptr %.sroa.16.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8130, !noalias !8123
  %i.pb = load i32, ptr %.sroa.17.0..sroa_idx.i.i.i.i.i, align 8, !range !67, !alias.scope !8130, !noalias !8123, !noundef !17
  invoke fastcc void @_ZN7similar10algorithms5myers13diff_deadline17h83970c7aa31c62daE(ptr noalias noundef align 8 dereferenceable(176) %i.or, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.os, i64 noundef %i.ot, i64 noundef %i.ou, i64 noundef %i.ov, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ow, i64 noundef %i.ox, i64 noundef %i.oy, i64 noundef %i.oz, i64 %i.pa, i32 noundef %i.pb)
          to label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6finish17h264679e09a4ec491E.exit.i.i.i.i.i.i" unwind label %bb.ab, !noalias !8124

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6finish17h264679e09a4ec491E.exit.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  %.val7.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !noalias !8127 ; 2 uses
  %i.pc = icmp eq i64 %.val7.i.i.i.i.i.i, 0
  br i1 %i.pc, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16.i.i.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6finish17h264679e09a4ec491E.exit.i.i.i.i.i.i"
  %i.pd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.val8.i.i.i.i.i.i = load ptr, ptr %i.pd, align 8, !noalias !8127, !nonnull !17, !noundef !17
  %i.pe = shl nuw i64 %.val7.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i.i.i, i64 noundef %i.pe, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8124
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16.i.i.i.i.i.i"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16.i.i.i.i.i.i": ; preds = %bb.ae, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6finish17h264679e09a4ec491E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !8127
  %.val5.i.i.i.i.i.i = load i64, ptr %i.bz, align 8, !noalias !8127 ; 2 uses
  %i.pf = icmp eq i64 %.val5.i.i.i.i.i.i, 0
  br i1 %i.pf, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16.i.i.i.i.i.i"
  %i.pg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.val6.i.i.i.i.i.i = load ptr, ptr %i.pg, align 8, !noalias !8127, !nonnull !17, !noundef !17
  %i.ph = shl nuw i64 %.val5.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i, i64 noundef %i.ph, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8124
  br label %bb.ai

bb.ag:                                            ; preds = %bb.x
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.ag, %bb.y, %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14.i.i.i.i.i.i"
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.pi, %bb.ag ], [ %.pn.i.i.i.i.i.i, %bb.y ], [ %.pn.i.i.i.i.i.i, %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14.i.i.i.i.i.i" ] ; 2 uses
  %.val18.i.i.i.i.i = load i64, ptr %i.cb, align 8, !noalias !8123 ; 2 uses
  %i.pj = icmp eq i64 %.val18.i.i.i.i.i, 0
  br i1 %i.pj, label %"_ZN4core3ptr107drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$$u5b$$RF$str$u5d$$GT$$GT$$GT$17hadbd8b59c5eb0241E.exit22.i.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %.body.i.i.i.i.i
  %.val19.i.i.i.i.i = load ptr, ptr %i.nw, align 8, !noalias !8123, !nonnull !17, !noundef !17
  %i.pk = mul nuw i64 %.val18.i.i.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i.i.i.i.i, i64 noundef %i.pk, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8124
  br label %"_ZN4core3ptr107drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$$u5b$$RF$str$u5d$$GT$$GT$$GT$17hadbd8b59c5eb0241E.exit22.i.i.i.i.i"

bb.ai:                                            ; preds = %bb.af, %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !8127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !8123
  %.val16.i.i.i.i.i = load i64, ptr %i.cb, align 8, !noalias !8123 ; 2 uses
  %i.pl = icmp eq i64 %.val16.i.i.i.i.i, 0
  br i1 %i.pl, label %"_ZN4core3ptr107drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$$u5b$$RF$str$u5d$$GT$$GT$$GT$17hadbd8b59c5eb0241E.exit23.i.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val17.i.i.i.i.i = load ptr, ptr %i.nw, align 8, !noalias !8123, !nonnull !17, !noundef !17
  %i.pm = mul nuw i64 %.val16.i.i.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i.i.i.i, i64 noundef %i.pm, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8124
  br label %"_ZN4core3ptr107drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$$u5b$$RF$str$u5d$$GT$$GT$$GT$17hadbd8b59c5eb0241E.exit23.i.i.i.i.i"

"_ZN4core3ptr107drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$$u5b$$RF$str$u5d$$GT$$GT$$GT$17hadbd8b59c5eb0241E.exit23.i.i.i.i.i": ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !8123
  %.val14.i.i.i.i.i = load i64, ptr %i.cc, align 8, !noalias !8123 ; 2 uses
  %i.pn = icmp eq i64 %.val14.i.i.i.i.i, 0
  br i1 %i.pn, label %_ZN7similar10algorithms8patience13diff_deadline17h1c13c12a4e0de149E.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %"_ZN4core3ptr107drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$$u5b$$RF$str$u5d$$GT$$GT$$GT$17hadbd8b59c5eb0241E.exit23.i.i.i.i.i"
  %.val15.i.i.i.i.i = load ptr, ptr %i.ns, align 8, !noalias !8123, !nonnull !17, !noundef !17
  %i.po = mul nuw i64 %.val14.i.i.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.i.i.i.i.i, i64 noundef %i.po, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8124
  br label %_ZN7similar10algorithms8patience13diff_deadline17h1c13c12a4e0de149E.exit.i.i.i.i

_ZN7similar10algorithms8patience13diff_deadline17h1c13c12a4e0de149E.exit.i.i.i.i: ; preds = %bb.ak, %"_ZN4core3ptr107drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$$u5b$$RF$str$u5d$$GT$$GT$$GT$17hadbd8b59c5eb0241E.exit23.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !8123
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %i.nj, align 8, !noalias !8122 ; 2 uses
  %.sroa.04890.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !8119
  %.sroa.54892.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !8119
  %.sroa.64894.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !8119
  %i.pp = icmp eq i64 %.sroa.4.0.copyload.i.i.i, 0
  br i1 %i.pp, label %_ZN7similar6common21capture_diff_deadline17h52761d049c9fd318E.exit.i.i, label %bb.al

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.u
  %lpad.loopexit.split-lp145.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.al:                                            ; preds = %_ZN7similar10algorithms8patience13diff_deadline17h1c13c12a4e0de149E.exit.i.i.i.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !8122, !nonnull !17, !noundef !17
  %i.pq = mul nuw i64 %.sroa.4.0.copyload.i.i.i, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %i.pq, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8124
  br label %_ZN7similar6common21capture_diff_deadline17h52761d049c9fd318E.exit.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %bb.v, %"_ZN4core3ptr107drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$$u5b$$RF$str$u5d$$GT$$GT$$GT$17hadbd8b59c5eb0241E.exit22.i.i.i.i.i"
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp145.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %.pn.i.i.i.i.i, %"_ZN4core3ptr107drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$$u5b$$RF$str$u5d$$GT$$GT$$GT$17hadbd8b59c5eb0241E.exit22.i.i.i.i.i" ], [ %.pn.i.i.i.i.i, %bb.v ]
  call fastcc void @"_ZN4core3ptr188drop_in_place$LT$similar..algorithms..compact..Compact$LT$$u5b$$RF$str$u5d$$C$$u5b$$RF$str$u5d$$C$similar..algorithms..replace..Replace$LT$similar..algorithms..capture..Capture$GT$$GT$$GT$17h333c57f81f95e972E"(ptr noalias noundef align 8 dereferenceable(176) %i.cd) #55, !noalias !8124
  br label %.body.i.i

_ZN7similar6common21capture_diff_deadline17h52761d049c9fd318E.exit.i.i: ; preds = %bb.al, %_ZN7similar10algorithms8patience13diff_deadline17h1c13c12a4e0de149E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !8122
  br label %_ZN7similar4text14TextDiffConfig10diff_lines17h7679aca4ee32cc36E.exit

._crit_edge.i.i490:                               ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !8119
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8131)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !8132
  %i.pr = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16 ; 2 uses
  %i.pt = load i8, ptr %i.ps, align 8, !range !21, !noalias !8133, !noundef !17
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.pu, label %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i.i.i.i", !prof !23

._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i.i.i.i: ; preds = %._crit_edge.i.i490
  %.pre.i.i.i.i.i = load i64, ptr %i.pr, align 8, !noalias !8134
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !8134
  br label %bb.an

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i.i.i.i": ; preds = %._crit_edge.i.i490
  %i.pv = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i unwind label %bb.t, !noalias !8121 ; 2 uses

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8b65765c51b6825bE.exit.i.i.i.i.i"
  %i.pw = extractvalue { i64, i64 } %i.pv, 0
  %i.px = extractvalue { i64, i64 } %i.pv, 1      ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store i64 %i.px, ptr %i.py, align 8, !noalias !8135
  store i8 1, ptr %i.ps, align 8, !noalias !8135
  br label %bb.an

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i47.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %bb.aq, %bb.bb, %bb.ao
  %lpad.loopexit.split-lp10003 = landingpad { ptr, i32 }
          cleanup
  %.val54.i.i.i = load i64, ptr %i.bv, align 8, !noalias !8132 ; 2 uses
  %i.pz = icmp eq i64 %.val54.i.i.i, 0
  br i1 %i.pz, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h08b21e2ae6fad3b9E.exit.i.i.i", label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i47.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val55.i.i.i = load ptr, ptr %i.qe, align 8, !noalias !8132, !nonnull !17, !noundef !17
  %i.qa = shl nuw i64 %.val54.i.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55.i.i.i, i64 noundef %i.qa, i64 noundef range(i64 1, -9223372036854775807) 4) #51, !noalias !8136
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h08b21e2ae6fad3b9E.exit.i.i.i"

bb.an:                                            ; preds = %.noexc.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i.i.i.i
  %.pre-phi119.i.i.i = phi i64 [ %i.px, %.noexc.i.i ], [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i.i.i.i ]
  %.pre-phi.i.i.i = phi i64 [ %i.pw, %.noexc.i.i ], [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb01039b87ec469cfE.exit_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.qb = add i64 %.pre-phi.i.i.i, 1
  store i64 %i.qb, ptr %i.pr, align 8, !noalias !8134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) @53, i64 32, i1 false), !noalias !8132
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i64 %.pre-phi.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i.i, align 8, !noalias !8132
  %.sroa.524.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store i64 %.pre-phi119.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i.i, align 8, !noalias !8132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !8132
  store i64 0, ptr %i.bw, align 8, !noalias !8132
  %i.qc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.qc, align 8, !noalias !8132
  %i.qd = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 3 uses
  store i64 0, ptr %i.qd, align 8, !noalias !8132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !8132
  store i64 0, ptr %i.bv, align 8, !noalias !8132
  %i.qe = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.qe, align 8, !noalias !8132
  %i.qf = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  store i64 0, ptr %i.qf, align 8, !noalias !8132
  %.not105.i.i.i = icmp eq i64 %.sroa.10.0.copyload.i, 0
  br i1 %.not105.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.an
  %.sroa.529.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.630.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.7.0..sroa_idx.i46.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  br label %bb.ao

.preheader.i.i.i:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hda80674f120066dbE.exit66.i.i.i", %bb.an
  %.sroa.0.0.lcssa.i.i.i = phi i32 [ 0, %bb.an ], [ %.sroa.0.3.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hda80674f120066dbE.exit66.i.i.i" ]
  %.not106.i.i.i = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %.not106.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph104.i.i.i

.lr.ph104.i.i.i:                                  ; preds = %.preheader.i.i.i
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.639.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.740.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  br label %bb.aq

bb.ao:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hda80674f120066dbE.exit66.i.i.i", %.lr.ph.i.i.i
  %.sroa.0.0101.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.sroa.0.3.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hda80674f120066dbE.exit66.i.i.i" ] ; 3 uses
  %.sroa.043.0100.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.qg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hda80674f120066dbE.exit66.i.i.i" ] ; 2 uses
  %i.qg = add nuw i64 %.sroa.043.0100.i.i.i, 1    ; 2 uses
  %i.qh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0.copyload.i, i64 %.sroa.043.0100.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !8132
  invoke fastcc void @"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h896609c81019143bE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bu, ptr noalias noundef align 8 dereferenceable(48) %i.bx, i64 noundef 0, ptr noundef readonly %i.qh)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i47.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8137

._crit_edge.i.i.i:                                ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hda80674f120066dbE.exit.i.i.i", %.preheader.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !noalias !8138
  %i.qi = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qi, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !8138
  %.sroa.419.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !alias.scope !8131, !noalias !8119
  %.sroa.421.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 56 ; 2 uses
  store i64 0, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !alias.scope !8131, !noalias !8119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !8132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !8132
  %.val58.i.i.i = load ptr, ptr %i.bx, align 8, !noalias !8132 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.val59.i.i.i = load i64, ptr %i.qj, align 8, !noalias !8132, !noundef !17 ; 4 uses
  %i.qk = icmp eq i64 %.val59.i.i.i, 0
  br i1 %i.qk, label %bb.bg, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i
  %i.ql = mul i64 %.val59.i.i.i, 24
  %i.qm = icmp slt i64 %.val59.i.i.i, 768614336404564650
  call void @llvm.assume(i1 %i.qm)
  %i.qn = and i64 %i.ql, -16                      ; 2 uses
  %i.qo = add i64 %i.qn, 32                       ; 2 uses
  %i.qp = add nsw i64 %.val59.i.i.i, 17
  %i.qq = add i64 %i.qp, %i.qo                    ; 4 uses
  %i.qr = icmp uge i64 %i.qq, %i.qo
  %i.qs = icmp ult i64 %i.qq, 9223372036854775793
  call void @llvm.assume(i1 %i.qr)
  call void @llvm.assume(i1 %i.qs)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.i.i.i) ]
  %i.qt = icmp eq i64 %i.qq, 0
  br i1 %i.qt, label %bb.bg, label %bb.ap

bb.ap:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i
  %i.qu = sub i64 -32, %i.qn
  %i.qv = getelementptr inbounds i8, ptr %.val58.i.i.i, i64 %i.qu
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qv, i64 noundef %i.qq, i64 noundef range(i64 1, -9223372036854775807) 16) #51, !noalias !8136
  %.pre.i.i = load i64, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !8119
  %.pre412.i.i = load i64, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !8119
  br label %bb.bg

bb.aq:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hda80674f120066dbE.exit.i.i.i", %.lr.ph104.i.i.i
  %.sroa.0.1103.i.i.i = phi i32 [ %.sroa.0.0.lcssa.i.i.i, %.lr.ph104.i.i.i ], [ %.sroa.0.2.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hda80674f120066dbE.exit.i.i.i" ] ; 3 uses
  %.sroa.045.0102.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i ], [ %i.qw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hda80674f120066dbE.exit.i.i.i" ] ; 2 uses
  %i.qw = add nuw i64 %.sroa.045.0102.i.i.i, 1    ; 2 uses
  %i.qx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5.0.copyload.i, i64 %.sroa.045.0102.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !8132
  invoke fastcc void @"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h896609c81019143bE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bt, ptr noalias noundef align 8 dereferenceable(48) %i.bx, i64 noundef 1, ptr noundef readonly %i.qx)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i47.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8136

bb.ar:                                            ; preds = %bb.aq
  %i.qy = load i64, ptr %i.bt, align 8, !range !32, !noalias !8132, !noundef !17 ; 2 uses
  %.not.i.i.i491 = icmp eq i64 %i.qy, 2
  %i.qz = load ptr, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !8132 ; 2 uses
  br i1 %.not.i.i.i491, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !8132
  br label %bb.at

bb.at:                                            ; preds = %bb.ax, %bb.as
  %.pn.i.i.i = phi ptr [ %i.sm, %bb.ax ], [ %i.qz, %bb.as ]
  %.sroa.0.2.i.i.i = phi i32 [ %i.rg, %bb.ax ], [ %.sroa.0.1103.i.i.i, %bb.as ]
  %.sroa.011.0.in.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -8
  %.sroa.011.0.i.i.i = load i32, ptr %.sroa.011.0.in.i.i.i, align 8, !noalias !8136, !noundef !17
  %i.ra = load i64, ptr %i.qf, align 8, !alias.scope !8139, !noalias !8132, !noundef !17 ; 3 uses
  %i.rb = load i64, ptr %i.bv, align 8, !range !20, !alias.scope !8139, !noalias !8132, !noundef !17
  %i.rc = icmp eq i64 %i.ra, %i.rb
  br i1 %i.rc, label %bb.au, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hda80674f120066dbE.exit.i.i.i"

bb.au:                                            ; preds = %bb.at
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h7f58205ce22b513bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @832)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hda80674f120066dbE.exit.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i47.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8136

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hda80674f120066dbE.exit.i.i.i": ; preds = %bb.au, %bb.at
  %i.rd = load ptr, ptr %i.qe, align 8, !alias.scope !8139, !noalias !8132, !nonnull !17, !noundef !17
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %i.ra
  store i32 %.sroa.011.0.i.i.i, ptr %i.re, align 4, !noalias !8136
  %i.rf = add i64 %i.ra, 1
  store i64 %i.rf, ptr %i.qf, align 8, !alias.scope !8139, !noalias !8132
  %exitcond117.not.i.i.i = icmp eq i64 %i.qw, %.sroa.8.0.copyload.i
  br i1 %exitcond117.not.i.i.i, label %._crit_edge.i.i.i, label %bb.aq

bb.av:                                            ; preds = %bb.ar
  %.sroa.639.0.copyload.i.i.i = load ptr, ptr %.sroa.639.0..sroa_idx.i.i.i, align 8, !noalias !8132, !nonnull !17, !noundef !17 ; 3 uses
  %.sroa.740.0.copyload.i.i.i = load i64, ptr %.sroa.740.0..sroa_idx.i.i.i, align 8, !noalias !8132 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !8132
  %i.rg = add i32 %.sroa.0.1103.i.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !8140)
  %.val.i.i.i.i = load ptr, ptr %.sroa.639.0.copyload.i.i.i, align 8, !alias.scope !8140, !noalias !8136, !nonnull !17, !noundef !17 ; 8 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.639.0.copyload.i.i.i, i64 8
  %.val4.i.i.i.i = load i64, ptr %i.rh, align 8, !alias.scope !8140, !noalias !8136, !noundef !17 ; 4 uses
  %.sroa.0.04.i.i.i.i.i.i = and i64 %.val4.i.i.i.i, %.sroa.740.0.copyload.i.i.i ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i
  %.sroa.0.0.copyload.i35.i.i.i.i.i.i = load <16 x i8>, ptr %i.ri, align 1, !noalias !8141
  %i.rj = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i.i.i.i, zeroinitializer
  %i.rk = bitcast <16 x i1> %i.rj to i16          ; 2 uses
  %.not.not.i.not6.i.i.i.i.i.i = icmp eq i16 %i.rk, 0
  br i1 %.not.not.i.not6.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i48.i.i, !prof !68

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.av, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i49.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.04.i.i.i.i.i.i, %bb.av ]
  %i.rl = phi i64 [ %i.rm, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.av ]
  %i.rm = add i64 %i.rl, 16                       ; 2 uses
  %i.rn = add i64 %i.rm, %.sroa.0.07.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i49.i.i = and i64 %i.rn, %.val4.i.i.i.i ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i49.i.i
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i = load <16 x i8>, ptr %i.ro, align 1, !noalias !8141
  %i.rp = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i.i.i.i, zeroinitializer
  %i.rq = bitcast <16 x i1> %i.rp to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.rq, 0
end_hunk_5
begin_hunk_6_@_ZN5insta6output15SnapshotPrinter15print_changeset17h296982a1490293ddE:bb.a

.noexc603:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i600
  %i.aeu = load ptr, ptr %i.au, align 8, !noalias !8209, !noundef !17
  %.not.i.i.i.i.i.i.i601 = icmp eq ptr %i.aeu, null
  br i1 %.not.i.i.i.i.i.i.i601, label %.loopexit6011, label %.lr.ph.i.i.i.i.i.i.i600

.loopexit6011:                                    ; preds = %.noexc603, %.noexc602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !8209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !8207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.experimental.noalias.scope.decl(metadata !8210)
  call void @llvm.experimental.noalias.scope.decl(metadata !8211)
  call void @llvm.experimental.noalias.scope.decl(metadata !8212)
  call void @llvm.experimental.noalias.scope.decl(metadata !8213)
  call void @llvm.experimental.noalias.scope.decl(metadata !8214)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !8215
  %.sroa.0.0.copyload.i.i.i.i.i604 = load ptr, ptr %.sroa.54498.0..sroa_idx, align 8, !alias.scope !8215 ; 3 uses
  %.not.i.i.i.i.i.i605 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i604, null
  br i1 %.not.i.i.i.i.i.i605, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i616", label %bb.de

bb.de:                                            ; preds = %.loopexit6011
  %.sroa.5.0.copyload.i.i.i.i.i607 = load i64, ptr %.sroa.84503.0..sroa_idx, align 8, !alias.scope !8215
  %.sroa.4.0.copyload.i.i.i.i.i609 = load i64, ptr %.sroa.84500.0..sroa_idx, align 8, !alias.scope !8215 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i610 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i610, align 8, !alias.scope !8216, !noalias !8215
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i611 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i.i.i604, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i611, align 8, !alias.scope !8216, !noalias !8215
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i612 = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i.i609, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i612, align 8, !alias.scope !8216, !noalias !8215
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i613 = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i613, align 8, !alias.scope !8216, !noalias !8215
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i614 = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store ptr %.sroa.0.0.copyload.i.i.i.i.i604, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i614, align 8, !alias.scope !8216, !noalias !8215
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i615 = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i.i609, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i615, align 8, !alias.scope !8216, !noalias !8215
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i616"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i616": ; preds = %bb.de, %.loopexit6011
  %.sink23.i.i.i.i.i.i617 = phi i64 [ 1, %bb.de ], [ 0, %.loopexit6011 ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i618 = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i607, %bb.de ], [ 0, %.loopexit6011 ]
  store i64 %.sink23.i.i.i.i.i.i617, ptr %i.at, align 8, !alias.scope !8216, !noalias !8215
  %i.aev = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i64 %.sink23.i.i.i.i.i.i617, ptr %i.aev, align 8, !alias.scope !8216, !noalias !8215
  %i.aew = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i618, ptr %i.aew, align 8, !alias.scope !8216, !noalias !8215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !8217
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.at)
          to label %.noexc622 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc622:                                        ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i616"
  %i.aex = load ptr, ptr %i.as, align 8, !noalias !8217, !noundef !17
  %.not3.i.i.i.i.i.i.i619 = icmp eq ptr %i.aex, null
  br i1 %.not3.i.i.i.i.i.i.i619, label %.loopexit6005, label %.lr.ph.i.i.i.i.i.i.i620

.lr.ph.i.i.i.i.i.i.i620:                          ; preds = %.noexc622, %.noexc623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !8217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !8217
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.at)
          to label %.noexc623 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc623:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i620
  %i.aey = load ptr, ptr %i.as, align 8, !noalias !8217, !noundef !17
  %.not.i.i.i.i.i.i.i621 = icmp eq ptr %i.aey, null
  br i1 %.not.i.i.i.i.i.i.i621, label %.loopexit6005, label %.lr.ph.i.i.i.i.i.i.i620

.loopexit6005:                                    ; preds = %.noexc623, %.noexc622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !8217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !8215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.cz

.loopexit.split-lp6021.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i.i720, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i.i716", %bb.oj, %bb.ns, %bb.ms, %bb.mr, %bb.md, %bb.lm, %bb.kp, %bb.ko, %bb.kb, %bb.jb, %bb.db, %.loopexit.split-lp6007.loopexit.split-lp, %bb.cn, %bb.ck
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body667

.body667:                                         ; preds = %.loopexit.split-lp6021.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ij, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.df:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %switch.i626 = icmp sgt i64 %.sroa.0.0.copyload.i, 0
  br i1 %switch.i626, label %bb.dg, label %"_ZN4core3ptr64drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$$RF$str$u5d$$GT$$GT$17h477abc9ed95423c9E.exit.i627"

bb.dg:                                            ; preds = %bb.df
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.aez = shl nuw i64 %.sroa.0.0.copyload.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %i.aez, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8218
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$$RF$str$u5d$$GT$$GT$17h477abc9ed95423c9E.exit.i627"

"_ZN4core3ptr64drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$$RF$str$u5d$$GT$$GT$17h477abc9ed95423c9E.exit.i627": ; preds = %bb.dg, %bb.df
  %switch14.i629 = icmp sgt i64 %.sroa.08.0.copyload.i, 0
  br i1 %switch14.i629, label %bb.dh, label %"_ZN4core3ptr64drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$$RF$str$u5d$$GT$$GT$17h477abc9ed95423c9E.exit12.i630"

bb.dh:                                            ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$$RF$str$u5d$$GT$$GT$17h477abc9ed95423c9E.exit.i627"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.afa = shl nuw i64 %.sroa.08.0.copyload.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.afa, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8218
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$$RF$str$u5d$$GT$$GT$17h477abc9ed95423c9E.exit12.i630"

"_ZN4core3ptr64drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$$RF$str$u5d$$GT$$GT$17h477abc9ed95423c9E.exit12.i630": ; preds = %bb.dh, %"_ZN4core3ptr64drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$$RF$str$u5d$$GT$$GT$17h477abc9ed95423c9E.exit.i627"
  %i.afb = icmp eq i64 %.sroa.04890.0, 0
  br i1 %i.afb, label %"_ZN4core3ptr55drop_in_place$LT$similar..text..TextDiff$LT$str$GT$$GT$17h8d6621ef3e597b5aE.exit635", label %bb.di

bb.di:                                            ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$$RF$str$u5d$$GT$$GT$17h477abc9ed95423c9E.exit12.i630"
  %i.afc = mul nuw i64 %.sroa.04890.0, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.54892.0, i64 noundef %i.afc, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8218
  br label %"_ZN4core3ptr55drop_in_place$LT$similar..text..TextDiff$LT$str$GT$$GT$17h8d6621ef3e597b5aE.exit635"

"_ZN4core3ptr55drop_in_place$LT$similar..text..TextDiff$LT$str$GT$$GT$17h8d6621ef3e597b5aE.exit635": ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$$RF$str$u5d$$GT$$GT$17h477abc9ed95423c9E.exit12.i630", %bb.di
  ret void

bb.dj:                                            ; preds = %bb.iw
  unreachable

bb.dk:                                            ; preds = %bb.dm, %bb.cv
  %i.afd = getelementptr inbounds nuw i8, ptr %.sroa.04252.07153, i64 8
  %i.afe = load ptr, ptr %i.afd, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.sroa.04252.07153, i64 16
  %i.afg = load i64, ptr %i.aff, align 8, !noundef !17 ; 2 uses
  %.idx7157 = mul nuw nsw i64 %i.afg, 40
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afe, i64 %.idx7157
  %i.afi = icmp eq i64 %i.afg, 0
  br i1 %i.afi, label %.loopexit6066, label %.lr.ph7150.preheader

.lr.ph7150.preheader:                             ; preds = %bb.dk
  %.sroa.0449.17146 = getelementptr inbounds nuw i8, ptr %i.afe, i64 40
  br label %.lr.ph7150

bb.dl:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  store <2 x ptr> <ptr @305, ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7b792248e218ac2cE">, ptr %i.du, align 16
  store ptr null, ptr %i.zy, align 16
  store i16 %i.zg, ptr %.sroa.4120.0..sroa_idx, align 8
  store ptr @331, ptr %i.dv, align 8
  store i64 2, ptr %i.zz, align 8
  store ptr @332, ptr %i.aaa, align 8
  store i64 1, ptr %i.aab, align 8
  store ptr %i.du, ptr %i.aac, align 8
  store i64 2, ptr %i.aad, align 8
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.dv)
          to label %bb.dm unwind label %.loopexit.split-lp6068.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %bb.dk

.lr.ph7150:                                       ; preds = %.lr.ph7150.preheader, %"_ZN4core3ptr162drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$similar..text..inline..InlineChange$LT$str$GT$$GT$$GT$17he9e69a56e506d8a4E.exit675"
  %.sroa.0449.17149 = phi ptr [ %.sroa.0449.1, %"_ZN4core3ptr162drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$similar..text..inline..InlineChange$LT$str$GT$$GT$$GT$17he9e69a56e506d8a4E.exit675" ], [ %.sroa.0449.17146, %.lr.ph7150.preheader ] ; 3 uses
  %.sroa.03.17148 = phi i1 [ %.sroa.03.2, %"_ZN4core3ptr162drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$similar..text..inline..InlineChange$LT$str$GT$$GT$$GT$17he9e69a56e506d8a4E.exit675" ], [ %.sroa.03.07154, %.lr.ph7150.preheader ]
  %.sroa.0449.07147 = phi ptr [ %.sroa.0449.17149, %"_ZN4core3ptr162drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$similar..text..inline..InlineChange$LT$str$GT$$GT$$GT$17he9e69a56e506d8a4E.exit675" ], [ %i.afe, %.lr.ph7150.preheader ] ; 5 uses
  %i.afj = invoke { i64, i32 } @_ZN7similar16deadline_support20duration_to_deadline17h1662279decd674f1E(i64 noundef 0, i32 noundef 500000000)
          to label %bb.dn unwind label %.loopexit.split-lp6068.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dn:                                            ; preds = %.lr.ph7150
  %i.afk = extractvalue { i64, i32 } %i.afj, 0    ; 2 uses
  %i.afl = extractvalue { i64, i32 } %i.afj, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8219)
  %i.afm = load i64, ptr %.sroa.0449.07147, align 8, !range !70, !alias.scope !8220, !noundef !17
  %i.afn = getelementptr inbounds nuw i8, ptr %.sroa.0449.07147, i64 8
  %i.afo = load i64, ptr %i.afn, align 8, !alias.scope !8220, !noundef !17 ; 17 uses
  %.sroa.5.0..sroa_idx.i479.i = getelementptr inbounds nuw i8, ptr %.sroa.0449.07147, i64 16
  %.sroa.5.0.copyload.i480.i = load i64, ptr %.sroa.5.0..sroa_idx.i479.i, align 8, !alias.scope !8219 ; 9 uses
  %.sroa.9.0..sroa_idx.i481.i = getelementptr inbounds nuw i8, ptr %.sroa.0449.07147, i64 24
  %.sroa.9.0.copyload.i482.i = load i64, ptr %.sroa.9.0..sroa_idx.i481.i, align 8, !alias.scope !8219 ; 16 uses
  switch i64 %i.afm, label %default.unreachable8082 [
    i64 0, label %bb.dp
    i64 1, label %bb.dq
    i64 2, label %bb.dr
    i64 3, label %bb.ds
  ]

default.unreachable8082:                          ; preds = %bb.dn
  unreachable

bb.do:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h923f74d8f118cbc1E.exit.i"
  unreachable

bb.dp:                                            ; preds = %bb.dn
  %i.afp = add i64 %.sroa.9.0.copyload.i482.i, %i.afo
  %i.afq = add i64 %.sroa.9.0.copyload.i482.i, %.sroa.5.0.copyload.i480.i
  br label %"_ZN7similar4text17TextDiff$LT$T$GT$12iter_changes17hc6e1028880808db1E.exit.i"

bb.dq:                                            ; preds = %bb.dn
  %i.afr = add i64 %.sroa.5.0.copyload.i480.i, %i.afo
  br label %"_ZN7similar4text17TextDiff$LT$T$GT$12iter_changes17hc6e1028880808db1E.exit.i"

bb.dr:                                            ; preds = %bb.dn
  %i.afs = add i64 %.sroa.9.0.copyload.i482.i, %.sroa.5.0.copyload.i480.i
  br label %"_ZN7similar4text17TextDiff$LT$T$GT$12iter_changes17hc6e1028880808db1E.exit.i"

"_ZN7similar4text17TextDiff$LT$T$GT$12iter_changes17hc6e1028880808db1E.exit.i": ; preds = %bb.dr, %bb.dq, %bb.dp
  %.sink7.i.i.i = phi i8 [ 0, %bb.dp ], [ 2, %bb.dr ], [ 1, %bb.dq ]
  %.sink5.i.i.i = phi i64 [ %i.afp, %bb.dp ], [ %i.afo, %bb.dr ], [ %i.afr, %bb.dq ]
  %.sink3.i.i.i = phi i64 [ %.sroa.5.0.copyload.i480.i, %bb.dp ], [ %.sroa.5.0.copyload.i480.i, %bb.dr ], [ %.sroa.9.0.copyload.i482.i, %bb.dq ] ; 3 uses
  %.sink.i.i.i = phi i64 [ %i.afq, %bb.dp ], [ %i.afs, %bb.dr ], [ %.sroa.9.0.copyload.i482.i, %bb.dq ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !8221
  %i.aft = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8221 ; 15 uses
  %i.afu = icmp eq ptr %i.aft, null
  br i1 %i.afu, label %.invoke, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i, !prof !18

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i: ; preds = %"_ZN7similar4text17TextDiff$LT$T$GT$12iter_changes17hc6e1028880808db1E.exit.i"
  store ptr %.sroa.6.0.copyload.i, ptr %i.aft, align 8, !noalias !8222
  %.sroa.4254.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 8
  store i64 %.sroa.10.0.copyload.i, ptr %.sroa.4254.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.5255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.5255.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.6256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 24
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.6256.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.7257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 32
  store i64 %i.afo, ptr %.sroa.7257.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.8258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 40
  store i64 %.sink5.i.i.i, ptr %.sroa.8258.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.9259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 48
  store i64 %.sink3.i.i.i, ptr %.sroa.9259.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.10260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 56
  store i64 %.sink.i.i.i, ptr %.sroa.10260.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.11261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 64
  store i64 %i.afo, ptr %.sroa.11261.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.12262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 72
  store i64 %.sink3.i.i.i, ptr %.sroa.12262.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.13263.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 80
  store i64 %i.afo, ptr %.sroa.13263.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.14264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 88
  store i64 %.sink3.i.i.i, ptr %.sroa.14264.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.15265.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 96
  store i8 %.sink7.i.i.i, ptr %.sroa.15265.0..sroa_idx.i, align 8, !noalias !8222
  br label %bb.if

bb.ds:                                            ; preds = %bb.dn
  %i.afv = getelementptr inbounds nuw i8, ptr %.sroa.0449.07147, i64 32
  %i.afw = load i64, ptr %i.afv, align 8, !alias.scope !8220, !noundef !17 ; 4 uses
  %i.afx = add i64 %.sroa.5.0.copyload.i480.i, %i.afo ; 5 uses
  %i.afy = add i64 %i.afw, %.sroa.9.0.copyload.i482.i ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.afz = icmp ult i64 %i.afx, %i.afo
  %.not27.i = icmp ugt i64 %i.afx, %.sroa.10.0.copyload.i
  %or.cond.i = or i1 %i.afz, %.not27.i
  br i1 %or.cond.i, label %.invoke8829, label %bb.dt, !prof !58

bb.dt:                                            ; preds = %bb.ds
  %i.aga = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0.copyload.i, i64 %i.afo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  %i.agb = icmp ult i64 %i.afy, %.sroa.9.0.copyload.i482.i
  %.not29.i = icmp ugt i64 %i.afy, %.sroa.8.0.copyload.i
  %or.cond586.i = or i1 %i.agb, %.not29.i
  br i1 %or.cond586.i, label %.invoke8829, label %bb.du, !prof !58

bb.du:                                            ; preds = %bb.dt
  %i.agc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5.0.copyload.i, i64 %.sroa.9.0.copyload.i482.i
  %i.agd = add i64 %i.afw, %.sroa.5.0.copyload.i480.i ; 2 uses
  %i.age = icmp eq i64 %i.agd, 0
  br i1 %i.age, label %.critedge.i, label %bb.dv

.invoke8829:                                      ; preds = %bb.dt, %bb.ds
  %i.agf = phi i64 [ %i.afo, %bb.ds ], [ %.sroa.9.0.copyload.i482.i, %bb.dt ]
  %i.agg = phi i64 [ %i.afx, %bb.ds ], [ %i.afy, %bb.dt ]
  %i.agh = phi i64 [ %.sroa.10.0.copyload.i, %bb.ds ], [ %.sroa.8.0.copyload.i, %bb.dt ]
  %i.agi = phi ptr [ @896, %bb.ds ], [ @895, %bb.dt ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.agf, i64 noundef %i.agg, i64 noundef %i.agh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.agi) #54
          to label %.cont8830 unwind label %.loopexit.split-lp6068.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont8830:                                        ; preds = %.invoke8829
  unreachable

bb.dv:                                            ; preds = %bb.du
  %.sroa.0.0.i95.i = call noundef i64 @llvm.umin.i64(i64 %i.afw, i64 %.sroa.5.0.copyload.i480.i)
  %i.agj = uitofp i64 %.sroa.0.0.i95.i to float
  %i.agk = fmul nnan float %i.agj, 2.000000e+00
  %i.agl = uitofp i64 %i.agd to float
  %i.agm = fdiv float %i.agk, %i.agl
  %i.agn = fcmp olt float %i.agm, 5.000000e-01
  br i1 %i.agn, label %"_ZN7similar4text17TextDiff$LT$T$GT$12iter_changes17hc6e1028880808db1E.exit118.i", label %.critedge.i

.critedge.i:                                      ; preds = %bb.dv, %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !8222
  invoke fastcc void @"_ZN7similar4text6inline20MultiLookup$LT$T$GT$3new17h1ce44cf5b7801020E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aga, i64 noundef %.sroa.5.0.copyload.i480.i)
          to label %.noexc664 unwind label %.loopexit.split-lp6068.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc664:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !8222
  invoke fastcc void @"_ZN7similar4text6inline20MultiLookup$LT$T$GT$3new17h1ce44cf5b7801020E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.agc, i64 noundef %i.afw)
          to label %bb.dy unwind label %bb.dx, !noalias !8222

"_ZN7similar4text17TextDiff$LT$T$GT$12iter_changes17hc6e1028880808db1E.exit118.i": ; preds = %bb.dv
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !8223
  %i.ago = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8223 ; 15 uses
  %i.agp = icmp eq ptr %i.ago, null
  br i1 %i.agp, label %.invoke, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit119.i, !prof !18

.invoke:                                          ; preds = %"_ZN7similar4text17TextDiff$LT$T$GT$12iter_changes17hc6e1028880808db1E.exit118.i", %"_ZN7similar4text17TextDiff$LT$T$GT$12iter_changes17hc6e1028880808db1E.exit.i"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 104) #54
          to label %.cont unwind label %.loopexit.split-lp6068.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit119.i: ; preds = %"_ZN7similar4text17TextDiff$LT$T$GT$12iter_changes17hc6e1028880808db1E.exit118.i"
  store ptr %.sroa.6.0.copyload.i, ptr %i.ago, align 8, !noalias !8222
  %.sroa.4282.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ago, i64 8
  store i64 %.sroa.10.0.copyload.i, ptr %.sroa.4282.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.5283.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ago, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.5283.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.6284.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ago, i64 24
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.6284.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.7285.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ago, i64 32
  store i64 %i.afo, ptr %.sroa.7285.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.8286.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ago, i64 40
  store i64 %i.afx, ptr %.sroa.8286.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.9287.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ago, i64 48
  store i64 %.sroa.9.0.copyload.i482.i, ptr %.sroa.9287.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.10288.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ago, i64 56
  store i64 %i.afy, ptr %.sroa.10288.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.11289.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ago, i64 64
  store i64 %i.afo, ptr %.sroa.11289.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.12290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ago, i64 72
  store i64 %.sroa.9.0.copyload.i482.i, ptr %.sroa.12290.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.13291.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ago, i64 80
  store i64 %i.afo, ptr %.sroa.13291.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.14292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ago, i64 88
  store i64 %.sroa.9.0.copyload.i482.i, ptr %.sroa.14292.0..sroa_idx.i, align 8, !noalias !8222
  %.sroa.15293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ago, i64 96
  store i8 3, ptr %.sroa.15293.0..sroa_idx.i, align 8, !noalias !8222
  br label %bb.if

"_ZN4core3ptr66drop_in_place$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$17h86c7662d425826a9E.exit124.i": ; preds = %bb.fg, %.body122.i, %bb.dx
  %.pn47.i = phi { ptr, i32 } [ %i.ags, %bb.dx ], [ %.pn45.i, %.body122.i ], [ %.pn45.i, %bb.fg ] ; 2 uses
  %.val65.i = load i64, ptr %i.ar, align 8, !noalias !8222 ; 2 uses
  %i.agq = icmp eq i64 %.val65.i, 0
  br i1 %i.agq, label %.body, label %bb.dw

bb.dw:                                            ; preds = %"_ZN4core3ptr66drop_in_place$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$17h86c7662d425826a9E.exit124.i"
  %.val66.i = load ptr, ptr %i.abe, align 8, !noalias !8222, !nonnull !17, !noundef !17
  %i.agr = shl nuw i64 %.val65.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66.i, i64 noundef %i.agr, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8222
  br label %.body

bb.dx:                                            ; preds = %.noexc664
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr66drop_in_place$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$17h86c7662d425826a9E.exit124.i"

bb.dy:                                            ; preds = %.noexc664
  %i.agt = load i64, ptr %i.aae, align 8, !noalias !8222, !noundef !17 ; 3 uses
  %i.agu = icmp ult i64 %i.agt, 288230376151711744
  call void @llvm.assume(i1 %i.agu)
  %i.agv = load i64, ptr %i.aaf, align 8, !noalias !8222, !noundef !17 ; 3 uses
  %i.agw = icmp ult i64 %i.agv, 288230376151711744
  call void @llvm.assume(i1 %i.agw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !8224
  store i64 0, ptr %i.ad, align 8, !noalias !8224
  store i64 0, ptr %.sroa.05.sroa.5.0..sroa_idx.i.i, align 8, !noalias !8224
  store i64 0, ptr %.sroa.05.sroa.7.0..sroa_idx.i.i, align 8, !noalias !8224
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i636, align 8, !noalias !8224
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !8224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i637, i8 0, i64 16, i1 false), !noalias !8224
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !8224
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !noalias !8224
  store ptr %i.ar, ptr %i.aah, align 8, !noalias !8224
  store ptr %i.aq, ptr %i.aai, align 8, !noalias !8224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !8225
  invoke fastcc void @_ZN7similar10algorithms5utils6unique17hbe882b8d0b20c119E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ar, i64 noundef 0, i64 noundef range(i64 0, 288230376151711744) %i.agt)
          to label %.noexc.i.i639 unwind label %bb.fd, !noalias !8226

.noexc.i.i639:                                    ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !8225
  invoke fastcc void @_ZN7similar10algorithms5utils6unique17hbe882b8d0b20c119E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aq, i64 noundef 0, i64 noundef range(i64 0, 288230376151711744) %i.agv)
          to label %bb.eb unwind label %bb.ea, !noalias !8227

"_ZN4core3ptr135drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$$GT$$GT$17hdc520afc40a6722aE.exit22.i.i.i.i": ; preds = %bb.ez, %.body.i.i.i.i, %bb.ea
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.agz, %bb.ea ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %eh.lpad-body.i.i.i.i, %bb.ez ] ; 2 uses
  %.val16.i.i.i.i = load i64, ptr %i.ac, align 8, !noalias !8225 ; 2 uses
  %i.agx = icmp eq i64 %.val16.i.i.i.i, 0
  br i1 %i.agx, label %.body.i.i638, label %bb.dz

bb.dz:                                            ; preds = %"_ZN4core3ptr135drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$$GT$$GT$17hdc520afc40a6722aE.exit22.i.i.i.i"
  %.val17.i.i.i.i = load ptr, ptr %i.aaj, align 8, !noalias !8225, !nonnull !17, !noundef !17
  %i.agy = shl nuw i64 %.val16.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i.i.i, i64 noundef %i.agy, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !8226
  br label %.body.i.i638

bb.ea:                                            ; preds = %.noexc.i.i639
  %i.agz = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr135drop_in_place$LT$alloc..vec..Vec$LT$similar..algorithms..utils..UniqueItem$LT$similar..text..inline..MultiLookup$LT$str$GT$$GT$$GT$$GT$17hdc520afc40a6722aE.exit22.i.i.i.i"

bb.eb:                                            ; preds = %.noexc.i.i639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !8225
  %i.aha = load ptr, ptr %i.aaj, align 8, !noalias !8225, !nonnull !17, !noundef !17
  %i.ahb = load i64, ptr %i.aak, align 8, !noalias !8225, !noundef !17 ; 4 uses
  %i.ahc = load ptr, ptr %i.aal, align 8, !noalias !8225, !nonnull !17, !noundef !17
  %i.ahd = load i64, ptr %i.aam, align 8, !noalias !8225, !noundef !17 ; 4 uses
  store ptr %i.aha, ptr %i.aan, align 8, !noalias !8225
  store i64 %i.ahb, ptr %.sroa.4.0..sroa_idx.i.i.i.i640, align 8, !noalias !8225
  store ptr %i.ahc, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !8225
  store i64 %i.ahd, ptr %.sroa.6.0..sroa_idx.i.i.i.i641, align 8, !noalias !8225
end_hunk_6
begin_hunk_7_@_ZN5insta7runtime15assert_snapshot17h1e63cc8134f2e2b1E:bb.a
  %..i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.7.0.copyload.i.i, i64 %.val8.i.i.i.i.i.i)
  %i.nr = sub i64 %.sroa.7.0.copyload.i.i, %.val8.i.i.i.i.i.i
  %i.ns = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.5.0.copyload.i.i, ptr nonnull readonly align 1 %.val7.i.i.i.i.i.i, i64 %..i.i.i.i.i.i.i.i.i), !alias.scope !15494, !noalias !15493 ; 2 uses
  %i.nt = sext i32 %i.ns to i64
  %i.nu = icmp eq i32 %i.ns, 0
  %spec.store.select.i.i.i.i.i.i.i.i.i = select i1 %i.nu, i64 %i.nr, i64 %i.nt
  %i.nv = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i.i.i.i, i64 0)
  switch i8 %i.nv, label %bb.cz [
    i8 -1, label %._crit_edge743
    i8 0, label %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h51aac4211a3b6452E.exit.i.i.i.i"
    i8 1, label %bb.cy
  ]

bb.cz:                                            ; preds = %.lr.ph742
  unreachable

._crit_edge743:                                   ; preds = %bb.cy, %.lr.ph742, %bb.cx
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i64 [ %i.nj, %bb.cx ], [ %i.nj, %bb.cy ], [ %.sroa.8.0.i.i.i.i.i.i739, %.lr.ph742 ] ; 11 uses
  %i.nw = icmp eq i64 %.sroa.3.0.i.i.i.i.i, 0
  br i1 %i.nw, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4734addda8555c3E.exit.i.i.i", label %bb.da

bb.da:                                            ; preds = %._crit_edge743
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 280
  %i.ny = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.ny)
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %.sroa.4.0.i.ph.i.i.i.i.i
  %i.oa = load ptr, ptr %i.nz, align 8, !noalias !15495, !nonnull !17, !noundef !17
  %i.ob = add i64 %.sroa.3.0.i.i.i.i.i, -1
  br label %bb.cx

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h51aac4211a3b6452E.exit.i.i.i.i": ; preds = %.lr.ph742
  %i.oc = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.oc, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h3ec944a36f12b6d7E.exit.i.i", label %bb.db

bb.db:                                            ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h51aac4211a3b6452E.exit.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15496
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h3ec944a36f12b6d7E.exit.i.i"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4734addda8555c3E.exit.i.i.i": ; preds = %._crit_edge743
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 274
  %i.oe = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775808
  br i1 %i.oe, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h3ec944a36f12b6d7E.exit.i.i", label %bb.df

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4734addda8555c3E.exit.thread29.i.i.i": ; preds = %bb.cr
  %i.of = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775808
  br i1 %i.of, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h3ec944a36f12b6d7E.exit.i.i", label %bb.dc

bb.dc:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4734addda8555c3E.exit.thread29.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !15497
  %i.og = call noalias noundef align 8 dereferenceable_or_null(280) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 280, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !15497 ; 7 uses
  %i.oh = icmp eq ptr %i.og, null
  br i1 %i.oh, label %bb.dd, label %bb.de, !prof !22

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 280) #54
          to label %.noexc.i.i.i.i unwind label %bb.er, !noalias !15497

.noexc.i.i.i.i:                                   ; preds = %bb.dd
  unreachable

bb.de:                                            ; preds = %bb.dc
  store ptr null, ptr %i.og, align 8, !noalias !15497
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 274
  store ptr %i.og, ptr %i.mh, align 8, !alias.scope !15492, !noalias !15498
  store i64 0, ptr %i.mi, align 8, !alias.scope !15492, !noalias !15498
  store i16 1, ptr %i.oi, align 2, !noalias !15499
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.oj, align 8, !noalias !15500
  %.sroa.518.0..sroa_idx19.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.518.0..sroa_idx19.i.i.i.i, align 8, !noalias !15500
  %.sroa.6.0..sroa_idx21.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  store i64 %.sroa.7.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx21.i.i.i.i, align 8, !noalias !15500
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he87da3a0e7023c02E.exit.i.i.i"

bb.df:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4734addda8555c3E.exit.i.i.i"
  %.sink62.i.sroa.gep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  %.sink62.i.sroa.gep98.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 3 uses
  %.sink61.i.sroa.gep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %.sink61.i.sroa.gep100.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !15501
  %i.ok = icmp ugt i16 %i.ni, 10
  br i1 %i.ok, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ol = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.bp, align 8, !noalias !15502
  %i.om = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 0, ptr %i.om, align 8, !noalias !15502
  %i.on = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  br i1 %i.ol, label %.invoke.i.i.i.i.i.i, label %bb.dj

bb.dh:                                            ; preds = %bb.df
  call void @llvm.experimental.noalias.scope.decl(metadata !15503)
  %.not.i.i.i.i.not.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i, %i.nj
  br i1 %.not.i.i.i.i.not.i.i.i, label %bb.di, label %.thread.i.i.i.i.i

bb.di:                                            ; preds = %bb.dh
  %i.oo = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %.sroa.4.0.i.ph.i.i.i.i.i ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  %i.oq = sub nuw nsw i64 %i.nj, %.sroa.4.0.i.ph.i.i.i.i.i
  %i.or = mul nuw nsw i64 %i.oq, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.op, ptr nonnull align 8 %i.oo, i64 %i.or, i1 false), !alias.scope !15504, !noalias !15505
  br label %.thread.i.i.i.i.i

bb.dj:                                            ; preds = %bb.dg
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i, label %bb.dk [
    i64 5, label %.invoke.i.i.i.i.i.i
    i64 6, label %bb.dl
  ]

.invoke.i.i.i.i.i.i:                              ; preds = %bb.dj, %bb.dg
  %.sink.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i, %bb.dj ], [ 4, %bb.dg ]
  store i64 %.sink.i.i.i.i.i.i, ptr %i.on, align 8, !noalias !15502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !15502
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hd6904a822f067285E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bo, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bp)
          to label %bb.dn unwind label %bb.dp, !noalias !15506

bb.dk:                                            ; preds = %bb.dj
  store i64 6, ptr %i.on, align 8, !noalias !15502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !15502
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hd6904a822f067285E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bo, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bp)
          to label %bb.dm unwind label %bb.dp, !noalias !15506

bb.dl:                                            ; preds = %bb.dj
  store i64 5, ptr %i.on, align 8, !noalias !15502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !15502
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hd6904a822f067285E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bo, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bp)
          to label %bb.dn unwind label %bb.dp, !noalias !15506

bb.dm:                                            ; preds = %bb.dk
  %i.os = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i, -7
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %.invoke.i.i.i.i.i.i
  %.sink62.i.sroa.phi.i.i.i.i.i = phi ptr [ %.sink62.i.sroa.gep.i.i.i.i.i, %.invoke.i.i.i.i.i.i ], [ %.sink62.i.sroa.gep98.i.i.i.i.i, %bb.dl ], [ %.sink62.i.sroa.gep98.i.i.i.i.i, %bb.dm ]
  %.sroa.10.0.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i, %.invoke.i.i.i.i.i.i ], [ 0, %bb.dl ], [ %i.os, %bb.dm ] ; 4 uses
  %i.ot = load ptr, ptr %.sink62.i.sroa.phi.i.i.i.i.i, align 8, !noalias !15502, !nonnull !17, !noundef !17 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 274 ; 2 uses
  %i.ov = load i16, ptr %i.ou, align 2, !noalias !15507, !noundef !17 ; 2 uses
  %i.ow = zext i16 %i.ov to i64                   ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15508)
  %.not.i41.not.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i, %i.ow
  br i1 %.not.i41.not.i.i.i.i.i.i, label %bb.do, label %bb.dr

bb.do:                                            ; preds = %bb.dn
  %i.oy = getelementptr inbounds nuw [24 x i8], ptr %i.ox, i64 %.sroa.10.0.i.i.i.i.i.i ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  %i.pa = sub nuw nsw i64 %i.ow, %.sroa.10.0.i.i.i.i.i.i
  %i.pb = mul nuw nsw i64 %i.pa, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.oz, ptr nonnull align 8 %i.oy, i64 %i.pb, i1 false), !alias.scope !15509, !noalias !15507
  br label %bb.dr

.thread.i.i.i.i.i:                                ; preds = %bb.di, %bb.dh
  %i.pc = add nuw nsw i16 %i.ni, 1
  %i.pd = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %.sroa.4.0.i.ph.i.i.i.i.i ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.pd, align 8, !alias.scope !15510, !noalias !15511
  %.sroa.730.0..sroa_idx31.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.730.0..sroa_idx31.i.i.i.i.i, align 8, !alias.scope !15510, !noalias !15511
  %.sroa.935.0..sroa_idx36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store i64 %.sroa.7.0.copyload.i.i, ptr %.sroa.935.0..sroa_idx36.i.i.i.i.i, align 8, !alias.scope !15510, !noalias !15511
  store i16 %i.pc, ptr %i.od, align 2, !noalias !15505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !15501
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he87da3a0e7023c02E.exit.i.i.i"

bb.dp:                                            ; preds = %bb.dl, %bb.dk, %.invoke.i.i.i.i.i.i
  %i.pe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pf = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.pf, label %.body28.thread.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15512
  br label %.body28.thread.i.i

bb.dr:                                            ; preds = %bb.do, %bb.dn
  %i.pg = add i16 %i.ov, 1
  %i.ph = getelementptr inbounds nuw [24 x i8], ptr %i.ox, i64 %.sroa.10.0.i.i.i.i.i.i ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.ph, align 8, !alias.scope !15513, !noalias !15514
  %.sroa.730.0..sroa_idx33.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.730.0..sroa_idx33.i.i.i.i.i, align 8, !alias.scope !15513, !noalias !15514
  %.sroa.935.0..sroa_idx38.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  store i64 %.sroa.7.0.copyload.i.i, ptr %.sroa.935.0..sroa_idx38.i.i.i.i.i, align 8, !alias.scope !15513, !noalias !15514
  store i16 %i.pg, ptr %i.ou, align 2, !noalias !15507
  %.sroa.016.0.copyload.i.i.i.i.i = load i64, ptr %i.bo, align 8, !noalias !15515 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !15515 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !15515 ; 2 uses
  %.sroa.719.0.copyload.i.i.i.i.i = load ptr, ptr %.sink62.i.sroa.gep.i.i.i.i.i, align 8, !noalias !15515 ; 3 uses
  %.sroa.820.0.copyload.i.i.i.i.i = load i64, ptr %.sink61.i.sroa.gep.i.i.i.i.i, align 8, !noalias !15515
  %.sroa.921.0.copyload.i.i.i.i.i = load ptr, ptr %.sink62.i.sroa.gep98.i.i.i.i.i, align 8, !noalias !15515 ; 3 uses
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sink61.i.sroa.gep100.i.i.i.i.i, align 8, !noalias !15515 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !15502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !15501
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.016.0.copyload.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he87da3a0e7023c02E.exit.i.i.i", label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.719.0.copyload.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.921.0.copyload.i.i.i.i.i) ]
  %i.pi = load ptr, ptr %.sroa.719.0.copyload.i.i.i.i.i, align 8, !noalias !15516, !noundef !17 ; 2 uses
  %.not.i168.i.i.i.i.i = icmp eq ptr %i.pi, null
  br i1 %.not.i168.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ds
  %i.pj = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.bm, i64 40 ; 2 uses
  %.sroa.847.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %.sroa.847.sroa.6.0..sroa.847.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %.sroa.850.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %.sroa.953.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 2 uses
  %.sroa.1159.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  br label %bb.dy

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ep, %bb.ds
  %.sroa.19.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i, %bb.ds ], [ %.sroa.1159.0.copyload61.i.i.i.i.i, %bb.ep ]
  %.sroa.15.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.921.0.copyload.i.i.i.i.i, %bb.ds ], [ %.sroa.1056.0.i.i.i.i.i, %bb.ep ] ; 3 uses
  %.sroa.9.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i.i.i, %bb.ds ], [ %.sroa.847.sroa.6.0.i.i.i.i.i, %bb.ep ]
  %.sroa.8.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, %bb.ds ], [ %.sroa.847.sroa.0.0.i.i.i.i.i, %bb.ep ] ; 3 uses
  %.sroa.03.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.016.0.copyload.i.i.i.i.i, %bb.ds ], [ %.sroa.044.0.i.i.i.i.i, %bb.ep ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15517)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !15518
  %i.pm = call noalias noundef align 8 dereferenceable_or_null(376) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 376, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !15518 ; 11 uses
  %i.pn = icmp eq ptr %i.pm, null
  br i1 %i.pn, label %bb.dt, label %bb.dv, !prof !22

bb.dt:                                            ; preds = %._crit_edge.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 376) #54
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.du, !noalias !15518

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.dt
  unreachable

bb.du:                                            ; preds = %bb.dt
  %i.po = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

bb.dv:                                            ; preds = %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.pm, align 8, !noalias !15518
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 274 ; 2 uses
  store i16 0, ptr %i.pp, align 2, !noalias !15518
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 280
  store ptr %.val20.i.i, ptr %i.pq, align 8, !noalias !15518
  %i.pr = add i64 %.val21.i.i, 1
  store ptr %i.pm, ptr %.val20.i.i, align 8, !noalias !15519
  %i.ps = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 272
  store i16 0, ptr %i.ps, align 8, !noalias !15520
  store ptr %i.pm, ptr %i.mh, align 8, !alias.scope !15521, !noalias !15522
  store i64 %i.pr, ptr %i.mi, align 8, !alias.scope !15521, !noalias !15522
  %i.pt = icmp eq i64 %.sroa.19.0.lcssa.i.i.i.i.i, %.val21.i.i
  br i1 %i.pt, label %bb.eq, label %.invoke.i.i.i.i.i.i.i, !prof !23

.invoke.i.i.i.i.i.i.i:                            ; preds = %bb.dv
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #54
          to label %.cont.i.i.i.i.i.i.i unwind label %bb.dw, !noalias !15523

.cont.i.i.i.i.i.i.i:                              ; preds = %.invoke.i.i.i.i.i.i.i
  unreachable

bb.dw:                                            ; preds = %.invoke.i.i.i.i.i.i.i
  %i.pu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pv = icmp eq i64 %.sroa.03.0.lcssa.i.i.i.i.i, 0
  br i1 %i.pv, label %.body28.thread.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i.i.i.i, i64 noundef %.sroa.03.0.lcssa.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15524
  br label %.body28.thread.i.i

bb.dy:                                            ; preds = %bb.ep, %.lr.ph.i.i.i.i.i
  %i.pw = phi ptr [ %i.pi, %.lr.ph.i.i.i.i.i ], [ %i.wd, %bb.ep ] ; 11 uses
  %.sroa.03.0175.i.i.i.i.i = phi i64 [ %.sroa.016.0.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.044.0.i.i.i.i.i, %bb.ep ] ; 8 uses
  %.sroa.8.0174.i.i.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.847.sroa.0.0.i.i.i.i.i, %bb.ep ] ; 8 uses
  %.sroa.9.0173.i.i.i.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.847.sroa.6.0.i.i.i.i.i, %bb.ep ] ; 6 uses
  %.sroa.913.0172.i.i.i.i.i = phi ptr [ %.sroa.719.0.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.850.0.i.i.i.i.i, %bb.ep ]
  %.sroa.12.0171.i.i.i.i.i = phi i64 [ %.sroa.820.0.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.953.0.i.i.i.i.i, %bb.ep ] ; 2 uses
  %.sroa.15.0170.i.i.i.i.i = phi ptr [ %.sroa.921.0.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.1056.0.i.i.i.i.i, %bb.ep ] ; 3 uses
  %.sroa.19.0169.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.1159.0.copyload61.i.i.i.i.i, %bb.ep ]
  %i.px = add i64 %.sroa.12.0171.i.i.i.i.i, 1
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.913.0172.i.i.i.i.i, i64 272
  %i.pz = load i16, ptr %i.py, align 8, !noalias !15516 ; 5 uses
  %i.qa = zext i16 %i.pz to i64                   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !15501
  %i.qb = icmp eq i64 %.sroa.19.0169.i.i.i.i.i, %.sroa.12.0171.i.i.i.i.i
  br i1 %i.qb, label %bb.ea, label %bb.dz, !prof !23

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @217, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #54
          to label %bb.eb unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !15525

bb.ea:                                            ; preds = %bb.dy
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pw, i64 274
  %i.qd = load i16, ptr %i.qc, align 2, !noalias !15525, !noundef !17 ; 4 uses
  %i.qe = icmp ult i16 %i.qd, 11
  br i1 %i.qe, label %bb.ed, label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  unreachable

bb.ec:                                            ; preds = %bb.ea
  %i.qf = icmp ult i16 %i.pz, 5
  store ptr %i.pw, ptr %i.bn, align 8, !noalias !15526
  store i64 %i.px, ptr %i.pj, align 8, !noalias !15526
  br i1 %i.qf, label %.invoke.i29.i.i.i.i.i, label %bb.ef

bb.ed:                                            ; preds = %bb.ea
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pw, i64 274
  %i.qh = zext nneg i16 %i.qd to i64              ; 4 uses
  %i.qi = add nuw nsw i16 %i.qd, 1
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15527)
  %i.qk = add nuw nsw i64 %i.qa, 1                ; 6 uses
  %.not.i.i31.not.i.i.i.i.i = icmp ult i16 %i.pz, %i.qd
  %i.ql = getelementptr inbounds nuw [24 x i8], ptr %i.qj, i64 %i.qa ; 7 uses
  br i1 %.not.i.i31.not.i.i.i.i.i, label %bb.ee, label %_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i.i.i.i.i.i.i: ; preds = %bb.ed
  store i64 %.sroa.03.0175.i.i.i.i.i, ptr %i.ql, align 8, !alias.scope !15528, !noalias !15529
  %.sroa.1067.0..sroa_idx74.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  store ptr %.sroa.8.0174.i.i.i.i.i, ptr %.sroa.1067.0..sroa_idx74.i.i.i.i.i, align 8, !alias.scope !15528, !noalias !15529
  %.sroa.13.0..sroa_idx82.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  store i64 %.sroa.9.0173.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx82.i.i.i.i.i, align 8, !alias.scope !15528, !noalias !15529
  br label %_ZN5alloc11collections5btree4node12slice_insert17h1f3a73fa88fba553E.exit.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.qm = getelementptr inbounds nuw [24 x i8], ptr %i.qj, i64 %i.qk
  %i.qn = sub nuw nsw i64 %i.qh, %i.qa            ; 2 uses
  %i.qo = mul nuw nsw i64 %i.qn, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qm, ptr nonnull align 8 %i.ql, i64 %i.qo, i1 false), !alias.scope !15530, !noalias !15531
  store i64 %.sroa.03.0175.i.i.i.i.i, ptr %i.ql, align 8, !alias.scope !15528, !noalias !15529
  %.sroa.1067.0..sroa_idx74238.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  store ptr %.sroa.8.0174.i.i.i.i.i, ptr %.sroa.1067.0..sroa_idx74238.i.i.i.i.i, align 8, !alias.scope !15528, !noalias !15529
  %.sroa.13.0..sroa_idx82239.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  store i64 %.sroa.9.0173.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx82239.i.i.i.i.i, align 8, !alias.scope !15528, !noalias !15529
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pw, i64 280 ; 2 uses
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %i.qk
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %i.qa
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qt = shl nuw nsw i64 %i.qn, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qs, ptr nonnull align 8 %i.qq, i64 %i.qt, i1 false), !alias.scope !15532, !noalias !15531
  br label %_ZN5alloc11collections5btree4node12slice_insert17h1f3a73fa88fba553E.exit.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h1f3a73fa88fba553E.exit.i.i.i.i.i.i.i: ; preds = %bb.ee, %_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i.i.i.i.i.i.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pw, i64 280 ; 6 uses
  %i.qv = add nuw nsw i64 %i.qh, 2                ; 2 uses
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %i.qk
  store ptr %.sroa.15.0170.i.i.i.i.i, ptr %i.qw, align 8, !alias.scope !15532, !noalias !15531
  store i16 %i.qi, ptr %i.qg, align 2, !noalias !15531
  %i.qx = icmp samesign ult i64 %i.qk, %i.qv
  br i1 %i.qx, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.thread118.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h1f3a73fa88fba553E.exit.i.i.i.i.i.i.i
  %i.qy = add nuw nsw i64 %i.qh, 1
  %i.qz = sub nsw i64 %i.qy, %i.qa
  %i.ra = sub nsw i64 %i.qh, %i.qa
  %xtraiter894 = and i64 %i.qz, 3                 ; 2 uses
  %lcmp.mod895.not = icmp eq i64 %xtraiter894, 0
  br i1 %lcmp.mod895.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.rb, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.qk, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter896 = phi i64 [ %prol.iter896.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.rb = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.rc = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.rc)
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %.sroa.0.06.i.i.i.i.i.i.i.i.prol
  %i.re = load ptr, ptr %i.rd, align 8, !noalias !15533, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.pw, ptr %i.re, align 8, !noalias !15534
  %i.rf = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i.prol to i16
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 272
  store i16 %i.rf, ptr %i.rg, align 8, !noalias !15534
  %prol.iter896.next = add i64 %prol.iter896, 1   ; 2 uses
  %prol.iter896.cmp.not = icmp eq i64 %prol.iter896.next, %xtraiter894
  br i1 %prol.iter896.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !14991

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.qk, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.rb, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.rh = icmp ult i64 %i.ra, 3
  br i1 %i.rh, label %.thread118.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i = phi i64 [ %i.rx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.ri = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %.sroa.0.06.i.i.i.i.i.i.i.i
  %i.rk = load ptr, ptr %i.rj, align 8, !noalias !15533, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.pw, ptr %i.rk, align 8, !noalias !15534
  %i.rl = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i to i16
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 272
  store i16 %i.rl, ptr %i.rm, align 8, !noalias !15534
  %i.rn = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %i.ri
  %i.rp = load ptr, ptr %i.ro, align 8, !noalias !15533, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.pw, ptr %i.rp, align 8, !noalias !15534
  %i.rq = trunc nuw nsw i64 %i.ri to i16
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 272
  store i16 %i.rq, ptr %i.rr, align 8, !noalias !15534
end_hunk_7
begin_hunk_8_@_ZN5insta7runtime15assert_snapshot17h1e63cc8134f2e2b1E:bb.a

.lr.ph.i.i41.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i41.i.i.i.i.i.i.prol, %.lr.ph.i.i41.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i42.i.i.i.i.i.i.unr = phi i64 [ %i.sj, %.lr.ph.i.i41.i.i.i.i.i.i.preheader ], [ %i.ta, %.lr.ph.i.i41.i.i.i.i.i.i.prol ]
  %i.tg = icmp ult i64 %i.sz, 3
  br i1 %i.tg, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit44.i.i.i.i.i.i", label %.lr.ph.i.i41.i.i.i.i.i.i

.lr.ph.i.i41.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i41.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i41.i.i.i.i.i.i
  %.sroa.0.06.i.i42.i.i.i.i.i.i = phi i64 [ %i.tw, %.lr.ph.i.i41.i.i.i.i.i.i ], [ %.sroa.0.06.i.i42.i.i.i.i.i.i.unr, %.lr.ph.i.i41.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.th = add nuw nsw i64 %.sroa.0.06.i.i42.i.i.i.i.i.i, 1 ; 2 uses
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %.sroa.0.06.i.i42.i.i.i.i.i.i
  %i.tj = load ptr, ptr %i.ti, align 8, !noalias !15539, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.sd, ptr %i.tj, align 8, !noalias !15540
  %i.tk = trunc nuw nsw i64 %.sroa.0.06.i.i42.i.i.i.i.i.i to i16
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 272
  store i16 %i.tk, ptr %i.tl, align 8, !noalias !15540
  %i.tm = add nuw nsw i64 %.sroa.0.06.i.i42.i.i.i.i.i.i, 2 ; 2 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.th
  %i.to = load ptr, ptr %i.tn, align 8, !noalias !15539, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.sd, ptr %i.to, align 8, !noalias !15540
  %i.tp = trunc nuw nsw i64 %i.th to i16
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 272
  store i16 %i.tp, ptr %i.tq, align 8, !noalias !15540
  %i.tr = add nuw nsw i64 %.sroa.0.06.i.i42.i.i.i.i.i.i, 3 ; 2 uses
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.tm
  %i.tt = load ptr, ptr %i.ts, align 8, !noalias !15539, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.sd, ptr %i.tt, align 8, !noalias !15540
  %i.tu = trunc nuw nsw i64 %i.tm to i16
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 272
  store i16 %i.tu, ptr %i.tv, align 8, !noalias !15540
  %i.tw = add nuw nsw i64 %.sroa.0.06.i.i42.i.i.i.i.i.i, 4 ; 2 uses
  %i.tx = icmp ult i64 %.sroa.0.06.i.i42.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.tx)
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.tr
  %i.tz = load ptr, ptr %i.ty, align 8, !noalias !15539, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.sd, ptr %i.tz, align 8, !noalias !15540
  %i.ua = trunc nuw nsw i64 %i.tr to i16
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 272
  store i16 %i.ua, ptr %i.ub, align 8, !noalias !15540
  %exitcond.not.i.i43.i.i.i.i.i.i.3 = icmp eq i64 %i.tw, %i.su
  br i1 %exitcond.not.i.i43.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit44.i.i.i.i.i.i", label %.lr.ph.i.i41.i.i.i.i.i.i

bb.ek:                                            ; preds = %bb.em, %bb.eh
  %.sroa.10.1.i.i.i.i.i.i = phi i64 [ %i.wb, %bb.em ], [ 0, %bb.eh ] ; 7 uses
  %i.uc = load ptr, ptr %i.pl, align 8, !noalias !15526, !nonnull !17, !noundef !17 ; 10 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 274 ; 2 uses
  %i.ue = load i16, ptr %i.ud, align 2, !noalias !15541, !noundef !17 ; 2 uses
  %i.uf = zext i16 %i.ue to i64                   ; 5 uses
  %i.ug = add i16 %i.ue, 1
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uc, i64 8 ; 2 uses
  %i.ui = add nuw nsw i64 %.sroa.10.1.i.i.i.i.i.i, 1 ; 6 uses
  %.not.i45.not.i.i.i.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i.i.i.i, %i.uf
  %i.uj = getelementptr inbounds nuw [24 x i8], ptr %i.uh, i64 %.sroa.10.1.i.i.i.i.i.i ; 7 uses
  br i1 %.not.i45.not.i.i.i.i.i.i, label %bb.el, label %_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i46.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i46.i.i.i.i.i.i: ; preds = %bb.ek
  store i64 %.sroa.03.0175.i.i.i.i.i, ptr %i.uj, align 8, !noalias !15536
  %.sroa.1067.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  store ptr %.sroa.8.0174.i.i.i.i.i, ptr %.sroa.1067.0..sroa_idx.i.i.i.i.i, align 8, !noalias !15536
  %.sroa.13.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  store i64 %.sroa.9.0173.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i, align 8, !noalias !15536
  br label %_ZN5alloc11collections5btree4node12slice_insert17h1f3a73fa88fba553E.exit.i47.i.i.i.i.i.i

bb.el:                                            ; preds = %bb.ek
  %i.uk = getelementptr inbounds nuw [24 x i8], ptr %i.uh, i64 %i.ui
  %i.ul = sub nuw nsw i64 %i.uf, %.sroa.10.1.i.i.i.i.i.i ; 2 uses
  %i.um = mul nuw nsw i64 %i.ul, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.uk, ptr nonnull align 8 %i.uj, i64 %i.um, i1 false), !alias.scope !15542, !noalias !15541
  store i64 %.sroa.03.0175.i.i.i.i.i, ptr %i.uj, align 8, !noalias !15536
  %.sroa.1067.0..sroa_idx68.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  store ptr %.sroa.8.0174.i.i.i.i.i, ptr %.sroa.1067.0..sroa_idx68.i.i.i.i.i, align 8, !noalias !15536
  %.sroa.13.0..sroa_idx76.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  store i64 %.sroa.9.0173.i.i.i.i.i, ptr %.sroa.13.0..sroa_idx76.i.i.i.i.i, align 8, !noalias !15536
  %i.un = getelementptr inbounds nuw i8, ptr %i.uc, i64 280 ; 2 uses
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.un, i64 %i.ui
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.un, i64 %.sroa.10.1.i.i.i.i.i.i
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ur = shl nuw nsw i64 %i.ul, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.uq, ptr nonnull align 8 %i.uo, i64 %i.ur, i1 false), !alias.scope !15543, !noalias !15541
  br label %_ZN5alloc11collections5btree4node12slice_insert17h1f3a73fa88fba553E.exit.i47.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h1f3a73fa88fba553E.exit.i47.i.i.i.i.i.i: ; preds = %bb.el, %_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i46.i.i.i.i.i.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.uc, i64 280 ; 6 uses
  %i.ut = add nuw nsw i64 %i.uf, 2                ; 2 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.ui
  store ptr %.sroa.15.0170.i.i.i.i.i, ptr %i.uu, align 8, !alias.scope !15543, !noalias !15541
  store i16 %i.ug, ptr %i.ud, align 2, !noalias !15541
  %i.uv = icmp samesign ult i64 %i.ui, %i.ut
  br i1 %i.uv, label %.lr.ph.i.i48.i.i.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit51.i.i.i.i.i.i"

.lr.ph.i.i48.i.i.i.i.i.i.preheader:               ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h1f3a73fa88fba553E.exit.i47.i.i.i.i.i.i
  %i.uw = add nuw nsw i64 %i.uf, 1
  %i.ux = sub nsw i64 %i.uw, %.sroa.10.1.i.i.i.i.i.i
  %i.uy = sub nsw i64 %i.uf, %.sroa.10.1.i.i.i.i.i.i
  %xtraiter = and i64 %i.ux, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i48.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i48.i.i.i.i.i.i.prol

.lr.ph.i.i48.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i48.i.i.i.i.i.i.preheader, %.lr.ph.i.i48.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i49.i.i.i.i.i.i.prol = phi i64 [ %i.uz, %.lr.ph.i.i48.i.i.i.i.i.i.prol ], [ %i.ui, %.lr.ph.i.i48.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i48.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i48.i.i.i.i.i.i.preheader ]
  %i.uz = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.va = icmp samesign ult i64 %.sroa.0.06.i.i49.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.va)
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %.sroa.0.06.i.i49.i.i.i.i.i.i.prol
  %i.vc = load ptr, ptr %i.vb, align 8, !noalias !15544, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.uc, ptr %i.vc, align 8, !noalias !15545
  %i.vd = trunc nuw nsw i64 %.sroa.0.06.i.i49.i.i.i.i.i.i.prol to i16
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 272
  store i16 %i.vd, ptr %i.ve, align 8, !noalias !15545
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i48.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i48.i.i.i.i.i.i.prol, !llvm.loop !15015

.lr.ph.i.i48.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i48.i.i.i.i.i.i.prol, %.lr.ph.i.i48.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i49.i.i.i.i.i.i.unr = phi i64 [ %i.ui, %.lr.ph.i.i48.i.i.i.i.i.i.preheader ], [ %i.uz, %.lr.ph.i.i48.i.i.i.i.i.i.prol ]
  %i.vf = icmp ult i64 %i.uy, 3
  br i1 %i.vf, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit51.i.i.i.i.i.i", label %.lr.ph.i.i48.i.i.i.i.i.i

.lr.ph.i.i48.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i48.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i.i.i.i
  %.sroa.0.06.i.i49.i.i.i.i.i.i = phi i64 [ %i.vv, %.lr.ph.i.i48.i.i.i.i.i.i ], [ %.sroa.0.06.i.i49.i.i.i.i.i.i.unr, %.lr.ph.i.i48.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.vg = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i.i.i.i, 1 ; 2 uses
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %.sroa.0.06.i.i49.i.i.i.i.i.i
  %i.vi = load ptr, ptr %i.vh, align 8, !noalias !15544, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.uc, ptr %i.vi, align 8, !noalias !15545
  %i.vj = trunc nuw nsw i64 %.sroa.0.06.i.i49.i.i.i.i.i.i to i16
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 272
  store i16 %i.vj, ptr %i.vk, align 8, !noalias !15545
  %i.vl = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i.i.i.i, 2 ; 2 uses
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.vg
  %i.vn = load ptr, ptr %i.vm, align 8, !noalias !15544, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.uc, ptr %i.vn, align 8, !noalias !15545
  %i.vo = trunc nuw nsw i64 %i.vg to i16
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 272
  store i16 %i.vo, ptr %i.vp, align 8, !noalias !15545
  %i.vq = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i.i.i.i, 3 ; 2 uses
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.vl
  %i.vs = load ptr, ptr %i.vr, align 8, !noalias !15544, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.uc, ptr %i.vs, align 8, !noalias !15545
  %i.vt = trunc nuw nsw i64 %i.vl to i16
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 272
  store i16 %i.vt, ptr %i.vu, align 8, !noalias !15545
  %i.vv = add nuw nsw i64 %.sroa.0.06.i.i49.i.i.i.i.i.i, 4 ; 2 uses
  %i.vw = icmp ult i64 %.sroa.0.06.i.i49.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.vw)
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.vq
  %i.vy = load ptr, ptr %i.vx, align 8, !noalias !15544, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.uc, ptr %i.vy, align 8, !noalias !15545
  %i.vz = trunc nuw nsw i64 %i.vq to i16
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vy, i64 272
  store i16 %i.vz, ptr %i.wa, align 8, !noalias !15545
  %exitcond.not.i.i50.i.i.i.i.i.i.3 = icmp eq i64 %i.vv, %i.ut
  br i1 %exitcond.not.i.i50.i.i.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit51.i.i.i.i.i.i", label %.lr.ph.i.i48.i.i.i.i.i.i

bb.em:                                            ; preds = %bb.eg
  %i.wb = add nsw i64 %i.qa, -7
  br label %bb.ek

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit51.i.i.i.i.i.i": ; preds = %.lr.ph.i.i48.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h1f3a73fa88fba553E.exit.i47.i.i.i.i.i.i
  %.sroa.847.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.847.0..sroa_idx.i.i.i.i.i, align 8, !noalias !15546
  %.sroa.847.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.847.sroa.6.0..sroa.847.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !15546
  %.sroa.850.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.850.0..sroa_idx.i.i.i.i.i, align 8, !noalias !15546
  %.sroa.953.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.953.0..sroa_idx.i.i.i.i.i, align 8, !noalias !15546
  br label %bb.eo

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit44.i.i.i.i.i.i": ; preds = %.lr.ph.i.i41.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i41.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h1f3a73fa88fba553E.exit.i40.i.i.i.i.i.i
  %.sroa.847.sroa.0.0.copyload96.i.i.i.i.i = load ptr, ptr %.sroa.847.0..sroa_idx.i.i.i.i.i, align 8, !noalias !15546
  %.sroa.847.sroa.6.0.copyload97.i.i.i.i.i = load i64, ptr %.sroa.847.sroa.6.0..sroa.847.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !15546
  %.sroa.953.0.copyload55.i.i.i.i.i = load i64, ptr %.sroa.953.0..sroa_idx.i.i.i.i.i, align 8, !noalias !15546
  %.sroa.1056.0.copyload58.i.i.i.i.i = load ptr, ptr %i.pl, align 8, !noalias !15546
  br label %bb.eo

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i29.i.i.i.i.i, %bb.eg, %bb.eh, %bb.dz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wc = icmp eq i64 %.sroa.03.0175.i.i.i.i.i, 0
  br i1 %i.wc, label %.body28.thread.i.i, label %bb.en

bb.en:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0174.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0174.i.i.i.i.i, i64 noundef %.sroa.03.0175.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15547
  br label %.body28.thread.i.i

.thread118.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h1f3a73fa88fba553E.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !15501
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he87da3a0e7023c02E.exit.i.i.i"

bb.eo:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit44.i.i.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit51.i.i.i.i.i.i"
  %.sroa.1056.0.i.i.i.i.i = phi ptr [ %i.uc, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit51.i.i.i.i.i.i" ], [ %.sroa.1056.0.copyload58.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit44.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.953.0.i.i.i.i.i = phi i64 [ %.sroa.953.0.copyload.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit51.i.i.i.i.i.i" ], [ %.sroa.953.0.copyload55.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit44.i.i.i.i.i.i" ]
  %.sroa.850.0.i.i.i.i.i = phi ptr [ %.sroa.850.0.copyload.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit51.i.i.i.i.i.i" ], [ %i.sd, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit44.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.847.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.847.sroa.0.0.copyload.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit51.i.i.i.i.i.i" ], [ %.sroa.847.sroa.0.0.copyload96.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit44.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.847.sroa.6.0.i.i.i.i.i = phi i64 [ %.sroa.847.sroa.6.0.copyload.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit51.i.i.i.i.i.i" ], [ %.sroa.847.sroa.6.0.copyload97.i.i.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17haff4280554540c69E.exit44.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.044.0.i.i.i.i.i = load i64, ptr %i.bm, align 8, !noalias !15546 ; 3 uses
  %.sroa.1159.0.copyload61.i.i.i.i.i = load i64, ptr %.sroa.1159.0..sroa_idx.i.i.i.i.i, align 8, !noalias !15546 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !15526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !15501
  %.not16.i.i.i.i.i = icmp eq i64 %.sroa.044.0.i.i.i.i.i, -9223372036854775808
  br i1 %.not16.i.i.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he87da3a0e7023c02E.exit.i.i.i", label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.850.0.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1056.0.i.i.i.i.i) ]
  %i.wd = load ptr, ptr %.sroa.850.0.i.i.i.i.i, align 8, !noalias !15516, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i186.i = icmp eq ptr %i.wd, null
  br i1 %.not.i.i.i.i.i186.i, label %._crit_edge.i.i.i.i.i, label %bb.dy

bb.eq:                                            ; preds = %bb.dv
  store i16 1, ptr %i.pp, align 2, !noalias !15523
  %i.we = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  store i64 %.sroa.03.0.lcssa.i.i.i.i.i, ptr %i.we, align 8, !noalias !15548
  %.sroa.5.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  store ptr %.sroa.8.0.lcssa.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i.i, align 8, !noalias !15548
  %.sroa.6.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  store i64 %.sroa.9.0.lcssa.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i.i.i.i, align 8, !noalias !15548
  %i.wf = getelementptr inbounds nuw i8, ptr %i.pm, i64 288
  store ptr %.sroa.15.0.lcssa.i.i.i.i.i, ptr %i.wf, align 8, !noalias !15523
  store ptr %i.pm, ptr %.sroa.15.0.lcssa.i.i.i.i.i, align 8, !noalias !15549
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.15.0.lcssa.i.i.i.i.i, i64 272
  store i16 1, ptr %i.wg, align 8, !noalias !15549
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he87da3a0e7023c02E.exit.i.i.i"

bb.er:                                            ; preds = %bb.dd
  %i.wh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wi = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.wi, label %.body28.thread.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15550
  br label %.body28.thread.i.i

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he87da3a0e7023c02E.exit.i.i.i": ; preds = %bb.eo, %bb.eq, %.thread118.i.i.i.i.i, %bb.dr, %.thread.i.i.i.i.i, %bb.de
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 24 ; 2 uses
  %i.wk = load i64, ptr %i.wj, align 8, !alias.scope !15492, !noalias !15498, !noundef !17
  %i.wl = add i64 %i.wk, 1
  store i64 %i.wl, ptr %i.wj, align 8, !alias.scope !15492, !noalias !15498
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h3ec944a36f12b6d7E.exit.i.i"

bb.et:                                            ; preds = %bb.cv
  invoke void @_ZN3std9panicking11begin_panic17h3ae8d44fd2c8c89bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @630, i64 noundef 115, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @631) #54
          to label %bb.eu unwind label %.thread72.i.i, !noalias !15423

bb.eu:                                            ; preds = %bb.et
  unreachable

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h3ec944a36f12b6d7E.exit.i.i": ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h51aac4211a3b6452E.exit.i.i.i.i", %bb.db, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4734addda8555c3E.exit.i.i.i", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb4734addda8555c3E.exit.thread29.i.i.i", %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he87da3a0e7023c02E.exit.i.i.i"
  br i1 %i.mg, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h3ec944a36f12b6d7E.exit.i.i"
  %i.wm = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !15482
  %i.wn = and i64 %i.wm, 9223372036854775807
  %i.wo = icmp eq i64 %i.wn, 0
  br i1 %i.wo, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %.noexc30.i.i, !prof !23

.noexc30.i.i:                                     ; preds = %bb.ev
  %i.wp = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc188.i unwind label %bb.h, !noalias !15423

.noexc188.i:                                      ; preds = %.noexc30.i.i
  br i1 %i.wp, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %.noexc188.i
  store atomic i8 1, ptr %i.mb monotonic, align 4, !noalias !15423
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i: ; preds = %bb.ew, %.noexc188.i, %bb.ev, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h3ec944a36f12b6d7E.exit.i.i"
  %i.wq = atomicrmw xchg ptr %.sroa.0.0.i.i.i.i, i32 0 release, align 4, !noalias !15423
  %i.wr = icmp eq i32 %i.wq, 2
  br i1 %i.wr, label %bb.ex, label %_ZN5insta7runtime24prevent_inline_duplicate17h3420a7b310a586dbE.exit.i, !prof !22

bb.ex:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.sroa.0.0.i.i.i.i)
          to label %_ZN5insta7runtime24prevent_inline_duplicate17h3420a7b310a586dbE.exit.i unwind label %bb.h, !noalias !15423

.body28.thread.i.i:                               ; preds = %bb.es, %bb.er, %bb.en, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.dx, %bb.dw, %bb.dq, %bb.dp
  %.pn30.i.i.i.i = phi { ptr, i32 } [ %i.wh, %bb.es ], [ %i.wh, %bb.er ], [ %lpad.loopexit.split-lp, %bb.en ], [ %i.pu, %bb.dx ], [ %i.pu, %bb.dw ], [ %i.pe, %bb.dp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.pe, %bb.dq ]
  invoke fastcc void @"_ZN4core3ptr134drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h2bce4e83d5b99f33E"(ptr nonnull %.sroa.0.0.i.i.i.i, i8 %.sroa.01.0.i.i.i.i) #55
          to label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i" unwind label %bb.ey, !noalias !15423

bb.ey:                                            ; preds = %.body28.thread.i.i
  %i.ws = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !15423
  unreachable

.body.thread.i.i:                                 ; preds = %.thread72.i.i, %bb.co
  %.pn59.i.i = phi { ptr, i32 } [ %i.me, %bb.co ], [ %i.nf, %.thread72.i.i ] ; 2 uses
  %i.wt = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.wt, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i", label %bb.ez

bb.ez:                                            ; preds = %.body.thread.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15551
  br label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hde2d505bd749e340E.exit.i"

_ZN5insta7runtime24prevent_inline_duplicate17h3420a7b310a586dbE.exit.i: ; preds = %bb.ex, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !15422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !15422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !15422
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !15422
  store ptr %i.dm, ptr %i.cx, align 8, !noalias !15422
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7b792248e218ac2cE", ptr %.sroa.472.0..sroa_idx.i, align 8, !noalias !15422
  %i.wu = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %i.dk, ptr %i.wu, align 8, !noalias !15422
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7b792248e218ac2cE", ptr %.sroa.476.0..sroa_idx.i, align 8, !noalias !15422
  %i.wv = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store ptr %i.dj, ptr %i.wv, align 8, !noalias !15422
  %.sroa.480.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E", ptr %.sroa.480.0..sroa_idx.i, align 8, !noalias !15422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !15552
  store ptr @621, ptr %i.bl, align 8, !noalias !15553
  %.sroa.4304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 3, ptr %.sroa.4304.0..sroa_idx.i, align 8, !noalias !15553
  %.sroa.5305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.cx, ptr %.sroa.5305.0..sroa_idx.i, align 8, !noalias !15553
  %.sroa.6306.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i64 3, ptr %.sroa.6306.0..sroa_idx.i, align 8, !noalias !15553
  %.sroa.7307.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store ptr null, ptr %.sroa.7307.0..sroa_idx.i, align 8, !noalias !15553
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bl)
          to label %bb.fc unwind label %bb.h, !noalias !15423

bb.fb:                                            ; preds = %bb.fc, %_ZN5insta7runtime24prevent_inline_duplicate17h3420a7b310a586dbE.exit.i
  %.sroa.17.2.i = phi i64 [ %.sroa.7301.0.copyload.i, %bb.fc ], [ undef, %_ZN5insta7runtime24prevent_inline_duplicate17h3420a7b310a586dbE.exit.i ]
  %.sroa.13231.7.i = phi ptr [ %.sroa.5300.0.copyload.i, %bb.fc ], [ undef, %_ZN5insta7runtime24prevent_inline_duplicate17h3420a7b310a586dbE.exit.i ] ; 8 uses
  %.sroa.0223.7.i = phi i64 [ %.sroa.0299.0.copyload.i, %bb.fc ], [ -9223372036854775808, %_ZN5insta7runtime24prevent_inline_duplicate17h3420a7b310a586dbE.exit.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !15422
  %i.ww = load ptr, ptr %i.dm, align 8, !noalias !15422, !nonnull !17, !align !31, !noundef !17
  %i.wx = load i64, ptr %i.dv, align 8, !noalias !15422, !noundef !17
  %i.wy = load ptr, ptr %i.dl, align 8, !noalias !15422, !nonnull !17, !align !31, !noundef !17
  %i.wz = load i64, ptr %i.dw, align 8, !noalias !15422, !noundef !17
  invoke fastcc void @_ZN5insta7runtime20detect_snapshot_name17h5280a42ad0dee962E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ww, i64 noundef %i.wx, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.wy, i64 noundef %i.wz, i1 noundef zeroext true, i1 noundef zeroext %.sroa.03.0.i.i.i)
          to label %.thread447.i unwind label %bb.h, !noalias !15423

bb.fc:                                            ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !15552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !15422
  %.sroa.0299.0.copyload.i = load i64, ptr %i.cy, align 8, !noalias !15422
  %.sroa.5300.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.5300.0.copyload.i = load ptr, ptr %.sroa.5300.0..sroa_idx.i, align 8, !noalias !15422
  %.sroa.7301.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.sroa.7301.0.copyload.i = load i64, ptr %.sroa.7301.0..sroa_idx.i, align 8, !noalias !15422
  br label %bb.fb

.thread447.i:                                     ; preds = %bb.fb
  %i.xa = load i64, ptr %i.cw, align 8, !range !30, !noalias !15422, !noundef !17 ; 2 uses
  %i.xb = icmp eq i64 %i.xa, -9223372036854775808 ; 2 uses
  %.sroa.482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.482.sroa.0.0.copyload.i = load ptr, ptr %.sroa.482.0..sroa_idx.i, align 8, !noalias !15422
  %.sroa.482.sroa.4.0..sroa.482.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.sroa.482.sroa.4.0.copyload.i = load i64, ptr %.sroa.482.sroa.4.0..sroa.482.0..sroa_idx.sroa_idx.i, align 8, !noalias !15422
  %.sroa.527.sroa.4.0.i = select i1 %i.xb, i64 undef, i64 %.sroa.482.sroa.4.0.copyload.i
  %.sroa.527.sroa.0.0.i = select i1 %i.xb, ptr undef, ptr %.sroa.482.sroa.0.0.copyload.i ; 7 uses
  %.sroa.025.0.i = call i64 @llvm.smax.i64(i64 %i.xa, i64 -9223372036854775807) ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !15422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !15422
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.xd = load ptr, ptr %i.xc, align 8, !noalias !15423, !nonnull !17, !noundef !17
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.xf = load i64, ptr %i.xe, align 8, !noalias !15423, !noundef !17
  %i.xg = load ptr, ptr %i.dk, align 8, !noalias !15422, !nonnull !17, !align !31, !noundef !17
  %i.xh = load i64, ptr %i.dx, align 8, !noalias !15422, !noundef !17
  invoke void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cv, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.xd, i64 noundef %i.xf, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.xg, i64 noundef %i.xh)
          to label %_ZN3std4path4Path4join17hf68f262edb77cf02E.exit.i unwind label %bb.h, !noalias !15423

_ZN3std4path4Path4join17hf68f262edb77cf02E.exit.i: ; preds = %.thread447.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !15422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !15422
  %i.xi = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.xj = load ptr, ptr %i.xi, align 8, !noalias !15422, !nonnull !17, !noundef !17
  %i.xk = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.xl = load i64, ptr %i.xk, align 8, !noalias !15422, !noundef !17
  %i.xm = invoke { ptr, i64 } @_ZN3std4path4Path9file_name17h77694d5a6d90e999E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.xj, i64 noundef %i.xl)
          to label %bb.fe unwind label %.thread467.i, !noalias !15423 ; 2 uses

.thread467.i:                                     ; preds = %.invoke.i, %bb.fh, %bb.ff, %_ZN3std4path4Path4join17hf68f262edb77cf02E.exit.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread458.i

bb.fd:                                            ; preds = %bb.fn
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit213.i"

bb.fe:                                            ; preds = %_ZN3std4path4Path4join17hf68f262edb77cf02E.exit.i
  %i.xn = extractvalue { ptr, i64 } %i.xm, 0      ; 2 uses
  %.not108.i = icmp eq ptr %i.xn, null
  br i1 %.not108.i, label %.invoke.i, label %bb.ff, !prof !22

bb.ff:                                            ; preds = %bb.fe
  %i.xo = extractvalue { ptr, i64 } %i.xm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !15422
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.co, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.xn, i64 noundef %i.xo)
          to label %bb.fg unwind label %.thread467.i, !noalias !15423

end_hunk_8
begin_hunk_9_@_ZN5insta7runtime15assert_snapshot17h1e63cc8134f2e2b1E:bb.a

bb.gu:                                            ; preds = %bb.gq
  %i.aat = icmp slt i64 %13, 0
  br i1 %i.aat, label %bb.gv, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i14.i.i.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i14.i.i.i.i.i: ; preds = %bb.gu
  %i.aau = icmp eq i64 %13, 0
  br i1 %i.aau, label %bb.gy, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i15.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i15.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i14.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !15587
  %i.aav = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %13, i64 noundef range(i64 1, 17) 1) #51, !noalias !15587 ; 2 uses
  %i.aaw = icmp eq ptr %i.aav, null
  br i1 %i.aaw, label %bb.gv, label %bb.gy

bb.gv:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i15.i.i.i.i.i", %bb.gu
  %.sroa.4.0.ph.i.i19.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i15.i.i.i.i.i" ], [ 0, %bb.gu ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i19.i.i.i.i.i, i64 %13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc20.i.i.i.i.i unwind label %bb.gx, !noalias !15581

.noexc20.i.i.i.i.i:                               ; preds = %bb.gv
  unreachable

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit25.i.i.i.i.i": ; preds = %bb.hd, %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i.i", %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i.i", %bb.gx
  %.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.aax, %bb.gx ], [ %.pn.i.i.i.i.i, %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i.i" ], [ %.pn.i.i.i.i.i, %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i.i" ], [ %.pn.i.i.i.i.i, %bb.hd ] ; 3 uses
  switch i64 %.sroa.011.0.i.i.i.i.i, label %bb.gw [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit23.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit23.i.i.i.i.i"
  ]

bb.gw:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit25.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.613.0.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.613.0.i.i.i.i.i, i64 noundef %.sroa.011.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15588
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit23.i.i.i.i.i"

bb.gx:                                            ; preds = %bb.gv
  %i.aax = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit25.i.i.i.i.i"

bb.gy:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i15.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i14.i.i.i.i.i
  %.sroa.10.0.i.i16.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i14.i.i.i.i.i ], [ %i.aav, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i15.i.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i16.i.i.i.i.i, ptr nonnull readonly align 1 %12, i64 %13, i1 false), !noalias !15589
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gq
  %.sroa.620.0.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i16.i.i.i.i.i, %bb.gy ], [ undef, %bb.gq ] ; 3 uses
  %.sroa.018.0.i.i.i.i.i = phi i64 [ %13, %bb.gy ], [ -9223372036854775808, %bb.gq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !15581
  %i.aay = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i, i64 16 ; 2 uses
  %i.aaz = load i8, ptr %i.aay, align 16, !range !40, !noalias !15581, !noundef !17
  %.not8.i.i.i.i.i = icmp eq i8 %i.aaz, 30
  br i1 %.not8.i.i.i.i.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !15581
  invoke fastcc void @"_ZN62_$LT$insta..content..Content$u20$as$u20$core..clone..Clone$GT$5clone17hb85a41ce83ea0756E"(ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.bg, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.aay)
          to label %bb.hf unwind label %bb.he, !noalias !15581

bb.hb:                                            ; preds = %bb.gz
  store i8 30, ptr %i.bh, align 16, !noalias !15581
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hf, %bb.hb
  %i.aba = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i, i64 80
  %i.abb = load i64, ptr %i.aba, align 16, !range !30, !noalias !15581, !noundef !17
  %.not9.i.i.i.i.i = icmp eq i64 %i.abb, -9223372036854775808
  br i1 %.not9.i.i.i.i.i, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.i.thread.i", label %bb.hg

"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i.i": ; preds = %bb.hz, %.body.i.i.i.i.i, %bb.he
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.abc, %bb.he ], [ %eh.lpad-body.i.i.i.i.i49, %bb.hz ], [ %eh.lpad-body.i.i.i.i.i49, %.body.i.i.i.i.i ] ; 3 uses
  switch i64 %.sroa.018.0.i.i.i.i.i, label %bb.hd [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit25.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit25.i.i.i.i.i"
  ]

bb.hd:                                            ; preds = %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.620.0.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.620.0.i.i.i.i.i, i64 noundef %.sroa.018.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15590
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit25.i.i.i.i.i"

bb.he:                                            ; preds = %bb.ha
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i.i"

bb.hf:                                            ; preds = %bb.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bh, ptr noundef nonnull align 16 dereferenceable(64) %i.bg, i64 64, i1 false), !noalias !15581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !15581
  br label %bb.hc

bb.hg:                                            ; preds = %bb.hc
  %i.abd = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i, i64 88
  %i.abe = load ptr, ptr %i.abd, align 8, !noalias !15581, !nonnull !17, !noundef !17
  %i.abf = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i, i64 96
  %i.abg = load i64, ptr %i.abf, align 16, !noalias !15581, !noundef !17
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !15573, !noalias !15582, !nonnull !17, !noundef !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !15591
  %i.abh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24 ; 2 uses
  %i.abi = load ptr, ptr %i.abh, align 8, !noalias !15591, !nonnull !17, !noundef !17
  %i.abj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 32 ; 2 uses
  %i.abk = load i64, ptr %i.abj, align 8, !noalias !15591, !noundef !17
  invoke void @_ZN3std3sys2fs12canonicalize17ha56160b4e1725479E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.abi, i64 noundef %i.abk)
          to label %.noexc26.i.i.i.i.i unwind label %bb.hy, !noalias !15581

.noexc26.i.i.i.i.i:                               ; preds = %bb.hg
  %i.abl = load i64, ptr %i.bd, align 8, !range !30, !noalias !15591, !noundef !17 ; 7 uses
  %i.abm = icmp eq i64 %i.abl, -9223372036854775808
  %i.abn = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  br i1 %i.abm, label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$std..path..PathBuf$C$std..io..error..Error$GT$$GT$17h4e514f71ebc08e79E.exit50.i.i.i.i.i.i", label %bb.hh

bb.hh:                                            ; preds = %.noexc26.i.i.i.i.i
  %.sroa.614.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.abn, align 8, !noalias !15591 ; 7 uses
  %.sroa.614.sroa.6.0..sroa.614.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.614.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.614.sroa.6.0..sroa.614.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !15591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !15591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !15591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !15591
  %i.abo = load ptr, ptr %i.abh, align 8, !noalias !15591, !nonnull !17, !noundef !17
  %i.abp = load i64, ptr %i.abj, align 8, !noalias !15591, !noundef !17
  invoke void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.abo, i64 noundef %i.abp, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.abe, i64 noundef %i.abg)
          to label %_ZN3std4path4Path4join17h3300f33127d89f4eE.exit.i.i.i.i.i.i51 unwind label %bb.hj, !noalias !15592

"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$std..path..PathBuf$C$std..io..error..Error$GT$$GT$17h4e514f71ebc08e79E.exit50.i.i.i.i.i.i": ; preds = %.noexc26.i.i.i.i.i
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.abn)
          to label %.noexc27.i.i.i.i.i unwind label %bb.hy, !noalias !15581

.noexc27.i.i.i.i.i:                               ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$std..path..PathBuf$C$std..io..error..Error$GT$$GT$17h4e514f71ebc08e79E.exit50.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !15591
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.i.thread.i"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit51.i.i.i.i.i.i": ; preds = %bb.hq, %bb.hp, %bb.hl, %bb.hk, %bb.hj
  %.pn.i.i.i.i.i.i50 = phi { ptr, i32 } [ %i.abr, %bb.hj ], [ %i.abw, %bb.hl ], [ %i.abw, %bb.hk ], [ %i.acc, %bb.hp ], [ %i.acc, %bb.hq ] ; 2 uses
  %i.abq = icmp eq i64 %i.abl, 0
  br i1 %i.abq, label %.body.i.i.i.i.i, label %bb.hi

bb.hi:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit51.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.614.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %i.abl, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15592
  br label %.body.i.i.i.i.i

bb.hj:                                            ; preds = %bb.hh
  %i.abr = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit51.i.i.i.i.i.i"

_ZN3std4path4Path4join17h3300f33127d89f4eE.exit.i.i.i.i.i.i51: ; preds = %bb.hh
  %i.abs = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.abt = load ptr, ptr %i.abs, align 8, !noalias !15591, !nonnull !17, !noundef !17 ; 4 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.abv = load i64, ptr %i.abu, align 8, !noalias !15591, !noundef !17
  invoke void @_ZN3std3sys2fs12canonicalize17ha56160b4e1725479E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bc, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.abt, i64 noundef %i.abv)
          to label %_ZN3std2fs12canonicalize17h81d57f5fd07ffcdbE.exit.i.i.i.i.i.i unwind label %bb.hk, !noalias !15592

bb.hk:                                            ; preds = %bb.ho, %_ZN3std4path4Path4join17h3300f33127d89f4eE.exit.i.i.i.i.i.i51
  %i.abw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val45.i.i.i.i.i.i = load i64, ptr %i.bb, align 8, !noalias !15591 ; 2 uses
  %i.abx = icmp eq i64 %.val45.i.i.i.i.i.i, 0
  br i1 %i.abx, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit51.i.i.i.i.i.i", label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abt, i64 noundef %.val45.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15592
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit51.i.i.i.i.i.i"

_ZN3std2fs12canonicalize17h81d57f5fd07ffcdbE.exit.i.i.i.i.i.i: ; preds = %_ZN3std4path4Path4join17h3300f33127d89f4eE.exit.i.i.i.i.i.i51
  %i.aby = load i64, ptr %i.bc, align 8, !range !30, !noalias !15591, !noundef !17 ; 5 uses
  %i.abz = icmp eq i64 %i.aby, -9223372036854775808
  %i.aca = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  br i1 %i.abz, label %bb.ho, label %bb.hm

bb.hm:                                            ; preds = %_ZN3std2fs12canonicalize17h81d57f5fd07ffcdbE.exit.i.i.i.i.i.i
  %.sroa.623.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.aca, align 8, !noalias !15591 ; 4 uses
  %.sroa.623.sroa.6.0..sroa.623.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.623.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.623.sroa.6.0..sroa.623.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !15591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !15591
  %.val43.i.i.i.i.i.i = load i64, ptr %i.bb, align 8, !noalias !15591 ; 2 uses
  %i.acb = icmp eq i64 %.val43.i.i.i.i.i.i, 0
  br i1 %i.acb, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit54.i.i.i.i.i.i", label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abt, i64 noundef %.val43.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15592
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit54.i.i.i.i.i.i"

bb.ho:                                            ; preds = %_ZN3std2fs12canonicalize17h81d57f5fd07ffcdbE.exit.i.i.i.i.i.i
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.aca)
          to label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$std..path..PathBuf$C$std..io..error..Error$GT$$GT$17h4e514f71ebc08e79E.exit57.i.i.i.i.i.i" unwind label %bb.hk, !noalias !15592

bb.hp:                                            ; preds = %bb.hr, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit54.i.i.i.i.i.i"
  %i.acc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acd = icmp eq i64 %i.aby, 0
  br i1 %i.acd, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit51.i.i.i.i.i.i", label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.623.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %i.aby, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15592
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit51.i.i.i.i.i.i"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit54.i.i.i.i.i.i": ; preds = %bb.hn, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !15591
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.623.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.sroa.0.0.copyload.i.i.i.i.i.i) ]
  %i.ace = invoke { ptr, i64 } @_ZN3std4path4Path13_strip_prefix17h70fd9b124dcff30fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.623.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.623.sroa.6.0.copyload.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.614.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.614.sroa.6.0.copyload.i.i.i.i.i.i)
          to label %_ZN3std4path4Path12strip_prefix17hf4560cfb0756f15fE.exit.i.i.i.i.i.i unwind label %bb.hp, !noalias !15592 ; 2 uses

_ZN3std4path4Path12strip_prefix17hf4560cfb0756f15fE.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit54.i.i.i.i.i.i"
  %i.acf = extractvalue { ptr, i64 } %i.ace, 0    ; 2 uses
  %i.acg = icmp eq ptr %i.acf, null
  br i1 %i.acg, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %_ZN3std4path4Path12strip_prefix17hf4560cfb0756f15fE.exit.i.i.i.i.i.i
  %i.ach = extractvalue { ptr, i64 } %i.ace, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !15591
  invoke void @_ZN3std4path4Path11to_path_buf17hf66a9eb0c98d1fb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.acf, i64 noundef %i.ach)
          to label %bb.hu unwind label %bb.hp, !noalias !15592

bb.hs:                                            ; preds = %bb.hu, %_ZN3std4path4Path12strip_prefix17hf4560cfb0756f15fE.exit.i.i.i.i.i.i
  %.sroa.8.sroa.4.0.i.i.i.i.i = phi i64 [ %.sroa.8.sroa.4.0.copyload.i.i.i.i.i, %bb.hu ], [ undef, %_ZN3std4path4Path12strip_prefix17hf4560cfb0756f15fE.exit.i.i.i.i.i.i ]
  %.sroa.8.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.8.sroa.0.0.copyload.i.i.i.i.i, %bb.hu ], [ undef, %_ZN3std4path4Path12strip_prefix17hf4560cfb0756f15fE.exit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.028.0.i.i.i.i.i = phi i64 [ %.sroa.028.0.copyload29.i.i.i.i.i, %bb.hu ], [ -9223372036854775808, %_ZN3std4path4Path12strip_prefix17hf4560cfb0756f15fE.exit.i.i.i.i.i.i ] ; 5 uses
  %i.aci = icmp eq i64 %i.aby, 0
  br i1 %i.aci, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit60.i.i.i.i.i.i", label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.623.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %i.aby, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15592
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit60.i.i.i.i.i.i"

bb.hu:                                            ; preds = %bb.hr
  %.sroa.028.0.copyload29.i.i.i.i.i = load i64, ptr %i.ba, align 8, !noalias !15593
  %.sroa.8.0..sroa_idx30.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.8.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.8.0..sroa_idx30.i.i.i.i.i, align 8, !noalias !15593
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx30.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.8.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx30.sroa_idx.i.i.i.i.i, align 8, !noalias !15593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !15591
  br label %bb.hs

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit60.i.i.i.i.i.i": ; preds = %bb.ht, %bb.hs
  %i.acj = icmp eq i64 %i.abl, 0
  br i1 %i.acj, label %_ZN5insta7runtime24SnapshotAssertionContext13localize_path17hf47db84cd5705837E.exit.i.i.i.i.i, label %bb.hv

bb.hv:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit60.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.614.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %i.abl, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15592
  br label %_ZN5insta7runtime24SnapshotAssertionContext13localize_path17hf47db84cd5705837E.exit.i.i.i.i.i

"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$std..path..PathBuf$C$std..io..error..Error$GT$$GT$17h4e514f71ebc08e79E.exit57.i.i.i.i.i.i": ; preds = %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !15591
  %.val41.i.i.i.i.i.i = load i64, ptr %i.bb, align 8, !noalias !15591 ; 2 uses
  %i.ack = icmp eq i64 %.val41.i.i.i.i.i.i, 0
  br i1 %i.ack, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit62.i.i.i.i.i.i", label %bb.hw

bb.hw:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$std..path..PathBuf$C$std..io..error..Error$GT$$GT$17h4e514f71ebc08e79E.exit57.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abt, i64 noundef %.val41.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15592
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit62.i.i.i.i.i.i"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit62.i.i.i.i.i.i": ; preds = %bb.hw, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$std..path..PathBuf$C$std..io..error..Error$GT$$GT$17h4e514f71ebc08e79E.exit57.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !15591
  %i.acl = icmp eq i64 %i.abl, 0
  br i1 %i.acl, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.i.thread.i", label %bb.hx

bb.hx:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit62.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.614.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %i.abl, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15592
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.i.thread.i"

bb.hy:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$std..path..PathBuf$C$std..io..error..Error$GT$$GT$17h4e514f71ebc08e79E.exit50.i.i.i.i.i.i", %bb.hg
  %i.acm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.ic, %bb.ib, %bb.hy, %bb.hi, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit51.i.i.i.i.i.i"
  %eh.lpad-body.i.i.i.i.i49 = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i50, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit51.i.i.i.i.i.i" ], [ %.pn.i.i.i.i.i.i50, %bb.hi ], [ %i.acm, %bb.hy ], [ %i.acp, %bb.ic ], [ %i.acp, %bb.ib ] ; 2 uses
  %i.acn = load i8, ptr %i.bh, align 16, !range !40, !alias.scope !15594, !noalias !15581, !noundef !17
  %i.aco = icmp eq i8 %i.acn, 30
  br i1 %i.aco, label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i.i", label %bb.hz

bb.hz:                                            ; preds = %.body.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$insta..content..Content$GT$17hcb4984964b03ed1dE"(ptr noalias noundef nonnull readonly align 16 dereferenceable(64) %i.bh)
          to label %"_ZN4core3ptr72drop_in_place$LT$core..option..Option$LT$insta..content..Content$GT$$GT$17hc657d58c83dc7dc1E.exit.i.i.i.i.i" unwind label %bb.if, !noalias !15581

_ZN5insta7runtime24SnapshotAssertionContext13localize_path17hf47db84cd5705837E.exit.i.i.i.i.i: ; preds = %bb.hv, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit60.i.i.i.i.i.i"
  %.not10.i.i.i.i.i = icmp eq i64 %.sroa.028.0.i.i.i.i.i, -9223372036854775808
  br i1 %.not10.i.i.i.i.i, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.i.thread.i", label %bb.ia

bb.ia:                                            ; preds = %_ZN5insta7runtime24SnapshotAssertionContext13localize_path17hf47db84cd5705837E.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !15581
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.i.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !15595
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.az, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.8.sroa.0.0.i.i.i.i.i, i64 noundef %.sroa.8.sroa.4.0.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i52 unwind label %bb.ib, !noalias !15596

.noexc.i.i.i.i.i.i52:                             ; preds = %bb.ia
  invoke void @"_ZN98_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$4from17h15dc617ecf36ace9E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.az)
          to label %bb.id unwind label %bb.ib, !noalias !15597

bb.ib:                                            ; preds = %.noexc.i.i.i.i.i.i52, %bb.ia
  %i.acp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acq = icmp eq i64 %.sroa.028.0.i.i.i.i.i, 0
  br i1 %i.acq, label %.body.i.i.i.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.i.i.i.i.i, i64 noundef %.sroa.028.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15596
  br label %.body.i.i.i.i.i

bb.id:                                            ; preds = %.noexc.i.i.i.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !15595
  %i.acr = icmp eq i64 %.sroa.028.0.i.i.i.i.i, 0
  br i1 %i.acr, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.i.i", label %bb.ie

bb.ie:                                            ; preds = %bb.id
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.i.i.i.i.i, i64 noundef %.sroa.028.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15596
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.i.i"

bb.if:                                            ; preds = %bb.hz
  %i.acs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !15581
  unreachable

bb.ig:                                            ; preds = %.noexc.i.i.i.i47, %bb.gn
  %i.act = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.gr, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit23.i.i.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit23.i.i.i.i.i"
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.act, %bb.ig ], [ %.pn.pn.pn.i.i.i.i.i, %bb.gr ], [ %.pn.pn.pn.i.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit23.i.i.i.i.i" ], [ %.pn.pn.pn.i.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit23.i.i.i.i.i" ]
  %i.acu = load i64, ptr %.sroa.0.0.i.i.i4.i.i.i, align 8, !noalias !15580, !noundef !17
  %i.acv = add i64 %i.acu, -1
  store i64 %i.acv, ptr %.sroa.0.0.i.i.i4.i.i.i, align 8, !noalias !15580
  br label %.body.i

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.i.thread.i": ; preds = %_ZN5insta7runtime24SnapshotAssertionContext13localize_path17hf47db84cd5705837E.exit.i.i.i.i.i, %bb.hx, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h1730168c5792b04aE.exit62.i.i.i.i.i.i", %.noexc27.i.i.i.i.i, %bb.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.bh, i64 64, i1 false), !noalias !15598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !15581
  %i.acw = load i64, ptr %.sroa.0.0.i.i.i4.i.i.i, align 8, !noalias !15580, !noundef !17
  %i.acx = add i64 %i.acw, -1
  store i64 %i.acx, ptr %.sroa.0.0.i.i.i4.i.i.i, align 8, !noalias !15580
  br label %bb.in

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.i.i": ; preds = %bb.ie, %bb.id
  %.sroa.02.0.copyload3.i.i.i.i.i = load i64, ptr %i.bf, align 8, !noalias !15581 ; 2 uses
  %.sroa.5.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx4.i.i.i.i.i, i64 16, i1 false), !noalias !15598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !15581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.bh, i64 64, i1 false), !noalias !15598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !15581
  %i.acy = load i64, ptr %.sroa.0.0.i.i.i4.i.i.i, align 8, !noalias !15580, !noundef !17
  %i.acz = add i64 %i.acy, -1
  store i64 %i.acz, ptr %.sroa.0.0.i.i.i4.i.i.i, align 8, !noalias !15580
  %i.ada = icmp eq i64 %.sroa.02.0.copyload3.i.i.i.i.i, -9223372036854775807
  br i1 %i.ada, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.thread.i.i", label %bb.in, !prof !15599

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.thread.i.i": ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.i.i", %.noexc12.i
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #54
          to label %.noexc14.i unwind label %bb.il, !noalias !15575

.noexc14.i:                                       ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.thread.i.i"
  unreachable

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i": ; preds = %bb.im, %.body.i, %.body.i, %bb.ij
  %.pn.i = phi { ptr, i32 } [ %i.add, %bb.ij ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.im ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15600)
  %.val.i.i45 = load i64, ptr %i.bj, align 8, !alias.scope !15600, !noalias !15575 ; 2 uses
  %i.adb = icmp eq i64 %.val.i.i45, 0
  br i1 %i.adb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i", label %bb.ii

bb.ii:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i"
  %i.adc = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val1.i.i46 = load ptr, ptr %i.adc, align 8, !alias.scope !15600, !noalias !15575, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i46, i64 noundef %.val.i.i45, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15601
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.i"

bb.ij:                                            ; preds = %bb.gk
  %i.add = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i"

bb.ik:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.zq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.val5.i, i64 %.val6.i, i1 false), !noalias !15602
  br label %bb.gl

bb.il:                                            ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.thread.i.i", %bb.gm, %_ZN4core3ops8function6FnOnce9call_once17h8268cfd1e0b4e91eE.exit.i.i.i
  %i.ade = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.il, %bb.ih
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ade, %bb.il ], [ %eh.lpad-body.i.i.i.i, %bb.ih ] ; 3 uses
  switch i64 %.sroa.016.0.i, label %bb.im [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i"
  ]

bb.im:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i, i64 noundef %.sroa.016.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !15603
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h57b07c7444f77050E.exit.i"

bb.in:                                            ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.i.i", %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.i.thread.i"
  %.sroa.02.0.i.i.i.i29.i = phi i64 [ -9223372036854775808, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.i.thread.i" ], [ %.sroa.02.0.copyload3.i.i.i.i.i, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h85781fe9dc72b0a4E.exit.i.i" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ds, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i.i, i64 64, i1 false), !noalias !15604
end_hunk_9
begin_hunk_10_@_ZN5insta7runtime20detect_snapshot_name17h5280a42ad0dee962E:bb.a
"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb8864cecee121167E.exit.thread.i": ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb8864cecee121167E.exit.thread32.i", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb8864cecee121167E.exit.i", %bb.ae, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hced69dcd72af3b4aE.exit.i.i"
  %.sroa.7.031.i = phi ptr [ %.sroa.524.0.copyload.i.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb8864cecee121167E.exit.thread32.i" ], [ %.sroa.524.0.copyload.i.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb8864cecee121167E.exit.i" ], [ %.sroa.0.0.i.i.i, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hced69dcd72af3b4aE.exit.i.i" ], [ %.sroa.0.0.i.i.i, %bb.ae ] ; 2 uses
  %.sroa.14.030.i = phi i64 [ %i.dw, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb8864cecee121167E.exit.thread32.i" ], [ %i.du, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb8864cecee121167E.exit.i" ], [ %.sroa.8.0.i.i.i.i884, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hced69dcd72af3b4aE.exit.i.i" ], [ %.sroa.8.0.i.i.i.i884, %bb.ae ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.031.i) ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.7.031.i, i64 276
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sroa.14.030.i
  %i.ea = zext i1 %.sroa.03.0.i291 to i8
  store i8 %i.ea, ptr %i.dz, align 1, !noalias !16086
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h4e9eca53d73307ffE.exit"

bb.af:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb8864cecee121167E.exit.thread32.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !16097
  %i.eb = call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !16097 ; 8 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ag, label %bb.ah, !prof !22

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 288) #54
          to label %.noexc.i.i unwind label %bb.bz, !noalias !16097

.noexc.i.i:                                       ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  store ptr null, ptr %i.eb, align 8, !noalias !16097
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 274
  store ptr %i.eb, ptr %i.bn, align 8, !alias.scope !16085, !noalias !16098
  store i64 0, ptr %i.bo, align 8, !alias.scope !16085, !noalias !16098
  store i16 1, ptr %i.ed, align 2, !noalias !16099
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %.sroa.022.0.copyload.i.i, ptr %i.ee, align 8, !noalias !16100
  %.sroa.518.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store ptr %.sroa.524.0.copyload.i.i, ptr %.sroa.518.0..sroa_idx19.i.i, align 8, !noalias !16100
  %.sroa.6.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx21.i.i, align 8, !noalias !16100
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 276
  %i.eg = zext i1 %.sroa.03.0.i291 to i8
  store i8 %i.eg, ptr %i.ef, align 4, !noalias !16099
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6d83e6a699e18dacE.exit.i"

bb.ai:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb8864cecee121167E.exit.i"
  %.sink63.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %.sink63.i.sroa.gep121.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  %.sink62.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sink62.i.sroa.gep123.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16101
  %i.eh = icmp ugt i16 %i.cy, 10
  br i1 %i.eh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ei = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i, ptr %i.i, align 8, !noalias !16102
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.ej, align 8, !noalias !16102
  %i.ek = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  br i1 %i.ei, label %.invoke.i.i.i.i, label %bb.am

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !16103)
  %.not.i.i.i.i.not.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, %i.cz
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %.sroa.4.0.i.ph.i.i.i ; 7 uses
  br i1 %.not.i.i.i.i.not.i, label %bb.al, label %_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i.i.i.i.i: ; preds = %bb.ak
  store i64 %.sroa.037.0.copyload.i.i, ptr %i.el, align 8, !alias.scope !16104, !noalias !16105
  %.sroa.934.0..sroa_idx37.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %.sroa.524.0.copyload.i.i, ptr %.sroa.934.0..sroa_idx37.i.i.i, align 8, !alias.scope !16104, !noalias !16105
  %.sroa.1143.0..sroa_idx46.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.1143.0..sroa_idx46.i.i.i, align 8, !alias.scope !16104, !noalias !16105
  br label %.thread.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.em = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.em
  %i.eo = sub nuw nsw i64 %i.cz, %.sroa.4.0.i.ph.i.i.i ; 2 uses
  %i.ep = mul nuw nsw i64 %i.eo, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.en, ptr nonnull align 8 %i.el, i64 %i.ep, i1 false), !alias.scope !16106, !noalias !16107
  store i64 %.sroa.037.0.copyload.i.i, ptr %i.el, align 8, !alias.scope !16104, !noalias !16105
  %.sroa.934.0..sroa_idx35.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %.sroa.524.0.copyload.i.i, ptr %.sroa.934.0..sroa_idx35.i.i.i, align 8, !alias.scope !16104, !noalias !16105
  %.sroa.1143.0..sroa_idx44.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.1143.0..sroa_idx44.i.i.i, align 8, !alias.scope !16104, !noalias !16105
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 276 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.4.0.i.ph.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.em
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.es, ptr nonnull align 1 %i.er, i64 %i.eo, i1 false), !alias.scope !16108, !noalias !16107
  br label %.thread.i.i.i

bb.am:                                            ; preds = %bb.aj
  switch i64 %.sroa.4.0.i.ph.i.i.i, label %bb.an [
    i64 5, label %.invoke.i.i.i.i
    i64 6, label %bb.ao
  ]

.invoke.i.i.i.i:                                  ; preds = %bb.am, %bb.aj
  %.sink.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i, %bb.am ], [ 4, %bb.aj ]
  store i64 %.sink.i.i.i.i, ptr %i.ek, align 8, !noalias !16102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16102
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17he7ffaaca4b1c257eE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.aq unwind label %bb.as, !noalias !16109

bb.an:                                            ; preds = %bb.am
  store i64 6, ptr %i.ek, align 8, !noalias !16102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16102
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17he7ffaaca4b1c257eE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.ap unwind label %bb.as, !noalias !16109

bb.ao:                                            ; preds = %bb.am
  store i64 5, ptr %i.ek, align 8, !noalias !16102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16102
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17he7ffaaca4b1c257eE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.aq unwind label %bb.as, !noalias !16109

bb.ap:                                            ; preds = %bb.an
  %i.et = add nsw i64 %.sroa.4.0.i.ph.i.i.i, -7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %.invoke.i.i.i.i
  %.sink63.i.sroa.phi.i.i.i = phi ptr [ %.sink63.i.sroa.gep.i.i.i, %.invoke.i.i.i.i ], [ %.sink63.i.sroa.gep121.i.i.i, %bb.ao ], [ %.sink63.i.sroa.gep121.i.i.i, %bb.ap ]
  %.sroa.10.0.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i, %.invoke.i.i.i.i ], [ 0, %bb.ao ], [ %i.et, %bb.ap ] ; 6 uses
  %i.eu = load ptr, ptr %.sink63.i.sroa.phi.i.i.i, align 8, !noalias !16102, !nonnull !17, !noundef !17 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 274 ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 2, !noalias !16110, !noundef !17 ; 2 uses
  %i.ex = zext i16 %i.ew to i64                   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16111)
  %.not.i41.not.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i, %i.ex
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %.sroa.10.0.i.i.i.i ; 7 uses
  br i1 %.not.i41.not.i.i.i.i, label %bb.ar, label %_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i42.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i42.i.i.i.i: ; preds = %bb.aq
  store i64 %.sroa.037.0.copyload.i.i, ptr %i.ez, align 8, !alias.scope !16112, !noalias !16113
  %.sroa.934.0..sroa_idx39.i.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %.sroa.524.0.copyload.i.i, ptr %.sroa.934.0..sroa_idx39.i.i.i, align 8, !alias.scope !16112, !noalias !16113
  %.sroa.1143.0..sroa_idx48.i.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.1143.0..sroa_idx48.i.i.i, align 8, !alias.scope !16112, !noalias !16113
  br label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.fa = add nuw nsw i64 %.sroa.10.0.i.i.i.i, 1  ; 2 uses
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.fa
  %i.fc = sub nuw nsw i64 %i.ex, %.sroa.10.0.i.i.i.i ; 2 uses
  %i.fd = mul nuw nsw i64 %i.fc, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fb, ptr nonnull align 8 %i.ez, i64 %i.fd, i1 false), !alias.scope !16114, !noalias !16110
  store i64 %.sroa.037.0.copyload.i.i, ptr %i.ez, align 8, !alias.scope !16112, !noalias !16113
  %.sroa.934.0..sroa_idx41.i.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %.sroa.524.0.copyload.i.i, ptr %.sroa.934.0..sroa_idx41.i.i.i, align 8, !alias.scope !16112, !noalias !16113
  %.sroa.1143.0..sroa_idx50.i.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.1143.0..sroa_idx50.i.i.i, align 8, !alias.scope !16112, !noalias !16113
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 276 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sroa.10.0.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fa
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fg, ptr nonnull align 1 %i.ff, i64 %i.fc, i1 false), !alias.scope !16115, !noalias !16110
  br label %bb.au

.thread.i.i.i:                                    ; preds = %bb.al, %_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i.i.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 276
  %i.fi = add nuw nsw i16 %i.cy, 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.sroa.4.0.i.ph.i.i.i
  %i.fk = zext i1 %.sroa.03.0.i291 to i8
  store i8 %i.fk, ptr %i.fj, align 1, !alias.scope !16108, !noalias !16107
  store i16 %i.fi, ptr %i.dt, align 2, !noalias !16107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16101
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6d83e6a699e18dacE.exit.i"

bb.as:                                            ; preds = %bb.ao, %bb.an, %.invoke.i.i.i.i
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = icmp eq i64 %.sroa.037.0.copyload.i.i, 0
  br i1 %i.fm, label %.body, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.524.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload.i.i, i64 noundef %.sroa.037.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !16116
  br label %.body

bb.au:                                            ; preds = %bb.ar, %_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i42.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 276
  %i.fo = add i16 %i.ew, 1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.sroa.10.0.i.i.i.i
  %i.fq = zext i1 %.sroa.03.0.i291 to i8
  store i8 %i.fq, ptr %i.fp, align 1, !alias.scope !16115, !noalias !16110
  store i16 %i.fo, ptr %i.ev, align 2, !noalias !16110
  %.sroa.019.0.copyload.i.i.i = load i64, ptr %i.h, align 8, !noalias !16117 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !16117 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !16117 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.7.sroa.6.0.copyload.i.i.i = load i8, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !16117 ; 2 uses
  %.sroa.722.0.copyload.i.i.i = load ptr, ptr %.sink63.i.sroa.gep.i.i.i, align 8, !noalias !16117 ; 3 uses
  %.sroa.823.0.copyload.i.i.i = load i64, ptr %.sink62.i.sroa.gep.i.i.i, align 8, !noalias !16117
  %.sroa.924.0.copyload.i.i.i = load ptr, ptr %.sink63.i.sroa.gep121.i.i.i, align 8, !noalias !16117 ; 3 uses
  %.sroa.1025.0.copyload.i.i.i = load i64, ptr %.sink62.i.sroa.gep123.i.i.i, align 8, !noalias !16117 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16101
  %.not.i.i.i = icmp eq i64 %.sroa.019.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6d83e6a699e18dacE.exit.i", label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.722.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.924.0.copyload.i.i.i) ]
  %i.fr = load ptr, ptr %.sroa.722.0.copyload.i.i.i, align 8, !noalias !16118, !noundef !17 ; 2 uses
  %.not.i197.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i197.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.av
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %.sroa.859.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %.sroa.862.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %.sroa.965.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %.sroa.1171.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  br label %bb.bg

._crit_edge.i.i.i:                                ; preds = %bb.bx, %bb.av
  %.sroa.20.0.lcssa.i.i.i = phi i64 [ %.sroa.1025.0.copyload.i.i.i, %bb.av ], [ %.sroa.1171.0.copyload73.i.i.i, %bb.bx ]
  %.sroa.16.0.lcssa.i.i.i = phi ptr [ %.sroa.924.0.copyload.i.i.i, %bb.av ], [ %.sroa.1068.0.i.i.i, %bb.bx ] ; 3 uses
  %.sroa.913.0.lcssa.i.i.i = phi i8 [ %.sroa.7.sroa.6.0.copyload.i.i.i, %bb.av ], [ %.sroa.859.sroa.7.0.i.i.i, %bb.bx ]
  %.sroa.9.0.lcssa.i.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i, %bb.av ], [ %.sroa.859.sroa.6.0.i.i.i, %bb.bx ]
  %.sroa.8.0.lcssa.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i, %bb.av ], [ %.sroa.859.sroa.0.0.i.i.i, %bb.bx ] ; 5 uses
  %.sroa.03.0.lcssa.i.i.i = phi i64 [ %.sroa.019.0.copyload.i.i.i, %bb.av ], [ %.sroa.056.0.i.i.i, %bb.bx ] ; 5 uses
  %i.fv = load ptr, ptr %i.bn, align 8, !alias.scope !16085, !noalias !16119, !noundef !17 ; 4 uses
  %.not.i19.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i19.i.i.i, label %bb.aw, label %bb.ay, !prof !22

bb.aw:                                            ; preds = %._crit_edge.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #54
          to label %bb.ax unwind label %bb.be, !noalias !16120

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16121)
  %i.fw = load i64, ptr %i.bo, align 8, !alias.scope !16122, !noalias !16119, !noundef !17 ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !16123
  %i.fx = call noalias noundef align 8 dereferenceable_or_null(384) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !16123 ; 12 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.az, label %bb.bb, !prof !22

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 384) #54
          to label %.noexc.i.i.i.i.i unwind label %bb.ba, !noalias !16123

.noexc.i.i.i.i.i:                                 ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.az
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

bb.bb:                                            ; preds = %bb.ay
  store ptr null, ptr %i.fx, align 8, !noalias !16123
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 274 ; 2 uses
  store i16 0, ptr %i.ga, align 2, !noalias !16123
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 288
  store ptr %i.fv, ptr %i.gb, align 8, !noalias !16123
  %i.gc = add i64 %i.fw, 1
  store ptr %i.fx, ptr %i.fv, align 8, !noalias !16124
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 272
  store i16 0, ptr %i.gd, align 8, !noalias !16125
  store ptr %i.fx, ptr %i.bn, align 8, !alias.scope !16122, !noalias !16119
  store i64 %i.gc, ptr %i.bo, align 8, !alias.scope !16122, !noalias !16119
  %i.ge = icmp eq i64 %.sroa.20.0.lcssa.i.i.i, %i.fw
  br i1 %i.ge, label %bb.by, label %.invoke.i.i.i.i.i, !prof !23

.invoke.i.i.i.i.i:                                ; preds = %bb.bb
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #54
          to label %.cont.i.i.i.i.i unwind label %bb.bc, !noalias !16126

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

bb.bc:                                            ; preds = %.invoke.i.i.i.i.i
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = icmp eq i64 %.sroa.03.0.lcssa.i.i.i, 0
  br i1 %i.gg, label %.body, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i.i, i64 noundef %.sroa.03.0.lcssa.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !16127
  br label %.body

bb.be:                                            ; preds = %bb.aw
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = icmp eq i64 %.sroa.03.0.lcssa.i.i.i, 0
  br i1 %i.gi, label %.body, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i.i, i64 noundef %.sroa.03.0.lcssa.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !16128
  br label %.body

bb.bg:                                            ; preds = %bb.bx, %.lr.ph.i.i.i
  %i.gj = phi ptr [ %i.fr, %.lr.ph.i.i.i ], [ %i.nf, %bb.bx ] ; 13 uses
  %.sroa.03.0205.i.i.i = phi i64 [ %.sroa.019.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.056.0.i.i.i, %bb.bx ] ; 8 uses
  %.sroa.8.0204.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.859.sroa.0.0.i.i.i, %bb.bx ] ; 8 uses
  %.sroa.9.0203.i.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.859.sroa.6.0.i.i.i, %bb.bx ] ; 6 uses
  %.sroa.913.0202.i.i.i = phi i8 [ %.sroa.7.sroa.6.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.859.sroa.7.0.i.i.i, %bb.bx ] ; 6 uses
  %.sroa.1016.0201.i.i.i = phi ptr [ %.sroa.722.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.862.0.i.i.i, %bb.bx ]
  %.sroa.13.0200.i.i.i = phi i64 [ %.sroa.823.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.965.0.i.i.i, %bb.bx ] ; 2 uses
  %.sroa.16.0199.i.i.i = phi ptr [ %.sroa.924.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.1068.0.i.i.i, %bb.bx ] ; 3 uses
  %.sroa.20.0198.i.i.i = phi i64 [ %.sroa.1025.0.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.1171.0.copyload73.i.i.i, %bb.bx ]
  %i.gk = add i64 %.sroa.13.0200.i.i.i, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.1016.0201.i.i.i, i64 272
  %i.gm = load i16, ptr %i.gl, align 8, !noalias !16118 ; 5 uses
  %i.gn = zext i16 %i.gm to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16101
  %i.go = icmp eq i64 %.sroa.20.0198.i.i.i, %.sroa.13.0200.i.i.i
  br i1 %i.go, label %bb.bi, label %bb.bh, !prof !23

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @217, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #54
          to label %bb.bj unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !16129

bb.bi:                                            ; preds = %bb.bg
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 274
  %i.gq = load i16, ptr %i.gp, align 2, !noalias !16129, !noundef !17 ; 4 uses
  %i.gr = icmp ult i16 %i.gq, 11
  br i1 %i.gr, label %bb.bl, label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.gs = icmp ult i16 %i.gm, 5
  store ptr %i.gj, ptr %i.g, align 8, !noalias !16130
  store i64 %i.gk, ptr %i.fs, align 8, !noalias !16130
  br i1 %i.gs, label %.invoke.i29.i.i.i, label %bb.bn

bb.bl:                                            ; preds = %bb.bi
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 274
  %i.gu = zext nneg i16 %i.gq to i64              ; 4 uses
  %i.gv = add nuw nsw i16 %i.gq, 1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16131)
  %i.gx = add nuw nsw i64 %i.gn, 1                ; 7 uses
  %.not.i.i31.not.i.i.i = icmp ult i16 %i.gm, %i.gq
  %i.gy = getelementptr inbounds nuw [24 x i8], ptr %i.gw, i64 %i.gn ; 7 uses
  br i1 %.not.i.i31.not.i.i.i, label %bb.bm, label %_ZN5alloc11collections5btree4node12slice_insert17ha22e7a723946e0efE.exit.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17ha22e7a723946e0efE.exit.i.i.i.i.i: ; preds = %bb.bl
  store i64 %.sroa.03.0205.i.i.i, ptr %i.gy, align 8, !alias.scope !16132, !noalias !16133
  %.sroa.1180.0..sroa_idx89.i.i.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %.sroa.8.0204.i.i.i, ptr %.sroa.1180.0..sroa_idx89.i.i.i, align 8, !alias.scope !16132, !noalias !16133
  %.sroa.14.0..sroa_idx99.i.i.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store i64 %.sroa.9.0203.i.i.i, ptr %.sroa.14.0..sroa_idx99.i.i.i, align 8, !alias.scope !16132, !noalias !16133
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gj, i64 276
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gn
  store i8 %.sroa.913.0202.i.i.i, ptr %i.ha, align 1, !alias.scope !16134, !noalias !16135
  br label %_ZN5alloc11collections5btree4node12slice_insert17hbe5701d5b84d6598E.exit.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.gw, i64 %i.gx
  %i.hc = sub nuw nsw i64 %i.gu, %i.gn            ; 3 uses
  %i.hd = mul nuw nsw i64 %i.hc, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hb, ptr nonnull align 8 %i.gy, i64 %i.hd, i1 false), !alias.scope !16136, !noalias !16135
  store i64 %.sroa.03.0205.i.i.i, ptr %i.gy, align 8, !alias.scope !16132, !noalias !16133
  %.sroa.1180.0..sroa_idx87.i.i.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %.sroa.8.0204.i.i.i, ptr %.sroa.1180.0..sroa_idx87.i.i.i, align 8, !alias.scope !16132, !noalias !16133
  %.sroa.14.0..sroa_idx97.i.i.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store i64 %.sroa.9.0203.i.i.i, ptr %.sroa.14.0..sroa_idx97.i.i.i, align 8, !alias.scope !16132, !noalias !16133
  %i.he = getelementptr inbounds nuw i8, ptr %i.gj, i64 276 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.gn ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.gx
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hg, ptr nonnull align 1 %i.hf, i64 %i.hc, i1 false), !alias.scope !16134, !noalias !16135
  store i8 %.sroa.913.0202.i.i.i, ptr %i.hf, align 1, !alias.scope !16134, !noalias !16135
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gj, i64 288 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.gx
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.gn
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = shl nuw nsw i64 %i.hc, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hk, ptr nonnull align 8 %i.hi, i64 %i.hl, i1 false), !alias.scope !16137, !noalias !16135
  br label %_ZN5alloc11collections5btree4node12slice_insert17hbe5701d5b84d6598E.exit.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hbe5701d5b84d6598E.exit.i.i.i.i.i: ; preds = %bb.bm, %_ZN5alloc11collections5btree4node12slice_insert17ha22e7a723946e0efE.exit.i.i.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gj, i64 288 ; 6 uses
  %i.hn = add nuw nsw i64 %i.gu, 2                ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.gx
  store ptr %.sroa.16.0199.i.i.i, ptr %i.ho, align 8, !alias.scope !16137, !noalias !16135
  store i16 %i.gv, ptr %i.gt, align 2, !noalias !16135
  %i.hp = icmp samesign ult i64 %i.gx, %i.hn
  br i1 %i.hp, label %.lr.ph.i.i.i.i.i.i.preheader, label %.thread142.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZN5alloc11collections5btree4node12slice_insert17hbe5701d5b84d6598E.exit.i.i.i.i.i
  %i.hq = add nuw nsw i64 %i.gu, 1
  %i.hr = sub nsw i64 %i.hq, %i.gn
  %i.hs = sub nsw i64 %i.gu, %i.gn
  %xtraiter1040 = and i64 %i.hr, 3                ; 2 uses
  %lcmp.mod1041.not = icmp eq i64 %xtraiter1040, 0
  br i1 %lcmp.mod1041.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.prol = phi i64 [ %i.ht, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.gx, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
end_hunk_10
begin_hunk_11_@_ZN5insta7runtime20detect_snapshot_name17h5280a42ad0dee962E:bb.a
  store ptr %i.iv, ptr %i.kg, align 8, !noalias !16146
  %i.kh = trunc nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i to i16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 272
  store i16 %i.kh, ptr %i.ki, align 8, !noalias !16146
  %i.kj = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i, 2 ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.ke
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !16145, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.iv, ptr %i.kl, align 8, !noalias !16146
  %i.km = trunc nuw nsw i64 %i.ke to i16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 272
  store i16 %i.km, ptr %i.kn, align 8, !noalias !16146
  %i.ko = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i, 3 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.kj
  %i.kq = load ptr, ptr %i.kp, align 8, !noalias !16145, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.iv, ptr %i.kq, align 8, !noalias !16146
  %i.kr = trunc nuw nsw i64 %i.kj to i16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 272
  store i16 %i.kr, ptr %i.ks, align 8, !noalias !16146
  %i.kt = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i, 4 ; 2 uses
  %i.ku = icmp ult i64 %.sroa.0.06.i.i44.i.i.i.i, 9
  call void @llvm.assume(i1 %i.ku)
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.ko
  %i.kw = load ptr, ptr %i.kv, align 8, !noalias !16145, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.iv, ptr %i.kw, align 8, !noalias !16146
  %i.kx = trunc nuw nsw i64 %i.ko to i16
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 272
  store i16 %i.kx, ptr %i.ky, align 8, !noalias !16146
  %exitcond.not.i.i45.i.i.i.i.3 = icmp eq i64 %i.kt, %i.jr
  br i1 %exitcond.not.i.i45.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit47.i.i.i.i", label %.lr.ph.i.i43.i.i.i.i

bb.bs:                                            ; preds = %bb.bu, %bb.bp
  %.sroa.10.1.i.i.i.i = phi i64 [ %i.nd, %bb.bu ], [ 0, %bb.bp ] ; 9 uses
  %i.kz = load ptr, ptr %i.fu, align 8, !noalias !16130, !nonnull !17, !noundef !17 ; 12 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 274 ; 2 uses
  %i.lb = load i16, ptr %i.la, align 2, !noalias !16147, !noundef !17 ; 2 uses
  %i.lc = zext i16 %i.lb to i64                   ; 5 uses
  %i.ld = add i16 %i.lb, 1
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  %i.lf = add nuw nsw i64 %.sroa.10.1.i.i.i.i, 1  ; 7 uses
  %.not.i48.not.i.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i.i, %i.lc
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %i.le, i64 %.sroa.10.1.i.i.i.i ; 7 uses
  br i1 %.not.i48.not.i.i.i.i, label %bb.bt, label %_ZN5alloc11collections5btree4node12slice_insert17ha22e7a723946e0efE.exit.i49.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17ha22e7a723946e0efE.exit.i49.i.i.i.i: ; preds = %bb.bs
  store i64 %.sroa.03.0205.i.i.i, ptr %i.lg, align 8, !noalias !16141
  %.sroa.1180.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store ptr %.sroa.8.0204.i.i.i, ptr %.sroa.1180.0..sroa_idx.i.i.i, align 8, !noalias !16141
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store i64 %.sroa.9.0203.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !16141
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kz, i64 276
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %.sroa.10.1.i.i.i.i
  store i8 %.sroa.913.0202.i.i.i, ptr %i.li, align 1, !alias.scope !16148, !noalias !16147
  br label %_ZN5alloc11collections5btree4node12slice_insert17hbe5701d5b84d6598E.exit.i50.i.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %i.le, i64 %i.lf
  %i.lk = sub nuw nsw i64 %i.lc, %.sroa.10.1.i.i.i.i ; 3 uses
  %i.ll = mul nuw nsw i64 %i.lk, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lj, ptr nonnull align 8 %i.lg, i64 %i.ll, i1 false), !alias.scope !16149, !noalias !16147
  store i64 %.sroa.03.0205.i.i.i, ptr %i.lg, align 8, !noalias !16141
  %.sroa.1180.0..sroa_idx81.i.i.i = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store ptr %.sroa.8.0204.i.i.i, ptr %.sroa.1180.0..sroa_idx81.i.i.i, align 8, !noalias !16141
  %.sroa.14.0..sroa_idx91.i.i.i = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store i64 %.sroa.9.0203.i.i.i, ptr %.sroa.14.0..sroa_idx91.i.i.i, align 8, !noalias !16141
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kz, i64 276 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.sroa.10.1.i.i.i.i ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lf
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lo, ptr nonnull align 1 %i.ln, i64 %i.lk, i1 false), !alias.scope !16148, !noalias !16147
  store i8 %.sroa.913.0202.i.i.i, ptr %i.ln, align 1, !alias.scope !16148, !noalias !16147
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kz, i64 288 ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.lf
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %.sroa.10.1.i.i.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = shl nuw nsw i64 %i.lk, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ls, ptr nonnull align 8 %i.lq, i64 %i.lt, i1 false), !alias.scope !16150, !noalias !16147
  br label %_ZN5alloc11collections5btree4node12slice_insert17hbe5701d5b84d6598E.exit.i50.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hbe5701d5b84d6598E.exit.i50.i.i.i.i: ; preds = %bb.bt, %_ZN5alloc11collections5btree4node12slice_insert17ha22e7a723946e0efE.exit.i49.i.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kz, i64 288 ; 6 uses
  %i.lv = add nuw nsw i64 %i.lc, 2                ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.lf
  store ptr %.sroa.16.0199.i.i.i, ptr %i.lw, align 8, !alias.scope !16150, !noalias !16147
  store i16 %i.ld, ptr %i.la, align 2, !noalias !16147
  %i.lx = icmp samesign ult i64 %i.lf, %i.lv
  br i1 %i.lx, label %.lr.ph.i.i51.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit55.i.i.i.i"

.lr.ph.i.i51.i.i.i.i.preheader:                   ; preds = %_ZN5alloc11collections5btree4node12slice_insert17hbe5701d5b84d6598E.exit.i50.i.i.i.i
  %i.ly = add nuw nsw i64 %i.lc, 1
  %i.lz = sub nsw i64 %i.ly, %.sroa.10.1.i.i.i.i
  %i.ma = sub nsw i64 %i.lc, %.sroa.10.1.i.i.i.i
  %xtraiter = and i64 %i.lz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i51.i.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i.prol

.lr.ph.i.i51.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i51.i.i.i.i.preheader, %.lr.ph.i.i51.i.i.i.i.prol
  %.sroa.0.06.i.i52.i.i.i.i.prol = phi i64 [ %i.mb, %.lr.ph.i.i51.i.i.i.i.prol ], [ %i.lf, %.lr.ph.i.i51.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i51.i.i.i.i.prol ], [ 0, %.lr.ph.i.i51.i.i.i.i.preheader ]
  %i.mb = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.prol, 1 ; 2 uses
  %i.mc = icmp samesign ult i64 %.sroa.0.06.i.i52.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.mc)
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.sroa.0.06.i.i52.i.i.i.i.prol
  %i.me = load ptr, ptr %i.md, align 8, !noalias !16151, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.kz, ptr %i.me, align 8, !noalias !16152
  %i.mf = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i.prol to i16
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 272
  store i16 %i.mf, ptr %i.mg, align 8, !noalias !16152
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i51.i.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i.prol, !llvm.loop !15897

.lr.ph.i.i51.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i51.i.i.i.i.prol, %.lr.ph.i.i51.i.i.i.i.preheader
  %.sroa.0.06.i.i52.i.i.i.i.unr = phi i64 [ %i.lf, %.lr.ph.i.i51.i.i.i.i.preheader ], [ %i.mb, %.lr.ph.i.i51.i.i.i.i.prol ]
  %i.mh = icmp ult i64 %i.ma, 3
  br i1 %i.mh, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit55.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i

.lr.ph.i.i51.i.i.i.i:                             ; preds = %.lr.ph.i.i51.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i
  %.sroa.0.06.i.i52.i.i.i.i = phi i64 [ %i.mx, %.lr.ph.i.i51.i.i.i.i ], [ %.sroa.0.06.i.i52.i.i.i.i.unr, %.lr.ph.i.i51.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.mi = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i, 1 ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %.sroa.0.06.i.i52.i.i.i.i
  %i.mk = load ptr, ptr %i.mj, align 8, !noalias !16151, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.kz, ptr %i.mk, align 8, !noalias !16152
  %i.ml = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i to i16
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 272
  store i16 %i.ml, ptr %i.mm, align 8, !noalias !16152
  %i.mn = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i, 2 ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.mi
  %i.mp = load ptr, ptr %i.mo, align 8, !noalias !16151, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.kz, ptr %i.mp, align 8, !noalias !16152
  %i.mq = trunc nuw nsw i64 %i.mi to i16
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 272
  store i16 %i.mq, ptr %i.mr, align 8, !noalias !16152
  %i.ms = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i, 3 ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.mn
  %i.mu = load ptr, ptr %i.mt, align 8, !noalias !16151, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.kz, ptr %i.mu, align 8, !noalias !16152
  %i.mv = trunc nuw nsw i64 %i.mn to i16
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 272
  store i16 %i.mv, ptr %i.mw, align 8, !noalias !16152
  %i.mx = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i, 4 ; 2 uses
  %i.my = icmp ult i64 %.sroa.0.06.i.i52.i.i.i.i, 9
  call void @llvm.assume(i1 %i.my)
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.ms
  %i.na = load ptr, ptr %i.mz, align 8, !noalias !16151, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.kz, ptr %i.na, align 8, !noalias !16152
  %i.nb = trunc nuw nsw i64 %i.ms to i16
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 272
  store i16 %i.nb, ptr %i.nc, align 8, !noalias !16152
  %exitcond.not.i.i53.i.i.i.i.3 = icmp eq i64 %i.mx, %i.lv
  br i1 %exitcond.not.i.i53.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit55.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i

bb.bu:                                            ; preds = %bb.bo
  %i.nd = add nsw i64 %i.gn, -7
  br label %bb.bs

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit55.i.i.i.i": ; preds = %.lr.ph.i.i51.i.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hbe5701d5b84d6598E.exit.i50.i.i.i.i
  %.sroa.859.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.859.0..sroa_idx.i.i.i, align 8, !noalias !16153
  %.sroa.859.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !16153
  %.sroa.859.sroa.7.0.copyload.i.i.i = load i8, ptr %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !16153
  %.sroa.862.0.copyload.i.i.i = load ptr, ptr %.sroa.862.0..sroa_idx.i.i.i, align 8, !noalias !16153
  %.sroa.965.0.copyload.i.i.i = load i64, ptr %.sroa.965.0..sroa_idx.i.i.i, align 8, !noalias !16153
  br label %bb.bw

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit47.i.i.i.i": ; preds = %.lr.ph.i.i43.i.i.i.i.prol.loopexit, %.lr.ph.i.i43.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hbe5701d5b84d6598E.exit.i42.i.i.i.i
  %.sroa.859.sroa.0.0.copyload118.i.i.i = load ptr, ptr %.sroa.859.0..sroa_idx.i.i.i, align 8, !noalias !16153
  %.sroa.859.sroa.6.0.copyload119.i.i.i = load i64, ptr %.sroa.859.sroa.6.0..sroa.859.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !16153
  %.sroa.859.sroa.7.0.copyload120.i.i.i = load i8, ptr %.sroa.859.sroa.7.0..sroa.859.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !16153
  %.sroa.965.0.copyload67.i.i.i = load i64, ptr %.sroa.965.0..sroa_idx.i.i.i, align 8, !noalias !16153
  %.sroa.1068.0.copyload70.i.i.i = load ptr, ptr %i.fu, align 8, !noalias !16153
  br label %bb.bw

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i29.i.i.i, %bb.bo, %bb.bp, %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ne = icmp eq i64 %.sroa.03.0205.i.i.i, 0
  br i1 %i.ne, label %.body, label %bb.bv

bb.bv:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0204.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0204.i.i.i, i64 noundef %.sroa.03.0205.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !16154
  br label %.body

.thread142.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17hbe5701d5b84d6598E.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16101
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6d83e6a699e18dacE.exit.i"

bb.bw:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit47.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit55.i.i.i.i"
  %.sroa.1068.0.i.i.i = phi ptr [ %i.kz, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit55.i.i.i.i" ], [ %.sroa.1068.0.copyload70.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit47.i.i.i.i" ] ; 3 uses
  %.sroa.965.0.i.i.i = phi i64 [ %.sroa.965.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit55.i.i.i.i" ], [ %.sroa.965.0.copyload67.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit47.i.i.i.i" ]
  %.sroa.862.0.i.i.i = phi ptr [ %.sroa.862.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit55.i.i.i.i" ], [ %i.iv, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit47.i.i.i.i" ] ; 3 uses
  %.sroa.859.sroa.0.0.i.i.i = phi ptr [ %.sroa.859.sroa.0.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit55.i.i.i.i" ], [ %.sroa.859.sroa.0.0.copyload118.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit47.i.i.i.i" ] ; 2 uses
  %.sroa.859.sroa.6.0.i.i.i = phi i64 [ %.sroa.859.sroa.6.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit55.i.i.i.i" ], [ %.sroa.859.sroa.6.0.copyload119.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit47.i.i.i.i" ] ; 2 uses
  %.sroa.859.sroa.7.0.i.i.i = phi i8 [ %.sroa.859.sroa.7.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit55.i.i.i.i" ], [ %.sroa.859.sroa.7.0.copyload120.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hc6be6bebc6a024f5E.exit47.i.i.i.i" ] ; 2 uses
  %.sroa.056.0.i.i.i = load i64, ptr %i.f, align 8, !noalias !16153 ; 3 uses
  %.sroa.1171.0.copyload73.i.i.i = load i64, ptr %.sroa.1171.0..sroa_idx.i.i.i, align 8, !noalias !16153 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16101
  %.not16.i.i.i = icmp eq i64 %.sroa.056.0.i.i.i, -9223372036854775808
  br i1 %.not16.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6d83e6a699e18dacE.exit.i", label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.862.0.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1068.0.i.i.i) ]
  %i.nf = load ptr, ptr %.sroa.862.0.i.i.i, align 8, !noalias !16118, !noundef !17 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i, label %bb.bg

bb.by:                                            ; preds = %bb.bb
  store i16 1, ptr %i.ga, align 2, !noalias !16126
  %i.ng = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %.sroa.03.0.lcssa.i.i.i, ptr %i.ng, align 8, !noalias !16120
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store ptr %.sroa.8.0.lcssa.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i, align 8, !noalias !16120
  %.sroa.6.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  store i64 %.sroa.9.0.lcssa.i.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i.i, align 8, !noalias !16120
  %i.nh = getelementptr inbounds nuw i8, ptr %i.fx, i64 276
  store i8 %.sroa.913.0.lcssa.i.i.i, ptr %i.nh, align 4, !noalias !16126
  %i.ni = getelementptr inbounds nuw i8, ptr %i.fx, i64 296
  store ptr %.sroa.16.0.lcssa.i.i.i, ptr %i.ni, align 8, !noalias !16126
  store ptr %i.fx, ptr %.sroa.16.0.lcssa.i.i.i, align 8, !noalias !16155
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.16.0.lcssa.i.i.i, i64 272
  store i16 1, ptr %i.nj, align 8, !noalias !16155
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6d83e6a699e18dacE.exit.i"

bb.bz:                                            ; preds = %bb.ag
  %i.nk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nl = icmp eq i64 %.sroa.022.0.copyload.i.i, 0
  br i1 %i.nl, label %.body, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.524.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload.i.i, i64 noundef %.sroa.022.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !16156
  br label %.body

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6d83e6a699e18dacE.exit.i": ; preds = %bb.bw, %bb.by, %.thread142.i.i.i, %bb.au, %.thread.i.i.i, %bb.ah
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24 ; 2 uses
  %i.nn = load i64, ptr %i.nm, align 8, !alias.scope !16085, !noalias !16098, !noundef !17
  %i.no = add i64 %i.nn, 1
  store i64 %i.no, ptr %i.nm, align 8, !alias.scope !16085, !noalias !16098
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h4e9eca53d73307ffE.exit"

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h4e9eca53d73307ffE.exit": ; preds = %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6d83e6a699e18dacE.exit.i", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hb8864cecee121167E.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.x, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h4e9eca53d73307ffE.exit"
  %i.np = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5insta7runtime19RECORDED_DUPLICATES29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h700253728b14772cE") ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 32
  %i.nr = load i8, ptr %i.nq, align 8, !range !19, !noalias !16157, !noundef !17
  %i.ns = icmp eq i8 %i.nr, 1
  br i1 %i.ns, label %_ZN4core3ops8function6FnOnce9call_once17ha6f9a2f2bdb224afE.exit.thread.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17ha6f9a2f2bdb224afE.exit.i.i.i, !prof !23

_ZN4core3ops8function6FnOnce9call_once17ha6f9a2f2bdb224afE.exit.i.i.i: ; preds = %bb.cb
  %i.nt = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h126dc8f20e125135E"(ptr noundef nonnull align 8 %i.np, ptr noalias noundef align 8 dereferenceable_or_null(40) null)
          to label %.noexc103 unwind label %bb.w  ; 2 uses

.noexc103:                                        ; preds = %_ZN4core3ops8function6FnOnce9call_once17ha6f9a2f2bdb224afE.exit.i.i.i
  %i.nu = icmp eq ptr %i.nt, null
  br i1 %i.nu, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h041787a225874e83E.exit.thread.i.i", label %_ZN4core3ops8function6FnOnce9call_once17ha6f9a2f2bdb224afE.exit.thread.i.i.i

_ZN4core3ops8function6FnOnce9call_once17ha6f9a2f2bdb224afE.exit.thread.i.i.i: ; preds = %.noexc103, %bb.cb
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.nt, %.noexc103 ], [ %i.np, %bb.cb ] ; 2 uses
  %i.nv = load i64, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noundef !17
  %i.nw = icmp ult i64 %i.nv, 9223372036854775807
  br i1 %i.nw, label %bb.ce, label %bb.cc, !prof !23

bb.cc:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17ha6f9a2f2bdb224afE.exit.thread.i.i.i
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @571) #54
          to label %.noexc104 unwind label %bb.w

.noexc104:                                        ; preds = %bb.cc
  unreachable

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h041787a225874e83E.exit.thread.i.i": ; preds = %.noexc103
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #54
          to label %.noexc105 unwind label %bb.w

.noexc105:                                        ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h041787a225874e83E.exit.thread.i.i"
  unreachable

bb.cd:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.v, ptr %i.n, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd11f0cd9c4edbb64E", ptr %.sroa.438.0..sroa_idx, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.v, ptr %i.nx, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hd11f0cd9c4edbb64E", ptr %.sroa.442.0..sroa_idx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.x, ptr %i.ny, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7b792248e218ac2cE", ptr %.sroa.446.0..sroa_idx, align 8
  store ptr @595, ptr %i.o, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 4, ptr %i.nz, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.n, ptr %i.ob, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 3, ptr %i.oc, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @596) #54
          to label %bb.fr unwind label %bb.w

bb.ce:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17ha6f9a2f2bdb224afE.exit.thread.i.i.i
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i.i, i64 24
  %i.oe = load i64, ptr %i.od, align 8, !noundef !17 ; 2 uses
  %i.of = icmp ult i64 %i.oe, 384307168202282326
  call void @llvm.assume(i1 %i.of)
  %.not308 = icmp eq i64 %i.oe, 0
  br i1 %.not308, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.og = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hbafd2d844f6d415aE", i64 32) acquire, align 8 ; 2 uses
  %i.oh = icmp ult i8 %i.og, 4
  call void @llvm.assume(i1 %i.oh)
  %.not.i.i106 = icmp eq i8 %i.og, 2
  br i1 %.not.i.i106, label %"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3910e2c798f2715fE.exit", label %bb.cg, !prof !23

bb.cg:                                            ; preds = %bb.cf
  %i.oi = invoke fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17haccb83435dc61b14E"()
          to label %"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3910e2c798f2715fE.exit" unwind label %bb.w

bb.ch:                                            ; preds = %bb.ce
  %i.oj = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.val82 = load ptr, ptr %i.oj, align 8, !nonnull !17, !noundef !17
  %i.ok = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val83 = load i64, ptr %i.ok, align 8, !noundef !17 ; 7 uses
  %i.ol = icmp slt i64 %.val83, 0
  br i1 %i.ol, label %bb.ci, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.ch
  %i.om = icmp eq i64 %.val83, 0
  br i1 %i.om, label %bb.fk, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !16158
  %i.on = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val83, i64 noundef range(i64 1, 17) 1) #51, !noalias !16158 ; 2 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %bb.ci, label %bb.fk

bb.ci:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.ch
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.ch ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.val83, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc109 unwind label %bb.w

.noexc109:                                        ; preds = %bb.ci
  unreachable

"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3910e2c798f2715fE.exit": ; preds = %bb.cf, %bb.cg
  %.sroa.0.0.i.i107 = phi ptr [ @"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hbafd2d844f6d415aE", %bb.cf ], [ %i.oi, %bb.cg ] ; 9 uses
  %i.op = cmpxchg ptr %.sroa.0.0.i.i107, i32 0, i32 1 acquire monotonic, align 4, !noalias !16159
  %i.oq = extractvalue { i32, i1 } %i.op, 1
  br i1 %i.oq, label %.noexc112, label %bb.cj, !prof !23

bb.cj:                                            ; preds = %"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3910e2c798f2715fE.exit"
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.sroa.0.0.i.i107)
          to label %.noexc112 unwind label %bb.w

.noexc112:                                        ; preds = %bb.cj, %"_ZN78_$LT$insta..runtime..TEST_NAME_COUNTERS$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3910e2c798f2715fE.exit"
  %i.or = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !16159
  %i.os = and i64 %i.or, 9223372036854775807
  %i.ot = icmp eq i64 %i.os, 0
  br i1 %i.ot, label %bb.cl, label %bb.ck, !prof !23

bb.ck:                                            ; preds = %.noexc112
  %i.ou = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc113 unwind label %bb.w

.noexc113:                                        ; preds = %bb.ck
  %i.ov = xor i1 %i.ou, true
  %i.ow = zext i1 %i.ov to i8
  br label %bb.cl

bb.cl:                                            ; preds = %.noexc113, %.noexc112
  %.sroa.01.0.i.i110 = phi i8 [ %i.ow, %.noexc113 ], [ 0, %.noexc112 ] ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i107, i64 4 ; 2 uses
  %i.oy = load atomic i8, ptr %i.ox monotonic, align 4, !noalias !16159 ; 0 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i107, i64 8 ; 7 uses
  %.val84 = load ptr, ptr %i.oz, align 8, !noundef !17 ; 2 uses
  %i.pa = getelementptr i8, ptr %.sroa.0.0.i.i107, i64 16 ; 5 uses
  %.val86 = load ptr, ptr %i.bp, align 8          ; 3 uses
  %.val87 = load i64, ptr %i.bq, align 8          ; 3 uses
  %.not.i114 = icmp eq ptr %.val84, null
  br i1 %.not.i114, label %.thread305, label %.preheader.i115.preheader

.preheader.i115.preheader:                        ; preds = %bb.cl
  %.val85 = load i64, ptr %i.pa, align 8
  br label %.preheader.i115

.preheader.i115:                                  ; preds = %.preheader.i115.preheader, %bb.co
  %.sroa.3.0.i.i116 = phi i64 [ %i.pw, %bb.co ], [ %.val85, %.preheader.i115.preheader ] ; 2 uses
  %.sroa.0.0.i.i117 = phi ptr [ %i.pv, %bb.co ], [ %.val84, %.preheader.i115.preheader ] ; 4 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i117, i64 8 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i117, i64 362
  %i.pd = load i16, ptr %i.pc, align 2, !noalias !16160, !noundef !17 ; 2 uses
  %i.pe = zext i16 %i.pd to i64                   ; 3 uses
  %.idx908 = mul nuw nsw i64 %i.pe, 24
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.idx908
  %i.pg = icmp eq i16 %i.pd, 0
end_hunk_11
begin_hunk_12_@_ZN5insta7runtime20detect_snapshot_name17h5280a42ad0dee962E:bb.a
  br i1 %i.rp, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hc45e1630f6efeefaE.exit.thread.i", label %bb.db

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hc45e1630f6efeefaE.exit.thread.i": ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hc45e1630f6efeefaE.exit.thread32.i", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hc45e1630f6efeefaE.exit.i", %bb.da, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h3b26e1657ebde744E.exit.i.i"
  %.sroa.7.031.i148 = phi ptr [ %.sroa.6283.0.copyload, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hc45e1630f6efeefaE.exit.thread32.i" ], [ %.sroa.6283.0.copyload, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hc45e1630f6efeefaE.exit.i" ], [ %.sroa.0.0.i.i.i140, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h3b26e1657ebde744E.exit.i.i" ], [ %.sroa.0.0.i.i.i140, %bb.da ] ; 2 uses
  %.sroa.14.030.i149 = phi i64 [ %i.ro, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hc45e1630f6efeefaE.exit.thread32.i" ], [ %i.rm, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hc45e1630f6efeefaE.exit.i" ], [ %.sroa.8.0.i.i.i.i141899, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h3b26e1657ebde744E.exit.i.i" ], [ %.sroa.8.0.i.i.i.i141899, %bb.da ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.031.i148) ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.7.031.i148, i64 272
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %.sroa.14.030.i149
  store i64 %i.ql, ptr %i.rr, align 8, !noalias !16174
  br label %bb.ez

bb.db:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hc45e1630f6efeefaE.exit.thread32.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !16175
  %i.rs = call noalias noundef align 8 dereferenceable_or_null(368) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 368, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !16175 ; 8 uses
  %i.rt = icmp eq ptr %i.rs, null
  br i1 %i.rt, label %bb.dc, label %bb.dd, !prof !22

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 368) #54
          to label %.noexc.i.i219 unwind label %bb.ev, !noalias !16175

.noexc.i.i219:                                    ; preds = %bb.dc
  unreachable

bb.dd:                                            ; preds = %bb.db
  store ptr null, ptr %i.rs, align 8, !noalias !16175
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 362
  store ptr %i.rs, ptr %i.oz, align 8, !alias.scope !16167, !noalias !16176
  store i64 0, ptr %i.pa, align 8, !alias.scope !16167, !noalias !16176
  store i16 1, ptr %i.ru, align 2, !noalias !16177
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store i64 %.sroa.0282.0.copyload, ptr %i.rv, align 8, !noalias !16178
  %.sroa.518.0..sroa_idx19.i.i217 = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  store ptr %.sroa.6283.0.copyload, ptr %.sroa.518.0..sroa_idx19.i.i217, align 8, !noalias !16178
  %.sroa.6.0..sroa_idx21.i.i218 = getelementptr inbounds nuw i8, ptr %i.rs, i64 24
  store i64 %.sroa.8284.0.copyload, ptr %.sroa.6.0..sroa_idx21.i.i218, align 8, !noalias !16178
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rs, i64 272
  store i64 %i.ql, ptr %i.rw, align 8, !noalias !16177
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hb4d331b2fdd979e1E.exit.i"

bb.de:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hc45e1630f6efeefaE.exit.i"
  %.sink63.i.sroa.gep.i.i.i154 = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.sink63.i.sroa.gep118.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %.sink62.i.sroa.gep.i.i.i155 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sink62.i.sroa.gep120.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16179
  %i.rx = icmp ugt i16 %i.qq, 10
  br i1 %i.rx, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ry = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i152, 5
  store ptr %.sroa.0.0.i.i.i140, ptr %i.d, align 8, !noalias !16180
  %i.rz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.rz, align 8, !noalias !16180
  %i.sa = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br i1 %i.ry, label %.invoke.i.i.i.i210, label %bb.di

bb.dg:                                            ; preds = %bb.de
  call void @llvm.experimental.noalias.scope.decl(metadata !16181)
  %.not.i.i.i.i.not.i156 = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i152, %i.qr
  %i.sb = getelementptr inbounds nuw [24 x i8], ptr %i.qo, i64 %.sroa.4.0.i.ph.i.i.i152 ; 7 uses
  br i1 %.not.i.i.i.i.not.i156, label %bb.dh, label %_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i.i.i.i.i157

_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i.i.i.i.i157: ; preds = %bb.dg
  store i64 %.sroa.0282.0.copyload, ptr %i.sb, align 8, !alias.scope !16182, !noalias !16183
  %.sroa.933.0..sroa_idx36.i.i.i = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  store ptr %.sroa.6283.0.copyload, ptr %.sroa.933.0..sroa_idx36.i.i.i, align 8, !alias.scope !16182, !noalias !16183
  %.sroa.1142.0..sroa_idx45.i.i.i = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  store i64 %.sroa.8284.0.copyload, ptr %.sroa.1142.0..sroa_idx45.i.i.i, align 8, !alias.scope !16182, !noalias !16183
  br label %.thread.i.i.i158

bb.dh:                                            ; preds = %bb.dg
  %i.sc = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i152, 1 ; 2 uses
  %i.sd = getelementptr inbounds nuw [24 x i8], ptr %i.qo, i64 %i.sc
  %i.se = sub nuw nsw i64 %i.qr, %.sroa.4.0.i.ph.i.i.i152 ; 2 uses
  %i.sf = mul nuw nsw i64 %i.se, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sd, ptr nonnull align 8 %i.sb, i64 %i.sf, i1 false), !alias.scope !16184, !noalias !16185
  store i64 %.sroa.0282.0.copyload, ptr %i.sb, align 8, !alias.scope !16182, !noalias !16183
  %.sroa.933.0..sroa_idx34.i.i.i = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  store ptr %.sroa.6283.0.copyload, ptr %.sroa.933.0..sroa_idx34.i.i.i, align 8, !alias.scope !16182, !noalias !16183
  %.sroa.1142.0..sroa_idx43.i.i.i = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  store i64 %.sroa.8284.0.copyload, ptr %.sroa.1142.0..sroa_idx43.i.i.i, align 8, !alias.scope !16182, !noalias !16183
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i140, i64 272 ; 2 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %.sroa.4.0.i.ph.i.i.i152
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %i.sc
  %i.sj = shl nuw nsw i64 %i.se, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.si, ptr nonnull align 8 %i.sh, i64 %i.sj, i1 false), !alias.scope !16186, !noalias !16185
  br label %.thread.i.i.i158

bb.di:                                            ; preds = %bb.df
  switch i64 %.sroa.4.0.i.ph.i.i.i152, label %bb.dj [
    i64 5, label %.invoke.i.i.i.i210
    i64 6, label %bb.dk
  ]

.invoke.i.i.i.i210:                               ; preds = %bb.di, %bb.df
  %.sink.i.i.i.i211 = phi i64 [ %.sroa.4.0.i.ph.i.i.i152, %bb.di ], [ 4, %bb.df ]
  store i64 %.sink.i.i.i.i211, ptr %i.sa, align 8, !noalias !16180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16180
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h9b38b1ef9ca3fecdE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.dm unwind label %bb.do, !noalias !16187

bb.dj:                                            ; preds = %bb.di
  store i64 6, ptr %i.sa, align 8, !noalias !16180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16180
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h9b38b1ef9ca3fecdE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.dl unwind label %bb.do, !noalias !16187

bb.dk:                                            ; preds = %bb.di
  store i64 5, ptr %i.sa, align 8, !noalias !16180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16180
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h9b38b1ef9ca3fecdE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.dm unwind label %bb.do, !noalias !16187

bb.dl:                                            ; preds = %bb.dj
  %i.sk = add nsw i64 %.sroa.4.0.i.ph.i.i.i152, -7
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %.invoke.i.i.i.i210
  %.sink63.i.sroa.phi.i.i.i161 = phi ptr [ %.sink63.i.sroa.gep.i.i.i154, %.invoke.i.i.i.i210 ], [ %.sink63.i.sroa.gep118.i.i.i, %bb.dk ], [ %.sink63.i.sroa.gep118.i.i.i, %bb.dl ]
  %.sroa.10.0.i.i.i.i162 = phi i64 [ %.sroa.4.0.i.ph.i.i.i152, %.invoke.i.i.i.i210 ], [ 0, %bb.dk ], [ %i.sk, %bb.dl ] ; 6 uses
  %i.sl = load ptr, ptr %.sink63.i.sroa.phi.i.i.i161, align 8, !noalias !16180, !nonnull !17, !noundef !17 ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 362 ; 2 uses
  %i.sn = load i16, ptr %i.sm, align 2, !noalias !16188, !noundef !17 ; 2 uses
  %i.so = zext i16 %i.sn to i64                   ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16189)
  %.not.i41.not.i.i.i.i163 = icmp ult i64 %.sroa.10.0.i.i.i.i162, %i.so
  %i.sq = getelementptr inbounds nuw [24 x i8], ptr %i.sp, i64 %.sroa.10.0.i.i.i.i162 ; 7 uses
  br i1 %.not.i41.not.i.i.i.i163, label %bb.dn, label %_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i42.i.i.i.i164

_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i42.i.i.i.i164: ; preds = %bb.dm
  store i64 %.sroa.0282.0.copyload, ptr %i.sq, align 8, !alias.scope !16190, !noalias !16191
  %.sroa.933.0..sroa_idx38.i.i.i = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  store ptr %.sroa.6283.0.copyload, ptr %.sroa.933.0..sroa_idx38.i.i.i, align 8, !alias.scope !16190, !noalias !16191
  %.sroa.1142.0..sroa_idx47.i.i.i = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  store i64 %.sroa.8284.0.copyload, ptr %.sroa.1142.0..sroa_idx47.i.i.i, align 8, !alias.scope !16190, !noalias !16191
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.sr = add nuw nsw i64 %.sroa.10.0.i.i.i.i162, 1 ; 2 uses
  %i.ss = getelementptr inbounds nuw [24 x i8], ptr %i.sp, i64 %i.sr
  %i.st = sub nuw nsw i64 %i.so, %.sroa.10.0.i.i.i.i162 ; 2 uses
  %i.su = mul nuw nsw i64 %i.st, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ss, ptr nonnull align 8 %i.sq, i64 %i.su, i1 false), !alias.scope !16192, !noalias !16188
  store i64 %.sroa.0282.0.copyload, ptr %i.sq, align 8, !alias.scope !16190, !noalias !16191
  %.sroa.933.0..sroa_idx40.i.i.i = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  store ptr %.sroa.6283.0.copyload, ptr %.sroa.933.0..sroa_idx40.i.i.i, align 8, !alias.scope !16190, !noalias !16191
  %.sroa.1142.0..sroa_idx49.i.i.i = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  store i64 %.sroa.8284.0.copyload, ptr %.sroa.1142.0..sroa_idx49.i.i.i, align 8, !alias.scope !16190, !noalias !16191
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sl, i64 272 ; 2 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %.sroa.10.0.i.i.i.i162
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.sr
  %i.sy = shl nuw nsw i64 %i.st, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sx, ptr nonnull align 8 %i.sw, i64 %i.sy, i1 false), !alias.scope !16193, !noalias !16188
  br label %bb.dq

.thread.i.i.i158:                                 ; preds = %bb.dh, %_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i.i.i.i.i157
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i140, i64 272
  %i.ta = add nuw nsw i16 %i.qq, 1
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %.sroa.4.0.i.ph.i.i.i152
  store i64 %i.ql, ptr %i.tb, align 8, !alias.scope !16186, !noalias !16185
  store i16 %i.ta, ptr %i.rl, align 2, !noalias !16185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16179
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hb4d331b2fdd979e1E.exit.i"

bb.do:                                            ; preds = %bb.dk, %bb.dj, %.invoke.i.i.i.i210
  %i.tc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.td = icmp eq i64 %.sroa.0282.0.copyload, 0
  br i1 %i.td, label %.body220, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6283.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6283.0.copyload, i64 noundef %.sroa.0282.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !16194
  br label %.body220

bb.dq:                                            ; preds = %bb.dn, %_ZN5alloc11collections5btree4node12slice_insert17h7bf2e21d597ec482E.exit.i42.i.i.i.i164
  %i.te = getelementptr inbounds nuw i8, ptr %i.sl, i64 272
  %i.tf = add i16 %i.sn, 1
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %.sroa.10.0.i.i.i.i162
  store i64 %i.ql, ptr %i.tg, align 8, !alias.scope !16193, !noalias !16188
  store i16 %i.tf, ptr %i.sm, align 2, !noalias !16188
  %.sroa.018.0.copyload.i.i.i = load i64, ptr %i.c, align 8, !noalias !16195 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i165 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i166 = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i165, align 8, !noalias !16195 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i167 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i.i168 = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i167, align 8, !noalias !16195 ; 2 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i169 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.sroa.6.0.copyload.i.i.i170 = load i64, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i169, align 8, !noalias !16195 ; 2 uses
  %.sroa.721.0.copyload.i.i.i = load ptr, ptr %.sink63.i.sroa.gep.i.i.i154, align 8, !noalias !16195 ; 3 uses
  %.sroa.822.0.copyload.i.i.i = load i64, ptr %.sink62.i.sroa.gep.i.i.i155, align 8, !noalias !16195
  %.sroa.923.0.copyload.i.i.i = load ptr, ptr %.sink63.i.sroa.gep118.i.i.i, align 8, !noalias !16195 ; 3 uses
  %.sroa.1024.0.copyload.i.i.i = load i64, ptr %.sink62.i.sroa.gep120.i.i.i, align 8, !noalias !16195 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16179
  %.not.i.i.i171 = icmp eq i64 %.sroa.018.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i171, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hb4d331b2fdd979e1E.exit.i", label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.721.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.923.0.copyload.i.i.i) ]
  %i.th = load ptr, ptr %.sroa.721.0.copyload.i.i.i, align 8, !noalias !16196, !noundef !17 ; 2 uses
  %.not.i194.i.i.i = icmp eq ptr %i.th, null
  br i1 %.not.i194.i.i.i, label %._crit_edge.i.i.i184, label %.lr.ph.i.i.i172

.lr.ph.i.i.i172:                                  ; preds = %bb.dr
  %i.ti = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.sroa.858.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.858.sroa.6.0..sroa.858.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.861.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.964.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.1170.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.ec

._crit_edge.i.i.i184:                             ; preds = %bb.et, %bb.dr
  %.sroa.20.0.lcssa.i.i.i185 = phi i64 [ %.sroa.1024.0.copyload.i.i.i, %bb.dr ], [ %.sroa.1170.0.copyload72.i.i.i, %bb.et ]
  %.sroa.16.0.lcssa.i.i.i186 = phi ptr [ %.sroa.923.0.copyload.i.i.i, %bb.dr ], [ %.sroa.1067.0.i.i.i, %bb.et ] ; 3 uses
  %.sroa.913.0.lcssa.i.i.i187 = phi i64 [ %.sroa.7.sroa.6.0.copyload.i.i.i170, %bb.dr ], [ %i.aba, %bb.et ]
  %.sroa.9.0.lcssa.i.i.i188 = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i168, %bb.dr ], [ %i.aaz, %bb.et ]
  %.sroa.8.0.lcssa.i.i.i189 = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i166, %bb.dr ], [ %.sroa.858.sroa.0.0.i.i.i, %bb.et ] ; 5 uses
  %.sroa.03.0.lcssa.i.i.i190 = phi i64 [ %.sroa.018.0.copyload.i.i.i, %bb.dr ], [ %.sroa.055.0.i.i.i, %bb.et ] ; 5 uses
  %i.tl = load ptr, ptr %i.oz, align 8, !alias.scope !16167, !noalias !16197, !noundef !17 ; 4 uses
  %.not.i19.i.i.i191 = icmp eq ptr %i.tl, null
  br i1 %.not.i19.i.i.i191, label %bb.ds, label %bb.du, !prof !22

bb.ds:                                            ; preds = %._crit_edge.i.i.i184
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #54
          to label %bb.dt unwind label %bb.ea, !noalias !16198

bb.dt:                                            ; preds = %bb.ds
  unreachable

bb.du:                                            ; preds = %._crit_edge.i.i.i184
  call void @llvm.experimental.noalias.scope.decl(metadata !16199)
  %i.tm = load i64, ptr %i.pa, align 8, !alias.scope !16200, !noalias !16197, !noundef !17 ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !16201
  %i.tn = call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 464, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !16201 ; 12 uses
  %i.to = icmp eq ptr %i.tn, null
  br i1 %i.to, label %bb.dv, label %bb.dx, !prof !22

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 464) #54
          to label %.noexc.i.i.i.i.i196 unwind label %bb.dw, !noalias !16201

.noexc.i.i.i.i.i196:                              ; preds = %bb.dv
  unreachable

bb.dw:                                            ; preds = %bb.dv
  %i.tp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

bb.dx:                                            ; preds = %bb.du
  store ptr null, ptr %i.tn, align 8, !noalias !16201
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 362 ; 2 uses
  store i16 0, ptr %i.tq, align 2, !noalias !16201
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tn, i64 368
  store ptr %i.tl, ptr %i.tr, align 8, !noalias !16201
  %i.ts = add i64 %i.tm, 1
  store ptr %i.tn, ptr %i.tl, align 8, !noalias !16202
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tl, i64 360
  store i16 0, ptr %i.tt, align 8, !noalias !16203
  store ptr %i.tn, ptr %i.oz, align 8, !alias.scope !16200, !noalias !16197
  store i64 %i.ts, ptr %i.pa, align 8, !alias.scope !16200, !noalias !16197
  %i.tu = icmp eq i64 %.sroa.20.0.lcssa.i.i.i185, %i.tm
  br i1 %i.tu, label %bb.eu, label %.invoke.i.i.i.i.i192, !prof !23

.invoke.i.i.i.i.i192:                             ; preds = %bb.dx
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #54
          to label %.cont.i.i.i.i.i193 unwind label %bb.dy, !noalias !16204

.cont.i.i.i.i.i193:                               ; preds = %.invoke.i.i.i.i.i192
  unreachable

bb.dy:                                            ; preds = %.invoke.i.i.i.i.i192
  %i.tv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tw = icmp eq i64 %.sroa.03.0.lcssa.i.i.i190, 0
  br i1 %i.tw, label %.body220, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i.i189) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i.i189, i64 noundef %.sroa.03.0.lcssa.i.i.i190, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !16205
  br label %.body220

bb.ea:                                            ; preds = %bb.ds
  %i.tx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ty = icmp eq i64 %.sroa.03.0.lcssa.i.i.i190, 0
  br i1 %i.ty, label %.body220, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.lcssa.i.i.i189) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.lcssa.i.i.i189, i64 noundef %.sroa.03.0.lcssa.i.i.i190, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !16206
  br label %.body220

bb.ec:                                            ; preds = %bb.et, %.lr.ph.i.i.i172
  %i.tz = phi ptr [ %i.th, %.lr.ph.i.i.i172 ], [ %i.aay, %bb.et ] ; 13 uses
  %.sroa.03.0202.i.i.i = phi i64 [ %.sroa.018.0.copyload.i.i.i, %.lr.ph.i.i.i172 ], [ %.sroa.055.0.i.i.i, %bb.et ] ; 8 uses
  %.sroa.8.0201.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload.i.i.i166, %.lr.ph.i.i.i172 ], [ %.sroa.858.sroa.0.0.i.i.i, %bb.et ] ; 8 uses
  %.sroa.9.0200.i.i.i = phi i64 [ %.sroa.7.sroa.5.0.copyload.i.i.i168, %.lr.ph.i.i.i172 ], [ %i.aaz, %bb.et ] ; 6 uses
  %.sroa.913.0199.i.i.i = phi i64 [ %.sroa.7.sroa.6.0.copyload.i.i.i170, %.lr.ph.i.i.i172 ], [ %i.aba, %bb.et ] ; 6 uses
  %.sroa.10.0198.i.i.i = phi ptr [ %.sroa.721.0.copyload.i.i.i, %.lr.ph.i.i.i172 ], [ %.sroa.861.0.i.i.i, %bb.et ]
  %.sroa.13.0197.i.i.i = phi i64 [ %.sroa.822.0.copyload.i.i.i, %.lr.ph.i.i.i172 ], [ %.sroa.964.0.i.i.i, %bb.et ] ; 2 uses
  %.sroa.16.0196.i.i.i = phi ptr [ %.sroa.923.0.copyload.i.i.i, %.lr.ph.i.i.i172 ], [ %.sroa.1067.0.i.i.i, %bb.et ] ; 3 uses
  %.sroa.20.0195.i.i.i = phi i64 [ %.sroa.1024.0.copyload.i.i.i, %.lr.ph.i.i.i172 ], [ %.sroa.1170.0.copyload72.i.i.i, %bb.et ]
  %i.ua = add i64 %.sroa.13.0197.i.i.i, 1
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.10.0198.i.i.i, i64 360
  %i.uc = load i16, ptr %i.ub, align 8, !noalias !16196 ; 5 uses
  %i.ud = zext i16 %i.uc to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16179
  %i.ue = icmp eq i64 %.sroa.20.0195.i.i.i, %.sroa.13.0197.i.i.i
  br i1 %i.ue, label %bb.ee, label %bb.ed, !prof !23

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @217, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #54
          to label %bb.ef unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i173.loopexit.split-lp.loopexit.split-lp, !noalias !16207

bb.ee:                                            ; preds = %bb.ec
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 362
  %i.ug = load i16, ptr %i.uf, align 2, !noalias !16207, !noundef !17 ; 4 uses
  %i.uh = icmp ult i16 %i.ug, 11
  br i1 %i.uh, label %bb.eh, label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  unreachable

bb.eg:                                            ; preds = %bb.ee
  %i.ui = icmp ult i16 %i.uc, 5
  store ptr %i.tz, ptr %i.b, align 8, !noalias !16208
  store i64 %i.ua, ptr %i.ti, align 8, !noalias !16208
  br i1 %i.ui, label %.invoke.i29.i.i.i200, label %bb.ej

bb.eh:                                            ; preds = %bb.ee
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tz, i64 362
  %i.uk = zext nneg i16 %i.ug to i64              ; 4 uses
  %i.ul = add nuw nsw i16 %i.ug, 1
  %i.um = getelementptr inbounds nuw i8, ptr %i.tz, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16209)
  %i.un = add nuw nsw i64 %i.ud, 1                ; 7 uses
  %.not.i.i31.not.i.i.i206 = icmp ult i16 %i.uc, %i.ug
  %i.uo = getelementptr inbounds nuw [24 x i8], ptr %i.um, i64 %i.ud ; 7 uses
  br i1 %.not.i.i31.not.i.i.i206, label %bb.ei, label %_ZN5alloc11collections5btree4node12slice_insert17h173a7f2ea8d08f60E.exit.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h173a7f2ea8d08f60E.exit.i.i.i.i.i: ; preds = %bb.eh
  store i64 %.sroa.03.0202.i.i.i, ptr %i.uo, align 8, !alias.scope !16210, !noalias !16211
  %.sroa.1179.0..sroa_idx88.i.i.i = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  store ptr %.sroa.8.0201.i.i.i, ptr %.sroa.1179.0..sroa_idx88.i.i.i, align 8, !alias.scope !16210, !noalias !16211
  %.sroa.14.0..sroa_idx98.i.i.i = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  store i64 %.sroa.9.0200.i.i.i, ptr %.sroa.14.0..sroa_idx98.i.i.i, align 8, !alias.scope !16210, !noalias !16211
  %i.up = getelementptr inbounds nuw i8, ptr %i.tz, i64 272
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.up, i64 %i.ud
  store i64 %.sroa.913.0199.i.i.i, ptr %i.uq, align 8, !alias.scope !16212, !noalias !16213
  br label %_ZN5alloc11collections5btree4node12slice_insert17h4d20bc0ce5880705E.exit.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eh
  %i.ur = getelementptr inbounds nuw [24 x i8], ptr %i.um, i64 %i.un
  %i.us = sub nuw nsw i64 %i.uk, %i.ud            ; 2 uses
  %i.ut = mul nuw nsw i64 %i.us, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ur, ptr nonnull align 8 %i.uo, i64 %i.ut, i1 false), !alias.scope !16214, !noalias !16213
  store i64 %.sroa.03.0202.i.i.i, ptr %i.uo, align 8, !alias.scope !16210, !noalias !16211
  %.sroa.1179.0..sroa_idx86.i.i.i = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  store ptr %.sroa.8.0201.i.i.i, ptr %.sroa.1179.0..sroa_idx86.i.i.i, align 8, !alias.scope !16210, !noalias !16211
  %.sroa.14.0..sroa_idx96.i.i.i = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  store i64 %.sroa.9.0200.i.i.i, ptr %.sroa.14.0..sroa_idx96.i.i.i, align 8, !alias.scope !16210, !noalias !16211
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tz, i64 272 ; 2 uses
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %i.ud ; 2 uses
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %i.un
  %i.ux = shl nuw nsw i64 %i.us, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.uw, ptr nonnull align 8 %i.uv, i64 %i.ux, i1 false), !alias.scope !16212, !noalias !16213
  store i64 %.sroa.913.0199.i.i.i, ptr %i.uv, align 8, !alias.scope !16212, !noalias !16213
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tz, i64 368 ; 2 uses
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %i.un
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %i.ud
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.vb, ptr nonnull align 8 %i.uz, i64 %i.ux, i1 false), !alias.scope !16215, !noalias !16213
  br label %_ZN5alloc11collections5btree4node12slice_insert17h4d20bc0ce5880705E.exit.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h4d20bc0ce5880705E.exit.i.i.i.i.i: ; preds = %bb.ei, %_ZN5alloc11collections5btree4node12slice_insert17h173a7f2ea8d08f60E.exit.i.i.i.i.i
  %i.vc = getelementptr inbounds nuw i8, ptr %i.tz, i64 368 ; 6 uses
  %i.vd = add nuw nsw i64 %i.uk, 2                ; 2 uses
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %i.un
  store ptr %.sroa.16.0196.i.i.i, ptr %i.ve, align 8, !alias.scope !16215, !noalias !16213
  store i16 %i.ul, ptr %i.uj, align 2, !noalias !16213
  %i.vf = icmp samesign ult i64 %i.un, %i.vd
  br i1 %i.vf, label %.lr.ph.i.i.i.i.i.i207.preheader, label %.thread139.i.i.i

.lr.ph.i.i.i.i.i.i207.preheader:                  ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h4d20bc0ce5880705E.exit.i.i.i.i.i
  %i.vg = add nuw nsw i64 %i.uk, 1
  %i.vh = sub nsw i64 %i.vg, %i.ud
  %i.vi = sub nsw i64 %i.uk, %i.ud
  %xtraiter1049 = and i64 %i.vh, 3                ; 2 uses
  %lcmp.mod1050.not = icmp eq i64 %xtraiter1049, 0
  br i1 %lcmp.mod1050.not, label %.lr.ph.i.i.i.i.i.i207.prol.loopexit, label %.lr.ph.i.i.i.i.i.i207.prol

.lr.ph.i.i.i.i.i.i207.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i207.preheader, %.lr.ph.i.i.i.i.i.i207.prol
  %.sroa.0.06.i.i.i.i.i.i208.prol = phi i64 [ %i.vj, %.lr.ph.i.i.i.i.i.i207.prol ], [ %i.un, %.lr.ph.i.i.i.i.i.i207.preheader ] ; 4 uses
  %prol.iter1051 = phi i64 [ %prol.iter1051.next, %.lr.ph.i.i.i.i.i.i207.prol ], [ 0, %.lr.ph.i.i.i.i.i.i207.preheader ]
end_hunk_12
begin_hunk_13_@_ZN5insta7runtime20detect_snapshot_name17h5280a42ad0dee962E:bb.a
  %i.xu = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i204, 1 ; 2 uses
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %.sroa.0.06.i.i44.i.i.i.i204
  %i.xw = load ptr, ptr %i.xv, align 8, !noalias !16223, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.wl, ptr %i.xw, align 8, !noalias !16224
  %i.xx = trunc nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i204 to i16
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 360
  store i16 %i.xx, ptr %i.xy, align 8, !noalias !16224
  %i.xz = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i204, 2 ; 2 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %i.xu
  %i.yb = load ptr, ptr %i.ya, align 8, !noalias !16223, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.wl, ptr %i.yb, align 8, !noalias !16224
  %i.yc = trunc nuw nsw i64 %i.xu to i16
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yb, i64 360
  store i16 %i.yc, ptr %i.yd, align 8, !noalias !16224
  %i.ye = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i204, 3 ; 2 uses
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %i.xz
  %i.yg = load ptr, ptr %i.yf, align 8, !noalias !16223, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.wl, ptr %i.yg, align 8, !noalias !16224
  %i.yh = trunc nuw nsw i64 %i.xz to i16
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 360
  store i16 %i.yh, ptr %i.yi, align 8, !noalias !16224
  %i.yj = add nuw nsw i64 %.sroa.0.06.i.i44.i.i.i.i204, 4 ; 2 uses
  %i.yk = icmp ult i64 %.sroa.0.06.i.i44.i.i.i.i204, 9
  call void @llvm.assume(i1 %i.yk)
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %i.ye
  %i.ym = load ptr, ptr %i.yl, align 8, !noalias !16223, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.wl, ptr %i.ym, align 8, !noalias !16224
  %i.yn = trunc nuw nsw i64 %i.ye to i16
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 360
  store i16 %i.yn, ptr %i.yo, align 8, !noalias !16224
  %exitcond.not.i.i45.i.i.i.i205.3 = icmp eq i64 %i.yj, %i.xh
  br i1 %exitcond.not.i.i45.i.i.i.i205.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit47.i.i.i.i", label %.lr.ph.i.i43.i.i.i.i203

bb.eo:                                            ; preds = %bb.eq, %bb.el
  %.sroa.10.1.i.i.i.i179 = phi i64 [ %i.aat, %bb.eq ], [ 0, %bb.el ] ; 9 uses
  %i.yp = load ptr, ptr %i.tk, align 8, !noalias !16208, !nonnull !17, !noundef !17 ; 12 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 362 ; 2 uses
  %i.yr = load i16, ptr %i.yq, align 2, !noalias !16225, !noundef !17 ; 2 uses
  %i.ys = zext i16 %i.yr to i64                   ; 5 uses
  %i.yt = add i16 %i.yr, 1
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yp, i64 8 ; 2 uses
  %i.yv = add nuw nsw i64 %.sroa.10.1.i.i.i.i179, 1 ; 7 uses
  %.not.i48.not.i.i.i.i180 = icmp samesign ult i64 %.sroa.10.1.i.i.i.i179, %i.ys
  %i.yw = getelementptr inbounds nuw [24 x i8], ptr %i.yu, i64 %.sroa.10.1.i.i.i.i179 ; 7 uses
  br i1 %.not.i48.not.i.i.i.i180, label %bb.ep, label %_ZN5alloc11collections5btree4node12slice_insert17h173a7f2ea8d08f60E.exit.i49.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h173a7f2ea8d08f60E.exit.i49.i.i.i.i: ; preds = %bb.eo
  store i64 %.sroa.03.0202.i.i.i, ptr %i.yw, align 8, !noalias !16219
  %.sroa.1179.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  store ptr %.sroa.8.0201.i.i.i, ptr %.sroa.1179.0..sroa_idx.i.i.i, align 8, !noalias !16219
  %.sroa.14.0..sroa_idx.i.i.i181 = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  store i64 %.sroa.9.0200.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i181, align 8, !noalias !16219
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yp, i64 272
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %.sroa.10.1.i.i.i.i179
  store i64 %.sroa.913.0199.i.i.i, ptr %i.yy, align 8, !alias.scope !16226, !noalias !16225
  br label %_ZN5alloc11collections5btree4node12slice_insert17h4d20bc0ce5880705E.exit.i50.i.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %i.yz = getelementptr inbounds nuw [24 x i8], ptr %i.yu, i64 %i.yv
  %i.za = sub nuw nsw i64 %i.ys, %.sroa.10.1.i.i.i.i179 ; 2 uses
  %i.zb = mul nuw nsw i64 %i.za, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yz, ptr nonnull align 8 %i.yw, i64 %i.zb, i1 false), !alias.scope !16227, !noalias !16225
  store i64 %.sroa.03.0202.i.i.i, ptr %i.yw, align 8, !noalias !16219
  %.sroa.1179.0..sroa_idx80.i.i.i = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  store ptr %.sroa.8.0201.i.i.i, ptr %.sroa.1179.0..sroa_idx80.i.i.i, align 8, !noalias !16219
  %.sroa.14.0..sroa_idx90.i.i.i = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  store i64 %.sroa.9.0200.i.i.i, ptr %.sroa.14.0..sroa_idx90.i.i.i, align 8, !noalias !16219
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yp, i64 272 ; 2 uses
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %.sroa.10.1.i.i.i.i179 ; 2 uses
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %i.yv
  %i.zf = shl nuw nsw i64 %i.za, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ze, ptr nonnull align 8 %i.zd, i64 %i.zf, i1 false), !alias.scope !16226, !noalias !16225
  store i64 %.sroa.913.0199.i.i.i, ptr %i.zd, align 8, !alias.scope !16226, !noalias !16225
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yp, i64 368 ; 2 uses
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.yv
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %.sroa.10.1.i.i.i.i179
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zj, ptr nonnull align 8 %i.zh, i64 %i.zf, i1 false), !alias.scope !16228, !noalias !16225
  br label %_ZN5alloc11collections5btree4node12slice_insert17h4d20bc0ce5880705E.exit.i50.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h4d20bc0ce5880705E.exit.i50.i.i.i.i: ; preds = %bb.ep, %_ZN5alloc11collections5btree4node12slice_insert17h173a7f2ea8d08f60E.exit.i49.i.i.i.i
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yp, i64 368 ; 6 uses
  %i.zl = add nuw nsw i64 %i.ys, 2                ; 2 uses
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %i.yv
  store ptr %.sroa.16.0196.i.i.i, ptr %i.zm, align 8, !alias.scope !16228, !noalias !16225
  store i16 %i.yt, ptr %i.yq, align 2, !noalias !16225
  %i.zn = icmp samesign ult i64 %i.yv, %i.zl
  br i1 %i.zn, label %.lr.ph.i.i51.i.i.i.i197.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit55.i.i.i.i"

.lr.ph.i.i51.i.i.i.i197.preheader:                ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h4d20bc0ce5880705E.exit.i50.i.i.i.i
  %i.zo = add nuw nsw i64 %i.ys, 1
  %i.zp = sub nsw i64 %i.zo, %.sroa.10.1.i.i.i.i179
  %i.zq = sub nsw i64 %i.ys, %.sroa.10.1.i.i.i.i179
  %xtraiter1043 = and i64 %i.zp, 3                ; 2 uses
  %lcmp.mod1044.not = icmp eq i64 %xtraiter1043, 0
  br i1 %lcmp.mod1044.not, label %.lr.ph.i.i51.i.i.i.i197.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i197.prol

.lr.ph.i.i51.i.i.i.i197.prol:                     ; preds = %.lr.ph.i.i51.i.i.i.i197.preheader, %.lr.ph.i.i51.i.i.i.i197.prol
  %.sroa.0.06.i.i52.i.i.i.i198.prol = phi i64 [ %i.zr, %.lr.ph.i.i51.i.i.i.i197.prol ], [ %i.yv, %.lr.ph.i.i51.i.i.i.i197.preheader ] ; 4 uses
  %prol.iter1045 = phi i64 [ %prol.iter1045.next, %.lr.ph.i.i51.i.i.i.i197.prol ], [ 0, %.lr.ph.i.i51.i.i.i.i197.preheader ]
  %i.zr = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i198.prol, 1 ; 2 uses
  %i.zs = icmp samesign ult i64 %.sroa.0.06.i.i52.i.i.i.i198.prol, 12
  call void @llvm.assume(i1 %i.zs)
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %.sroa.0.06.i.i52.i.i.i.i198.prol
  %i.zu = load ptr, ptr %i.zt, align 8, !noalias !16229, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.yp, ptr %i.zu, align 8, !noalias !16230
  %i.zv = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i198.prol to i16
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 360
  store i16 %i.zv, ptr %i.zw, align 8, !noalias !16230
  %prol.iter1045.next = add i64 %prol.iter1045, 1 ; 2 uses
  %prol.iter1045.cmp.not = icmp eq i64 %prol.iter1045.next, %xtraiter1043
  br i1 %prol.iter1045.cmp.not, label %.lr.ph.i.i51.i.i.i.i197.prol.loopexit, label %.lr.ph.i.i51.i.i.i.i197.prol, !llvm.loop !16057

.lr.ph.i.i51.i.i.i.i197.prol.loopexit:            ; preds = %.lr.ph.i.i51.i.i.i.i197.prol, %.lr.ph.i.i51.i.i.i.i197.preheader
  %.sroa.0.06.i.i52.i.i.i.i198.unr = phi i64 [ %i.yv, %.lr.ph.i.i51.i.i.i.i197.preheader ], [ %i.zr, %.lr.ph.i.i51.i.i.i.i197.prol ]
  %i.zx = icmp ult i64 %i.zq, 3
  br i1 %i.zx, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit55.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i197

.lr.ph.i.i51.i.i.i.i197:                          ; preds = %.lr.ph.i.i51.i.i.i.i197.prol.loopexit, %.lr.ph.i.i51.i.i.i.i197
  %.sroa.0.06.i.i52.i.i.i.i198 = phi i64 [ %i.aan, %.lr.ph.i.i51.i.i.i.i197 ], [ %.sroa.0.06.i.i52.i.i.i.i198.unr, %.lr.ph.i.i51.i.i.i.i197.prol.loopexit ] ; 7 uses
  %i.zy = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i198, 1 ; 2 uses
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %.sroa.0.06.i.i52.i.i.i.i198
  %i.aaa = load ptr, ptr %i.zz, align 8, !noalias !16229, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.yp, ptr %i.aaa, align 8, !noalias !16230
  %i.aab = trunc nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i198 to i16
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aaa, i64 360
  store i16 %i.aab, ptr %i.aac, align 8, !noalias !16230
  %i.aad = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i198, 2 ; 2 uses
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %i.zy
  %i.aaf = load ptr, ptr %i.aae, align 8, !noalias !16229, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.yp, ptr %i.aaf, align 8, !noalias !16230
  %i.aag = trunc nuw nsw i64 %i.zy to i16
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaf, i64 360
  store i16 %i.aag, ptr %i.aah, align 8, !noalias !16230
  %i.aai = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i198, 3 ; 2 uses
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %i.aad
  %i.aak = load ptr, ptr %i.aaj, align 8, !noalias !16229, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.yp, ptr %i.aak, align 8, !noalias !16230
  %i.aal = trunc nuw nsw i64 %i.aad to i16
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aak, i64 360
  store i16 %i.aal, ptr %i.aam, align 8, !noalias !16230
  %i.aan = add nuw nsw i64 %.sroa.0.06.i.i52.i.i.i.i198, 4 ; 2 uses
  %i.aao = icmp ult i64 %.sroa.0.06.i.i52.i.i.i.i198, 9
  call void @llvm.assume(i1 %i.aao)
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %i.aai
  %i.aaq = load ptr, ptr %i.aap, align 8, !noalias !16229, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.yp, ptr %i.aaq, align 8, !noalias !16230
  %i.aar = trunc nuw nsw i64 %i.aai to i16
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 360
  store i16 %i.aar, ptr %i.aas, align 8, !noalias !16230
  %exitcond.not.i.i53.i.i.i.i199.3 = icmp eq i64 %i.aan, %i.zl
  br i1 %exitcond.not.i.i53.i.i.i.i199.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit55.i.i.i.i", label %.lr.ph.i.i51.i.i.i.i197

bb.eq:                                            ; preds = %bb.ek
  %i.aat = add nsw i64 %i.ud, -7
  br label %bb.eo

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit55.i.i.i.i": ; preds = %.lr.ph.i.i51.i.i.i.i197.prol.loopexit, %.lr.ph.i.i51.i.i.i.i197, %_ZN5alloc11collections5btree4node12slice_insert17h4d20bc0ce5880705E.exit.i50.i.i.i.i
  %.sroa.858.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.858.0..sroa_idx.i.i.i, align 8, !noalias !16231
  %i.aau = load <2 x i64>, ptr %.sroa.858.sroa.6.0..sroa.858.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !16231
  %.sroa.861.0.copyload.i.i.i = load ptr, ptr %.sroa.861.0..sroa_idx.i.i.i, align 8, !noalias !16231
  %.sroa.964.0.copyload.i.i.i = load i64, ptr %.sroa.964.0..sroa_idx.i.i.i, align 8, !noalias !16231
  br label %bb.es

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit47.i.i.i.i": ; preds = %.lr.ph.i.i43.i.i.i.i203.prol.loopexit, %.lr.ph.i.i43.i.i.i.i203, %_ZN5alloc11collections5btree4node12slice_insert17h4d20bc0ce5880705E.exit.i42.i.i.i.i
  %.sroa.858.sroa.0.0.copyload115.i.i.i = load ptr, ptr %.sroa.858.0..sroa_idx.i.i.i, align 8, !noalias !16231
  %i.aav = load <2 x i64>, ptr %.sroa.858.sroa.6.0..sroa.858.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !16231
  %.sroa.964.0.copyload66.i.i.i = load i64, ptr %.sroa.964.0..sroa_idx.i.i.i, align 8, !noalias !16231
  %.sroa.1067.0.copyload69.i.i.i = load ptr, ptr %i.tk, align 8, !noalias !16231
  br label %bb.es

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i173.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke.i29.i.i.i200, %bb.ek, %bb.el, %bb.ed
  %lpad.loopexit.split-lp910 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aaw = icmp eq i64 %.sroa.03.0202.i.i.i, 0
  br i1 %i.aaw, label %.body220, label %bb.er

bb.er:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i173.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0201.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0201.i.i.i, i64 noundef %.sroa.03.0202.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !16232
  br label %.body220

.thread139.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i207.prol.loopexit, %.lr.ph.i.i.i.i.i.i207, %_ZN5alloc11collections5btree4node12slice_insert17h4d20bc0ce5880705E.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16179
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hb4d331b2fdd979e1E.exit.i"

bb.es:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit47.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit55.i.i.i.i"
  %.sroa.1067.0.i.i.i = phi ptr [ %i.yp, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit55.i.i.i.i" ], [ %.sroa.1067.0.copyload69.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit47.i.i.i.i" ] ; 3 uses
  %.sroa.964.0.i.i.i = phi i64 [ %.sroa.964.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit55.i.i.i.i" ], [ %.sroa.964.0.copyload66.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit47.i.i.i.i" ]
  %.sroa.861.0.i.i.i = phi ptr [ %.sroa.861.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit55.i.i.i.i" ], [ %i.wl, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit47.i.i.i.i" ] ; 3 uses
  %.sroa.858.sroa.0.0.i.i.i = phi ptr [ %.sroa.858.sroa.0.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit55.i.i.i.i" ], [ %.sroa.858.sroa.0.0.copyload115.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit47.i.i.i.i" ] ; 2 uses
  %i.aax = phi <2 x i64> [ %i.aau, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit55.i.i.i.i" ], [ %i.aav, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17h926cbe931dce5152E.exit47.i.i.i.i" ] ; 2 uses
  %.sroa.055.0.i.i.i = load i64, ptr %i.a, align 8, !noalias !16231 ; 3 uses
  %.sroa.1170.0.copyload72.i.i.i = load i64, ptr %.sroa.1170.0..sroa_idx.i.i.i, align 8, !noalias !16231 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16179
  %.not16.i.i.i182 = icmp eq i64 %.sroa.055.0.i.i.i, -9223372036854775808
  br i1 %.not16.i.i.i182, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hb4d331b2fdd979e1E.exit.i", label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.861.0.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1067.0.i.i.i) ]
  %i.aay = load ptr, ptr %.sroa.861.0.i.i.i, align 8, !noalias !16196, !noundef !17 ; 2 uses
  %.not.i.i.i.i183 = icmp eq ptr %i.aay, null
  %i.aaz = extractelement <2 x i64> %i.aax, i64 0 ; 2 uses
  %i.aba = extractelement <2 x i64> %i.aax, i64 1 ; 2 uses
  br i1 %.not.i.i.i.i183, label %._crit_edge.i.i.i184, label %bb.ec

bb.eu:                                            ; preds = %bb.dx
  store i16 1, ptr %i.tq, align 2, !noalias !16204
  %i.abb = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  store i64 %.sroa.03.0.lcssa.i.i.i190, ptr %i.abb, align 8, !noalias !16198
  %.sroa.5.0..sroa_idx3.i.i.i.i194 = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  store ptr %.sroa.8.0.lcssa.i.i.i189, ptr %.sroa.5.0..sroa_idx3.i.i.i.i194, align 8, !noalias !16198
  %.sroa.6.0..sroa_idx5.i.i.i.i195 = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  store i64 %.sroa.9.0.lcssa.i.i.i188, ptr %.sroa.6.0..sroa_idx5.i.i.i.i195, align 8, !noalias !16198
  %i.abc = getelementptr inbounds nuw i8, ptr %i.tn, i64 272
  store i64 %.sroa.913.0.lcssa.i.i.i187, ptr %i.abc, align 8, !noalias !16204
  %i.abd = getelementptr inbounds nuw i8, ptr %i.tn, i64 376
  store ptr %.sroa.16.0.lcssa.i.i.i186, ptr %i.abd, align 8, !noalias !16204
  store ptr %i.tn, ptr %.sroa.16.0.lcssa.i.i.i186, align 8, !noalias !16233
  %i.abe = getelementptr inbounds nuw i8, ptr %.sroa.16.0.lcssa.i.i.i186, i64 360
  store i16 1, ptr %i.abe, align 8, !noalias !16233
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hb4d331b2fdd979e1E.exit.i"

bb.ev:                                            ; preds = %bb.dc
  %i.abf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abg = icmp eq i64 %.sroa.0282.0.copyload, 0
  br i1 %i.abg, label %.body220, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6283.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6283.0.copyload, i64 noundef %.sroa.0282.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !16234
  br label %.body220

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hb4d331b2fdd979e1E.exit.i": ; preds = %bb.es, %bb.eu, %.thread139.i.i.i, %bb.dq, %.thread.i.i.i158, %bb.dd
  %i.abh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i107, i64 24 ; 2 uses
  %i.abi = load i64, ptr %i.abh, align 8, !alias.scope !16167, !noalias !16176, !noundef !17
  %i.abj = add i64 %i.abi, 1
  store i64 %i.abj, ptr %i.abh, align 8, !alias.scope !16167, !noalias !16176
  br label %bb.ez

bb.ex:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.0268.0.copyload = load i64, ptr %i.l, align 8
  %.sroa.6270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6270.0.copyload = load ptr, ptr %.sroa.6270.0..sroa_idx, align 8
  %.sroa.8273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.8273.0.copyload = load i64, ptr %.sroa.8273.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.cu

.body220:                                         ; preds = %bb.do, %bb.dp, %bb.dy, %bb.dz, %bb.ea, %bb.eb, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i173.loopexit.split-lp.loopexit.split-lp, %bb.er, %bb.ev, %bb.ew
  %eh.lpad-body221 = phi { ptr, i32 } [ %i.tx, %bb.eb ], [ %i.abf, %bb.ew ], [ %i.abf, %bb.ev ], [ %lpad.loopexit.split-lp910, %bb.er ], [ %i.tv, %bb.dz ], [ %i.tv, %bb.dy ], [ %i.tc, %bb.do ], [ %lpad.loopexit.split-lp910, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i173.loopexit.split-lp.loopexit.split-lp ], [ %i.tc, %bb.dp ], [ %i.tx, %bb.ea ] ; 2 uses
  %i.abk = icmp eq i64 %.sroa.0268.0, 0
  br i1 %i.abk, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit224", label %bb.ey

bb.ey:                                            ; preds = %.body220
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6270.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6270.0, i64 noundef %.sroa.0268.0, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !16235
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit224"

bb.ez:                                            ; preds = %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17hb4d331b2fdd979e1E.exit.i", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17hc45e1630f6efeefaE.exit.thread.i"
  store i64 %.sroa.0268.0, ptr %0, align 8
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6270.0, ptr %.sroa.4287.0..sroa_idx, align 8
  %.sroa.5288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8273.0, ptr %.sroa.5288.0..sroa_idx, align 8
  %i.abl = trunc nuw i8 %.sroa.01.0.i.i110 to i1
  br i1 %i.abl, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.abm = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.abn = and i64 %i.abm, 9223372036854775807
  %i.abo = icmp eq i64 %i.abn, 0
  br i1 %i.abo, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.fb, !prof !23

bb.fb:                                            ; preds = %bb.fa
  %i.abp = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc225 unwind label %bb.w

.noexc225:                                        ; preds = %bb.fb
  br i1 %i.abp, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.fc

bb.fc:                                            ; preds = %.noexc225
  store atomic i8 1, ptr %i.ox monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.fc, %.noexc225, %bb.fa, %bb.ez
  %i.abq = atomicrmw xchg ptr %.sroa.0.0.i.i107, i32 0 release, align 4
  %i.abr = icmp eq i32 %i.abq, 2
  br i1 %i.abr, label %bb.fd, label %"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$usize$GT$$GT$$GT$17ha5559a8b1718f1a4E.exit", !prof !22

bb.fd:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.sroa.0.0.i.i107)
          to label %"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$usize$GT$$GT$$GT$17ha5559a8b1718f1a4E.exit" unwind label %bb.w

"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$usize$GT$$GT$$GT$17ha5559a8b1718f1a4E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.fd
  %i.abs = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.abs, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i227, label %bb.fe

bb.fe:                                            ; preds = %"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$usize$GT$$GT$$GT$17ha5559a8b1718f1a4E.exit"
  %i.abt = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.abu = and i64 %i.abt, 9223372036854775807
  %i.abv = icmp eq i64 %i.abu, 0
  br i1 %i.abv, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i227, label %bb.ff, !prof !23

bb.ff:                                            ; preds = %bb.fe
  %i.abw = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc228 unwind label %.split

.noexc228:                                        ; preds = %bb.ff
  br i1 %i.abw, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i227, label %bb.fg

bb.fg:                                            ; preds = %.noexc228
  store atomic i8 1, ptr %i.bl monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i227

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i227: ; preds = %bb.fg, %.noexc228, %bb.fe, %"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$usize$GT$$GT$$GT$17ha5559a8b1718f1a4E.exit"
  %i.abx = atomicrmw xchg ptr %.sroa.0.0.i.i, i32 0 release, align 4
  %i.aby = icmp eq i32 %i.abx, 2
  br i1 %i.aby, label %bb.fh, label %"_ZN4core3ptr141drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$bool$GT$$GT$$GT$17h33ada1f5663fff29E.exit", !prof !22

bb.fh:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i227
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.sroa.0.0.i.i)
          to label %"_ZN4core3ptr141drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$bool$GT$$GT$$GT$17h33ada1f5663fff29E.exit" unwind label %.split

"_ZN4core3ptr141drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$bool$GT$$GT$$GT$17h33ada1f5663fff29E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i227, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.val66 = load i64, ptr %i.v, align 8, !range !30, !noundef !17 ; 2 uses
  %switch306 = icmp sgt i64 %.val66, 0
  br i1 %switch306, label %bb.fi, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17heaff764f2df25adcE.exit238"

bb.fi:                                            ; preds = %"_ZN4core3ptr141drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$bool$GT$$GT$$GT$17h33ada1f5663fff29E.exit"
  %i.abz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val67 = load ptr, ptr %i.abz, align 8, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val67, i64 noundef %.val66, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !16236
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17heaff764f2df25adcE.exit238"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17heaff764f2df25adcE.exit238": ; preds = %bb.fi, %"_ZN4core3ptr141drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$bool$GT$$GT$$GT$17h33ada1f5663fff29E.exit", %bb.fq, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit237"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret void

bb.fj:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit224", %.body
  %i.aca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.fk:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.on, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %.val82, i64 %.val83, i1 false), !noalias !16237
  store i64 %.val83, ptr %0, align 8
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4256.0..sroa_idx, align 8
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val83, ptr %.sroa.5257.0..sroa_idx, align 8
  %i.acb = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.acb, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i231, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.acc = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.acd = and i64 %i.acc, 9223372036854775807
  %i.ace = icmp eq i64 %i.acd, 0
  br i1 %i.ace, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i231, label %bb.fm, !prof !23

bb.fm:                                            ; preds = %bb.fl
  %i.acf = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc232 unwind label %.split.thread

.noexc232:                                        ; preds = %bb.fm
  br i1 %i.acf, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i231, label %bb.fn

bb.fn:                                            ; preds = %.noexc232
  store atomic i8 1, ptr %i.bl monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i231

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i231: ; preds = %bb.fn, %.noexc232, %bb.fl, %bb.fk
  %i.acg = atomicrmw xchg ptr %.sroa.0.0.i.i, i32 0 release, align 4
  %i.ach = icmp eq i32 %i.acg, 2
  br i1 %i.ach, label %bb.fo, label %"_ZN4core3ptr141drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$bool$GT$$GT$$GT$17h33ada1f5663fff29E.exit234", !prof !22

bb.fo:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i231
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.sroa.0.0.i.i)
          to label %"_ZN4core3ptr141drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$bool$GT$$GT$$GT$17h33ada1f5663fff29E.exit234" unwind label %.split.thread

"_ZN4core3ptr141drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$bool$GT$$GT$$GT$17h33ada1f5663fff29E.exit234": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i231, %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !16238)
  %.val.i235 = load i64, ptr %i.t, align 8, !alias.scope !16238 ; 2 uses
  %i.aci = icmp eq i64 %.val.i235, 0
  br i1 %i.aci, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit237", label %bb.fp

bb.fp:                                            ; preds = %"_ZN4core3ptr141drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$bool$GT$$GT$$GT$17h33ada1f5663fff29E.exit234"
  %.val1.i236 = load ptr, ptr %i.bp, align 8, !alias.scope !16238, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i236, i64 noundef %.val.i235, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !16238
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit237"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit237": ; preds = %bb.fp, %"_ZN4core3ptr141drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$bool$GT$$GT$$GT$17h33ada1f5663fff29E.exit234"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.val = load i64, ptr %i.v, align 8, !range !30, !noundef !17 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN5insta8snapshot8Snapshot13matches_fully17h91b29bf7e00380adE:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5insta8snapshot8Snapshot18save_with_metadata17h11e7974a9e7efef8E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr %.232.val, i64 %.240.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 1 captures(address, read_provenance) %3, i64 %4, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 16              ; 9 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [176 x i8], align 16              ; 9 uses
  %.sroa.5 = alloca [136 x i8], align 8           ; 5 uses
  %.sroa.716 = alloca [24 x i8], align 8          ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = tail call { ptr, i64 } @_ZN3std4path4Path6parent17h3c6e49002294403cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17753
  store i32 511, ptr %i.b, align 4, !noalias !17753
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 1, ptr %i.l, align 4, !noalias !17753
  %i.m = call noundef ptr @_ZN3std2fs10DirBuilder7_create17h70f652d231a39496E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j, i64 noundef %i.k) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17753
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @_ZN5insta8snapshot8Snapshot18serialize_snapshot17h4fb6d9490e331864E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr %.232.val, i64 %.240.val, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.not18 = icmp eq ptr %3, null                  ; 2 uses
  %. = select i1 %.not18, i64 %2, i64 %4
  %.28 = select i1 %.not18, ptr %1, ptr %3
  invoke void @_ZN3std2fs14read_to_string5inner17h9de4c5ac53797604E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.28, i64 noundef %.)
          to label %_ZN3std2fs14read_to_string17hdc7438cdf36fc9e8E.exit unwind label %.thread29

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51
  %i.n = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #51 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9423201f992db769E.exit29", !prof !18

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #54
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #55
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

common.resume:                                    ; preds = %bb.aa, %bb.ab, %bb.ag, %.thread, %bb.aj, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.ar, %bb.ag ], [ %i.am, %bb.ab ], [ %i.am, %bb.aa ], [ %.pn2625, %.thread ], [ %.pn2625, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9423201f992db769E.exit29": ; preds = %bb.d
  store ptr %i.m, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @663, ptr %i.r, align 8
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55", %bb.ai, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9423201f992db769E.exit29"
  ret void

.thread29:                                        ; preds = %bb.c, %bb.z
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN3std2fs14read_to_string17hdc7438cdf36fc9e8E.exit: ; preds = %bb.c
  %i.t = load i64, ptr %i.g, align 8, !range !30, !noundef !17 ; 7 uses
  %i.u = icmp eq i64 %i.t, -9223372036854775808
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.u, label %bb.z, label %bb.i

bb.i:                                             ; preds = %_ZN3std2fs14read_to_string17hdc7438cdf36fc9e8E.exit
  %.sroa.7.0.copyload = load ptr, ptr %i.v, align 8 ; 7 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.716)
  call void @llvm.experimental.noalias.scope.decl(metadata !17754)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.x = load i32, ptr %i.w, align 16, !range !65, !alias.scope !17754, !noundef !17
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %.thread33, label %bb.j

.thread33:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread38

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN64_$LT$insta..snapshot..MetaData$u20$as$u20$core..clone..Clone$GT$5clone17hd54e3f735c5063b6E"(ptr noalias noundef align 16 captures(address) dereferenceable(176) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %5)
          to label %bb.n unwind label %bb.m

bb.k:                                             ; preds = %bb.q, %bb.m
  %.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.ad, %bb.q ] ; 2 uses
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17755
  br label %.thread

bb.m:                                             ; preds = %bb.j, %bb.r
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.n:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %i.aa, align 16, !noalias !17756
  %.sroa.010.0.copyload11 = load ptr, ptr %i.a, align 16, !noalias !17754
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.0..sroa_idx12, i64 136, i1 false), !noalias !17754
  %.sroa.513.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.513.0.copyload15 = load i64, ptr %.sroa.513.0..sroa_idx14, align 16, !noalias !17754 ; 2 uses
  %.sroa.716.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.716, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.716.0..sroa_idx17, i64 24, i1 false), !noalias !17754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not19 = icmp eq i64 %.sroa.513.0.copyload15, -9223372036854775807
  br i1 %.not19, label %.thread38, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.010.0.copyload11, ptr %i.f, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5, i64 136, i1 false)
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store i64 %.sroa.513.0.copyload15, ptr %.sroa.513.0..sroa_idx, align 16
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.716.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.716, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_ZN5insta8snapshot8Snapshot18serialize_snapshot17h4fb6d9490e331864E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr %.232.val, i64 %.240.val, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.f)
          to label %bb.r unwind label %bb.q

.thread38:                                        ; preds = %.thread33, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716)
  br label %.then

bb.p:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716)
  %.not20 = icmp eq i64 %.sroa.05.0.copyload, -9223372036854775808
  br i1 %.not20, label %.then, label %.cont

.then:                                            ; preds = %bb.p, %.thread38
  %.sroa.9.045 = phi ptr [ %i.h, %.thread38 ], [ %.sroa.9.0.copyload, %bb.p ] ; 3 uses
  %.sroa.gep252 = getelementptr inbounds nuw i8, ptr %.sroa.9.045, i64 8
  %.then.val8 = load ptr, ptr %.sroa.gep252, align 8, !nonnull !17, !noundef !17
  %.sroa.gep57 = getelementptr inbounds nuw i8, ptr %.sroa.9.045, i64 16
  %.then.val = load i64, ptr %.sroa.gep57, align 8, !noundef !17
  br label %.cont

.cont:                                            ; preds = %bb.p, %.then
  %i.ab = phi ptr [ %.then.val8, %.then ], [ %.sroa.9.0.copyload, %bb.p ] ; 2 uses
  %.sroa.9.04460 = phi ptr [ %.sroa.9.045, %.then ], [ %.sroa.9.0.copyload, %bb.p ] ; 4 uses
  %.sroa.05.04858 = phi i64 [ -9223372036854775808, %.then ], [ %.sroa.05.0.copyload, %bb.p ] ; 4 uses
  %i.ac = phi i64 [ %.then.val, %.then ], [ %.sroa.15.0.copyload, %bb.p ]
  %.not.i44 = icmp eq i64 %.sroa.11.0.copyload, %i.ac
  br i1 %.not.i44, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit", label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"

bb.q:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$insta..snapshot..MetaData$GT$17hf036f84f41d73756E"(ptr noalias noundef align 16 dereferenceable(176) %i.f) #55
          to label %bb.k unwind label %bb.y

bb.r:                                             ; preds = %bb.o
  %.sroa.05.0.copyload = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$insta..snapshot..MetaData$GT$17hf036f84f41d73756E"(ptr noalias noundef align 16 dereferenceable(176) %i.f)
          to label %bb.p unwind label %bb.m

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit": ; preds = %.cont
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly %.sroa.7.0.copyload, ptr nonnull readonly %i.ab, i64 %.sroa.11.0.copyload)
  %i.ae = icmp eq i32 %bcmp.i, 0
  br i1 %i.ae, label %bb.t, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread": ; preds = %.cont, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"
  switch i64 %.sroa.05.04858, label %bb.s [
    i64 -9223372036854775808, label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45"
    i64 0, label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45"
  ]

bb.s:                                             ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.04460) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.04460, i64 noundef %.sroa.05.04858, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17757
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45"

bb.t:                                             ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.af, align 8
  store ptr null, ptr %0, align 8
  switch i64 %.sroa.05.04858, label %bb.u [
    i64 -9223372036854775808, label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46"
    i64 0, label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46"
  ]

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.04460) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.04460, i64 noundef %.sroa.05.04858, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17758
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46"

"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45": ; preds = %bb.s, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"
  %i.ag = icmp eq i64 %i.t, 0
  br i1 %i.ag, label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit", label %bb.v

bb.v:                                             ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17759
  br label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit"

"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46": ; preds = %bb.u, %bb.t, %bb.t
  %i.ah = icmp eq i64 %i.t, 0
  br i1 %i.ah, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52", label %bb.w

bb.w:                                             ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17760
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52": ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46", %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !17761)
  %.val.i53 = load i64, ptr %i.h, align 8, !alias.scope !17761 ; 2 uses
  %i.ai = icmp eq i64 %.val.i53, 0
  br i1 %i.ai, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55", label %bb.x

bb.x:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52"
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i54 = load ptr, ptr %i.aj, align 8, !alias.scope !17761, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i54, i64 noundef %.val.i53, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17761
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55"

bb.y:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.z:                                             ; preds = %_ZN3std2fs14read_to_string17hdc7438cdf36fc9e8E.exit
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.v)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit" unwind label %.thread29

"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit": ; preds = %bb.z, %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45", %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.020.0.copyload = load i64, ptr %i.h, align 8 ; 4 uses
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.521.0.copyload = load ptr, ptr %.sroa.521.0..sroa_idx, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %i.al = invoke noundef ptr @_ZN3std2fs5write5inner17ha8f0a95daa2fc383E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.521.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %bb.ac unwind label %bb.aa, !noalias !17762 ; 3 uses

bb.aa:                                            ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit"
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = icmp eq i64 %.sroa.020.0.copyload, 0
  br i1 %i.an, label %common.resume, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.521.0.copyload, i64 noundef %.sroa.020.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17763
  br label %common.resume

bb.ac:                                            ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit"
  %i.ao = icmp eq i64 %.sroa.020.0.copyload, 0
  br i1 %i.ao, label %_ZN3std2fs5write17h20164edb742951e2E.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.521.0.copyload, i64 noundef %.sroa.020.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17764
  br label %_ZN3std2fs5write17h20164edb742951e2E.exit

_ZN3std2fs5write17h20164edb742951e2E.exit:        ; preds = %bb.ad, %bb.ac
  %.not25 = icmp eq ptr %i.al, null
  br i1 %.not25, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %_ZN3std2fs5write17h20164edb742951e2E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.al, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51
  %i.ap = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #51 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.af, label %.critedge, !prof !18

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #54
          to label %.noexc61 unwind label %bb.ag

.noexc61:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #55
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.ai:                                            ; preds = %_ZN3std2fs5write17h20164edb742951e2E.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.at, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

.critedge:                                        ; preds = %bb.ae
  store ptr %i.al, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.ap, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @663, ptr %i.au, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55": ; preds = %bb.x, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52", %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

.thread:                                          ; preds = %bb.k, %bb.l, %.thread29
  %.pn2625 = phi { ptr, i32 } [ %i.s, %.thread29 ], [ %.pn, %bb.l ], [ %.pn, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17765)
  %.val.i63 = load i64, ptr %i.h, align 8, !alias.scope !17765 ; 2 uses
  %i.av = icmp eq i64 %.val.i63, 0
  br i1 %i.av, label %common.resume, label %bb.aj

bb.aj:                                            ; preds = %.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i64 = load ptr, ptr %i.aw, align 8, !alias.scope !17765, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i64, i64 noundef %.val.i63, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17765
  br label %common.resume
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_ZN5insta8snapshot8Snapshot18serialize_snapshot17h4fb6d9490e331864E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr %.232.val, i64 %.240.val, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN5insta8snapshot8MetaData10as_content17hfe8b43a31fe3ba27E(ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %1)
  invoke fastcc void @_ZN5insta7content4yaml9to_string17h0ad0e741aa783539E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$insta..content..Content$GT$17hcb4984964b03ed1dE"(ptr noalias noundef align 16 dereferenceable(64) %i.a) #55
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit" unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$insta..content..Content$GT$17hcb4984964b03ed1dE"(ptr noalias noundef align 16 dereferenceable(64) %i.a)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.j, %bb.g, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17803)
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !17803 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !17803, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !17803
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit"

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !17804)
  call void @llvm.experimental.noalias.scope.decl(metadata !17805)
end_hunk_14
begin_hunk_15_@_ZN7console5utils5Style4attr17hbad207136d17f2d6E:bb.a

_ZN5alloc11collections5btree4node12slice_insert17h956a79a5ccb70867E.exit.i41.i.i.i.i: ; preds = %bb.ae, %.noexc9
  store i8 %.sroa.11.073.i.i.i, ptr %i.fl, align 1, !alias.scope !20253, !noalias !20252
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 6 uses
  %i.fu = add nuw nsw i64 %i.fh, 2                ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fk
  store ptr %.sroa.7.075.i.i.i, ptr %i.fv, align 8, !alias.scope !20254, !noalias !20252
  store i16 %i.fi, ptr %i.ff, align 2, !noalias !20252
  %i.fw = icmp samesign ult i64 %i.fk, %i.fu
  br i1 %i.fw, label %.lr.ph.i.i42.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit45.i.i.i.i"

.lr.ph.i.i42.i.i.i.i.preheader:                   ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h956a79a5ccb70867E.exit.i41.i.i.i.i
  %i.fx = add nuw nsw i64 %i.fh, 1
  %i.fy = sub nsw i64 %i.fx, %i.cy
  %i.fz = sub nsw i64 %i.fh, %i.cy
  %xtraiter253 = and i64 %i.fy, 3                 ; 2 uses
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %.lr.ph.i.i42.i.i.i.i.prol.loopexit, label %.lr.ph.i.i42.i.i.i.i.prol

.lr.ph.i.i42.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i42.i.i.i.i.preheader, %.lr.ph.i.i42.i.i.i.i.prol
  %.sroa.0.06.i.i43.i.i.i.i.prol = phi i64 [ %i.ga, %.lr.ph.i.i42.i.i.i.i.prol ], [ %i.fk, %.lr.ph.i.i42.i.i.i.i.preheader ] ; 4 uses
  %prol.iter255 = phi i64 [ %prol.iter255.next, %.lr.ph.i.i42.i.i.i.i.prol ], [ 0, %.lr.ph.i.i42.i.i.i.i.preheader ]
  %i.ga = add nuw nsw i64 %.sroa.0.06.i.i43.i.i.i.i.prol, 1 ; 2 uses
  %i.gb = icmp samesign ult i64 %.sroa.0.06.i.i43.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.sroa.0.06.i.i43.i.i.i.i.prol
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !20255, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.fe, ptr %i.gd, align 8, !noalias !20256
  %i.ge = trunc nuw nsw i64 %.sroa.0.06.i.i43.i.i.i.i.prol to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i16 %i.ge, ptr %i.gf, align 8, !noalias !20256
  %prol.iter255.next = add i64 %prol.iter255, 1   ; 2 uses
  %prol.iter255.cmp.not = icmp eq i64 %prol.iter255.next, %xtraiter253
  br i1 %prol.iter255.cmp.not, label %.lr.ph.i.i42.i.i.i.i.prol.loopexit, label %.lr.ph.i.i42.i.i.i.i.prol, !llvm.loop !20196

.lr.ph.i.i42.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i42.i.i.i.i.prol, %.lr.ph.i.i42.i.i.i.i.preheader
  %.sroa.0.06.i.i43.i.i.i.i.unr = phi i64 [ %i.fk, %.lr.ph.i.i42.i.i.i.i.preheader ], [ %i.ga, %.lr.ph.i.i42.i.i.i.i.prol ]
  %i.gg = icmp ult i64 %i.fz, 3
  br i1 %i.gg, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit45.i.i.i.i", label %.lr.ph.i.i42.i.i.i.i

.lr.ph.i.i42.i.i.i.i:                             ; preds = %.lr.ph.i.i42.i.i.i.i.prol.loopexit, %.lr.ph.i.i42.i.i.i.i
  %.sroa.0.06.i.i43.i.i.i.i = phi i64 [ %i.gw, %.lr.ph.i.i42.i.i.i.i ], [ %.sroa.0.06.i.i43.i.i.i.i.unr, %.lr.ph.i.i42.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.gh = add nuw nsw i64 %.sroa.0.06.i.i43.i.i.i.i, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.sroa.0.06.i.i43.i.i.i.i
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !20255, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.fe, ptr %i.gj, align 8, !noalias !20256
  %i.gk = trunc nuw nsw i64 %.sroa.0.06.i.i43.i.i.i.i to i16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store i16 %i.gk, ptr %i.gl, align 8, !noalias !20256
  %i.gm = add nuw nsw i64 %.sroa.0.06.i.i43.i.i.i.i, 2 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gh
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !20255, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.fe, ptr %i.go, align 8, !noalias !20256
  %i.gp = trunc nuw nsw i64 %i.gh to i16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i16 %i.gp, ptr %i.gq, align 8, !noalias !20256
  %i.gr = add nuw nsw i64 %.sroa.0.06.i.i43.i.i.i.i, 3 ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gm
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !20255, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.fe, ptr %i.gt, align 8, !noalias !20256
  %i.gu = trunc nuw nsw i64 %i.gm to i16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i16 %i.gu, ptr %i.gv, align 8, !noalias !20256
  %i.gw = add nuw nsw i64 %.sroa.0.06.i.i43.i.i.i.i, 4 ; 2 uses
  %i.gx = icmp ult i64 %.sroa.0.06.i.i43.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gx)
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gr
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !20255, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.fe, ptr %i.gz, align 8, !noalias !20256
  %i.ha = trunc nuw nsw i64 %i.gr to i16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i16 %i.ha, ptr %i.hb, align 8, !noalias !20256
  %exitcond.not.i.i44.i.i.i.i.3 = icmp eq i64 %i.gw, %i.fu
  br i1 %exitcond.not.i.i44.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit45.i.i.i.i", label %.lr.ph.i.i42.i.i.i.i

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit45.i.i.i.i": ; preds = %.lr.ph.i.i42.i.i.i.i.prol.loopexit, %.lr.ph.i.i42.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h956a79a5ccb70867E.exit.i41.i.i.i.i
  %.sroa.6.0.copyload13.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !20257
  %.sroa.714.0.copyload16.i.i.i = load ptr, ptr %i.cg, align 8, !noalias !20257
  br label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hdcdd3a42ca7dcb3fE.exit.i.i.i"

.noexc8:                                          ; preds = %bb.ac, %.noexc7
  %.sroa.10.1.i.i.i.i = phi i64 [ %i.fd, %.noexc7 ], [ 0, %bb.ac ] ; 7 uses
  %i.hc = load ptr, ptr %i.cg, align 8, !noalias !20246, !nonnull !17, !noundef !17 ; 10 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 10 ; 2 uses
  %i.he = load i16, ptr %i.hd, align 2, !noalias !20258, !noundef !17 ; 2 uses
  %i.hf = zext i16 %i.he to i64                   ; 5 uses
  %i.hg = add i16 %i.he, 1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 12 ; 2 uses
  %i.hi = add nuw nsw i64 %.sroa.10.1.i.i.i.i, 1  ; 6 uses
  %.not.i46.not.i.i.i.i = icmp samesign ult i64 %.sroa.10.1.i.i.i.i, %i.hf
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.sroa.10.1.i.i.i.i ; 2 uses
  br i1 %.not.i46.not.i.i.i.i, label %bb.af, label %_ZN5alloc11collections5btree4node12slice_insert17h956a79a5ccb70867E.exit.i48.i.i.i.i

bb.af:                                            ; preds = %.noexc8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hi
  %i.hl = sub nuw nsw i64 %i.hf, %.sroa.10.1.i.i.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hk, ptr nonnull align 1 %i.hj, i64 %i.hl, i1 false), !alias.scope !20259, !noalias !20258
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 24 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hi
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.sroa.10.1.i.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = shl nuw nsw i64 %i.hl, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hp, ptr nonnull align 8 %i.hn, i64 %i.hq, i1 false), !alias.scope !20260, !noalias !20258
  br label %_ZN5alloc11collections5btree4node12slice_insert17h956a79a5ccb70867E.exit.i48.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h956a79a5ccb70867E.exit.i48.i.i.i.i: ; preds = %bb.af, %.noexc8
  store i8 %.sroa.11.073.i.i.i, ptr %i.hj, align 1, !alias.scope !20259, !noalias !20258
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hc, i64 24 ; 6 uses
  %i.hs = add nuw nsw i64 %i.hf, 2                ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hi
  store ptr %.sroa.7.075.i.i.i, ptr %i.ht, align 8, !alias.scope !20260, !noalias !20258
  store i16 %i.hg, ptr %i.hd, align 2, !noalias !20258
  %i.hu = icmp samesign ult i64 %i.hi, %i.hs
  br i1 %i.hu, label %.lr.ph.i.i49.i.i.i.i.preheader, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit52.i.i.i.i"

.lr.ph.i.i49.i.i.i.i.preheader:                   ; preds = %_ZN5alloc11collections5btree4node12slice_insert17h956a79a5ccb70867E.exit.i48.i.i.i.i
  %i.hv = add nuw nsw i64 %i.hf, 1
  %i.hw = sub nsw i64 %i.hv, %.sroa.10.1.i.i.i.i
  %i.hx = sub nsw i64 %i.hf, %.sroa.10.1.i.i.i.i
  %xtraiter = and i64 %i.hw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i49.i.i.i.i.prol.loopexit, label %.lr.ph.i.i49.i.i.i.i.prol

.lr.ph.i.i49.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i49.i.i.i.i.preheader, %.lr.ph.i.i49.i.i.i.i.prol
  %.sroa.0.06.i.i50.i.i.i.i.prol = phi i64 [ %i.hy, %.lr.ph.i.i49.i.i.i.i.prol ], [ %i.hi, %.lr.ph.i.i49.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i49.i.i.i.i.prol ], [ 0, %.lr.ph.i.i49.i.i.i.i.preheader ]
  %i.hy = add nuw nsw i64 %.sroa.0.06.i.i50.i.i.i.i.prol, 1 ; 2 uses
  %i.hz = icmp samesign ult i64 %.sroa.0.06.i.i50.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.hz)
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %.sroa.0.06.i.i50.i.i.i.i.prol
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !20261, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.hc, ptr %i.ib, align 8, !noalias !20262
  %i.ic = trunc nuw nsw i64 %.sroa.0.06.i.i50.i.i.i.i.prol to i16
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store i16 %i.ic, ptr %i.id, align 8, !noalias !20262
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i49.i.i.i.i.prol.loopexit, label %.lr.ph.i.i49.i.i.i.i.prol, !llvm.loop !20207

.lr.ph.i.i49.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i49.i.i.i.i.prol, %.lr.ph.i.i49.i.i.i.i.preheader
  %.sroa.0.06.i.i50.i.i.i.i.unr = phi i64 [ %i.hi, %.lr.ph.i.i49.i.i.i.i.preheader ], [ %i.hy, %.lr.ph.i.i49.i.i.i.i.prol ]
  %i.ie = icmp ult i64 %i.hx, 3
  br i1 %i.ie, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit52.i.i.i.i", label %.lr.ph.i.i49.i.i.i.i

.lr.ph.i.i49.i.i.i.i:                             ; preds = %.lr.ph.i.i49.i.i.i.i.prol.loopexit, %.lr.ph.i.i49.i.i.i.i
  %.sroa.0.06.i.i50.i.i.i.i = phi i64 [ %i.iu, %.lr.ph.i.i49.i.i.i.i ], [ %.sroa.0.06.i.i50.i.i.i.i.unr, %.lr.ph.i.i49.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.if = add nuw nsw i64 %.sroa.0.06.i.i50.i.i.i.i, 1 ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %.sroa.0.06.i.i50.i.i.i.i
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !20261, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.hc, ptr %i.ih, align 8, !noalias !20262
  %i.ii = trunc nuw nsw i64 %.sroa.0.06.i.i50.i.i.i.i to i16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i16 %i.ii, ptr %i.ij, align 8, !noalias !20262
  %i.ik = add nuw nsw i64 %.sroa.0.06.i.i50.i.i.i.i, 2 ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.if
  %i.im = load ptr, ptr %i.il, align 8, !noalias !20261, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.hc, ptr %i.im, align 8, !noalias !20262
  %i.in = trunc nuw nsw i64 %i.if to i16
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i16 %i.in, ptr %i.io, align 8, !noalias !20262
  %i.ip = add nuw nsw i64 %.sroa.0.06.i.i50.i.i.i.i, 3 ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ik
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !20261, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.hc, ptr %i.ir, align 8, !noalias !20262
  %i.is = trunc nuw nsw i64 %i.ik to i16
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i16 %i.is, ptr %i.it, align 8, !noalias !20262
  %i.iu = add nuw nsw i64 %.sroa.0.06.i.i50.i.i.i.i, 4 ; 2 uses
  %i.iv = icmp ult i64 %.sroa.0.06.i.i50.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.iv)
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ip
  %i.ix = load ptr, ptr %i.iw, align 8, !noalias !20261, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.hc, ptr %i.ix, align 8, !noalias !20262
  %i.iy = trunc nuw nsw i64 %i.ip to i16
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i16 %i.iy, ptr %i.iz, align 8, !noalias !20262
  %exitcond.not.i.i51.i.i.i.i.3 = icmp eq i64 %i.iu, %i.hs
  br i1 %exitcond.not.i.i51.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit52.i.i.i.i", label %.lr.ph.i.i49.i.i.i.i

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit52.i.i.i.i": ; preds = %.lr.ph.i.i49.i.i.i.i.prol.loopexit, %.lr.ph.i.i49.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h956a79a5ccb70867E.exit.i48.i.i.i.i
  %.sroa.010.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !noalias !20257
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !20257
  br label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hdcdd3a42ca7dcb3fE.exit.i.i.i"

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hdcdd3a42ca7dcb3fE.exit.thread.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZN5alloc11collections5btree4node12slice_insert17h956a79a5ccb70867E.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20245
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h57c30918101da64bE.exit.i"

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hdcdd3a42ca7dcb3fE.exit.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit52.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit45.i.i.i.i"
  %.sroa.714.0.i.i.i = phi ptr [ %i.hc, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit52.i.i.i.i" ], [ %.sroa.714.0.copyload16.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit45.i.i.i.i" ] ; 3 uses
  %.sroa.6.031.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit52.i.i.i.i" ], [ %.sroa.6.0.copyload13.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit45.i.i.i.i" ]
  %.sroa.010.0.i.i.i = phi ptr [ %.sroa.010.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit52.i.i.i.i" ], [ %i.fe, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd446edbe386393fdE.exit45.i.i.i.i" ] ; 3 uses
  %.sroa.8.0.copyload18.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !20257 ; 2 uses
  %.sroa.919.0.copyload21.i.i.i = load i8, ptr %.sroa.919.0..sroa_idx.i.i.i, align 8, !noalias !20257 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20245
  %.not35.i.i.i = icmp eq i8 %.sroa.919.0.copyload21.i.i.i, 9
  br i1 %.not35.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h57c30918101da64bE.exit.i", label %bb.ag

bb.ag:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hdcdd3a42ca7dcb3fE.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.0.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.714.0.i.i.i) ]
  %i.ja = load ptr, ptr %.sroa.010.0.i.i.i, align 8, !noalias !20236, !noundef !17 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i, label %bb.v

.thread.i:                                        ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !20263
  %i.jb = tail call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !20263 ; 5 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %.invoke, label %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i.i", !prof !22

.invoke:                                          ; preds = %.thread.i, %bb.o, %bb.n, %bb.m, %bb.l
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #54
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i.i": ; preds = %.thread.i
  store ptr null, ptr %i.jb, align 8, !noalias !20263
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 10
  store ptr %i.jb, ptr %1, align 8, !alias.scope !20210, !noalias !20264
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.je, align 8, !alias.scope !20210, !noalias !20264
  store i16 1, ptr %i.jd, align 2, !noalias !20265
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  store i8 %2, ptr %i.jf, align 4, !noalias !20265
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h57c30918101da64bE.exit.i"

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h57c30918101da64bE.exit.i": ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hdcdd3a42ca7dcb3fE.exit.i.i.i", %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h96a905a6860ce09bE.exit.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hdcdd3a42ca7dcb3fE.exit.thread.i.i.i", %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h7a67edca28d60847E.exit.i.i.i", %bb.s
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !alias.scope !20210, !noalias !20264, !noundef !17
  %i.ji = add i64 %i.jh, 1
  store i64 %i.ji, ptr %i.jg, align 8, !alias.scope !20210, !noalias !20264
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h217f4a4b8d4817b1E.exit"

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ac, %bb.ab, %.invoke168, %.invoke
  %lpad.loopexit.split-lp213 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %common.resume.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %common.resume.i.i.i.i ], [ %lpad.loopexit.split-lp213, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$console..utils..Style$GT$17hcfd3fb6dcef84372E"(ptr noalias noundef align 8 dereferenceable(32) %1) #55
          to label %bb.ai unwind label %bb.ah

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h217f4a4b8d4817b1E.exit": ; preds = %.lr.ph, %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h57c30918101da64bE.exit.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void

bb.ah:                                            ; preds = %.body
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.ai:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7console5utils5style17hb381d313d45317d3E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) initializes((0, 24), (32, 41), (42, 43), (44, 48)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i":
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !noalias !20284
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.47.0..sroa_idx, align 8, !noalias !20284
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 9, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !20285
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 9, ptr %.sroa.6.0..sroa_idx.i, align 2, !alias.scope !20285
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store <4 x i8> <i8 2, i8 0, i8 0, i8 0>, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !20285
  store ptr %1, ptr %0, align 8, !alias.scope !20285
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.d, align 8, !alias.scope !20285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20286
  store i64 0, ptr %i.b, align 8, !alias.scope !20287, !noalias !20286
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %i.e, align 8, !alias.scope !20287, !noalias !20286
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.f, align 8, !alias.scope !20287, !noalias !20286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20288
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !20286
  %i.g = load ptr, ptr %i.a, align 8, !noalias !20288, !noundef !17
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not3.i.i.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$console..utils..Style$GT$17hcfd3fb6dcef84372E.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20288
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hde9d031756dd390fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !20286
  %i.h = load ptr, ptr %i.a, align 8, !noalias !20288, !noundef !17
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$console..utils..Style$GT$17hcfd3fb6dcef84372E.exit", label %.lr.ph.i.i.i.i.i.i

"_ZN4core3ptr42drop_in_place$LT$console..utils..Style$GT$17hcfd3fb6dcef84372E.exit": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20286
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers13diff_deadline17h7d83de40c522954fE(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 0, 1000000001) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %spec.select.i.i13 = tail call noundef i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
  %i.c = add i64 %spec.select.i.i, 1
  %i.d = add i64 %i.c, %spec.select.i.i13
  %i.e = lshr i64 %i.d, 1
  %i.f = add nuw i64 %i.e, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN7similar10algorithms5myers1V3new17hbcc4419b04149885E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN7similar10algorithms5myers1V3new17hbcc4419b04149885E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i64 noundef %i.f)
          to label %bb.d unwind label %bb.c

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14": ; preds = %bb.f, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.k, %bb.e ], [ %i.k, %bb.f ]
  %.val11 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.g = icmp eq i64 %.val11, 0
  br i1 %i.g, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val12 = load ptr, ptr %i.h, align 8, !nonnull !17, !noundef !17
  %i.i = shl nuw i64 %.val11, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit"

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"

bb.d:                                             ; preds = %bb.a
  invoke fastcc void @_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef align 8 dereferenceable(32) %i.a, ptr noalias noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef %8)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val9 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.l = icmp eq i64 %.val9, 0
  br i1 %i.l, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val10 = load ptr, ptr %i.m, align 8, !nonnull !17, !noundef !17
  %i.n = shl nuw i64 %.val9, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN114_$LT$similar..algorithms..compact..Compact$LT$Old$C$New$C$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6finish17h01cb7c09234c7d59E"(ptr noalias noundef align 8 dereferenceable(160) %0)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %.val7 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.o = icmp eq i64 %.val7, 0
  br i1 %i.o, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val8 = load ptr, ptr %i.p, align 8, !nonnull !17, !noundef !17
  %i.q = shl nuw i64 %.val7, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val5 = load i64, ptr %i.b, align 8            ; 2 uses
  %i.r = icmp eq i64 %.val5, 0
  br i1 %i.r, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15"
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val6 = load ptr, ptr %i.s, align 8, !nonnull !17, !noundef !17
  %i.t = shl nuw i64 %.val5, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16": ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15", %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit": ; preds = %bb.b, %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers13diff_deadline17h83970c7aa31c62daE(ptr noalias noundef nonnull align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %4, i64 %3)
  %spec.select.i.i13 = tail call noundef i64 @llvm.usub.sat.i64(i64 %8, i64 %7)
end_hunk_15
