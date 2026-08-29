Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-b763c3982f933b22.xtask.67f4837adcdb5ddd-cgu.0?download=true
inline.NumInlined: 1754
inline.NumDeleted: 971
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17he9919d5fa094ad35E":bb.a

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i" unwind label %bb.c

"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1b8f1941f6db7ab3E.exit", label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i"
  %.sroa.0.110.i.i = phi i64 [ %i.m, %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i" ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.m = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !1544, !nonnull !4, !noundef !4
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !1545
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i"

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i" unwind label %bb.e

"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i": ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.m, %.val1
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31
  unreachable

.body:                                            ; preds = %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit8.i.i", %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !185, !noundef !4 ; 2 uses
  %i.s = icmp eq i64 %.val4, 0
  br i1 %i.s, label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb78e5c2a87b7b85aE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.t = shl nuw i64 %.val4, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb78e5c2a87b7b85aE.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1b8f1941f6db7ab3E.exit": ; preds = %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h4281f2cef0698d5bE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !185, !noundef !4 ; 2 uses
  %i.u = icmp eq i64 %.val2, 0
  br i1 %i.u, label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb78e5c2a87b7b85aE.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1b8f1941f6db7ab3E.exit"
  %i.v = shl nuw i64 %.val2, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb78e5c2a87b7b85aE.exit6"

"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb78e5c2a87b7b85aE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1b8f1941f6db7ab3E.exit", %bb.g
  ret void

"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$17hb78e5c2a87b7b85aE.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..builder..arg_group..ArgGroup$GT$$GT$17had1847760e6e9e1aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h63164607b407c61aE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17h0fe992820c5d31acE.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.e, %"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17h0fe992820c5d31acE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 6 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  %.val9.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1552 ; 2 uses
  %i.f = icmp eq i64 %.val9.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val10.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1552, !nonnull !4, !noundef !4
  %i.h = shl nuw i64 %.val9.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1552
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit.i.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val5.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !1552 ; 2 uses
  %i.j = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.j, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12.i.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit.i.i.i"
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val6.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1552, !nonnull !4, !noundef !4
  %i.l = shl nuw i64 %.val5.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1552
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12.i.i.i": ; preds = %bb.c, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit.i.i.i"
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !1552 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17h0fe992820c5d31acE.exit.i.i", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12.i.i.i"
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.val2.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !1552, !nonnull !4, !noundef !4
  %i.p = shl nuw i64 %.val.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1552
  br label %"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17h0fe992820c5d31acE.exit.i.i"

"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17h0fe992820c5d31acE.exit.i.i": ; preds = %bb.d, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$clap_builder..util..id..Id$GT$$GT$17h3ae3aa2f0121f763E.exit12.i.i.i"
  %i.q = icmp eq i64 %i.e, %.val1
  br i1 %i.q, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h63164607b407c61aE.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h63164607b407c61aE.exit": ; preds = %"_ZN4core3ptr63drop_in_place$LT$clap_builder..builder..arg_group..ArgGroup$GT$17h0fe992820c5d31acE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !185, !noundef !4 ; 2 uses
  %i.r = icmp eq i64 %.val2, 0
  br i1 %i.r, label %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..arg_group..ArgGroup$GT$$GT$17hd1c1d99c4270d7fbE.exit6", label %bb.e

bb.e:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h63164607b407c61aE.exit"
  %i.s = mul nuw i64 %.val2, 96
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..arg_group..ArgGroup$GT$$GT$17hd1c1d99c4270d7fbE.exit6"

"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$clap_builder..builder..arg_group..ArgGroup$GT$$GT$17hd1c1d99c4270d7fbE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h63164607b407c61aE.exit", %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17hb1cfc56a30439cdcE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1553)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1553, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !1553, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  %i.h = icmp eq ptr %.val2.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hcdce4a5c7b0e2608E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i"
  %.sroa.0.011.i.i = phi i64 [ %i.j, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.011.i.i ; 2 uses
  %i.j = add nuw i64 %.sroa.0.011.i.i, 1          ; 2 uses
  %.val8.i.i = load i64, ptr %i.i, align 8, !range !185, !alias.scope !1559, !noalias !1553, !noundef !4 ; 2 uses
  %i.k = icmp eq i64 %.val8.i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.val9.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1556, !noalias !1553, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1562
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.m = icmp eq i64 %i.j, %i.g
  br i1 %i.m, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hcdce4a5c7b0e2608E.exit.i", label %.lr.ph.i.i

"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hcdce4a5c7b0e2608E.exit.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i", %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1553, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb970075e5f223e5dE.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hcdce4a5c7b0e2608E.exit.i"
  %i.q = load ptr, ptr %0, align 8, !alias.scope !1553, !nonnull !4, !noundef !4
  %i.r = mul nuw i64 %i.o, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1553
  br label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb970075e5f223e5dE.exit"

"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb970075e5f223e5dE.exit": ; preds = %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hcdce4a5c7b0e2608E.exit.i", %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17h4a7088066e13b997E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1580, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core3ptr106drop_in_place$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17h4a355b1b9df0b638E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1584, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1584, !nonnull !4, !noundef !4 ; 3 uses
  %.val13.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1585
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i", %bb.c
  %.sroa.07.018.i.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.07.1.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.017.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.07.018.i.i.i.i.i.i, %bb.d ]
  %.val911.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1588
  %i.m = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.07.1.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.07.1.i.i.i.i.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.109.015.i.i.i.i.i.i, -1   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !range !185, !alias.scope !1591, !noalias !1584, !noundef !4 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i"
  %i.y = getelementptr i8, ptr %i.u, i64 -16
  %.val6.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !1584, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1594
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i"
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i, label %bb.d

_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i: ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i", %bb.b
  %1 = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %1)
  %i.aa = mul i64 %i.b, 24
  %i.ab = and i64 %i.aa, -16                      ; 2 uses
  %i.ac = add i64 %i.ab, 32                       ; 2 uses
  %i.ad = add nsw i64 %i.b, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 4 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.af)
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %"_ZN4core3ptr106drop_in_place$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17h4a355b1b9df0b638E.exit", label %bb.f

bb.f:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i
  %i.ai = load ptr, ptr %0, align 8, !alias.scope !1580, !nonnull !4, !noundef !4
  %i.aj = sub i64 -32, %i.ab
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #32, !noalias !1580
  br label %"_ZN4core3ptr106drop_in_place$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17h4a355b1b9df0b638E.exit"

"_ZN4core3ptr106drop_in_place$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17h4a355b1b9df0b638E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h84d313888d5cd857E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4364e2697b3d7e3E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17haa241e9c652946adE.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.e, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17haa241e9c652946adE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 3 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val4.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1603, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val5.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !1603, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  %i.h = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc36aa3ae67859e7bE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.j, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i.i.i.i" ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.j = add nuw i64 %.sroa.0.011.i.i.i.i.i, 1    ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.i, align 8, !range !185, !alias.scope !1607, !noalias !1603, !noundef !4 ; 2 uses
  %i.k = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1604, !noalias !1603, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1610
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.m = icmp eq i64 %i.j, %.val5.i.i.i
  br i1 %i.m, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc36aa3ae67859e7bE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc36aa3ae67859e7bE.exit.i.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h862f68ed6a8f6abbE.exit.i.i.i.i.i", %.lr.ph.i.i
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !185, !alias.scope !1603, !noundef !4 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17haa241e9c652946adE.exit.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc36aa3ae67859e7bE.exit.i.i.i"
  %i.o = mul nuw i64 %.val.i.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1603
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17haa241e9c652946adE.exit.i.i"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17haa241e9c652946adE.exit.i.i": ; preds = %bb.c, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc36aa3ae67859e7bE.exit.i.i.i"
  %i.p = icmp eq i64 %i.e, %.val1
  br i1 %i.p, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4364e2697b3d7e3E.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4364e2697b3d7e3E.exit": ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17haa241e9c652946adE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !185, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %.val2, 0
  br i1 %i.q, label %"_ZN4core3ptr100drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h20b27ceb52ccc3daE.exit6", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4364e2697b3d7e3E.exit"
  %i.r = mul nuw i64 %.val2, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %"_ZN4core3ptr100drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h20b27ceb52ccc3daE.exit6"

"_ZN4core3ptr100drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h20b27ceb52ccc3daE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4364e2697b3d7e3E.exit", %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17h5592ec35e94423d9E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !317, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E.exit", label %bb.b

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E.exit": ; preds = %bb.d, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i", %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1613)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !1613, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !1613, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i"
  %.sroa.0.011.i.i.i = phi i64 [ %i.g, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i" ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.g = add nuw i64 %.sroa.0.011.i.i.i, 1        ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.f, align 8, !range !185, !alias.scope !1619, !noalias !1613, !noundef !4 ; 2 uses
  %i.h = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.h, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val9.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1616, !noalias !1613, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1622
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = icmp eq i64 %i.g, %.val1.i
  br i1 %i.j, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i", %bb.b
  %i.k = icmp eq i64 %i.a, 0
  br i1 %i.k, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i"
  %i.l = mul nuw i64 %i.a, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1613
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr93drop_in_place$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hbb507330527d194fE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !185, !alias.scope !318, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1625
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit": ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h987fb81f876a2623E"(ptr noalias noundef align 8 dereferenceable(72) %i.c)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr94drop_in_place$LT$anyhow..error..ContextError$LT$$RF$str$C$alloc..string..FromUtf8Error$GT$$GT$17hdd99c8551563d7f5E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  %.val.i.i = load i64, ptr %i.a, align 8, !range !185, !alias.scope !1634, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val.i.i, 0
  br i1 %i.b, label %"_ZN4core3ptr49drop_in_place$LT$alloc..string..FromUtf8Error$GT$17h962073649f10e1aaE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1634, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1634
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..string..FromUtf8Error$GT$17h962073649f10e1aaE.exit"

"_ZN4core3ptr49drop_in_place$LT$alloc..string..FromUtf8Error$GT$17h962073649f10e1aaE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..DisplayError$LT$$RF$str$GT$$GT$$GT$17h36097d689b2084d6E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17hf5f94c7c5f2f63a2E"(ptr noalias noundef align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$$RF$str$GT$$GT$$GT$17h6997b03c60f4ba59E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17hf5f94c7c5f2f63a2E"(ptr noalias noundef align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr97drop_in_place$LT$core..option..Option$LT$clap_builder..builder..value_parser..ValueParser$GT$$GT$17h933bceb8a21d316cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !395, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %i.a, 5
  br i1 %i.b, label %"_ZN4core3ptr69drop_in_place$LT$clap_builder..builder..value_parser..ValueParser$GT$17hd5badfecc35c2a7cE.exit", label %bb.b

"_ZN4core3ptr69drop_in_place$LT$clap_builder..builder..value_parser..ValueParser$GT$17hd5badfecc35c2a7cE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.e, %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@_ZN5alloc7raw_vec11finish_grow17h19c3d848e9fc8ce4E:bb.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) #32
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.g:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.o = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #32
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit": ; preds = %bb.i, %bb.f, %bb.e
  %.sroa.012.0.i.i.pn = phi ptr [ %i.l, %bb.f ], [ %i.o, %bb.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.p = icmp eq ptr %.sroa.012.0.i.i.pn, null    ; 2 uses
  %i.q = inttoptr i64 %1 to ptr
  %spec.select = select i1 %i.p, ptr %i.q, ptr %.sroa.012.0.i.i.pn
  %spec.select8 = zext i1 %i.p to i64
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit", %bb.h, %bb.d
  %.sroa.012.0.i.i.pn.sink = phi ptr [ %i.h, %bb.d ], [ %spec.select, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ %i.n, %bb.h ]
  %storemerge = phi i64 [ 0, %bb.d ], [ %spec.select8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ 0, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.012.0.i.i.pn.sink, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.s, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha778ce7eb152fc10E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 25) %4) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.b, !prof !164

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !185, !alias.scope !1766, !noundef !4 ; 3 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %.sroa.012.0.i = select i1 %i.g, i64 8, i64 4
  %.sroa.0.0.i32.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -1) %.sroa.012.0.i) ; 3 uses
  %i.h = add nsw i64 %3, -1
  %i.i = add nuw nsw i64 %i.h, %4
  %i.j = sub nsw i64 0, %3
  %i.k = and i64 %i.i, %i.j
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.k, i64 %.sroa.0.0.i32.i) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.l, 1
  %i.o = sub nuw i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %i.p, !prof !1769
  br i1 %or.cond.i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !1769

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1766
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = icmp eq i64 %i.e, 0
  br i1 %i.r, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9a3fdb2c9c1219cdE.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.q, align 8, !alias.scope !1766, !nonnull !4, !noundef !4
  %i.s = mul nuw i64 %i.e, %4
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !1770, !noalias !1766
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1770, !noalias !1766
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9a3fdb2c9c1219cdE.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9a3fdb2c9c1219cdE.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ %3, %bb.c ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.t, align 8, !alias.scope !1770, !noalias !1766
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h19c3d848e9fc8ce4E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 1, 9) %3, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !1766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1766
  %i.u = load i64, ptr %i.b, align 8, !range !1678, !noalias !1766, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9a3fdb2c9c1219cdE.exit.i"
  %i.x = load i64, ptr %i.w, align 8, !range !317, !noalias !1766, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !1766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1766
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.b ], [ undef, %bb.a ], [ %i.z, %bb.d ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.x, %bb.d ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #29
  unreachable

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h9a3fdb2c9c1219cdE.exit.i"
  %i.aa = load ptr, ptr %i.w, align 8, !noalias !1766, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1766
  store ptr %i.aa, ptr %i.q, align 8, !alias.scope !1766
  %i.ab = icmp sgt i64 %.sroa.0.0.i32.i, -1
  tail call void @llvm.assume(i1 %i.ab)
  store i64 %.sroa.0.0.i32.i, ptr %0, align 8, !alias.scope !1766
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_ZN5xtask19PrototypePrerelease9increment17hce27c36739317381E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = tail call { ptr, i64 } @_ZN6semver10Prerelease6as_str17hb054d86234cc4334E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = phi i64 [ %i.d, %bb.a ], [ %i.i, %bb.c ]
  %i.f = tail call { i64, i64 } @_ZN4core5slice6memchr7memrchr17h0c3e43ac4b055a3eE(i8 noundef 46, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.e), !noalias !1773 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.p

bb.c:                                             ; preds = %bb.e, %bb.d
  %.not.i.i = icmp ugt i64 %i.i, %i.d
  br i1 %.not.i.i, label %bb.p, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, i64 } %i.f, 1        ; 5 uses
  %or.cond25.i.not.i = icmp ult i64 %i.i, %i.d
  br i1 %or.cond25.i.not.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %lhsc.i = load i8, ptr %i.j, align 1, !alias.scope !1779, !noalias !1781
  %i.k = icmp eq i8 %lhsc.i, 46
  br i1 %i.k, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i64 %i.i, 1                      ; 2 uses
  %i.m = sub nuw i64 %i.d, %i.l                   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l ; 6 uses
  switch i64 %i.m, label %bb.h [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !1782, !noundef !4
  switch i8 %i.o, label %.lr.ph.i.preheader [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  ]

.lr.ph.i.preheader:                               ; preds = %bb.i, %bb.k, %bb.g
  %.sroa.03.182.i.ph = phi ptr [ %i.p, %bb.i ], [ %i.n, %bb.k ], [ %i.n, %bb.g ]
  %.sroa.16.181.i.ph = phi i64 [ %i.q, %bb.i ], [ %i.m, %bb.k ], [ 1, %bb.g ]
  br label %.lr.ph.i

bb.h:                                             ; preds = %bb.f
  %.pr.i = load i8, ptr %i.n, align 1, !alias.scope !1782
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.q = add i64 %i.m, -1                         ; 2 uses
  %i.r = icmp ult i64 %i.m, 10
  br i1 %i.r, label %.lr.ph.i.preheader, label %.preheader71.i

.preheader71.i:                                   ; preds = %bb.k, %bb.i
  %.sroa.16.0.ph.i = phi i64 [ %i.m, %bb.k ], [ %i.q, %bb.i ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %i.n, %bb.k ], [ %i.p, %bb.i ]
  %.not.i47 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.i47, label %.loopexit.i5, label %.lr.ph

bb.j:                                             ; preds = %bb.n
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %.loopexit.i5, label %.lr.ph

bb.k:                                             ; preds = %bb.h
  %i.s = icmp ult i64 %i.m, 9
  br i1 %i.s, label %.lr.ph.i.preheader, label %.preheader71.i

.loopexit.i5:                                     ; preds = %bb.j, %bb.o, %.preheader71.i
  %.sroa.019.2.i = phi i32 [ %i.al, %bb.o ], [ 0, %.preheader71.i ], [ %i.ad, %bb.j ]
  %i.t = zext i32 %.sroa.019.2.i to i64
  %i.u = shl nuw i64 %i.t, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.lr.ph:                                           ; preds = %.preheader71.i, %bb.j
  %.sroa.03.0.i50 = phi ptr [ %i.v, %bb.j ], [ %.sroa.03.0.ph.i, %.preheader71.i ] ; 2 uses
  %.sroa.16.0.i49 = phi i64 [ %i.w, %bb.j ], [ %.sroa.16.0.ph.i, %.preheader71.i ]
  %.sroa.019.0.i48 = phi i32 [ %i.ad, %bb.j ], [ 0, %.preheader71.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i50, i64 1
  %i.w = add i64 %.sroa.16.0.i49, -1              ; 2 uses
  %1 = mul nuw i32 %.sroa.019.0.i48, 10           ; 2 uses
  %2 = icmp ugt i32 %.sroa.019.0.i48, 429496729
  %i.x = load i8, ptr %.sroa.03.0.i50, align 1, !alias.scope !1782, !noundef !4 ; 2 uses
  br i1 %2, label %bb.m, label %bb.l, !prof !164

bb.l:                                             ; preds = %.lr.ph
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.y, -48                    ; 2 uses
  %i.aa = icmp ult i32 %i.z, 10
  br i1 %i.aa, label %bb.n, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.m:                                             ; preds = %.lr.ph
  %i.ab = add i8 %i.x, -48
  %i.ac = icmp ult i8 %i.ab, 10
  %spec.select.i = select i1 %i.ac, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

bb.n:                                             ; preds = %bb.l
  %i.ad = add i32 %i.z, %1                        ; 3 uses
  %.not66.i = icmp ult i32 %i.ad, %1
  br i1 %.not66.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.o
  %.sroa.03.182.i = phi ptr [ %i.ak, %bb.o ], [ %.sroa.03.182.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.16.181.i = phi i64 [ %i.aj, %bb.o ], [ %.sroa.16.181.i.ph, %.lr.ph.i.preheader ]
  %.sroa.019.180.i = phi i32 [ %i.al, %bb.o ], [ 0, %.lr.ph.i.preheader ]
  %i.ae = load i8, ptr %.sroa.03.182.i, align 1, !alias.scope !1782, !noundef !4
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -48                  ; 2 uses
  %i.ah = icmp ult i32 %i.ag, 10
  br i1 %i.ah, label %bb.o, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.o:                                             ; preds = %.lr.ph.i
  %i.ai = mul i32 %.sroa.019.180.i, 10
  %i.aj = add nsw i64 %.sroa.16.181.i, -1         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.03.182.i, i64 1
  %i.al = add i32 %i.ag, %i.ai                    ; 2 uses
  %.not67.i = icmp eq i64 %i.aj, 0
  br i1 %.not67.i, label %.loopexit.i5, label %.lr.ph.i

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit": ; preds = %.loopexit.i5, %bb.m
  %.sroa.8.0.insert.insert.i = phi i64 [ %i.u, %.loopexit.i5 ], [ %spec.select.i, %bb.m ] ; 3 uses
  %i.am = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.am, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h4adb2c0ba3a86688E.exit", !prof !1785

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread": ; preds = %bb.n, %bb.l, %.lr.ph.i, %bb.g, %bb.g, %bb.f, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.8.0.insert.insert.i11 = phi i64 [ %.sroa.8.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit" ], [ 257, %bb.g ], [ 257, %.lr.ph.i ], [ 1, %bb.f ], [ 257, %bb.g ], [ 257, %bb.l ], [ 513, %bb.n ]
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i11, 8
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.a, align 1
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @107, i64 noundef 17, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #29
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h4adb2c0ba3a86688E.exit": ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  ret i32 %.sroa.6.0.extract.trunc.i

bb.p:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @105, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_ZN5xtask4main17hb2a19bbcbf99ae36E() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [4 x i8], align 4                 ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 8 uses
  %i.w = alloca [40 x i8], align 8                ; 6 uses
  %i.x = alloca [40 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 9 uses
  %i.aa = alloca [200 x i8], align 8              ; 12 uses
  %i.ab = alloca [56 x i8], align 8               ; 9 uses
  %i.ac = alloca [200 x i8], align 8              ; 12 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [40 x i8], align 8               ; 7 uses
  %i.af = alloca [40 x i8], align 8               ; 10 uses
  %i.ag = alloca [48 x i8], align 8               ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 12 uses
  %i.ai = alloca [48 x i8], align 8               ; 6 uses
  %i.aj = alloca [48 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [168 x i8], align 8              ; 20 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [168 x i8], align 8              ; 19 uses
  %i.aq = alloca [1 x i8], align 1                ; 4 uses
  %i.ar = alloca [72 x i8], align 16              ; 12 uses
  %i.as = alloca [32 x i8], align 8               ; 8 uses
  %i.at = alloca [48 x i8], align 8               ; 12 uses
  %i.au = alloca [40 x i8], align 8               ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [48 x i8], align 8               ; 8 uses
  %i.ax = alloca [24 x i8], align 8               ; 9 uses
  %i.ay = alloca [152 x i8], align 8              ; 16 uses
  %i.az = alloca [272 x i8], align 8              ; 6 uses
  %i.ba = alloca [272 x i8], align 8              ; 7 uses
  %i.bb = alloca [32 x i8], align 8               ; 9 uses
  %i.bc = alloca [48 x i8], align 8               ; 12 uses
  %i.bd = alloca [256 x i8], align 8              ; 46 uses
  %i.be = alloca [48 x i8], align 8               ; 8 uses
  %i.bf = alloca [32 x i8], align 8               ; 6 uses
  %i.bg = alloca [48 x i8], align 8               ; 7 uses
  %i.bh = alloca [40 x i8], align 8               ; 9 uses
  %i.bi = alloca [16 x i8], align 8               ; 9 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [16 x i8], align 16              ; 4 uses
  %i.bm = alloca [16 x i8], align 8               ; 5 uses
  %i.bn = alloca [16 x i8], align 16              ; 4 uses
  %i.bo = alloca [104 x i8], align 8              ; 4 uses
  %i.bp = alloca [104 x i8], align 8              ; 5 uses
  %i.bq = alloca [16 x i8], align 16              ; 7 uses
  %.sroa.11.i.i = alloca [96 x i8], align 8       ; 5 uses
  %i.br = alloca [104 x i8], align 8              ; 12 uses
  %i.bs = alloca [32 x i8], align 8               ; 8 uses
  %i.bt = alloca [96 x i8], align 8               ; 6 uses
  %i.bu = alloca [104 x i8], align 8              ; 11 uses
  %.sroa.10.i.sroa.6.i.i.i = alloca [15 x i8], align 1 ; 9 uses
  %.sroa.12.i.i.i.i = alloca [56 x i8], align 8   ; 6 uses
  %i.bv = alloca [32 x i8], align 8               ; 6 uses
  %i.bw = alloca [48 x i8], align 8               ; 6 uses
  %i.bx = alloca [40 x i8], align 8               ; 8 uses
  %i.by = alloca [16 x i8], align 8               ; 6 uses
  %i.bz = alloca [32 x i8], align 8               ; 5 uses
  %i.ca = alloca [32 x i8], align 8               ; 8 uses
  %i.cb = alloca [32 x i8], align 8               ; 6 uses
  %i.cc = alloca [96 x i8], align 8               ; 6 uses
  %i.cd = alloca [104 x i8], align 8              ; 6 uses
  %i.ce = alloca [104 x i8], align 8              ; 9 uses
  %.sroa.1166.i.i.i = alloca [15 x i8], align 1   ; 5 uses
  %i.cf = alloca [32 x i8], align 8               ; 5 uses
  %i.cg = alloca [32 x i8], align 8               ; 6 uses
  %i.ch = alloca [24 x i8], align 8               ; 7 uses
  %i.ci = alloca [32 x i8], align 8               ; 5 uses
  %i.cj = alloca [32 x i8], align 8               ; 6 uses
  %i.ck = alloca [24 x i8], align 8               ; 7 uses
  %i.cl = alloca [112 x i8], align 8              ; 6 uses
  %i.cm = alloca [24 x i8], align 8               ; 10 uses
  %i.cn = alloca [112 x i8], align 8              ; 8 uses
  %i.co = alloca [32 x i8], align 8               ; 6 uses
  %i.cp = alloca [48 x i8], align 8               ; 6 uses
  %i.cq = alloca [40 x i8], align 8               ; 6 uses
  %i.cr = alloca [16 x i8], align 8               ; 6 uses
  %i.cs = alloca [104 x i8], align 8              ; 4 uses
  %i.ct = alloca [104 x i8], align 8              ; 8 uses
  %i.cu = alloca [104 x i8], align 8              ; 9 uses
  %.sroa.9.i.i.i = alloca [96 x i8], align 8      ; 7 uses
  %i.cv = alloca [16 x i8], align 8               ; 5 uses
  %i.cw = alloca [24 x i8], align 8               ; 9 uses
  %i.cx = alloca [112 x i8], align 8              ; 9 uses
  %i.cy = alloca [256 x i8], align 8              ; 9 uses
  %i.cz = alloca [56 x i8], align 8               ; 20 uses
  %i.da = alloca [24 x i8], align 8               ; 10 uses
  %i.db = alloca [80 x i8], align 8               ; 8 uses
  %i.dc = alloca [8 x i8], align 8                ; 3 uses
  %.sroa.2.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.dd = alloca [24 x i8], align 8               ; 9 uses
  %i.de = alloca [32 x i8], align 8               ; 8 uses
  %i.df = alloca [64 x i8], align 8               ; 12 uses
  %i.dg = alloca [32 x i8], align 8               ; 7 uses
  %i.dh = alloca [24 x i8], align 8               ; 10 uses
  %i.di = alloca [24 x i8], align 8               ; 7 uses
  %i.dj = alloca [24 x i8], align 8               ; 7 uses
  %i.dk = alloca [24 x i8], align 8               ; 8 uses
  %i.dl = alloca [24 x i8], align 8               ; 14 uses
  %i.dm = alloca [712 x i8], align 8              ; 3 uses
  %i.dn = alloca [712 x i8], align 8              ; 4 uses
  %i.do = alloca [56 x i8], align 8               ; 7 uses
  %i.dp = alloca [32 x i8], align 8               ; 7 uses
  %i.dq = alloca [712 x i8], align 8              ; 16 uses
  %i.dr = alloca [8 x i8], align 8                ; 3 uses
  %.sroa.28.i = alloca [223 x i8], align 1        ; 5 uses
  %i.ds = alloca [712 x i8], align 8              ; 5 uses
  %i.dt = alloca [56 x i8], align 8               ; 6 uses
  %i.du = alloca [112 x i8], align 8              ; 6 uses
  %i.dv = alloca [256 x i8], align 8              ; 7 uses
  %.sroa.13 = alloca [223 x i8], align 1          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !1786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !1786
  call fastcc void @"_ZN71_$LT$xtask..Command$u20$as$u20$clap_builder..derive..CommandFactory$GT$7command17h20451f224ff8ec56E"(ptr noalias noundef align 8 captures(address) dereferenceable(712) %i.ds), !noalias !1786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !1789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.dq, ptr noundef nonnull readonly align 8 dereferenceable(712) %i.ds, i64 712, i1 false), !noalias !1793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !1789
  %.sink221.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sink221.i.sroa.gep21.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sink221.i.sroa.gep23.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %.sink221.i.sroa.gep24.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %.sink221.i.sroa.gep26.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sink221.i.sroa.gep27.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.sink221.i.sroa.gep29.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %.sink221.i.sroa.gep30.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sink226.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sink226.i.sroa.gep31.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sink226.i.sroa.gep33.i = getelementptr inbounds nuw i8, ptr %i.co, i64 16
end_hunk_1
begin_hunk_2_@_ZN5xtask4main17hb2a19bbcbf99ae36E:bb.a
  %.sroa.28.2.lcssa.i.i = phi i64 [ %i.ail, %bb.jj ], [ %i.aiu, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h7b0ae6765a76bde7E.exit92.i.i" ]
  %i.aiq = sub i64 %i.ahs, %.sroa.28.2.lcssa.i.i
  %.sroa.058.0.copyload59.i = load i64, ptr %i.ak, align 8, !noalias !2831
  %.sroa.560.0.copyload62.i = load ptr, ptr %i.aia, align 8, !noalias !2831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2812
  br label %_ZN5alloc3str17join_generic_copy17h01dade358e0be9d3E.exit.i

bb.jk:                                            ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2812
  br label %.invoke.i.i40

bb.jl:                                            ; preds = %.lr.ph.i.i
  %i.air = add i64 %.sroa.28.230.i.i, -1          ; 2 uses
  store i8 32, ptr %.sroa.08.231.i.i, align 1, !alias.scope !2832, !noalias !2812
  %.not82.i.i = icmp ugt i64 %.val85.i.i, %i.air
  br i1 %.not82.i.i, label %bb.jm, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h7b0ae6765a76bde7E.exit92.i.i", !prof !164

bb.jm:                                            ; preds = %bb.jl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2812
  br label %.invoke.i.i40

.invoke.i.i40:                                    ; preds = %bb.jm, %bb.jk
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %bb.jk ], [ %.sink.i.sroa.gep66.i, %bb.jm ]
  %.sink.i.sroa.phi67.i = phi ptr [ %.sink.i.sroa.gep68.i, %bb.jk ], [ %.sink.i.sroa.gep69.i, %bb.jm ]
  %.sink.i.sroa.phi70.i = phi ptr [ %.sink.i.sroa.gep71.i, %bb.jk ], [ %.sink.i.sroa.gep72.i, %bb.jm ]
  %.sink.i.sroa.phi73.i = phi ptr [ %.sink.i.sroa.gep74.i, %bb.jk ], [ %.sink.i.sroa.gep75.i, %bb.jm ]
  %.sink.i.i41 = phi ptr [ %i.aj, %bb.jk ], [ %i.ai, %bb.jm ] ; 2 uses
  store ptr @65, ptr %.sink.i.i41, align 8, !noalias !2812
  store i64 1, ptr %.sink.i.sroa.phi.i, align 8, !noalias !2812
  store ptr null, ptr %.sink.i.sroa.phi67.i, align 8, !noalias !2812
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i.sroa.phi70.i, align 8, !noalias !2812
  store i64 0, ptr %.sink.i.sroa.phi73.i, align 8, !noalias !2812
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i.i41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #29
          to label %.cont.i.i43 unwind label %bb.jf, !noalias !2812

.cont.i.i43:                                      ; preds = %.invoke.i.i40
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h7b0ae6765a76bde7E.exit92.i.i": ; preds = %bb.jl
  %i.ais = getelementptr inbounds nuw i8, ptr %.sroa.08.231.i.i, i64 1 ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 %.val85.i.i
  %i.aiu = sub nuw i64 %i.air, %.val85.i.i        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ais, ptr nonnull readonly align 1 %.val84.i.i33, i64 %.val85.i.i, i1 false), !alias.scope !2836, !noalias !2812
  %.sroa.05.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.032.i.i, i64 24 ; 2 uses
  %i.aiv = icmp eq ptr %.sroa.05.0.i.i, %i.ahm
  br i1 %i.aiv, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i", label %.lr.ph.i.i

.body45.i.thread:                                 ; preds = %bb.jp, %bb.jf, %bb.jg
  %.pn.i30.ph = phi { ptr, i32 } [ %i.ahy, %bb.jg ], [ %i.ahy, %bb.jf ], [ %i.aji, %bb.jp ]
  %i.aiw = inttoptr i64 %.sroa.684.0.copyload to ptr
  br label %.lr.ph.i.i.i.preheader

.body45.i:                                        ; preds = %bb.jr, %bb.jq
  %i.aix = inttoptr i64 %.sroa.684.1 to ptr       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2840), !noalias !2499
  %i.aiy = icmp eq i64 %.sroa.1285.1, 0
  br i1 %i.aiy, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.body45.i.thread, %.body45.i
  %i.aiz = phi ptr [ %i.aiw, %.body45.i.thread ], [ %i.aix, %.body45.i ] ; 2 uses
  %.pn.i30366 = phi { ptr, i32 } [ %.pn.i30.ph, %.body45.i.thread ], [ %i.ajn, %.body45.i ]
  %.sroa.083.0364 = phi i64 [ %.sroa.083.0.copyload, %.body45.i.thread ], [ %.sroa.083.1, %.body45.i ]
  %.sroa.1285.0363 = phi i64 [ %.sroa.1285.0.copyload, %.body45.i.thread ], [ %.sroa.1285.1, %.body45.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i"
  %.sroa.0.011.i.i.i = phi i64 [ %i.ajb, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i" ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.aja = getelementptr inbounds nuw [24 x i8], ptr %i.aiz, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.ajb = add nuw i64 %.sroa.0.011.i.i.i, 1      ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.aja, align 8, !range !185, !alias.scope !2843, !noalias !2846, !noundef !4 ; 2 uses
  %i.ajc = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.ajc, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i", label %bb.jn

bb.jn:                                            ; preds = %.lr.ph.i.i.i
  %i.ajd = getelementptr i8, ptr %i.aja, i64 8
  %.val9.i.i.i64 = load ptr, ptr %i.ajd, align 8, !alias.scope !2840, !noalias !2846, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i64, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2849
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i": ; preds = %bb.jn, %.lr.ph.i.i.i
  %i.aje = icmp eq i64 %i.ajb, %.sroa.1285.0363
  br i1 %i.aje, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i", %.body45.i
  %i.ajf = phi ptr [ %i.aix, %.body45.i ], [ %i.aiz, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i" ]
  %.pn.i30367 = phi { ptr, i32 } [ %i.ajn, %.body45.i ], [ %.pn.i30366, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i" ] ; 2 uses
  %.sroa.083.0365 = phi i64 [ %.sroa.083.1, %.body45.i ], [ %.sroa.083.0364, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i" ] ; 2 uses
  %i.ajg = icmp eq i64 %.sroa.083.0365, 0
  br i1 %i.ajg, label %.body41.i, label %bb.jo

bb.jo:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i"
  %i.ajh = mul nuw i64 %.sroa.083.0365, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajf, i64 noundef %i.ajh, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !2846
  br label %.body41.i

bb.jp:                                            ; preds = %bb.je, %bb.jd
  %i.aji = landingpad { ptr, i32 }
          cleanup
  br label %.body45.i.thread

_ZN5alloc3str17join_generic_copy17h01dade358e0be9d3E.exit.i: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i", %.thread.i46
  %.sroa.684.1 = phi i64 [ 8, %.thread.i46 ], [ %.sroa.684.0.copyload, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i" ] ; 2 uses
  %.sroa.1285.1 = phi i64 [ 0, %.thread.i46 ], [ %.sroa.1285.0.copyload, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i" ] ; 4 uses
  %.sroa.083.1 = phi i64 [ 0, %.thread.i46 ], [ %.sroa.083.0.copyload, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i" ] ; 4 uses
  %.sroa.058.0.i = phi i64 [ 0, %.thread.i46 ], [ %.sroa.058.0.copyload59.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i" ]
  %.sroa.560.0.i = phi ptr [ inttoptr (i64 1 to ptr), %.thread.i46 ], [ %.sroa.560.0.copyload62.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i" ]
  %.sroa.663.0.i = phi i64 [ 0, %.thread.i46 ], [ %i.aiq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fdb78e107f1378fE.exit88.thread.i.i" ]
  store i64 %.sroa.058.0.i, ptr %i.ax, align 8, !noalias !2499
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  store ptr %.sroa.560.0.i, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !2499
  %.sroa.663.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %.sroa.663.0.i, ptr %.sroa.663.0..sroa_idx.i, align 8, !noalias !2499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2499
  store ptr %i.ax, ptr %i.av, align 8, !noalias !2499
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !2499
  store ptr @74, ptr %i.aw, align 8, !noalias !2499
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 2, ptr %i.ajj, align 8, !noalias !2499
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr null, ptr %i.ajk, align 8, !noalias !2499
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.av, ptr %i.ajl, align 8, !noalias !2499
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 1, ptr %i.ajm, align 8, !noalias !2499
  invoke void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aw)
          to label %bb.js unwind label %bb.jq, !noalias !2499

bb.jq:                                            ; preds = %_ZN5alloc3str17join_generic_copy17h01dade358e0be9d3E.exit.i
  %i.ajn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val33.i = load i64, ptr %i.ax, align 8, !range !185, !alias.scope !2852, !noalias !2499, !noundef !4 ; 2 uses
  %i.ajo = icmp eq i64 %.val33.i, 0
  br i1 %i.ajo, label %.body45.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %.val34.i = load ptr, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !2499, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i, i64 noundef %.val33.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2855
  br label %.body45.i

bb.js:                                            ; preds = %_ZN5alloc3str17join_generic_copy17h01dade358e0be9d3E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2499
  %.val.i = load i64, ptr %i.ax, align 8, !range !185, !alias.scope !2852, !noalias !2499, !noundef !4 ; 2 uses
  %i.ajp = icmp eq i64 %.val.i, 0
  br i1 %i.ajp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit49.i", label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %.val32.i = load ptr, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !2499, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2858
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit49.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit49.i": ; preds = %bb.jt, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2499
  %i.ajq = inttoptr i64 %.sroa.684.1 to ptr       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2861)
  %i.ajr = icmp eq i64 %.sroa.1285.1, 0
  br i1 %i.ajr, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i", label %.lr.ph.i.i.i.i34

.lr.ph.i.i.i.i34:                                 ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit49.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i37"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.ajt, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i37" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit49.i" ] ; 2 uses
  %i.ajs = getelementptr inbounds nuw [24 x i8], ptr %i.ajq, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.ajt = add nuw i64 %.sroa.0.011.i.i.i.i, 1    ; 2 uses
  %.val8.i.i.i.i35 = load i64, ptr %i.ajs, align 8, !range !185, !alias.scope !2864, !noalias !2867, !noundef !4 ; 2 uses
  %i.aju = icmp eq i64 %.val8.i.i.i.i35, 0
  br i1 %i.aju, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i37", label %bb.ju

bb.ju:                                            ; preds = %.lr.ph.i.i.i.i34
  %i.ajv = getelementptr i8, ptr %i.ajs, i64 8
  %.val9.i.i.i.i36 = load ptr, ptr %i.ajv, align 8, !alias.scope !2861, !noalias !2867, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i36, i64 noundef %.val8.i.i.i.i35, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2870
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i37"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i37": ; preds = %bb.ju, %.lr.ph.i.i.i.i34
  %i.ajw = icmp eq i64 %i.ajt, %.sroa.1285.1
  br i1 %i.ajw, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i", label %.lr.ph.i.i.i.i34

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit.i.i.i.i37", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h8e5c1babcdd0534fE.exit49.i"
  %i.ajx = icmp eq i64 %.sroa.083.1, 0
  br i1 %i.ajx, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E.exit.i", label %bb.jv

bb.jv:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i"
  %i.ajy = mul nuw i64 %.sroa.083.1, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajq, i64 noundef %i.ajy, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !2867
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E.exit.i": ; preds = %bb.jv, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5f09b4f09f7748E.exit.i.i"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$cargo_metadata..Metadata$GT$17haea961300c33dbbbE"(ptr noalias noundef align 8 dereferenceable(272) %i.ba)
          to label %bb.kd unwind label %bb.kc, !noalias !2499

bb.jw:                                            ; preds = %bb.kc, %.body41.i, %.body.i21
  %.pn30.i = phi { ptr, i32 } [ %i.alk, %bb.kc ], [ %.pn28.i, %.body41.i ], [ %eh.lpad-body.i, %.body.i21 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2873)
  call void @llvm.experimental.noalias.scope.decl(metadata !2876), !noalias !2499
  call void @llvm.experimental.noalias.scope.decl(metadata !2879), !noalias !2499
  call void @llvm.experimental.noalias.scope.decl(metadata !2882), !noalias !2499
  call void @llvm.experimental.noalias.scope.decl(metadata !2885), !noalias !2499
  call void @llvm.experimental.noalias.scope.decl(metadata !2888), !noalias !2499
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.aka = load i64, ptr %i.ajz, align 8, !alias.scope !2891, !noalias !2499, !noundef !4 ; 4 uses
  %i.akb = icmp eq i64 %i.aka, 0
  br i1 %i.akb, label %common.resume, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call void @llvm.experimental.noalias.scope.decl(metadata !2892), !noalias !2499
  %i.akc = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.akd = load i64, ptr %i.akc, align 8, !alias.scope !2895, !noalias !2499, !noundef !4 ; 2 uses
  %i.ake = icmp eq i64 %i.akd, 0
  br i1 %i.ake, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.akf = load ptr, ptr %i.bc, align 8, !alias.scope !2895, !noalias !2499, !nonnull !4, !noundef !4 ; 3 uses
  %.val13.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.akf, align 16, !noalias !2896
  %i.akg = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akf, i64 16
  %i.aki = bitcast <16 x i1> %i.akg to i16
  br label %bb.jz

bb.jz:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i", %bb.jy
  %.sroa.07.018.i.i.i.i.i.i.i = phi ptr [ %i.akf, %bb.jy ], [ %.sroa.07.1.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i.i = phi ptr [ %i.akh, %bb.jy ], [ %.sroa.6.1.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i.i = phi i16 [ %i.aki, %bb.jy ], [ %i.akr, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i.i = phi i64 [ %i.akd, %bb.jy ], [ %i.aku, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i61, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i61:                         ; preds = %bb.jz, %.lr.ph.i.i.i.i.i.i.i.i61
  %i.akj = phi ptr [ %i.akn, %.lr.ph.i.i.i.i.i.i.i.i61 ], [ %.sroa.6.017.i.i.i.i.i.i.i, %bb.jz ] ; 2 uses
  %i.akk = phi ptr [ %i.akm, %.lr.ph.i.i.i.i.i.i.i.i61 ], [ %.sroa.07.018.i.i.i.i.i.i.i, %bb.jz ]
  %.val911.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.akj, align 16, !noalias !2899
  %i.akl = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.akm = getelementptr inbounds i8, ptr %i.akk, i64 -384 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akj, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.akl to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i62 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i62, label %.lr.ph.i.i.i.i.i.i.i.i61, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i61, %bb.jz
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i.i, %bb.jz ], [ %i.akn, %.lr.ph.i.i.i.i.i.i.i.i61 ]
  %.sroa.07.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i.i, %bb.jz ], [ %i.akm, %.lr.ph.i.i.i.i.i.i.i.i61 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i.i, %bb.jz ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i61 ] ; 3 uses
  %i.ako = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.akp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.akq = zext nneg i16 %i.akp to i64
  %i.akr = and i16 %i.ako, %.lcssa.i.i.i.i.i.i.i.i
  %i.aks = sub nsw i64 0, %i.akq
  %i.akt = getelementptr inbounds [24 x i8], ptr %.sroa.07.1.i.i.i.i.i.i.i, i64 %i.aks ; 2 uses
  %i.aku = add i64 %.sroa.109.015.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.akv = getelementptr inbounds i8, ptr %i.akt, i64 -24
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.akv, align 8, !range !185, !alias.scope !2902, !noalias !2905, !noundef !4 ; 2 uses
  %i.akw = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.akw, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i", label %bb.ka

bb.ka:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i"
  %i.akx = getelementptr i8, ptr %i.akt, i64 -16
  %.val6.i.i.i.i.i.i.i = load ptr, ptr %i.akx, align 8, !noalias !2905, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2906
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i": ; preds = %bb.ka, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i"
  %i.aky = icmp eq i64 %i.aku, 0
  br i1 %i.aky, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i, label %bb.jz

_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i", %bb.jx
  %0 = icmp slt i64 %i.aka, 768614336404564650
  call void @llvm.assume(i1 %0), !noalias !2499
  %i.akz = mul i64 %i.aka, 24
  %i.ala = and i64 %i.akz, -16                    ; 2 uses
  %i.alb = add i64 %i.ala, 32                     ; 2 uses
  %i.alc = add nsw i64 %i.aka, 17
  %i.ald = add i64 %i.alc, %i.alb                 ; 4 uses
  %i.ale = icmp uge i64 %i.ald, %i.alb
  %i.alf = icmp ult i64 %i.ald, 9223372036854775793
  call void @llvm.assume(i1 %i.ale), !noalias !2499
  call void @llvm.assume(i1 %i.alf), !noalias !2499
  %i.alg = icmp eq i64 %i.ald, 0
  br i1 %i.alg, label %common.resume, label %bb.kb

bb.kb:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i
  %i.alh = load ptr, ptr %i.bc, align 8, !alias.scope !2891, !noalias !2499, !nonnull !4, !noundef !4
  %i.ali = sub i64 -32, %i.ala
  %i.alj = getelementptr inbounds i8, ptr %i.alh, i64 %i.ali
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.alj, i64 noundef %i.ald, i64 noundef range(i64 1, -9223372036854775807) 16) #32, !noalias !2909
  br label %common.resume

bb.kc:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E.exit.i"
  %i.alk = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.kd:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hbbc98d388f6cd8f9E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2499
  call void @llvm.experimental.noalias.scope.decl(metadata !2910)
  call void @llvm.experimental.noalias.scope.decl(metadata !2913)
  call void @llvm.experimental.noalias.scope.decl(metadata !2916)
  call void @llvm.experimental.noalias.scope.decl(metadata !2919)
  call void @llvm.experimental.noalias.scope.decl(metadata !2922)
  call void @llvm.experimental.noalias.scope.decl(metadata !2925)
  %i.all = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.alm = load i64, ptr %i.all, align 8, !alias.scope !2928, !noalias !2499, !noundef !4 ; 4 uses
  %i.aln = icmp eq i64 %i.alm, 0
  br i1 %i.aln, label %_ZN5xtask13list_features17h9449f48e968bd1b7E.exit, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.experimental.noalias.scope.decl(metadata !2929)
  %i.alo = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.alp = load i64, ptr %i.alo, align 8, !alias.scope !2932, !noalias !2499, !noundef !4 ; 2 uses
  %i.alq = icmp eq i64 %i.alp, 0
  br i1 %i.alq, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.alr = load ptr, ptr %i.bc, align 8, !alias.scope !2932, !noalias !2499, !nonnull !4, !noundef !4 ; 3 uses
  %.val13.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.alr, align 16, !noalias !2933
  %i.als = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alr, i64 16
  %i.alu = bitcast <16 x i1> %i.als to i16
  br label %bb.kg

bb.kg:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i", %bb.kf
  %.sroa.07.018.i.i.i.i.i.i.i.i = phi ptr [ %i.alr, %bb.kf ], [ %.sroa.07.1.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i.i.i = phi ptr [ %i.alt, %bb.kf ], [ %.sroa.6.1.i.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i.i.i = phi i16 [ %i.alu, %bb.kf ], [ %i.amd, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i.i.i = phi i64 [ %i.alp, %bb.kf ], [ %i.amg, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i38, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i38:                       ; preds = %bb.kg, %.lr.ph.i.i.i.i.i.i.i.i.i38
  %i.alv = phi ptr [ %i.alz, %.lr.ph.i.i.i.i.i.i.i.i.i38 ], [ %.sroa.6.017.i.i.i.i.i.i.i.i, %bb.kg ] ; 2 uses
  %i.alw = phi ptr [ %i.aly, %.lr.ph.i.i.i.i.i.i.i.i.i38 ], [ %.sroa.07.018.i.i.i.i.i.i.i.i, %bb.kg ]
  %.val911.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.alv, align 16, !noalias !2936
  %i.alx = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aly = getelementptr inbounds i8, ptr %i.alw, i64 -384 ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alv, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.alx to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i39 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i.i.i.i.i38, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i38, %bb.kg
  %.sroa.6.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i.i.i, %bb.kg ], [ %i.alz, %.lr.ph.i.i.i.i.i.i.i.i.i38 ]
  %.sroa.07.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i.i.i, %bb.kg ], [ %i.aly, %.lr.ph.i.i.i.i.i.i.i.i.i38 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i.i.i, %bb.kg ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i38 ] ; 3 uses
  %i.ama = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.amb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.amc = zext nneg i16 %i.amb to i64
  %i.amd = and i16 %i.ama, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.ame = sub nsw i64 0, %i.amc
  %i.amf = getelementptr inbounds [24 x i8], ptr %.sroa.07.1.i.i.i.i.i.i.i.i, i64 %i.ame ; 2 uses
  %i.amg = add i64 %.sroa.109.015.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.amh = getelementptr inbounds i8, ptr %i.amf, i64 -24
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.amh, align 8, !range !185, !alias.scope !2939, !noalias !2942, !noundef !4 ; 2 uses
  %i.ami = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.ami, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i", label %bb.kh

bb.kh:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i.i"
  %i.amj = getelementptr i8, ptr %i.amf, i64 -16
  %.val6.i.i.i.i.i.i.i.i = load ptr, ptr %i.amj, align 8, !noalias !2942, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2943
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.kh, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hae4bf5fa000015abE.exit.i.i.i.i.i.i.i.i"
  %i.amk = icmp eq i64 %i.amg, 0
  br i1 %i.amk, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i.i, label %bb.kg

_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h1989bb773cc3c534E.exit.i.i.i.i.i.i.i.i", %bb.ke
  %1 = icmp slt i64 %i.alm, 768614336404564650
  call void @llvm.assume(i1 %1)
  %i.aml = mul i64 %i.alm, 24
  %i.amm = and i64 %i.aml, -16                    ; 2 uses
  %i.amn = add i64 %i.amm, 32                     ; 2 uses
  %i.amo = add nsw i64 %i.alm, 17
  %i.amp = add i64 %i.amo, %i.amn                 ; 4 uses
  %i.amq = icmp uge i64 %i.amp, %i.amn
  %i.amr = icmp ult i64 %i.amp, 9223372036854775793
  call void @llvm.assume(i1 %i.amq)
  call void @llvm.assume(i1 %i.amr)
  %i.ams = icmp eq i64 %i.amp, 0
  br i1 %i.ams, label %_ZN5xtask13list_features17h9449f48e968bd1b7E.exit, label %bb.ki

bb.ki:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i.i
  %i.amt = load ptr, ptr %i.bc, align 8, !alias.scope !2928, !noalias !2499, !nonnull !4, !noundef !4
  %i.amu = sub i64 -32, %i.amm
  %i.amv = getelementptr inbounds i8, ptr %i.amt, i64 %i.amu
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.amv, i64 noundef %i.amp, i64 noundef range(i64 1, -9223372036854775807) 16) #32, !noalias !2946
  br label %_ZN5xtask13list_features17h9449f48e968bd1b7E.exit

bb.kj:                                            ; preds = %.body41.i, %.body.i21
  %i.amw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !2499
  unreachable

_ZN5xtask13list_features17h9449f48e968bd1b7E.exit: ; preds = %bb.kd, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h303606d4757e4c22E.exit.i.i.i.i.i.i.i, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2499
  br label %bb.oq

bb.kk:                                            ; preds = %_ZN12clap_builder6derive6Parser5parse17h264b22f51fd7bc76E.exit
  store i64 %.sroa.0.0.i, ptr %i.dv, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.zb, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store ptr %.sroa.19.1.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store i64 %.sroa.24.1.i, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store i8 %.sroa.27.1.i, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(223) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(223) %.sroa.13, i64 223, i1 false)
  %i.amx = call noundef ptr @_ZN5xtask5bench3run17h7d608fb1db57cc98E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.dv) ; 2 uses
  %.not11 = icmp eq ptr %i.amx, null
  br i1 %.not11, label %bb.oq, label %bb.op

bb.kl:                                            ; preds = %_ZN12clap_builder6derive6Parser5parse17h264b22f51fd7bc76E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2947
  store ptr %i.zb, ptr %i.ah, align 8
  %.sroa.280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  store ptr %.sroa.19.1.i, ptr %.sroa.280.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store i64 %.sroa.24.1.i, ptr %.sroa.3.0..sroa_idx, align 8
  %i.amy = trunc nuw i8 %.sroa.27.1.i to i1
  %i.amz = getelementptr inbounds nuw i8, ptr %.sroa.19.1.i, i64 %.sroa.24.1.i ; 5 uses
  br label %bb.km

bb.km:                                            ; preds = %"_ZN104_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17h8652e8469a60bd96E.exit.i.i.i.i", %bb.kl
  %i.ana = phi ptr [ %i.aol, %"_ZN104_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17h8652e8469a60bd96E.exit.i.i.i.i" ], [ %i.amz, %bb.kl ] ; 6 uses
  %i.anb = icmp eq ptr %.sroa.19.1.i, %i.ana
  br i1 %i.anb, label %.loopexit432.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.anc = getelementptr inbounds i8, ptr %i.ana, i64 -1 ; 3 uses
  %i.and = load i8, ptr %i.anc, align 1, !alias.scope !2950, !noalias !2953, !noundef !4 ; 3 uses
  %i.ane = icmp sgt i8 %i.and, -1
  br i1 %i.ane, label %bb.ko, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit17.i.i.i.i.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit17.i.i.i.i.i.i.i": ; preds = %bb.kn
  %i.anf = icmp ne ptr %.sroa.19.1.i, %i.anc
  call void @llvm.assume(i1 %i.anf)
  %i.ang = getelementptr inbounds i8, ptr %i.ana, i64 -2 ; 3 uses
  %i.anh = load i8, ptr %i.ang, align 1, !alias.scope !2950, !noalias !2953, !noundef !4 ; 3 uses
  %i.ani = and i8 %i.anh, 31
  %i.anj = zext nneg i8 %i.ani to i32
  %i.ank = icmp slt i8 %i.anh, -64
  br i1 %i.ank, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit19.i.i.i.i.i.i.i", label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  %i.anl = zext nneg i8 %i.and to i32
  br label %"_ZN104_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17h8652e8469a60bd96E.exit.i.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit19.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit17.i.i.i.i.i.i.i"
  %i.anm = icmp ne ptr %.sroa.19.1.i, %i.ang
  call void @llvm.assume(i1 %i.anm)
  %i.ann = getelementptr inbounds i8, ptr %i.ana, i64 -3 ; 3 uses
  %i.ano = load i8, ptr %i.ann, align 1, !alias.scope !2950, !noalias !2953, !noundef !4 ; 3 uses
  %i.anp = and i8 %i.ano, 15
  %i.anq = zext nneg i8 %i.anp to i32
  %i.anr = icmp slt i8 %i.ano, -64
  br i1 %i.anr, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit21.i.i.i.i.i.i.i", label %bb.kq

bb.kp:                                            ; preds = %bb.kq, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit17.i.i.i.i.i.i.i"
  %i.ans = phi ptr [ %i.aog, %bb.kq ], [ %i.ang, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit17.i.i.i.i.i.i.i" ]
  %.sroa.04.0.i.i.i.i.i.i.i = phi i32 [ %i.aok, %bb.kq ], [ %i.anj, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit17.i.i.i.i.i.i.i" ]
  %i.ant = shl nuw nsw i32 %.sroa.04.0.i.i.i.i.i.i.i, 6
  %i.anu = and i8 %i.and, 63
  %i.anv = zext nneg i8 %i.anu to i32
  %i.anw = or disjoint i32 %i.ant, %i.anv
  br label %"_ZN104_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17h8652e8469a60bd96E.exit.i.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit21.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit19.i.i.i.i.i.i.i"
  %i.anx = icmp ne ptr %.sroa.19.1.i, %i.ann
  call void @llvm.assume(i1 %i.anx)
  %i.any = getelementptr inbounds i8, ptr %i.ana, i64 -4 ; 2 uses
  %i.anz = load i8, ptr %i.any, align 1, !alias.scope !2950, !noalias !2953, !noundef !4
  %i.aoa = and i8 %i.anz, 7
  %i.aob = zext nneg i8 %i.aoa to i32
  %i.aoc = shl nuw nsw i32 %i.aob, 6
  %i.aod = and i8 %i.ano, 63
  %i.aoe = zext nneg i8 %i.aod to i32
  %i.aof = or disjoint i32 %i.aoc, %i.aoe
  br label %bb.kq

bb.kq:                                            ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit21.i.i.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit19.i.i.i.i.i.i.i"
  %i.aog = phi ptr [ %i.any, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit21.i.i.i.i.i.i.i" ], [ %i.ann, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit19.i.i.i.i.i.i.i" ]
  %.sroa.04.1.i.i.i.i.i.i.i = phi i32 [ %i.aof, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit21.i.i.i.i.i.i.i" ], [ %i.anq, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hcd480030fd02c8c5E.exit19.i.i.i.i.i.i.i" ]
  %i.aoh = shl nuw nsw i32 %.sroa.04.1.i.i.i.i.i.i.i, 6
  %i.aoi = and i8 %i.anh, 63
  %i.aoj = zext nneg i8 %i.aoi to i32
  %i.aok = or disjoint i32 %i.aoh, %i.aoj
  br label %bb.kp

"_ZN104_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17h8652e8469a60bd96E.exit.i.i.i.i": ; preds = %bb.kp, %bb.ko
  %i.aol = phi ptr [ %i.anc, %bb.ko ], [ %i.ans, %bb.kp ]
  %.sroa.4.1.i.ph.i.i.i.i.i.i = phi i32 [ %i.anl, %bb.ko ], [ %i.anw, %bb.kp ] ; 2 uses
  %i.aom = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.aom)
  %i.aon = add nsw i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, -45
  %spec.select.i.not.i.not.i.i.i.i = icmp ult i32 %i.aon, 2
  br i1 %spec.select.i.not.i.not.i.i.i.i, label %bb.ks, label %bb.km

.body257.i:                                       ; preds = %bb.on, %"_ZN4core3ptr39drop_in_place$LT$semver..Prerelease$GT$17h369f44407d983660E.exit.i", %bb.oj, %.loopexit.split-lp434.i, %.loopexit433.i
  %.pn142.i = phi { ptr, i32 } [ %.pn140.i, %"_ZN4core3ptr39drop_in_place$LT$semver..Prerelease$GT$17h369f44407d983660E.exit.i" ], [ %i.awr, %bb.oj ], [ %.pn140.i, %bb.on ], [ %lpad.loopexit435.i, %.loopexit433.i ], [ %lpad.loopexit.split-lp436.i, %.loopexit.split-lp434.i ] ; 2 uses
  %.val159.i = load i64, ptr %i.ah, align 8, !range !185, !alias.scope !2968, !noalias !2947, !noundef !4 ; 2 uses
  %i.aoo = icmp eq i64 %.val159.i, 0
  br i1 %i.aoo, label %common.resume, label %bb.kr

bb.kr:                                            ; preds = %.body257.i
  %.val160.i = load ptr, ptr %.sroa.280.0..sroa_idx, align 8, !noalias !2947, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val160.i, i64 noundef %.val159.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !2971
  br label %common.resume

.loopexit433.i:                                   ; preds = %.split.i.i.i.i
  %lpad.loopexit435.i = landingpad { ptr, i32 }
          cleanup
  br label %.body257.i

.loopexit.split-lp434.i:                          ; preds = %"_ZN4core3ptr39drop_in_place$LT$semver..Prerelease$GT$17h369f44407d983660E.exit.i255.i", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h57d535e9657c666bE.exit.i", %bb.ky, %.loopexit432.i, %"_ZN4core6option15Option$LT$T$GT$6filter17h86874fd4f085ae6fE.exit.i"
  %lpad.loopexit.split-lp436.i = landingpad { ptr, i32 }
          cleanup
  br label %.body257.i

bb.ks:                                            ; preds = %"_ZN104_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17h8652e8469a60bd96E.exit.i.i.i.i"
  %i.aop = ptrtoint ptr %i.ana to i64
  %i.aoq = ptrtoint ptr %.sroa.19.1.i to i64
  %i.aor = sub i64 %i.aop, %i.aoq                 ; 2 uses
  %.not.i16.i.i.i.i = icmp eq i64 %.sroa.24.1.i, %i.aor
  br i1 %.not.i16.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6filter17h86874fd4f085ae6fE.exit.i", label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.ks
  %i.aos = getelementptr inbounds nuw i8, ptr %.sroa.19.1.i, i64 %i.aor
  br label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h99a788321d6fd7e3E.exit.backedge.i.i.i.i", %.lr.ph.i.i.i.preheader.i
  %i.aot = phi ptr [ %i.aqc, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h99a788321d6fd7e3E.exit.backedge.i.i.i.i" ], [ %i.aos, %.lr.ph.i.i.i.preheader.i ] ; 5 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aot, i64 1 ; 3 uses
  %i.aov = load i8, ptr %i.aot, align 1, !noalias !2974, !noundef !4 ; 5 uses
  %i.aow = icmp sgt i8 %i.aov, -1
  br i1 %i.aow, label %bb.kt, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded1baa94327a5f1E.exit12.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded1baa94327a5f1E.exit12.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i47
  %i.aox = and i8 %i.aov, 31
  %i.aoy = zext nneg i8 %i.aox to i32             ; 3 uses
  %i.aoz = icmp ne ptr %i.aou, %i.amz
  call void @llvm.assume(i1 %i.aoz)
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aot, i64 2 ; 3 uses
  %i.apb = load i8, ptr %i.aou, align 1, !noalias !2974, !noundef !4
  %i.apc = shl nuw nsw i32 %i.aoy, 6
  %i.apd = and i8 %i.apb, 63
  %i.ape = zext nneg i8 %i.apd to i32             ; 2 uses
  %i.apf = or disjoint i32 %i.apc, %i.ape
  %i.apg = icmp samesign ugt i8 %i.aov, -33
  br i1 %i.apg, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded1baa94327a5f1E.exit14.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i"

bb.kt:                                            ; preds = %.lr.ph.i.i.i.i47
  %i.aph = zext nneg i8 %i.aov to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded1baa94327a5f1E.exit14.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded1baa94327a5f1E.exit12.i.i.i.i.i.i"
  %i.api = icmp ne ptr %i.apa, %i.amz
  call void @llvm.assume(i1 %i.api)
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aot, i64 3 ; 3 uses
  %i.apk = load i8, ptr %i.apa, align 1, !noalias !2974, !noundef !4
  %i.apl = shl nuw nsw i32 %i.ape, 6
  %i.apm = and i8 %i.apk, 63
  %i.apn = zext nneg i8 %i.apm to i32
  %i.apo = or disjoint i32 %i.apl, %i.apn         ; 2 uses
  %i.app = shl nuw nsw i32 %i.aoy, 12
  %i.apq = or disjoint i32 %i.apo, %i.app
  %i.apr = icmp samesign ugt i8 %i.aov, -17
  br i1 %i.apr, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hded1baa94327a5f1E.exit14.i.i.i.i.i.i"
  %i.aps = icmp ne ptr %i.apj, %i.amz
end_hunk_2
begin_hunk_3_@"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h81bccf463a6dd80fE":bb.a
  store i64 %.val1.i.i.us.i.i.i.i.i.i, ptr %i.u, align 8, !noalias !3912
  %.sroa.42.0..sroa_idx.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !3912
  %.sroa.53.0..sroa_idx.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.val1.i.i.us.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !3912
  %i.v = add i64 %i.h, 1
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h6b915dffe2e57471E.exit"

.lr.ph.i.preheader.split.i.i.i.i.i.i:             ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  %i.w = getelementptr i8, ptr %i.n, i64 16
  %.val1.i.i7.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !3885, !noalias !3888, !noundef !4 ; 3 uses
  %i.x = icmp slt i64 %.val1.i.i7.i.i.i.i.i.i, 0
  br i1 %i.x, label %.split.us.i.i.i.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.lr.ph.i.i.i.i.i.i, !prof !3919

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.lr.ph.i.i.i.i.i.i: ; preds = %.lr.ph.i.preheader.split.i.i.i.i.i.i
  %i.y = icmp ne i64 %.val1.i.i7.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.y)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !3892
  unreachable

.split.us.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.preheader.split.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i", %.lr.ph.i.us.i.i.i.i.i.i
  %.us-phi3.i.i.i.i.i.i = phi i64 [ %.val1.i.i.us.i.i.i.i.i.i, %.lr.ph.i.us.i.i.i.i.i.i ], [ %.val1.i.i.us.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i" ], [ %.val1.i.i7.i.i.i.i.i.i, %.lr.ph.i.preheader.split.i.i.i.i.i.i ]
  %.us-phi4.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.us.i.i.i.i.i.i ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i" ], [ 0, %.lr.ph.i.preheader.split.i.i.i.i.i.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.us-phi4.i.i.i.i.i.i, i64 %.us-phi3.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #29, !noalias !3920
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h6b915dffe2e57471E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h52ca796f8734815bE.exit.i", %"_ZN93_$LT$core..ops..index_range..IndexRange$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h79bee132c54f7e2bE.exit.loopexit.split.us.i.i.i.i.i.i"
  %.val3.i.i.i.i.i.i.i = phi i64 [ %i.h, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h52ca796f8734815bE.exit.i" ], [ %i.v, %"_ZN93_$LT$core..ops..index_range..IndexRange$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h79bee132c54f7e2bE.exit.loopexit.split.us.i.i.i.i.i.i" ]
  store i64 %.val3.i.i.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !3844, !noalias !3921
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN3std7process4exit17h7875a9b527d14724E(i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN12clap_builder6output3fmt9Colorizer12with_content17had503000a0cf3b56E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN12clap_builder6output3fmt9Colorizer5print17h8afe1871a0b21d6fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN12clap_builder7builder7command7Command11_build_self17hac35a63dc9d0e1b0E(ptr noalias noundef align 8 dereferenceable(712), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN12clap_builder7builder7command7Command13render_usage_17h11e86ec168544d81E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(712)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN12clap_builder5error7Message6format17hb89fb9483f86dae2E(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN12clap_builder5error6format13get_help_flag17hc8ecdb00a85b8bf6E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(712)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN106_$LT$clap_builder..error..format..RichFormatter$u20$as$u20$clap_builder..error..format..ErrorFormatter$GT$12format_error17h4ac48a960b4e4284E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN12clap_builder5error7Message9formatted17hcea69eb1407df49cE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(126)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN80_$LT$clap_builder..parser..error..MatchesError$u20$as$u20$core..fmt..Display$GT$3fmt17ha5c5d701dae1d4c8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg17into_vals_flatten17h88b4e7d789f7178bE(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg8num_vals17h903afd81f5e147a0E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg13infer_type_id17h498c56091c240590E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN157_$LT$core..option..Option$LT$$RF$str$GT$$u20$as$u20$clap_builder..builder..resettable..IntoResettable$LT$clap_builder..builder..styled_str..StyledStr$GT$$GT$15into_resettable17hc7d276ef141b63adE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 1 captures(address, read_provenance), i64) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_ZN12clap_builder7builder7command7Command19subcommand_internal17hcafa007f0dac0939E(ptr dead_on_unwind noalias noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(712), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(712)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3env7args_os17hf84d370ac9d9c8d2E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN3std4path4Path9file_stem17hae6bbfc334975c6eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN12clap_builder7builder7command7Command9_do_parse17hc03e232bddacd83bE(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(712), ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN3std4path4Path9file_name17h77694d5a6d90e999E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN12clap_builder7builder7command7Command12arg_internal17hb051e63108f89d40E(ptr noalias noundef align 8 dereferenceable(712), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(640)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN3std2rt19lang_start_internal17h6ba36b077a531782E(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys7process4unix6common7Command3arg17h1fba8cb9bc28b1e8E(ptr noalias noundef align 8 dereferenceable(200), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys7process4unix6common7Command3new17h32f380f7324f3eb9E(ptr dead_on_unwind noalias noundef writable sret([200 x i8]) align 8 captures(address) dereferenceable(200), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys7process4unix6common7Command6stderr17hd7052753016cfca5E(ptr noalias noundef align 8 dereferenceable(200), i32 noundef range(i32 0, 5), i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys7process4unix6common7Command6stdout17h63af7acfe2898a32E(ptr noalias noundef align 8 dereferenceable(200), i32 noundef range(i32 0, 5), i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN61_$LT$serde_json..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h0e69d55c0f205327E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h62ceb23194058131E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17hde63f116d7a06bd3E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h6c991086feef44baE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN100_$LT$anyhow..context..Quoted$LT$$RF$mut$u20$core..fmt..Formatter$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h523ed37a0a9273d3E"(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN6anyhow5error65_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$anyhow..Error$GT$4drop17hf449d51980abb73cE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN72_$LT$semver..identifier..Identifier$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1ecab61e92e8d70fE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN102_$LT$std..sys..process..unix..common..cstring_array..CStringArray$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1123a5ae1e02a022E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core7unicode12unicode_data1n11lookup_slow17hdfb8029e3c529b03E(i32 noundef range(i32 0, 1114112)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN76_$LT$clap_builder..util..any_value..AnyValue$u20$as$u20$core..fmt..Debug$GT$3fmt17h04d9241bc5f2556aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @"_ZN99_$LT$clap_builder..builder..styled_str..StyledStr$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h223328f1aeb95e74E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h227c91f2cdf747efE"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd1b6aa6ee33cf8f3E"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #21

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #22

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #23

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef range(i64 0, -9223372036854775807), i64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare void @_ZN14cargo_metadata15MetadataCommand4exec17h27b23bd037146052E(ptr dead_on_unwind noalias noundef writable sret([272 x i8]) align 8 captures(address) dereferenceable(272), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN6semver7Version5parse17h6cc14d26778d6192E(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std7process7Command6status17h723e776ba6341907E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(200)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std7process7Command6output17h43c2bcdedd19a7a1E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(200)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN97_$LT$alloc..string..String$u20$as$u20$core..convert..TryFrom$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$8try_from17he31f0cdc17d8d2c7E"(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN6semver5parse75_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$semver..Prerelease$GT$8from_str17haac758dba99898fcE"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN6semver7display64_$LT$impl$u20$core..fmt..Display$u20$for$u20$semver..Version$GT$3fmt17h93b9fd7104763bc8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN6semver10Prerelease6as_str17hb054d86234cc4334E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @"_ZN6semver5impls72_$LT$impl$u20$core..ops..deref..Deref$u20$for$u20$semver..Prerelease$GT$5deref17he07af5516261a78aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN6semver10Prerelease3new17h48b37cc8c3f8eeecE(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN5xtask5bench3run17h7d608fb1db57cc98E(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(256)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN5xtask4test3run17h938bcc73778edc7dE(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$xtask..bench..BenchArgs$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h8db8debefb64fe08E"(ptr dead_on_unwind noalias noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(712)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN68_$LT$xtask..test..TestArgs$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h51d1963e7fb65c40E"(ptr dead_on_unwind noalias noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(712)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$10write_char17h44b6dc644adef020E"(ptr noalias noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN6semver5error67_$LT$impl$u20$core..fmt..Debug$u20$for$u20$semver..parse..Error$GT$3fmt17hf30c6e93e2162973E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN6semver5error69_$LT$impl$u20$core..fmt..Display$u20$for$u20$semver..parse..Error$GT$3fmt17hcfb9e576b74328d8E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..error..Error$GT$6source17h74772029ee51d953E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..error..Error$GT$5cause17hd1ab51381131e2d9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN67_$LT$alloc..string..FromUtf8Error$u20$as$u20$core..fmt..Display$GT$3fmt17h7b780f73fe0be099E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN6anyhow3fmt42_$LT$impl$u20$anyhow..error..ErrorImpl$GT$5debug17h22a71e1f002165e7E"(ptr noundef nonnull, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17haeee4e7d29656440E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h56d1eb59f44eeb35E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf71341fb7d59a632E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches17remove_subcommand17ha5c759f2844a95adE(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches11contains_id17h10728f5cb85abf59E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN80_$LT$xtask..bench..BenchArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17h6ac122bede02a66fE"(ptr dead_on_unwind noalias noundef writable sret([256 x i8]) align 8 captures(address) dereferenceable(256), ptr noalias noundef align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN78_$LT$xtask..test..TestArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17h557e3d52e4a4f556E"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noalias noundef align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN6anyhow5error60_$LT$impl$u20$core..fmt..Debug$u20$for$u20$anyhow..Error$GT$3fmt17h917d9e1f1af60d41E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio23attempt_print_to_stderr17h8a28c0d4c444e62fE(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4core5slice6memchr7memrchr17h0c3e43ac4b055a3eE(i8 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #18
end_hunk_3
