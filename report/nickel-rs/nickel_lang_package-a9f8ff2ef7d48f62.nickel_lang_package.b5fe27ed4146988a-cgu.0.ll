Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25765
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN18gix_worktree_state8checkout8function14checkout_inner17h19934dea92044335E:bb.a
  %.sroa.02.1.i = phi i64 [ %.sroa.02.0.ph110.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hcaedaa7d419f18dbE.exit.i" ], [ %i.gl, %bb.ak ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.ph.ph117.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hcaedaa7d419f18dbE.exit.i" ], [ %i.gk, %bb.ak ] ; 2 uses
  %i.gm = load atomic i8, ptr @_ZN3gix9interrupt14IS_INTERRUPTED17hc83527e63e2d019eE monotonic, align 1, !noalias !28845
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %.lr.ph.lr.ph.i, label %.thread163

bb.al:                                            ; preds = %bb.am, %.body.i191
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i191 ], [ %i.gp, %bb.am ]
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$gix_worktree_state..checkout..Collision$GT$$GT$17hf21e0c7a2ddaaff1E"(ptr noalias noundef align 8 dereferenceable(24) %i.an) #75, !noalias !28839
  %.val51.i = load i64, ptr %i.ao, align 8, !noalias !28834 ; 2 uses
  %i.go = icmp eq i64 %.val51.i, 0
  br i1 %i.go, label %bb.jh, label %bb.aq

bb.am:                                            ; preds = %bb.af
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.an:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !28834
  call void @llvm.experimental.noalias.scope.decl(metadata !28849)
  %.val.i.i = load ptr, ptr %i.ej, align 8, !alias.scope !28849, !noalias !28834, !nonnull !43, !noundef !43 ; 2 uses
  %.val1.i.i = load i64, ptr %i.ek, align 16, !alias.scope !28849, !noalias !28834, !noundef !43 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28850)
  %i.gq = icmp eq i64 %.val1.i.i, 0
  br i1 %i.gq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h053c0c8d6dda2f36E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.an, %"_ZN4core3ptr60drop_in_place$LT$gix_worktree_state..checkout..Collision$GT$17h4a7faee3d3d9b1b3E.exit.i.i.i.i"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.gs, %"_ZN4core3ptr60drop_in_place$LT$gix_worktree_state..checkout..Collision$GT$17h4a7faee3d3d9b1b3E.exit.i.i.i.i" ], [ 0, %bb.an ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.gs = add nuw i64 %.sroa.0.011.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.gr, align 8, !alias.scope !28851, !noalias !28852 ; 2 uses
  %i.gt = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.gt, label %"_ZN4core3ptr60drop_in_place$LT$gix_worktree_state..checkout..Collision$GT$17h4a7faee3d3d9b1b3E.exit.i.i.i.i", label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gu = getelementptr i8, ptr %i.gr, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.gu, align 8, !alias.scope !28850, !noalias !28852, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28853
  br label %"_ZN4core3ptr60drop_in_place$LT$gix_worktree_state..checkout..Collision$GT$17h4a7faee3d3d9b1b3E.exit.i.i.i.i"

"_ZN4core3ptr60drop_in_place$LT$gix_worktree_state..checkout..Collision$GT$17h4a7faee3d3d9b1b3E.exit.i.i.i.i": ; preds = %bb.ao, %.lr.ph.i.i.i.i
  %i.gv = icmp eq i64 %i.gs, %.val1.i.i
  br i1 %i.gv, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h053c0c8d6dda2f36E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h053c0c8d6dda2f36E.exit.i.i": ; preds = %"_ZN4core3ptr60drop_in_place$LT$gix_worktree_state..checkout..Collision$GT$17h4a7faee3d3d9b1b3E.exit.i.i.i.i", %bb.an
  %.val2.i.i = load i64, ptr %i.an, align 16, !alias.scope !28849, !noalias !28834 ; 2 uses
  %i.gw = icmp eq i64 %.val2.i.i, 0
  br i1 %i.gw, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$gix_worktree_state..checkout..Collision$GT$$GT$17hf21e0c7a2ddaaff1E.exit.i", label %bb.ap

bb.ap:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h053c0c8d6dda2f36E.exit.i.i"
  %i.gx = shl nuw i64 %.val2.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.gx, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !28852
  br label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$gix_worktree_state..checkout..Collision$GT$$GT$17hf21e0c7a2ddaaff1E.exit.i"

bb.aq:                                            ; preds = %bb.al
  %.val52.i = load ptr, ptr %i.eh, align 8, !noalias !28834, !nonnull !43, !noundef !43
  %i.gy = mul nuw i64 %.val51.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52.i, i64 noundef %i.gy, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !28839
  br label %bb.jh

"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$gix_worktree_state..checkout..Collision$GT$$GT$17hf21e0c7a2ddaaff1E.exit.i": ; preds = %bb.ap, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h053c0c8d6dda2f36E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !28834
  %.val.i = load i64, ptr %i.ao, align 8, !noalias !28834 ; 2 uses
  %i.gz = icmp eq i64 %.val.i, 0
  br i1 %i.gz, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$gix_worktree_state..checkout..Collision$GT$$GT$17hf21e0c7a2ddaaff1E.exit.i"
  %.val50.i = load ptr, ptr %i.eh, align 8, !noalias !28834, !nonnull !43, !noundef !43
  %i.ha = mul nuw i64 %.val.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val50.i, i64 noundef %i.ha, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !28839
  br label %bb.au

bb.as:                                            ; preds = %.body.i191
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !28839
  unreachable

bb.at:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.744.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.744.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.744.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  invoke fastcc void @"_ZN95_$LT$gix_worktree_state..checkout..chunk..Context$LT$Find$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a86dcef2ad9a1efE"(ptr noalias noundef align 8 captures(address) dereferenceable(2008) %i.ba, ptr noundef nonnull align 8 %i.bk)
          to label %bb.ji unwind label %bb.jf

bb.au:                                            ; preds = %bb.ar, %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$gix_worktree_state..checkout..Collision$GT$$GT$17hf21e0c7a2ddaaff1E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !28834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8.i.sroa.0.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8.i.sroa.0.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.8.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1132.sroa.7, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1132.sroa.8, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1536, i64 16, i1 false)
  %.sroa.694.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.694.0..sroa_idx95, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.20, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1132.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1132.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1536)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  %.sroa.492.sroa.3.sroa.2.0..sroa.492.sroa.3.0..sroa.492.0..sroa_idx93.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.492.sroa.3.sroa.2.0..sroa.492.sroa.3.0..sroa.492.0..sroa_idx93.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.8.sroa.7, i64 24, i1 false)
  %.sroa.492.sroa.3.sroa.3.0..sroa.492.sroa.3.0..sroa.492.0..sroa_idx93.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.492.sroa.3.sroa.3.0..sroa.492.sroa.3.0..sroa.492.0..sroa_idx93.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.8.sroa.8, i64 24, i1 false)
  %.sroa.492.sroa.6.0..sroa.492.0..sroa_idx93.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.492.sroa.6.0..sroa.492.0..sroa_idx93.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.11, i64 16, i1 false)
  store i64 %i.gb, ptr %0, align 8
  %.sroa.492.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.025.0.copyload.i, ptr %.sroa.492.0..sroa_idx93, align 8
  %.sroa.492.sroa.2.0..sroa.492.0..sroa_idx93.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.526.0.copyload.i, ptr %.sroa.492.sroa.2.0..sroa.492.0..sroa_idx93.sroa_idx, align 8
  %.sroa.492.sroa.3.0..sroa.492.0..sroa_idx93.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.sroa.8.i.sroa.0.sroa.0.0.copyload2010, ptr %.sroa.492.sroa.3.0..sroa.492.0..sroa_idx93.sroa_idx, align 8
  %.sroa.492.sroa.4.0..sroa.492.0..sroa_idx93.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.6.sroa.8.i.sroa.6.0.copyload, ptr %.sroa.492.sroa.4.0..sroa.492.0..sroa_idx93.sroa_idx, align 8
  %.sroa.492.sroa.5.0..sroa.492.0..sroa_idx93.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.13.88.copyload, ptr %.sroa.492.sroa.5.0..sroa.492.0..sroa_idx93.sroa_idx, align 8
  %.sroa.492.sroa.7.0..sroa.492.0..sroa_idx93.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.16.88.copyload, ptr %.sroa.492.sroa.7.0..sroa.492.0..sroa_idx93.sroa_idx, align 8
  %.sroa.492.sroa.8.0..sroa.492.0..sroa_idx93.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <2 x i64> %i.gc, ptr %.sroa.492.sroa.8.0..sroa.492.0..sroa_idx93.sroa_idx, align 8
  %.sroa.492.sroa.10.0..sroa.492.0..sroa_idx93.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.19.88.copyload, ptr %.sroa.492.sroa.10.0..sroa.492.0..sroa_idx93.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.8.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.8.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.experimental.noalias.scope.decl(metadata !28854)
  %.val.i195 = load ptr, ptr %i.eb, align 8, !alias.scope !28854, !nonnull !43, !noundef !43 ; 2 uses
  %.val1.i = load i64, ptr %i.ec, align 8, !alias.scope !28854, !noundef !43 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28855)
  %i.hc = icmp eq i64 %.val1.i, 0
  br i1 %i.hc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c6d738fe95ad66cE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.au, %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.he, %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i" ], [ 0, %bb.au ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [80 x i8], ptr %.val.i195, i64 %.sroa.0.07.i.i.i ; 4 uses
  %i.he = add nuw i64 %.sroa.0.07.i.i.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28856)
  %.val.i.i.i.i196 = load i64, ptr %i.hd, align 8, !alias.scope !28857, !noalias !28854 ; 2 uses
  %i.hf = icmp eq i64 %.val.i.i.i.i196, 0
  br i1 %i.hf, label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i", label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.hg, align 8, !alias.scope !28858, !noalias !28854, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i196, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28859
  br label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i"

"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i": ; preds = %bb.av, %.lr.ph.i.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !28860)
  call void @llvm.experimental.noalias.scope.decl(metadata !28861)
  %.val.i.i2.i.i.i.i = load i64, ptr %i.hh, align 8, !alias.scope !28862, !noalias !28854 ; 2 uses
  %i.hi = icmp eq i64 %.val.i.i2.i.i.i.i, 0
  br i1 %i.hi, label %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i"
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %.val1.i.i3.i.i.i.i = load ptr, ptr %i.hj, align 8, !alias.scope !28863, !noalias !28854, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i3.i.i.i.i, i64 noundef %.val.i.i2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28864
  br label %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i"

"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i": ; preds = %bb.aw, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i"
  %i.hk = icmp eq i64 %i.he, %.val1.i
  br i1 %i.hk, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c6d738fe95ad66cE.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c6d738fe95ad66cE.exit.i": ; preds = %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i", %bb.au
  %.val2.i = load i64, ptr %i.be, align 8, !alias.scope !28854 ; 2 uses
  %i.hl = icmp eq i64 %.val2.i, 0
  br i1 %i.hl, label %"_ZN4core3ptr102drop_in_place$LT$alloc..vec..Vec$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$$GT$17h6ce2e6b82f2a83efE.exit", label %bb.ax

bb.ax:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c6d738fe95ad66cE.exit.i"
  %i.hm = mul nuw i64 %.val2.i, 80
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i195, i64 noundef %i.hm, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !28854
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc..vec..Vec$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$$GT$17h6ce2e6b82f2a83efE.exit"

bb.ay:                                            ; preds = %.thread163
  %i.hn = icmp ult i64 %.sroa.851.0.copyload, 21
  br i1 %i.hn, label %bb.ba, label %bb.az, !prof !50

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17he9508cda6abe10e1E(ptr noalias noundef nonnull align 8 %.sroa.650.0.copyload, i64 noundef %.sroa.851.0.copyload, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.thread2656.i unwind label %bb.bb, !noalias !28865

bb.ba:                                            ; preds = %bb.ay
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd8dab1cee9442cfdE(ptr noalias noundef nonnull align 8 %.sroa.650.0.copyload, i64 noundef %.sroa.851.0.copyload)
  br label %.thread2656.i

bb.bb:                                            ; preds = %.noexc21.i.i.i.i.i.invoke.i, %bb.be, %bb.az
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread2656.i:                                    ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !28843
  %.idx6402657.i = mul nuw nsw i64 %.sroa.851.0.copyload, 80
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.650.0.copyload, i64 %.idx6402657.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !28866
  %i.hq = ptrtoint ptr %.sroa.650.0.copyload to i64
  br label %bb.bd

bb.bc:                                            ; preds = %.thread163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !28843
  %.idx640.i = mul nuw nsw i64 %.sroa.851.0.copyload, 80
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.650.0.copyload, i64 %.idx640.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !28866
  call void @llvm.experimental.noalias.scope.decl(metadata !28867)
  call void @llvm.experimental.noalias.scope.decl(metadata !28868)
  call void @llvm.experimental.noalias.scope.decl(metadata !28869)
  %i.hs = ptrtoint ptr %.sroa.650.0.copyload to i64 ; 2 uses
  %i.ht = icmp eq i64 %.sroa.851.0.copyload, 0
  br i1 %i.ht, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h168fc27d1ed07077E.exit.i", label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.thread2656.i
  %i.hu = phi i64 [ %i.hq, %.thread2656.i ], [ %i.hs, %bb.bc ]
  %i.hv = phi ptr [ %i.hp, %.thread2656.i ], [ %i.hr, %bb.bc ]
  %i.hw = mul nuw nsw i64 %.sroa.851.0.copyload, 24 ; 3 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !28870
  %i.hx = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.hw, i64 noundef range(i64 1, 9) 8) #67, !noalias !28870 ; 10 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.be, label %.preheader.i.i.i.i.i.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.hw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1139) #73
          to label %.noexc183.i unwind label %bb.bb, !noalias !28865

.noexc183.i:                                      ; preds = %bb.be
  unreachable

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bd, %bb.bh
  %.val20.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ih, %bb.bh ], [ 0, %bb.bd ] ; 5 uses
  %i.hz = getelementptr inbounds nuw [80 x i8], ptr %.sroa.650.0.copyload, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 8
  %.val21.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ia, align 8, !noalias !28871, !nonnull !43, !noundef !43
  %i.ib = getelementptr i8, ptr %i.hz, i64 16
  %.val22.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ib, align 8, !noalias !28871, !noundef !43 ; 7 uses
  %i.ic = icmp slt i64 %.val22.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ic, label %bb.bg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !55

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.id = icmp eq i64 %.val22.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.id, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !28872
  %i.ie = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val22.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #67, !noalias !28872 ; 2 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %.preheader.i.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.bf ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val22.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i, !noalias !28871

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bf, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ie, %bb.bf ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val21.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val22.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !noalias !28873
  %i.ig = getelementptr inbounds nuw [24 x i8], ptr %i.hx, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  store i64 %.val22.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ig, align 8, !noalias !28874
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !28874
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store i64 %.val22.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !28874
  %i.ih = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ii = icmp eq i64 %i.ih, %.sroa.851.0.copyload
  br i1 %i.ii, label %_ZN4core4iter6traits8iterator8Iterator7collect17hb46f20e79d26f017E.exit.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.bg
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !28875), !noalias !28876
  %i.ik = icmp eq i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ik, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd886e8122b3b8a5bE.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.body.i.i.i.i.i.i.i, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.im, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %.body.i.i.i.i.i.i.i ] ; 2 uses
  %i.il = getelementptr inbounds nuw [24 x i8], ptr %i.hx, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.im = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.il, align 8, !alias.scope !28877, !noalias !28878 ; 2 uses
  %i.in = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.in, label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i", label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.io = getelementptr i8, ptr %i.il, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.io, align 8, !alias.scope !28875, !noalias !28878, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28879
  br label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.bi, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ip = icmp eq i64 %i.im, %.val20.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ip, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd886e8122b3b8a5bE.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd886e8122b3b8a5bE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i", %.body.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hx, i64 noundef %i.hw, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !28878
  br label %.thread.i

_ZN4core4iter6traits8iterator8Iterator7collect17hb46f20e79d26f017E.exit.i.i.i: ; preds = %bb.bh
  store i64 %.sroa.851.0.copyload, ptr %i.u, align 8, !alias.scope !28880, !noalias !28866
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.hx, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !28880, !noalias !28866
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.851.0.copyload, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !28880, !noalias !28866
  %i.iq = icmp eq i64 %.sroa.851.0.copyload, 1
  br i1 %i.iq, label %bb.bm, label %bb.bj, !prof !50

bb.bj:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hb46f20e79d26f017E.exit.i.i.i
  %i.ir = icmp ult i64 %.sroa.851.0.copyload, 21
  br i1 %i.ir, label %bb.bl, label %bb.bk, !prof !50

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h5d3e448f7211ad0fE(ptr noalias noundef nonnull align 8 %i.hx, i64 noundef range(i64 1, 384307168202282326) %.sroa.851.0.copyload, ptr noalias noundef nonnull align 1 %i.a)
          to label %bb.bm unwind label %bb.co, !noalias !28881

bb.bl:                                            ; preds = %bb.bj
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h5ed8a8af8841b9b4E(ptr noalias noundef nonnull align 8 %i.hx, i64 noundef range(i64 1, 384307168202282326) %.sroa.851.0.copyload)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %_ZN4core4iter6traits8iterator8Iterator7collect17hb46f20e79d26f017E.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !28866
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.hx, i64 %.sroa.851.0.copyload
  store ptr %i.hx, ptr %i.t, align 8, !alias.scope !28882, !noalias !28866
  %i.it = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.851.0.copyload, ptr %i.it, align 8, !alias.scope !28882, !noalias !28866
  %i.iu = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.hx, ptr %i.iu, align 8, !alias.scope !28882, !noalias !28866
  %i.iv = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.is, ptr %i.iv, align 8, !alias.scope !28882, !noalias !28866
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !28883
  %i.iw = call noalias noundef align 8 dereferenceable_or_null(280) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 280, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !28883 ; 5 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.bn, label %.loopexit80.i.i.i.i.i.i, !prof !46

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 280) #73
          to label %.noexc.i.i.i.i.i unwind label %bb.cn, !noalias !28883

.noexc.i.i.i.i.i:                                 ; preds = %bb.bn
  unreachable

.loopexit80.i.i.i.i.i.i:                          ; preds = %bb.bm
  store ptr null, ptr %i.iw, align 8, !noalias !28883
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 274
  store i16 0, ptr %i.iy, align 2, !noalias !28883
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  %.sroa.4.24..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.24..sroa_idx.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.t, i64 32, i1 false), !alias.scope !28884, !noalias !28885
  %.sroa.481.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !28886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.481.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.i.i.i.i.i, i64 48, i1 false), !noalias !28887
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ja = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  br label %bb.bo

bb.bo:                                            ; preds = %.loopexit.i.i.i.i.i.i, %.loopexit80.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %.loopexit80.i.i.i.i.i.i ], [ %i.qi, %.loopexit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i = phi i64 [ 0, %.loopexit80.i.i.i.i.i.i ], [ %.sroa.8.2.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 6 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.iw, %.loopexit80.i.i.i.i.i.i ], [ %.sroa.0.2.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 10 uses
  %.promoted.i.i.i.i.i.i.i = phi i64 [ -9223372036854775807, %.loopexit80.i.i.i.i.i.i ], [ %.promoted.i.pre134.i82.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ]
  %.sroa.0.069.i.i.i.i.i.i = phi ptr [ %i.iw, %.loopexit80.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28888)
  %i.jb = load ptr, ptr %i.iz, align 8, !alias.scope !28888, !noalias !28886, !nonnull !43 ; 4 uses
  %.promoted63.i.i.i.i.i.i.i = load ptr, ptr %i.ja, align 8, !alias.scope !28888, !noalias !28886
  %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.481.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !28888, !noalias !28886
  %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !28888, !noalias !28886
  br label %"_ZN4core3ptr100drop_in_place$LT$$LP$gix_filter..driver..Key$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17h6e6f02ec58344642E.exit20.i.i.i.i.i.i.i"

"_ZN4core3ptr100drop_in_place$LT$$LP$gix_filter..driver..Key$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17h6e6f02ec58344642E.exit20.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr100drop_in_place$LT$$LP$gix_filter..driver..Key$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17h6e6f02ec58344642E.exit20.i.i.i.i.i.i.i.backedge", %bb.bo
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload.i.pre.i.i.i.i.i.i, %bb.bo ], [ %.sroa.7.sroa.6.052.i.i.i.i.i.i.i, %"_ZN4core3ptr100drop_in_place$LT$$LP$gix_filter..driver..Key$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17h6e6f02ec58344642E.exit20.i.i.i.i.i.i.i.backedge" ]
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.pre.i.i.i.i.i.i.i, %bb.bo ], [ %.val16.i.i.i.i.i.i.i, %"_ZN4core3ptr100drop_in_place$LT$$LP$gix_filter..driver..Key$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17h6e6f02ec58344642E.exit20.i.i.i.i.i.i.i.backedge" ]
  %i.jc = phi ptr [ %.promoted63.i.i.i.i.i.i.i, %bb.bo ], [ %i.jh, %"_ZN4core3ptr100drop_in_place$LT$$LP$gix_filter..driver..Key$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17h6e6f02ec58344642E.exit20.i.i.i.i.i.i.i.backedge" ] ; 8 uses
  %.sroa.0.0.copyload1.i.i.i62.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i, %bb.bo ], [ %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr100drop_in_place$LT$$LP$gix_filter..driver..Key$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17h6e6f02ec58344642E.exit20.i.i.i.i.i.i.i.backedge" ] ; 2 uses
  store i64 -9223372036854775807, ptr %i.s, align 8, !alias.scope !28888, !noalias !28886
  switch i64 %.sroa.0.0.copyload1.i.i.i62.i.i.i.i.i.i.i, label %bb.bq [
    i64 -9223372036854775807, label %bb.bp
    i64 -9223372036854775808, label %bb.bv
  ]

bb.bp:                                            ; preds = %"_ZN4core3ptr100drop_in_place$LT$$LP$gix_filter..driver..Key$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17h6e6f02ec58344642E.exit20.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !28889)
  call void @llvm.experimental.noalias.scope.decl(metadata !28890)
  %i.jd = icmp eq ptr %i.jc, %i.jb
  br i1 %i.jd, label %bb.bv, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h06a43762d8fdd64cE.exit.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h06a43762d8fdd64cE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.bp
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 24 ; 3 uses
  store ptr %i.je, ptr %i.ja, align 8, !alias.scope !28891, !noalias !28886
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %i.jc, align 8, !noalias !28892 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bv, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf30eb80bdba940b7E.exit.thread46.i.i.i.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf30eb80bdba940b7E.exit.thread46.i.i.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h06a43762d8fdd64cE.exit.i.i.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %.sroa.7.sroa.0.0.copyload34.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i, align 8, !noalias !28893
  %.sroa.7.sroa.6.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %.sroa.7.sroa.6.0.copyload35.i.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.6.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !28893
  br label %bb.bq

bb.bq:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf30eb80bdba940b7E.exit.thread46.i.i.i.i.i.i.i", %"_ZN4core3ptr100drop_in_place$LT$$LP$gix_filter..driver..Key$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17h6e6f02ec58344642E.exit20.i.i.i.i.i.i.i"
  %i.jf = phi ptr [ %i.je, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf30eb80bdba940b7E.exit.thread46.i.i.i.i.i.i.i" ], [ %i.jc, %"_ZN4core3ptr100drop_in_place$LT$$LP$gix_filter..driver..Key$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17h6e6f02ec58344642E.exit20.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.031.053.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf30eb80bdba940b7E.exit.thread46.i.i.i.i.i.i.i" ], [ %.sroa.0.0.copyload1.i.i.i62.i.i.i.i.i.i.i, %"_ZN4core3ptr100drop_in_place$LT$$LP$gix_filter..driver..Key$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17h6e6f02ec58344642E.exit20.i.i.i.i.i.i.i" ] ; 7 uses
  %.sroa.7.sroa.6.052.i.i.i.i.i.i.i = phi i64 [ %.sroa.7.sroa.6.0.copyload35.i.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf30eb80bdba940b7E.exit.thread46.i.i.i.i.i.i.i" ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i, %"_ZN4core3ptr100drop_in_place$LT$$LP$gix_filter..driver..Key$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17h6e6f02ec58344642E.exit20.i.i.i.i.i.i.i" ] ; 5 uses
  %.sroa.7.sroa.0.051.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload34.i.i.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf30eb80bdba940b7E.exit.thread46.i.i.i.i.i.i.i" ], [ %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i, %"_ZN4core3ptr100drop_in_place$LT$$LP$gix_filter..driver..Key$C$alloc..collections..btree..set_val..SetValZST$RP$$GT$17h6e6f02ec58344642E.exit20.i.i.i.i.i.i.i" ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28894)
  call void @llvm.experimental.noalias.scope.decl(metadata !28895)
  call void @llvm.experimental.noalias.scope.decl(metadata !28896)
  call void @llvm.experimental.noalias.scope.decl(metadata !28897)
  call void @llvm.experimental.noalias.scope.decl(metadata !28898)
  %i.jg = icmp eq ptr %i.jf, %i.jb
  br i1 %i.jg, label %bb.bs, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h06a43762d8fdd64cE.exit.i.i.i.i.i.i.i.i.i.i"

end_hunk_0
begin_hunk_1_@_ZN18gix_worktree_state8checkout8function14checkout_inner17h19934dea92044335E:bb.a
  %.sroa.561.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store ptr %.sroa.7.sroa.0.051.i.i.i.i.i.i.i, ptr %.sroa.561.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !28905
  %.sroa.762.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  store i64 %.sroa.7.sroa.6.052.i.i.i.i.i.i.i, ptr %.sroa.762.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !28905
  %i.nn = add nuw nsw i64 %i.nj, 1                ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.049.0.i.i.i.i.i.i, i64 280
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.nn
  store ptr %.sroa.056.0.lcssa.i.i.i.i.i.i, ptr %i.np, align 8, !noalias !28929
  store ptr %.sroa.049.0.i.i.i.i.i.i, ptr %.sroa.056.0.lcssa.i.i.i.i.i.i, align 8, !noalias !28930
  %i.nq = trunc nuw nsw i64 %i.nn to i16
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.056.0.lcssa.i.i.i.i.i.i, i64 272
  store i16 %i.nq, ptr %i.nr, align 8, !noalias !28930
  %i.ns = icmp eq i64 %.sroa.650.0.i.i.i.i.i.i, 0
  br i1 %i.ns, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i28.i.i.i.i.i.i.preheader

.lr.ph.i28.i.i.i.i.i.i.preheader:                 ; preds = %bb.ci
  %xtraiter = and i64 %.sroa.650.0.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i28.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i28.i.i.i.i.i.i.prol

.lr.ph.i28.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i28.i.i.i.i.i.i.preheader, %.lr.ph.i28.i.i.i.i.i.i.prol
  %.sroa.03.06.i29.i.i.i.i.i.i.prol = phi i64 [ %i.oa, %.lr.ph.i28.i.i.i.i.i.i.prol ], [ %.sroa.650.0.i.i.i.i.i.i, %.lr.ph.i28.i.i.i.i.i.i.preheader ]
  %.sroa.04.05.i30.i.i.i.i.i.i.prol = phi ptr [ %i.nz, %.lr.ph.i28.i.i.i.i.i.i.prol ], [ %.sroa.049.0.i.i.i.i.i.i, %.lr.ph.i28.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i28.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i28.i.i.i.i.i.i.preheader ]
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i30.i.i.i.i.i.i.prol, i64 274
  %i.nu = load i16, ptr %i.nt, align 2, !noalias !28931, !noundef !43 ; 2 uses
  %i.nv = zext nneg i16 %i.nu to i64
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i30.i.i.i.i.i.i.prol, i64 280
  %i.nx = icmp ult i16 %i.nu, 12
  call void @llvm.assume(i1 %i.nx)
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.nv
  %i.nz = load ptr, ptr %i.ny, align 8, !noalias !28932, !nonnull !43, !noundef !43 ; 3 uses
  %i.oa = add i64 %.sroa.03.06.i29.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i28.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i28.i.i.i.i.i.i.prol, !llvm.loop !28329

.lr.ph.i28.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i28.i.i.i.i.i.i.prol, %.lr.ph.i28.i.i.i.i.i.i.preheader
  %.lcssa4777.unr = phi ptr [ poison, %.lr.ph.i28.i.i.i.i.i.i.preheader ], [ %i.nz, %.lr.ph.i28.i.i.i.i.i.i.prol ]
  %.sroa.03.06.i29.i.i.i.i.i.i.unr = phi i64 [ %.sroa.650.0.i.i.i.i.i.i, %.lr.ph.i28.i.i.i.i.i.i.preheader ], [ %i.oa, %.lr.ph.i28.i.i.i.i.i.i.prol ]
  %.sroa.04.05.i30.i.i.i.i.i.i.unr = phi ptr [ %.sroa.049.0.i.i.i.i.i.i, %.lr.ph.i28.i.i.i.i.i.i.preheader ], [ %i.nz, %.lr.ph.i28.i.i.i.i.i.i.prol ]
  %i.ob = icmp ult i64 %.sroa.650.0.i.i.i.i.i.i, 8
  br i1 %i.ob, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i28.i.i.i.i.i.i

.lr.ph.i28.i.i.i.i.i.i:                           ; preds = %.lr.ph.i28.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i28.i.i.i.i.i.i
  %.sroa.03.06.i29.i.i.i.i.i.i = phi i64 [ %i.qg, %.lr.ph.i28.i.i.i.i.i.i ], [ %.sroa.03.06.i29.i.i.i.i.i.i.unr, %.lr.ph.i28.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.04.05.i30.i.i.i.i.i.i = phi ptr [ %i.qf, %.lr.ph.i28.i.i.i.i.i.i ], [ %.sroa.04.05.i30.i.i.i.i.i.i.unr, %.lr.ph.i28.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i30.i.i.i.i.i.i, i64 274
  %i.od = load i16, ptr %i.oc, align 2, !noalias !28931, !noundef !43 ; 2 uses
  %i.oe = zext nneg i16 %i.od to i64
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i30.i.i.i.i.i.i, i64 280
  %i.og = icmp ult i16 %i.od, 12
  call void @llvm.assume(i1 %i.og)
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.oe
  %i.oi = load ptr, ptr %i.oh, align 8, !noalias !28932, !nonnull !43, !noundef !43 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 274
  %i.ok = load i16, ptr %i.oj, align 2, !noalias !28931, !noundef !43 ; 2 uses
  %i.ol = zext nneg i16 %i.ok to i64
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 280
  %i.on = icmp ult i16 %i.ok, 12
  call void @llvm.assume(i1 %i.on)
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %i.ol
  %i.op = load ptr, ptr %i.oo, align 8, !noalias !28932, !nonnull !43, !noundef !43 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 274
  %i.or = load i16, ptr %i.oq, align 2, !noalias !28931, !noundef !43 ; 2 uses
  %i.os = zext nneg i16 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 280
  %i.ou = icmp ult i16 %i.or, 12
  call void @llvm.assume(i1 %i.ou)
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.os
  %i.ow = load ptr, ptr %i.ov, align 8, !noalias !28932, !nonnull !43, !noundef !43 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 274
  %i.oy = load i16, ptr %i.ox, align 2, !noalias !28931, !noundef !43 ; 2 uses
  %i.oz = zext nneg i16 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 280
  %i.pb = icmp ult i16 %i.oy, 12
  call void @llvm.assume(i1 %i.pb)
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %i.oz
  %i.pd = load ptr, ptr %i.pc, align 8, !noalias !28932, !nonnull !43, !noundef !43 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 274
  %i.pf = load i16, ptr %i.pe, align 2, !noalias !28931, !noundef !43 ; 2 uses
  %i.pg = zext nneg i16 %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 280
  %i.pi = icmp ult i16 %i.pf, 12
  call void @llvm.assume(i1 %i.pi)
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %i.pg
  %i.pk = load ptr, ptr %i.pj, align 8, !noalias !28932, !nonnull !43, !noundef !43 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 274
  %i.pm = load i16, ptr %i.pl, align 2, !noalias !28931, !noundef !43 ; 2 uses
  %i.pn = zext nneg i16 %i.pm to i64
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 280
  %i.pp = icmp ult i16 %i.pm, 12
  call void @llvm.assume(i1 %i.pp)
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.pn
  %i.pr = load ptr, ptr %i.pq, align 8, !noalias !28932, !nonnull !43, !noundef !43 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 274
  %i.pt = load i16, ptr %i.ps, align 2, !noalias !28931, !noundef !43 ; 2 uses
  %i.pu = zext nneg i16 %i.pt to i64
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 280
  %i.pw = icmp ult i16 %i.pt, 12
  call void @llvm.assume(i1 %i.pw)
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.pu
  %i.py = load ptr, ptr %i.px, align 8, !noalias !28932, !nonnull !43, !noundef !43 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 274
  %i.qa = load i16, ptr %i.pz, align 2, !noalias !28931, !noundef !43 ; 2 uses
  %i.qb = zext nneg i16 %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %i.py, i64 280
  %i.qd = icmp ult i16 %i.qa, 12
  call void @llvm.assume(i1 %i.qd)
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.qb
  %i.qf = load ptr, ptr %i.qe, align 8, !noalias !28932, !nonnull !43, !noundef !43 ; 2 uses
  %i.qg = add i64 %.sroa.03.06.i29.i.i.i.i.i.i, -8 ; 2 uses
  %i.qh = icmp eq i64 %i.qg, 0
  br i1 %i.qh, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i28.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i28.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i28.i.i.i.i.i.i, %bb.cl, %bb.ci
  %.sroa.8.2.i.i.i.i.i = phi i64 [ %.sroa.8.0.i.i.i.i.i, %bb.cl ], [ %.sroa.8.1.i.i.i.i.i, %bb.ci ], [ %.sroa.8.1.i.i.i.i.i, %.lr.ph.i28.i.i.i.i.i.i ], [ %.sroa.8.1.i.i.i.i.i, %.lr.ph.i28.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.0.2.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %bb.cl ], [ %.sroa.0.1.i.i.i.i.i, %bb.ci ], [ %.sroa.0.1.i.i.i.i.i, %.lr.ph.i28.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %.lr.ph.i28.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.0.1.i.i.i.i.i.i = phi ptr [ %.sroa.0.069.i.i.i.i.i.i, %bb.cl ], [ %.sroa.049.0.i.i.i.i.i.i, %bb.ci ], [ %.lcssa4777.unr, %.lr.ph.i28.i.i.i.i.i.i.prol.loopexit ], [ %i.qf, %.lr.ph.i28.i.i.i.i.i.i ]
  %i.qi = add i64 %.sroa.011.0.i.i.i.i.i, 1
  br label %bb.bo

.lr.ph.i.i.i5.i.i.i:                              ; preds = %bb.cg, %_ZN5alloc11collections5btree3mem7replace17h3b49d3cec0c4e7bcE.exit34.i.i.i.i.i.i
  %.sroa.02.0114.i.i.i.i.i.i = phi i64 [ %i.qm, %_ZN5alloc11collections5btree3mem7replace17h3b49d3cec0c4e7bcE.exit34.i.i.i.i.i.i ], [ 0, %bb.cg ]
  %.sroa.056.0113.i.i.i.i.i.i = phi ptr [ %i.qj, %_ZN5alloc11collections5btree3mem7replace17h3b49d3cec0c4e7bcE.exit34.i.i.i.i.i.i ], [ %i.nb, %bb.cg ] ; 3 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !28933
  %i.qj = call noalias noundef align 8 dereferenceable_or_null(376) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 376, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !28933 ; 7 uses
  %i.qk = icmp eq ptr %i.qj, null
  br i1 %i.qk, label %bb.cj, label %_ZN5alloc11collections5btree3mem7replace17h3b49d3cec0c4e7bcE.exit34.i.i.i.i.i.i, !prof !46

bb.cj:                                            ; preds = %.lr.ph.i.i.i5.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 376) #73
          to label %.noexc.i33.i.i.i.i.i.i unwind label %bb.ck, !noalias !28933

.noexc.i33.i.i.i.i.i.i:                           ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.cj
  %i.ql = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

_ZN5alloc11collections5btree3mem7replace17h3b49d3cec0c4e7bcE.exit34.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i5.i.i.i
  %i.qm = add nuw i64 %.sroa.02.0114.i.i.i.i.i.i, 1 ; 2 uses
  store ptr null, ptr %i.qj, align 8, !noalias !28933
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 274
  store i16 0, ptr %i.qn, align 2, !noalias !28933
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qj, i64 280
  store ptr %.sroa.056.0113.i.i.i.i.i.i, ptr %i.qo, align 8, !noalias !28933
  store ptr %i.qj, ptr %.sroa.056.0113.i.i.i.i.i.i, align 8, !noalias !28934
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.056.0113.i.i.i.i.i.i, i64 272
  store i16 0, ptr %i.qp, align 8, !noalias !28935
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.qm, %i.na
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i5.i.i.i

bb.cl:                                            ; preds = %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hde62fde1148a07f4E.exit.i.i.i.i.i.i"
  %i.qq = zext nneg i16 %i.jl to i64
  %i.qr = add nuw nsw i16 %i.jl, 1
  store i16 %i.qr, ptr %i.jk, align 2, !noalias !28936
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0.069.i.i.i.i.i.i, i64 8
  %i.qt = getelementptr inbounds nuw [24 x i8], ptr %i.qs, i64 %i.qq ; 3 uses
  store i64 %.sroa.031.053.i.i.i.i.i.i.i, ptr %i.qt, align 8, !noalias !28937
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  store ptr %.sroa.7.sroa.0.051.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !28937
  %.sroa.748.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  store i64 %.sroa.7.sroa.6.052.i.i.i.i.i.i.i, ptr %.sroa.748.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !28937
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.069.i.i.i.i.i.i) ]
  br label %.loopexit.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.cf
  %i.qu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qv = icmp eq i64 %.sroa.031.053.i.i.i.i.i.i.i, 0
  br i1 %i.qv, label %.body.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.sink.split

bb.cn:                                            ; preds = %bb.bn
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr312drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$gix_filter..driver..Key$GT$$C$alloc..collections..btree..set..BTreeSet$LT$gix_filter..driver..Key$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$gix_filter..driver..Key$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2642d689ad667effE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.t) #75, !noalias !28938
  br label %.lr.ph.i.i.i266.preheader

bb.co:                                            ; preds = %bb.bk
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$gix_filter..driver..Key$GT$$GT$17hfcc63d4c5db916ecE"(ptr noalias noundef align 8 dereferenceable(24) %i.u) #75, !noalias !28881
  br label %.lr.ph.i.i.i266.preheader

.loopexit681.i:                                   ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h2c91d607b8a665cbE.exit.i.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h9f6ab57ed5ff390fE.exit.i.i.i.i.i.i.i", %"_ZN4core3ptr455drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$gix_filter..driver..Key$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$gix_filter..driver..Key$GT$$C$alloc..collections..btree..set..BTreeSet$LT$gix_filter..driver..Key$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$gix_filter..driver..Key$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h361277f56045aa7aE.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !28866
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h168fc27d1ed07077E.exit.i"

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h51956248bd752884E.exit.i.i.i.i", %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h51956248bd752884E.exit.i.i.i378.i", %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit368.i", %.loopexit680.i
  %lpad.loopexit.split-lp3891 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.thread.i

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h168fc27d1ed07077E.exit.i": ; preds = %.loopexit681.i, %bb.bc
  %i.qx = phi i1 [ false, %.loopexit681.i ], [ true, %bb.bc ] ; 2 uses
  %i.qy = phi i64 [ %i.hu, %.loopexit681.i ], [ %i.hs, %bb.bc ] ; 3 uses
  %i.qz = phi ptr [ %i.hv, %.loopexit681.i ], [ %i.hr, %bb.bc ] ; 5 uses
  %.sroa.0.0501512.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.loopexit681.i ], [ null, %bb.bc ] ; 2 uses
  %.sroa.6.0511.i = phi i64 [ %.sroa.8.0.i.i.i.i.i, %.loopexit681.i ], [ undef, %bb.bc ] ; 2 uses
  %.sink23.i.i = phi i64 [ 1, %.loopexit681.i ], [ 0, %bb.bc ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i = phi i64 [ %.sroa.011.0.i.i.i.i.i, %.loopexit681.i ], [ 0, %bb.bc ]
  %6 = ptrtoint ptr %i.qz to i64                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !28866
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !28939
  store i64 0, ptr %i.aj, align 8, !noalias !28939
  %i.ra = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ra, align 8, !noalias !28939
  %i.rb = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 5 uses
  store i64 0, ptr %i.rb, align 8, !noalias !28939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !28939
  store i64 %.sink23.i.i, ptr %i.ai, align 8, !noalias !28939
  %.sroa.5481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr null, ptr %.sroa.5481.0..sroa_idx.i, align 8, !noalias !28939
  %.sroa.6482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.sroa.0.0501512.i, ptr %.sroa.6482.0..sroa_idx.i, align 8, !noalias !28939
  %.sroa.7483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 %.sroa.6.0511.i, ptr %.sroa.7483.0..sroa_idx.i, align 8, !noalias !28939
  %.sroa.8484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i64 %.sink23.i.i, ptr %.sroa.8484.0..sroa_idx.i, align 8, !noalias !28939
  %.sroa.9485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr null, ptr %.sroa.9485.0..sroa_idx.i, align 8, !noalias !28939
  %.sroa.10486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store ptr %.sroa.0.0501512.i, ptr %.sroa.10486.0..sroa_idx.i, align 8, !noalias !28939
  %.sroa.11487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store i64 %.sroa.6.0511.i, ptr %.sroa.11487.0..sroa_idx.i, align 8, !noalias !28939
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !28939
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.8.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.bk, i64 1360 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.4491.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.5492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.5418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 18 uses
  %.sroa.6419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.7.0..sroa_idx.i197 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.re = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.sroa.4494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i252.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 9 uses
  %.sroa.5.0..sroa_idx.i253.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 13 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 9 uses
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 3 uses
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ri = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.rj = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.rk = getelementptr inbounds nuw i8, ptr %i.bd, i64 40 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.rm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.rn = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 6 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 6 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.sroa.4.0..sroa_idx448.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.6450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.7452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.rr = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.rs = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.rt = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %.sroa.6455.0..sroa_idx456.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.sroa.8458.0..sroa_idx459.i = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %.sroa.716.sroa.7.i.sroa.6.0..sroa.4494.0..sroa_idx.i.sroa_idx137 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.716.sroa.7.i.sroa.7.0..sroa.4494.0..sroa_idx.i.sroa_idx140 = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.716.sroa.7.i.sroa.7.0..sroa.5.0..sroa_idx6.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  br label %bb.cp

bb.cp:                                            ; preds = %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit245.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h168fc27d1ed07077E.exit.i"
  %.sroa.02.0.i = phi i64 [ 0, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h168fc27d1ed07077E.exit.i" ], [ %.sroa.02.1.i198, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit245.i" ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 0, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h168fc27d1ed07077E.exit.i" ], [ %.sroa.0.1.i199, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit245.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !28940
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hb410e71146bab0eaE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ai)
          to label %.noexc187.i unwind label %bb.cq, !noalias !28865

.noexc187.i:                                      ; preds = %bb.cp
  %i.ru = load ptr, ptr %i.q, align 8, !noalias !28940, !noundef !43 ; 2 uses
  %.not.i186.i = icmp eq ptr %i.ru, null
  br i1 %.not.i186.i, label %.thread519.i, label %bb.cr

.thread519.i:                                     ; preds = %.noexc187.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !28940
  br label %.loopexit680.i

"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i": ; preds = %bb.ef, %bb.ee, %bb.cq
  %.pn171.i = phi { ptr, i32 } [ %i.rv, %bb.cq ], [ %.pn169.i, %bb.ee ], [ %.pn169.i, %bb.ef ]
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$gix_filter..driver..Key$GT$$GT$17h332f0437e1f5380eE"(ptr noalias noundef align 8 dereferenceable(72) %i.ai) #75
          to label %.loopexit.split-lp.loopexit.split-lp.thread.i unwind label %bb.ec, !noalias !28865

bb.cq:                                            ; preds = %bb.cp
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i"

bb.cr:                                            ; preds = %.noexc187.i
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !noalias !28940
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rx = getelementptr inbounds nuw [24 x i8], ptr %i.rw, i64 %.sroa.22.0.copyload.i.i ; 2 uses
  %.sroa.0488.0.copyload.i = load i64, ptr %i.rx, align 8, !noalias !28941 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !28940
  %.not.i = icmp eq i64 %.sroa.0488.0.copyload.i, -9223372036854775808
  br i1 %.not.i, label %.loopexit680.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.sroa.5489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5489.0..sroa_idx.i, i64 16, i1 false), !noalias !28865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !28939
  store i64 %.sroa.0488.0.copyload.i, ptr %i.ah, align 8, !noalias !28939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false), !noalias !28939
  br label %bb.ed

.loopexit680.i:                                   ; preds = %bb.cr, %.thread519.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !28942
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hb410e71146bab0eaE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ai)
          to label %.noexc188.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !28865

.noexc188.i:                                      ; preds = %.loopexit680.i
  %i.ry = load ptr, ptr %i.p, align 8, !noalias !28942, !noundef !43 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ry, null
  br i1 %.not5.i.i.i.i, label %.loopexit641.i, label %.lr.ph.i.i.i.i208

.lr.ph.i.i.i.i208:                                ; preds = %.noexc188.i
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %bb.ct

bb.ct:                                            ; preds = %.noexc189.i, %.lr.ph.i.i.i.i208
  %i.rz = phi ptr [ %i.ry, %.lr.ph.i.i.i.i208 ], [ %i.se, %.noexc189.i ]
  %.sroa.23.0.copyload.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !noalias !28942
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sb = getelementptr inbounds nuw [24 x i8], ptr %i.sa, i64 %.sroa.23.0.copyload.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.sb, align 8, !alias.scope !28943, !noalias !28944 ; 2 uses
  %i.sc = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.sc, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h51956248bd752884E.exit.i.i.i.i", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.sd = getelementptr i8, ptr %i.sb, i64 8
  %.val5.i.i.i.i.i = load ptr, ptr %i.sd, align 8, !noalias !28944, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28945
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h51956248bd752884E.exit.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h51956248bd752884E.exit.i.i.i.i": ; preds = %bb.cu, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !28942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !28942
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hb410e71146bab0eaE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ai)
          to label %.noexc189.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !28865

.noexc189.i:                                      ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h51956248bd752884E.exit.i.i.i.i"
  %i.se = load ptr, ptr %i.p, align 8, !noalias !28942, !noundef !43 ; 2 uses
  %.not.i.i.i.i209 = icmp eq ptr %i.se, null
  br i1 %.not.i.i.i.i209, label %.loopexit641.i, label %bb.ct

.loopexit641.i:                                   ; preds = %.noexc189.i, %.noexc188.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !28942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !28939
  %i.sf = icmp ult i64 %.sroa.851.0.copyload, 115292150460684698
  call void @llvm.assume(i1 %i.sf)
  %i.sg = mul i64 %.sroa.049.0.copyload, 80       ; 8 uses
  %i.sh = udiv i64 %i.sg, 24                      ; 3 uses
  br i1 %i.qx, label %.loopexit.i.i.i.i.i202.i, label %.lr.ph.i.i.i.i.i.i.i.i199.i

.body.i.i.i.i.i206.i:                             ; preds = %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %.body.i.i.i.i.i.i.i.i.i.i
  %i.si = ptrtoint ptr %i.sw to i64
  %i.sj = sub nuw i64 %6, %i.si
  %i.sk = udiv exact i64 %i.sj, 80
  call void @llvm.experimental.noalias.scope.decl(metadata !28946), !noalias !28947
  %i.sl = icmp eq ptr %i.qz, %i.sw
  br i1 %i.sl, label %"_ZN4core3ptr89drop_in_place$LT$$u5b$gix_worktree_state..checkout..entry..DelayedFilteredStream$u5d$$GT$17h0109d44f43a475fbE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i1.i.i.i.i.i

.lr.ph.i.i.i.i1.i.i.i.i.i:                        ; preds = %.body.i.i.i.i.i206.i, %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sn, %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %.body.i.i.i.i.i206.i ] ; 2 uses
  %i.sm = getelementptr inbounds nuw [80 x i8], ptr %i.sw, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.sn = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28948), !noalias !28947
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.sm, align 8, !alias.scope !28949, !noalias !28950 ; 2 uses
  %i.so = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.so, label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i1.i.i.i.i.i
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.sp, align 8, !alias.scope !28951, !noalias !28950, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28952
  br label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.cv, %.lr.ph.i.i.i.i1.i.i.i.i.i
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sm, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !28953), !noalias !28947
  call void @llvm.experimental.noalias.scope.decl(metadata !28954), !noalias !28947
  %.val.i.i2.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.sq, align 8, !alias.scope !28955, !noalias !28950 ; 2 uses
  %i.sr = icmp eq i64 %.val.i.i2.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.sr, label %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i.i.i.i.i.i.i", label %bb.cw

bb.cw:                                            ; preds = %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sm, i64 32
  %.val1.i.i3.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ss, align 8, !alias.scope !28956, !noalias !28950, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i3.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i2.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28957
  br label %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.cw, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.st = icmp eq i64 %i.sn, %i.sk
  br i1 %i.st, label %"_ZN4core3ptr89drop_in_place$LT$$u5b$gix_worktree_state..checkout..entry..DelayedFilteredStream$u5d$$GT$17h0109d44f43a475fbE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i1.i.i.i.i.i

"_ZN4core3ptr89drop_in_place$LT$$u5b$gix_worktree_state..checkout..entry..DelayedFilteredStream$u5d$$GT$17h0109d44f43a475fbE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i.i.i.i.i.i.i", %.body.i.i.i.i.i206.i
  %i.su = icmp eq i64 %.sroa.049.0.copyload, 0
  br i1 %i.su, label %.loopexit.split-lp.loopexit.split-lp.i, label %bb.cx

bb.cx:                                            ; preds = %"_ZN4core3ptr89drop_in_place$LT$$u5b$gix_worktree_state..checkout..entry..DelayedFilteredStream$u5d$$GT$17h0109d44f43a475fbE.exit.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.650.0.copyload, i64 noundef %i.sg, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !28950
  br label %.loopexit.split-lp.loopexit.split-lp.i

.lr.ph.i.i.i.i.i.i.i.i199.i:                      ; preds = %.loopexit641.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8aaa567dc3638f7cE.exit.i.i.i.i.i.i.i.i.i"
  %i.sv = phi ptr [ %i.sw, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8aaa567dc3638f7cE.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.650.0.copyload, %.loopexit641.i ] ; 8 uses
  %.sroa.4.024.i.i.i.i.i.i.i.i.i = phi ptr [ %.pn19.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8aaa567dc3638f7cE.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.650.0.copyload, %.loopexit641.i ] ; 7 uses
  %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.sv, align 8, !noalias !28958 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !28958 ; 4 uses
  %.sroa.416.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %.sroa.416.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !28958 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 32
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !28958 ; 4 uses
  %.sroa.617.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 40
  %.sroa.617.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.617.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !28958
  %.sroa.819.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 56
  %.sroa.819.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.819.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !28958 ; 2 uses
  %.sroa.920.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 64
  %.sroa.920.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.920.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !28958 ; 7 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 80 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.617.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i199.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.819.0.copyload.i.i.i.i.i.i.i.i.i) ]
  %i.sx = icmp slt i64 %.sroa.920.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.sx, label %bb.da, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !55

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cy
  %i.sy = icmp eq i64 %.sroa.920.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.sy, label %bb.dh, label %bb.cz

bb.cz:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !28959
  %i.sz = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.920.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #67, !noalias !28959 ; 2 uses
  %i.ta = icmp eq ptr %i.sz, null
  br i1 %i.ta, label %bb.da, label %bb.dh

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.cz ], [ 0, %bb.cy ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.920.0.copyload.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.de, !noalias !28960

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.da
  unreachable

bb.db:                                            ; preds = %bb.dh, %.lr.ph.i.i.i.i.i.i.i.i199.i
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.920.0.copyload.i.i.i.i.i.i.i.i.i, %bb.dh ], [ undef, %.lr.ph.i.i.i.i.i.i.i.i199.i ]
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dh ], [ undef, %.lr.ph.i.i.i.i.i.i.i.i199.i ]
  %.sroa.03.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.920.0.copyload.i.i.i.i.i.i.i.i.i, %bb.dh ], [ -9223372036854775808, %.lr.ph.i.i.i.i.i.i.i.i199.i ] ; 2 uses
  %i.tb = icmp eq i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.tb, label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i.i200.i", label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28961
  br label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i.i200.i"

"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i.i200.i": ; preds = %bb.dc, %bb.db
  %i.tc = icmp eq i64 %.sroa.416.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.tc, label %"_ZN18gix_worktree_state8checkout5chunk30process_delayed_filter_results28_$u7b$$u7b$closure$u7d$$u7d$17h800f2b3db08adc8fE.exit.i.i.i.i.i.i.i.i.i.i", label %bb.dd

bb.dd:                                            ; preds = %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i.i200.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.416.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28962
  br label %"_ZN18gix_worktree_state8checkout5chunk30process_delayed_filter_results28_$u7b$$u7b$closure$u7d$$u7d$17h800f2b3db08adc8fE.exit.i.i.i.i.i.i.i.i.i.i"

bb.de:                                            ; preds = %bb.da
  %i.td = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.te = icmp eq i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.te, label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.014.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28963
  br label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.df, %bb.de
  %i.tf = icmp eq i64 %.sroa.416.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.tf, label %.body.i.i.i.i.i.i.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.416.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28964
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.dh:                                            ; preds = %bb.cz, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sz, %bb.cz ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.sroa.819.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.920.0.copyload.i.i.i.i.i.i.i.i.i, i1 false), !noalias !28965
  br label %bb.db

"_ZN18gix_worktree_state8checkout5chunk30process_delayed_filter_results28_$u7b$$u7b$closure$u7d$$u7d$17h800f2b3db08adc8fE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dd, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i.i200.i"
  %.not.i.i.i.i.i.i.i.i.i201.i = icmp eq i64 %.sroa.03.0.i.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i201.i, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8aaa567dc3638f7cE.exit.i.i.i.i.i.i.i.i.i", label %bb.di

bb.di:                                            ; preds = %"_ZN18gix_worktree_state8checkout5chunk30process_delayed_filter_results28_$u7b$$u7b$closure$u7d$$u7d$17h800f2b3db08adc8fE.exit.i.i.i.i.i.i.i.i.i.i"
  store i64 %.sroa.03.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.024.i.i.i.i.i.i.i.i.i, align 8, !noalias !28966
  %.sroa.612.16..sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024.i.i.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.6.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.612.16..sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !28966
  %.sroa.713.16..sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024.i.i.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.7.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.713.16..sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !28966
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.4.024.i.i.i.i.i.i.i.i.i, i64 24
  br label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8aaa567dc3638f7cE.exit.i.i.i.i.i.i.i.i.i"

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.dg, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.th = ptrtoint ptr %.sroa.4.024.i.i.i.i.i.i.i.i.i to i64
  %i.ti = sub nuw i64 %i.th, %i.qy
  %i.tj = udiv exact i64 %i.ti, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !28967), !noalias !28968
  %i.tk = icmp eq ptr %.sroa.4.024.i.i.i.i.i.i.i.i.i, %.sroa.650.0.copyload
  br i1 %i.tk, label %.body.i.i.i.i.i206.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i205.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i205.i:                ; preds = %.body.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tm, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.tl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.650.0.copyload, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.tm = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28969), !noalias !28968
  call void @llvm.experimental.noalias.scope.decl(metadata !28970), !noalias !28968
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.tl, align 8, !alias.scope !28971, !noalias !28966 ; 2 uses
  %i.tn = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.tn, label %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i205.i
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.to, align 8, !alias.scope !28971, !noalias !28966, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28972
  br label %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i205.i
  %i.tp = icmp eq i64 %i.tm, %i.tj
  br i1 %i.tp, label %.body.i.i.i.i.i206.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i205.i

"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8aaa567dc3638f7cE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.di, %"_ZN18gix_worktree_state8checkout5chunk30process_delayed_filter_results28_$u7b$$u7b$closure$u7d$$u7d$17h800f2b3db08adc8fE.exit.i.i.i.i.i.i.i.i.i.i"
  %.pn19.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tg, %bb.di ], [ %.sroa.4.024.i.i.i.i.i.i.i.i.i, %"_ZN18gix_worktree_state8checkout5chunk30process_delayed_filter_results28_$u7b$$u7b$closure$u7d$$u7d$17h800f2b3db08adc8fE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.sw, %i.qz
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i202.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i199.i

.loopexit.i.i.i.i.i202.loopexit.i:                ; preds = %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h8aaa567dc3638f7cE.exit.i.i.i.i.i.i.i.i.i"
  %.pre.i = ptrtoint ptr %.pn19.i.i.i.i.i.i.i.i.i.i to i64
  br label %.loopexit.i.i.i.i.i202.i

.loopexit.i.i.i.i.i202.i:                         ; preds = %.loopexit641.i, %.loopexit.i.i.i.i.i202.loopexit.i
  %.pre-phi.i210 = phi i64 [ %.pre.i, %.loopexit.i.i.i.i.i202.loopexit.i ], [ %i.qy, %.loopexit641.i ]
  %i.tq = phi ptr [ %i.qz, %.loopexit.i.i.i.i.i202.loopexit.i ], [ %.sroa.650.0.copyload, %.loopexit641.i ] ; 3 uses
  %.pre-phi2577.i.pre-phi = ptrtoint ptr %i.tq to i64
  %i.tr = sub nuw i64 %.pre-phi.i210, %i.qy
  %i.ts = udiv exact i64 %i.tr, 24                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !28973
  store ptr %.sroa.650.0.copyload, ptr %i.o, align 8, !noalias !28973
  %i.tt = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ts, ptr %i.tt, align 8, !noalias !28973
  %i.tu = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.049.0.copyload, ptr %i.tu, align 8, !noalias !28973
  %i.tv = sub nuw i64 %6, %.pre-phi2577.i.pre-phi
  %i.tw = udiv exact i64 %i.tv, 80
  call void @llvm.experimental.noalias.scope.decl(metadata !28974)
  %i.tx = icmp eq ptr %i.qz, %i.tq
  br i1 %i.tx, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h4970c218f249aa4aE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.loopexit.i.i.i.i.i202.i, %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i.i = phi i64 [ %i.tz, %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i.i.i.i.i.i" ], [ 0, %.loopexit.i.i.i.i.i202.i ] ; 2 uses
  %i.ty = getelementptr inbounds nuw [80 x i8], ptr %i.tq, i64 %.sroa.0.07.i.i.i.i.i.i.i.i ; 4 uses
  %i.tz = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28975)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ty, align 8, !alias.scope !28976, !noalias !28977 ; 2 uses
  %i.ua = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ua, label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i203.i", label %bb.dk

bb.dk:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ub, align 8, !alias.scope !28978, !noalias !28977, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28979
  br label %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i203.i"

"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i203.i": ; preds = %bb.dk, %.lr.ph.i.i.i.i.i.i.i.i
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ty, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !28980)
  call void @llvm.experimental.noalias.scope.decl(metadata !28981)
  %.val.i.i2.i.i.i.i.i.i.i.i.i = load i64, ptr %i.uc, align 8, !alias.scope !28982, !noalias !28977 ; 2 uses
  %i.ud = icmp eq i64 %.val.i.i2.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ud, label %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i.i.i.i.i.i", label %bb.dl

bb.dl:                                            ; preds = %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i203.i"
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ty, i64 32
  %.val1.i.i3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ue, align 8, !alias.scope !28983, !noalias !28977, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i3.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i2.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28984
  br label %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.dl, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.i.i.i.i.i.i.i203.i"
  %i.uf = icmp eq i64 %i.tz, %i.tw
  br i1 %i.uf, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h4970c218f249aa4aE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN4core3ptr89drop_in_place$LT$$u5b$gix_worktree_state..checkout..entry..DelayedFilteredStream$u5d$$GT$17h0109d44f43a475fbE.exit.i.i.i.i.thread.i.i.i.i": ; preds = %bb.dr
  %i.ug = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr163drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$C$bstr..bstring..BString$GT$$GT$17hab239c43a2d0bc3dE"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #75, !noalias !28985
  br label %.loopexit.split-lp.loopexit.split-lp.i

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h4970c218f249aa4aE.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr79drop_in_place$LT$gix_worktree_state..checkout..entry..DelayedFilteredStream$GT$17h8a71eacc23021224E.exit.i.i.i.i.i.i.i.i", %.loopexit.i.i.i.i.i202.i
  %.not.i.i.i.i.i204.i = icmp eq i64 %.sroa.049.0.copyload, 0
  br i1 %.not.i.i.i.i.i204.i, label %bb.dt, label %bb.dm

bb.dm:                                            ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h4970c218f249aa4aE.exit.i.i.i.i.i.i"
  %i.uh = mul nuw i64 %i.sh, 24                   ; 4 uses
  %.not49.i.i.i.i.i.i = icmp eq i64 %i.sg, %i.uh
  br i1 %.not49.i.i.i.i.i.i, label %bb.dt, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ui = icmp ult i64 %i.sg, 24
  br i1 %i.ui, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.uj = icmp eq i64 %i.sg, 0
  br i1 %i.uj, label %bb.dt, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.650.0.copyload, i64 noundef %i.sg, i64 noundef 8) #67, !noalias !28985
  br label %bb.dt

bb.dq:                                            ; preds = %bb.dn
  %i.uk = icmp ule i64 %i.uh, %i.sg
  call void @llvm.assume(i1 %i.uk)
  %i.ul = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.650.0.copyload, i64 noundef %i.sg, i64 noundef 8, i64 noundef %i.uh) #67, !noalias !28985 ; 2 uses
  %i.um = icmp eq ptr %i.ul, null
  br i1 %i.um, label %bb.dr, label %bb.dt, !prof !51

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.uh) #73
          to label %bb.ds unwind label %"_ZN4core3ptr89drop_in_place$LT$$u5b$gix_worktree_state..checkout..entry..DelayedFilteredStream$u5d$$GT$17h0109d44f43a475fbE.exit.i.i.i.i.thread.i.i.i.i", !noalias !28985

bb.ds:                                            ; preds = %bb.dr
  unreachable

bb.dt:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dm, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h4970c218f249aa4aE.exit.i.i.i.i.i.i"
  %.sroa.01.0.i.i.i.i.i.i = phi ptr [ %.sroa.650.0.copyload, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h4970c218f249aa4aE.exit.i.i.i.i.i.i" ], [ %.sroa.650.0.copyload, %bb.dm ], [ %i.ul, %bb.dq ], [ inttoptr (i64 8 to ptr), %bb.dp ], [ inttoptr (i64 8 to ptr), %bb.do ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !28973
  br i1 %i.fk, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.un = load i64, ptr %i.rb, align 8, !noalias !28939, !noundef !43 ; 3 uses
  %i.uo = icmp ult i64 %i.un, 384307168202282326
  call void @llvm.assume(i1 %i.uo)
  %i.up = icmp eq i64 %i.un, 0
  br i1 %i.up, label %bb.dv, label %.thread2658.i

bb.dv:                                            ; preds = %bb.du, %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !28939
  call void @llvm.experimental.noalias.scope.decl(metadata !28986)
  %.val.i.i211 = load ptr, ptr %.sroa.7110.0..sroa_idx, align 16, !alias.scope !28987, !nonnull !43, !noundef !43 ; 2 uses
  %.val1.i.i212 = load i64, ptr %.sroa.8111.0..sroa_idx, align 8, !alias.scope !28987, !noundef !43 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28988)
  %i.uq = icmp eq i64 %.val1.i.i212, 0
  br i1 %i.uq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ced18211a812627E.exit.i.i", label %.lr.ph.i.i.i209.i

.lr.ph.i.i.i209.i:                                ; preds = %bb.dv, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.us, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i.i" ], [ 0, %bb.dv ] ; 2 uses
  %i.ur = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i211, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.us = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28989)
  call void @llvm.experimental.noalias.scope.decl(metadata !28990)
  %.val.i.i.i.i.i.i = load i64, ptr %i.ur, align 8, !alias.scope !28991, !noalias !28992 ; 2 uses
  %i.ut = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ut, label %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i.i", label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i.i.i209.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.uu, align 8, !alias.scope !28991, !noalias !28992, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28993
  br label %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i.i"

"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i.i": ; preds = %bb.dw, %.lr.ph.i.i.i209.i
  %i.uv = icmp eq i64 %i.us, %.val1.i.i212
  br i1 %i.uv, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ced18211a812627E.exit.i.i", label %.lr.ph.i.i.i209.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ced18211a812627E.exit.i.i": ; preds = %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i.i", %bb.dv
  %.val2.i.i213 = load i64, ptr %.sroa.6109.0..sroa_idx, align 8, !alias.scope !28987 ; 2 uses
  %i.uw = icmp eq i64 %.val2.i.i213, 0
  br i1 %i.uw, label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$bstr..bstring..BString$GT$$GT$17he4ad5879b3e3106bE.exit.i", label %bb.dx

bb.dx:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ced18211a812627E.exit.i.i"
  %i.ux = mul nuw i64 %.val2.i.i213, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i211, i64 noundef %i.ux, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !28992
  br label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$bstr..bstring..BString$GT$$GT$17he4ad5879b3e3106bE.exit.i"

.thread2658.i:                                    ; preds = %bb.du
  %i.uy = ptrtoint ptr %.sroa.01.0.i.i.i.i.i.i to i64
  %.val.i2102661.i = load ptr, ptr %i.ra, align 8, !alias.scope !28994, !noalias !28939, !nonnull !43, !noundef !43
  br label %.lr.ph.i.i.i212.preheader.i

.loopexit645.loopexit.i:                          ; preds = %.noexc381.i, %.noexc380.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !28939
  %.val1.i211.pre.i = load i64, ptr %i.rb, align 8, !alias.scope !28996, !noalias !28939 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28996)
  %.val.i210.i = load ptr, ptr %i.ra, align 8, !alias.scope !28996, !noalias !28939, !nonnull !43, !noundef !43 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28997)
  %i.uz = icmp eq i64 %.val1.i211.pre.i, 0
  br i1 %i.uz, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ced18211a812627E.exit.i217.i", label %.lr.ph.i.i.i212.preheader.i

.lr.ph.i.i.i212.preheader.i:                      ; preds = %.loopexit645.loopexit.i, %.thread2658.i
  %.sroa.3347.0 = phi i64 [ undef, %.thread2658.i ], [ %.sroa.3347.7, %.loopexit645.loopexit.i ]
  %.sroa.28.0 = phi i64 [ %i.ts, %.thread2658.i ], [ %.sroa.28.7, %.loopexit645.loopexit.i ]
  %.sroa.24.0 = phi i64 [ %i.uy, %.thread2658.i ], [ %.sroa.24.7, %.loopexit645.loopexit.i ]
  %.sroa.14.0144 = phi i64 [ %i.sh, %.thread2658.i ], [ %.sroa.14.8, %.loopexit645.loopexit.i ]
  %.sroa.041.0 = phi i64 [ -9223372036854775790, %.thread2658.i ], [ %.sroa.041.8, %.loopexit645.loopexit.i ]
  %.val.i2102665.i = phi ptr [ %.val.i2102661.i, %.thread2658.i ], [ %.val.i210.i, %.loopexit645.loopexit.i ] ; 2 uses
  %.sroa.074.42663.i = phi i1 [ false, %.thread2658.i ], [ true, %.loopexit645.loopexit.i ]
  %.val1.i2112662.i = phi i64 [ %i.un, %.thread2658.i ], [ %.val1.i211.pre.i, %.loopexit645.loopexit.i ]
  %i.va = phi <2 x i64> [ undef, %.thread2658.i ], [ %i.agh, %.loopexit645.loopexit.i ]
  br label %.lr.ph.i.i.i212.i

.lr.ph.i.i.i212.i:                                ; preds = %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i216.i", %.lr.ph.i.i.i212.preheader.i
  %.sroa.0.010.i.i.i213.i = phi i64 [ %i.vc, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i216.i" ], [ 0, %.lr.ph.i.i.i212.preheader.i ] ; 2 uses
  %i.vb = getelementptr inbounds nuw [24 x i8], ptr %.val.i2102665.i, i64 %.sroa.0.010.i.i.i213.i ; 2 uses
  %i.vc = add nuw i64 %.sroa.0.010.i.i.i213.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28998)
  call void @llvm.experimental.noalias.scope.decl(metadata !28999)
  %.val.i.i.i.i.i214.i = load i64, ptr %i.vb, align 8, !alias.scope !29000, !noalias !29001 ; 2 uses
  %i.vd = icmp eq i64 %.val.i.i.i.i.i214.i, 0
  br i1 %i.vd, label %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i216.i", label %bb.dy

bb.dy:                                            ; preds = %.lr.ph.i.i.i212.i
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %.val1.i.i.i.i.i215.i = load ptr, ptr %i.ve, align 8, !alias.scope !29000, !noalias !29001, !nonnull !43, !noundef !43
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i215.i, i64 noundef %.val.i.i.i.i.i214.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !29002
  br label %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i216.i"

"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i216.i": ; preds = %bb.dy, %.lr.ph.i.i.i212.i
  %i.vf = icmp eq i64 %i.vc, %.val1.i2112662.i
  br i1 %i.vf, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ced18211a812627E.exit.i217.i", label %.lr.ph.i.i.i212.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ced18211a812627E.exit.i217.i": ; preds = %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i216.i", %.loopexit645.loopexit.i
  %.sroa.3347.1 = phi i64 [ %.sroa.3347.7, %.loopexit645.loopexit.i ], [ %.sroa.3347.0, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i216.i" ]
  %.sroa.28.1 = phi i64 [ %.sroa.28.7, %.loopexit645.loopexit.i ], [ %.sroa.28.0, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i216.i" ]
  %.sroa.24.1 = phi i64 [ %.sroa.24.7, %.loopexit645.loopexit.i ], [ %.sroa.24.0, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i216.i" ]
  %.sroa.14.1 = phi i64 [ %.sroa.14.8, %.loopexit645.loopexit.i ], [ %.sroa.14.0144, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i216.i" ]
  %.sroa.041.1 = phi i64 [ %.sroa.041.8, %.loopexit645.loopexit.i ], [ %.sroa.041.0, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i216.i" ] ; 2 uses
  %.val.i2102666.i = phi ptr [ %.val.i210.i, %.loopexit645.loopexit.i ], [ %.val.i2102665.i, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i216.i" ]
  %.sroa.074.42664.i = phi i1 [ true, %.loopexit645.loopexit.i ], [ %.sroa.074.42663.i, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i216.i" ]
  %i.vg = phi <2 x i64> [ %i.agh, %.loopexit645.loopexit.i ], [ %i.va, %"_ZN4core3ptr43drop_in_place$LT$bstr..bstring..BString$GT$17h58cadbacf66edebfE.exit.i.i.i216.i" ]
  %.val2.i218.i = load i64, ptr %i.aj, align 8, !alias.scope !28996, !noalias !28939 ; 2 uses
  %i.vh = icmp eq i64 %.val2.i218.i, 0
  br i1 %i.vh, label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$bstr..bstring..BString$GT$$GT$17he4ad5879b3e3106bE.exit219.i", label %bb.dz

bb.dz:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ced18211a812627E.exit.i217.i"
  %i.vi = mul nuw i64 %.val2.i218.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2102666.i, i64 noundef %i.vi, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !29001
  br label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$bstr..bstring..BString$GT$$GT$17he4ad5879b3e3106bE.exit219.i"

"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$bstr..bstring..BString$GT$$GT$17he4ad5879b3e3106bE.exit.i": ; preds = %bb.dx, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ced18211a812627E.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !29003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.vj = getelementptr inbounds nuw i8, ptr %i.bd, i64 96 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3std2io19default_read_to_end16small_probe_read17h031cf249603de512E:bb.a

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !44358)
  call void @llvm.experimental.noalias.scope.decl(metadata !44359)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !44360, !noundef !43 ; 3 uses
  %i.o = load i64, ptr %1, align 8, !range !45, !alias.scope !44360, !noundef !43
  %i.p = sub i64 %i.o, %i.n
  %i.q = icmp ult i64 %i.p, %i.k
  br i1 %i.q, label %.noexc, label %bb.d, !prof !46

.noexc:                                           ; preds = %bb.c
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.n, i64 noundef %i.k, i64 noundef 1, i64 noundef 1)
  %.pre.i.i = load i64, ptr %i.m, align 8, !alias.scope !44361
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !44361, !nonnull !43, !noundef !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.b, i64 %i.k, i1 false), !noalias !44361
  %i.w = add nuw i64 %i.r, %i.k
  store i64 %i.w, ptr %i.m, align 8, !alias.scope !44361
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.split, %.split24, %.split25, %bb.d
  %.sroa.3.0 = phi ptr [ %.in, %bb.d ], [ %i.h, %.split25 ], [ %i.h, %.split24 ], [ %i.h, %.split ], [ %i.h, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %.split25 ], [ 1, %.split24 ], [ 1, %.split ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.y = insertvalue { i64, ptr } %i.x, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.y

.split:                                           ; preds = %.lr.ph
  %.mask26 = and i64 %i.i, -4294967296
  %i.z = icmp eq i64 %.mask26, 17179869184
  br i1 %i.z, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit", label %.loopexit

.split25:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !109, !noundef !43
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit", label %.loopexit

.split24:                                         ; preds = %.lr.ph
  %i.ad = getelementptr i8, ptr %i.h, i64 15
  %i.ae = load i8, ptr %i.ad, align 8, !range !109, !noundef !43
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit", label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.ag = icmp ult ptr %i.h, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.ag)
  %.mask = and i64 %i.i, -4294967296
  %i.ah = icmp eq i64 %.mask, 150323855360
  br i1 %i.ah, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit", label %.loopexit

"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit": ; preds = %.split25, %.split24, %.split, %bb.e
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ai = call fastcc { i64, ptr } @"_ZN72_$LT$gix_features..interrupt..Read$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h3c192ae1be04d33cE"(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 32) ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.ai, 1      ; 3 uses
  store i64 %i.aj, ptr %i.a, align 8
  store ptr %i.ak, ptr %i.f, align 8
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17h11c8bab953ce06cfE(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !44368 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = call { i64, ptr } @"_ZN76_$LT$gix_pack..bundle..write..types..LockWriter$u20$as$u20$std..io..Read$GT$4read17h620c94ca8c843cc2E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 32) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 3 uses
  store i64 %i.d, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.e, ptr %i.f, align 8
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit"
  %i.h = phi ptr [ %i.ak, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit" ], [ %i.e, %bb.a ] ; 9 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.e
    i64 0, label %.split25
    i64 1, label %.split24
  ], !prof !108

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit", %bb.a
  %.in = phi ptr [ %i.e, %bb.a ], [ %i.ak, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit" ] ; 3 uses
  %i.k = ptrtoint ptr %.in to i64                 ; 5 uses
  %i.l = icmp ult ptr %.in, inttoptr (i64 33 to ptr)
  br i1 %i.l, label %bb.c, label %bb.b, !prof !85

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.k, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1062) #73
  unreachable

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !44369)
  call void @llvm.experimental.noalias.scope.decl(metadata !44370)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !44371, !noundef !43 ; 3 uses
  %i.o = load i64, ptr %1, align 8, !range !45, !alias.scope !44371, !noundef !43
  %i.p = sub i64 %i.o, %i.n
  %i.q = icmp ult i64 %i.p, %i.k
  br i1 %i.q, label %.noexc, label %bb.d, !prof !46

.noexc:                                           ; preds = %bb.c
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.n, i64 noundef %i.k, i64 noundef 1, i64 noundef 1)
  %.pre.i.i = load i64, ptr %i.m, align 8, !alias.scope !44372
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !44372, !nonnull !43, !noundef !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.b, i64 %i.k, i1 false), !noalias !44372
  %i.w = add nuw i64 %i.r, %i.k
  store i64 %i.w, ptr %i.m, align 8, !alias.scope !44372
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.split, %.split24, %.split25, %bb.d
  %.sroa.3.0 = phi ptr [ %.in, %bb.d ], [ %i.h, %.split25 ], [ %i.h, %.split24 ], [ %i.h, %.split ], [ %i.h, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %.split25 ], [ 1, %.split24 ], [ 1, %.split ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.y = insertvalue { i64, ptr } %i.x, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.y

.split:                                           ; preds = %.lr.ph
  %.mask26 = and i64 %i.i, -4294967296
  %i.z = icmp eq i64 %.mask26, 17179869184
  br i1 %i.z, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit", label %.loopexit

.split25:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !109, !noundef !43
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit", label %.loopexit

.split24:                                         ; preds = %.lr.ph
  %i.ad = getelementptr i8, ptr %i.h, i64 15
  %i.ae = load i8, ptr %i.ad, align 8, !range !109, !noundef !43
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit", label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.ag = icmp ult ptr %i.h, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.ag)
  %.mask = and i64 %i.i, -4294967296
  %i.ah = icmp eq i64 %.mask, 150323855360
  br i1 %i.ah, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit", label %.loopexit

"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit": ; preds = %.split25, %.split24, %.split, %bb.e
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ai = call { i64, ptr } @"_ZN76_$LT$gix_pack..bundle..write..types..LockWriter$u20$as$u20$std..io..Read$GT$4read17h620c94ca8c843cc2E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 32) ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.ai, 1      ; 3 uses
  store i64 %i.aj, ptr %i.a, align 8
  store ptr %i.ak, ptr %i.f, align 8
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17h638217c32018f26fE(ptr nonnull captures(address, read_provenance) %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !44381 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = call { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %.0.val, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 32), !noalias !44382 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit", %bb.a
  %.lcssa27 = phi ptr [ %i.e, %bb.a ], [ %i.aj, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit" ] ; 5 uses
  %.lcssa = ptrtoint ptr %.lcssa27 to i64         ; 7 uses
  %.not.i = icmp ugt ptr %.lcssa27, inttoptr (i64 32 to ptr)
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !54

bb.b:                                             ; preds = %._crit_edge
  %i.h = icmp eq ptr %.lcssa27, null
  br i1 %i.h, label %bb.g, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.lcssa, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2774) #73, !noalias !44382
  unreachable

bb.d:                                             ; preds = %.lr.ph, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit"
  %1 = phi ptr [ %i.e, %.lr.ph ], [ %i.aj, %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit" ] ; 10 uses
  %2 = ptrtoint ptr %1 to i64                     ; 3 uses
  store i64 1, ptr %i.a, align 8
  store ptr %1, ptr %i.g, align 8
  %i.i = and i64 %2, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.i
    i64 0, label %.split23
    i64 1, label %.split22
  ], !prof !108

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @_ZN8gix_hash6hasher5_impl6Hasher6update17h0859fed53e712526E(ptr noalias noundef nonnull align 8 dereferenceable(824) %.8.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef range(i64 1, 0) %.lcssa), !noalias !44382
  %i.j = icmp ult ptr %.lcssa27, inttoptr (i64 33 to ptr)
  br i1 %i.j, label %bb.g, label %bb.f, !prof !44383

bb.f:                                             ; preds = %bb.e
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.lcssa, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1062) #73
  unreachable

bb.g:                                             ; preds = %bb.b, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !44384)
  call void @llvm.experimental.noalias.scope.decl(metadata !44385)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !44386, !noundef !43 ; 3 uses
  %i.m = load i64, ptr %0, align 8, !range !45, !alias.scope !44386, !noundef !43
  %i.n = sub i64 %i.m, %i.l
  %i.o = icmp ult i64 %i.n, %.lcssa
  br i1 %i.o, label %.noexc, label %bb.h, !prof !46

.noexc:                                           ; preds = %bb.g
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he4e09bb53e25f47cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %.lcssa, i64 noundef 1, i64 noundef 1)
  %.pre.i.i = load i64, ptr %i.k, align 8, !alias.scope !44387
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.g
  %i.p = phi i64 [ %i.l, %bb.g ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !44387, !nonnull !43, !noundef !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.b, i64 %.lcssa, i1 false), !noalias !44387
  %i.u = add i64 %i.p, %.lcssa
  store i64 %i.u, ptr %i.k, align 8, !alias.scope !44387
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.split, %.split22, %.split23, %bb.h
  %i.v = phi ptr [ %.lcssa27, %bb.h ], [ %1, %.split23 ], [ %1, %.split22 ], [ %1, %.split ], [ %1, %bb.i ]
  %.sroa.0.0 = phi i64 [ 0, %bb.h ], [ 1, %.split23 ], [ 1, %.split22 ], [ 1, %.split ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.x = insertvalue { i64, ptr } %i.w, ptr %i.v, 1
  ret { i64, ptr } %i.x

.split:                                           ; preds = %bb.d
  %.mask24 = and i64 %2, -4294967296
  %i.y = icmp eq i64 %.mask24, 17179869184
  br i1 %i.y, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit", label %.loopexit

.split23:                                         ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !109, !noundef !43
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit", label %.loopexit

.split22:                                         ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %1, i64 15
  %i.ad = load i8, ptr %i.ac, align 8, !range !109, !noundef !43
  %i.ae = icmp eq i8 %i.ad, 35
  br i1 %i.ae, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit", label %.loopexit

bb.i:                                             ; preds = %bb.d
  %i.af = icmp ult ptr %1, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.af)
  %.mask = and i64 %2, -4294967296
  %i.ag = icmp eq i64 %.mask, 150323855360
  br i1 %i.ag, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit", label %.loopexit

"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hbc63d75afedbffaeE.exit": ; preds = %.split23, %.split22, %.split, %bb.i
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = call { i64, ptr } @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h8c3d9ff0ffe9076eE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %.0.val, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 32), !noalias !44382 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 2 uses
  %i.ak = trunc nuw i64 %i.ai to i1
  br i1 %i.ak, label %bb.d, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN3std2io19default_read_to_end17h005335ad0d890238E(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !44404 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !43 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !45, !noundef !43 ; 5 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread", label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit", !prof !46

"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit": ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.m, %i.i
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.m
  %.sroa.010.2 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread"

bb.c:                                             ; preds = %bb.a, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit"
  %.sroa.010.1 = phi i64 [ %.sroa.010.2, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit" ], [ 8192, %bb.a ] ; 2 uses
  %.sroa.019.1 = xor i1 %i.g, true                ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread"

"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread": ; preds = %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread_crit_edge", %bb.b, %bb.c, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit"
  %.pre140 = phi i64 [ %.pre140.pre, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread_crit_edge" ], [ %i.f, %bb.c ], [ %i.f, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit" ], [ %i.f, %bb.b ]
  %.pre = phi i64 [ %.pre.pre, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread_crit_edge" ], [ %i.d, %bb.c ], [ %i.d, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit" ], [ %i.d, %bb.b ]
  %.sroa.019.3 = phi i1 [ %.sroa.019.1, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread_crit_edge" ], [ %.sroa.019.1, %bb.c ], [ false, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit" ], [ false, %bb.b ]
  %.sroa.010.3 = phi i64 [ %.sroa.010.1, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread_crit_edge" ], [ %.sroa.010.1, %bb.c ], [ %.sroa.010.2, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit" ], [ 8192, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.outer

.outer:                                           ; preds = %bb.y, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread"
  %.ph = phi i64 [ %i.ax, %bb.y ], [ %.pre140, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread" ]
  %.ph192 = phi i64 [ %i.cp, %bb.y ], [ %.pre, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread" ]
  %.sroa.018.4.ph = phi i64 [ %i.co, %bb.y ], [ 0, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread" ]
  %.sroa.010.4.ph = phi i64 [ %.sroa.055.0, %bb.y ], [ %.sroa.010.3, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread" ] ; 4 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17h11c8bab953ce06cfE(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0
  %i.v = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  %i.w = trunc nuw i64 %i.u to i1
  br i1 %i.w, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %bb.z, label %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread_crit_edge"

"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread_crit_edge": ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8
  %.pre140.pre = load i64, ptr %1, align 8, !range !45
  br label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h3d370e0b84b17310E.exit.thread"

bb.f:                                             ; preds = %.backedge, %.outer
  %i.y = phi i64 [ %.ph, %.outer ], [ %i.ax, %.backedge ] ; 3 uses
  %i.z = phi i64 [ %.ph192, %.outer ], [ %i.cp, %.backedge ] ; 3 uses
  %.sroa.018.4 = phi i64 [ %.sroa.018.4.ph, %.outer ], [ %i.co, %.backedge ] ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.z, %i.y
  %i.ac = icmp eq i64 %i.y, %i.f
  %or.cond80 = and i1 %i.ab, %i.ac
  br i1 %or.cond80, label %bb.h, label %bb.g

thread-pre-split:                                 ; preds = %bb.i
  %.pr = load i64, ptr %1, align 8
  %.pre141 = load i64, ptr %i.c, align 8
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %bb.f
  %i.ad = phi i64 [ %.pr, %thread-pre-split ], [ %i.y, %bb.f ] ; 7 uses
  %i.ae = phi i64 [ %.pre141, %thread-pre-split ], [ %i.z, %bb.f ] ; 8 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ae, %i.ad
  br i1 %i.ag, label %bb.k, label %._crit_edge142

._crit_edge142:                                   ; preds = %bb.g
  %.pre143 = load ptr, ptr %i.q, align 8
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.ah = tail call fastcc { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17h11c8bab953ce06cfE(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 2 uses
  %i.ak = trunc nuw i64 %i.ai to i1
  br i1 %i.ak, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread.loopexit.split.loop.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %bb.i
  %i.am = load i64, ptr %i.c, align 8, !noundef !43 ; 2 uses
  %i.an = icmp sgt i64 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = sub nsw i64 %i.am, %i.d
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread"

bb.k:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44406)
  %i.ap = add nuw i64 %i.ad, 32
  %i.aq = shl nuw i64 %i.ad, 1
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ap, i64 %i.aq) ; 5 uses
  %i.ar = icmp slt i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.ar, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !55

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44407
  %i.as = icmp eq i64 %i.ad, 0
  br i1 %i.as, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i.i", label %bb.l

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.val29.i.i = load ptr, ptr %i.q, align 8, !alias.scope !44407, !nonnull !43, !noundef !43
  store ptr %.val29.i.i, ptr %i.a, align 8, !alias.scope !44408, !noalias !44407
  store i64 %i.ad, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !44408, !noalias !44407
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i.i": ; preds = %bb.l, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sink.i.i.i = phi i64 [ 1, %bb.l ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ]
  store i64 %.sink.i.i.i, ptr %i.r, align 8, !alias.scope !44408, !noalias !44407
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h9c21a51d395c93ccE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 1, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !44407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44407
  %i.at = load i64, ptr %i.b, align 8, !range !60, !noalias !44407, !noundef !43
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.m, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit"

bb.m:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44407
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit.thread"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17he0408db508cc8d53E.exit.i.i"
  %i.av = load ptr, ptr %i.s, align 8, !noalias !44407, !nonnull !43, !noundef !43 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44407
  store ptr %i.av, ptr %i.q, align 8, !alias.scope !44407
  store i64 %.sroa.0.0.i.i.i, ptr %1, align 8, !alias.scope !44407
  %.pre.i = sub nuw nsw i64 %.sroa.0.0.i.i.i, %i.ad
  %i.aw = icmp samesign ugt i64 %.pre.i, 31
  tail call void @llvm.assume(i1 %i.aw)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge142, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit"
  %i.ax = phi i64 [ %i.ad, %._crit_edge142 ], [ %.sroa.0.0.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit" ] ; 3 uses
  %i.ay = phi ptr [ %.pre143, %._crit_edge142 ], [ %i.av, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h13b1a5cf9464d22fE.exit" ]
  %i.az = sub nsw i64 %i.ax, %i.ae                ; 2 uses
  %.sroa.0.0.i81 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.010.4.ph, i64 %i.az) ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ae ; 3 uses
  %i.bb = sub nuw i64 %.sroa.0.0.i81, %.sroa.018.4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.018.4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bc, i8 0, i64 %i.bb, i1 false), !noalias !44409
  %i.bd = tail call { i64, ptr } @"_ZN76_$LT$gix_pack..bundle..write..types..LockWriter$u20$as$u20$std..io..Read$GT$4read17h620c94ca8c843cc2E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull align 1 %i.ba, i64 noundef %.sroa.0.0.i81), !noalias !44410 ; 2 uses
  %i.be = extractvalue { i64, ptr } %i.bd, 0
  %i.bf = extractvalue { i64, ptr } %i.bd, 1      ; 2 uses
  %i.bg = trunc nuw i64 %i.be to i1
  br i1 %i.bg, label %_ZN3std2io4Read8read_buf17hc688d5d8b1f9f50dE.exit, label %._crit_edge

._crit_edge:                                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit", %bb.n
  %.lcssa128 = phi ptr [ %i.bf, %bb.n ], [ %i.cm, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit" ] ; 2 uses
  %i.bh = ptrtoint ptr %.lcssa128 to i64          ; 4 uses
  %.not.i.i = icmp ult i64 %.sroa.0.0.i81, %i.bh
  br i1 %.not.i.i, label %bb.o, label %bb.v, !prof !46

bb.o:                                             ; preds = %._crit_edge
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1048, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1050) #73, !noalias !44410
  unreachable

_ZN3std2io4Read8read_buf17hc688d5d8b1f9f50dE.exit: ; preds = %bb.n, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit"
  %i.bi = phi ptr [ %i.cm, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E.exit" ], [ %i.bf, %bb.n ] ; 8 uses
  %.not77 = icmp eq ptr %i.bi, null
  br i1 %.not77, label %.thread, label %bb.p

.thread:                                          ; preds = %_ZN3std2io4Read8read_buf17hc688d5d8b1f9f50dE.exit
  store i64 %i.ae, ptr %i.c, align 8
  br label %.loopexit

bb.p:                                             ; preds = %_ZN3std2io4Read8read_buf17hc688d5d8b1f9f50dE.exit
  %i.bj = ptrtoint ptr %i.bi to i64               ; 3 uses
end_hunk_2
