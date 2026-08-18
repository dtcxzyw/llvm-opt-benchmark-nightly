inline.NumInlined: 106526
inline.NumDeleted: 43099
loop-unroll.NumCompletelyUnrolled: 378
loop-unroll.NumRuntimeUnrolled: 1730
loop-unroll.NumUnrolled: 2138
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN11candle_core6pickle20read_pth_tensor_info17h3f99f7b644f40960E:bb.a
bb.fv:                                            ; preds = %bb.fg
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h0411440258c4dc1eE.exit72.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h0411440258c4dc1eE.exit346.i.i.i": ; preds = %bb.fi, %bb.fh, %bb.fh, %bb.fg, %bb.ff, %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17hbe6b00cc42ad0c2aE.exit319.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf), !noalias !65267
  call void @llvm.experimental.noalias.scope.decl(metadata !65642)
  %i.vk = load i64, ptr %i.ig, align 8, !range !1339, !alias.scope !65642, !noalias !65267, !noundef !10
  %i.vl = icmp eq i64 %i.vk, 2
  br i1 %i.vl, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i", label %bb.fw

bb.fw:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h0411440258c4dc1eE.exit346.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !65645)
  call void @llvm.experimental.noalias.scope.decl(metadata !65648)
  %.val1.i.i.i364.i.i.i = load i64, ptr %.sroa.69.0..sroa_idx10.i.i.i.i, align 8, !alias.scope !65651, !noalias !65267, !noundef !10 ; 2 uses
  %i.vm = icmp eq i64 %.val1.i.i.i364.i.i.i, 0
  br i1 %i.vm, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i.i.i367.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i365.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i365.i.i.i": ; preds = %bb.fw
  %.val.i.i.i366.i.i.i = load ptr, ptr %.sroa.56.0..sroa_idx7.i.i.i.i, align 16, !alias.scope !65651, !noalias !65267, !nonnull !10, !noundef !10
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i366.i.i.i, i64 noundef %.val1.i.i.i364.i.i.i, i64 noundef 1) #101, !noalias !65652
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i.i.i367.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i.i.i367.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i365.i.i.i", %bb.fw
  call void @llvm.experimental.noalias.scope.decl(metadata !65653)
  call void @llvm.experimental.noalias.scope.decl(metadata !65656)
  call void @llvm.experimental.noalias.scope.decl(metadata !65659)
  call void @llvm.experimental.noalias.scope.decl(metadata !65662)
  %i.vn = load i64, ptr %i.io, align 32, !range !2111, !alias.scope !65665, !noalias !65267, !noundef !10
  %i.vo = icmp eq i64 %i.vn, 0
  br i1 %i.vo, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i", label %bb.fx

bb.fx:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i.i.i367.i.i.i"
  %.val1.i.i.i.i.i.i.i368.i.i.i = load i64, ptr %i.ip, align 16, !alias.scope !65665, !noalias !65267, !noundef !10 ; 2 uses
  %i.vp = icmp eq i64 %.val1.i.i.i.i.i.i.i368.i.i.i, 0
  br i1 %i.vp, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i369.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i369.i.i.i": ; preds = %bb.fx
  %.val.i.i.i.i.i.i.i370.i.i.i = load ptr, ptr %i.iq, align 8, !alias.scope !65665, !noalias !65267, !nonnull !10, !noundef !10
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i370.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i368.i.i.i, i64 noundef 1) #101, !noalias !65666
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i369.i.i.i", %bb.fx, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i.i.i367.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h0411440258c4dc1eE.exit346.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gg), !noalias !65267
  call void @llvm.experimental.noalias.scope.decl(metadata !65667)
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kq, i64 noundef 2048, i64 noundef 1) #101, !noalias !65670
  %i.vq = load i64, ptr %i.gh, align 8, !range !2111, !alias.scope !65671, !noalias !65267, !noundef !10
  %i.vr = icmp eq i64 %i.vq, 0
  %.val1.i.i.i.i.i376.i.i.i = load i64, ptr %i.iw, align 8, !noalias !65267 ; 2 uses
  %i.vs = icmp eq i64 %.val1.i.i.i.i.i376.i.i.i, 0
  %or.cond2134.i.i.i = select i1 %i.vr, i1 true, i1 %i.vs
  br i1 %or.cond2134.i.i.i, label %bb.gc, label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i"

.thread519.i.i.i:                                 ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i349.i.i.i", %.thread610.i.i.i, %bb.bm, %bb.ar, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.ah, %.thread523.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i, %.thread523.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i, %.thread523.loopexit.split-lp.loopexit.i.i.i, %.thread523.loopexit.loopexit.split-lp.i.i.i, %.thread523.loopexit.loopexit.i.i.i
  %.pn225518.i.i.i = phi { ptr, i32 } [ %i.nm, %bb.ar ], [ %.pn222609.i.i.i, %.thread610.i.i.i ], [ %i.mx, %bb.ah ], [ %i.nm, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i" ], [ %lpad.thr_comm.split-lp625.i.i.i, %bb.bm ], [ %.pn222609.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i349.i.i.i" ], [ %lpad.loopexit.split-lp1586.i.i.i, %.thread523.loopexit.loopexit.split-lp.i.i.i ], [ %lpad.loopexit707.i.i.i, %.thread523.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit1585.i.i.i, %.thread523.loopexit.loopexit.i.i.i ], [ %lpad.loopexit.i.i, %.thread523.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.thread523.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65680)
  %i.vt = load i64, ptr %i.gf, align 8, !range !40666, !alias.scope !65680, !noalias !65600, !noundef !10 ; 6 uses
  %i.vu = icmp eq i64 %i.vt, -9223372036854775802
  br i1 %i.vu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h0411440258c4dc1eE.exit72.i.i", label %bb.fy

bb.fy:                                            ; preds = %.thread519.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !65683), !noalias !65604
  %i.vv = icmp ne i64 %i.vt, -9223372036854775806
  call void @llvm.assume(i1 %i.vv), !noalias !65604
  %i.vw = add nsw i64 %i.vt, 9223372036854775807
  %i.vx = icmp ugt i64 %i.vt, -9223372036854775808
  %i.vy = select i1 %i.vx, i64 %i.vw, i64 1
  switch i64 %i.vy, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h0411440258c4dc1eE.exit72.i.i" [
    i64 0, label %bb.fz
    i64 1, label %bb.ga
  ]

bb.fz:                                            ; preds = %bb.fy
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h311d5137e27cf60dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.in)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h0411440258c4dc1eE.exit72.i.i" unwind label %bb.ed, !noalias !65232

bb.ga:                                            ; preds = %bb.fy
  switch i64 %i.vt, label %bb.gb [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h0411440258c4dc1eE.exit72.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h0411440258c4dc1eE.exit72.i.i"
  ]

bb.gb:                                            ; preds = %bb.ga
  %.val1.i.i70.i.i = load ptr, ptr %i.in, align 8, !alias.scope !65686, !noalias !65600, !nonnull !10, !noundef !10
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i70.i.i, i64 noundef %i.vt, i64 noundef range(i64 1, -9223372036854775807) 1) #101, !noalias !65687
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h0411440258c4dc1eE.exit72.i.i"

bb.gc:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i", %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i"
  %.sroa.21.sroa.13.3.i.i = phi i32 [ %.sroa.21.sroa.13.1.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.21.sroa.13.0.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ]
  %.sroa.21.sroa.0.3.i.i = phi i32 [ %.sroa.21.sroa.0.1.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.21.sroa.0.0.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 2 uses
  %.sroa.31.sroa.13.3.i.i = phi i16 [ %.sroa.31.sroa.13.1.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.31.sroa.13.0.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 2 uses
  %.sroa.31.sroa.0.3.i.i = phi i48 [ %.sroa.31.sroa.0.1.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.31.sroa.0.0.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 2 uses
  %.sroa.57.3.i.i = phi i64 [ %.sroa.57.2.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.57.1.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 2 uses
  %.sroa.56.3.i.i = phi i64 [ %.sroa.56.2.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.56.1.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 2 uses
  %.sroa.55.3.i.i = phi i64 [ %.sroa.55.2.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.55.1.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 2 uses
  %.sroa.54.3.i.i = phi i32 [ %.sroa.54.2.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.54.1.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 2 uses
  %.sroa.53.3.i.i = phi i32 [ %.sroa.53.2.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.53.1.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 2 uses
  %.sroa.48.3.i.i = phi i64 [ %.sroa.48.2.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.48.1.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 2 uses
  %.sroa.47.3.i.i = phi i64 [ %.sroa.47.2.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.47.1.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 7 uses
  %.sroa.44.3.i.i = phi ptr [ %.sroa.44.2.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.44.1.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 10 uses
  %.sroa.41.3.i.i = phi i64 [ %.sroa.41.2.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.41.1.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 3 uses
  %.sroa.13.3.i.i = phi i64 [ %.sroa.13.1.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.13.0.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 7 uses
  %.sroa.0.3.i.i = phi ptr [ %.sroa.0.1.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %.sroa.0.0.i.i, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 5 uses
  %i.vz = phi <2 x i64> [ %i.ud, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %i.uy, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 2 uses
  %i.wa = phi <2 x i64> [ %i.ue, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17hc32bb17f55423aa4E.exit.i375.i.i.i" ], [ %i.uz, %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17hce14084034c571efE.exit379.sink.split.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh), !noalias !65267
  %i.wb = icmp eq ptr %.sroa.0.3.i.i, null
  %i.wc = zext i32 %.sroa.21.sroa.13.3.i.i to i64 ; 2 uses
  br i1 %i.wb, label %.loopexit258.loopexit.i.i, label %bb.gd

.loopexit258.loopexit.i.i:                        ; preds = %bb.gc
  %i.wd = zext i16 %.sroa.31.sroa.13.3.i.i to i64
  br label %.loopexit258.i.i

.loopexit258.i.i:                                 ; preds = %.loopexit258.loopexit.i.i, %.thread.i.i
  %.sroa.13.3209.i.i = phi i64 [ %.sroa.0202.0.i.i.i, %.thread.i.i ], [ %.sroa.13.3.i.i, %.loopexit258.loopexit.i.i ] ; 7 uses
  %.sroa.31.sroa.0.3202.i.i = phi i48 [ %.sroa.31.sroa.0.0.extract.trunc.i.i, %.thread.i.i ], [ %.sroa.31.sroa.0.3.i.i, %.loopexit258.loopexit.i.i ]
  %.sroa.31.sroa.13.3201.i.i = phi i64 [ %.sroa.31.sroa.13.0.extract.shift.i.i, %.thread.i.i ], [ %i.wd, %.loopexit258.loopexit.i.i ]
  %.sroa.21.sroa.0.3200.i.i = phi i32 [ %.sroa.21.sroa.0.0.extract.trunc.i.i, %.thread.i.i ], [ %.sroa.21.sroa.0.3.i.i, %.loopexit258.loopexit.i.i ]
  %.sroa.21.sroa.13.3199.i.i = phi i64 [ %.sroa.21.sroa.13.0.extract.shift.i.i, %.thread.i.i ], [ %i.wc, %.loopexit258.loopexit.i.i ]
  %.sroa.21.sroa.13.0.insert.shift113.i.i = shl nuw i64 %.sroa.21.sroa.13.3199.i.i, 32
  %.sroa.21.sroa.0.0.insert.ext106.i.i = zext i32 %.sroa.21.sroa.0.3200.i.i to i64
  %.sroa.21.sroa.0.0.insert.insert108.i.i = or disjoint i64 %.sroa.21.sroa.13.0.insert.shift113.i.i, %.sroa.21.sroa.0.0.insert.ext106.i.i ; 2 uses
  %.sroa.31.sroa.13.0.insert.shift97.i.i = shl nuw i64 %.sroa.31.sroa.13.3201.i.i, 48
  %.sroa.31.sroa.0.0.insert.ext90.i.i = zext i48 %.sroa.31.sroa.0.3202.i.i to i64
  %.sroa.31.sroa.0.0.insert.insert92.i.i = or disjoint i64 %.sroa.31.sroa.13.0.insert.shift97.i.i, %.sroa.31.sroa.0.0.insert.ext90.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl), !noalias !65234
  store i64 %.sroa.13.3209.i.i, ptr %i.gl, align 8, !noalias !65234
  %.sroa.5141.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  store i64 %.sroa.21.sroa.0.0.insert.insert108.i.i, ptr %.sroa.5141.0..sroa_idx.i.i, align 8, !noalias !65234
  %.sroa.6142.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store i64 %.sroa.31.sroa.0.0.insert.insert92.i.i, ptr %.sroa.6142.0..sroa_idx.i.i, align 8, !noalias !65234
  %.not29.i.i = icmp eq i64 %i.kr, -9223372036854775802
  %i.we = inttoptr i64 %.sroa.21.sroa.0.0.insert.insert108.i.i to ptr ; 2 uses
  br i1 %.not29.i.i, label %bb.kq, label %bb.km

bb.gd:                                            ; preds = %bb.gc
  %.sroa.21.sroa.13.0.insert.shift.i.i = shl nuw i64 %i.wc, 32
  %.sroa.21.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.21.sroa.0.3.i.i to i64
  %.sroa.21.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.21.sroa.13.0.insert.shift.i.i, %.sroa.21.sroa.0.0.insert.ext.i.i
  %.sroa.31.sroa.13.0.insert.ext.i.i = zext i16 %.sroa.31.sroa.13.3.i.i to i64
  %.sroa.31.sroa.13.0.insert.shift.i.i = shl nuw i64 %.sroa.31.sroa.13.0.insert.ext.i.i, 48
  %.sroa.31.sroa.0.0.insert.ext.i.i = zext i48 %.sroa.31.sroa.0.3.i.i to i64
  %.sroa.31.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.31.sroa.13.0.insert.shift.i.i, %.sroa.31.sroa.0.0.insert.ext.i.i
  store ptr %.sroa.0.3.i.i, ptr %i.gn, align 8, !noalias !65234
  store i64 %.sroa.13.3.i.i, ptr %.sroa.4.0..sroa_idx123.i.i, align 8, !noalias !65234
  store i64 %.sroa.21.sroa.0.0.insert.insert.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !65234
  store i64 %.sroa.31.sroa.0.0.insert.insert.i.i, ptr %.sroa.6124.0..sroa_idx.i.i, align 8, !noalias !65234
  store i64 %.sroa.41.3.i.i, ptr %.sroa.7125.0..sroa_idx.i.i, align 8, !noalias !65234
  store ptr %.sroa.44.3.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !65234
  store i64 %.sroa.47.3.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !65234
  store i64 %.sroa.48.3.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !65234
  store <2 x i64> %i.vz, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !65234
  store <2 x i64> %i.wa, ptr %.sroa.13126.0..sroa_idx.i.i, align 8, !noalias !65234
  store i32 %.sroa.53.3.i.i, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !65234
  store i32 %.sroa.54.3.i.i, ptr %.sroa.16.0..sroa_idx.i.i, align 4, !noalias !65234
  store i64 %.sroa.55.3.i.i, ptr %.sroa.17.0..sroa_idx.i.i, align 8, !noalias !65234
  store i64 %.sroa.56.3.i.i, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !noalias !65234
  store i64 %.sroa.57.3.i.i, ptr %.sroa.19.0..sroa_idx.i.i, align 8, !noalias !65234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk), !noalias !65234
  invoke void @"_ZN120_$LT$zip..read..CentralDirectoryInfo$u20$as$u20$core..convert..TryFrom$LT$$RF$zip..spec..CentralDirectoryEndInfo$GT$$GT$8try_from17he5f8ff28ea0f6594E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.gk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.gn)
          to label %bb.gf unwind label %.thread234.loopexit.i.i, !noalias !65232

.thread234.loopexit.i.i:                          ; preds = %bb.gd
  %lpad.loopexit259.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread230.i.i

.thread234.loopexit.split-lp.i.i:                 ; preds = %bb.gk
  %lpad.loopexit.split-lp260.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread230.i.i

bb.ge:                                            ; preds = %.loopexit.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.thread.i.i

bb.gf:                                            ; preds = %bb.gd
  %i.wf = load i64, ptr %i.gk, align 8, !range !2111, !noalias !65234, !noundef !10
  %i.wg = trunc nuw i64 %i.wf to i1
  %.sroa.0166.0.copyload.i.i = load i64, ptr %i.iy, align 8, !noalias !65234 ; 3 uses
  %.sroa.5167.0.copyload.i.i = load i64, ptr %.sroa.2162.0..sroa_idx.i.i, align 8, !noalias !65234 ; 4 uses
  %.sroa.6168.0.copyload.i.i = load i64, ptr %.sroa.3163.0..sroa_idx.i.i, align 8, !noalias !65234 ; 5 uses
  br i1 %i.wg, label %bb.ka, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %.sroa.4164.0.copyload.i.i = load i32, ptr %.sroa.4164.0..sroa_idx.i.i, align 8, !noalias !65234
  %.sroa.5165.0.copyload.i.i = load i32, ptr %.sroa.5165.0..sroa_idx.i.i, align 4, !noalias !65234
  call void @llvm.experimental.noalias.scope.decl(metadata !65692)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex), !noalias !65234
  %i.wh = icmp ugt i64 %.sroa.6168.0.copyload.i.i, %.sroa.5167.0.copyload.i.i
  %..i.i.i = select i1 %i.wh, i64 0, i64 %.sroa.6168.0.copyload.i.i ; 3 uses
  %.not.i.i.i = icmp eq i32 %.sroa.4164.0.copyload.i.i, %.sroa.5165.0.copyload.i.i
  br i1 %.not.i.i.i, label %bb.gh, label %.thread241.i.i

bb.gh:                                            ; preds = %bb.gg
  %i.wi = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %..i.i.i, i64 216) ; 2 uses
  %i.wj = extractvalue { i64, i1 } %i.wi, 1
  %i.wk = extractvalue { i64, i1 } %i.wi, 0       ; 4 uses
  %i.wl = icmp slt i64 %i.wk, 0
  %.sroa.02.0.i.i.i = or i1 %i.wj, %i.wl
  br i1 %.sroa.02.0.i.i.i, label %.thread241.i.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey), !noalias !65695
  %3 = icmp eq i64 %i.wk, 0
  br i1 %3, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h577ab16f728a0a29E.exit.i.i.i", label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101, !noalias !65698
  %i.wm = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.wk, i64 noundef range(i64 1, 129) 8) #101, !noalias !65698 ; 2 uses
  %i.wn = icmp eq ptr %i.wm, null
  br i1 %i.wn, label %bb.gk, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h577ab16f728a0a29E.exit.i.i.i"

bb.gk:                                            ; preds = %bb.gj
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.wk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1859) #106
          to label %.noexc55.i.i unwind label %.thread234.loopexit.split-lp.i.i, !noalias !65232

.noexc55.i.i:                                     ; preds = %bb.gk
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h577ab16f728a0a29E.exit.i.i.i": ; preds = %bb.gj, %bb.gi
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.gi ], [ %..i.i.i, %bb.gj ] ; 2 uses
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.gi ], [ %i.wm, %bb.gj ]
  %i.wo = icmp samesign ule i64 %..i.i.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.wo)
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.ey, align 8, !noalias !65695
  store ptr %.sroa.10.0.i.i.i.i, ptr %i.iz, align 8, !noalias !65695
  store i64 0, ptr %i.ja, align 8, !noalias !65695
  %i.wp = invoke { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$4seek17he39bb96de29f0249E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %.sink.i.sroa.gep8, i64 noundef 0, i64 noundef %.sroa.5167.0.copyload.i.i)
          to label %.noexc.i38.i.i unwind label %.loopexit.split-lp.i.loopexit.i.i, !noalias !65703 ; 2 uses

.noexc.i38.i.i:                                   ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h577ab16f728a0a29E.exit.i.i.i"
  %i.wq = extractvalue { i64, ptr } %i.wp, 0
  %i.wr = trunc nuw i64 %i.wq to i1
  br i1 %i.wr, label %bb.gs, label %bb.gr

.loopexit.i41.i.i:                                ; preds = %bb.he, %bb.gx, %.lr.ph.i39.i.i
  %lpad.loopexit.i42.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.loopexit.i.i:                ; preds = %.loopexit172.i.i.i, %bb.hc, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h577ab16f728a0a29E.exit.i.i.i"
  %lpad.loopexit262.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.loopexit.split-lp.i.i:       ; preds = %bb.gv
  %lpad.loopexit.split-lp263.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.jr, %bb.jk, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i235.i.i.i.i.i", %bb.jf, %bb.hh, %bb.ha, %.loopexit.split-lp.i.loopexit.split-lp.i.i, %.loopexit.split-lp.i.loopexit.i.i, %.loopexit.i41.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %lpad.phi171.i.i.i, %bb.jk ], [ %i.ade, %bb.jr ], [ %.pn175272.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i235.i.i.i.i.i" ], [ %i.yb, %bb.ha ], [ %.pn173.i.i.i.i.i, %bb.hh ], [ %.pn175272.i.i.i.i.i, %bb.jf ], [ %lpad.loopexit.i42.i.i, %.loopexit.i41.i.i ], [ %lpad.loopexit262.i.i, %.loopexit.split-lp.i.loopexit.i.i ], [ %lpad.loopexit.split-lp263.i.i, %.loopexit.split-lp.i.loopexit.split-lp.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65704)
  %.val.i79.i.i = load ptr, ptr %i.iz, align 8, !alias.scope !65704, !noalias !65707, !nonnull !10, !noundef !10 ; 4 uses
  %.val1.i80.i.i = load i64, ptr %i.ja, align 8, !alias.scope !65704, !noalias !65707, !noundef !10 ; 4 uses
  %i.ws = icmp eq i64 %.val1.i80.i.i, 0
  br i1 %i.ws, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb7c75e5f98bc3c45E.exit.i.i.i", label %.lr.ph2648

bb.gl:                                            ; preds = %.lr.ph2648
  %i.wt = icmp eq i64 %i.wv, %.val1.i80.i.i
  br i1 %i.wt, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb7c75e5f98bc3c45E.exit.i.i.i", label %.lr.ph2648

.lr.ph2648:                                       ; preds = %.body.i.i.i, %bb.gl
  %.sroa.0.0.i.i.i81.i.i2647 = phi i64 [ %i.wv, %bb.gl ], [ 0, %.body.i.i.i ] ; 2 uses
  %i.wu = getelementptr inbounds nuw [216 x i8], ptr %.val.i79.i.i, i64 %.sroa.0.0.i.i.i81.i.i2647
  %i.wv = add i64 %.sroa.0.0.i.i.i81.i.i2647, 1   ; 4 uses
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17h8fb1b0d8e801c3c3E"(ptr noalias noundef align 8 dereferenceable(216) %i.wu)
          to label %bb.gl unwind label %bb.gn, !noalias !65708

bb.gm:                                            ; preds = %.lr.ph2651
  %i.ww = add i64 %.sroa.0.1.i.i.i.i.i2649, 1     ; 2 uses
  %i.wx = icmp eq i64 %i.ww, %.val1.i80.i.i
  br i1 %i.wx, label %.body.i82.i.i, label %.lr.ph2651

bb.gn:                                            ; preds = %.lr.ph2648
  %i.wy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.wz = icmp eq i64 %i.wv, %.val1.i80.i.i
  br i1 %i.wz, label %.body.i82.i.i, label %.lr.ph2651

.lr.ph2651:                                       ; preds = %bb.gn, %bb.gm
  %.sroa.0.1.i.i.i.i.i2649 = phi i64 [ %i.ww, %bb.gm ], [ %i.wv, %bb.gn ] ; 2 uses
  %i.xa = getelementptr inbounds nuw [216 x i8], ptr %.val.i79.i.i, i64 %.sroa.0.1.i.i.i.i.i2649
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17h8fb1b0d8e801c3c3E"(ptr noalias noundef align 8 dereferenceable(216) %i.xa) #107
          to label %bb.gm unwind label %bb.go, !noalias !65708

bb.go:                                            ; preds = %.lr.ph2651
  %i.xb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !65708
  unreachable

.body.i82.i.i:                                    ; preds = %bb.gm, %bb.gn
  %.val4.i.i.i = load i64, ptr %i.ey, align 8, !range !180, !alias.scope !65704, !noalias !65707, !noundef !10 ; 2 uses
  %i.xc = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.xc, label %.body84.i.i, label %bb.gp

bb.gp:                                            ; preds = %.body.i82.i.i
  %i.xd = mul nuw i64 %.val4.i.i.i, 216
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i79.i.i, i64 noundef %i.xd, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !65708
  br label %.body84.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb7c75e5f98bc3c45E.exit.i.i.i": ; preds = %bb.gl, %.body.i.i.i
  %.val2.i83.i.i = load i64, ptr %i.ey, align 8, !range !180, !alias.scope !65704, !noalias !65707, !noundef !10 ; 2 uses
  %i.xe = icmp eq i64 %.val2.i83.i.i, 0
  br i1 %i.xe, label %.thread230.i.i, label %bb.gq

bb.gq:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb7c75e5f98bc3c45E.exit.i.i.i"
  %i.xf = mul nuw i64 %.val2.i83.i.i, 216
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i79.i.i, i64 noundef %i.xf, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !65708
  br label %.thread230.i.i

bb.gr:                                            ; preds = %.noexc.i38.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i239, i8 0, i64 16, i1 false), !alias.scope !65709, !noalias !65703
  %.not716.i.i.i = icmp eq i64 %.sroa.6168.0.copyload.i.i, 0
  br i1 %.not716.i.i.i, label %.loopexit.loopexit2192.i.i, label %.lr.ph.i39.i.i

bb.gs:                                            ; preds = %.noexc.i38.i.i
  %i.xg = extractvalue { i64, ptr } %i.wp, 1
  %i.xh = ptrtoint ptr %i.xg to i64
  br label %bb.jt

.lr.ph.i39.i.i:                                   ; preds = %bb.gr, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h867df46c38f77caaE.exit.i.i.i"
  %.sroa.026.0715.i.i.i = phi i64 [ %i.xi, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h867df46c38f77caaE.exit.i.i.i" ], [ 0, %bb.gr ]
  %.sroa.25.sroa.0.0714.i.i.i = phi i8 [ %.sroa.25.sroa.0.0.extract.trunc.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h867df46c38f77caaE.exit.i.i.i" ], [ undef, %bb.gr ] ; 2 uses
  %.sroa.25.sroa.8.0713.i.i.i = phi i32 [ %.sroa.25.sroa.8.0.extract.trunc.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h867df46c38f77caaE.exit.i.i.i" ], [ undef, %bb.gr ] ; 2 uses
  %.sroa.25.sroa.9.0712.i.i.i = phi i16 [ %.sroa.25.sroa.9.0.extract.trunc.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h867df46c38f77caaE.exit.i.i.i" ], [ undef, %bb.gr ] ; 2 uses
  %.sroa.25.sroa.10.0711.i.i.i = phi i8 [ %.sroa.25.sroa.10.0.extract.trunc.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h867df46c38f77caaE.exit.i.i.i" ], [ undef, %bb.gr ] ; 2 uses
  %i.xi = add nuw i64 %.sroa.026.0715.i.i.i, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !65712)
  %i.xj = load i64, ptr %i.jb, align 8, !alias.scope !65715, !noalias !65718, !noundef !10
  %i.xk = load i64, ptr %.sroa.5.0..sroa_idx.i239, align 8, !alias.scope !65715, !noalias !65718, !noundef !10
  %i.xl = sub i64 %i.xj, %i.xk                    ; 2 uses
  %i.xm = invoke { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$15stream_position17h4c9d5b7265e38544E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %.sink.i.sroa.gep8)
          to label %.noexc31.i.i.i unwind label %.loopexit.i41.i.i, !noalias !65703 ; 3 uses

.noexc31.i.i.i:                                   ; preds = %.lr.ph.i39.i.i
  %i.xn = extractvalue { i64, ptr } %i.xm, 0
  %i.xo = extractvalue { i64, ptr } %i.xm, 1      ; 2 uses
  %i.xp = ptrtoint ptr %i.xo to i64               ; 3 uses
  %i.xq = trunc nuw i64 %i.xn to i1
  br i1 %i.xq, label %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Seek$GT$15stream_position17h4eb0403702c4c0e3E.exit.i.i.i.i", label %bb.gt

bb.gt:                                            ; preds = %.noexc31.i.i.i
  %i.xr = icmp ugt i64 %i.xl, %i.xp
  br i1 %i.xr, label %bb.gv, label %bb.gu, !prof !59

bb.gu:                                            ; preds = %bb.gt
  %i.xs = sub nuw i64 %i.xp, %i.xl                ; 2 uses
  %i.xt = inttoptr i64 %i.xs to ptr               ; 2 uses
  %i.xu = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.xt, 1
  br label %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Seek$GT$15stream_position17h4eb0403702c4c0e3E.exit.i.i.i.i"

bb.gv:                                            ; preds = %bb.gt
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @7994, i64 noundef 74, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7995) #106
          to label %.noexc32.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.i, !noalias !65703

.noexc32.i.i.i:                                   ; preds = %bb.gv
  unreachable

"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Seek$GT$15stream_position17h4eb0403702c4c0e3E.exit.i.i.i.i": ; preds = %bb.gu, %.noexc31.i.i.i
  %.pre-phi170.i.i.i.i = phi i64 [ %i.xp, %.noexc31.i.i.i ], [ %i.xs, %bb.gu ]
  %.pre-phi.i.i.i.i = phi ptr [ %i.xo, %.noexc31.i.i.i ], [ %i.xt, %bb.gu ]
  %.merged.i.i.i.i.i = phi { i64, ptr } [ %i.xm, %.noexc31.i.i.i ], [ %i.xu, %bb.gu ]
  %i.xv = extractvalue { i64, ptr } %.merged.i.i.i.i.i, 0
  %i.xw = trunc nuw i64 %i.xv to i1
  br i1 %i.xw, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Seek$GT$15stream_position17h4eb0403702c4c0e3E.exit.i.i.i.i"
  %i.xx = ptrtoint ptr %.pre-phi.i.i.i.i to i64
  br label %_ZN3zip4read26central_header_to_zip_file17h9405f140d4c48ef4E.exit.thread.i.i.i

bb.gx:                                            ; preds = %"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Seek$GT$15stream_position17h4eb0403702c4c0e3E.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et), !noalias !65720
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !65721
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(46) %i.ev, i8 0, i64 46, i1 false), !alias.scope !65725, !noalias !65721
  %i.xy = invoke fastcc noundef ptr @"_ZN82_$LT$std..io..buffered..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h2132632a45f502ecE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.hg, ptr noalias noundef nonnull align 1 %i.ev, i64 noundef 46)
          to label %.noexc33.i.i.i unwind label %.loopexit.i41.i.i, !noalias !65703 ; 4 uses

.noexc33.i.i.i:                                   ; preds = %bb.gx
  %.not.i.i.i43.i.i = icmp eq ptr %i.xy, null
  br i1 %.not.i.i.i43.i.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %.noexc33.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu), !noalias !65721
  store ptr %i.xy, ptr %i.eu, align 8, !noalias !65721
  %i.xz = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %i.xy), !noalias !65728
  %i.ya = icmp eq i8 %i.xz, 37
  br i1 %i.ya, label %bb.hb, label %.noexc34.i.i.i

bb.gz:                                            ; preds = %.noexc33.i.i.i
  %.sroa.018.0.copyload.i.i.i49.i.i = load i32, ptr %i.ev, align 4, !noalias !65721
  %.not11.i.i.i50.i.i = icmp eq i32 %.sroa.018.0.copyload.i.i.i49.i.i, 33639248
  br i1 %.not11.i.i.i50.i.i, label %bb.he, label %.loopexit159.i.i.i

bb.ha:                                            ; preds = %bb.hb
  %i.yb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h311d5137e27cf60dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eu) #107
          to label %.body.i.i.i unwind label %bb.hd, !noalias !65728

bb.hb:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es), !noalias !65721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er), !noalias !65721
  store ptr @1865, ptr %i.er, align 8, !noalias !65721
  store i64 32, ptr %i.km, align 8, !noalias !65721
  store ptr %i.er, ptr %i.es, align 8, !noalias !65721
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7161a4ae6baa41a7E", ptr %.sroa.46.0..sroa_idx.i.i.i44.i.i, align 8, !noalias !65721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq), !noalias !65729
  store ptr @1867, ptr %i.eq, align 8, !noalias !65737
  store i64 1, ptr %.sroa.4.0..sroa_idx12.i.i.i45.i.i, align 8, !noalias !65737
  store ptr %i.es, ptr %.sroa.5.0..sroa_idx.i.i.i46.i.i, align 8, !noalias !65737
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i47.i.i, align 8, !noalias !65737
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i48.i.i, align 8, !noalias !65737
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.et, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.eq)
          to label %bb.hc unwind label %bb.ha, !noalias !65728

.noexc34.i.i.i:                                   ; preds = %bb.hc, %bb.gy
  %.sroa.16.sroa.0.0.i.i.i.i = phi i8 [ undef, %bb.gy ], [ %.sroa.16.sroa.0.0.copyload62.i.i.i.i, %bb.hc ]
  %.sroa.16.sroa.8.0.i.i.i.i = phi i32 [ undef, %bb.gy ], [ %.sroa.16.sroa.8.0.copyload65.i.i.i.i, %bb.hc ]
  %.sroa.16.sroa.9.0.i.i.i.i = phi i16 [ undef, %bb.gy ], [ %.sroa.16.sroa.9.0.copyload68.i.i.i.i, %bb.hc ]
end_hunk_0
