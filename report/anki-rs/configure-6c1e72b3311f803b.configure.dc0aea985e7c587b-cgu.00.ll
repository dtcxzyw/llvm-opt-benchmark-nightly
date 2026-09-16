Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.00?download=true
inline.NumInlined: 1637
inline.NumDeleted: 464
begin_hunk_0_@"_ZN4core3ptr97drop_in_place$LT$$LP$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$RP$$GT$17h3712218f9bf04ff7E":bb.a
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #16
          to label %common.resume unwind label %bb.g

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
          to label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit" unwind label %bb.c

.loopexit:                                        ; preds = %.loopexit.split.loopexit, %.loopexit.split.loopexit.split-lp, %.loopexit.split-lp, %.loopexit.split.us, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit89, %.loopexit.split.loopexit ], [ %lpad.loopexit.split-lp90, %.loopexit.split.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #16
          to label %bb.ba unwind label %bb.az

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit", %.critedge23
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h345c2bfb50fa5b09E.exit"
  %.sroa.042.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.443.0.copyload = load i64, ptr %.sroa.443.0..sroa_idx, align 8 ; 25 uses
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
  %i.m = trunc nuw i64 %.sroa.042.0.copyload to i1
  %i.n = add i64 %.sroa.15.0.copyload, -1         ; 3 uses
  br i1 %i.m, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us", label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1251.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.o = sub i64 %.sroa.15.0.copyload, %.sroa.645.0.copyload
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.443.0.copyload, i64 %.sroa.15.0.copyload)
  %i.p = add i64 %.sroa.443.0.copyload, -1
  %.first_iter = icmp ult i64 %i.p, %.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.443.0.copyload
  %exitcond.not.i.us38.not = icmp ult i64 %.sroa.443.0.copyload, %.sroa.15.0.copyload
  %invariant.op115 = sub i64 1, %.sroa.443.0.copyload
  %.not67.us41 = icmp eq i64 %.sroa.443.0.copyload, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.v, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us"
  %.sroa.3014.0.us = phi i64 [ %.sroa.1049.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.3014.3.us, %bb.v ] ; 2 uses
  %.sroa.18.0.us = phi i64 [ %.sroa.847.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.1155.3.us, %bb.v ] ; 3 uses
  %.sroa.06.0.us = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.us" ], [ %.sroa.1155.3.us, %bb.v ] ; 5 uses
  %i.q = icmp eq i64 %.sroa.3014.0.us, -1
  %i.r = add i64 %.sroa.18.0.us, %i.n             ; 3 uses
  %i.s = icmp ult i64 %i.r, %.sroa.1352.0.copyload ; 2 uses
  br i1 %i.q, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  br i1 %i.s, label %.lr.ph.i41.us, label %.critedge23

.lr.ph.i41.us:                                    ; preds = %bb.e, %.sink.split.i.us
  %i.t = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.3014.0.us, %bb.e ] ; 3 uses
  %i.u = phi i64 [ %i.ax, %.sink.split.i.us ], [ %i.r, %bb.e ]
  %i.v = phi i64 [ %.ph71.i.us, %.sink.split.i.us ], [ %.sroa.18.0.us, %bb.e ] ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !50, !noalias !52, !noundef !4
  %i.y = and i8 %i.x, 63
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = and i64 %i.aa, %.sroa.746.0.copyload
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i41.us
  %.sroa.0.0.i.i43.us = call i64 @llvm.umax.i64(i64 %i.t, i64 %.sroa.443.0.copyload) ; 4 uses
  %umax49.i44.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i43.us, i64 %.sroa.15.0.copyload)
  %exitcond.not.i46.us33.not = icmp ult i64 %.sroa.0.0.i.i43.us, %.sroa.15.0.copyload
  br i1 %exitcond.not.i46.us33.not, label %.lr.ph, label %.preheader68.us.preheader

bb.g:                                             ; preds = %bb.h
  %i.ad = add i64 %.sroa.02.0.i45.us34, 1         ; 2 uses
  %exitcond.not.i46.us = icmp eq i64 %i.ad, %umax49.i44.us
  br i1 %exitcond.not.i46.us, label %.preheader68.us.preheader, label %.lr.ph

.preheader68.us.preheader:                        ; preds = %bb.g, %bb.f
  %i.ae = icmp ult i64 %i.t, %.sroa.443.0.copyload
  br i1 %i.ae, label %.lr.ph36, label %.loopexit.i.us

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.02.0.i45.us34 = phi i64 [ %i.ad, %bb.g ], [ %.sroa.0.0.i.i43.us, %bb.f ] ; 4 uses
  %i.af = add i64 %.sroa.02.0.i45.us34, %i.v      ; 2 uses
  %i.ag = icmp ult i64 %i.af, %.sroa.1352.0.copyload
  br i1 %i.ag, label %bb.h, label %.split.us

bb.h:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i45.us34
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !51, !noalias !53, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.af
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !50, !noalias !52, !noundef !4
  %.not21.i48.us = icmp eq i8 %i.ai, %i.ak
  br i1 %.not21.i48.us, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.reass.reass = add i64 %i.v, %invariant.op
  %i.al = add i64 %.reass.reass, %.sroa.02.0.i45.us34
  br label %.sink.split.i.us

.preheader68.us:                                  ; preds = %bb.k
  %i.am = icmp ult i64 %i.t, %i.an
  br i1 %i.am, label %.lr.ph36, label %.loopexit.i.us

.lr.ph36:                                         ; preds = %.preheader68.us.preheader, %.preheader68.us
  %.sroa.2.0.i49.us35 = phi i64 [ %i.an, %.preheader68.us ], [ %.sroa.443.0.copyload, %.preheader68.us.preheader ]
  %i.an = add i64 %.sroa.2.0.i49.us35, -1         ; 6 uses
  %i.ao = icmp ult i64 %i.an, %.sroa.15.0.copyload
  br i1 %i.ao, label %bb.j, label %.split136.us.invoke

bb.j:                                             ; preds = %.lr.ph36
  %i.ap = add i64 %i.an, %i.v                     ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %.sroa.1352.0.copyload
  br i1 %i.aq, label %bb.k, label %.split136.us.invoke

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.an
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !51, !noalias !53, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !50, !noalias !52, !noundef !4
  %.not.i50.us = icmp eq i8 %i.as, %i.au
  br i1 %.not.i50.us, label %.preheader68.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = add i64 %i.v, %.sroa.645.0.copyload
  br label %.sink.split.i.us

bb.m:                                             ; preds = %.lr.ph.i41.us
  %i.aw = add i64 %i.v, %.sroa.15.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.m, %bb.l, %bb.i
  %.sink.i.us = phi i64 [ %i.o, %bb.l ], [ 0, %bb.i ], [ 0, %bb.m ]
  %.ph71.i.us = phi i64 [ %i.av, %bb.l ], [ %i.al, %bb.i ], [ %i.aw, %bb.m ] ; 2 uses
  %i.ax = add i64 %.ph71.i.us, %i.n               ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %.sroa.1352.0.copyload
  br i1 %i.ay, label %.lr.ph.i41.us, label %.critedge23

bb.n:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  br i1 %i.s, label %.lr.ph.i34.us, label %.critedge23

.lr.ph.i34.us:                                    ; preds = %bb.n, %bb.u
  %i.az = phi i64 [ %i.ca, %bb.u ], [ %i.r, %bb.n ]
  %i.ba = phi i64 [ %i.bz, %bb.u ], [ %.sroa.18.0.us, %bb.n ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.az
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !54, !noalias !56, !noundef !4
  %i.bd = and i8 %i.bc, 63
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = and i64 %i.bf, %.sroa.746.0.copyload
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.t, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i34.us
  br i1 %exitcond.not.i.us38.not, label %.lr.ph40, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.o
  %i.bi = add i64 %.sroa.02.0.i.us39, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bi, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader.us.preheader, label %.lr.ph40

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not67.us41, label %.loopexit.i.us, label %.lr.ph43

.lr.ph40:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i.us39 = phi i64 [ %i.bi, %.preheader ], [ %.sroa.443.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.bj = add i64 %.sroa.02.0.i.us39, %i.ba       ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %.sroa.1352.0.copyload
  br i1 %i.bk, label %bb.o, label %.split132.us

bb.o:                                             ; preds = %.lr.ph40
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %.sroa.02.0.i.us39
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !55, !noalias !57, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.bj
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !54, !noalias !56, !noundef !4
  %.not21.i.us = icmp eq i8 %i.bm, %i.bo
  br i1 %.not21.i.us, label %.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.reass270.reass = add i64 %i.ba, %invariant.op115
  %i.bp = add i64 %.reass270.reass, %.sroa.02.0.i.us39
  br label %bb.u

.preheader.us:                                    ; preds = %bb.r
  %.not67.us = icmp eq i64 %i.bq, 0
  br i1 %.not67.us, label %.loopexit.i.us, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.2.0.i.us42 = phi i64 [ %i.bq, %.preheader.us ], [ %.sroa.443.0.copyload, %.preheader.us.preheader ]
  %i.bq = add i64 %.sroa.2.0.i.us42, -1           ; 5 uses
  br i1 %.first_iter, label %bb.q, label %.split136.us.invoke
end_hunk_0
begin_hunk_1_@"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hcdb13b152c7683d6E":bb.a
bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !55, !noalias !57, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.br
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !54, !noalias !56, !noundef !4
  %.not.i.us = icmp eq i8 %i.bu, %i.bw
  br i1 %.not.i.us, label %.preheader.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = add i64 %.sroa.645.0.copyload, %i.ba
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.i34.us
  %i.by = add i64 %i.ba, %.sroa.15.0.copyload
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.p
  %i.bz = phi i64 [ %i.bp, %bb.p ], [ %i.by, %bb.t ], [ %i.bx, %bb.s ] ; 2 uses
  %i.ca = add i64 %i.bz, %i.n                     ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %.sroa.1352.0.copyload
  br i1 %i.cb, label %.lr.ph.i34.us, label %.critedge23

.loopexit.i.us:                                   ; preds = %.preheader68.us.preheader, %.preheader.us.preheader, %.preheader68.us, %.preheader.us
  %.sroa.754.3.us = phi i64 [ %i.ba, %.preheader.us ], [ %i.v, %.preheader68.us ], [ %i.ba, %.preheader.us.preheader ], [ %i.v, %.preheader68.us.preheader ] ; 2 uses
  %.sroa.3014.3.us = phi i64 [ -1, %.preheader.us ], [ 0, %.preheader68.us ], [ -1, %.preheader.us.preheader ], [ 0, %.preheader68.us.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0.us
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.754.3.us
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd)
          to label %bb.v unwind label %.loopexit.split.us

bb.v:                                             ; preds = %.loopexit.i.us
  %.sroa.1155.3.us = add i64 %.sroa.754.3.us, %.sroa.15.0.copyload ; 2 uses
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull @58, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @58, i64 4))
          to label %bb.d unwind label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %bb.v, %.loopexit.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit"
  %i.ce = and i64 %.sroa.645.0.copyload, 65536
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us", label %.critedge23

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us": ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1251.0.copyload) ]
  %i.cf = trunc i64 %.sroa.645.0.copyload to i1   ; 2 uses
  %i.cg = icmp eq i64 %.sroa.443.0.copyload, 0
  br i1 %i.cg, label %bb.y, label %bb.w

bb.w:                                             ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us"
  %.not.i.i.i.us.peel.peel = icmp ult i64 %.sroa.443.0.copyload, %.sroa.1352.0.copyload
  br i1 %.not.i.i.i.us.peel.peel, label %bb.x, label %.split.i.i.i.us.peel.peel

.split.i.i.i.us.peel.peel:                        ; preds = %bb.w
  %i.ch = icmp eq i64 %.sroa.443.0.copyload, %.sroa.1352.0.copyload
  br i1 %i.ch, label %bb.y, label %.split.us154

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %.sroa.443.0.copyload
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !58, !noalias !59, !noundef !4
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.y, label %.split.us154

bb.y:                                             ; preds = %bb.x, %.split.i.i.i.us.peel.peel, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split.split.us"
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %.sroa.443.0.copyload ; 4 uses
  %i.cm = icmp samesign eq i64 %.sroa.443.0.copyload, %.sroa.1352.0.copyload
  br i1 %i.cm, label %.loopexit207.peel, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = load i8, ptr %i.cl, align 1, !noalias !60, !noundef !4 ; 5 uses
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.aa, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel": ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cq = and i8 %i.cn, 31
  %i.cr = zext nneg i8 %i.cq to i32               ; 3 uses
  %i.cs = add nuw nsw i64 %.sroa.443.0.copyload, 1
  %i.ct = icmp samesign ne i64 %i.cs, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.ct)
  %i.cu = load i8, ptr %i.cp, align 1, !noalias !60, !noundef !4
  %i.cv = shl nuw nsw i32 %i.cr, 6
  %i.cw = and i8 %i.cu, 63
  %i.cx = zext nneg i8 %i.cw to i32               ; 2 uses
  %i.cy = or disjoint i32 %i.cv, %i.cx
  %i.cz = icmp samesign ugt i8 %i.cn, -33
  br i1 %i.cz, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel", label %bb.ab

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel"
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.db = add nuw nsw i64 %.sroa.443.0.copyload, 2
  %i.dc = icmp samesign ne i64 %i.db, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.dc)
  %i.dd = load i8, ptr %i.da, align 1, !noalias !60, !noundef !4
  %i.de = shl nuw nsw i32 %i.cx, 6
  %i.df = and i8 %i.dd, 63
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = or disjoint i32 %i.de, %i.dg            ; 2 uses
  %i.di = shl nuw nsw i32 %i.cr, 12
  %i.dj = or disjoint i32 %i.dh, %i.di
  %i.dk = icmp samesign ugt i8 %i.cn, -17
  br i1 %i.dk, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.peel", label %bb.ab

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel"
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cl, i64 3
  %i.dm = add nuw nsw i64 %.sroa.443.0.copyload, 3
  %i.dn = icmp samesign ne i64 %i.dm, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.dn)
  %i.do = load i8, ptr %i.dl, align 1, !noalias !60, !noundef !4
  %i.dp = shl nuw nsw i32 %i.cr, 18
  %i.dq = and i32 %i.dp, 1835008
  %i.dr = shl nuw nsw i32 %i.dh, 6
  %i.ds = and i8 %i.do, 63
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dr, %i.dt
  %i.dv = or disjoint i32 %i.du, %i.dq
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dw = zext nneg i8 %i.cn to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel"
  %.sroa.4.0.i.ph.i.i.us.peel.peel = phi i32 [ %i.dj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel.peel" ], [ %i.dv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel.peel" ], [ %i.cy, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel.peel" ], [ %i.dw, %bb.aa ] ; 4 uses
  %i.dx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 1114112
  call void @llvm.assume(i1 %i.dx)
  br i1 %i.cf, label %.loopexit.i.us148.peel, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 128
  br i1 %i.dy, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 2048
  br i1 %i.dz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel.peel, 65536
  %..i.i.us.peel.peel = select i1 %i.ea, i64 3, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.01.0.i.i.us.peel.peel = phi i64 [ 2, %bb.ad ], [ %..i.i.us.peel.peel, %bb.ae ], [ 1, %bb.ac ]
  %i.eb = add i64 %.sroa.01.0.i.i.us.peel.peel, %.sroa.443.0.copyload ; 15 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i.i.i.us.peel83 = icmp ult i64 %i.eb, %.sroa.1352.0.copyload
  br i1 %.not.i.i.i.us.peel83, label %bb.ah, label %.split.i.i.i.us.peel84

.split.i.i.i.us.peel84:                           ; preds = %bb.ag
  %i.ed = icmp eq i64 %i.eb, %.sroa.1352.0.copyload
  br i1 %i.ed, label %bb.ai, label %.split.us154

bb.ah:                                            ; preds = %bb.ag
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.eb
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !58, !noalias !59, !noundef !4
  %i.eg = icmp sgt i8 %i.ef, -65
  br i1 %i.eg, label %bb.ai, label %.split.us154

bb.ai:                                            ; preds = %bb.ah, %.split.i.i.i.us.peel84, %bb.af
  %i.eh = icmp samesign eq i64 %i.eb, %.sroa.1352.0.copyload
  br i1 %i.eh, label %.loopexit.i.us148.peel, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.eb
  %i.ej = load i8, ptr %i.ei, align 1, !noalias !60, !noundef !4 ; 3 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %.loopexit.i.us148.peel, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85": ; preds = %bb.aj
  %i.el = add nuw nsw i64 %i.eb, 1
  %i.em = icmp samesign ne i64 %i.el, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.em)
  %i.en = icmp samesign ugt i8 %i.ej, -33
  br i1 %i.en, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86", label %.loopexit.i.us148.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85"
  %i.eo = add nuw nsw i64 %i.eb, 2
  %i.ep = icmp samesign ne i64 %i.eo, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp samesign ugt i8 %i.ej, -17
  br i1 %i.eq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel87", label %.loopexit.i.us148.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel87": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86"
  %i.er = add nuw nsw i64 %i.eb, 3
  %i.es = icmp samesign ne i64 %i.er, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.es)
  br label %.loopexit.i.us148.peel

.loopexit207.peel:                                ; preds = %bb.y
  br i1 %i.cf, label %.loopexit.i.us148.peel, label %.critedge23

.loopexit.i.us148.peel:                           ; preds = %.loopexit207.peel, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel87", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85", %bb.aj, %bb.ai, %bb.ab
  %.sroa.46.1.us203.peel = phi i64 [ %.sroa.1352.0.copyload, %.loopexit207.peel ], [ %.sroa.1352.0.copyload, %bb.ai ], [ %.sroa.443.0.copyload, %bb.ab ], [ %i.eb, %bb.aj ], [ %i.eb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel85" ], [ %i.eb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel86" ], [ %i.eb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel87" ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.46.1.us203.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %1, ptr noundef nonnull %i.et)
          to label %bb.ak unwind label %.loopexit.split.loopexit.split-lp

bb.ak:                                            ; preds = %.loopexit.i.us148.peel
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull @58, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @58, i64 4))
          to label %.preheader.i.us unwind label %.loopexit.split.loopexit.split-lp

.preheader.i.us:                                  ; preds = %bb.ak, %5
  %.sroa.06.0.us147 = phi i64 [ %.sroa.46.1190, %5 ], [ %.sroa.46.1.us203.peel, %bb.ak ] ; 14 uses
  %i.eu = icmp eq i64 %.sroa.06.0.us147, 0
  br i1 %i.eu, label %bb.an, label %bb.al

bb.al:                                            ; preds = %.preheader.i.us
  %.not.i.i.i.us.peel = icmp ult i64 %.sroa.06.0.us147, %.sroa.1352.0.copyload
  br i1 %.not.i.i.i.us.peel, label %bb.am, label %.split.i.i.i.us.peel

.split.i.i.i.us.peel:                             ; preds = %bb.al
  %i.ev = icmp eq i64 %.sroa.06.0.us147, %.sroa.1352.0.copyload
  br i1 %i.ev, label %bb.an, label %.split.us154

bb.am:                                            ; preds = %bb.al
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %.sroa.06.0.us147
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !58, !noalias !59, !noundef !4
  %i.ey = icmp sgt i8 %i.ex, -65
  br i1 %i.ey, label %bb.an, label %.split.us154

bb.an:                                            ; preds = %bb.am, %.split.i.i.i.us.peel, %.preheader.i.us
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %.sroa.06.0.us147 ; 4 uses
  %i.fa = icmp samesign eq i64 %.sroa.06.0.us147, %.sroa.1352.0.copyload
  br i1 %i.fa, label %.critedge23, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fb = load i8, ptr %i.ez, align 1, !noalias !60, !noundef !4 ; 5 uses
  %i.fc = icmp sgt i8 %i.fb, -1
  br i1 %i.fc, label %bb.ap, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel": ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fe = and i8 %i.fb, 31
  %i.ff = zext nneg i8 %i.fe to i32               ; 3 uses
  %i.fg = add nuw nsw i64 %.sroa.06.0.us147, 1
  %i.fh = icmp samesign ne i64 %i.fg, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.fh)
  %i.fi = load i8, ptr %i.fd, align 1, !noalias !60, !noundef !4
  %i.fj = shl nuw nsw i32 %i.ff, 6
  %i.fk = and i8 %i.fi, 63
  %i.fl = zext nneg i8 %i.fk to i32               ; 2 uses
  %i.fm = or disjoint i32 %i.fj, %i.fl
  %i.fn = icmp samesign ugt i8 %i.fb, -33
  br i1 %i.fn, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel", label %bb.aq

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel"
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.fp = add nuw nsw i64 %.sroa.06.0.us147, 2
  %i.fq = icmp samesign ne i64 %i.fp, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.fq)
  %i.fr = load i8, ptr %i.fo, align 1, !noalias !60, !noundef !4
  %i.fs = shl nuw nsw i32 %i.fl, 6
  %i.ft = and i8 %i.fr, 63
  %i.fu = zext nneg i8 %i.ft to i32
  %i.fv = or disjoint i32 %i.fs, %i.fu            ; 2 uses
  %i.fw = shl nuw nsw i32 %i.ff, 12
  %i.fx = or disjoint i32 %i.fv, %i.fw
  %i.fy = icmp samesign ugt i8 %i.fb, -17
  br i1 %i.fy, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel", label %bb.aq

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel"
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ez, i64 3
  %i.ga = add nuw nsw i64 %.sroa.06.0.us147, 3
  %i.gb = icmp samesign ne i64 %i.ga, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.gb)
  %i.gc = load i8, ptr %i.fz, align 1, !noalias !60, !noundef !4
  %i.gd = shl nuw nsw i32 %i.ff, 18
  %i.ge = and i32 %i.gd, 1835008
  %i.gf = shl nuw nsw i32 %i.fv, 6
  %i.gg = and i8 %i.gc, 63
  %i.gh = zext nneg i8 %i.gg to i32
  %i.gi = or disjoint i32 %i.gf, %i.gh
  %i.gj = or disjoint i32 %i.gi, %i.ge
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gk = zext nneg i8 %i.fb to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel"
  %.sroa.4.0.i.ph.i.i.us.peel = phi i32 [ %i.fx, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us.peel" ], [ %i.gj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us.peel" ], [ %i.fm, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us.peel" ], [ %i.gk, %bb.ap ] ; 4 uses
  %i.gl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 1114112
  call void @llvm.assume(i1 %i.gl)
  %i.gm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 128
  br i1 %i.gm, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 2048
  br i1 %i.gn, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.go = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.us.peel, 65536
  %..i.i.us.peel = select i1 %i.go, i64 3, i64 4
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  %.sroa.01.0.i.i.us.peel = phi i64 [ 2, %bb.ar ], [ %..i.i.us.peel, %bb.as ], [ 1, %bb.aq ]
  %i.gp = add i64 %.sroa.01.0.i.i.us.peel, %.sroa.06.0.us147 ; 15 uses
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not.i.i.i.us = icmp ult i64 %i.gp, %.sroa.1352.0.copyload
  br i1 %.not.i.i.i.us, label %bb.av, label %.split.i.i.i.us

.split.i.i.i.us:                                  ; preds = %bb.au
  %i.gr = icmp eq i64 %i.gp, %.sroa.1352.0.copyload
  br i1 %i.gr, label %bb.aw, label %.split.us154

bb.av:                                            ; preds = %bb.au
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.gp
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !58, !noalias !59, !noundef !4
  %i.gu = icmp sgt i8 %i.gt, -65
  br i1 %i.gu, label %bb.aw, label %.split.us154

bb.aw:                                            ; preds = %bb.av, %.split.i.i.i.us, %bb.at
  %i.gv = icmp samesign eq i64 %i.gp, %.sroa.1352.0.copyload
  br i1 %i.gv, label %.loopexit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.1251.0.copyload, i64 %i.gp
  %i.gx = load i8, ptr %i.gw, align 1, !noalias !60, !noundef !4 ; 3 uses
  %i.gy = icmp sgt i8 %i.gx, -1
  br i1 %i.gy, label %.loopexit.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us": ; preds = %bb.ax
  %i.gz = add nuw nsw i64 %i.gp, 1
  %i.ha = icmp samesign ne i64 %i.gz, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.ha)
  %i.hb = icmp samesign ugt i8 %i.gx, -33
  br i1 %i.hb, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us", label %.loopexit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us"
  %i.hc = add nuw nsw i64 %i.gp, 2
  %i.hd = icmp samesign ne i64 %i.hc, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.hd)
  %i.he = icmp samesign ugt i8 %i.gx, -17
  br i1 %i.he, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us", label %.loopexit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us"
  %i.hf = add nuw nsw i64 %i.gp, 3
  %i.hg = icmp samesign ne i64 %i.hf, %.sroa.1352.0.copyload
  call void @llvm.assume(i1 %i.hg)
  br label %.loopexit.i

.split.us154:                                     ; preds = %bb.am, %.split.i.i.i.us.peel, %bb.av, %.split.i.i.i.us, %bb.ah, %.split.i.i.i.us.peel84, %bb.x, %.split.i.i.i.us.peel.peel
  %.sroa.46.1.us.lcssa = phi i64 [ %.sroa.443.0.copyload, %.split.i.i.i.us.peel.peel ], [ %.sroa.443.0.copyload, %bb.x ], [ %i.eb, %.split.i.i.i.us.peel84 ], [ %i.eb, %bb.ah ], [ %.sroa.06.0.us147, %bb.am ], [ %.sroa.06.0.us147, %.split.i.i.i.us.peel ], [ %i.gp, %.split.i.i.i.us ], [ %i.gp, %bb.av ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.1251.0.copyload, i64 noundef %.sroa.1352.0.copyload, i64 noundef %.sroa.46.1.us.lcssa, i64 noundef %.sroa.1352.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #17
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split.us154
  unreachable

.split.us:                                        ; preds = %.lr.ph
  %i.hh = add i64 %i.v, %.sroa.0.0.i.i43.us
  %umax.i47 = call i64 @llvm.umax.i64(i64 %.sroa.1352.0.copyload, i64 %i.hh)
  br label %.split136.us.invoke

.split136.us.invoke:                              ; preds = %bb.j, %.lr.ph36, %bb.q, %.lr.ph43, %.split.us, %.split132.us
  %i.hi = phi i64 [ %umax.i47, %.split.us ], [ %i.bq, %.lr.ph43 ], [ %umax.i, %.split132.us ], [ %i.br, %bb.q ], [ %i.ap, %bb.j ], [ %i.an, %.lr.ph36 ]
  %i.hj = phi i64 [ %.sroa.1352.0.copyload, %.split.us ], [ %.sroa.15.0.copyload, %.lr.ph43 ], [ %.sroa.1352.0.copyload, %.split132.us ], [ %.sroa.1352.0.copyload, %bb.q ], [ %.sroa.1352.0.copyload, %bb.j ], [ %.sroa.15.0.copyload, %.lr.ph36 ]
  %i.hk = phi ptr [ @3, %.split.us ], [ @1, %.lr.ph43 ], [ @3, %.split132.us ], [ @2, %bb.q ], [ @2, %bb.j ], [ @1, %.lr.ph36 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.hi, i64 noundef %i.hj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hk) #17
          to label %.split136.us.cont unwind label %.loopexit.split-lp

.split136.us.cont:                                ; preds = %.split136.us.invoke
  unreachable

.split132.us:                                     ; preds = %.lr.ph40
  %i.hl = add i64 %i.ba, %.sroa.443.0.copyload
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.1352.0.copyload, i64 %i.hl)
  br label %.split136.us.invoke

.loopexit.split.loopexit:                         ; preds = %5, %.loopexit.i
  %lpad.loopexit89 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split.loopexit.split-lp:                ; preds = %.loopexit.i.us148.peel, %bb.ak
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.split136.us.invoke, %.split.us154
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.i:                                      ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us", %bb.ax, %bb.aw
  %.sroa.46.1190 = phi i64 [ %i.gp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit14.i.i.i.us" ], [ %.sroa.1352.0.copyload, %bb.aw ], [ %i.gp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit16.i.i.i.us" ], [ %i.gp, %bb.ax ], [ %i.gp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf340292dc5d42210E.exit12.i.i.i.us" ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0.us147
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.46.1190
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %5 unwind label %.loopexit.split.loopexit

.critedge23:                                      ; preds = %.loopexit207.peel, %bb.an, %bb.n, %bb.e, %.sink.split.i.us, %bb.u, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split"
  %.sroa.06.0111 = phi i64 [ %.sroa.06.0.us, %bb.n ], [ %.sroa.06.0.us, %.sink.split.i.us ], [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd10808bddb3d13e7E.exit.split" ], [ %.sroa.06.0.us, %bb.u ], [ %.sroa.06.0.us, %bb.e ], [ 0, %.loopexit207.peel ], [ %.sroa.06.0.us147, %bb.an ]
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0111
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.hm, ptr noundef nonnull %i.hn)
          to label %bb.ay unwind label %bb.c

bb.ay:                                            ; preds = %.critedge23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

5:                                                ; preds = %.loopexit.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull @58, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @58, i64 4))
          to label %.preheader.i.us unwind label %.loopexit.split.loopexit, !llvm.loop !49

bb.az:                                            ; preds = %.loopexit
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

bb.ba:                                            ; preds = %.loopexit
  resume { ptr, i32 } %.pn
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  store i64 0, ptr %i.a, align 8, !noalias !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.f, align 8, !noalias !66
  invoke void @_ZN9ninja_gen5input10BuildInput10add_to_vec17h2b130e88085d7a5eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d)
          to label %_ZN9ninja_gen5build13expand_inputs17hfb62453221d076aeE.exit unwind label %bb.b, !noalias !67

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #16
          to label %bb.d unwind label %bb.c, !noalias !67

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15, !noalias !67
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g

_ZN9ninja_gen5build13expand_inputs17hfb62453221d076aeE.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !73
  store i64 0, ptr %i.a, align 8, !noalias !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !noalias !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.f, align 8, !noalias !73
  invoke void @_ZN9ninja_gen5input10BuildInput10add_to_vec17h2b130e88085d7a5eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d)
          to label %_ZN9ninja_gen5build13expand_inputs17hf46d03f24e7a50afE.exit unwind label %bb.b, !noalias !74

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h191415ba13e9866fE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #16
          to label %bb.d unwind label %bb.c, !noalias !74

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15, !noalias !74
  unreachable

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %3) #16
          to label %bb.e unwind label %bb.c, !noalias !74

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

_ZN9ninja_gen5build13expand_inputs17hf46d03f24e7a50afE.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !73
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %3), !noalias !74
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !range !6, !noalias !88, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !5, !noalias !88, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %.noexc
  %i.i = load i64, ptr %i.h, align 8, !noalias !88
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.g, i64 %i.i) #17
          to label %.noexc3 unwind label %bb.i

.noexc3:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %i.h, align 8, !noalias !88, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = icmp ule i64 %2, %i.g
  call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !89
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  store i64 %i.g, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !90, !noalias !91, !noundef !4 ; 3 uses
  %i.o = load i64, ptr %i.c, align 8, !range !9, !alias.scope !90, !noalias !91, !noundef !4
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0b5a5b794d52921cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.e, !noalias !91

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

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !90, !noalias !91, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.v = add i64 %i.n, 1
  store i64 %i.v, ptr %i.m, align 8, !alias.scope !90, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #15
  unreachable

.thread:                                          ; preds = %bb.e, %bb.i
  %.pn6 = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.x, %bb.i ]
  resume { ptr, i32 } %.pn6

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %3) #16
          to label %.thread unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$12add_variable17h0fe6e8b5e5f72ddaE"(ptr noalias noundef align 8 dereferenceable(296) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
end_hunk_1
