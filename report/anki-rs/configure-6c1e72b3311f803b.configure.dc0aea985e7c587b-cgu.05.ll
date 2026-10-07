Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.05?download=true
inline.NumInlined: 197
inline.NumDeleted: 80
begin_hunk_0_@"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd482f5003becba95E":bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr58drop_in_place$LT$alloc..raw_vec..RawVec$LT$$RF$str$GT$$GT$17h1fd7da0db619449dE.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h443f75200eb5e93bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #12
  unreachable

"_ZN4core3ptr58drop_in_place$LT$alloc..raw_vec..RawVec$LT$$RF$str$GT$$GT$17h1fd7da0db619449dE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h379f29f26360ae4eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h937b8ef744de6f20E.exit.i.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #12
  unreachable

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h937b8ef744de6f20E.exit.i.i": ; preds = %bb.d
  resume { ptr, i32 } %i.c

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit": ; preds = %bb.c
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h1398fb5ec912aa8fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h733ad8e843d10610E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0130920552988785E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h72621704fbccfe65E.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0130920552988785E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #12
  unreachable

"_ZN4core3ptr80drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17h72621704fbccfe65E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc2d8f31570e15d01E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E"(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18, !noundef !4 ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !18, !nonnull !4, !noundef !4
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !18, !noundef !4 ; 2 uses
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
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !18
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E"(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 1 %1, ptr noundef nonnull readonly %i.a)
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3str17join_generic_copy17h31c44d30f14f1752E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %.idx = mul nuw nsw i64 %2, 24                  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 7 uses
  %i.o = icmp eq i64 %2, 0                        ; 2 uses
  %.sroa.0.0.idx = select i1 %i.o, i64 0, i64 24  ; 2 uses
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx ; 6 uses
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink.sroa.gep419 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sink.sroa.gep420 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sink.sroa.gep421 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sink.sroa.gep422 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sink.sroa.gep423 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink.sroa.gep424 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink.sroa.gep425 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep426 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.sroa.gep427 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.sroa.gep428 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.sroa.gep430 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sink.sroa.gep431 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sink.sroa.gep432 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sink.sroa.gep433 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sink.sroa.gep434 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sink.sroa.gep435 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sink.sroa.gep436 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sink.sroa.gep437 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sink.sroa.gep438 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sink.sroa.gep439 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink.sroa.gep440 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.sroa.gep442 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sink.sroa.gep443 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sink.sroa.gep444 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sink.sroa.gep445 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sink.sroa.gep446 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sink.sroa.gep447 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sink.sroa.gep448 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sink.sroa.gep449 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink.sroa.gep450 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink.sroa.gep451 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.sroa.gep452 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.sroa.gep454 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sink.sroa.gep455 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sink.sroa.gep456 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sink.sroa.gep457 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sink.sroa.gep458 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sink.sroa.gep459 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sink.sroa.gep460 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sink.sroa.gep461 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sink.sroa.gep462 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink.sroa.gep463 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.sroa.gep464 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %gepdiff = add nsw i64 %.idx, -24
  %i.p = udiv exact i64 %gepdiff, 24
  %i.q = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %i.p) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %.thread, label %.lr.ph406, !prof !6

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8
  br label %bb.d

bb.d:                                             ; preds = %.thread239, %bb.c
  ret void

.lr.ph406:                                        ; preds = %bb.b
  %i.u = extractvalue { i64, i1 } %i.q, 0
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph406, %bb.e
  %.sroa.01.0.i405 = phi i64 [ %i.u, %.lr.ph406 ], [ %i.z, %bb.e ] ; 2 uses
  %i.x = phi ptr [ %1, %.lr.ph406 ], [ %i.v, %bb.e ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %.val9.i = load i64, ptr %i.y, align 8, !noalias !54, !noundef !4
  %i.z = add i64 %.val9.i, %.sroa.01.0.i405       ; 6 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.01.0.i405
  br i1 %i.aa, label %.thread, label %bb.e

._crit_edge:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.z, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ab = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !5, !noundef !4 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.i, !prof !8

bb.g:                                             ; preds = %._crit_edge
  %i.ag = load i64, ptr %i.af, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ae, i64 %i.ag) #14
  unreachable

.thread:                                          ; preds = %bb.f, %bb.b
  tail call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #14
  unreachable

bb.h:                                             ; preds = %.invoke, %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #13
          to label %bb.ab unwind label %bb.aa

bb.i:                                             ; preds = %._crit_edge
  %i.ai = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4
  %i.aj = icmp ule i64 %i.z, %i.ae
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.ae, ptr %i.m, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %1, i64 8
  %.sroa.05.0.val = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 16
  %.sroa.05.0.val137 = load i64, ptr %i.an, align 8, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.05.0.val, i64 %.sroa.05.0.val137
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %.sroa.05.0.val, ptr noundef nonnull %i.ao)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ap = load i64, ptr %i.al, align 8, !noundef !4 ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  %i.ar = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap ; 6 uses
  %i.at = sub i64 %i.z, %i.ap                     ; 12 uses
  %i.au = icmp samesign eq i64 %.sroa.0.0.idx, %.idx ; 6 uses
  switch i64 %4, label %.preheader [
    i64 0, label %.preheader304
    i64 1, label %.preheader306
    i64 2, label %.preheader308
    i64 3, label %.preheader310
    i64 4, label %.preheader312
  ]

.preheader312:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph

.preheader310:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph332

.preheader308:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph337

.preheader306:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph342

.preheader304:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph347

.preheader:                                       ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph352

.lr.ph347:                                        ; preds = %.preheader304, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146"
  %.sroa.014.0346 = phi ptr [ %i.az, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146" ], [ %i.as, %.preheader304 ] ; 2 uses
  %.sroa.38.0345 = phi i64 [ %i.ba, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146" ], [ %i.at, %.preheader304 ] ; 2 uses
  %.sroa.0.0234344 = phi ptr [ %i.ay, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146" ], [ %.sroa.0.0, %.preheader304 ] ; 3 uses
  %i.av = getelementptr i8, ptr %.sroa.0.0234344, i64 16
  %.sroa.090.0.val143 = load i64, ptr %i.av, align 8, !noundef !4 ; 4 uses
  %.not132 = icmp ugt i64 %.sroa.090.0.val143, %.sroa.38.0345
  br i1 %.not132, label %bb.k, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146", !prof !8

.thread239:                                       ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit176", %.preheader312, %.preheader310, %.preheader308, %.preheader306, %.preheader304, %.preheader
  %.sroa.38.1 = phi i64 [ %i.cc, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164" ], [ %i.bt, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158" ], [ %i.cu, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit176" ], [ %i.ba, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146" ], [ %i.bj, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152" ], [ %i.at, %.preheader ], [ %i.at, %.preheader304 ], [ %i.at, %.preheader306 ], [ %i.at, %.preheader308 ], [ %i.at, %.preheader310 ], [ %i.at, %.preheader312 ], [ %i.cm, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170" ]
  %i.aw = sub i64 %i.z, %.sroa.38.1
  store i64 %i.aw, ptr %i.al, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.d

bb.k:                                             ; preds = %.lr.ph347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146": ; preds = %.lr.ph347
  %i.ax = getelementptr i8, ptr %.sroa.0.0234344, i64 8
  %.sroa.090.0.val = load ptr, ptr %i.ax, align 8, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0234344, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.014.0346, i64 %.sroa.090.0.val143
  %i.ba = sub nuw i64 %.sroa.38.0345, %.sroa.090.0.val143 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.014.0346, ptr nonnull readonly align 1 %.sroa.090.0.val, i64 %.sroa.090.0.val143, i1 false), !alias.scope !55
  %i.bb = icmp eq ptr %i.ay, %i.n
  br i1 %i.bb, label %.thread239, label %.lr.ph347

.lr.ph342:                                        ; preds = %.preheader306, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152"
  %.sroa.014.2341 = phi ptr [ %i.bi, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152" ], [ %i.as, %.preheader306 ] ; 2 uses
  %.sroa.38.2340 = phi i64 [ %i.bj, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152" ], [ %i.at, %.preheader306 ] ; 2 uses
  %.sroa.0177.0339 = phi ptr [ %i.bc, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152" ], [ %.sroa.0.0, %.preheader306 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0177.0339, i64 24 ; 2 uses
  %i.bd = getelementptr i8, ptr %.sroa.0177.0339, i64 8
  %.sroa.092.0.val = load ptr, ptr %i.bd, align 8, !nonnull !4, !noundef !4
  %i.be = getelementptr i8, ptr %.sroa.0177.0339, i64 16
  %.sroa.092.0.val142 = load i64, ptr %i.be, align 8, !noundef !4 ; 4 uses
  %.not128 = icmp eq i64 %.sroa.38.2340, 0
  br i1 %.not128, label %bb.l, label %bb.m, !prof !8

bb.l:                                             ; preds = %.lr.ph342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  br label %.invoke

bb.m:                                             ; preds = %.lr.ph342
  %i.bf = add i64 %.sroa.38.2340, -1              ; 2 uses
  %i.bg = load i8, ptr %3, align 1, !alias.scope !56
  store i8 %i.bg, ptr %.sroa.014.2341, align 1, !alias.scope !56
  %.not129 = icmp ugt i64 %.sroa.092.0.val142, %i.bf
  br i1 %.not129, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152", !prof !8

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152": ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.014.2341, i64 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.092.0.val142
  %i.bj = sub nuw i64 %i.bf, %.sroa.092.0.val142  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr nonnull readonly align 1 %.sroa.092.0.val, i64 %.sroa.092.0.val142, i1 false), !alias.scope !57
  %i.bk = icmp eq ptr %i.bc, %i.n
  br i1 %i.bk, label %.thread239, label %.lr.ph342

.lr.ph337:                                        ; preds = %.preheader308, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158"
  %.sroa.014.3336 = phi ptr [ %i.bs, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158" ], [ %i.as, %.preheader308 ] ; 2 uses
  %.sroa.38.3335 = phi i64 [ %i.bt, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158" ], [ %i.at, %.preheader308 ] ; 2 uses
  %.sroa.0179.0334 = phi ptr [ %i.bl, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158" ], [ %.sroa.0.0, %.preheader308 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0179.0334, i64 24 ; 2 uses
  %i.bm = getelementptr i8, ptr %.sroa.0179.0334, i64 8
  %.sroa.094.0.val = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4
  %i.bn = getelementptr i8, ptr %.sroa.0179.0334, i64 16
  %.sroa.094.0.val141 = load i64, ptr %i.bn, align 8, !noundef !4 ; 4 uses
  %i.bo = icmp ugt i64 %.sroa.38.3335, 1
  br i1 %i.bo, label %bb.p, label %bb.o, !prof !9

bb.o:                                             ; preds = %.lr.ph337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br label %.invoke

bb.p:                                             ; preds = %.lr.ph337
  %i.bp = add i64 %.sroa.38.3335, -2              ; 2 uses
  %i.bq = load i16, ptr %3, align 1, !alias.scope !58
  store i16 %i.bq, ptr %.sroa.014.3336, align 1, !alias.scope !58
  %.not125 = icmp ugt i64 %.sroa.094.0.val141, %i.bp
  br i1 %.not125, label %bb.q, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158", !prof !8

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158": ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.014.3336, i64 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.094.0.val141
  %i.bt = sub nuw i64 %i.bp, %.sroa.094.0.val141  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull readonly align 1 %.sroa.094.0.val, i64 %.sroa.094.0.val141, i1 false), !alias.scope !59
  %i.bu = icmp eq ptr %i.bl, %i.n
  br i1 %i.bu, label %.thread239, label %.lr.ph337

.lr.ph332:                                        ; preds = %.preheader310, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164"
  %.sroa.014.4331 = phi ptr [ %i.cb, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164" ], [ %i.as, %.preheader310 ] ; 2 uses
  %.sroa.38.4330 = phi i64 [ %i.cc, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164" ], [ %i.at, %.preheader310 ] ; 2 uses
  %.sroa.0181.0329 = phi ptr [ %i.bv, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164" ], [ %.sroa.0.0, %.preheader310 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0181.0329, i64 24 ; 2 uses
  %i.bw = getelementptr i8, ptr %.sroa.0181.0329, i64 8
  %.sroa.096.0.val = load ptr, ptr %i.bw, align 8, !nonnull !4, !noundef !4
  %i.bx = getelementptr i8, ptr %.sroa.0181.0329, i64 16
  %.sroa.096.0.val140 = load i64, ptr %i.bx, align 8, !noundef !4 ; 4 uses
  %i.by = icmp ugt i64 %.sroa.38.4330, 2
  br i1 %i.by, label %bb.s, label %bb.r, !prof !9

bb.r:                                             ; preds = %.lr.ph332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %.invoke

bb.s:                                             ; preds = %.lr.ph332
  %i.bz = add i64 %.sroa.38.4330, -3              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.014.4331, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 3, i1 false), !alias.scope !60
  %.not122 = icmp ugt i64 %.sroa.096.0.val140, %i.bz
  br i1 %.not122, label %bb.t, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164", !prof !8

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164": ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.014.4331, i64 3 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.096.0.val140
  %i.cc = sub nuw i64 %i.bz, %.sroa.096.0.val140  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull readonly align 1 %.sroa.096.0.val, i64 %.sroa.096.0.val140, i1 false), !alias.scope !61
  %i.cd = icmp eq ptr %i.bv, %i.n
  br i1 %i.cd, label %.thread239, label %.lr.ph332

.lr.ph:                                           ; preds = %.preheader312, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170"
  %.sroa.014.5328 = phi ptr [ %i.cl, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170" ], [ %i.as, %.preheader312 ] ; 2 uses
  %.sroa.38.5327 = phi i64 [ %i.cm, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170" ], [ %i.at, %.preheader312 ] ; 2 uses
  %.sroa.0183.0326 = phi ptr [ %i.ce, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170" ], [ %.sroa.0.0, %.preheader312 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0183.0326, i64 24 ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.0183.0326, i64 8
  %.sroa.098.0.val = load ptr, ptr %i.cf, align 8, !nonnull !4, !noundef !4
  %i.cg = getelementptr i8, ptr %.sroa.0183.0326, i64 16
  %.sroa.098.0.val139 = load i64, ptr %i.cg, align 8, !noundef !4 ; 4 uses
  %i.ch = icmp ugt i64 %.sroa.38.5327, 3
  br i1 %i.ch, label %bb.v, label %bb.u, !prof !9

bb.u:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %.invoke

bb.v:                                             ; preds = %.lr.ph
  %i.ci = add i64 %.sroa.38.5327, -4              ; 2 uses
  %i.cj = load i32, ptr %3, align 1, !alias.scope !62
  store i32 %i.cj, ptr %.sroa.014.5328, align 1, !alias.scope !62
  %.not119 = icmp ugt i64 %.sroa.098.0.val139, %i.ci
  br i1 %.not119, label %bb.w, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170", !prof !8

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170": ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.014.5328, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.098.0.val139
  %i.cm = sub nuw i64 %i.ci, %.sroa.098.0.val139  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull readonly align 1 %.sroa.098.0.val, i64 %.sroa.098.0.val139, i1 false), !alias.scope !63
  %i.cn = icmp eq ptr %i.ce, %i.n
  br i1 %i.cn, label %.thread239, label %.lr.ph

.lr.ph352:                                        ; preds = %.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit176"
  %.sroa.014.6351 = phi ptr [ %i.ct, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit176" ], [ %i.as, %.preheader ] ; 3 uses
  %.sroa.38.6350 = phi i64 [ %i.cu, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit176" ], [ %i.at, %.preheader ] ; 2 uses
  %.sroa.0185.0349 = phi ptr [ %i.co, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit176" ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0185.0349, i64 24 ; 2 uses
  %i.cp = getelementptr i8, ptr %.sroa.0185.0349, i64 8
  %.sroa.0100.0.val = load ptr, ptr %i.cp, align 8, !nonnull !4, !noundef !4
  %i.cq = getelementptr i8, ptr %.sroa.0185.0349, i64 16
  %.sroa.0100.0.val138 = load i64, ptr %i.cq, align 8, !noundef !4 ; 4 uses
  %.not135 = icmp ugt i64 %4, %.sroa.38.6350
  br i1 %.not135, label %bb.x, label %bb.y, !prof !8

bb.x:                                             ; preds = %.lr.ph352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %.invoke

bb.y:                                             ; preds = %.lr.ph352
  %i.cr = sub nuw i64 %.sroa.38.6350, %4          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.014.6351) ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.014.6351, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !alias.scope !64
  %.not136 = icmp ugt i64 %.sroa.0100.0.val138, %i.cr
  br i1 %.not136, label %bb.z, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit176", !prof !8

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %.invoke

.invoke:                                          ; preds = %bb.k, %bb.l, %bb.n, %bb.o, %bb.q, %bb.r, %bb.t, %bb.u, %bb.w, %bb.x, %bb.z
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.k ], [ %.sink.sroa.gep419, %bb.l ], [ %.sink.sroa.gep420, %bb.n ], [ %.sink.sroa.gep421, %bb.o ], [ %.sink.sroa.gep422, %bb.q ], [ %.sink.sroa.gep423, %bb.r ], [ %.sink.sroa.gep424, %bb.t ], [ %.sink.sroa.gep425, %bb.u ], [ %.sink.sroa.gep426, %bb.w ], [ %.sink.sroa.gep427, %bb.x ], [ %.sink.sroa.gep428, %bb.z ]
  %.sink.sroa.phi429 = phi ptr [ %.sink.sroa.gep430, %bb.k ], [ %.sink.sroa.gep431, %bb.l ], [ %.sink.sroa.gep432, %bb.n ], [ %.sink.sroa.gep433, %bb.o ], [ %.sink.sroa.gep434, %bb.q ], [ %.sink.sroa.gep435, %bb.r ], [ %.sink.sroa.gep436, %bb.t ], [ %.sink.sroa.gep437, %bb.u ], [ %.sink.sroa.gep438, %bb.w ], [ %.sink.sroa.gep439, %bb.x ], [ %.sink.sroa.gep440, %bb.z ]
  %.sink.sroa.phi441 = phi ptr [ %.sink.sroa.gep442, %bb.k ], [ %.sink.sroa.gep443, %bb.l ], [ %.sink.sroa.gep444, %bb.n ], [ %.sink.sroa.gep445, %bb.o ], [ %.sink.sroa.gep446, %bb.q ], [ %.sink.sroa.gep447, %bb.r ], [ %.sink.sroa.gep448, %bb.t ], [ %.sink.sroa.gep449, %bb.u ], [ %.sink.sroa.gep450, %bb.w ], [ %.sink.sroa.gep451, %bb.x ], [ %.sink.sroa.gep452, %bb.z ]
  %.sink.sroa.phi453 = phi ptr [ %.sink.sroa.gep454, %bb.k ], [ %.sink.sroa.gep455, %bb.l ], [ %.sink.sroa.gep456, %bb.n ], [ %.sink.sroa.gep457, %bb.o ], [ %.sink.sroa.gep458, %bb.q ], [ %.sink.sroa.gep459, %bb.r ], [ %.sink.sroa.gep460, %bb.t ], [ %.sink.sroa.gep461, %bb.u ], [ %.sink.sroa.gep462, %bb.w ], [ %.sink.sroa.gep463, %bb.x ], [ %.sink.sroa.gep464, %bb.z ]
  %.sink = phi ptr [ %i.l, %bb.k ], [ %i.k, %bb.l ], [ %i.j, %bb.n ], [ %i.i, %bb.o ], [ %i.h, %bb.q ], [ %i.g, %bb.r ], [ %i.f, %bb.t ], [ %i.e, %bb.u ], [ %i.d, %bb.w ], [ %i.c, %bb.x ], [ %i.b, %bb.z ] ; 2 uses
  store ptr @7, ptr %.sink, align 8
  store i64 1, ptr %.sink.sroa.phi, align 8
  store ptr null, ptr %.sink.sroa.phi429, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.sroa.phi441, align 8
  store i64 0, ptr %.sink.sroa.phi453, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit176": ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.014.6351, i64 %4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.0100.0.val138
  %i.cu = sub nuw i64 %i.cr, %.sroa.0100.0.val138 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr nonnull readonly align 1 %.sroa.0100.0.val, i64 %.sroa.0100.0.val138, i1 false), !alias.scope !65
  %i.cv = icmp eq ptr %i.co, %i.n
  br i1 %i.cv, label %.thread239, label %.lr.ph352

bb.aa:                                            ; preds = %bb.h
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #12
  unreachable

bb.ab:                                            ; preds = %bb.h
  resume { ptr, i32 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3str17join_generic_copy17hcd750c14fd4fda58E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4                   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 7 uses
  %i.o = icmp eq i64 %2, 0                        ; 2 uses
  %.sroa.0.0.idx = select i1 %i.o, i64 0, i64 16  ; 2 uses
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx ; 6 uses
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink.sroa.gep419 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sink.sroa.gep420 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sink.sroa.gep421 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sink.sroa.gep422 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sink.sroa.gep423 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink.sroa.gep424 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink.sroa.gep425 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep426 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.sroa.gep427 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.sroa.gep428 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.sroa.gep430 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sink.sroa.gep431 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sink.sroa.gep432 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sink.sroa.gep433 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sink.sroa.gep434 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sink.sroa.gep435 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sink.sroa.gep436 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sink.sroa.gep437 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sink.sroa.gep438 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sink.sroa.gep439 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink.sroa.gep440 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.sroa.gep442 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sink.sroa.gep443 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sink.sroa.gep444 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sink.sroa.gep445 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sink.sroa.gep446 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sink.sroa.gep447 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sink.sroa.gep448 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sink.sroa.gep449 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink.sroa.gep450 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink.sroa.gep451 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.sroa.gep452 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.sroa.gep454 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sink.sroa.gep455 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sink.sroa.gep456 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sink.sroa.gep457 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sink.sroa.gep458 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sink.sroa.gep459 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sink.sroa.gep460 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sink.sroa.gep461 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sink.sroa.gep462 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink.sroa.gep463 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.sroa.gep464 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %gepdiff = add nsw i64 %.idx, -16
  %i.p = lshr exact i64 %gepdiff, 4
  %i.q = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %i.p) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %.thread, label %.lr.ph406, !prof !6

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8
  br label %bb.d

bb.d:                                             ; preds = %.thread239, %bb.c
  ret void

.lr.ph406:                                        ; preds = %bb.b
  %i.u = extractvalue { i64, i1 } %i.q, 0
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph406, %bb.e
  %.sroa.01.0.i405 = phi i64 [ %i.u, %.lr.ph406 ], [ %i.z, %bb.e ] ; 2 uses
  %i.x = phi ptr [ %1, %.lr.ph406 ], [ %i.v, %bb.e ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val9.i = load i64, ptr %i.y, align 8, !noalias !101, !noundef !4
  %i.z = add i64 %.val9.i, %.sroa.01.0.i405       ; 6 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.01.0.i405
  br i1 %i.aa, label %.thread, label %bb.e

._crit_edge:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.z, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ab = load i64, ptr %i.a, align 8, !range !7, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !5, !noundef !4 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.i, !prof !8

bb.g:                                             ; preds = %._crit_edge
  %i.ag = load i64, ptr %i.af, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ae, i64 %i.ag) #14
  unreachable

.thread:                                          ; preds = %bb.f, %bb.b
  tail call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #14
  unreachable

bb.h:                                             ; preds = %.invoke, %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #13
          to label %bb.ab unwind label %bb.aa

bb.i:                                             ; preds = %._crit_edge
  %i.ai = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4
  %i.aj = icmp ule i64 %i.z, %i.ae
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.ae, ptr %i.m, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.al, align 8
  %.sroa.05.0.val = load ptr, ptr %1, align 8, !nonnull !4, !align !102, !noundef !4 ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 8
  %.sroa.05.0.val137 = load i64, ptr %i.am, align 8, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.05.0.val, i64 %.sroa.05.0.val137
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha4fa478cf81366bcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %.sroa.05.0.val, ptr noundef nonnull %i.an)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.al, align 8, !noundef !4 ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao ; 6 uses
  %i.as = sub i64 %i.z, %i.ao                     ; 12 uses
  %i.at = icmp samesign eq i64 %.sroa.0.0.idx, %.idx ; 6 uses
  switch i64 %4, label %.preheader [
    i64 0, label %.preheader304
    i64 1, label %.preheader306
    i64 2, label %.preheader308
    i64 3, label %.preheader310
    i64 4, label %.preheader312
  ]

.preheader312:                                    ; preds = %bb.j
  br i1 %i.at, label %.thread239, label %.lr.ph

.preheader310:                                    ; preds = %bb.j
  br i1 %i.at, label %.thread239, label %.lr.ph332

.preheader308:                                    ; preds = %bb.j
  br i1 %i.at, label %.thread239, label %.lr.ph337

.preheader306:                                    ; preds = %bb.j
  br i1 %i.at, label %.thread239, label %.lr.ph342

.preheader304:                                    ; preds = %bb.j
  br i1 %i.at, label %.thread239, label %.lr.ph347

.preheader:                                       ; preds = %bb.j
  br i1 %i.at, label %.thread239, label %.lr.ph352

.lr.ph347:                                        ; preds = %.preheader304, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146"
  %.sroa.014.0346 = phi ptr [ %i.ax, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146" ], [ %i.ar, %.preheader304 ] ; 2 uses
  %.sroa.38.0345 = phi i64 [ %i.ay, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146" ], [ %i.as, %.preheader304 ] ; 2 uses
  %.sroa.0.0234344 = phi ptr [ %i.aw, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146" ], [ %.sroa.0.0, %.preheader304 ] ; 3 uses
  %i.au = getelementptr i8, ptr %.sroa.0.0234344, i64 8
  %.sroa.090.0.val143 = load i64, ptr %i.au, align 8, !noundef !4 ; 4 uses
  %.not132 = icmp ugt i64 %.sroa.090.0.val143, %.sroa.38.0345
  br i1 %.not132, label %bb.k, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146", !prof !8

.thread239:                                       ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit176", %.preheader312, %.preheader310, %.preheader308, %.preheader306, %.preheader304, %.preheader
  %.sroa.38.1 = phi i64 [ %i.bx, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164" ], [ %i.bp, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158" ], [ %i.cn, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit176" ], [ %i.ay, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146" ], [ %i.bg, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152" ], [ %i.as, %.preheader ], [ %i.as, %.preheader304 ], [ %i.as, %.preheader306 ], [ %i.as, %.preheader308 ], [ %i.as, %.preheader310 ], [ %i.as, %.preheader312 ], [ %i.cg, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170" ]
  %i.av = sub i64 %i.z, %.sroa.38.1
  store i64 %i.av, ptr %i.al, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.d

bb.k:                                             ; preds = %.lr.ph347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit146": ; preds = %.lr.ph347
  %.sroa.090.0.val = load ptr, ptr %.sroa.0.0234344, align 8, !nonnull !4, !align !102, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0234344, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.014.0346, i64 %.sroa.090.0.val143
  %i.ay = sub nuw i64 %.sroa.38.0345, %.sroa.090.0.val143 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.014.0346, ptr nonnull readonly align 1 %.sroa.090.0.val, i64 %.sroa.090.0.val143, i1 false), !alias.scope !103
  %i.az = icmp eq ptr %i.aw, %i.n
  br i1 %i.az, label %.thread239, label %.lr.ph347

.lr.ph342:                                        ; preds = %.preheader306, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152"
  %.sroa.014.2341 = phi ptr [ %i.bf, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152" ], [ %i.ar, %.preheader306 ] ; 2 uses
  %.sroa.38.2340 = phi i64 [ %i.bg, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152" ], [ %i.as, %.preheader306 ] ; 2 uses
  %.sroa.0177.0339 = phi ptr [ %i.ba, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152" ], [ %.sroa.0.0, %.preheader306 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0177.0339, i64 16 ; 2 uses
  %.sroa.092.0.val = load ptr, ptr %.sroa.0177.0339, align 8, !nonnull !4, !align !102, !noundef !4
  %i.bb = getelementptr i8, ptr %.sroa.0177.0339, i64 8
  %.sroa.092.0.val142 = load i64, ptr %i.bb, align 8, !noundef !4 ; 4 uses
  %.not128 = icmp eq i64 %.sroa.38.2340, 0
  br i1 %.not128, label %bb.l, label %bb.m, !prof !8

bb.l:                                             ; preds = %.lr.ph342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  br label %.invoke

bb.m:                                             ; preds = %.lr.ph342
  %i.bc = add i64 %.sroa.38.2340, -1              ; 2 uses
  %i.bd = load i8, ptr %3, align 1, !alias.scope !104
  store i8 %i.bd, ptr %.sroa.014.2341, align 1, !alias.scope !104
  %.not129 = icmp ugt i64 %.sroa.092.0.val142, %i.bc
  br i1 %.not129, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152", !prof !8

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit152": ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.014.2341, i64 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.092.0.val142
  %i.bg = sub nuw i64 %i.bc, %.sroa.092.0.val142  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull readonly align 1 %.sroa.092.0.val, i64 %.sroa.092.0.val142, i1 false), !alias.scope !105
  %i.bh = icmp eq ptr %i.ba, %i.n
  br i1 %i.bh, label %.thread239, label %.lr.ph342

.lr.ph337:                                        ; preds = %.preheader308, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158"
  %.sroa.014.3336 = phi ptr [ %i.bo, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158" ], [ %i.ar, %.preheader308 ] ; 2 uses
  %.sroa.38.3335 = phi i64 [ %i.bp, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158" ], [ %i.as, %.preheader308 ] ; 2 uses
  %.sroa.0179.0334 = phi ptr [ %i.bi, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158" ], [ %.sroa.0.0, %.preheader308 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0179.0334, i64 16 ; 2 uses
  %.sroa.094.0.val = load ptr, ptr %.sroa.0179.0334, align 8, !nonnull !4, !align !102, !noundef !4
  %i.bj = getelementptr i8, ptr %.sroa.0179.0334, i64 8
  %.sroa.094.0.val141 = load i64, ptr %i.bj, align 8, !noundef !4 ; 4 uses
  %i.bk = icmp ugt i64 %.sroa.38.3335, 1
  br i1 %i.bk, label %bb.p, label %bb.o, !prof !9

bb.o:                                             ; preds = %.lr.ph337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br label %.invoke

bb.p:                                             ; preds = %.lr.ph337
  %i.bl = add i64 %.sroa.38.3335, -2              ; 2 uses
  %i.bm = load i16, ptr %3, align 1, !alias.scope !106
  store i16 %i.bm, ptr %.sroa.014.3336, align 1, !alias.scope !106
  %.not125 = icmp ugt i64 %.sroa.094.0.val141, %i.bl
  br i1 %.not125, label %bb.q, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158", !prof !8

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit158": ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.014.3336, i64 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.094.0.val141
  %i.bp = sub nuw i64 %i.bl, %.sroa.094.0.val141  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull readonly align 1 %.sroa.094.0.val, i64 %.sroa.094.0.val141, i1 false), !alias.scope !107
  %i.bq = icmp eq ptr %i.bi, %i.n
  br i1 %i.bq, label %.thread239, label %.lr.ph337

.lr.ph332:                                        ; preds = %.preheader310, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164"
  %.sroa.014.4331 = phi ptr [ %i.bw, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164" ], [ %i.ar, %.preheader310 ] ; 2 uses
  %.sroa.38.4330 = phi i64 [ %i.bx, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164" ], [ %i.as, %.preheader310 ] ; 2 uses
  %.sroa.0181.0329 = phi ptr [ %i.br, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164" ], [ %.sroa.0.0, %.preheader310 ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0181.0329, i64 16 ; 2 uses
  %.sroa.096.0.val = load ptr, ptr %.sroa.0181.0329, align 8, !nonnull !4, !align !102, !noundef !4
  %i.bs = getelementptr i8, ptr %.sroa.0181.0329, i64 8
  %.sroa.096.0.val140 = load i64, ptr %i.bs, align 8, !noundef !4 ; 4 uses
  %i.bt = icmp ugt i64 %.sroa.38.4330, 2
  br i1 %i.bt, label %bb.s, label %bb.r, !prof !9

bb.r:                                             ; preds = %.lr.ph332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %.invoke

bb.s:                                             ; preds = %.lr.ph332
  %i.bu = add i64 %.sroa.38.4330, -3              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.014.4331, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 3, i1 false), !alias.scope !108
  %.not122 = icmp ugt i64 %.sroa.096.0.val140, %i.bu
  br i1 %.not122, label %bb.t, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164", !prof !8

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit164": ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.014.4331, i64 3 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.096.0.val140
  %i.bx = sub nuw i64 %i.bu, %.sroa.096.0.val140  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull readonly align 1 %.sroa.096.0.val, i64 %.sroa.096.0.val140, i1 false), !alias.scope !109
  %i.by = icmp eq ptr %i.br, %i.n
  br i1 %i.by, label %.thread239, label %.lr.ph332

.lr.ph:                                           ; preds = %.preheader312, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170"
  %.sroa.014.5328 = phi ptr [ %i.cf, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170" ], [ %i.ar, %.preheader312 ] ; 2 uses
  %.sroa.38.5327 = phi i64 [ %i.cg, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170" ], [ %i.as, %.preheader312 ] ; 2 uses
  %.sroa.0183.0326 = phi ptr [ %i.bz, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170" ], [ %.sroa.0.0, %.preheader312 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0183.0326, i64 16 ; 2 uses
  %.sroa.098.0.val = load ptr, ptr %.sroa.0183.0326, align 8, !nonnull !4, !align !102, !noundef !4
  %i.ca = getelementptr i8, ptr %.sroa.0183.0326, i64 8
  %.sroa.098.0.val139 = load i64, ptr %i.ca, align 8, !noundef !4 ; 4 uses
  %i.cb = icmp ugt i64 %.sroa.38.5327, 3
  br i1 %i.cb, label %bb.v, label %bb.u, !prof !9

bb.u:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %.invoke

bb.v:                                             ; preds = %.lr.ph
  %i.cc = add i64 %.sroa.38.5327, -4              ; 2 uses
  %i.cd = load i32, ptr %3, align 1, !alias.scope !110
  store i32 %i.cd, ptr %.sroa.014.5328, align 1, !alias.scope !110
  %.not119 = icmp ugt i64 %.sroa.098.0.val139, %i.cc
  br i1 %.not119, label %bb.w, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170", !prof !8

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit170": ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.014.5328, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.098.0.val139
  %i.cg = sub nuw i64 %i.cc, %.sroa.098.0.val139  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull readonly align 1 %.sroa.098.0.val, i64 %.sroa.098.0.val139, i1 false), !alias.scope !111
  %i.ch = icmp eq ptr %i.bz, %i.n
  br i1 %i.ch, label %.thread239, label %.lr.ph

.lr.ph352:                                        ; preds = %.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit176"
  %.sroa.014.6351 = phi ptr [ %i.cm, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit176" ], [ %i.ar, %.preheader ] ; 3 uses
  %.sroa.38.6350 = phi i64 [ %i.cn, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit176" ], [ %i.as, %.preheader ] ; 2 uses
  %.sroa.0185.0349 = phi ptr [ %i.ci, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hd73aaec588061370E.exit176" ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0185.0349, i64 16 ; 2 uses
  %.sroa.0100.0.val = load ptr, ptr %.sroa.0185.0349, align 8, !nonnull !4, !align !102, !noundef !4
  %i.cj = getelementptr i8, ptr %.sroa.0185.0349, i64 8
  %.sroa.0100.0.val138 = load i64, ptr %i.cj, align 8, !noundef !4 ; 4 uses
  %.not135 = icmp ugt i64 %4, %.sroa.38.6350
end_hunk_0
