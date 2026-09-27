Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19729
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZN4core4iter6traits8iterator8Iterator7collect17hea3ac4c1a1a165b4E:bb.a
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1f5e65e181c10fa8E.exit.i.i..noexc11_crit_edge.i.i.i" unwind label %bb.q, !noalias !36578

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1f5e65e181c10fa8E.exit.i.i..noexc11_crit_edge.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1f5e65e181c10fa8E.exit.i.i.i.i.i"
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !36594, !noalias !36595
  br label %.noexc11.i.i.i

.noexc11.i.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1f5e65e181c10fa8E.exit.i.i..noexc11_crit_edge.i.i.i", %.loopexit.i.i.i.i.i
  %i.cu = phi ptr [ %.pre.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1f5e65e181c10fa8E.exit.i.i..noexc11_crit_edge.i.i.i" ], [ %i.bg, %.loopexit.i.i.i.i.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.bh
  store i16 %.val.i.i.i.i.i.i.i, ptr %i.cv, align 2, !noalias !36596
  %i.cw = add nuw nsw i64 %i.bh, 1                ; 2 uses
  store i64 %i.cw, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !36594, !noalias !36595
  %i.cx = icmp eq i64 %i.bi, 0
  br i1 %i.cx, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h3d5f945e2e596ea9E.exit.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h4d5b8efae3111f73E.exit.i.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !36597, !noalias !36598
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.cy, align 8, !alias.scope !36597, !noalias !36598
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cz, align 8, !alias.scope !36597, !noalias !36598
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h95ff4fa88edb65b7E.exit"

bb.q:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1f5e65e181c10fa8E.exit.i.i.i.i.i"
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load i64, ptr %i.a, align 8, !noalias !36578 ; 2 uses
  %i.da = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.da, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h82526423d7af7627E.exit.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val7.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !36578, !nonnull !23, !noundef !23
  %i.db = shl nuw i64 %.val.i.i.i, 1
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 2) #45, !noalias !36578
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h82526423d7af7627E.exit.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h3d5f945e2e596ea9E.exit.i.i.i": ; preds = %.noexc11.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h63ca52afc7dc253fE.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !36598
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h95ff4fa88edb65b7E.exit"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h82526423d7af7627E.exit.i.i.i": ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %lpad.loopexit.i.i.i

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h95ff4fa88edb65b7E.exit": ; preds = %bb.p, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h3d5f945e2e596ea9E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36578
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter8adapters7flatten17and_then_or_clear17h32125d25baf56d89E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.11 = alloca [16 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.b = load i64, ptr %1, align 8, !range !29, !noundef !23 ; 3 uses
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36636
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7), !noalias !36637
  %i.c = load i64, ptr %i.a, align 8, !range !29, !noalias !36636, !noundef !23 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.525.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.525.0.copyload.i.i.i = load ptr, ptr %.sroa.525.0..sroa_idx.i.i.i, align 8, !noalias !36636 ; 3 uses
  %.sroa.626.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.626.0.copyload.i.i.i = load i64, ptr %.sroa.626.0..sroa_idx.i.i.i, align 8, !noalias !36636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36636
  call void @llvm.experimental.noalias.scope.decl(metadata !36638)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !36639, !noalias !36640, !nonnull !23, !noundef !23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !36639, !noalias !36640, !nonnull !23, !noundef !23 ; 4 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15bf86716a2f7c27E.exit.thread.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15bf86716a2f7c27E.exit.i.i.i"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36636
  br label %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit.thread.thread

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15bf86716a2f7c27E.exit.i.i.i": ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.i, ptr %i.f, align 8, !alias.scope !36639, !noalias !36640
  %.sroa.013.0.copyload14.i.i.i = load i64, ptr %i.g, align 8, !noalias !36641 ; 2 uses
  %.not1.i.i.i = icmp eq i64 %.sroa.013.0.copyload14.i.i.i, -9223372036854775808
  br i1 %.not1.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15bf86716a2f7c27E.exit.thread.i.i.i", label %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15bf86716a2f7c27E.exit.thread.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15bf86716a2f7c27E.exit.i.i.i", %bb.c
  %i.j = icmp eq i64 %i.c, 0
  br i1 %i.j, label %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit.thread.thread, label %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit.thread

_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit: ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15bf86716a2f7c27E.exit.i.i.i"
  %.sroa.715.0..sroa_idx16.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715.0..sroa_idx16.i.i.i, i64 16, i1 false)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  ret void

_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit.thread: ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15bf86716a2f7c27E.exit.thread.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.525.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.525.0.copyload.i.i.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !36642
  %.pre = load i64, ptr %1, align 8, !range !29, !alias.scope !36643 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36643)
  %i.k = icmp eq i64 %.pre, -9223372036854775808
  br i1 %i.k, label %"_ZN4core3ptr214drop_in_place$LT$core..option..Option$LT$core..iter..adapters..zip..Zip$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$C$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$$GT$$GT$17ha9218ced63b268d2E.exit", label %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit.thread.thread

_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit.thread.thread: ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15bf86716a2f7c27E.exit.thread.i.i.i", %bb.d, %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit.thread
  %i.l = phi i64 [ %.pre, %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit.thread ], [ %i.b, %bb.d ], [ %i.b, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15bf86716a2f7c27E.exit.thread.i.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36644)
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %"_ZN4core3ptr85drop_in_place$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$GT$17h4c8574f8183b5373E.exit.i.i", label %bb.g

bb.g:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit.thread.thread
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load ptr, ptr %i.n, align 8, !alias.scope !36645, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !36646
  br label %"_ZN4core3ptr85drop_in_place$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$GT$17h4c8574f8183b5373E.exit.i.i"

"_ZN4core3ptr85drop_in_place$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$GT$17h4c8574f8183b5373E.exit.i.i": ; preds = %bb.g, %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit.thread.thread
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !36647)
  call void @llvm.experimental.noalias.scope.decl(metadata !36648)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !36649, !nonnull !23, !noundef !23 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val2.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !36649, !nonnull !23, !noundef !23 ; 2 uses
  %i.s = ptrtoint ptr %.val2.i.i.i.i to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !36650)
  %i.w = icmp eq ptr %.val2.i.i.i.i, %i.q
  br i1 %i.w, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h515fd435de78c1b8E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN4core3ptr85drop_in_place$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$GT$17h4c8574f8183b5373E.exit.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.y, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr85drop_in_place$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$GT$17h4c8574f8183b5373E.exit.i.i" ] ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.y = add nuw i64 %.sroa.0.010.i.i.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36651)
  call void @llvm.experimental.noalias.scope.decl(metadata !36652)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !36653, !noalias !36649 ; 2 uses
  %i.z = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !36653, !noalias !36649, !nonnull !23, !noundef !23
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !36654
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i": ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %i.ab = icmp eq i64 %i.y, %i.v
  br i1 %i.ab, label %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h515fd435de78c1b8E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h515fd435de78c1b8E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.i.i.i.i.i", %"_ZN4core3ptr85drop_in_place$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$GT$17h4c8574f8183b5373E.exit.i.i"
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !36649, !noundef !23 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %"_ZN4core3ptr214drop_in_place$LT$core..option..Option$LT$core..iter..adapters..zip..Zip$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$C$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$$GT$$GT$17ha9218ced63b268d2E.exit", label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h515fd435de78c1b8E.exit.i.i.i.i"
  %i.af = load ptr, ptr %i.o, align 8, !alias.scope !36649, !nonnull !23, !noundef !23
  %i.ag = mul nuw i64 %i.ad, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !36649
  br label %"_ZN4core3ptr214drop_in_place$LT$core..option..Option$LT$core..iter..adapters..zip..Zip$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$C$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$$GT$$GT$17ha9218ced63b268d2E.exit"

bb.j:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit, %"_ZN4core3ptr214drop_in_place$LT$core..option..Option$LT$core..iter..adapters..zip..Zip$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$C$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$$GT$$GT$17ha9218ced63b268d2E.exit"
  %.sroa.10.1 = phi i64 [ undef, %"_ZN4core3ptr214drop_in_place$LT$core..option..Option$LT$core..iter..adapters..zip..Zip$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$C$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$$GT$$GT$17ha9218ced63b268d2E.exit" ], [ %.sroa.013.0.copyload14.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit ]
  %.sroa.9.1 = phi i64 [ undef, %"_ZN4core3ptr214drop_in_place$LT$core..option..Option$LT$core..iter..adapters..zip..Zip$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$C$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$$GT$$GT$17ha9218ced63b268d2E.exit" ], [ %.sroa.626.0.copyload.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit ]
  %.sroa.8.1 = phi ptr [ undef, %"_ZN4core3ptr214drop_in_place$LT$core..option..Option$LT$core..iter..adapters..zip..Zip$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$C$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$$GT$$GT$17ha9218ced63b268d2E.exit" ], [ %.sroa.525.0.copyload.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit ]
  %.sroa.0.1 = phi i64 [ -9223372036854775808, %"_ZN4core3ptr214drop_in_place$LT$core..option..Option$LT$core..iter..adapters..zip..Zip$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$C$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$$GT$$GT$17ha9218ced63b268d2E.exit" ], [ %i.c, %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit ]
  store i64 %.sroa.0.1, ptr %0, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  br label %bb.f

"_ZN4core3ptr214drop_in_place$LT$core..option..Option$LT$core..iter..adapters..zip..Zip$LT$core..iter..sources..repeat..Repeat$LT$alloc..string..String$GT$$C$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$$GT$$GT$17ha9218ced63b268d2E.exit": ; preds = %bb.i, %"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h515fd435de78c1b8E.exit.i.i.i.i", %_ZN4core3ops8function6FnOnce9call_once17h26402ac2b976c146E.exit.thread
  store i64 -9223372036854775808, ptr %1, align 8
  br label %bb.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h01bcf3785fc773f1E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h03c4b2dc6133464dE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h04bb041a16050a78E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h08f289ce712c3120E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h0de2c7b2302a99cbE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h12b972b1d6bd85f2E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h1783c5800eb520adE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h186c485bc2d1d9feE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h1b40ef07aca40411E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h1e5b283d01793e40E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h1ee4580670321c07E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h2439d41097a4d661E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h265af488b4a46576E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h28dfee4a19bdce63E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h314077c3b22672bfE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h32eedcca4045ae05E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h37d42f150510a089E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h3c793fed534961c6E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h46bb1f6ca62e862aE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h46dbb4e08d4da860E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h572cd7df4bb156c5E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h57b5c811766b567bE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h581ff95a00e8d042E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h5af638f04c2a3287E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h60db7c55a9f6aae7E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h64c127e631d9283eE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h66dc584e1aff40b6E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h6e4757c4845920f2E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h80ee571fde7a8193E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h84e7c916920b4b61E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h89bb01ecf3f73596E(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h8acada85d912ba84E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h8e9077e091ea3a83E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h9837bb3f750fdfddE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17ha3ef6c6689f0b29bE(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17ha3fce7627bf43aa3E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17ha745764c44dc242aE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17haa0eb40d9e1d6732E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17haaeb19861567bf22E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hac26510aa57579caE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hb3030bd22aecabf6E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hb49409a8f1d87d4bE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hc15183dcca0bad60E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hc1c88c01c38d967bE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hca31369d6961f369E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hcbb95f37db18ffb2E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hce5c3de01bd961d8E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hceb63c025e8baa4dE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hcf677171b8ea85a9E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hd027c83738660ea7E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hd4f791f1d5e1a7fdE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hde8ddde36e73749cE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17he433b41a1bb09565E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17he5f631afd5928570E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17he959930ea518b1f5E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17heaf32bf3e3954ff7E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hf4437efd3c66c93fE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hf4821413e3635253E(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hf5f247fcefa93439E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hfad664b35e34ad4cE(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hfbd911e2132c3a0aE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hfeecc6f9134d4bebE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, i64 } { ptr @1017, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h096018fdb2420746E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !36655
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h0d35755d6df27dd5E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN63_$LT$serde_json..error..Error$u20$as$u20$core..error..Error$GT$6source17h2cb007fb824b2bbeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h0dc1fbabf72b017cE(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !36656
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h167a89fe6e2a344cE(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !36657
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h19b7d23cab41e8c9E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @2131, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h21a5e1530ea190f7E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !36658
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h250fad9acf656e8dE(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h2fd92eb195d38cf4E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !36659
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h3243f30b7f6bc647E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h336d0bfecd815311E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !36660
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h36b79f44a5726a39E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !36661
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h37fbe09bee2392e3E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !36662
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h3e0a6f03c064b079E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @2125, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h4512b6b0e7793433E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !36663
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h46dd54ea46d512caE(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !36664
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h47c950a76991bf45E(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b), !inline_history !36665
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h4a3446e48dc2310eE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN58_$LT$milli..error..Error$u20$as$u20$core..error..Error$GT$6source17h14ca43ce0733799bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h4b713bcf59c32635E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @"_ZN62_$LT$milli..documents..Error$u20$as$u20$core..error..Error$GT$6source17h11d5d0a12ff67668E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h5bb32794a1da0ca5E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @2011, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h6501d268626c426cE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
end_hunk_0
