Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.00?download=true
inline.NumInlined: 1637
inline.NumDeleted: 464
begin_hunk_0_@"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$RP$$GT$17h3712218f9bf04ff7E":bb.a
"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h670739065d6ccec7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit" unwind label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit"
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha86766fe95ee8582E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit"
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha86766fe95ee8582E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h14edcfa7b1f1fdbdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc2cf1f5219e83aa9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6aa0dee560d0a0e3E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr104drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h771d8dd389c0d85eE.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6aa0dee560d0a0e3E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

"_ZN4core3ptr104drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h771d8dd389c0d85eE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc2d8f31570e15d01E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @6, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E"(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !28, !noundef !4 ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !28, !nonnull !4, !noundef !4
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !28, !noundef !4 ; 2 uses
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
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !28
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E"(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 1 %1, ptr noundef nonnull readonly %i.a)
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hcdb13b152c7683d6E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !5, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit", !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.g, i64 %i.i) #17
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit": ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp ule i64 %2, %i.g
  call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @57, i64 noundef 2)
          to label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit" unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit"
  %.sroa.042.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.443.0.copyload = load i64, ptr %.sroa.443.0..sroa_idx, align 8 ; 26 uses
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.645.0.copyload = load i64, ptr %.sroa.645.0..sroa_idx, align 8 ; 5 uses
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.746.0.copyload = load i64, ptr %.sroa.746.0..sroa_idx, align 8 ; 2 uses
  %.sroa.847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.847.0.copyload = load i64, ptr %.sroa.847.0..sroa_idx, align 8
  %.sroa.1049.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.1049.0.copyload = load i64, ptr %.sroa.1049.0..sroa_idx, align 8
  %.sroa.1251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.1251.0.copyload = load ptr, ptr %.sroa.1251.0..sroa_idx, align 8 ; 17 uses
  %.sroa.1352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.1352.0.copyload = load i64, ptr %.sroa.1352.0..sroa_idx, align 8 ; 42 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = trunc nuw i64 %.sroa.042.0.copyload to i1
  %i.m = add i64 %.sroa.15.0.copyload, -1         ; 3 uses
  br i1 %i.l, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us", label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1251.0.copyload), "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.n = sub i64 %.sroa.15.0.copyload, %.sroa.645.0.copyload
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.443.0.copyload, i64 %.sroa.15.0.copyload)
  %i.o = add i64 %.sroa.443.0.copyload, -1        ; 2 uses
  %.first_iter = icmp ult i64 %i.o, %.sroa.15.0.copyload
  %.first_iter.fr = freeze i1 %.first_iter
  %.not67.us = icmp eq i64 %.sroa.443.0.copyload, 0
  %invariant.op = sub i64 1, %.sroa.443.0.copyload
  %exitcond.not.i.us41.not = icmp ult i64 %.sroa.443.0.copyload, %.sroa.15.0.copyload
  %invariant.op122 = sub i64 1, %.sroa.443.0.copyload
  %.not67.us44 = icmp eq i64 %.sroa.443.0.copyload, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.u, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us"
  %.sroa.3014.0.us = phi i64 [ %.sroa.1049.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.3014.3.us, %bb.u ] ; 2 uses
  %.sroa.18.0.us = phi i64 [ %.sroa.847.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.1155.3.us, %bb.u ] ; 3 uses
  %.sroa.06.0.us = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.1155.3.us, %bb.u ] ; 5 uses
  %i.p = icmp eq i64 %.sroa.3014.0.us, -1
  %i.q = add i64 %.sroa.18.0.us, %i.m             ; 3 uses
  %i.r = icmp ult i64 %i.q, %.sroa.1352.0.copyload ; 2 uses
  br i1 %i.p, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  br i1 %i.r, label %.lr.ph.i41.us, label %.critedge23

.lr.ph.i41.us:                                    ; preds = %bb.d, %.sink.split.i.us
  %i.s = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.3014.0.us, %bb.d ] ; 3 uses
  %i.t = phi i64 [ %i.aw, %.sink.split.i.us ], [ %i.q, %bb.d ]
  %i.u = phi i64 [ %.ph71.i.us, %.sink.split.i.us ], [ %.sroa.18.0.us, %bb.d ] ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !46, !noundef !4
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i64
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.z, %.sroa.746.0.copyload
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i41.us
  %.sroa.0.0.i.i43.us = call i64 @llvm.umax.i64(i64 %i.s, i64 %.sroa.443.0.copyload) ; 4 uses
  %umax49.i44.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i43.us, i64 %.sroa.15.0.copyload)
  %exitcond.not.i46.us36.not = icmp ult i64 %.sroa.0.0.i.i43.us, %.sroa.15.0.copyload
  br i1 %exitcond.not.i46.us36.not, label %.lr.ph, label %.preheader68.us.preheader

bb.f:                                             ; preds = %bb.g
  %i.ac = add nuw i64 %.sroa.02.0.i45.us37, 1     ; 2 uses
  %exitcond.not.i46.us = icmp eq i64 %i.ac, %umax49.i44.us
  br i1 %exitcond.not.i46.us, label %.preheader68.us.preheader, label %.lr.ph

.preheader68.us.preheader:                        ; preds = %bb.f, %bb.e
  %i.ad = icmp ult i64 %i.s, %.sroa.443.0.copyload
  br i1 %i.ad, label %.lr.ph39, label %.loopexit.i.us

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.02.0.i45.us37 = phi i64 [ %i.ac, %bb.f ], [ %.sroa.0.0.i.i43.us, %bb.e ] ; 4 uses
  %i.ae = add i64 %.sroa.02.0.i45.us37, %i.u      ; 2 uses
  %i.af = icmp ult i64 %i.ae, %.sroa.1352.0.copyload
  br i1 %i.af, label %bb.g, label %.split.us

bb.g:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i45.us37
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !47, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.ae
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !46, !noundef !4
  %.not21.i48.us = icmp eq i8 %i.ah, %i.aj
  br i1 %.not21.i48.us, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.reass.reass = add i64 %i.u, %invariant.op
  %i.ak = add i64 %.reass.reass, %.sroa.02.0.i45.us37
  br label %.sink.split.i.us

.preheader68.us:                                  ; preds = %bb.j
  %i.al = icmp ult i64 %i.s, %i.am
  br i1 %i.al, label %.lr.ph39, label %.loopexit.i.us

.lr.ph39:                                         ; preds = %.preheader68.us.preheader, %.preheader68.us
  %.sroa.2.0.i49.us38 = phi i64 [ %i.am, %.preheader68.us ], [ %.sroa.443.0.copyload, %.preheader68.us.preheader ]
  %i.am = add i64 %.sroa.2.0.i49.us38, -1         ; 6 uses
  %i.an = icmp ult i64 %i.am, %.sroa.15.0.copyload
  br i1 %i.an, label %bb.i, label %.split.us.invoke

bb.i:                                             ; preds = %.lr.ph39
  %i.ao = add i64 %i.am, %i.u                     ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %.sroa.1352.0.copyload
  br i1 %i.ap, label %bb.j, label %.split.us.invoke

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.am
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !47, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.ao
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !46, !noundef !4
  %.not.i50.us = icmp eq i8 %i.ar, %i.at
  br i1 %.not.i50.us, label %.preheader68.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = add i64 %i.u, %.sroa.645.0.copyload
  br label %.sink.split.i.us

bb.l:                                             ; preds = %.lr.ph.i41.us
  %i.av = add i64 %i.u, %.sroa.15.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.l, %bb.k, %bb.h
  %.sink.i.us = phi i64 [ %i.n, %bb.k ], [ 0, %bb.h ], [ 0, %bb.l ]
  %.ph71.i.us = phi i64 [ %i.au, %bb.k ], [ %i.ak, %bb.h ], [ %i.av, %bb.l ] ; 2 uses
  %i.aw = add i64 %.ph71.i.us, %i.m               ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %.sroa.1352.0.copyload
  br i1 %i.ax, label %.lr.ph.i41.us, label %.critedge23

bb.m:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  br i1 %i.r, label %.lr.ph.i34.us, label %.critedge23

.lr.ph.i34.us:                                    ; preds = %bb.m, %bb.t
  %i.ay = phi i64 [ %i.by, %bb.t ], [ %i.q, %bb.m ]
  %i.az = phi i64 [ %i.bx, %bb.t ], [ %.sroa.18.0.us, %bb.m ] ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.ay
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !48, !noundef !4
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = and i64 %i.be, %.sroa.746.0.copyload
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i34.us
  br i1 %exitcond.not.i.us41.not, label %bb.p, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.q
  %i.bh = add nuw i64 %.sroa.02.0.i.us44, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bh, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader.us.preheader, label %bb.p

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.first_iter.fr, label %.preheader.us.us.preheader, label %.lr.ph46

.preheader.us.us.preheader:                       ; preds = %.preheader.us.preheader
  br i1 %.not67.us44, label %.loopexit.i.us, label %.lr.ph43

.preheader.us.preheader.a:                        ; preds = %bb.n
  %.not67.us.us = icmp eq i64 %3, 0
  br i1 %.not67.us.us, label %.loopexit.i.us, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader.us.us.preheader, %.preheader.us.preheader.a
  %.sroa.02.0.i.us42 = phi i64 [ %3, %.preheader.us.preheader.a ], [ %.sroa.443.0.copyload, %.preheader.us.us.preheader ]
  %3 = add i64 %.sroa.02.0.i.us42, -1             ; 4 uses
  %i.bi = add i64 %3, %i.az                       ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %.sroa.1352.0.copyload
  br i1 %i.bj, label %bb.n, label %.split.us.invoke

bb.n:                                             ; preds = %.lr.ph43
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %3
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !49, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.bi
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !48, !noundef !4
  %.not21.i.us.a = icmp eq i8 %i.bl, %i.bn
  br i1 %.not21.i.us.a, label %.preheader.us.preheader.a, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = add i64 %.sroa.645.0.copyload, %i.az
  br label %bb.t

.lr.ph46:                                         ; preds = %.preheader.us.preheader
  br i1 %.not67.us, label %.loopexit.i.us, label %.split.us.invoke

bb.p:                                             ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i.us44 = phi i64 [ %i.bh, %.preheader ], [ %.sroa.443.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.bp = add i64 %.sroa.02.0.i.us44, %i.az       ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %.sroa.1352.0.copyload
  br i1 %i.bq, label %bb.q, label %.split132.us

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i.us44
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !49, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.bp
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !48, !noundef !4
  %.not.i.us = icmp eq i8 %i.bs, %i.bu
  br i1 %.not.i.us, label %.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.reass265.reass = add i64 %i.az, %invariant.op122
  %i.bv = add i64 %.reass265.reass, %.sroa.02.0.i.us44
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i34.us
  %i.bw = add i64 %i.az, %.sroa.15.0.copyload
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o, %bb.r
  %i.bx = phi i64 [ %i.bv, %bb.r ], [ %i.bw, %bb.s ], [ %i.bo, %bb.o ] ; 2 uses
  %i.by = add i64 %i.bx, %i.m                     ; 2 uses
  %i.bz = icmp ult i64 %i.by, %.sroa.1352.0.copyload
  br i1 %i.bz, label %.lr.ph.i34.us, label %.critedge23

.loopexit.i.us:                                   ; preds = %.preheader68.us.preheader, %.preheader.us.us.preheader, %.preheader68.us, %.preheader.us.preheader.a, %.lr.ph46
  %.sroa.754.3.us = phi i64 [ %i.az, %.preheader.us.preheader.a ], [ %i.az, %.lr.ph46 ], [ %i.u, %.preheader68.us ], [ %i.az, %.preheader.us.us.preheader ], [ %i.u, %.preheader68.us.preheader ] ; 2 uses
  %.sroa.3014.3.us = phi i64 [ -1, %.preheader.us.preheader.a ], [ -1, %.lr.ph46 ], [ 0, %.preheader68.us ], [ -1, %.preheader.us.us.preheader ], [ 0, %.preheader68.us.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0.us
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.754.3.us
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cb)
          to label %bb.u unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.u:                                             ; preds = %.loopexit.i.us
  %.sroa.1155.3.us = add i64 %.sroa.754.3.us, %.sroa.15.0.copyload ; 2 uses
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull @58, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @58, i64 4))
          to label %bb.c unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit"
  %i.cc = and i64 %.sroa.645.0.copyload, 65536
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split", label %.critedge23

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1251.0.copyload) ]
  %i.cd = trunc i64 %.sroa.645.0.copyload to i1   ; 2 uses
  %i.ce = icmp eq i64 %.sroa.443.0.copyload, 0
  br i1 %i.ce, label %bb.x, label %bb.v

bb.v:                                             ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split"
  %.not.i.i.i.peel.peel = icmp ult i64 %.sroa.443.0.copyload, %.sroa.1352.0.copyload
  br i1 %.not.i.i.i.peel.peel, label %bb.w, label %.split.i.i.i.peel.peel

.split.i.i.i.peel.peel:                           ; preds = %bb.v
  %i.cf = icmp eq i64 %.sroa.443.0.copyload, %.sroa.1352.0.copyload
  br i1 %i.cf, label %bb.x, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %.sroa.443.0.copyload
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !50, !noalias !51, !noundef !4
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w, %.split.i.i.i.peel.peel, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split"
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %.sroa.443.0.copyload ; 4 uses
  %i.ck = icmp samesign eq i64 %.sroa.443.0.copyload, %.sroa.1352.0.copyload
  br i1 %i.ck, label %.loopexit196.peel, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = load i8, ptr %i.cj, align 1, !noalias !52, !noundef !4 ; 5 uses
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.z, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel": ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.co = and i8 %i.cl, 31
  %i.cp = zext nneg i8 %i.co to i32               ; 3 uses
  %i.cq = add nuw nsw i64 %.sroa.443.0.copyload, 1
  %i.cr = icmp samesign ne i64 %i.cq, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.cr)
  %i.cs = load i8, ptr %i.cn, align 1, !noalias !52, !noundef !4
  %i.ct = shl nuw nsw i32 %i.cp, 6
  %i.cu = and i8 %i.cs, 63
  %i.cv = zext nneg i8 %i.cu to i32               ; 2 uses
  %i.cw = or disjoint i32 %i.ct, %i.cv
  %i.cx = icmp samesign ugt i8 %i.cl, -33
  br i1 %i.cx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel", label %bb.aa

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel"
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cz = add nuw nsw i64 %.sroa.443.0.copyload, 2
  %i.da = icmp samesign ne i64 %i.cz, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.da)
  %i.db = load i8, ptr %i.cy, align 1, !noalias !52, !noundef !4
  %i.dc = shl nuw nsw i32 %i.cv, 6
  %i.dd = and i8 %i.db, 63
  %i.de = zext nneg i8 %i.dd to i32
  %i.df = or disjoint i32 %i.dc, %i.de            ; 2 uses
  %i.dg = shl nuw nsw i32 %i.cp, 12
  %i.dh = or disjoint i32 %i.df, %i.dg
  %i.di = icmp samesign ugt i8 %i.cl, -17
  br i1 %i.di, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.peel", label %bb.aa

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel"
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.dk = add nuw nsw i64 %.sroa.443.0.copyload, 3
  %i.dl = icmp samesign ne i64 %i.dk, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.dl)
  %i.dm = load i8, ptr %i.dj, align 1, !noalias !52, !noundef !4
  %i.dn = shl nuw nsw i32 %i.cp, 18
  %i.do = and i32 %i.dn, 1835008
  %i.dp = shl nuw nsw i32 %i.df, 6
  %i.dq = and i8 %i.dm, 63
  %i.dr = zext nneg i8 %i.dq to i32
  %i.ds = or disjoint i32 %i.dp, %i.dr
  %i.dt = or disjoint i32 %i.ds, %i.do
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.du = zext nneg i8 %i.cl to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel"
  %.sroa.4.0.i.ph.i.i.peel.peel = phi i32 [ %i.dh, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel.peel" ], [ %i.dt, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel.peel" ], [ %i.cw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel.peel" ], [ %i.du, %bb.z ] ; 4 uses
  %i.dv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 1114112
  call void @llvm.assume(i1 %i.dv)
  br i1 %i.cd, label %.loopexit.i.peel, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 128
  br i1 %i.dw, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 2048
  br i1 %i.dx, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.peel, 65536
  %..i.i.peel.peel = select i1 %i.dy, i64 3, i64 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sroa.01.0.i.i.peel.peel = phi i64 [ 2, %bb.ac ], [ %..i.i.peel.peel, %bb.ad ], [ 1, %bb.ab ]
  %i.dz = add i64 %.sroa.01.0.i.i.peel.peel, %.sroa.443.0.copyload ; 15 uses
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i.i.peel89 = icmp ult i64 %i.dz, %.sroa.1352.0.copyload
  br i1 %.not.i.i.i.peel89, label %bb.ag, label %.split.i.i.i.peel90

.split.i.i.i.peel90:                              ; preds = %bb.af
  %i.eb = icmp eq i64 %i.dz, %.sroa.1352.0.copyload
  br i1 %i.eb, label %bb.ah, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.dz
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !50, !noalias !51, !noundef !4
  %i.ee = icmp sgt i8 %i.ed, -65
  br i1 %i.ee, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag, %.split.i.i.i.peel90, %bb.ae
  %i.ef = icmp samesign eq i64 %i.dz, %.sroa.1352.0.copyload
  br i1 %i.ef, label %.loopexit.i.peel, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.dz
  %i.eh = load i8, ptr %i.eg, align 1, !noalias !52, !noundef !4 ; 3 uses
  %i.ei = icmp sgt i8 %i.eh, -1
  br i1 %i.ei, label %.loopexit.i.peel, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91": ; preds = %bb.ai
  %i.ej = add nuw nsw i64 %i.dz, 1
  %i.ek = icmp samesign ne i64 %i.ej, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.ek)
  %i.el = icmp samesign ugt i8 %i.eh, -33
  br i1 %i.el, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92", label %.loopexit.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91"
  %i.em = add nuw nsw i64 %i.dz, 2
  %i.en = icmp samesign ne i64 %i.em, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.en)
  %i.eo = icmp samesign ugt i8 %i.eh, -17
  br i1 %i.eo, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel93", label %.loopexit.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel93": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92"
  %i.ep = add nuw nsw i64 %i.dz, 3
  %i.eq = icmp samesign ne i64 %i.ep, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.eq)
  br label %.loopexit.i.peel

.loopexit196.peel:                                ; preds = %bb.x
  br i1 %i.cd, label %.loopexit.i.peel, label %.critedge23

.loopexit.i.peel:                                 ; preds = %.loopexit196.peel, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel93", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91", %bb.ai, %bb.ah, %bb.aa
  %.sroa.46.1192.peel = phi i64 [ %.sroa.1352.0.copyload, %.loopexit196.peel ], [ %.sroa.1352.0.copyload, %bb.ah ], [ %.sroa.443.0.copyload, %bb.aa ], [ %i.dz, %bb.ai ], [ %i.dz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel91" ], [ %i.dz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel92" ], [ %i.dz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel93" ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.46.1192.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %1, ptr noundef nonnull %i.er)
          to label %bb.aj unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.aj:                                            ; preds = %.loopexit.i.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull @58, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @58, i64 4))
          to label %.preheader.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.preheader.i:                                     ; preds = %bb.aj, %bb.ay
  %.sroa.06.0 = phi i64 [ %.sroa.46.1192, %bb.ay ], [ %.sroa.46.1192.peel, %bb.aj ] ; 14 uses
  %i.es = icmp eq i64 %.sroa.06.0, 0
  br i1 %i.es, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.preheader.i
  %.not.i.i.i.peel = icmp ult i64 %.sroa.06.0, %.sroa.1352.0.copyload
  br i1 %.not.i.i.i.peel, label %bb.al, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.ak
  %i.et = icmp eq i64 %.sroa.06.0, %.sroa.1352.0.copyload
  br i1 %i.et, label %bb.am, label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %.sroa.06.0
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !50, !noalias !51, !noundef !4
  %i.ew = icmp sgt i8 %i.ev, -65
  br i1 %i.ew, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al, %.split.i.i.i.peel, %.preheader.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %.sroa.06.0 ; 4 uses
  %i.ey = icmp samesign eq i64 %.sroa.06.0, %.sroa.1352.0.copyload
  br i1 %i.ey, label %.critedge23, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ez = load i8, ptr %i.ex, align 1, !noalias !52, !noundef !4 ; 5 uses
  %i.fa = icmp sgt i8 %i.ez, -1
  br i1 %i.fa, label %bb.ao, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel": ; preds = %bb.an
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.fc = and i8 %i.ez, 31
  %i.fd = zext nneg i8 %i.fc to i32               ; 3 uses
  %i.fe = add nuw nsw i64 %.sroa.06.0, 1
  %i.ff = icmp samesign ne i64 %i.fe, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.ff)
  %i.fg = load i8, ptr %i.fb, align 1, !noalias !52, !noundef !4
  %i.fh = shl nuw nsw i32 %i.fd, 6
  %i.fi = and i8 %i.fg, 63
  %i.fj = zext nneg i8 %i.fi to i32               ; 2 uses
  %i.fk = or disjoint i32 %i.fh, %i.fj
  %i.fl = icmp samesign ugt i8 %i.ez, -33
  br i1 %i.fl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel", label %bb.ap

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel"
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.fn = add nuw nsw i64 %.sroa.06.0, 2
  %i.fo = icmp samesign ne i64 %i.fn, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.fo)
  %i.fp = load i8, ptr %i.fm, align 1, !noalias !52, !noundef !4
  %i.fq = shl nuw nsw i32 %i.fj, 6
  %i.fr = and i8 %i.fp, 63
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = or disjoint i32 %i.fq, %i.fs            ; 2 uses
  %i.fu = shl nuw nsw i32 %i.fd, 12
  %i.fv = or disjoint i32 %i.ft, %i.fu
  %i.fw = icmp samesign ugt i8 %i.ez, -17
  br i1 %i.fw, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel", label %bb.ap

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel"
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %i.fy = add nuw nsw i64 %.sroa.06.0, 3
  %i.fz = icmp samesign ne i64 %i.fy, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.fz)
  %i.ga = load i8, ptr %i.fx, align 1, !noalias !52, !noundef !4
  %i.gb = shl nuw nsw i32 %i.fd, 18
  %i.gc = and i32 %i.gb, 1835008
  %i.gd = shl nuw nsw i32 %i.ft, 6
  %i.ge = and i8 %i.ga, 63
  %i.gf = zext nneg i8 %i.ge to i32
  %i.gg = or disjoint i32 %i.gd, %i.gf
  %i.gh = or disjoint i32 %i.gg, %i.gc
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gi = zext nneg i8 %i.ez to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.fv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.peel" ], [ %i.gh, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.peel" ], [ %i.fk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.peel" ], [ %i.gi, %bb.ao ] ; 4 uses
  %i.gj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.gj)
  %i.gk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.gk, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.gl, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.gm, i64 3, i64 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.aq, %bb.ar
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.aq ], [ %..i.i.peel, %bb.ar ], [ 1, %bb.ap ]
  %i.gn = add i64 %.sroa.01.0.i.i.peel, %.sroa.06.0 ; 15 uses
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not.i.i.i = icmp ult i64 %i.gn, %.sroa.1352.0.copyload
  br i1 %.not.i.i.i, label %bb.au, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.at
  %i.gp = icmp eq i64 %i.gn, %.sroa.1352.0.copyload
  br i1 %i.gp, label %bb.av, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.gn
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !50, !noalias !51, !noundef !4
  %i.gs = icmp sgt i8 %i.gr, -65
  br i1 %i.gs, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %bb.au, %.split.i.i.i, %bb.as
  %i.gt = icmp samesign eq i64 %i.gn, %.sroa.1352.0.copyload
  br i1 %i.gt, label %.loopexit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.gn
  %i.gv = load i8, ptr %i.gu, align 1, !noalias !52, !noundef !4 ; 3 uses
  %i.gw = icmp sgt i8 %i.gv, -1
  br i1 %i.gw, label %.loopexit.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i": ; preds = %bb.aw
  %i.gx = add nuw nsw i64 %i.gn, 1
  %i.gy = icmp samesign ne i64 %i.gx, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.gy)
  %i.gz = icmp samesign ugt i8 %i.gv, -33
  br i1 %i.gz, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i", label %.loopexit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i"
  %i.ha = add nuw nsw i64 %i.gn, 2
  %i.hb = icmp samesign ne i64 %i.ha, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.hb)
  %i.hc = icmp samesign ugt i8 %i.gv, -17
  br i1 %i.hc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i", label %.loopexit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i"
  %i.hd = add nuw nsw i64 %i.gn, 3
  %i.he = icmp samesign ne i64 %i.hd, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.he)
  br label %.loopexit.i

.loopexit:                                        ; preds = %bb.al, %.split.i.i.i.peel, %bb.au, %.split.i.i.i, %bb.ag, %.split.i.i.i.peel90, %bb.w, %.split.i.i.i.peel.peel
  %.sroa.46.1.lcssa = phi i64 [ %.sroa.443.0.copyload, %.split.i.i.i.peel.peel ], [ %.sroa.443.0.copyload, %bb.w ], [ %i.dz, %.split.i.i.i.peel90 ], [ %i.dz, %bb.ag ], [ %.sroa.06.0, %bb.al ], [ %.sroa.06.0, %.split.i.i.i.peel ], [ %i.gn, %.split.i.i.i ], [ %i.gn, %bb.au ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.1251.0.copyload, i64 noundef %.sroa.1352.0.copyload, i64 noundef %.sroa.46.1.lcssa, i64 noundef %.sroa.1352.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #17
          to label %.noexc unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit
  unreachable

.split.us:                                        ; preds = %.lr.ph
  %i.hf = add i64 %i.u, %.sroa.0.0.i.i43.us
  %umax.i47 = call i64 @llvm.umax.i64(i64 %.sroa.1352.0.copyload, i64 %i.hf)
  br label %.split.us.invoke

.split.us.invoke:                                 ; preds = %.lr.ph46, %bb.i, %.lr.ph39, %.lr.ph43, %.split132.us, %.split.us
  %i.hg = phi i64 [ %umax.i47, %.split.us ], [ %i.am, %.lr.ph39 ], [ %i.bi, %.lr.ph43 ], [ %umax.i, %.split132.us ], [ %i.ao, %bb.i ], [ %i.o, %.lr.ph46 ]
  %i.hh = phi i64 [ %.sroa.1352.0.copyload, %.split.us ], [ %.sroa.15.0.copyload, %.lr.ph39 ], [ %.sroa.1352.0.copyload, %.lr.ph43 ], [ %.sroa.1352.0.copyload, %.split132.us ], [ %.sroa.1352.0.copyload, %bb.i ], [ %.sroa.15.0.copyload, %.lr.ph46 ]
  %i.hi = phi ptr [ @3, %.split.us ], [ @1, %.lr.ph39 ], [ @2, %.lr.ph43 ], [ @3, %.split132.us ], [ @2, %bb.i ], [ @1, %.lr.ph46 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.hg, i64 noundef %i.hh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hi) #17
          to label %.split.us.cont unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.split.us.cont:                                   ; preds = %.split.us.invoke
  unreachable

.split132.us:                                     ; preds = %bb.p
  %i.hj = add i64 %i.az, %.sroa.443.0.copyload
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.1352.0.copyload, i64 %i.hj)
  br label %.split.us.invoke

.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.u, %.loopexit.i.us, %.critedge23, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit", %.loopexit, %.split.us.invoke, %.loopexit.i, %bb.ay, %.loopexit.i.peel, %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #16
          to label %bb.ba unwind label %bb.az

.loopexit.i:                                      ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i", %bb.aw, %bb.av
  %.sroa.46.1192 = phi i64 [ %i.gn, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i" ], [ %.sroa.1352.0.copyload, %bb.av ], [ %i.gn, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i" ], [ %i.gn, %bb.aw ], [ %i.gn, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i" ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.46.1192
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.hk, ptr noundef nonnull %i.hl)
          to label %bb.ay unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.critedge23:                                      ; preds = %.loopexit196.peel, %bb.am, %bb.m, %bb.d, %.sink.split.i.us, %bb.t, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"
  %.sroa.06.0111 = phi i64 [ %.sroa.06.0.us, %bb.m ], [ %.sroa.06.0.us, %.sink.split.i.us ], [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split" ], [ %.sroa.06.0.us, %bb.t ], [ %.sroa.06.0.us, %bb.d ], [ 0, %.loopexit196.peel ], [ %.sroa.06.0, %bb.am ]
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0111
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.hm, ptr noundef nonnull %i.hn)
          to label %bb.ax unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ax:                                            ; preds = %.critedge23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ay:                                            ; preds = %.loopexit.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull @58, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @58, i64 4))
          to label %.preheader.i unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !llvm.loop !45

bb.az:                                            ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

bb.ba:                                            ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$10add_inputs17h95ba6804c2ac819cE"(ptr noalias noundef align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58
  store i64 0, ptr %i.a, align 8, !noalias !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.f, align 8, !noalias !58
  invoke void @_ZN9ninja_gen5input10BuildInput10add_to_vec17h2b130e88085d7a5eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d)
          to label %_ZN9ninja_gen5build13expand_inputs17hfb62453221d076aeE.exit unwind label %bb.b, !noalias !59

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #16
          to label %bb.d unwind label %bb.c, !noalias !59

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15, !noalias !59
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g

_ZN9ninja_gen5build13expand_inputs17hfb62453221d076aeE.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$14add_inputs_vec17h2f27cb78ffd2c4f2E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$10add_inputs17heca404c3fae3b838E"(ptr noalias noundef align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65
  store i64 0, ptr %i.a, align 8, !noalias !65
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !65
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.f, align 8, !noalias !65
  invoke void @_ZN9ninja_gen5input10BuildInput10add_to_vec17h2b130e88085d7a5eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d)
          to label %_ZN9ninja_gen5build13expand_inputs17hf46d03f24e7a50afE.exit unwind label %bb.b, !noalias !66

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #16
          to label %bb.d unwind label %bb.c, !noalias !66

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15, !noalias !66
  unreachable

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %3) #16
          to label %bb.e unwind label %bb.c, !noalias !66

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

_ZN9ninja_gen5build13expand_inputs17hf46d03f24e7a50afE.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %3), !noalias !66
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$14add_inputs_vec17h2f27cb78ffd2c4f2E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$12add_variable17h0395ef6ef75507ccE"(ptr noalias noundef align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !80, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !5, !noalias !80, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %.noexc
  %i.i = load i64, ptr %i.h, align 8, !noalias !80
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.g, i64 %i.i) #17
          to label %.noexc3 unwind label %bb.i

.noexc3:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %i.h, align 8, !noalias !80, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = icmp ule i64 %2, %i.g
  call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !81
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  store i64 %i.g, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !82, !noundef !4 ; 3 uses
  %i.o = load i64, ptr %i.c, align 8, !range !9, !alias.scope !82, !noundef !4
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0b5a5b794d52921cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.e, !noalias !83

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17h947707f3cdee261fE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #16
          to label %.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable
end_hunk_0
