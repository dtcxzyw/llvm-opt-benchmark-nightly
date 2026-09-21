Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN6brotli3enc19backward_references30BrotliCreateBackwardReferences17hda9e5271d10c6767E:bb.a
  br i1 %niter4536.ncmp.3, label %.loopexit130.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i561

.loopexit130.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i.i.i.i561
  %lcmp.mod4532.not = icmp eq i64 %xtraiter4530, 0
  br i1 %lcmp.mod4532.not, label %.loopexit130.i, label %.lr.ph.i.i.i.i.i561.epil.preheader

.lr.ph.i.i.i.i.i561.epil.preheader:               ; preds = %.loopexit130.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i561.preheader
  %.sroa.0.06.i.i.i.i.i562.epil.init = phi ptr [ %i.eaw, %.lr.ph.i.i.i.i.i561.preheader ], [ %i.ebc, %.loopexit130.i.loopexit.unr-lcssa ]
  %lcmp.mod4534 = icmp ne i64 %xtraiter4530, 0
  tail call void @llvm.assume(i1 %lcmp.mod4534)
  br label %.lr.ph.i.i.i.i.i561.epil

.lr.ph.i.i.i.i.i561.epil:                         ; preds = %.lr.ph.i.i.i.i.i561.epil, %.lr.ph.i.i.i.i.i561.epil.preheader
  %.sroa.0.06.i.i.i.i.i562.epil = phi ptr [ %i.ebd, %.lr.ph.i.i.i.i.i561.epil ], [ %.sroa.0.06.i.i.i.i.i562.epil.init, %.lr.ph.i.i.i.i.i561.epil.preheader ] ; 6 uses
  %epil.iter4531 = phi i64 [ %epil.iter4531.next, %.lr.ph.i.i.i.i.i561.epil ], [ 0, %.lr.ph.i.i.i.i.i561.epil.preheader ]
  store i32 0, ptr %.sroa.0.06.i.i.i.i.i562.epil, align 4, !noalias !37499
  %.sroa.56.0..sroa.0.06.i.i.sroa_idx.i.i.i564.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562.epil, i64 4
  store float 1.700000e+38, ptr %.sroa.56.0..sroa.0.06.i.i.sroa_idx.i.i.i564.epil, align 4, !noalias !37499
  %.sroa.68.0..sroa.0.06.i.i.sroa_idx.i.i.i565.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562.epil, i64 8
  store i32 1, ptr %.sroa.68.0..sroa.0.06.i.i.sroa_idx.i.i.i565.epil, align 4, !noalias !37499
  %.sroa.710.0..sroa.0.06.i.i.sroa_idx.i.i.i566.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562.epil, i64 12
  store i32 0, ptr %.sroa.710.0..sroa.0.06.i.i.sroa_idx.i.i.i566.epil, align 4, !noalias !37499
  %.sroa.8.0..sroa.0.06.i.i.sroa_idx.i.i.i567.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562.epil, i64 16
  store i32 0, ptr %.sroa.8.0..sroa.0.06.i.i.sroa_idx.i.i.i567.epil, align 4, !noalias !37499
  %i.ebd = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i562.epil, i64 20 ; 2 uses
  %epil.iter4531.next = add i64 %epil.iter4531, 1 ; 2 uses
  %epil.iter4531.cmp.not = icmp eq i64 %epil.iter4531.next, %xtraiter4530
  br i1 %epil.iter4531.cmp.not, label %.loopexit130.i, label %.lr.ph.i.i.i.i.i561.epil, !llvm.loop !36924

.loopexit130.i:                                   ; preds = %.loopexit130.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i561.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h817cfe93670aa9b5E.exit.i.i.i.i.i560"
  %.sroa.0.0.lcssa.i.i.i.i.i569 = phi ptr [ %i.eaw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h817cfe93670aa9b5E.exit.i.i.i.i.i560" ], [ %i.ebc, %.loopexit130.i.loopexit.unr-lcssa ], [ %i.ebd, %.lr.ph.i.i.i.i.i561.epil ] ; 5 uses
  store i32 0, ptr %.sroa.0.0.lcssa.i.i.i.i.i569, align 4, !noalias !37499
  %.sroa.56.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i570 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i569, i64 4
  store float 1.700000e+38, ptr %.sroa.56.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i570, align 4, !noalias !37499
  %.sroa.68.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i571 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i569, i64 8
  store i32 1, ptr %.sroa.68.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i571, align 4, !noalias !37499
  %.sroa.710.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i572 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i569, i64 12
  store i32 0, ptr %.sroa.710.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i572, align 4, !noalias !37499
  %.sroa.8.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i573 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i569, i64 16
  store i32 0, ptr %.sroa.8.0..sroa.0.0.lcssa.i.i.sroa_idx.i.i.i573, align 4, !noalias !37499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !37488
  %i.ebe = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.val117.i = load i32, ptr %i.ebe, align 8, !alias.scope !37481, !noalias !37487
  invoke fastcc void @"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$4init17hc0a10e258fbf5bd2E"(ptr noalias noundef align 8 captures(address) dereferenceable(2864) %i.k, i32 %.val117.i, i64 noundef range(i64 0, 4294967296) %0)
          to label %bb.aca unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i", !noalias !37492

bb.aca:                                           ; preds = %.loopexit130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2864) %i.l, ptr noundef nonnull align 8 dereferenceable(2864) %i.k, i64 2864, i1 false), !noalias !37488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !37488
  %i.ebf = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.ebg = sub i64 %1, %i.eas
  %i.ebh = getelementptr inbounds nuw i8, ptr %i.l, i64 2856
  %i.ebi = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.ebj = getelementptr inbounds nuw i8, ptr %i.l, i64 2860
  %i.ebk = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 5 uses
  %i.ebl = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 5 uses
  %i.ebm = getelementptr inbounds nuw i8, ptr %i.l, i64 2848
  %i.ebn = getelementptr inbounds nuw i8, ptr %i.eaw, i64 8
  %.sroa.4.0..sroa_idx.i.i575 = getelementptr inbounds nuw i8, ptr %i.eaw, i64 4
  %i.ebo = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ebp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ebq = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ebr = add nuw nsw i64 %0, 1                  ; 2 uses
  %i.ebs = icmp eq i64 %0, 0
  %unroll_iter4543 = and i64 %i.ebr, 8589934590
  %i.ebt = and i64 %0, 1
  %lcmp.mod4540.not.not = icmp eq i64 %i.ebt, 0
  %lcmp.mod4542 = trunc i64 %i.ebr to i1
  br label %.preheader.i577.preheader

bb.acb:                                           ; preds = %.loopexit.i585
  br i1 %.not119.i2264, label %.preheader.i577.preheader, label %.noexc.i576

.preheader.i577.preheader:                        ; preds = %bb.aca, %bb.acb
  %.not119.i2264 = phi i1 [ true, %bb.aca ], [ false, %bb.acb ] ; 2 uses
  %i.ebu = phi i64 [ %i.eat, %bb.aca ], [ %i.eim, %bb.acb ] ; 2 uses
  br i1 %i.ebs, label %.preheader.i577.epil.preheader, label %.preheader.i577

.noexc.i576:                                      ; preds = %bb.acb
  %i.ebv = load ptr, ptr %i.ebk, align 8, !alias.scope !37500, !noalias !37501, !nonnull !45, !align !70, !noundef !45
  %i.ebw = load i64, ptr %i.ebl, align 8, !alias.scope !37500, !noalias !37501, !noundef !45
  store ptr inttoptr (i64 4 to ptr), ptr %i.ebk, align 8, !alias.scope !37500, !noalias !37501
  store i64 0, ptr %i.ebl, align 8, !alias.scope !37500, !noalias !37501
  %i.ebx = icmp eq i64 %i.ebw, 0
  br i1 %i.ebx, label %.noexc100.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %.noexc.i576
  call void @mi_free(ptr noundef nonnull align 4 %i.ebv) #38, !noalias !37492
  br label %.noexc100.i

.noexc100.i:                                      ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %.noexc.i576
  %i.eby = load ptr, ptr %i.l, align 8, !alias.scope !37500, !noalias !37501, !nonnull !45, !align !70, !noundef !45
  %i.ebz = load i64, ptr %i.ebi, align 8, !alias.scope !37500, !noalias !37501, !noundef !45
  store ptr inttoptr (i64 4 to ptr), ptr %i.l, align 8, !alias.scope !37500, !noalias !37501
  store i64 0, ptr %i.ebi, align 8, !alias.scope !37500, !noalias !37501
  %i.eca = icmp eq i64 %i.ebz, 0
  br i1 %i.eca, label %bb.acc, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i147.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i147.i": ; preds = %.noexc100.i
  call void @mi_free(ptr noundef nonnull align 4 %i.eby) #38, !noalias !37492
  br label %bb.acc

bb.acc:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i147.i", %.noexc100.i
  call void @mi_free(ptr noundef nonnull align 4 %i.eaw) #38, !noalias !37492
  %i.ecb = icmp eq i64 %.sroa.16.0.lcssa.i, 0
  br i1 %i.ecb, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hb7a9c70346e276afE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i150.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i150.i": ; preds = %bb.acc
  call void @mi_free(ptr noundef nonnull align 8 %.sroa.06.0.lcssa.i) #38, !noalias !37492
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hb7a9c70346e276afE.exit.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hb7a9c70346e276afE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i150.i", %bb.acc
  br i1 %.not.i559, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i151.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i151.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hb7a9c70346e276afE.exit.i"
  call void @mi_free(ptr noundef nonnull align 4 %i.eaq) #38, !noalias !37492
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i151.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hb7a9c70346e276afE.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !37502)
  %.val5.i.i = load i64, ptr %i.ebi, align 8, !alias.scope !37502, !noalias !37488, !noundef !45
  %i.ecc = icmp eq i64 %.val5.i.i, 0
  br i1 %i.ecc, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i152.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i152.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"
  %.val4.i.i = load ptr, ptr %i.l, align 8, !alias.scope !37502, !noalias !37488, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val4.i.i) #38, !noalias !37503
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i152.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"
  %.val1.i.i = load i64, ptr %i.ebl, align 8, !alias.scope !37502, !noalias !37488, !noundef !45
  %i.ecd = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ecd, label %_ZN6brotli3enc19backward_references2hq38BrotliCreateHqZopfliBackwardReferences17h9e97b296fe1388bdE.exit, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i8.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i8.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i.i"
  %.val.i153.i = load ptr, ptr %i.ebk, align 8, !alias.scope !37502, !noalias !37488, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val.i153.i) #38, !noalias !37503
  br label %_ZN6brotli3enc19backward_references2hq38BrotliCreateHqZopfliBackwardReferences17h9e97b296fe1388bdE.exit

.unr-lcssa4537:                                   ; preds = %.preheader.i577
  br i1 %lcmp.mod4540.not.not, label %.preheader.i577.epil.preheader, label %bb.acd

.preheader.i577.epil.preheader:                   ; preds = %.unr-lcssa4537, %.preheader.i577.preheader
  %.sroa.054.0293.i.epil.init = phi i64 [ 0, %.preheader.i577.preheader ], [ %i.eiq, %.unr-lcssa4537 ]
  call void @llvm.assume(i1 %lcmp.mod4542)
  %i.ece = getelementptr inbounds nuw [20 x i8], ptr %i.eaw, i64 %.sroa.054.0293.i.epil.init ; 4 uses
  store i64 9151254648282152960, ptr %i.ece, align 4, !noalias !37492
  %.sroa.4.0..sroa_idx.i578.epil = getelementptr inbounds nuw i8, ptr %i.ece, i64 8
  store i32 1, ptr %.sroa.4.0..sroa_idx.i578.epil, align 4, !noalias !37492
  %.sroa.5.0..sroa_idx.i579.epil = getelementptr inbounds nuw i8, ptr %i.ece, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx.i579.epil, align 4, !noalias !37492
  %.sroa.653.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.ece, i64 16
  store i32 0, ptr %.sroa.653.0..sroa_idx.i.epil, align 4, !noalias !37492
  br label %bb.acd

bb.acd:                                           ; preds = %.unr-lcssa4537, %.preheader.i577.epil.preheader
  br i1 %.not119.i2264, label %bb.ace, label %bb.acf

bb.ace:                                           ; preds = %bb.acd
  invoke fastcc void @"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$22set_from_literal_costs17h95506b278b736b3bE"(ptr noalias noundef align 8 dereferenceable(2864) %i.l, i64 noundef range(i64 0, 4294967296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef range(i64 0, 4294967296) %4)
          to label %bb.acp unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.i", !noalias !37492

bb.acf:                                           ; preds = %bb.acd
  %i.ecf = sub i64 %i.ebu, %i.eat
  call void @llvm.experimental.noalias.scope.decl(metadata !37504)
  call void @llvm.experimental.noalias.scope.decl(metadata !37505)
  call void @llvm.experimental.noalias.scope.decl(metadata !37506)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !37507
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false), !noalias !37507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !37507
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2816) %i.g, i8 0, i64 2816, i1 false), !noalias !37507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !37507
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(560) %i.f, i8 0, i64 560, i1 false), !noalias !37507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !37507
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !noalias !37507
  %.not72.i.i = icmp eq i64 %i.ebu, %i.eat
  br i1 %.not72.i.i, label %._crit_edge64.i.i, label %.lr.ph63.i.i

._crit_edge64.i.i:                                ; preds = %._crit_edge.i.i, %bb.acf
  invoke void @_ZN6brotli3enc19backward_references2hq7SetCost17hc2dee2044af4d67bE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.h, i64 noundef 256, i64 noundef 256, i1 noundef zeroext true, ptr noalias noundef nonnull align 4 %i.e, i64 noundef 256)
          to label %.noexc155.i unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.i", !noalias !37492

.noexc155.i:                                      ; preds = %._crit_edge64.i.i
  invoke void @_ZN6brotli3enc19backward_references2hq7SetCost17hc2dee2044af4d67bE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.g, i64 noundef 704, i64 noundef 704, i1 noundef zeroext false, ptr noalias noundef nonnull align 4 %i.ebf, i64 noundef 704)
          to label %.noexc156.i unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.i", !noalias !37492

.noexc156.i:                                      ; preds = %.noexc155.i
  %i.ecg = load i32, ptr %i.ebh, align 8, !alias.scope !37504, !noalias !37508, !noundef !45
  %i.ech = zext i32 %i.ecg to i64
  %.val43.i.i = load ptr, ptr %i.l, align 8, !alias.scope !37504, !noalias !37508, !nonnull !45, !align !70, !noundef !45
  %.val44.i.i = load i64, ptr %i.ebi, align 8, !alias.scope !37504, !noalias !37508, !noundef !45
  invoke void @_ZN6brotli3enc19backward_references2hq7SetCost17hc2dee2044af4d67bE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.f, i64 noundef 140, i64 noundef %i.ech, i1 noundef zeroext false, ptr noalias noundef nonnull align 4 %.val43.i.i, i64 noundef %.val44.i.i)
          to label %vector.body2270 unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.i", !noalias !37492

vector.body2270:                                  ; preds = %.noexc156.i, %vector.body2270
  %index2271 = phi i64 [ %index.next2275, %vector.body2270 ], [ 0, %.noexc156.i ] ; 3 uses
  %vec.phi = phi <4 x float> [ %i.eck, %vector.body2270 ], [ splat (float 1.700000e+38), %.noexc156.i ] ; 2 uses
  %vec.phi2272 = phi <4 x float> [ %i.ecl, %vector.body2270 ], [ splat (float 1.700000e+38), %.noexc156.i ] ; 2 uses
  %i.eci = getelementptr inbounds nuw [4 x i8], ptr %i.ebf, i64 %index2271 ; 2 uses
  %i.ecj = getelementptr inbounds nuw i8, ptr %i.eci, i64 16
  %wide.load2273 = load <4 x float>, ptr %i.eci, align 8, !alias.scope !37504, !noalias !37508 ; 2 uses
  %wide.load2274 = load <4 x float>, ptr %i.ecj, align 8, !alias.scope !37504, !noalias !37508 ; 2 uses
  %i.eck = call <4 x float> @llvm.minnum.v4f32(<4 x float> %vec.phi, <4 x float> %wide.load2273) ; 2 uses
  %i.ecl = call <4 x float> @llvm.minnum.v4f32(<4 x float> %vec.phi2272, <4 x float> %wide.load2274) ; 2 uses
  %index.next2275 = add nuw i64 %index2271, 8     ; 2 uses
  %i.ecm = fcmp uno <4 x float> %wide.load2273, %wide.load2274
  %14 = freeze <4 x i1> %i.ecm
  %i.ecn = bitcast <4 x i1> %14 to i4
  %i.eco = icmp ne i4 %i.ecn, 0                   ; 4 uses
  %i.ecp = icmp eq i64 %index.next2275, 704
  %i.ecq = or i1 %i.eco, %i.ecp
  br i1 %i.ecq, label %middle.block2276, label %vector.body2270, !llvm.loop !36934

middle.block2276:                                 ; preds = %vector.body2270
  %i.ecr = select i1 %i.eco, <4 x float> %vec.phi, <4 x float> %i.eck
  %i.ecs = select i1 %i.eco, <4 x float> %vec.phi2272, <4 x float> %i.ecl
  %rdx.minmax = call <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ecr, <4 x float> %i.ecs)
  %i.ect = call float @llvm.vector.reduce.fmin.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  br i1 %i.eco, label %.noexc157.i, label %.loopexit2277

.lr.ph63.i.i:                                     ; preds = %bb.acf, %._crit_edge.i.i
  %.sroa.0.061.i.i = phi i64 [ %i.eer, %._crit_edge.i.i ], [ %i.ebg, %bb.acf ] ; 2 uses
  %.sroa.04.060.i.i = phi i64 [ %i.ees, %._crit_edge.i.i ], [ 0, %bb.acf ] ; 3 uses
  %exitcond95.not.i.i = icmp eq i64 %.sroa.04.060.i.i, %11
  br i1 %exitcond95.not.i.i, label %.invoke.i, label %bb.acj

.loopexit2277:                                    ; preds = %.noexc157.i, %middle.block2276
  %.lcssa2174 = phi float [ %i.ect, %middle.block2276 ], [ %i.edo, %.noexc157.i ]
  store float %.lcssa2174, ptr %i.ebj, align 4, !alias.scope !37504, !noalias !37508
  %.val.i154.i = load ptr, ptr %i.ebk, align 8, !alias.scope !37504, !noalias !37508, !nonnull !45, !align !70, !noundef !45 ; 2 uses
  %.val42.i.i = load i64, ptr %i.ebl, align 8, !alias.scope !37504, !noalias !37508, !noundef !45 ; 4 uses
  %i.ecu = load i64, ptr %i.ebm, align 8, !alias.scope !37504, !noalias !37508, !noundef !45 ; 2 uses
  %.not.i.i582 = icmp eq i64 %.val42.i.i, 0
  br i1 %.not.i.i582, label %.invoke.i, label %bb.acg

bb.acg:                                           ; preds = %.loopexit2277
  store float 0.000000e+00, ptr %.val.i154.i, align 4, !noalias !37509
  %.not74.i.i = icmp eq i64 %i.ecu, 0
  br i1 %.not74.i.i, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17set_from_commands17h028e9769fdb83d5dE.exit.i", label %.lr.ph70.i.i

.lr.ph70.i.i:                                     ; preds = %bb.acg, %bb.aci
  %i.ecv = phi float [ %i.edh, %bb.aci ], [ 0.000000e+00, %bb.acg ] ; 2 uses
  %i.ecw = phi i64 [ %i.edk, %bb.aci ], [ 1, %bb.acg ] ; 5 uses
  %.sroa.015.068.i.i = phi float [ %i.edj, %bb.aci ], [ 0.000000e+00, %bb.acg ]
  %.sroa.025.067.i.i = phi i64 [ %i.ecw, %bb.aci ], [ 0, %bb.acg ]
  %i.ecx = add i64 %.sroa.025.067.i.i, %1
  %i.ecy = and i64 %i.ecx, %4                     ; 3 uses
  %i.ecz = icmp ult i64 %i.ecy, %3
  br i1 %i.ecz, label %bb.ach, label %.invoke.i

bb.ach:                                           ; preds = %.lr.ph70.i.i
  %exitcond98.not.i.i = icmp eq i64 %i.ecw, %.val42.i.i
  br i1 %exitcond98.not.i.i, label %.invoke.i, label %bb.aci

bb.aci:                                           ; preds = %bb.ach
  %i.eda = getelementptr inbounds nuw i8, ptr %2, i64 %i.ecy
  %i.edb = load i8, ptr %i.eda, align 1, !alias.scope !37510, !noalias !37511, !noundef !45
  %i.edc = zext i8 %i.edb to i64
  %i.edd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.edc
  %i.ede = load float, ptr %i.edd, align 4, !noalias !37507, !noundef !45
  %i.edf = fadd float %.sroa.015.068.i.i, %i.ede  ; 2 uses
  %i.edg = getelementptr inbounds nuw [4 x i8], ptr %.val.i154.i, i64 %i.ecw
  %i.edh = fadd float %i.ecv, %i.edf              ; 3 uses
  store float %i.edh, ptr %i.edg, align 4, !noalias !37509
  %i.edi = fsub float %i.edh, %i.ecv
  %i.edj = fsub float %i.edf, %i.edi
  %i.edk = add i64 %i.ecw, 1
  %exitcond99.not.i.i = icmp eq i64 %i.ecw, %i.ecu
  br i1 %exitcond99.not.i.i, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17set_from_commands17h028e9769fdb83d5dE.exit.i", label %.lr.ph70.i.i

.noexc157.i:                                      ; preds = %middle.block2276, %.noexc157.i
  %.sroa.02.066.i.i = phi float [ %i.edo, %.noexc157.i ], [ %i.ect, %middle.block2276 ]
  %.sroa.023.065.i.i = phi i64 [ %i.edl, %.noexc157.i ], [ %index2271, %middle.block2276 ] ; 2 uses
  %i.edl = add nuw nsw i64 %.sroa.023.065.i.i, 1  ; 2 uses
  %i.edm = getelementptr inbounds nuw [4 x i8], ptr %i.ebf, i64 %.sroa.023.065.i.i
  %i.edn = load float, ptr %i.edm, align 4, !alias.scope !37504, !noalias !37508, !noundef !45
  %i.edo = call float @llvm.minnum.f32(float %.sroa.02.066.i.i, float %i.edn) ; 2 uses
  %exitcond97.not.i.i = icmp eq i64 %i.edl, 704
  br i1 %exitcond97.not.i.i, label %.loopexit2277, label %.noexc157.i, !llvm.loop !36935

bb.acj:                                           ; preds = %.lr.ph63.i.i
  %i.edp = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %.sroa.04.060.i.i ; 4 uses
  %i.edq = load i32, ptr %i.edp, align 4, !alias.scope !37512, !noalias !37513, !noundef !45 ; 2 uses
  %i.edr = zext i32 %i.edq to i64                 ; 2 uses
  %i.eds = getelementptr inbounds nuw i8, ptr %i.edp, i64 4
  %i.edt = load i32, ptr %i.eds, align 4, !alias.scope !37512, !noalias !37513, !noundef !45
  %i.edu = and i32 %i.edt, 33554431
  %i.edv = zext nneg i32 %i.edu to i64
  %i.edw = getelementptr inbounds nuw i8, ptr %i.edp, i64 14
  %i.edx = load i16, ptr %i.edw, align 2, !alias.scope !37512, !noalias !37513, !noundef !45
  %i.edy = and i16 %i.edx, 1023                   ; 2 uses
  %i.edz = zext nneg i16 %i.edy to i64            ; 2 uses
  %i.eea = getelementptr inbounds nuw i8, ptr %i.edp, i64 12
  %i.eeb = load i16, ptr %i.eea, align 4, !alias.scope !37512, !noalias !37513, !noundef !45 ; 3 uses
  %i.eec = zext i16 %i.eeb to i64                 ; 2 uses
  %i.eed = icmp ult i16 %i.eeb, 704
  br i1 %i.eed, label %bb.ack, label %.invoke.i

bb.ack:                                           ; preds = %bb.acj
  %i.eee = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.eec ; 2 uses
  %i.eef = load i32, ptr %i.eee, align 4, !noalias !37507, !noundef !45
  %i.eeg = add i32 %i.eef, 1
  store i32 %i.eeg, ptr %i.eee, align 4, !noalias !37507
  %i.eeh = icmp samesign ugt i16 %i.eeb, 127
  br i1 %i.eeh, label %bb.acm, label %bb.acl

bb.acl:                                           ; preds = %bb.acn, %bb.ack
  %.not73.i.i = icmp eq i32 %i.edq, 0
  br i1 %.not73.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i580

bb.acm:                                           ; preds = %bb.ack
  %i.eei = icmp samesign ult i16 %i.edy, 140
  br i1 %i.eei, label %bb.acn, label %.invoke.i

bb.acn:                                           ; preds = %bb.acm
  %i.eej = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.edz ; 2 uses
  %i.eek = load i32, ptr %i.eej, align 4, !noalias !37507, !noundef !45
  %i.eel = add i32 %i.eek, 1
  store i32 %i.eel, ptr %i.eej, align 4, !noalias !37507
  br label %bb.acl

.lr.ph.i.i580:                                    ; preds = %bb.acl, %bb.aco
  %i.eem = phi i64 [ %i.eez, %bb.aco ], [ 1, %bb.acl ] ; 3 uses
  %.sroa.021.059.i.i = phi i64 [ %i.eem, %bb.aco ], [ 0, %bb.acl ]
  %i.een = add i64 %.sroa.021.059.i.i, %.sroa.0.061.i.i
  %i.eeo = and i64 %i.een, %4                     ; 3 uses
  %i.eep = icmp ult i64 %i.eeo, %3
  br i1 %i.eep, label %bb.aco, label %.invoke.i

._crit_edge.i.i:                                  ; preds = %bb.aco, %bb.acl
  %i.eeq = add i64 %.sroa.0.061.i.i, %i.edr
  %i.eer = add i64 %i.eeq, %i.edv
  %i.ees = add nuw i64 %.sroa.04.060.i.i, 1       ; 2 uses
  %exitcond96.not.i.i = icmp eq i64 %i.ees, %i.ecf
  br i1 %exitcond96.not.i.i, label %._crit_edge64.i.i, label %.lr.ph63.i.i

bb.aco:                                           ; preds = %.lr.ph.i.i580
  %i.eet = getelementptr inbounds nuw i8, ptr %2, i64 %i.eeo
  %i.eeu = load i8, ptr %i.eet, align 1, !alias.scope !37510, !noalias !37511, !noundef !45
  %i.eev = zext i8 %i.eeu to i64
  %i.eew = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.eev ; 2 uses
  %i.eex = load i32, ptr %i.eew, align 4, !noalias !37507, !noundef !45
  %i.eey = add i32 %i.eex, 1
  store i32 %i.eey, ptr %i.eew, align 4, !noalias !37507
  %i.eez = add nuw nsw i64 %i.eem, 1
  %exitcond.not.i.i581 = icmp eq i64 %i.eem, %i.edr
  br i1 %exitcond.not.i.i581, label %._crit_edge.i.i, label %.lr.ph.i.i580

"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17set_from_commands17h028e9769fdb83d5dE.exit.i": ; preds = %bb.aci, %bb.acg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !37507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !37507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !37507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !37507
  br label %bb.acp

bb.acp:                                           ; preds = %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17set_from_commands17h028e9769fdb83d5dE.exit.i", %bb.ace
  store i64 %i.eat, ptr %12, align 8, !alias.scope !37485, !noalias !37497
  store i64 %i.ear, ptr %13, align 8, !alias.scope !37486, !noalias !37494
  store i64 %i.eas, ptr %9, align 8, !alias.scope !37483, !noalias !37495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !noalias !37496
  call void @llvm.experimental.noalias.scope.decl(metadata !37514)
  call void @llvm.experimental.noalias.scope.decl(metadata !37515)
  call void @llvm.experimental.noalias.scope.decl(metadata !37516)
  call void @llvm.experimental.noalias.scope.decl(metadata !37517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !37518
  store i32 0, ptr %i.ebn, align 4, !alias.scope !37517, !noalias !37519
  store i32 0, ptr %i.eaw, align 4, !alias.scope !37517, !noalias !37519
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx.i.i575, align 4, !alias.scope !37517, !noalias !37519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i8 0, i64 264, i1 false), !noalias !37488
  br i1 %i.eap, label %.lr.ph86.i.i, label %.lr.ph89.i.i.preheader

.lr.ph89.i.i.preheader:                           ; preds = %.loopexit.i.i589, %bb.acp
  br label %.lr.ph89.i.i

.lr.ph86.i.i:                                     ; preds = %bb.acp
  %.val.i173.i = load ptr, ptr %i.ebk, align 8, !alias.scope !37514, !noalias !37520 ; 3 uses
  %.val39.i.i = load i64, ptr %i.ebl, align 8, !alias.scope !37514, !noalias !37520 ; 2 uses
  br label %bb.acv

.lr.ph89.i.i:                                     ; preds = %.lr.ph89.i.i.preheader, %bb.acr
  %.sroa.0.0.i87.i.i = phi i64 [ %i.efi, %bb.acr ], [ %0, %.lr.ph89.i.i.preheader ] ; 4 uses
  %i.efa = getelementptr inbounds nuw [20 x i8], ptr %i.eaw, i64 %.sroa.0.0.i87.i.i ; 4 uses
  %i.efb = getelementptr inbounds nuw i8, ptr %i.efa, i64 16
  %i.efc = load i32, ptr %i.efb, align 4, !alias.scope !37521, !noalias !37519, !noundef !45
  %i.efd = and i32 %i.efc, 134217727
  %i.efe = icmp eq i32 %i.efd, 0
  br i1 %i.efe, label %bb.acq, label %bb.acs

bb.acq:                                           ; preds = %.lr.ph89.i.i
  %i.eff = getelementptr inbounds nuw i8, ptr %i.efa, i64 8
  %i.efg = load i32, ptr %i.eff, align 4, !alias.scope !37521, !noalias !37519, !noundef !45
  %i.efh = icmp eq i32 %i.efg, 1
  br i1 %i.efh, label %bb.acr, label %bb.acs

bb.acr:                                           ; preds = %bb.acq
  %i.efi = add nsw i64 %.sroa.0.0.i87.i.i, -1     ; 3 uses
  %.not123.i = icmp ugt i64 %i.efi, %0
  br i1 %.not123.i, label %.invoke.i, label %.lr.ph89.i.i

bb.acs:                                           ; preds = %bb.acq, %.lr.ph89.i.i
  store i32 1, ptr %i.efa, align 4, !alias.scope !37521, !noalias !37519
  %.sroa.4.0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.efa, i64 4
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.i.i583, align 4, !alias.scope !37521, !noalias !37519
  %i.efj = icmp eq i64 %.sroa.0.0.i87.i.i, 0
  br i1 %i.efj, label %.loopexit.i585, label %.lr.ph95.i.i

.lr.ph95.i.i:                                     ; preds = %bb.acs, %bb.acu
  %.sroa.0.1.i93.i.i = phi i64 [ %i.eft, %bb.acu ], [ %.sroa.0.0.i87.i.i, %bb.acs ] ; 4 uses
end_hunk_0
