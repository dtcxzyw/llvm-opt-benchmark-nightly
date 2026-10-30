Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.01?download=true
inline.NumInlined: 352
inline.NumDeleted: 220
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h4f097c106282b31fE":bb.a
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
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !472, !noundef !4 ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !472, !nonnull !4, !noundef !4
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !472, !noundef !4 ; 2 uses
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
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !472
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
          to label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit" unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

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
  %i.l = trunc nuw i64 %.sroa.096.0.copyload to i1
  %i.m = add i64 %.sroa.15.0.copyload, -1         ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 3 uses
  br i1 %i.l, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us", label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12105.0.copyload), "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.o = sub i64 %.sroa.15.0.copyload, %.sroa.699.0.copyload
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.497.0.copyload, i64 %.sroa.15.0.copyload)
  %i.p = add i64 %.sroa.497.0.copyload, -1
  %.first_iter = icmp ult i64 %i.p, %.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.497.0.copyload
  %exitcond.not.i.us41.not = icmp ult i64 %.sroa.497.0.copyload, %.sroa.15.0.copyload
  %invariant.op122 = sub i64 1, %.sroa.497.0.copyload
  %.not122.us44 = icmp eq i64 %.sroa.497.0.copyload, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.u, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us"
  %.sroa.3068.0.us = phi i64 [ %.sroa.10103.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.3068.1.us, %bb.u ] ; 2 uses
  %.sroa.18.0.us = phi i64 [ %.sroa.8101.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.11109.1.us, %bb.u ] ; 3 uses
  %.sroa.06.0.us = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.11109.1.us, %bb.u ] ; 5 uses
  %i.q = icmp eq i64 %.sroa.3068.0.us, -1
  %i.r = add i64 %.sroa.18.0.us, %i.m             ; 3 uses
  %i.s = icmp ult i64 %i.r, %.sroa.13106.0.copyload ; 2 uses
  br i1 %i.q, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  br i1 %i.s, label %.lr.ph.i41.us, label %.critedge23

.lr.ph.i41.us:                                    ; preds = %bb.d, %.sink.split.i.us
  %i.t = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.3068.0.us, %bb.d ] ; 3 uses
  %i.u = phi i64 [ %i.ax, %.sink.split.i.us ], [ %i.r, %bb.d ]
  %i.v = phi i64 [ %.ph71.i.us, %.sink.split.i.us ], [ %.sroa.18.0.us, %bb.d ] ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !490, !noundef !4
  %i.y = and i8 %i.x, 63
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = and i64 %i.aa, %.sroa.7100.0.copyload
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i41.us
  %.sroa.0.0.i.i43.us = call i64 @llvm.umax.i64(i64 %i.t, i64 %.sroa.497.0.copyload) ; 4 uses
  %umax49.i44.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i43.us, i64 %.sroa.15.0.copyload)
  %exitcond.not.i46.us36.not = icmp ult i64 %.sroa.0.0.i.i43.us, %.sroa.15.0.copyload
  br i1 %exitcond.not.i46.us36.not, label %.lr.ph, label %.preheader123.us.preheader

bb.f:                                             ; preds = %bb.g
  %i.ad = add nuw i64 %.sroa.02.0.i45.us37, 1     ; 2 uses
  %exitcond.not.i46.us = icmp eq i64 %i.ad, %umax49.i44.us
  br i1 %exitcond.not.i46.us, label %.preheader123.us.preheader, label %.lr.ph

.preheader123.us.preheader:                       ; preds = %bb.f, %bb.e
  %i.ae = icmp ult i64 %i.t, %.sroa.497.0.copyload
  br i1 %i.ae, label %.lr.ph39, label %.loopexit.i.us

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.02.0.i45.us37 = phi i64 [ %i.ad, %bb.f ], [ %.sroa.0.0.i.i43.us, %bb.e ] ; 4 uses
  %i.af = add i64 %.sroa.02.0.i45.us37, %i.v      ; 2 uses
  %i.ag = icmp ult i64 %i.af, %.sroa.13106.0.copyload
  br i1 %i.ag, label %bb.g, label %.split.us

bb.g:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i45.us37
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !491, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.af
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !490, !noundef !4
  %.not21.i48.us = icmp eq i8 %i.ai, %i.ak
  br i1 %.not21.i48.us, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.reass.reass = add i64 %i.v, %invariant.op
  %i.al = add i64 %.reass.reass, %.sroa.02.0.i45.us37
  br label %.sink.split.i.us

.preheader123.us:                                 ; preds = %bb.j
  %i.am = icmp ult i64 %i.t, %i.an
  br i1 %i.am, label %.lr.ph39, label %.loopexit.i.us

.lr.ph39:                                         ; preds = %.preheader123.us.preheader, %.preheader123.us
  %.sroa.2.0.i49.us38 = phi i64 [ %i.an, %.preheader123.us ], [ %.sroa.497.0.copyload, %.preheader123.us.preheader ]
  %i.an = add i64 %.sroa.2.0.i49.us38, -1         ; 6 uses
  %i.ao = icmp ult i64 %i.an, %.sroa.15.0.copyload
  br i1 %i.ao, label %bb.i, label %.split.us.invoke

bb.i:                                             ; preds = %.lr.ph39
  %i.ap = add i64 %i.an, %i.v                     ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %.sroa.13106.0.copyload
  br i1 %i.aq, label %bb.j, label %.split.us.invoke

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.an
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !491, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !490, !noundef !4
  %.not.i50.us = icmp eq i8 %i.as, %i.au
  br i1 %.not.i50.us, label %.preheader123.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = add i64 %i.v, %.sroa.699.0.copyload
  br label %.sink.split.i.us

bb.l:                                             ; preds = %.lr.ph.i41.us
  %i.aw = add i64 %i.v, %.sroa.15.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.l, %bb.k, %bb.h
  %.sink.i.us = phi i64 [ %i.o, %bb.k ], [ 0, %bb.h ], [ 0, %bb.l ]
  %.ph71.i.us = phi i64 [ %i.av, %bb.k ], [ %i.al, %bb.h ], [ %i.aw, %bb.l ] ; 2 uses
  %i.ax = add i64 %.ph71.i.us, %i.m               ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %.sroa.13106.0.copyload
  br i1 %i.ay, label %.lr.ph.i41.us, label %.critedge23

bb.m:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !492)
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  br i1 %i.s, label %.lr.ph.i34.us, label %.critedge23

.lr.ph.i34.us:                                    ; preds = %bb.m, %bb.t
  %i.az = phi i64 [ %i.ca, %bb.t ], [ %i.r, %bb.m ]
  %i.ba = phi i64 [ %i.bz, %bb.t ], [ %.sroa.18.0.us, %bb.m ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.az
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !492, !noundef !4
  %i.bd = and i8 %i.bc, 63
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = and i64 %i.bf, %.sroa.7100.0.copyload
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.s, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i34.us
  br i1 %exitcond.not.i.us41.not, label %.lr.ph43, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.n
  %i.bi = add nuw i64 %.sroa.02.0.i.us42, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bi, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader.us.preheader, label %.lr.ph43

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not122.us44, label %.loopexit.i.us, label %.lr.ph46

.lr.ph43:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i.us42 = phi i64 [ %i.bi, %.preheader ], [ %.sroa.497.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.bj = add i64 %.sroa.02.0.i.us42, %i.ba       ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %.sroa.13106.0.copyload
  br i1 %i.bk, label %bb.n, label %.split187.us

bb.n:                                             ; preds = %.lr.ph43
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i.us42
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !493, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.bj
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !492, !noundef !4
  %.not21.i.us = icmp eq i8 %i.bm, %i.bo
  br i1 %.not21.i.us, label %.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.reass314.reass = add i64 %i.ba, %invariant.op122
  %i.bp = add i64 %.reass314.reass, %.sroa.02.0.i.us42
  br label %bb.t

.preheader.us:                                    ; preds = %bb.q
  %.not122.us = icmp eq i64 %i.bq, 0
  br i1 %.not122.us, label %.loopexit.i.us, label %.lr.ph46

.lr.ph46:                                         ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.2.0.i.us45 = phi i64 [ %i.bq, %.preheader.us ], [ %.sroa.497.0.copyload, %.preheader.us.preheader ]
  %i.bq = add i64 %.sroa.2.0.i.us45, -1           ; 5 uses
  br i1 %.first_iter, label %bb.p, label %.split.us.invoke

bb.p:                                             ; preds = %.lr.ph46
  %i.br = add i64 %i.bq, %i.ba                    ; 3 uses
  %i.bs = icmp ult i64 %i.br, %.sroa.13106.0.copyload
  br i1 %i.bs, label %bb.q, label %.split.us.invoke

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !493, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.br
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !492, !noundef !4
  %.not.i.us = icmp eq i8 %i.bu, %i.bw
  br i1 %.not.i.us, label %.preheader.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = add i64 %.sroa.699.0.copyload, %i.ba
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i34.us
  %i.by = add i64 %i.ba, %.sroa.15.0.copyload
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.o
  %i.bz = phi i64 [ %i.bp, %bb.o ], [ %i.by, %bb.s ], [ %i.bx, %bb.r ] ; 2 uses
  %i.ca = add i64 %i.bz, %i.m                     ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %.sroa.13106.0.copyload
  br i1 %i.cb, label %.lr.ph.i34.us, label %.critedge23

.loopexit.i.us:                                   ; preds = %.preheader123.us.preheader, %.preheader.us.preheader, %.preheader123.us, %.preheader.us
  %.sroa.7108.1.us = phi i64 [ %i.ba, %.preheader.us ], [ %i.v, %.preheader123.us ], [ %i.ba, %.preheader.us.preheader ], [ %i.v, %.preheader123.us.preheader ] ; 2 uses
  %.sroa.3068.1.us = phi i64 [ -1, %.preheader.us ], [ 0, %.preheader123.us ], [ -1, %.preheader.us.preheader ], [ 0, %.preheader123.us.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0.us
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.7108.1.us
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd)
          to label %bb.u unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.u:                                             ; preds = %.loopexit.i.us
  %.sroa.11109.1.us = add i64 %.sroa.7108.1.us, %.sroa.15.0.copyload ; 2 uses
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.n)
          to label %bb.c unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit"
  %i.ce = and i64 %.sroa.699.0.copyload, 65536
  %.not121 = icmp eq i64 %i.ce, 0
  br i1 %.not121, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split", label %.critedge23

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12105.0.copyload) ]
  %i.cf = trunc i64 %.sroa.699.0.copyload to i1   ; 2 uses
  %i.cg = icmp eq i64 %.sroa.497.0.copyload, 0
  br i1 %i.cg, label %bb.x, label %bb.v

bb.v:                                             ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split"
  %.not.i.i.i.peel.peel = icmp ult i64 %.sroa.497.0.copyload, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i.peel.peel, label %bb.w, label %.split.i.i.i.peel.peel

.split.i.i.i.peel.peel:                           ; preds = %bb.v
  %i.ch = icmp eq i64 %.sroa.497.0.copyload, %.sroa.13106.0.copyload
  br i1 %i.ch, label %bb.x, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.497.0.copyload
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !494, !noalias !495, !noundef !4
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w, %.split.i.i.i.peel.peel, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split"
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.497.0.copyload ; 4 uses
  %i.cm = icmp samesign eq i64 %.sroa.497.0.copyload, %.sroa.13106.0.copyload
  br i1 %i.cm, label %.loopexit251.peel, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = load i8, ptr %i.cl, align 1, !noalias !496, !noundef !4 ; 5 uses
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.z, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel": ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cq = and i8 %i.cn, 31
  %i.cr = zext nneg i8 %i.cq to i32               ; 3 uses
  %i.cs = add nuw nsw i64 %.sroa.497.0.copyload, 1
  %i.ct = icmp samesign ne i64 %i.cs, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.ct)
  %i.cu = load i8, ptr %i.cp, align 1, !noalias !496, !noundef !4
  %i.cv = shl nuw nsw i32 %i.cr, 6
  %i.cw = and i8 %i.cu, 63
  %i.cx = zext nneg i8 %i.cw to i32               ; 2 uses
  %i.cy = or disjoint i32 %i.cv, %i.cx
  %i.cz = icmp samesign ugt i8 %i.cn, -33
  br i1 %i.cz, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel", label %bb.aa

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel"
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.db = add nuw nsw i64 %.sroa.497.0.copyload, 2
  %i.dc = icmp samesign ne i64 %i.db, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.dc)
  %i.dd = load i8, ptr %i.da, align 1, !noalias !496, !noundef !4
  %i.de = shl nuw nsw i32 %i.cx, 6
  %i.df = and i8 %i.dd, 63
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = or disjoint i32 %i.de, %i.dg            ; 2 uses
  %i.di = shl nuw nsw i32 %i.cr, 12
  %i.dj = or disjoint i32 %i.dh, %i.di
  %i.dk = icmp samesign ugt i8 %i.cn, -17
  br i1 %i.dk, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.peel", label %bb.aa

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel"
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cl, i64 3
  %i.dm = add nuw nsw i64 %.sroa.497.0.copyload, 3
  %i.dn = icmp samesign ne i64 %i.dm, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.dn)
  %i.do = load i8, ptr %i.dl, align 1, !noalias !496, !noundef !4
  %i.dp = shl nuw nsw i32 %i.cr, 18
  %i.dq = and i32 %i.dp, 1835008
  %i.dr = shl nuw nsw i32 %i.dh, 6
  %i.ds = and i8 %i.do, 63
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dr, %i.dt
  %i.dv = or disjoint i32 %i.du, %i.dq
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dw = zext nneg i8 %i.cn to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel"
  %.sroa.4.0.i.ph.i.i.peel.peel = phi i32 [ %i.dj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel" ], [ %i.dv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.peel" ], [ %i.cy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel" ], [ %i.dw, %bb.z ] ; 4 uses
  %i.dx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 1114112
  call void @llvm.assume(i1 %i.dx)
  br i1 %i.cf, label %.loopexit.i.peel, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 128
  br i1 %i.dy, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 2048
  br i1 %i.dz, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 65536
  %..i.i.peel.peel = select i1 %i.ea, i64 3, i64 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sroa.01.0.i.i.peel.peel = phi i64 [ 2, %bb.ac ], [ %..i.i.peel.peel, %bb.ad ], [ 1, %bb.ab ]
  %i.eb = add i64 %.sroa.01.0.i.i.peel.peel, %.sroa.497.0.copyload ; 15 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i.i.peel89 = icmp ult i64 %i.eb, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i.peel89, label %bb.ag, label %.split.i.i.i.peel90

.split.i.i.i.peel90:                              ; preds = %bb.af
  %i.ed = icmp eq i64 %i.eb, %.sroa.13106.0.copyload
  br i1 %i.ed, label %bb.ah, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.eb
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !494, !noalias !495, !noundef !4
  %i.eg = icmp sgt i8 %i.ef, -65
  br i1 %i.eg, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag, %.split.i.i.i.peel90, %bb.ae
  %i.eh = icmp samesign eq i64 %i.eb, %.sroa.13106.0.copyload
  br i1 %i.eh, label %.loopexit.i.peel, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.eb
  %i.ej = load i8, ptr %i.ei, align 1, !noalias !496, !noundef !4 ; 3 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %.loopexit.i.peel, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91": ; preds = %bb.ai
  %i.el = add nuw nsw i64 %i.eb, 1
  %i.em = icmp samesign ne i64 %i.el, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.em)
  %i.en = icmp samesign ugt i8 %i.ej, -33
  br i1 %i.en, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92", label %.loopexit.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91"
  %i.eo = add nuw nsw i64 %i.eb, 2
  %i.ep = icmp samesign ne i64 %i.eo, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp samesign ugt i8 %i.ej, -17
  br i1 %i.eq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel93", label %.loopexit.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel93": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92"
  %i.er = add nuw nsw i64 %i.eb, 3
  %i.es = icmp samesign ne i64 %i.er, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.es)
  br label %.loopexit.i.peel

.loopexit251.peel:                                ; preds = %bb.x
  br i1 %i.cf, label %.loopexit.i.peel, label %.critedge23

.loopexit.i.peel:                                 ; preds = %.loopexit251.peel, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel93", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91", %bb.ai, %bb.ah, %bb.aa
  %.sroa.460.1247.peel = phi i64 [ %.sroa.13106.0.copyload, %.loopexit251.peel ], [ %.sroa.13106.0.copyload, %bb.ah ], [ %.sroa.497.0.copyload, %bb.aa ], [ %i.eb, %bb.ai ], [ %i.eb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91" ], [ %i.eb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92" ], [ %i.eb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel93" ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.460.1247.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %1, ptr noundef nonnull %i.et)
          to label %bb.aj unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.aj:                                            ; preds = %.loopexit.i.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.n)
          to label %.preheader.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.preheader.i:                                     ; preds = %bb.aj, %bb.ay
  %.sroa.06.0 = phi i64 [ %.sroa.460.1247, %bb.ay ], [ %.sroa.460.1247.peel, %bb.aj ] ; 14 uses
  %i.eu = icmp eq i64 %.sroa.06.0, 0
  br i1 %i.eu, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.preheader.i
  %.not.i.i.i.peel = icmp ult i64 %.sroa.06.0, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i.peel, label %bb.al, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.ak
  %i.ev = icmp eq i64 %.sroa.06.0, %.sroa.13106.0.copyload
  br i1 %i.ev, label %bb.am, label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.06.0
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !494, !noalias !495, !noundef !4
  %i.ey = icmp sgt i8 %i.ex, -65
  br i1 %i.ey, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al, %.split.i.i.i.peel, %.preheader.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %.sroa.06.0 ; 4 uses
  %i.fa = icmp samesign eq i64 %.sroa.06.0, %.sroa.13106.0.copyload
  br i1 %i.fa, label %.critedge23, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = load i8, ptr %i.ez, align 1, !noalias !496, !noundef !4 ; 5 uses
  %i.fc = icmp sgt i8 %i.fb, -1
  br i1 %i.fc, label %bb.ao, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel": ; preds = %bb.an
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fe = and i8 %i.fb, 31
  %i.ff = zext nneg i8 %i.fe to i32               ; 3 uses
  %i.fg = add nuw nsw i64 %.sroa.06.0, 1
  %i.fh = icmp samesign ne i64 %i.fg, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.fh)
  %i.fi = load i8, ptr %i.fd, align 1, !noalias !496, !noundef !4
  %i.fj = shl nuw nsw i32 %i.ff, 6
  %i.fk = and i8 %i.fi, 63
  %i.fl = zext nneg i8 %i.fk to i32               ; 2 uses
  %i.fm = or disjoint i32 %i.fj, %i.fl
  %i.fn = icmp samesign ugt i8 %i.fb, -33
  br i1 %i.fn, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel", label %bb.ap

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel"
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.fp = add nuw nsw i64 %.sroa.06.0, 2
  %i.fq = icmp samesign ne i64 %i.fp, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.fq)
  %i.fr = load i8, ptr %i.fo, align 1, !noalias !496, !noundef !4
  %i.fs = shl nuw nsw i32 %i.fl, 6
  %i.ft = and i8 %i.fr, 63
  %i.fu = zext nneg i8 %i.ft to i32
  %i.fv = or disjoint i32 %i.fs, %i.fu            ; 2 uses
  %i.fw = shl nuw nsw i32 %i.ff, 12
  %i.fx = or disjoint i32 %i.fv, %i.fw
  %i.fy = icmp samesign ugt i8 %i.fb, -17
  br i1 %i.fy, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel", label %bb.ap

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel"
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ez, i64 3
  %i.ga = add nuw nsw i64 %.sroa.06.0, 3
  %i.gb = icmp samesign ne i64 %i.ga, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.gb)
  %i.gc = load i8, ptr %i.fz, align 1, !noalias !496, !noundef !4
  %i.gd = shl nuw nsw i32 %i.ff, 18
  %i.ge = and i32 %i.gd, 1835008
  %i.gf = shl nuw nsw i32 %i.fv, 6
  %i.gg = and i8 %i.gc, 63
  %i.gh = zext nneg i8 %i.gg to i32
  %i.gi = or disjoint i32 %i.gf, %i.gh
  %i.gj = or disjoint i32 %i.gi, %i.ge
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gk = zext nneg i8 %i.fb to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.fx, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel" ], [ %i.gj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel" ], [ %i.fm, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel" ], [ %i.gk, %bb.ao ] ; 4 uses
  %i.gl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.gl)
  %i.gm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.gm, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.gn, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.go = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.go, i64 3, i64 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.aq, %bb.ar
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.aq ], [ %..i.i.peel, %bb.ar ], [ 1, %bb.ap ]
  %i.gp = add i64 %.sroa.01.0.i.i.peel, %.sroa.06.0 ; 15 uses
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not.i.i.i = icmp ult i64 %i.gp, %.sroa.13106.0.copyload
  br i1 %.not.i.i.i, label %bb.au, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.at
  %i.gr = icmp eq i64 %i.gp, %.sroa.13106.0.copyload
  br i1 %i.gr, label %bb.av, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.gp
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !494, !noalias !495, !noundef !4
  %i.gu = icmp sgt i8 %i.gt, -65
  br i1 %i.gu, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %bb.au, %.split.i.i.i, %bb.as
  %i.gv = icmp samesign eq i64 %i.gp, %.sroa.13106.0.copyload
  br i1 %i.gv, label %.loopexit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.12105.0.copyload, i64 %i.gp
  %i.gx = load i8, ptr %i.gw, align 1, !noalias !496, !noundef !4 ; 3 uses
  %i.gy = icmp sgt i8 %i.gx, -1
  br i1 %i.gy, label %.loopexit.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i": ; preds = %bb.aw
  %i.gz = add nuw nsw i64 %i.gp, 1
  %i.ha = icmp samesign ne i64 %i.gz, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.ha)
  %i.hb = icmp samesign ugt i8 %i.gx, -33
  br i1 %i.hb, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i", label %.loopexit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i"
  %i.hc = add nuw nsw i64 %i.gp, 2
  %i.hd = icmp samesign ne i64 %i.hc, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.hd)
  %i.he = icmp samesign ugt i8 %i.gx, -17
  br i1 %i.he, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i", label %.loopexit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i"
  %i.hf = add nuw nsw i64 %i.gp, 3
  %i.hg = icmp samesign ne i64 %i.hf, %.sroa.13106.0.copyload
  call void @llvm.assume(i1 %i.hg)
  br label %.loopexit.i

.loopexit:                                        ; preds = %bb.al, %.split.i.i.i.peel, %bb.au, %.split.i.i.i, %bb.ag, %.split.i.i.i.peel90, %bb.w, %.split.i.i.i.peel.peel
  %.sroa.460.1.lcssa = phi i64 [ %.sroa.497.0.copyload, %.split.i.i.i.peel.peel ], [ %.sroa.497.0.copyload, %bb.w ], [ %i.eb, %.split.i.i.i.peel90 ], [ %i.eb, %bb.ag ], [ %.sroa.06.0, %bb.al ], [ %.sroa.06.0, %.split.i.i.i.peel ], [ %i.gp, %.split.i.i.i ], [ %i.gp, %bb.au ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.12105.0.copyload, i64 noundef %.sroa.13106.0.copyload, i64 noundef %.sroa.460.1.lcssa, i64 noundef %.sroa.13106.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14
          to label %.noexc unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit
  unreachable

.split.us:                                        ; preds = %.lr.ph
  %i.hh = add i64 %i.v, %.sroa.0.0.i.i43.us
  %umax.i47 = call i64 @llvm.umax.i64(i64 %.sroa.13106.0.copyload, i64 %i.hh)
  br label %.split.us.invoke

.split.us.invoke:                                 ; preds = %bb.i, %.lr.ph39, %bb.p, %.lr.ph46, %.split187.us, %.split.us
  %i.hi = phi i64 [ %umax.i47, %.split.us ], [ %umax.i, %.split187.us ], [ %i.bq, %.lr.ph46 ], [ %i.br, %bb.p ], [ %i.an, %.lr.ph39 ], [ %i.ap, %bb.i ]
  %i.hj = phi i64 [ %.sroa.13106.0.copyload, %.split.us ], [ %.sroa.13106.0.copyload, %.split187.us ], [ %.sroa.15.0.copyload, %.lr.ph46 ], [ %.sroa.13106.0.copyload, %bb.p ], [ %.sroa.15.0.copyload, %.lr.ph39 ], [ %.sroa.13106.0.copyload, %bb.i ]
  %i.hk = phi ptr [ @7, %.split.us ], [ @7, %.split187.us ], [ @5, %.lr.ph46 ], [ @6, %bb.p ], [ @5, %.lr.ph39 ], [ @6, %bb.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.hi, i64 noundef %i.hj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hk) #14
          to label %.split.us.cont unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.split.us.cont:                                   ; preds = %.split.us.invoke
  unreachable

.split187.us:                                     ; preds = %.lr.ph43
  %i.hl = add i64 %i.ba, %.sroa.497.0.copyload
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.13106.0.copyload, i64 %i.hl)
  br label %.split.us.invoke

.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.u, %.loopexit.i.us, %.critedge23, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit", %.loopexit, %.split.us.invoke, %.loopexit.i, %bb.ay, %.loopexit.i.peel, %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #13
          to label %bb.ba unwind label %bb.az

.loopexit.i:                                      ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i", %bb.aw, %bb.av
  %.sroa.460.1247 = phi i64 [ %i.gp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i" ], [ %.sroa.13106.0.copyload, %bb.av ], [ %i.gp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i" ], [ %i.gp, %bb.aw ], [ %i.gp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i" ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.460.1247
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.hm, ptr noundef nonnull %i.hn)
          to label %bb.ay unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.critedge23:                                      ; preds = %.loopexit251.peel, %bb.am, %bb.m, %bb.d, %.sink.split.i.us, %bb.t, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"
  %.sroa.06.0166 = phi i64 [ %.sroa.06.0.us, %bb.m ], [ %.sroa.06.0.us, %.sink.split.i.us ], [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split" ], [ %.sroa.06.0.us, %bb.t ], [ %.sroa.06.0.us, %bb.d ], [ 0, %.loopexit251.peel ], [ %.sroa.06.0, %bb.am ]
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0166
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.ho, ptr noundef nonnull %i.hp)
          to label %bb.ax unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ax:                                            ; preds = %.critedge23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ay:                                            ; preds = %.loopexit.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.n)
          to label %.preheader.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !llvm.loop !489

bb.az:                                            ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

bb.ba:                                            ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !541, !nonnull !4, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !541, !nonnull !4, !noundef !4 ; 4 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee628cb87b998026E.exit.thread", label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee628cb87b998026E.exit"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hee628cb87b998026E.exit": ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  store ptr %i.v, ptr %1, align 8, !alias.scope !541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !542
  store ptr %i.r, ptr %i.l, align 8, !noalias !543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !543
  store ptr %i.l, ptr %i.k, align 8, !noalias !543
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hc309f40683e6d3e5E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !544
  store ptr @14, ptr %i.j, align 8, !noalias !545
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !545
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !545
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !545
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !545
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j), !noalias !540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !542
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
          to label %common.resume unwind label %bb.s

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
          to label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hd4fb5b709dedd24eE.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h3d58e3702530388cE.exit.i.i.i", %bb.i, %bb.g, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i.i.i.i", %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp36, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i.i.i.i" ], [ %i.ba, %bb.n ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #13
          to label %bb.c unwind label %bb.s

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hd4fb5b709dedd24eE.exit": ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.ao, label %bb.h, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hefc34bb8027fd7caE.exit", !prof !10

bb.h:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hd4fb5b709dedd24eE.exit"
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #14
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hefc34bb8027fd7caE.exit": ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hd4fb5b709dedd24eE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.ap = icmp eq ptr %i.v, %i.t
  br i1 %i.ap, label %"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h446c0535c232d415E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hefc34bb8027fd7caE.exit"
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
end_hunk_0
