Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.01?download=true
inline.NumInlined: 352
inline.NumDeleted: 220
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h40a9ae6e50c34dbcE"
define hidden { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h40a9ae6e50c34dbcE"(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17he9ec1a3c84be74e7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull align 1 %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h4f097c106282b31fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h98a08149d7522013E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h937b8ef744de6f20E.exit.i.i.i.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h937b8ef744de6f20E.exit.i.i.i.i": ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h98a08149d7522013E.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h937b8ef744de6f20E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h937b8ef744de6f20E.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc2d8f31570e15d01E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E"(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !483, !noundef !4 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha7cd6537f4988333E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !483, !nonnull !4, !noundef !4
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !483, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !483
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E"(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 1 %1, ptr noundef nonnull readonly %i.a)
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hcdb13b152c7683d6E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef range(i64 4, 9) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  %.not = icmp samesign ult i64 %5, 6
  %spec.select21 = select i1 %.not, i64 0, i64 %2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %spec.select21, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !8, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit", !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.g, i64 %i.i) #14
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit": ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp ule i64 %spec.select21, %i.g
  call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef 6)
          to label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit" unwind label %bb.c

.loopexit:                                        ; preds = %.loopexit.split.loopexit, %.loopexit.split.loopexit.split-lp, %.loopexit.split-lp, %.loopexit.split.us, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit89, %.loopexit.split.loopexit ], [ %lpad.loopexit.split-lp90, %.loopexit.split.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #13
          to label %bb.ba unwind label %bb.az

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit", %.critedge23
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit"
  %.sroa.096.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.497.0.copyload = load i64, ptr %.sroa.497.0..sroa_idx, align 8 ; 25 uses
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.699.0.copyload = load i64, ptr %.sroa.699.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7100.0.copyload = load i64, ptr %.sroa.7100.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8101.0.copyload = load i64, ptr %.sroa.8101.0..sroa_idx, align 8
  %.sroa.10103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.10103.0.copyload = load i64, ptr %.sroa.10103.0..sroa_idx, align 8
  %.sroa.12105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.12105.0.copyload = load ptr, ptr %.sroa.12105.0..sroa_idx, align 8 ; 17 uses
  %.sroa.13106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.13106.0.copyload = load i64, ptr %.sroa.13106.0..sroa_idx, align 8 ; 42 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = trunc nuw i64 %.sroa.096.0.copyload to i1
  %i.n = add i64 %.sroa.15.0.copyload, -1         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 3 uses
  br i1 %i.m, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us", label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12105.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.p = sub i64 %.sroa.15.0.copyload, %.sroa.699.0.copyload
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.497.0.copyload, i64 %.sroa.15.0.copyload)
  %i.q = add i64 %.sroa.497.0.copyload, -1
  %.first_iter = icmp ult i64 %i.q, %.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.497.0.copyload
  %exitcond.not.i.us38.not = icmp ult i64 %.sroa.497.0.copyload, %.sroa.15.0.copyload
  %invariant.op115 = sub i64 1, %.sroa.497.0.copyload
  %.not122.us41 = icmp eq i64 %.sroa.497.0.copyload, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.v, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us"
  %.sroa.3068.0.us = phi i64 [ %.sroa.10103.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.3068.1.us, %bb.v ] ; 2 uses
  %.sroa.18.0.us = phi i64 [ %.sroa.8101.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.11109.1.us, %bb.v ] ; 3 uses
  %.sroa.06.0.us = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.11109.1.us, %bb.v ] ; 5 uses
  %i.r = icmp eq i64 %.sroa.3068.0.us, -1
  %i.s = add i64 %.sroa.18.0.us, %i.n             ; 3 uses
  %i.t = icmp ult i64 %i.s, %.sroa.13106.0.copyload ; 2 uses
  br i1 %i.r, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  br i1 %i.t, label %.lr.ph.i41.us, label %.critedge23

.lr.ph.i41.us:                                    ; preds = %bb.e, %.sink.split.i.us
  %i.u = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.3068.0.us, %bb.e ] ; 3 uses
  %i.v = phi i64 [ %i.ay, %.sink.split.i.us ], [ %i.s, %bb.e ]
  %i.w = phi i64 [ %.ph71.i.us, %.sink.split.i.us ], [ %.sroa.18.0.us, %bb.e ] ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.v
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !505, !noalias !507, !noundef !4
  %i.z = and i8 %i.y, 63
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.ab, %.sroa.7100.0.copyload
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i41.us
  %.sroa.0.0.i.i43.us = call i64 @llvm.umax.i64(i64 %i.u, i64 %.sroa.497.0.copyload) ; 4 uses
  %umax49.i44.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i43.us, i64 %.sroa.15.0.copyload)
  %exitcond.not.i46.us33.not = icmp ult i64 %.sroa.0.0.i.i43.us, %.sroa.15.0.copyload
  br i1 %exitcond.not.i46.us33.not, label %.lr.ph, label %.preheader123.us.preheader

bb.g:                                             ; preds = %bb.h
  %i.ae = add i64 %.sroa.02.0.i45.us34, 1         ; 2 uses
  %exitcond.not.i46.us = icmp eq i64 %i.ae, %umax49.i44.us
  br i1 %exitcond.not.i46.us, label %.preheader123.us.preheader, label %.lr.ph

.preheader123.us.preheader:                       ; preds = %bb.g, %bb.f
  %i.af = icmp ult i64 %i.u, %.sroa.497.0.copyload
  br i1 %i.af, label %.lr.ph36, label %.loopexit.i.us

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.02.0.i45.us34 = phi i64 [ %i.ae, %bb.g ], [ %.sroa.0.0.i.i43.us, %bb.f ] ; 4 uses
  %i.ag = add i64 %.sroa.02.0.i45.us34, %i.w      ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %.sroa.13106.0.copyload
  br i1 %i.ah, label %bb.h, label %.split.us

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i45.us34
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !506, !noalias !508, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.ag
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !505, !noalias !507, !noundef !4
  %.not21.i48.us = icmp eq i8 %i.aj, %i.al
  br i1 %.not21.i48.us, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.reass.reass = add i64 %i.w, %invariant.op
  %i.am = add i64 %.reass.reass, %.sroa.02.0.i45.us34
  br label %.sink.split.i.us

.preheader123.us:                                 ; preds = %bb.k
  %i.an = icmp ult i64 %i.u, %i.ao
  br i1 %i.an, label %.lr.ph36, label %.loopexit.i.us

.lr.ph36:                                         ; preds = %.preheader123.us.preheader, %.preheader123.us
  %.sroa.2.0.i49.us35 = phi i64 [ %i.ao, %.preheader123.us ], [ %.sroa.497.0.copyload, %.preheader123.us.preheader ]
  %i.ao = add i64 %.sroa.2.0.i49.us35, -1         ; 6 uses
  %i.ap = icmp ult i64 %i.ao, %.sroa.15.0.copyload
  br i1 %i.ap, label %bb.j, label %.split191.us.invoke

bb.j:                                             ; preds = %.lr.ph36
  %i.aq = add i64 %i.ao, %i.w                     ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %.sroa.13106.0.copyload
  br i1 %i.ar, label %bb.k, label %.split191.us.invoke

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.ao
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !506, !noalias !508, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.aq
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !505, !noalias !507, !noundef !4
  %.not.i50.us = icmp eq i8 %i.at, %i.av
  br i1 %.not.i50.us, label %.preheader123.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = add i64 %i.w, %.sroa.699.0.copyload
  br label %.sink.split.i.us

bb.m:                                             ; preds = %.lr.ph.i41.us
  %i.ax = add i64 %i.w, %.sroa.15.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.m, %bb.l, %bb.i
  %.sink.i.us = phi i64 [ %i.p, %bb.l ], [ 0, %bb.i ], [ 0, %bb.m ]
  %.ph71.i.us = phi i64 [ %i.aw, %bb.l ], [ %i.am, %bb.i ], [ %i.ax, %bb.m ] ; 2 uses
  %i.ay = add i64 %.ph71.i.us, %i.n               ; 2 uses
  %i.az = icmp ult i64 %i.ay, %.sroa.13106.0.copyload
  br i1 %i.az, label %.lr.ph.i41.us, label %.critedge23

bb.n:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  br i1 %i.t, label %.lr.ph.i34.us, label %.critedge23

.lr.ph.i34.us:                                    ; preds = %bb.n, %bb.u
  %i.ba = phi i64 [ %i.cb, %bb.u ], [ %i.s, %bb.n ]
  %i.bb = phi i64 [ %i.ca, %bb.u ], [ %.sroa.18.0.us, %bb.n ] ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !509, !noalias !511, !noundef !4
  %i.be = and i8 %i.bd, 63
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.bg, %.sroa.7100.0.copyload
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.t, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i34.us
  br i1 %exitcond.not.i.us38.not, label %.lr.ph40, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.o
  %i.bj = add i64 %.sroa.02.0.i.us39, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bj, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader.us.preheader, label %.lr.ph40

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not122.us41, label %.loopexit.i.us, label %.lr.ph43

.lr.ph40:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i.us39 = phi i64 [ %i.bj, %.preheader ], [ %.sroa.497.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.bk = add i64 %.sroa.02.0.i.us39, %i.bb       ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %.sroa.13106.0.copyload
  br i1 %i.bl, label %bb.o, label %.split187.us

bb.o:                                             ; preds = %.lr.ph40
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i.us39
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !510, !noalias !512, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.bk
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !509, !noalias !511, !noundef !4
  %.not21.i.us = icmp eq i8 %i.bn, %i.bp
  br i1 %.not21.i.us, label %.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.reass325.reass = add i64 %i.bb, %invariant.op115
  %i.bq = add i64 %.reass325.reass, %.sroa.02.0.i.us39
  br label %bb.u

.preheader.us:                                    ; preds = %bb.r
  %.not122.us = icmp eq i64 %i.br, 0
  br i1 %.not122.us, label %.loopexit.i.us, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.2.0.i.us42 = phi i64 [ %i.br, %.preheader.us ], [ %.sroa.497.0.copyload, %.preheader.us.preheader ]
  %i.br = add i64 %.sroa.2.0.i.us42, -1           ; 5 uses
end_hunk_0
begin_hunk_1_@"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hcdb13b152c7683d6E":bb.a
bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.br
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !510, !noalias !512, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.bs
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !509, !noalias !511, !noundef !4
  %.not.i.us = icmp eq i8 %i.bv, %i.bx
  br i1 %.not.i.us, label %.preheader.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = add i64 %.sroa.699.0.copyload, %i.bb
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.i34.us
  %i.bz = add i64 %i.bb, %.sroa.15.0.copyload
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.p
  %i.ca = phi i64 [ %i.bq, %bb.p ], [ %i.bz, %bb.t ], [ %i.by, %bb.s ] ; 2 uses
  %i.cb = add i64 %i.ca, %i.n                     ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %.sroa.13106.0.copyload
  br i1 %i.cc, label %.lr.ph.i34.us, label %.critedge23

.loopexit.i.us:                                   ; preds = %.preheader123.us.preheader, %.preheader.us.preheader, %.preheader123.us, %.preheader.us
  %.sroa.7108.1.us = phi i64 [ %i.bb, %.preheader.us ], [ %i.w, %.preheader123.us ], [ %i.bb, %.preheader.us.preheader ], [ %i.w, %.preheader123.us.preheader ] ; 2 uses
  %.sroa.3068.1.us = phi i64 [ -1, %.preheader.us ], [ 0, %.preheader123.us ], [ -1, %.preheader.us.preheader ], [ 0, %.preheader123.us.preheader ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0.us
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.7108.1.us
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ce)
          to label %bb.v unwind label %.loopexit.split.us

bb.v:                                             ; preds = %.loopexit.i.us
  %.sroa.11109.1.us = add i64 %.sroa.7108.1.us, %.sroa.15.0.copyload ; 2 uses
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.o)
          to label %bb.d unwind label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %bb.v, %.loopexit.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit"
  %i.cf = and i64 %.sroa.699.0.copyload, 65536
  %.not121 = icmp eq i64 %i.cf, 0
  br i1 %.not121, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us", label %.critedge23

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12105.0.copyload) ]
  %i.cg = trunc i64 %.sroa.699.0.copyload to i1   ; 2 uses
  %i.ch = icmp eq i64 %.sroa.497.0.copyload, 0
  br i1 %i.ch, label %bb.y, label %bb.w

bb.w:                                             ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us"
  %.not.i.i.i.us.peel.peel = icmp ult i64 %.sroa.497.0.copyload, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i.us.peel.peel, label %bb.x, label %.split.i.i.i.us.peel.peel

.split.i.i.i.us.peel.peel:                        ; preds = %bb.w
  %i.ci = icmp eq i64 %.sroa.497.0.copyload, %.sroa.13106.0.copyload
  br i1 %i.ci, label %bb.y, label %.split.us209

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.497.0.copyload
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !513, !noalias !514, !noundef !4
  %i.cl = icmp sgt i8 %i.ck, -65
  br i1 %i.cl, label %bb.y, label %.split.us209

bb.y:                                             ; preds = %bb.x, %.split.i.i.i.us.peel.peel, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us"
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.497.0.copyload ; 4 uses
  %i.cn = icmp samesign eq i64 %.sroa.497.0.copyload, %.sroa.13106.0.copyload
  br i1 %i.cn, label %.loopexit262.peel, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = load i8, ptr %i.cm, align 1, !noalias !515, !noundef !4 ; 5 uses
  %i.cp = icmp sgt i8 %i.co, -1
  br i1 %i.cp, label %bb.aa, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel": ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.cr = and i8 %i.co, 31
  %i.cs = zext nneg i8 %i.cr to i32               ; 3 uses
  %i.ct = add nuw nsw i64 %.sroa.497.0.copyload, 1
  %i.cu = icmp samesign ne i64 %i.ct, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.cu)
  %i.cv = load i8, ptr %i.cq, align 1, !noalias !515, !noundef !4
  %i.cw = shl nuw nsw i32 %i.cs, 6
  %i.cx = and i8 %i.cv, 63
  %i.cy = zext nneg i8 %i.cx to i32               ; 2 uses
  %i.cz = or disjoint i32 %i.cw, %i.cy
  %i.da = icmp samesign ugt i8 %i.co, -33
  br i1 %i.da, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel", label %bb.ab

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel"
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.dc = add nuw nsw i64 %.sroa.497.0.copyload, 2
  %i.dd = icmp samesign ne i64 %i.dc, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.dd)
  %i.de = load i8, ptr %i.db, align 1, !noalias !515, !noundef !4
  %i.df = shl nuw nsw i32 %i.cy, 6
  %i.dg = and i8 %i.de, 63
  %i.dh = zext nneg i8 %i.dg to i32
  %i.di = or disjoint i32 %i.df, %i.dh            ; 2 uses
  %i.dj = shl nuw nsw i32 %i.cs, 12
  %i.dk = or disjoint i32 %i.di, %i.dj
  %i.dl = icmp samesign ugt i8 %i.co, -17
  br i1 %i.dl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.peel", label %bb.ab

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel"
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  %i.dn = add nuw nsw i64 %.sroa.497.0.copyload, 3
  %i.do = icmp samesign ne i64 %i.dn, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.do)
  %i.dp = load i8, ptr %i.dm, align 1, !noalias !515, !noundef !4
  %i.dq = shl nuw nsw i32 %i.cs, 18
  %i.dr = and i32 %i.dq, 1835008
  %i.ds = shl nuw nsw i32 %i.di, 6
  %i.dt = and i8 %i.dp, 63
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.ds, %i.du
  %i.dw = or disjoint i32 %i.dv, %i.dr
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dx = zext nneg i8 %i.co to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel"
  %.sroa.4.0.i.ph.i.i.us.peel.peel = phi i32 [ %i.dk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel" ], [ %i.dw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.peel" ], [ %i.cz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel" ], [ %i.dx, %bb.aa ] ; 4 uses
  %i.dy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 1114112
  call void @llvm.assume(i1 %i.dy)
  br i1 %i.cg, label %.loopexit.i.us203.peel, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 128
  br i1 %i.dz, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 2048
  br i1 %i.ea, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 65536
  %..i.i.us.peel.peel = select i1 %i.eb, i64 3, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.01.0.i.i.us.peel.peel = phi i64 [ 2, %bb.ad ], [ %..i.i.us.peel.peel, %bb.ae ], [ 1, %bb.ac ]
  %i.ec = add i64 %.sroa.01.0.i.i.us.peel.peel, %.sroa.497.0.copyload ; 15 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i.i.i.us.peel83 = icmp ult i64 %i.ec, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i.us.peel83, label %bb.ah, label %.split.i.i.i.us.peel84

.split.i.i.i.us.peel84:                           ; preds = %bb.ag
  %i.ee = icmp eq i64 %i.ec, %.sroa.13106.0.copyload
  br i1 %i.ee, label %bb.ai, label %.split.us209

bb.ah:                                            ; preds = %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.ec
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !513, !noalias !514, !noundef !4
  %i.eh = icmp sgt i8 %i.eg, -65
  br i1 %i.eh, label %bb.ai, label %.split.us209

bb.ai:                                            ; preds = %bb.ah, %.split.i.i.i.us.peel84, %bb.af
  %i.ei = icmp samesign eq i64 %i.ec, %.sroa.13106.0.copyload
  br i1 %i.ei, label %.loopexit.i.us203.peel, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.ec
  %i.ek = load i8, ptr %i.ej, align 1, !noalias !515, !noundef !4 ; 3 uses
  %i.el = icmp sgt i8 %i.ek, -1
  br i1 %i.el, label %.loopexit.i.us203.peel, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85": ; preds = %bb.aj
  %i.em = add nuw nsw i64 %i.ec, 1
  %i.en = icmp samesign ne i64 %i.em, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.en)
  %i.eo = icmp samesign ugt i8 %i.ek, -33
  br i1 %i.eo, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86", label %.loopexit.i.us203.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85"
  %i.ep = add nuw nsw i64 %i.ec, 2
  %i.eq = icmp samesign ne i64 %i.ep, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.eq)
  %i.er = icmp samesign ugt i8 %i.ek, -17
  br i1 %i.er, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel87", label %.loopexit.i.us203.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel87": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86"
  %i.es = add nuw nsw i64 %i.ec, 3
  %i.et = icmp samesign ne i64 %i.es, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.et)
  br label %.loopexit.i.us203.peel

.loopexit262.peel:                                ; preds = %bb.y
  br i1 %i.cg, label %.loopexit.i.us203.peel, label %.critedge23

.loopexit.i.us203.peel:                           ; preds = %.loopexit262.peel, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel87", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85", %bb.aj, %bb.ai, %bb.ab
  %.sroa.460.1.us258.peel = phi i64 [ %.sroa.13106.0.copyload, %.loopexit262.peel ], [ %.sroa.13106.0.copyload, %bb.ai ], [ %.sroa.497.0.copyload, %bb.ab ], [ %i.ec, %bb.aj ], [ %i.ec, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85" ], [ %i.ec, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86" ], [ %i.ec, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel87" ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.460.1.us258.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %1, ptr noundef nonnull %i.eu)
          to label %bb.ak unwind label %.loopexit.split.loopexit.split-lp

bb.ak:                                            ; preds = %.loopexit.i.us203.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.o)
          to label %.preheader.i.us unwind label %.loopexit.split.loopexit.split-lp

.preheader.i.us:                                  ; preds = %bb.ak, %8
  %.sroa.06.0.us202 = phi i64 [ %.sroa.460.1245, %8 ], [ %.sroa.460.1.us258.peel, %bb.ak ] ; 14 uses
  %i.ev = icmp eq i64 %.sroa.06.0.us202, 0
  br i1 %i.ev, label %bb.an, label %bb.al

bb.al:                                            ; preds = %.preheader.i.us
  %.not.i.i.i.us.peel = icmp ult i64 %.sroa.06.0.us202, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i.us.peel, label %bb.am, label %.split.i.i.i.us.peel

.split.i.i.i.us.peel:                             ; preds = %bb.al
  %i.ew = icmp eq i64 %.sroa.06.0.us202, %.sroa.13106.0.copyload
  br i1 %i.ew, label %bb.an, label %.split.us209

bb.am:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.06.0.us202
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !513, !noalias !514, !noundef !4
  %i.ez = icmp sgt i8 %i.ey, -65
  br i1 %i.ez, label %bb.an, label %.split.us209

bb.an:                                            ; preds = %bb.am, %.split.i.i.i.us.peel, %.preheader.i.us
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.06.0.us202 ; 4 uses
  %i.fb = icmp samesign eq i64 %.sroa.06.0.us202, %.sroa.13106.0.copyload
  br i1 %i.fb, label %.critedge23, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = load i8, ptr %i.fa, align 1, !noalias !515, !noundef !4 ; 5 uses
  %i.fd = icmp sgt i8 %i.fc, -1
  br i1 %i.fd, label %bb.ap, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel": ; preds = %bb.ao
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.ff = and i8 %i.fc, 31
  %i.fg = zext nneg i8 %i.ff to i32               ; 3 uses
  %i.fh = add nuw nsw i64 %.sroa.06.0.us202, 1
  %i.fi = icmp samesign ne i64 %i.fh, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.fi)
  %i.fj = load i8, ptr %i.fe, align 1, !noalias !515, !noundef !4
  %i.fk = shl nuw nsw i32 %i.fg, 6
  %i.fl = and i8 %i.fj, 63
  %i.fm = zext nneg i8 %i.fl to i32               ; 2 uses
  %i.fn = or disjoint i32 %i.fk, %i.fm
  %i.fo = icmp samesign ugt i8 %i.fc, -33
  br i1 %i.fo, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel", label %bb.aq

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel"
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %i.fq = add nuw nsw i64 %.sroa.06.0.us202, 2
  %i.fr = icmp samesign ne i64 %i.fq, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.fr)
  %i.fs = load i8, ptr %i.fp, align 1, !noalias !515, !noundef !4
  %i.ft = shl nuw nsw i32 %i.fm, 6
  %i.fu = and i8 %i.fs, 63
  %i.fv = zext nneg i8 %i.fu to i32
  %i.fw = or disjoint i32 %i.ft, %i.fv            ; 2 uses
  %i.fx = shl nuw nsw i32 %i.fg, 12
  %i.fy = or disjoint i32 %i.fw, %i.fx
  %i.fz = icmp samesign ugt i8 %i.fc, -17
  br i1 %i.fz, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel", label %bb.aq

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel"
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fa, i64 3
  %i.gb = add nuw nsw i64 %.sroa.06.0.us202, 3
  %i.gc = icmp samesign ne i64 %i.gb, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.gc)
  %i.gd = load i8, ptr %i.ga, align 1, !noalias !515, !noundef !4
  %i.ge = shl nuw nsw i32 %i.fg, 18
  %i.gf = and i32 %i.ge, 1835008
  %i.gg = shl nuw nsw i32 %i.fw, 6
  %i.gh = and i8 %i.gd, 63
  %i.gi = zext nneg i8 %i.gh to i32
  %i.gj = or disjoint i32 %i.gg, %i.gi
  %i.gk = or disjoint i32 %i.gj, %i.gf
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gl = zext nneg i8 %i.fc to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel"
  %.sroa.4.0.i.ph.i.i.us.peel = phi i32 [ %i.fy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel" ], [ %i.gk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel" ], [ %i.fn, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel" ], [ %i.gl, %bb.ap ] ; 4 uses
  %i.gm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 1114112
  call void @llvm.assume(i1 %i.gm)
  %i.gn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 128
  br i1 %i.gn, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.go = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 2048
  br i1 %i.go, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 65536
  %..i.i.us.peel = select i1 %i.gp, i64 3, i64 4
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  %.sroa.01.0.i.i.us.peel = phi i64 [ 2, %bb.ar ], [ %..i.i.us.peel, %bb.as ], [ 1, %bb.aq ]
  %i.gq = add i64 %.sroa.01.0.i.i.us.peel, %.sroa.06.0.us202 ; 15 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not.i.i.i.us = icmp ult i64 %i.gq, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i.us, label %bb.av, label %.split.i.i.i.us

.split.i.i.i.us:                                  ; preds = %bb.au
  %i.gs = icmp eq i64 %i.gq, %.sroa.13106.0.copyload
  br i1 %i.gs, label %bb.aw, label %.split.us209

bb.av:                                            ; preds = %bb.au
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.gq
  %i.gu = load i8, ptr %i.gt, align 1, !alias.scope !513, !noalias !514, !noundef !4
  %i.gv = icmp sgt i8 %i.gu, -65
  br i1 %i.gv, label %bb.aw, label %.split.us209

bb.aw:                                            ; preds = %bb.av, %.split.i.i.i.us, %bb.at
  %i.gw = icmp samesign eq i64 %i.gq, %.sroa.13106.0.copyload
  br i1 %i.gw, label %.loopexit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.gq
  %i.gy = load i8, ptr %i.gx, align 1, !noalias !515, !noundef !4 ; 3 uses
  %i.gz = icmp sgt i8 %i.gy, -1
  br i1 %i.gz, label %.loopexit.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us": ; preds = %bb.ax
  %i.ha = add nuw nsw i64 %i.gq, 1
  %i.hb = icmp samesign ne i64 %i.ha, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.hb)
  %i.hc = icmp samesign ugt i8 %i.gy, -33
  br i1 %i.hc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us", label %.loopexit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us"
  %i.hd = add nuw nsw i64 %i.gq, 2
  %i.he = icmp samesign ne i64 %i.hd, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.he)
  %i.hf = icmp samesign ugt i8 %i.gy, -17
  br i1 %i.hf, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us", label %.loopexit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us"
  %i.hg = add nuw nsw i64 %i.gq, 3
  %i.hh = icmp samesign ne i64 %i.hg, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.hh)
  br label %.loopexit.i

.split.us209:                                     ; preds = %bb.am, %.split.i.i.i.us.peel, %bb.av, %.split.i.i.i.us, %bb.ah, %.split.i.i.i.us.peel84, %bb.x, %.split.i.i.i.us.peel.peel
  %.sroa.460.1.us.lcssa = phi i64 [ %.sroa.497.0.copyload, %.split.i.i.i.us.peel.peel ], [ %.sroa.497.0.copyload, %bb.x ], [ %i.ec, %.split.i.i.i.us.peel84 ], [ %i.ec, %bb.ah ], [ %.sroa.06.0.us202, %bb.am ], [ %.sroa.06.0.us202, %.split.i.i.i.us.peel ], [ %i.gq, %.split.i.i.i.us ], [ %i.gq, %bb.av ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.12105.0.copyload, i64 noundef %.sroa.13106.0.copyload, i64 noundef %.sroa.460.1.us.lcssa, i64 noundef %.sroa.13106.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.us209
  unreachable

.split.us:                                        ; preds = %.lr.ph
  %i.hi = add i64 %i.w, %.sroa.0.0.i.i43.us
  %umax.i47 = call i64 @llvm.umax.i64(i64 %.sroa.13106.0.copyload, i64 %i.hi)
  br label %.split191.us.invoke

.split191.us.invoke:                              ; preds = %bb.j, %.lr.ph36, %bb.q, %.lr.ph43, %.split.us, %.split187.us
  %i.hj = phi i64 [ %umax.i47, %.split.us ], [ %i.br, %.lr.ph43 ], [ %umax.i, %.split187.us ], [ %i.bs, %bb.q ], [ %i.aq, %bb.j ], [ %i.ao, %.lr.ph36 ]
  %i.hk = phi i64 [ %.sroa.13106.0.copyload, %.split.us ], [ %.sroa.15.0.copyload, %.lr.ph43 ], [ %.sroa.13106.0.copyload, %.split187.us ], [ %.sroa.13106.0.copyload, %bb.q ], [ %.sroa.13106.0.copyload, %bb.j ], [ %.sroa.15.0.copyload, %.lr.ph36 ]
  %i.hl = phi ptr [ @7, %.split.us ], [ @5, %.lr.ph43 ], [ @7, %.split187.us ], [ @6, %bb.q ], [ @6, %bb.j ], [ @5, %.lr.ph36 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.hj, i64 noundef %i.hk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl) #14
          to label %.split191.us.cont unwind label %.loopexit.split-lp

.split191.us.cont:                                ; preds = %.split191.us.invoke
  unreachable

.split187.us:                                     ; preds = %.lr.ph40
  %i.hm = add i64 %i.bb, %.sroa.497.0.copyload
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.13106.0.copyload, i64 %i.hm)
  br label %.split191.us.invoke

.loopexit.split.loopexit:                         ; preds = %8, %.loopexit.i
  %lpad.loopexit89 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split.loopexit.split-lp:                ; preds = %.loopexit.i.us203.peel, %bb.ak
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.split191.us.invoke, %.split.us209
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.i:                                      ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us", %bb.ax, %bb.aw
  %.sroa.460.1245 = phi i64 [ %i.gq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us" ], [ %.sroa.13106.0.copyload, %bb.aw ], [ %i.gq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us" ], [ %i.gq, %bb.ax ], [ %i.gq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us" ] ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0.us202
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.460.1245
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %6, ptr noundef nonnull %7)
          to label %8 unwind label %.loopexit.split.loopexit

.critedge23:                                      ; preds = %.loopexit262.peel, %bb.an, %bb.n, %bb.e, %.sink.split.i.us, %bb.u, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"
  %.sroa.06.0166 = phi i64 [ %.sroa.06.0.us, %bb.n ], [ %.sroa.06.0.us, %.sink.split.i.us ], [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split" ], [ %.sroa.06.0.us, %bb.u ], [ %.sroa.06.0.us, %bb.e ], [ 0, %.loopexit262.peel ], [ %.sroa.06.0.us202, %bb.an ]
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0166
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.hn, ptr noundef nonnull %i.ho)
          to label %bb.ay unwind label %bb.c

bb.ay:                                            ; preds = %.critedge23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

8:                                                ; preds = %.loopexit.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.o)
          to label %.preheader.i.us unwind label %.loopexit.split.loopexit, !llvm.loop !504

bb.az:                                            ; preds = %.loopexit
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

bb.ba:                                            ; preds = %.loopexit
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN9itertools9Itertools4join17h376bc8dd525c79dbE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !560, !noalias !561, !nonnull !4, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !560, !noalias !561, !nonnull !4, !noundef !4 ; 4 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee628cb87b998026E.exit.thread", label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee628cb87b998026E.exit"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee628cb87b998026E.exit": ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  store ptr %i.v, ptr %1, align 8, !alias.scope !560, !noalias !561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !562
  store ptr %i.r, ptr %i.l, align 8, !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !563
  store ptr %i.l, ptr %i.k, align 8, !noalias !563
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hc309f40683e6d3e5E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !564
  store ptr @14, ptr %i.j, align 8, !noalias !565
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !565
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !565
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !565
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !565
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j), !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !562
  %.pr = load i64, ptr %i.q, align 8
  %.not = icmp eq i64 %.pr, -9223372036854775808
  br i1 %.not, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee628cb87b998026E.exit.thread", label %bb.e

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee628cb87b998026E.exit.thread": ; preds = %bb.a, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee628cb87b998026E.exit"
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee628cb87b998026E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

bb.c:                                             ; preds = %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.w, %bb.d ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #13
          to label %common.resume unwind label %bb.t

bb.d:                                             ; preds = %bb.f, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee628cb87b998026E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = lshr exact i64 %i.z, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ab = mul i64 %i.aa, %3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, i64 noundef %i.ab, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc13 unwind label %bb.d

.noexc13:                                         ; preds = %bb.e
  %i.ac = load i64, ptr %i.i, align 8, !range !7, !noundef !4
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !8, !noundef !4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %.noexc13
  %i.ah = load i64, ptr %i.ag, align 8
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.af, i64 %i.ah) #14
          to label %.noexc14 unwind label %bb.d

.noexc14:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc13
  %i.ai = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4
  %i.aj = icmp ule i64 %i.ab, %i.af
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.af, ptr %i.o, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ai, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.p, ptr %i.m, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.47.0..sroa_idx, align 8
  store ptr @45, ptr %i.n, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.m, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 1, ptr %i.an, align 8
  %i.ao = invoke noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.n)
          to label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hd4fb5b709dedd24eE.exit" unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.i, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h3d58e3702530388cE.exit.i.i.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.h, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i.i.i.i", %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.phi.i.i.i, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i.i.i.i" ], [ %i.ba, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #13
          to label %bb.c unwind label %bb.t

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hd4fb5b709dedd24eE.exit": ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.ao, label %bb.h, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hefc34bb8027fd7caE.exit", !prof !10

bb.h:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hd4fb5b709dedd24eE.exit"
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #14
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hefc34bb8027fd7caE.exit": ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hd4fb5b709dedd24eE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.ap = icmp eq ptr %i.v, %i.t
  br i1 %i.ap, label %"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h446c0535c232d415E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hefc34bb8027fd7caE.exit"
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %3
end_hunk_1
