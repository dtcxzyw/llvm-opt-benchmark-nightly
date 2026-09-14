Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN11typed_arena14Arena$LT$T$GT$15alloc_slow_path17h385b1686ecd1f6f9E":bb.a
  br label %bb.o

"_ZN11typed_arena14Arena$LT$T$GT$12alloc_extend17h4e1290ff35c9b60aE.exit": ; preds = %bb.l, %"_ZN4core3ptr81drop_in_place$LT$core..iter..sources..once..Once$LT$malachite_q..Rational$GT$$GT$17hd6ecdb104febd0e7E.exit.i", %bb.n
  %.sink.i = phi i64 [ %i.bn, %bb.n ], [ %i.bb, %"_ZN4core3ptr81drop_in_place$LT$core..iter..sources..once..Once$LT$malachite_q..Rational$GT$$GT$17hd6ecdb104febd0e7E.exit.i" ], [ %i.ay, %bb.l ]
  %.sroa.4.0.i = phi i64 [ %i.bi, %bb.n ], [ %i.be, %"_ZN4core3ptr81drop_in_place$LT$core..iter..sources..once..Once$LT$malachite_q..Rational$GT$$GT$17hd6ecdb104febd0e7E.exit.i" ], [ %i.au, %bb.l ]
  %.sroa.025.0.i = phi ptr [ %i.bl, %bb.n ], [ %i.bh, %"_ZN4core3ptr81drop_in_place$LT$core..iter..sources..once..Once$LT$malachite_q..Rational$GT$$GT$17hd6ecdb104febd0e7E.exit.i" ], [ %i.aw, %bb.l ]
  store i64 %.sink.i, ptr %0, align 8, !noalias !1394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %"_ZN11typed_arena14Arena$LT$T$GT$12alloc_extend17h4e1290ff35c9b60aE.exit"
  ret ptr %.sroa.025.0.i

bb.r:                                             ; preds = %"_ZN11typed_arena14Arena$LT$T$GT$12alloc_extend17h4e1290ff35c9b60aE.exit"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #52
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @"_ZN11typed_arena18ChunkList$LT$T$GT$7reserve17h000fd03c965186d9E"(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, 2
  %i.b = add i64 %1, -1
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = lshr i64 -1, %i.c
  %.sroa.05.0 = select i1 %i.a, i64 0, i64 %i.d   ; 2 uses
  %i.e = icmp eq i64 %.sroa.05.0, -1
  br i1 %i.e, label %bb.g, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !range !38, !noundef !19 ; 4 uses
  %i.g = add nuw i64 %.sroa.05.0, 1
  %i.h = shl nuw i64 %i.f, 1
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 %i.h) ; 4 uses
  %i.i = icmp slt i64 %.sroa.0.0.i, 0
  br i1 %i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1408
  %i.j = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.0.0.i, i64 noundef range(i64 1, 9) 1) #54, !noalias !1408 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit"

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #52
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx12, align 8
  store i64 %.sroa.0.0.i, ptr %0, align 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.4.0..sroa_idx12, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1409, !noalias !1410, !noundef !19 ; 3 uses
  %i.o = load i64, ptr %i.l, align 8, !range !38, !alias.scope !1409, !noalias !1410, !noundef !19
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he1c5d599c15a39a1E.exit"

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h706e198a4e82eb53E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he1c5d599c15a39a1E.exit" unwind label %bb.e, !noalias !1410

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.f, 0
  br i1 %i.r, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !1410
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.q

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he1c5d599c15a39a1E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit", %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1409, !noalias !1410, !nonnull !19, !noundef !19
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.n ; 3 uses
  store i64 %i.f, ptr %i.u, align 8
  %.sroa.3.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx10, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx13, align 8
  %i.v = add i64 %i.n, 1
  store i64 %i.v, ptr %i.m, align 8, !alias.scope !1409, !noalias !1410
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #52
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @"_ZN11typed_arena18ChunkList$LT$T$GT$7reserve17h724465b71ed7ebe9E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = icmp ult i64 %1, 2
  %i.c = add i64 %1, -1
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = lshr i64 -1, %i.d
  %.sroa.05.0 = select i1 %i.b, i64 0, i64 %i.e   ; 2 uses
  %i.f = icmp eq i64 %.sroa.05.0, -1
  br i1 %i.f, label %bb.h, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !38, !noundef !19
  %i.h = add nuw i64 %.sroa.05.0, 1
  %i.i = shl nuw i64 %i.g, 1
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.i) ; 3 uses
  %i.j = shl i64 %.sroa.0.0.i, 3                  ; 3 uses
  %i.k = icmp ugt i64 %.sroa.0.0.i, 2305843009213693951
  %i.l = icmp ugt i64 %i.j, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1418
  %i.m = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, 9) 8) #54, !noalias !1418 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit"

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #52
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1419, !noalias !1420, !noundef !19 ; 3 uses
  %i.r = load i64, ptr %i.o, align 8, !range !38, !alias.scope !1419, !noalias !1420, !noundef !19
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha24cf058edd9ee3aE.exit"

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h9945d4d7cc26a5edE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha24cf058edd9ee3aE.exit" unwind label %bb.e, !noalias !1420

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$alloc..vec..Vec$LT$pretty..BoxDoc$GT$$GT$17he85ce3dc543a50d9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.a) #53
          to label %bb.g unwind label %bb.f, !noalias !1419

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !1421
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.t

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha24cf058edd9ee3aE.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit", %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1419, !noalias !1420, !nonnull !19, !noundef !19
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1419
  %i.y = add i64 %i.q, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !1419, !noalias !1420
  ret void

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #52
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @"_ZN11typed_arena18ChunkList$LT$T$GT$7reserve17h73196560510d1ff7E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = icmp ult i64 %1, 2
  %i.c = add i64 %1, -1
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = lshr i64 -1, %i.d
  %.sroa.05.0 = select i1 %i.b, i64 0, i64 %i.e   ; 2 uses
  %i.f = icmp eq i64 %.sroa.05.0, -1
  br i1 %i.f, label %bb.g, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !38, !noundef !19
  %i.h = add nuw i64 %.sroa.05.0, 1
  %i.i = shl nuw i64 %i.g, 1
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.i) ; 3 uses
  %i.j = mul i64 %.sroa.0.0.i, 72                 ; 2 uses
  %or.cond.i.i.i = icmp ugt i64 %.sroa.0.0.i, 128102389400760775
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c, !prof !39

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1429
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, 9) 8) #54, !noalias !1429 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #52
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1430, !noalias !1431, !noundef !19 ; 3 uses
  %i.p = load i64, ptr %i.m, align 8, !range !38, !alias.scope !1430, !noalias !1431, !noundef !19
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h459bf85a2b6d59f5E.exit"

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0180d8a0033fff1eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h459bf85a2b6d59f5E.exit" unwind label %bb.f, !noalias !1431

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..error..ParseError$GT$$GT$17h84e885ac0a0fd5e1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.a) #53, !noalias !1430
  resume { ptr, i32 } %i.r

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h459bf85a2b6d59f5E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit", %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1430, !noalias !1431, !nonnull !19, !noundef !19
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1430
  %i.v = add i64 %i.o, 1
  store i64 %i.v, ptr %i.n, align 8, !alias.scope !1430, !noalias !1431
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #52
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @"_ZN11typed_arena18ChunkList$LT$T$GT$7reserve17he71f596913c3f6f2E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = icmp ult i64 %1, 2
  %i.c = add i64 %1, -1
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = lshr i64 -1, %i.d
  %.sroa.05.0 = select i1 %i.b, i64 0, i64 %i.e   ; 2 uses
  %i.f = icmp eq i64 %.sroa.05.0, -1
  br i1 %i.f, label %bb.g, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !38, !noundef !19
  %i.h = add nuw i64 %.sroa.05.0, 1
  %i.i = shl nuw i64 %i.g, 1
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 %i.i) ; 3 uses
  %i.j = mul i64 %.sroa.0.0.i, 56                 ; 2 uses
  %or.cond.i.i.i = icmp ugt i64 %.sroa.0.0.i, 164703072086692425
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c, !prof !39

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1439
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, 9) 8) #54, !noalias !1439 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #52
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1440, !noalias !1441, !noundef !19 ; 3 uses
  %i.p = load i64, ptr %i.m, align 8, !range !38, !alias.scope !1440, !noalias !1441, !noundef !19
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd0de1bfaac8e2e5cE.exit"

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2a614247c11e1214E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd0de1bfaac8e2e5cE.exit" unwind label %bb.f, !noalias !1441

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$malachite_q..Rational$GT$$GT$17h7c626e94ca09f3ffE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.a) #53, !noalias !1440
  resume { ptr, i32 } %i.r

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd0de1bfaac8e2e5cE.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit", %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1440, !noalias !1441, !nonnull !19, !noundef !19
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1440
  %i.v = add i64 %i.o, 1
  store i64 %i.v, ptr %i.n, align 8, !alias.scope !1440, !noalias !1441
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #52
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN120_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..ast..pattern..bindings..InjectBindings$GT$15inject_bindings17hbd06e303b946a82aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(200) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.4.i = alloca [96 x i8], align 8          ; 6 uses
  %.sroa.7.i = alloca [48 x i8], align 8          ; 2 uses
  %i.c = alloca [120 x i8], align 8               ; 7 uses
  %.sroa.03.sroa.0.sroa.5 = alloca [96 x i8], align 8 ; 4 uses
  %i.d = alloca [248 x i8], align 8               ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !range !28, !noundef !19
  %.not = icmp eq i32 %i.f, 3
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.g, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val40 = load i64, ptr %i.h, align 8, !noundef !19 ; 5 uses
  %i.i = mul i64 %.val40, 20                      ; 4 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %.val40, 461168601842738790
  br i1 %or.cond.i.i.i.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.b
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1458
  %i.k = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 4) #54, !noalias !1458 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52
          to label %.noexc unwind label %.thread61

.thread61:                                        ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.u, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @"_ZN124_$LT$nickel_lang_parser..ast..pattern..PatternData$u20$as$u20$nickel_lang_parser..ast..pattern..bindings..InjectBindings$GT$15inject_bindings17h54c6da851f14fa42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(200) %3)
  ret void

bb.f:                                             ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.k, %bb.c ] ; 3 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %.val40, %bb.c ] ; 4 uses
  %i.o = icmp samesign ule i64 %.val40, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i, ptr nonnull readonly align 4 %.val, i64 %i.i, i1 false), !noalias !1459
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.sroa.0.sroa.5)
  %.not38 = icmp eq ptr %3, null
  br i1 %.not38, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1460, !noalias !1461, !align !18, !noundef !19 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1460, !noalias !1461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1462
  %i.t = load i64, ptr %3, align 8, !range !32, !alias.scope !1460, !noalias !1461, !noundef !19
  %.not11.i = icmp eq i64 %i.t, 18
  br i1 %.not11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1462
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5310f34a6db5b37cE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %3)
          to label %.noexc45 unwind label %bb.r

.noexc45:                                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.4.88..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.88..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !1461
  %.sroa.08.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !1462
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i, i64 80, i1 false), !noalias !1462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1462
  br label %bb.i

bb.i:                                             ; preds = %.noexc45, %bb.g
  %.sroa.04.0.i = phi i64 [ %.sroa.08.0.copyload.i, %.noexc45 ], [ 18, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1460, !noalias !1461, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1460, !noalias !1461, !noundef !19 ; 2 uses
  store i64 %.sroa.04.0.i, ptr %i.c, align 8, !noalias !1462
  %.sroa.56.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.56.0..sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.i, i64 96, i1 false), !noalias !1462
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr %i.w, ptr %i.z, align 8, !noalias !1462
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 %i.y, ptr %i.aa, align 8, !noalias !1462
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ac = load i8, ptr %i.ab, align 8, !range !21, !alias.scope !1460, !noalias !1461, !noundef !19
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 193
  %i.ae = load i8, ptr %i.ad, align 1, !range !21, !alias.scope !1460, !noalias !1461, !noundef !19
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !range !41, !alias.scope !1460, !noalias !1461, !noundef !19 ; 3 uses
  %i.ah = icmp ne i64 %i.ag, -9223372036854775805
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = add nsw i64 %i.ag, 9223372036854775807
  %i.aj = icmp ugt i64 %i.ag, -9223372036854775808
  %i.ak = select i1 %i.aj, i64 %i.ai, i64 2
  switch i64 %i.ak, label %bb.j [
    i64 0, label %bb.t
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  br label %bb.t

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1462
  invoke fastcc void @"_ZN60_$LT$malachite_q..Rational$u20$as$u20$core..clone..Clone$GT$5clone17hb26a37bf83f480deE"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.af)
          to label %bb.o unwind label %bb.n, !noalias !1461

bb.m:                                             ; preds = %bb.i
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17hd5a011e7b9efacffE"(ptr noalias noundef align 8 dereferenceable(120) %i.c) #53, !noalias !1462
  br label %.body

bb.o:                                             ; preds = %bb.l
  %.sroa.01.0.copyload2.i = load i64, ptr %i.a, align 8, !noalias !1462
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx3.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1462
  br label %bb.t

bb.p:                                             ; preds = %bb.f, %bb.t
  %.sroa.03.sroa.6.0 = phi i64 [ %i.y, %bb.t ], [ 0, %bb.f ]
  %.sroa.03.sroa.5.0 = phi ptr [ %i.w, %bb.t ], [ inttoptr (i64 8 to ptr), %bb.f ]
  %.sroa.03.sroa.7.sroa.0.0 = phi i64 [ %.sroa.01.0.i, %bb.t ], [ -9223372036854775806, %bb.f ]
  %.sroa.03.sroa.0.sroa.0.0 = phi i64 [ %.sroa.04.0.i, %bb.t ], [ 18, %bb.f ]
  %.sroa.9.0 = phi i8 [ %i.ae, %bb.t ], [ 0, %bb.f ]
  %.sroa.8.0 = phi i8 [ %i.ac, %bb.t ], [ 0, %bb.f ]
  %.sroa.7.0 = phi i64 [ %.sroa.5.0.i, %bb.t ], [ undef, %bb.f ]
  %.sroa.6.0 = phi ptr [ %i.q, %bb.t ], [ null, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  store i64 %.sroa.4.0.i.i.i, ptr %i.am, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store i64 %.val40, ptr %.sroa.7.0..sroa_idx49, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.an, ptr noundef nonnull align 8 dereferenceable(20) %i.e, i64 20, i1 false)
  store i64 %.sroa.03.sroa.0.sroa.0.0, ptr %i.d, align 8
end_hunk_0
begin_hunk_1_@_ZN18nickel_lang_parser7grammar11__action85317hc8c1302d56e773c9E:bb.a
  resume { ptr, i32 } %eh.lpad-body28.i.i

bb.u:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call fastcc void @"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %6) #53, !noalias !11830
  %.val.i.i = load i64, ptr %i.a, align 8, !noalias !11819 ; 2 uses
  %i.bm = icmp eq i64 %.val.i.i, 0
  br i1 %i.bm, label %.thread.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val27.i.i = load ptr, ptr %i.bn, align 8, !noalias !11819, !nonnull !19, !noundef !19
  %i.bo = shl nuw i64 %.val.i.i, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i.i, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !11819
  br label %.thread.i.i

_ZN18nickel_lang_parser7grammar11__action71617h869bfa05783d666cE.exit: ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar11__action85917h63369a1d9c1f3bfaE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(144) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 5 uses
  %i.f = alloca [104 x i8], align 8               ; 15 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [128 x i8], align 8               ; 6 uses
  %i.j = alloca [128 x i8], align 8               ; 25 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11883)
  %i.l = load <2 x i64>, ptr %i.k, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11885)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(144) %4, i64 128, i1 false), !noalias !11887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11886
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11888)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11889
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11891)
  %i.m = load i64, ptr %i.j, align 8, !range !76, !alias.scope !11892, !noalias !11893, !noundef !19 ; 3 uses
  %i.n = icmp ne i64 %i.m, 171
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nsw i64 %i.m, -169
  %i.p = icmp samesign ugt i64 %i.m, 168
  %i.q = select i1 %i.p, i64 %i.o, i64 2
  switch i64 %i.q, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !11894, !noalias !11893, !noundef !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.s, ptr %i.t, align 8, !alias.scope !11890, !noalias !11895
  store i64 169, ptr %i.f, align 8, !alias.scope !11890, !noalias !11895
  br label %"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i"

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !11896, !noalias !11893, !noundef !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !11892, !noalias !11893, !nonnull !19, !noundef !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val2.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !11892, !noalias !11893, !noundef !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb8412a29d361c4fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y, ptr nonnull %.val.i.i.i.i, i64 %.val2.i.i.i.i)
          to label %.noexc.i.i unwind label %.body.thread8.i.i, !noalias !11886

.noexc.i.i:                                       ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.v, ptr %i.z, align 8, !alias.scope !11890, !noalias !11895
  store i64 170, ptr %i.f, align 8, !alias.scope !11890, !noalias !11895
  br label %"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i"

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11897
  invoke fastcc void @_ZN4core5clone5Clone5clone17h2e24bedf7f5648cfE(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.j)
          to label %.noexc5.i.i unwind label %.body.thread8.i.i, !noalias !11886

.noexc5.i.i:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11897
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %.val3.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !11892, !noalias !11893, !nonnull !19, !noundef !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %.val4.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !11892, !noalias !11893, !noundef !19
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb8412a29d361c4fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr nonnull %.val3.i.i.i.i, i64 %.val4.i.i.i.i)
          to label %bb.o unwind label %bb.n, !noalias !11893

bb.f:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke fastcc void @_ZN4core5clone5Clone5clone17h2e24bedf7f5648cfE(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ac)
          to label %.noexc6.i.i unwind label %.body.thread8.i.i, !noalias !11886

.noexc6.i.i:                                      ; preds = %bb.f
  store i64 172, ptr %i.f, align 8, !alias.scope !11890, !noalias !11895
  br label %"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i"

bb.g:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11897
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11899)
  %i.af = load i32, ptr %i.ae, align 8, !range !30, !alias.scope !11900, !noalias !11901, !noundef !19
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 25
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN76_$LT$nickel_lang_parser..error..ParseError$u20$as$u20$core..clone..Clone$GT$5clone17h3e614a7f7db1bc7cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ae)
          to label %"_ZN81_$LT$nickel_lang_parser..error..ParseOrLexError$u20$as$u20$core..clone..Clone$GT$5clone17hc56abe4acfb26d49E.exit.i.i.i.i" unwind label %.body.thread8.i.i, !noalias !11886

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11902)
  %i.ah = load i64, ptr %i.ag, align 8, !range !11903, !alias.scope !11904, !noalias !11905, !noundef !19 ; 2 uses
  switch i64 %i.ah, label %default.unreachable [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %"_ZN78_$LT$nickel_lang_parser..error..LexicalError$u20$as$u20$core..clone..Clone$GT$5clone17h4dd56fbce857aea4E.exit.i.i.i.i.i"
    i64 4, label %bb.m
    i64 5, label %"_ZN78_$LT$nickel_lang_parser..error..LexicalError$u20$as$u20$core..clone..Clone$GT$5clone17h4dd56fbce857aea4E.exit.i.i.i.i.i"
  ]

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %.sroa.15.0..sroa_idx20.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ai = load <2 x i64>, ptr %.sroa.15.0..sroa_idx20.i.i.i.i.i, align 8, !alias.scope !11906, !noalias !11901
  br label %"_ZN78_$LT$nickel_lang_parser..error..LexicalError$u20$as$u20$core..clone..Clone$GT$5clone17h4dd56fbce857aea4E.exit.i.i.i.i.i"

bb.k:                                             ; preds = %bb.i
  %.sroa.15.0..sroa_idx18.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.aj = load <2 x i64>, ptr %.sroa.15.0..sroa_idx18.i.i.i.i.i, align 8, !alias.scope !11906, !noalias !11901
  br label %"_ZN78_$LT$nickel_lang_parser..error..LexicalError$u20$as$u20$core..clone..Clone$GT$5clone17h4dd56fbce857aea4E.exit.i.i.i.i.i"

bb.l:                                             ; preds = %bb.i
  %.sroa.15.0..sroa_idx16.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ak = load <2 x i64>, ptr %.sroa.15.0..sroa_idx16.i.i.i.i.i, align 8, !alias.scope !11906, !noalias !11901
  br label %"_ZN78_$LT$nickel_lang_parser..error..LexicalError$u20$as$u20$core..clone..Clone$GT$5clone17h4dd56fbce857aea4E.exit.i.i.i.i.i"

bb.m:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.am = load <2 x i64>, ptr %i.al, align 8, !alias.scope !11904, !noalias !11905
  br label %"_ZN78_$LT$nickel_lang_parser..error..LexicalError$u20$as$u20$core..clone..Clone$GT$5clone17h4dd56fbce857aea4E.exit.i.i.i.i.i"

"_ZN78_$LT$nickel_lang_parser..error..LexicalError$u20$as$u20$core..clone..Clone$GT$5clone17h4dd56fbce857aea4E.exit.i.i.i.i.i": ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.i
  %i.an = phi <2 x i64> [ %i.ai, %bb.j ], [ %i.aj, %bb.k ], [ %i.ak, %bb.l ], [ undef, %bb.i ], [ %i.am, %bb.m ], [ undef, %bb.i ]
  %.sroa.9.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ah, ptr %i.ao, align 8, !alias.scope !11898, !noalias !11907
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = load <2 x i64>, ptr %.sroa.9.0.in.i.i.i.i.i, align 8, !alias.scope !11906, !noalias !11901
  store <2 x i64> %i.ap, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !11898, !noalias !11907
  %.sroa.15.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <2 x i64> %i.an, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !11898, !noalias !11907
  store i32 25, ptr %i.c, align 8, !alias.scope !11898, !noalias !11907
  br label %"_ZN81_$LT$nickel_lang_parser..error..ParseOrLexError$u20$as$u20$core..clone..Clone$GT$5clone17hc56abe4acfb26d49E.exit.i.i.i.i"

"_ZN81_$LT$nickel_lang_parser..error..ParseOrLexError$u20$as$u20$core..clone..Clone$GT$5clone17hc56abe4acfb26d49E.exit.i.i.i.i": ; preds = %"_ZN78_$LT$nickel_lang_parser..error..LexicalError$u20$as$u20$core..clone..Clone$GT$5clone17h4dd56fbce857aea4E.exit.i.i.i.i.i", %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !11895
  store i64 173, ptr %i.f, align 8, !alias.scope !11890, !noalias !11895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11897
  br label %"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i"

bb.n:                                             ; preds = %.noexc5.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr77drop_in_place$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$17h69e4611f139b75dfE"(ptr noalias noundef align 8 dereferenceable(80) %i.e) #53, !noalias !11893
  br label %.body.thread.i.i

bb.o:                                             ; preds = %.noexc5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !noalias !11895
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !11895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11897
  br label %"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i"

"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i": ; preds = %bb.o, %"_ZN81_$LT$nickel_lang_parser..error..ParseOrLexError$u20$as$u20$core..clone..Clone$GT$5clone17hc56abe4acfb26d49E.exit.i.i.i.i", %.noexc6.i.i, %.noexc.i.i, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !11888, !noalias !11908, !nonnull !19, !noundef !19 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %.val1.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !11888, !noalias !11908, !noundef !19 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11909
  %i.av = mul i64 %.val1.i.i.i, 80                ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %.val1.i.i.i, 115292150460684697
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.q, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i"
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i.i.i.i", label %bb.p

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %i.ax = icmp eq i64 %.val1.i.i.i, 0
  call void @llvm.assume(i1 %i.ax)
  store i64 0, ptr %i.b, align 8, !noalias !11909
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ay, align 8, !noalias !11909
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.loopexit.i.i

bb.p:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !11910
  %i.ba = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.av, i64 noundef range(i64 1, 9) 8) #54, !noalias !11910 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i.i"

bb.q:                                             ; preds = %bb.p, %"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.p ], [ 0, %"_ZN80_$LT$lalrpop_util..ParseError$LT$L$C$T$C$E$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0d6b90712d99a9a9E.exit.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10557) #52
          to label %.noexc.i.i.i unwind label %bb.u, !noalias !11908

.noexc.i.i.i:                                     ; preds = %bb.q
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i.i": ; preds = %bb.p
  store i64 %.val1.i.i.i, ptr %i.b, align 8, !noalias !11909
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ba, ptr %i.bc, align 8, !noalias !11909
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw [80 x i8], ptr %.val.i.i.i, i64 %.val1.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.s, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i.i"
  %.sroa.012.023.i.i.i.i.i = phi ptr [ %i.bi, %bb.s ], [ %.val.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i.i" ] ; 3 uses
  %.sroa.7.022.i.i.i.i.i = phi i64 [ %i.bh, %bb.s ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i.i" ] ; 3 uses
  %.sroa.10.021.i.i.i.i.i = phi i64 [ %i.bf, %bb.s ], [ %.val1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i.i" ]
  %i.bf = add nsw i64 %.sroa.10.021.i.i.i.i.i, -1 ; 2 uses
  %i.bg = icmp eq ptr %.sroa.012.023.i.i.i.i.i, %i.be
  br i1 %i.bg, label %.loopexit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11909
  invoke fastcc void @_ZN4core5clone5Clone5clone17h2e24bedf7f5648cfE(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.012.023.i.i.i.i.i)
          to label %bb.s unwind label %bb.t, !noalias !11911

bb.s:                                             ; preds = %bb.r
  %i.bh = add nuw nsw i64 %.sroa.7.022.i.i.i.i.i, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i.i.i.i, i64 80
  %i.bj = getelementptr inbounds nuw [80 x i8], ptr %i.ba, i64 %.sroa.7.022.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !11911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11909
  %i.bk = icmp eq i64 %i.bf, 0
  br i1 %i.bk, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i.i.i.i, ptr %i.bd, align 8, !alias.scope !11912, !noalias !11909
  call fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hfa7f9a4a700936cfE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #53, !noalias !11911
  br label %.body.i.i.i

bb.u:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.u, %bb.t
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %lpad.loopexit.i.i.i.i.i, %bb.t ]
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$lalrpop_util..ParseError$LT$usize$C$nickel_lang_parser..lexer..Token$C$nickel_lang_parser..error..ParseOrLexError$GT$$GT$17h5d8c03395a51f867E"(ptr noalias noundef align 8 dereferenceable(104) %i.f) #53, !noalias !11908
  br label %.body.thread.i.i

.body.thread8.i.i:                                ; preds = %bb.h, %bb.f, %bb.e, %bb.d
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.body.i.i:                                        ; preds = %bb.x
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.i.i:                                    ; preds = %bb.s, %.lr.ph.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i.i.i.i"
  %5 = phi ptr [ %i.az, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i.i.i.i" ], [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %i.bd, %bb.s ]
  store i64 %.val1.i.i.i, ptr %5, align 8, !noalias !11909
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !11913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false), !noalias !11913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11889
  call void @llvm.experimental.noalias.scope.decl(metadata !11914)
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !11915, !noalias !11916, !noundef !19 ; 3 uses
  %i.bp = load i64, ptr %3, align 8, !range !38, !alias.scope !11915, !noalias !11916, !noundef !19
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.loopexit.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h28b456d643820cbbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @316)
          to label %bb.x unwind label %bb.w, !noalias !11916

bb.w:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$lalrpop_util..ParseError$LT$usize$C$nickel_lang_parser..lexer..Token$C$nickel_lang_parser..error..ParseOrLexError$GT$$GT$17h5d8c03395a51f867E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %i.i), !noalias !11917
  call fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hfa7f9a4a700936cfE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.bm), !noalias !11917
  br label %.body.thread.i.i

bb.x:                                             ; preds = %bb.v, %.loopexit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !11915, !noalias !11916, !nonnull !19, !noundef !19
  %i.bu = getelementptr inbounds nuw [128 x i8], ptr %i.bt, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bu, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.i, i64 128, i1 false), !noalias !11917
  %i.bv = add i64 %i.bo, 1
  store i64 %i.bv, ptr %i.bn, align 8, !alias.scope !11915, !noalias !11916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11886
  call fastcc void @_ZN18nickel_lang_parser5error10ParseError12from_lalrpop17h0b9a14bb32e9f64aE(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.j, i32 noundef %2), !noalias !11886
  invoke void @_ZN18nickel_lang_parser3ast5alloc8AstAlloc11parse_error17h88b81e1d177340ffE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.g)
          to label %_ZN18nickel_lang_parser7grammar11__action72217hff6a0f3dd685e9deE.exit unwind label %.body.i.i, !noalias !11886

bb.y:                                             ; preds = %.body.thread.i.i, %.body.i.i
  %eh.lpad-body5.i.i = phi { ptr, i32 } [ %eh.lpad-body6.i.i, %.body.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %.body.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  call fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hfa7f9a4a700936cfE"(ptr noalias noundef align 8 dereferenceable(24) %i.bw) #53, !noalias !11886
  resume { ptr, i32 } %eh.lpad-body5.i.i

.body.thread.i.i:                                 ; preds = %bb.w, %.body.thread8.i.i, %.body.i.i.i, %bb.n
  %eh.lpad-body6.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.body.thread8.i.i ], [ %i.br, %bb.w ], [ %i.ar, %bb.n ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$lalrpop_util..ParseError$LT$usize$C$nickel_lang_parser..lexer..Token$C$nickel_lang_parser..error..ParseOrLexError$GT$$GT$17h5d8c03395a51f867E"(ptr noalias noundef align 8 dereferenceable(104) %i.j) #53, !noalias !11886
  br label %bb.y

_ZN18nickel_lang_parser7grammar11__action72217hff6a0f3dd685e9deE.exit: ; preds = %bb.x
  %i.bx = trunc <2 x i64> %i.l to <2 x i32>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11886
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !11918
  store i32 0, ptr %0, align 8, !alias.scope !11919, !noalias !11918
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i.i, align 4, !alias.scope !11919, !noalias !11918
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i32> %i.bx, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !11919, !noalias !11918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11886
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  call fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hfa7f9a4a700936cfE"(ptr noalias noundef align 8 dereferenceable(24) %i.bz), !noalias !11886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11886
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar11__action87317hf97a5ac9a67e5de8E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) initializes((0, 88)) %0, ptr noundef nonnull align 8 captures(none) %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11927)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11928
  store i32 %2, ptr %i.a, align 4, !noalias !11928
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load <2 x i64>, ptr %i.c, align 8
  %i.f = trunc <2 x i64> %i.e to <2 x i32>
  store <2 x i32> %i.f, ptr %i.d, align 4, !noalias !11928
  call fastcc void @_ZN18nickel_lang_parser7uniterm11FixTypeVars13fix_type_vars17h70414adb747f144aE(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(120) %3, ptr noundef nonnull align 8 %1, ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11928
  %i.g = load i64, ptr %i.b, align 8, !range !32, !noundef !19 ; 2 uses
  %i.h = icmp eq i64 %i.g, 18
  br i1 %i.h, label %_ZN18nickel_lang_parser7grammar11__action73617h3efb00fe522983ffE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.66.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66.0..sroa_idx.i.i, i64 24, i1 false)
  br label %_ZN18nickel_lang_parser7grammar11__action73617h3efb00fe522983ffE.exit

_ZN18nickel_lang_parser7grammar11__action73617h3efb00fe522983ffE.exit: ; preds = %bb.a, %bb.b
  %.sink3.i.i = phi i64 [ %i.g, %bb.b ], [ 173, %bb.a ]
  %.sink.i.i = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink3.i.i, ptr %i.j, align 8, !alias.scope !11929, !noalias !11930
  store i64 %.sink.i.i, ptr %0, align 8, !alias.scope !11929, !noalias !11930
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser7grammar11__action87417haf4ffd5be234e6bbE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(80) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.420.i.i = alloca [60 x i8], align 4      ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11990)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !11990, !noalias !11991, !noundef !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11994)
  %.sroa.0.0.copyload.i.i = load i64, ptr %3, align 8, !alias.scope !11995, !noalias !11996 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !11995, !noalias !11996, !nonnull !19, !noundef !19 ; 4 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !11995, !noalias !11996 ; 4 uses
  %i.e = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.e)
  %.sroa.016.0.copyload.i.i = load i32, ptr %4, align 8, !alias.scope !11997, !noalias !11998 ; 3 uses
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = add i32 %.sroa.016.0.copyload.i.i, -5
  %narrow.i.i = icmp ult i32 %i.f, -2
  %i.g = zext i1 %narrow.i.i to i64
  %.sink21.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.3.0.copyload.i.i, %i.g ; 3 uses
  %i.h = shl nuw i64 %.sink21.i.i.i.i.i.i.i, 6    ; 4 uses
  %i.i = icmp samesign ugt i64 %.sink21.i.i.i.i.i.i.i, 144115188075855871
  br i1 %i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.j = icmp eq i64 %.sink21.i.i.i.i.i.i.i, 0    ; 3 uses
  br i1 %i.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3fb9baf393563bfcE.exit.i.i.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !11999
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 8) #54, !noalias !11999 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3fb9baf393563bfcE.exit.i.i.i.i.i.i.i.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10207) #52
          to label %.noexc.i.i.i.i.i.i unwind label %bb.e, !noalias !12000

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3fb9baf393563bfcE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.24.0.copyload.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.k, %bb.b ] ; 14 uses
  %.not8.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3fb9baf393563bfcE.exit.i.i.i.i.i.i.i.i"
  %i.m = add nuw nsw i64 %.sroa.3.0.copyload.i.i, 288230376151711743
  %i.n = and i64 %i.m, 288230376151711743         ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %xtraiter = and i64 %i.o, 7                     ; 3 uses
  %i.p = icmp samesign ult i64 %i.n, 7
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.o, 576460752303423480
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aw, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init7 = phi ptr [ %.sroa.2.0.copyload.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.at, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.q = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.r = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %.sroa.24.0.copyload.i.i, i64 %i.q
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !12001
  %i.u = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !11970

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3fb9baf393563bfcE.exit.i.i.i.i.i.i.i.i"
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3fb9baf393563bfcE.exit.i.i.i.i.i.i.i.i" ], [ %i.aw, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ] ; 3 uses
  %i.v = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.v, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h05033f4c37a500b5E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.w = shl nuw i64 %.sroa.0.0.copyload.i.i, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !12002
end_hunk_1
begin_hunk_2_@"_ZN18nickel_lang_parser7uniterm144_$LT$impl$u20$nickel_lang_parser..ast..TryConvert$LT$nickel_lang_parser..uniterm..UniTerm$GT$$u20$for$u20$nickel_lang_parser..ast..typ..Type$GT$11try_convert17hbdd22dcd33639c1aE":bb.a

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i32, ptr %i.i, align 8, !noundef !19
  %.sroa.8.0.insert.ext = zext i32 %i.j to i64
  %i.k = inttoptr i64 %.sroa.8.0.insert.ext to ptr
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN18nickel_lang_parser7uniterm146_$LT$impl$u20$nickel_lang_parser..ast..TryConvert$LT$nickel_lang_parser..uniterm..UniRecord$GT$$u20$for$u20$nickel_lang_parser..ast..typ..Type$GT$11try_convert17h6d515ff5100c792dE"(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %2)
  %i.l = load i64, ptr %i.b, align 8, !range !32, !noundef !19 ; 2 uses
  %i.m = icmp eq i64 %i.l, 18
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.045.0.copyload = load ptr, ptr %i.n, align 8 ; 2 uses
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.sroa.7, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.546.0..sroa_idx, i64 64, i1 false)
  br i1 %i.m, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.028.0.copyload = load i8, ptr %i.o, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 25
  switch i8 %.sroa.028.0.copyload, label %bb.j [
    i8 0, label %bb.m
    i8 1, label %bb.m
    i8 2, label %bb.m
    i8 3, label %bb.m
    i8 4, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
  ]

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.025.0.copyload = load i64, ptr %i.p, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.426.0.copyload = load ptr, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.sroa.0, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.527.0..sroa_idx, i64 64, i1 false)
  %.sroa.527.sroa.4.0..sroa.527.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.527.sroa.4.0.copyload = load i64, ptr %.sroa.527.sroa.4.0..sroa.527.0..sroa_idx.sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit", %bb.i, %bb.f, %bb.c
  %.sroa.10.sroa.6.0 = phi i64 [ undef, %bb.c ], [ %.sroa.624.sroa.0.0.copyload, %bb.i ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit" ], [ %.sroa.527.sroa.4.0.copyload, %bb.f ]
  %.sroa.8.0 = phi ptr [ %i.k, %bb.c ], [ %.sroa.045.0.copyload, %bb.i ], [ %.sroa.0.0.i, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit" ], [ %.sroa.426.0.copyload, %bb.f ]
  %.sroa.0.0 = phi i64 [ 11, %bb.c ], [ %i.l, %bb.i ], [ 9, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit" ], [ %.sroa.025.0.copyload, %bb.f ]
  %.sroa.621.sroa.4.0..sroa.621.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.621.sroa.4.0..sroa.621.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.449.0..sroa_idx, i64 12, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.sroa.0, i64 64, i1 false)
  %.sroa.520.sroa.4.0..sroa.520.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.10.sroa.6.0, ptr %.sroa.520.sroa.4.0..sroa.520.0..sroa_idx.sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %.sroa.0.0.copyload, ptr %.sroa.621.0..sroa_idx, align 8
  br label %bb.o

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.242.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.sroa.7, i64 64, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.045.0.copyload, ptr %i.q, align 8
  store i64 18, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7)
  br label %bb.o

bb.i:                                             ; preds = %bb.d
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.624.sroa.0.0.copyload = load i64, ptr %.sroa.624.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.sroa.0, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.sroa.7, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7)
  br label %bb.g

bb.j:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !597460, !nonnull !19, !noundef !19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !597460, !nonnull !19, !noundef !19 ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !noalias !597460, !nonnull !19, !noundef !19 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = and i64 %i.w, 7
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr i8, ptr %i.u, i64 %i.y     ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ult ptr %i.z, %i.v
  %i.ae = icmp ult i64 %i.ac, 48
  %or.cond.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i, label %bb.k, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit": ; preds = %bb.j
  %i.af = getelementptr i8, ptr %i.z, i64 -48     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ], !noalias !597460
  store ptr %i.af, ptr %i.t, align 8, !noalias !597460
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit"

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef 48), !noalias !597460 ; 2 uses
  %.not5.i = icmp eq ptr %i.ag, null
  br i1 %.not5.i, label %bb.l, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit", !prof !20

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52, !noalias !597460
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", %bb.k
  %.sroa.0.0.i = phi ptr [ %i.af, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit" ], [ %i.ag, %bb.k ] ; 5 uses
  %.sroa.458.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.458.0..sroa.0.0.i.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.449.0..sroa_idx, i64 12, i1 false)
  %.sroa.660.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.660.0..sroa.0.0.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx, i64 31, i1 false)
  store i32 %.sroa.0.0.copyload, ptr %.sroa.0.0.i, align 8, !noalias !597460
  %.sroa.559.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  store i8 %.sroa.028.0.copyload, ptr %.sroa.559.0..sroa.0.0.i.sroa_idx, align 8, !noalias !597460
  br label %bb.g

bb.m:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.ah = icmp eq i32 %.sroa.0.0.copyload, 2
  br i1 %i.ah, label %bb.n, label %_ZN18nickel_lang_parser8position7TermPos6unwrap17h9a771f857788945fE.exit, !prof !64

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !597461
  store ptr @10189, ptr %i.a, align 8, !noalias !597461
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ai, align 8, !noalias !597461
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.aj, align 8, !noalias !597461
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8, !noalias !597461
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.al, align 8, !noalias !597461
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10175) #52, !noalias !597462
  unreachable

_ZN18nickel_lang_parser8position7TermPos6unwrap17h9a771f857788945fE.exit: ; preds = %bb.m
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.449.0..sroa_idx, i64 12, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 19, ptr %i.am, align 8
  store i64 18, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %_ZN18nickel_lang_parser8position7TermPos6unwrap17h9a771f857788945fE.exit, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN18nickel_lang_parser7uniterm146_$LT$impl$u20$nickel_lang_parser..ast..TryConvert$LT$nickel_lang_parser..uniterm..UniRecord$GT$$u20$for$u20$nickel_lang_parser..ast..typ..Type$GT$11try_convert17h6d515ff5100c792dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(144) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.4.i.i.i.i.i = alloca [96 x i8], align 8  ; 5 uses
  %.sroa.7.i.i.i.i.i = alloca [48 x i8], align 8  ; 4 uses
  %i.e = alloca [120 x i8], align 8               ; 8 uses
  %.sroa.027.i.i.i = alloca [120 x i8], align 8   ; 4 uses
  %.sroa.529.i.i.i = alloca [48 x i8], align 8    ; 4 uses
  %.sroa.1017.i.i.i = alloca [26 x i8], align 2   ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [280 x i8], align 8               ; 4 uses
  %i.h = alloca [160 x i8], align 8               ; 12 uses
  %i.i = alloca [12 x i8], align 4                ; 2 uses
  %i.j = alloca [104 x i8], align 8               ; 4 uses
  %i.k = alloca [144 x i8], align 8               ; 11 uses
  %i.l = alloca [104 x i8], align 8               ; 5 uses
  %i.m = alloca [16 x i8], align 4                ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr %i.n, align 8
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.p = load i32, ptr %i.o, align 8, !range !28, !noundef !19 ; 2 uses
  %.not = icmp eq i32 %i.p, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 124
  call void @_ZN18nickel_lang_parser7uniterm9UniRecord16into_type_strict17h7eb6a5aed37b2710E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %2, ptr noundef nonnull align 8 %1)
  %i.q = load i64, ptr %i.j, align 8, !range !32, !noundef !19
  %i.r = icmp eq i64 %i.q, 18
  br i1 %i.r, label %bb.y, label %bb.z

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597512)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !597512, !noalias !597511, !nonnull !19, !noundef !19 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6.i = load i64, ptr %i.t, align 8, !alias.scope !597512, !noalias !597511, !noundef !19 ; 14 uses
  %i.u = mul i64 %.val6.i, 280                    ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %.val6.i, 32940614417338485
  br i1 %or.cond.i.i.i.i.i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.c
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i.i", label %bb.d

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %i.w = icmp eq i64 %.val6.i, 0
  tail call void @llvm.assume(i1 %i.w)
  br label %.loopexit56

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !597513
  %i.x = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 8) #54, !noalias !597513 ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i"

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.c ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10557) #52
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.e
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i": ; preds = %bb.d
  %i.z = getelementptr inbounds nuw [280 x i8], ptr %.val.i, i64 %.val6.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i"
  %.sroa.012.023.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %.val.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i" ] ; 3 uses
  %.sroa.7.022.i.i.i = phi i64 [ %i.ac, %bb.g ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i" ] ; 3 uses
  %.sroa.10.021.i.i.i = phi i64 [ %i.aa, %bb.g ], [ %.val6.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i" ]
  %i.aa = add nsw i64 %.sroa.10.021.i.i.i, -1     ; 2 uses
  %i.ab = icmp eq ptr %.sroa.012.023.i.i.i, %i.z
  br i1 %i.ab, label %.loopexit56, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !597514
  invoke fastcc void @"_ZN80_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$core..clone..Clone$GT$5clone17hb57ff880ad338284E"(ptr noalias noundef align 8 captures(address) dereferenceable(280) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %.sroa.012.023.i.i.i)
          to label %bb.g unwind label %bb.i, !noalias !597515

bb.g:                                             ; preds = %bb.f
  %i.ac = add nuw nsw i64 %.sroa.7.022.i.i.i, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i.i, i64 280
  %i.ae = getelementptr inbounds nuw [280 x i8], ptr %i.x, i64 %.sroa.7.022.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ae, ptr noundef nonnull align 8 dereferenceable(280) %i.g, i64 280, i1 false), !noalias !597514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !597514
  %i.af = icmp eq i64 %i.aa, 0
  br i1 %i.af, label %.loopexit56, label %.lr.ph.i.i.i

common.resume.i:                                  ; preds = %bb.x, %bb.w, %bb.i
  %.val.i12 = phi ptr [ %i.x, %bb.i ], [ %.sroa.646.0..sroa.646.0..sroa.646.8..sroa.639.0.copyload, %bb.w ], [ %.sroa.646.0..sroa.646.0..sroa.646.8..sroa.639.0.copyload, %bb.x ] ; 2 uses
  %.val1.i = phi i64 [ %.sroa.7.022.i.i.i, %bb.i ], [ %.val6.i, %bb.w ], [ %.val6.i, %bb.x ] ; 2 uses
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %bb.i ], [ %eh.lpad-body.i.i.i, %bb.w ], [ %i.bz, %bb.x ] ; 2 uses
  %i.ag = icmp eq i64 %.val1.i, 0
  br i1 %i.ag, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i", label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %common.resume.i, %.lr.ph.i.i.i13
  %.sroa.0.07.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i13 ], [ 0, %common.resume.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [280 x i8], ptr %.val.i12, i64 %.sroa.0.07.i.i.i
  %i.ai = add nuw i64 %.sroa.0.07.i.i.i, 1        ; 2 uses
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %i.ah), !noalias !597516
  %i.aj = icmp eq i64 %i.ai, %.val1.i
  br i1 %i.aj, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i", label %.lr.ph.i.i.i13

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i": ; preds = %.lr.ph.i.i.i13, %common.resume.i
  %i.ak = icmp eq i64 %.val6.i, 0
  br i1 %i.ak, label %.body.thread, label %bb.h

bb.h:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i"
  %i.al = mul nuw nsw i64 %.val6.i, 280
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i12, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !597516
  br label %.body.thread

bb.i:                                             ; preds = %bb.f
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.loopexit56:                                      ; preds = %.lr.ph.i.i.i, %bb.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i.i"
  %.sroa.646.0..sroa.646.0..sroa.646.8..sroa.639.0.copyload = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i.i" ], [ %i.x, %bb.g ], [ %i.x, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val7.i = load ptr, ptr %i.am, align 8, !alias.scope !597512, !noalias !597511, !nonnull !19, !noundef !19 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val8.i = load i64, ptr %i.an, align 8, !alias.scope !597512, !noalias !597511, !noundef !19 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !597518
  %i.ao = mul i64 %.val8.i, 224                   ; 3 uses
  %or.cond.i.i.i.i.i9.i = icmp ugt i64 %.val8.i, 41175768021673106
  br i1 %or.cond.i.i.i.i.i9.i, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i10.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i10.i: ; preds = %.loopexit56
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i15.i", label %bb.j

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i15.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i10.i
  %i.aq = icmp eq i64 %.val8.i, 0
  tail call void @llvm.assume(i1 %i.aq)
  store i64 0, ptr %i.f, align 8, !noalias !597518
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ar, align 8, !noalias !597518
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %.loopexit

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i10.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !597519
  %i.at = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ao, i64 noundef range(i64 1, 9) 8) #54, !noalias !597519 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.k, label %.lr.ph.i.i12.i

bb.k:                                             ; preds = %bb.j, %.loopexit56
  %.sroa.4.0.ph.i.i.i14.i = phi i64 [ 8, %bb.j ], [ 0, %.loopexit56 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i14.i, i64 %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10557) #52
          to label %.noexc.i unwind label %bb.x, !noalias !597520

.noexc.i:                                         ; preds = %bb.k
  unreachable

.lr.ph.i.i12.i:                                   ; preds = %bb.j
  store i64 %.val8.i, ptr %i.f, align 8, !noalias !597518
  %3 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.at, ptr %3, align 8, !noalias !597518
  %4 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %5 = getelementptr inbounds nuw [224 x i8], ptr %.val7.i, i64 %.val8.i
  %.sroa.4.88..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 80
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.56.0..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.7.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.1017.200..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.1017.i.i.i, i64 6
  br label %bb.l

bb.l:                                             ; preds = %bb.v, %.lr.ph.i.i12.i
  %.sroa.012.049.i.i.i = phi ptr [ %.val7.i, %.lr.ph.i.i12.i ], [ %i.az, %bb.v ] ; 13 uses
  %.sroa.7.048.i.i.i = phi i64 [ 0, %.lr.ph.i.i12.i ], [ %i.ba, %bb.v ] ; 3 uses
  %.sroa.10.047.i.i.i = phi i64 [ %.val8.i, %.lr.ph.i.i12.i ], [ %i.ax, %bb.v ]
  %i.ax = add nsw i64 %.sroa.10.047.i.i.i, -1     ; 2 uses
  %i.ay = icmp eq ptr %.sroa.012.049.i.i.i, %5
  br i1 %i.ay, label %.loopexit, label %bb.m

.loopexit.i.i.i:                                  ; preds = %bb.n
  %lpad.loopexit.i.i13.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.049.i.i.i, i64 224
  %i.ba = add nuw nsw i64 %.sroa.7.048.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1017.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597522)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597523)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.049.i.i.i, i64 176
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !597524, !noalias !597525, !align !18, !noundef !19 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.049.i.i.i, i64 184
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !597524, !noalias !597525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !597526
  %i.bf = load i64, ptr %.sroa.012.049.i.i.i, align 8, !range !32, !alias.scope !597524, !noalias !597525, !noundef !19
  %.not11.i.i.i.i.i = icmp eq i64 %i.bf, 18
  br i1 %.not11.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !597526
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5310f34a6db5b37cE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.012.049.i.i.i)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !597527

.noexc.i.i.i:                                     ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.012.049.i.i.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.88..sroa_idx.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !noalias !597525
  %.sroa.08.0.copyload.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !597526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i.i.i.i.i, i64 80, i1 false), !noalias !597526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !597526
  br label %bb.o

bb.o:                                             ; preds = %.noexc.i.i.i, %bb.m
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %.sroa.08.0.copyload.i.i.i.i.i, %.noexc.i.i.i ], [ 18, %bb.m ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.012.049.i.i.i, i64 104
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !597524, !noalias !597525, !nonnull !19, !align !24, !noundef !19
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.012.049.i.i.i, i64 112
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !597524, !noalias !597525, !noundef !19
  store i64 %.sroa.04.0.i.i.i.i.i, ptr %i.e, align 8, !noalias !597526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.56.0..sroa_idx7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.i.i.i.i.i, i64 96, i1 false), !noalias !597526
  store ptr %i.bi, ptr %i.av, align 8, !noalias !597526
  store i64 %i.bk, ptr %i.aw, align 8, !noalias !597526
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.012.049.i.i.i, i64 192
  %i.bm = load i8, ptr %i.bl, align 8, !range !21, !alias.scope !597524, !noalias !597525, !noundef !19
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.049.i.i.i, i64 193
  %i.bo = load i8, ptr %i.bn, align 1, !range !21, !alias.scope !597524, !noalias !597525, !noundef !19
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.012.049.i.i.i, i64 120 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !range !41, !alias.scope !597524, !noalias !597525, !noundef !19 ; 3 uses
  %i.br = icmp ne i64 %i.bq, -9223372036854775805
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = add nsw i64 %i.bq, 9223372036854775807
  %i.bt = icmp ugt i64 %i.bq, -9223372036854775808
  %i.bu = select i1 %i.bt, i64 %i.bs, i64 2
  switch i64 %i.bu, label %bb.p [
    i64 0, label %bb.v
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 3, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  br label %bb.v

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !597526
  invoke fastcc void @"_ZN60_$LT$malachite_q..Rational$u20$as$u20$core..clone..Clone$GT$5clone17hb26a37bf83f480deE"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bp)
          to label %bb.u unwind label %bb.t, !noalias !597525

bb.s:                                             ; preds = %bb.o
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17hd5a011e7b9efacffE"(ptr noalias noundef align 8 dereferenceable(120) %i.e) #53, !noalias !597526
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %.sroa.01.0.copyload2.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !597526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx3.i.i.i.i.i, i64 48, i1 false), !noalias !597528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !597526
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.o
  %.sroa.01.0.i.i.i.i.i = phi i64 [ -9223372036854775804, %bb.s ], [ -9223372036854775806, %bb.q ], [ %.sroa.01.0.copyload2.i.i.i.i.i, %bb.u ], [ -9223372036854775807, %bb.o ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.049.i.i.i, i64 200
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, null
  %.sroa.5.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 undef, i64 %i.be
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.027.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.027.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false), !noalias !597518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !597526
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.sroa.1017.200..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.bw, i64 20, i1 false), !alias.scope !597529, !noalias !597527
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.529.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.i.i.i.i, i64 48, i1 false), !noalias !597518
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.bx = getelementptr inbounds nuw [224 x i8], ptr %i.at, i64 %.sroa.7.048.i.i.i ; 8 uses
  %.sroa.1034.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.1034.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(26) %.sroa.1017.i.i.i, i64 26, i1 false), !noalias !597518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.027.i.i.i, i64 120, i1 false), !noalias !597518
  %.sroa.428.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 120
  store i64 %.sroa.01.0.i.i.i.i.i, ptr %.sroa.428.0..sroa_idx.i.i.i, align 8, !noalias !597518
  %.sroa.529.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.529.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.529.i.i.i, i64 48, i1 false), !noalias !597518
  %.sroa.630.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 176
  store ptr %i.bc, ptr %.sroa.630.0..sroa_idx.i.i.i, align 8, !noalias !597518
  %.sroa.731.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 184
  store i64 %.sroa.5.0.i.i.i.i.i, ptr %.sroa.731.0..sroa_idx.i.i.i, align 8, !noalias !597518
  %.sroa.832.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 192
  store i8 %i.bm, ptr %.sroa.832.0..sroa_idx.i.i.i, align 8, !noalias !597518
  %.sroa.933.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 193
  store i8 %i.bo, ptr %.sroa.933.0..sroa_idx.i.i.i, align 1, !noalias !597518
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.529.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1017.i.i.i)
  %i.by = icmp eq i64 %i.ax, 0
  br i1 %i.by, label %.loopexit, label %bb.l

bb.w:                                             ; preds = %bb.t, %.loopexit.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %lpad.loopexit.i.i13.i, %.loopexit.i.i.i ]
  store i64 %.sroa.7.048.i.i.i, ptr %4, align 8, !alias.scope !597530, !noalias !597518
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..Include$GT$$GT$17hf1e0209f7a450a31E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #53, !noalias !597518
  br label %common.resume.i

bb.x:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

.body:                                            ; preds = %.loopexit, %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.y:                                             ; preds = %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cb = icmp eq i32 %i.p, 2
  br i1 %i.cb, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 104, i1 false)
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.2.0..sroa_idx, i64 12, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa
  %.sroa.03.0 = phi i32 [ 1, %bb.aa ], [ 0, %bb.y ]
  %i.cc = icmp eq i32 %.sroa.0.0.copyload, 2
  br i1 %i.cc, label %.noexc7, label %bb.ac, !prof !64

.noexc7:                                          ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !597531
  store ptr @10189, ptr %i.b, align 8, !noalias !597531
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.cd, align 8, !noalias !597531
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ce, align 8, !noalias !597531
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cf, align 8, !noalias !597531
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.cg, align 8, !noalias !597531
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10176) #52
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.214.0..sroa_idx, i64 12, i1 false)
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(28) %i.ca, i64 28, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.ch, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.03.0, ptr %.sroa.6.0..sroa_idx, align 4
  store i64 18, ptr %0, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac, %"_ZN4core3ptr237drop_in_place$LT$nickel_lang_parser..uniterm..$LT$impl$u20$nickel_lang_parser..ast..TryConvert$LT$nickel_lang_parser..uniterm..UniRecord$GT$$u20$for$u20$nickel_lang_parser..ast..typ..Type$GT$..try_convert..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7164c3e288aaea54E.exit"
  ret void

.loopexit:                                        ; preds = %bb.v, %bb.l, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i15.i"
  %6 = phi ptr [ %i.as, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i.i15.i" ], [ %4, %bb.l ], [ %4, %bb.v ]
  store i64 %.val8.i, ptr %6, align 8, !noalias !597518
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !597512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !597518
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ck = load i8, ptr %i.cj, align 8, !range !21, !alias.scope !597512, !noalias !597511, !noundef !19
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.n, i64 16, i1 false), !alias.scope !597520
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !alias.scope !597520
  store i64 %.val6.i, ptr %i.k, align 8, !noalias !597512
  %.sroa.639.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.646.0..sroa.646.0..sroa.646.8..sroa.639.0.copyload, ptr %.sroa.639.0..sroa_idx40, align 8, !noalias !597512
  %.sroa.842.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.val6.i, ptr %.sroa.842.0..sroa_idx43, align 8, !noalias !597512
  %.sroa.4.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store i32 3, ptr %.sroa.4.0..sroa_idx1.i, align 8, !alias.scope !597511, !noalias !597512
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store i8 %i.ck, ptr %i.co, align 8, !alias.scope !597511, !noalias !597512
  invoke void @_ZN18nickel_lang_parser7uniterm9UniRecord16into_type_strict17h7eb6a5aed37b2710E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.k, ptr noundef nonnull align 8 %1)
          to label %bb.ae unwind label %.body

bb.ae:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.015.0.copyload16 = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.7.0.copyload24 = load i64, ptr %.sroa.7.0..sroa_idx23, align 8 ; 3 uses
  %i.cp = load i64, ptr %i.l, align 8, !range !32, !noundef !19
  %i.cq = icmp eq i64 %i.cp, 18
  br i1 %i.cq, label %.noexc9, label %bb.ah

.noexc9:                                          ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.015.0.copyload16, ptr %i.h, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.val.i, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.val6.i, ptr %.sroa.6.0..sroa_idx20, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.7.0.copyload24, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %.val7.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %.val8.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.n, i64 96, i1 false)
  %.sroa.1030.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store ptr %1, ptr %.sroa.1030.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store ptr %i.m, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !597532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN18nickel_lang_parser7uniterm140_$LT$impl$u20$nickel_lang_parser..ast..TryConvert$LT$nickel_lang_parser..uniterm..UniRecord$GT$$u20$for$u20$nickel_lang_parser..ast..Ast$GT$11try_convert17hc486562b541ae93cE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.h)
  %i.cr = load i32, ptr %i.a, align 8, !range !30, !noalias !597533, !noundef !19
  %.not.i8 = icmp eq i32 %i.cr, 25
  br i1 %.not.i8, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.noexc9
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cs, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !597534
  store i64 18, ptr %0, align 8, !alias.scope !597532, !noalias !597534
  br label %bb.ak

bb.ag:                                            ; preds = %.noexc9
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !597535, !nonnull !19, !noundef !19 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !597535, !nonnull !19, !noundef !19 ; 2 uses
  %i.cy = load ptr, ptr %i.cv, align 8, !noalias !597535, !nonnull !19, !noundef !19 ; 2 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = and i64 %i.cz, 7
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr i8, ptr %i.cx, i64 %i.db  ; 3 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.cy to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = icmp ult ptr %i.dc, %i.cy
  %i.dh = icmp ult i64 %i.df, 48
  %or.cond.i.i = or i1 %i.dg, %i.dh
  br i1 %or.cond.i.i, label %.noexc10, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit.i": ; preds = %bb.ag
  %i.di = getelementptr i8, ptr %i.dc, i64 -48    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.di) ], !noalias !597536
  store ptr %i.di, ptr %i.cw, align 8, !noalias !597535
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i"

.noexc10:                                         ; preds = %bb.ag
  %i.dj = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef 48) ; 2 uses
  %.not5.i.i = icmp eq ptr %i.dj, null
  br i1 %.not5.i.i, label %.noexc11, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i", !prof !20

.noexc11:                                         ; preds = %.noexc10
  call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i": ; preds = %.noexc10, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit.i"
  %.sroa.0.0.i.i = phi ptr [ %i.di, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit.i" ], [ %i.dj, %.noexc10 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i64 48, i1 false), !noalias !597533
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !noalias !597534
  store i64 9, ptr %0, align 8, !alias.scope !597532, !noalias !597534
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !597532, !noalias !597534
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.l, i64 104, i1 false)
  %i.dk = icmp eq i64 %.val6.i, 0
  br i1 %i.dk, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ah, %.lr.ph.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i ], [ 0, %bb.ah ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [280 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i.i.i
  %i.dm = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i, 1 ; 2 uses
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %i.dl), !noalias !597537
  %i.dn = icmp eq i64 %i.dm, %.val6.i
  br i1 %i.dn, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.ah
  %i.do = icmp eq i64 %.sroa.015.0.copyload16, 0
  br i1 %i.do, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h1ad22147a9e3645dE.exit.i.i", label %bb.ai

bb.ai:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i"
  %i.dp = mul nuw i64 %.sroa.015.0.copyload16, 280
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.dp, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !597537
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h1ad22147a9e3645dE.exit.i.i"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h1ad22147a9e3645dE.exit.i.i": ; preds = %bb.ai, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i.i.i"
  %i.dq = icmp eq i64 %.val8.i, 0
  br i1 %i.dq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i", label %.lr.ph.i.i.i3.i.i

.lr.ph.i.i.i3.i.i:                                ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h1ad22147a9e3645dE.exit.i.i", %.lr.ph.i.i.i3.i.i
  %.sroa.0.07.i.i.i4.i.i = phi i64 [ %i.ds, %.lr.ph.i.i.i3.i.i ], [ 0, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h1ad22147a9e3645dE.exit.i.i" ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [224 x i8], ptr %.val7.i, i64 %.sroa.0.07.i.i.i4.i.i
  %i.ds = add nuw nsw i64 %.sroa.0.07.i.i.i4.i.i, 1 ; 2 uses
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(224) %i.dr), !noalias !597538
  %i.dt = icmp eq i64 %i.ds, %.val8.i
  br i1 %i.dt, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i", label %.lr.ph.i.i.i3.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i": ; preds = %.lr.ph.i.i.i3.i.i, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h1ad22147a9e3645dE.exit.i.i"
  %i.du = icmp eq i64 %.sroa.7.0.copyload24, 0
  br i1 %i.du, label %"_ZN4core3ptr237drop_in_place$LT$nickel_lang_parser..uniterm..$LT$impl$u20$nickel_lang_parser..ast..TryConvert$LT$nickel_lang_parser..uniterm..UniRecord$GT$$u20$for$u20$nickel_lang_parser..ast..typ..Type$GT$..try_convert..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7164c3e288aaea54E.exit", label %bb.aj

bb.aj:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i"
  %i.dv = mul nuw i64 %.sroa.7.0.copyload24, 224
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !597538
  br label %"_ZN4core3ptr237drop_in_place$LT$nickel_lang_parser..uniterm..$LT$impl$u20$nickel_lang_parser..ast..TryConvert$LT$nickel_lang_parser..uniterm..UniRecord$GT$$u20$for$u20$nickel_lang_parser..ast..typ..Type$GT$..try_convert..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7164c3e288aaea54E.exit"

"_ZN4core3ptr237drop_in_place$LT$nickel_lang_parser..uniterm..$LT$impl$u20$nickel_lang_parser..ast..TryConvert$LT$nickel_lang_parser..uniterm..UniRecord$GT$$u20$for$u20$nickel_lang_parser..ast..typ..Type$GT$..try_convert..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7164c3e288aaea54E.exit": ; preds = %bb.aj, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc769ffc305d5f3f7E.exit.i.i.i", %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ad

bb.ak:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i", %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %"_ZN4core3ptr237drop_in_place$LT$nickel_lang_parser..uniterm..$LT$impl$u20$nickel_lang_parser..ast..TryConvert$LT$nickel_lang_parser..uniterm..UniRecord$GT$$u20$for$u20$nickel_lang_parser..ast..typ..Type$GT$..try_convert..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7164c3e288aaea54E.exit"

.body.thread:                                     ; preds = %bb.h, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i", %.body
  %eh.lpad-body51 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %common.resume.op.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0066114c2075a720E.exit.i" ], [ %common.resume.op.i, %bb.h ]
  tail call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..uniterm..UniRecord$GT$17hfc267afbbe86906fE"(ptr noalias noundef align 8 dereferenceable(144) %2) #53
  resume { ptr, i32 } %eh.lpad-body51
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @_ZN18nickel_lang_parser7uniterm9UniRecord14is_record_type17ha0e158c45aa94e41E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !19 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 280
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h5149f9f61efe64cdE.exit", label %.lr.ph

bb.b:                                             ; preds = %"_ZN18nickel_lang_parser7uniterm9UniRecord14is_record_type28_$u7b$$u7b$closure$u7d$$u7d$17hecc6edc110858a64E.exit.i"
  %i.g = icmp eq ptr %i.i, %i.e
  br i1 %i.g, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h5149f9f61efe64cdE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 280 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !597543, !noalias !597544, !noundef !19
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.n = load i32, ptr %i.m, align 8, !range !28, !alias.scope !597543, !noalias !597544, !noundef !19
  %.not.i.i = icmp ne i32 %i.n, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !597543, !noalias !597544, !align !18
  %.not4.i.i = icmp ne ptr %i.p, null
  %or.cond7.not1.i.i = select i1 %.not.i.i, i1 true, i1 %.not4.i.i
  %i.q = load i64, ptr %i.h, align 8, !range !32, !alias.scope !597543, !noalias !597544
  %.not5.i.i = icmp eq i64 %i.q, 18
end_hunk_2
begin_hunk_3_@"_ZN63_$LT$pretty..Doc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ded24e6df84c84fE":bb.a

.noexc38:                                         ; preds = %bb.af
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hb4596846ac05d431E.exit.i36": ; preds = %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h341bf50c8e048d3dE.exit35"
  %i.ci = load ptr, ptr %i.ca, align 8, !alias.scope !601114, !nonnull !19, !align !24, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !601115
  invoke fastcc void @"_ZN63_$LT$pretty..Doc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4ded24e6df84c84fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci)
          to label %bb.at unwind label %bb.ag, !noalias !601114, !inline_history !601059

bb.ag:                                            ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hb4596846ac05d431E.exit.i36"
  %i.cj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 24, i64 noundef 8) #54, !noalias !601114, !inline_history !601056
  br label %.body39

bb.ah:                                            ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cl = load <2 x ptr>, ptr %i.ck, align 8
  %.val3 = load ptr, ptr %i.ck, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %.val.i.i = load i64, ptr %.val3, align 8, !noundef !19 ; 2 uses
  %i.cm = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = add i64 %.val.i.i, 1                    ; 2 uses
  store i64 %i.cn, ptr %.val3, align 8
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.ai, label %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5fb686adedb894acE.exit", !prof !20

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.trap()
  unreachable

"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5fb686adedb894acE.exit": ; preds = %bb.ah
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.cl, ptr %i.cp, align 8
  store i8 12, ptr %0, align 8
  br label %bb.am

bb.aj:                                            ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cr = load <2 x ptr>, ptr %i.cq, align 8
  %.val = load ptr, ptr %i.cq, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %.val.i.i7 = load i64, ptr %.val, align 8, !noundef !19 ; 2 uses
  %i.cs = icmp ne i64 %.val.i.i7, 0
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = add i64 %.val.i.i7, 1                   ; 2 uses
  store i64 %i.ct, ptr %.val, align 8
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.ak, label %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5fb686adedb894acE.exit8", !prof !20

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.trap()
  unreachable

"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5fb686adedb894acE.exit8": ; preds = %bb.aj
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.cr, ptr %i.cv, align 8
  store i8 13, ptr %0, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.a
  store i8 14, ptr %0, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.at, %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h341bf50c8e048d3dE.exit32", %bb.ar, %bb.ao, %bb.al, %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5fb686adedb894acE.exit8", %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5fb686adedb894acE.exit", %bb.y, %bb.x, %bb.w, %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h341bf50c8e048d3dE.exit29", %bb.s, %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h341bf50c8e048d3dE.exit26", %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h341bf50c8e048d3dE.exit14", %bb.b
  ret void

bb.an:                                            ; preds = %bb.f
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.an
  %eh.lpad-body = phi { ptr, i32 } [ %i.cw, %bb.an ], [ %i.x, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE"(ptr noalias noundef align 8 dereferenceable(8) %i.m) #53
          to label %common.resume unwind label %bb.ap

bb.ao:                                            ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hb4596846ac05d431E.exit.i9"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !601099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !601099
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %i.cy, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.am

bb.ap:                                            ; preds = %.body39, %.body21, %.body
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

bb.aq:                                            ; preds = %bb.n
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body21

.body21:                                          ; preds = %bb.o, %bb.aq
  %eh.lpad-body22 = phi { ptr, i32 } [ %i.da, %bb.aq ], [ %i.an, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE"(ptr noalias noundef align 8 dereferenceable(8) %i.l) #53
          to label %common.resume unwind label %bb.ap

bb.ar:                                            ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hb4596846ac05d431E.exit.i18"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !601105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !601105
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ak, ptr %i.dc, align 8
  store i8 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.am

bb.as:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body39

.body39:                                          ; preds = %bb.ag, %bb.as
  %eh.lpad-body40 = phi { ptr, i32 } [ %i.dd, %bb.as ], [ %i.cj, %bb.ag ]
  invoke fastcc void @"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE"(ptr noalias noundef align 8 dereferenceable(8) %i.k) #53
          to label %common.resume unwind label %bb.ap

bb.at:                                            ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17hb4596846ac05d431E.exit.i36"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !601115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !601115
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cg, ptr %i.df, align 8
  store i8 11, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.am
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17he92900f0044e3f05E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !62, !noundef !19
  %.not = icmp eq i64 %i.b, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10227, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10226)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10225, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb8412a29d361c4fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !601125
  %i.c = mul i64 %.16.val, 24                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.e = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.e)
  store i64 0, ptr %i.b, align 8, !noalias !601125
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !601125
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h715d582898169aaeE.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !601126
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #54, !noalias !601126 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10557) #52, !noalias !601125
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !601125
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !601125
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i", %bb.e
  %.sroa.012.023.i = phi ptr [ %i.p, %bb.e ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i" ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.o, %bb.e ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i" ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.m, %bb.e ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i" ]
  %i.m = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.n = icmp eq ptr %.sroa.012.023.i, %i.l
  br i1 %i.n, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h715d582898169aaeE.exit", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !601125
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10558)
          to label %bb.e unwind label %bb.f, !noalias !601127

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !601127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !601125
  %i.r = icmp eq i64 %i.m, 0
  br i1 %i.r, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h715d582898169aaeE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.k, align 8, !alias.scope !601128, !noalias !601125
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #53, !noalias !601127
  resume { ptr, i32 } %lpad.loopexit.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h715d582898169aaeE.exit": ; preds = %.lr.ph.i, %bb.e, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i"
  %1 = phi ptr [ %i.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.thread.i" ], [ %i.k, %bb.e ], [ %i.k, %.lr.ph.i ]
  store i64 %.16.val, ptr %1, align 8, !noalias !601125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !601129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !601125
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..fmt..Display$GT$3fmt17h6bbcc61a1168e38bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !601140
  store i64 0, ptr %i.b, align 8, !noalias !601140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !601140
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @"_ZN18nickel_lang_parser3ast6pretty128_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..Node$GT$6pretty17h68994528711b0d65E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %i.b), !noalias !601140, !inline_history !69
  %i.d = load i8, ptr %i.a, align 8, !range !67, !noalias !601140, !noundef !19
  %.not.i = icmp eq i8 %i.d, 15                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !601140, !nonnull !19 ; 4 uses
  %.sroa.01.0.i = select i1 %.not.i, ptr %i.f, ptr %i.a
  %i.g = invoke fastcc noundef zeroext i1 @_ZN6pretty6render4best17hbf081fd1a04c1842E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.0.i, ptr nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$GT$17hd042ef62d824be5dE"(ptr noalias noundef align 8 dereferenceable(32) %i.a) #53
          to label %common.resume.i unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h55c17926cb1cc05eE"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #56
          to label %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i" unwind label %bb.e, !noalias !601141, !inline_history !4

common.resume.i:                                  ; preds = %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #54, !noalias !601141, !inline_history !68
  br label %common.resume.i

"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i": ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #54, !noalias !601141, !inline_history !68
  br label %_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h89e97459e4d2bc87E.exit

bb.f:                                             ; preds = %bb.c
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h55c17926cb1cc05eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
  br label %_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h89e97459e4d2bc87E.exit

bb.g:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h89e97459e4d2bc87E.exit: ; preds = %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !601140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !601140
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..fmt..Display$GT$3fmt17ha0bc4c3d6586aee6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !601152
  store i64 0, ptr %i.b, align 8, !noalias !601152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !601152
  call void @"_ZN18nickel_lang_parser3ast6pretty128_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..Node$GT$6pretty17h68994528711b0d65E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noundef nonnull align 8 %i.b), !noalias !601152
  %i.c = load i8, ptr %i.a, align 8, !range !67, !noalias !601152, !noundef !19
  %.not.i = icmp eq i8 %i.c, 15                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !601152, !nonnull !19 ; 4 uses
  %.sroa.01.0.i = select i1 %.not.i, ptr %i.e, ptr %i.a
  %i.f = invoke fastcc noundef zeroext i1 @_ZN6pretty6render4best17hbf081fd1a04c1842E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.0.i, ptr nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$GT$17hd042ef62d824be5dE"(ptr noalias noundef align 8 dereferenceable(32) %i.a) #53
          to label %common.resume.i unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h55c17926cb1cc05eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #56
          to label %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i" unwind label %bb.e, !noalias !601153, !inline_history !4

common.resume.i:                                  ; preds = %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #54, !noalias !601153, !inline_history !68
  br label %common.resume.i

"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i": ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #54, !noalias !601153, !inline_history !68
  br label %_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h4dbd1c40c498726eE.exit

bb.f:                                             ; preds = %bb.c
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h55c17926cb1cc05eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
  br label %_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h4dbd1c40c498726eE.exit

bb.g:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h4dbd1c40c498726eE.exit: ; preds = %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !601152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !601152
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN69_$LT$alloc..string..String$u20$as$u20$pretty..Pretty$LT$D$C$A$GT$$GT$6pretty17hc8f30e0889ea6fe1E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601167)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.0.0.copyload45.i = load i64, ptr %1, align 8, !alias.scope !601168, !noalias !601169 ; 6 uses
  %.sroa.10.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.10.0.copyload48.i = load ptr, ptr %.sroa.10.0..sroa_idx47.i, align 8, !alias.scope !601168, !noalias !601169 ; 7 uses
  %.sroa.13.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.13.0.copyload50.i = load i64, ptr %.sroa.13.0..sroa_idx49.i, align 8, !alias.scope !601168, !noalias !601169 ; 3 uses
  %i.c = icmp eq i64 %.sroa.13.0.copyload50.i, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %.sroa.0.0.copyload45.i, -9223372036854775808
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.a
  %.sroa.8.sroa.8.0.i = phi ptr [ %.sroa.10.0.copyload48.i, %bb.e ], [ undef, %bb.a ]
  %.sroa.04.0.i = phi i8 [ 8, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !601170
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.d, align 8, !noalias !601170
  store i8 %.sroa.04.0.i, ptr %i.a, align 8, !noalias !601170
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.8.sroa.8.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !601170
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.13.0.copyload50.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !601170
  invoke fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$13with_utf8_len17h81c24c807de64b28E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.f, !noalias !601167

bb.d:                                             ; preds = %bb.b
  store i64 %.sroa.0.0.copyload45.i, ptr %i.b, align 8, !noalias !601170
  %.sroa.10.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.copyload48.i, ptr %.sroa.10.0..sroa_idx46.i, align 8, !noalias !601170
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.13.0.copyload50.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !601170
  %i.e = call { ptr, i64 } @"_ZN5alloc6string107_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$str$GT$$GT$4from17hb136f3cbea972320E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !601170 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !601170
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.h, align 8, !noalias !601170
  store i8 7, ptr %i.a, align 8, !noalias !601170
  %.sroa.10.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.10.0..sroa_idx25.i, align 8, !noalias !601170
  %.sroa.12.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %.sroa.12.0..sroa_idx27.i, align 8, !noalias !601170
  call fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$13with_utf8_len17h81c24c807de64b28E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a), !noalias !601167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !601170
  br label %_ZN6pretty12DocAllocator4text17h466eec749dde0602E.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload48.i) ]
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  switch i64 %.sroa.0.0.copyload45.i, label %bb.i [
    i64 -9223372036854775808, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit41.i"
    i64 0, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit41.i"
  ]

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !601170
  switch i64 %.sroa.0.0.copyload45.i, label %bb.h [
    i64 -9223372036854775808, label %_ZN6pretty12DocAllocator4text17h466eec749dde0602E.exit
    i64 0, label %_ZN6pretty12DocAllocator4text17h466eec749dde0602E.exit
  ]

bb.h:                                             ; preds = %bb.g
end_hunk_3
