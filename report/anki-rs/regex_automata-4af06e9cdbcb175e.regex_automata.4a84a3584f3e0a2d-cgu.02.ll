Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.02?download=true
inline.NumInlined: 351
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN4core3ptr97drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextInsert$GT$$GT$17he8fde6d2b1f9ac96E"
define internal fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextInsert$GT$$GT$17he8fde6d2b1f9ac96E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e4b3dcc07ce89a9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h13ec993da9754274E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr104drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..range_trie..NextInsert$GT$$GT$17h67060dff8efc85caE.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h13ec993da9754274E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr104drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..range_trie..NextInsert$GT$$GT$17h67060dff8efc85caE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr97drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..map..Utf8SuffixMap$GT$$GT$17h39877984d8db02d5E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h20ea48201d096879E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %"_ZN4core3ptr100drop_in_place$LT$core..cell..UnsafeCell$LT$regex_automata..nfa..thompson..map..Utf8SuffixMap$GT$$GT$17h480adb7028fe5cbaE.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h91d557283bd126d6E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %"_ZN4core3ptr102drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..map..Utf8SuffixEntry$GT$$GT$17h5b7b1fe08e0eb5edE.exit.i.i.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr102drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..map..Utf8SuffixEntry$GT$$GT$17h5b7b1fe08e0eb5edE.exit.i.i.i": ; preds = %bb.b
  resume { ptr, i32 } %i.b

"_ZN4core3ptr100drop_in_place$LT$core..cell..UnsafeCell$LT$regex_automata..nfa..thompson..map..Utf8SuffixMap$GT$$GT$17h480adb7028fe5cbaE.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h91d557283bd126d6E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17h6db445899b31b621E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha778ba63b656fad9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..map..Utf8BoundedEntry$GT$$GT$17h7eed51f1f7e5845dE.exit.i.i.i" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7e5dbcf4cb8a378E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr96drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..map..Utf8BoundedEntry$GT$$GT$17h7eed51f1f7e5845dE.exit.i.i.i": ; preds = %bb.a
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7e5dbcf4cb8a378E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %"_ZN4core3ptr71drop_in_place$LT$regex_automata..nfa..thompson..map..Utf8BoundedMap$GT$17h4bad98f0fcec5f06E.exit.i.i" unwind label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..map..Utf8BoundedEntry$GT$$GT$17h7eed51f1f7e5845dE.exit.i.i.i"
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..compiler..Utf8Node$GT$$GT$17h8b83075f8b41e074E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #17
          to label %common.resume.i.i unwind label %bb.g

"_ZN4core3ptr71drop_in_place$LT$regex_automata..nfa..thompson..map..Utf8BoundedMap$GT$17h4bad98f0fcec5f06E.exit.i.i": ; preds = %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..map..Utf8BoundedEntry$GT$$GT$17h7eed51f1f7e5845dE.exit.i.i.i"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6807fa47d3e041faE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr101drop_in_place$LT$core..cell..UnsafeCell$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17h5587f439d04a4d28E.exit" unwind label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr71drop_in_place$LT$regex_automata..nfa..thompson..map..Utf8BoundedMap$GT$17h4bad98f0fcec5f06E.exit.i.i"
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he753f62ffc5896b4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

common.resume.i.i:                                ; preds = %bb.e, %.body.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.g:                                             ; preds = %.body.i.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr101drop_in_place$LT$core..cell..UnsafeCell$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17h5587f439d04a4d28E.exit": ; preds = %"_ZN4core3ptr71drop_in_place$LT$regex_automata..nfa..thompson..map..Utf8BoundedMap$GT$17h4bad98f0fcec5f06E.exit.i.i"
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he753f62ffc5896b4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr98drop_in_place$LT$regex_automata..dfa..dense..TransitionTable$LT$alloc..vec..Vec$LT$u32$GT$$GT$$GT$17h324f1d746736e5ebE"(ptr noalias noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb7bc9eae4c99a99E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h14eaae8d65a24263E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf6691c71ca218ea5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u32$GT$$GT$17h2420a4138c0f9ce1E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u32$GT$$GT$17h2420a4138c0f9ce1E.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h14eaae8d65a24263E.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf6691c71ca218ea5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5fe665725fe47f2cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !27, !noundef !3
  %i.b = tail call noundef zeroext i1 @"_ZN77_$LT$regex_automata..dfa..dense..DFA$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h61958c5321ead2afE"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$core..num..error..TryFromIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h800be8c82c92677eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @175, i64 noundef 15, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @174)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$regex_automata..dfa..dense..Flags$u20$as$u20$core..fmt..Debug$GT$3fmt17h856d3ebecb1eb9c4E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(3) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @178, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @179, i64 noundef 9, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @180, i64 noundef 7, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @181, i64 noundef 24, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @177)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN70_$LT$regex_automata..dfa..dense..State$u20$as$u20$core..fmt..Debug$GT$3fmt17h7aea9b2bb1ba693bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 8 uses
  %i.h = alloca [4 x i8], align 4                 ; 9 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 8388608
  %i.p = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 63
  %i.t = select i1 %i.p, i64 %i.s, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.u, align 8, !nonnull !3 ; 3 uses
  %.val37 = load ptr, ptr %1, align 8, !nonnull !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val38, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.sroa.16.sroa.0.sroa.10.sroa.0.0 = phi i24 [ undef, %bb.a ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.4, %bb.n ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.0 = phi i8 [ 2, %bb.a ], [ %.sroa.16.sroa.0.sroa.0.4, %bb.n ] ; 2 uses
  %.sroa.16.sroa.10.sroa.8.0 = phi i24 [ undef, %bb.a ], [ %.sroa.16.sroa.10.sroa.8.4, %bb.n ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.0 = phi i8 [ undef, %bb.a ], [ %.sroa.16.sroa.10.sroa.0.4, %bb.n ] ; 2 uses
  %.sroa.27.0 = phi i32 [ undef, %bb.a ], [ %.sroa.27.4, %bb.n ] ; 3 uses
  %.sroa.11.0 = phi i64 [ 0, %bb.a ], [ %.sroa.11.2, %bb.n ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.i, %bb.a ], [ %.sroa.6.2, %bb.n ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.bg, %bb.n ] ; 2 uses
  %i.al = icmp eq ptr %.sroa.6.0, %i.l
  br i1 %i.al, label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.backedge.i
  %.sroa.16.sroa.0.sroa.10.sroa.0.1 = phi i24 [ %.sroa.16.sroa.0.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.0, %bb.b ] ; 3 uses
  %.sroa.16.sroa.0.sroa.0.1 = phi i8 [ %.sroa.16.sroa.0.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.0.0, %bb.b ] ; 4 uses
  %.sroa.16.sroa.10.sroa.8.1 = phi i24 [ %.sroa.454.0.extract.trunc.i, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.8.0, %bb.b ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.1 = phi i8 [ %.sroa.16.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.0.0, %bb.b ] ; 2 uses
  %.sroa.27.1 = phi i32 [ %.sroa.27.2, %.backedge.i ], [ %.sroa.27.0, %bb.b ] ; 2 uses
  %i.am = phi i32 [ %i.bb, %.backedge.i ], [ %.sroa.27.0, %bb.b ] ; 4 uses
  %i.an = phi i64 [ %i.aq, %.backedge.i ], [ %.sroa.11.0, %bb.b ] ; 4 uses
  %i.ao = phi ptr [ %i.ap, %.backedge.i ], [ %.sroa.6.0, %bb.b ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 4 uses
  %i.aq = add i64 %i.an, 1                        ; 5 uses
  %.val7.i.i = load i32, ptr %i.ao, align 4, !noalias !792, !noundef !3 ; 6 uses
  %i.ar = icmp eq i64 %i.aq, %i.k
  br i1 %i.ar, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.as = icmp ugt i64 %i.an, 255
  br i1 %i.as, label %bb.d, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i.i", !prof !9

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 35, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15, !noalias !792
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i.i": ; preds = %bb.c
  %.sroa.4.0.insert.ext.i.i.i = trunc nuw nsw i64 %i.an to i32
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i.i.i, 8
  br label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i"

bb.e:                                             ; preds = %.lr.ph.i
  %i.at = call i32 @_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE(i64 noundef %i.an), !noalias !792
  br label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i"

"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i": ; preds = %bb.e, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i.i"
  %.sroa.01.0.i.i.i = phi i32 [ %i.at, %bb.e ], [ %.sroa.4.0.insert.shift.i.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hbf919e889680f8f2E.exit.i.i.i" ] ; 5 uses
  %i.au = lshr i32 %.sroa.01.0.i.i.i, 8
  %.sroa.454.0.extract.trunc.i = trunc nuw i32 %i.au to i24 ; 6 uses
  %i.av = and i32 %.sroa.01.0.i.i.i, 255
  %.not.i49 = icmp eq i32 %i.av, 2
  br i1 %.not.i49, label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i", label %bb.f

bb.f:                                             ; preds = %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i"
  %.not63.i = icmp eq i8 %.sroa.16.sroa.0.sroa.0.1, 2
  br i1 %.not63.i, label %bb.h, label %bb.g

"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i": ; preds = %.backedge.i, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i", %bb.b
  %.sroa.16.sroa.0.sroa.10.sroa.0.3 = phi i24 [ %.sroa.16.sroa.0.sroa.10.sroa.0.0, %bb.b ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.3 = phi i8 [ %.sroa.16.sroa.0.sroa.0.0, %bb.b ], [ %.sroa.16.sroa.0.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.0.sroa.0.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 2 uses
  %.sroa.16.sroa.10.sroa.8.3 = phi i24 [ %.sroa.16.sroa.10.sroa.8.0, %bb.b ], [ %.sroa.454.0.extract.trunc.i, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.8.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.3 = phi i8 [ %.sroa.16.sroa.10.sroa.0.0, %bb.b ], [ %.sroa.16.sroa.10.sroa.0.2, %.backedge.i ], [ %.sroa.16.sroa.10.sroa.0.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 2 uses
  %.sroa.27.3 = phi i32 [ %.sroa.27.0, %bb.b ], [ %.sroa.27.2, %.backedge.i ], [ %.sroa.27.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ] ; 3 uses
  %.sroa.11.1 = phi i64 [ %.sroa.11.0, %bb.b ], [ %i.aq, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ], [ %i.aq, %.backedge.i ]
  %.sroa.6.1 = phi ptr [ %i.l, %bb.b ], [ %i.l, %.backedge.i ], [ %i.ap, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.i" ]
  %.sroa.16.sroa.0.sroa.10.0.insert.ext75 = zext i24 %.sroa.16.sroa.0.sroa.10.sroa.0.3 to i64
  %.sroa.16.sroa.0.sroa.10.0.insert.shift76 = shl nuw nsw i64 %.sroa.16.sroa.0.sroa.10.0.insert.ext75, 8
  %.sroa.16.sroa.10.sroa.8.0.insert.ext63 = zext i24 %.sroa.16.sroa.10.sroa.8.3 to i64
  %.sroa.16.sroa.10.sroa.0.0.insert.ext59 = zext i8 %.sroa.16.sroa.10.sroa.0.3 to i64
  %i.aw = shl nuw i64 %.sroa.16.sroa.10.sroa.8.0.insert.ext63, 40
  %i.ax = shl nuw nsw i64 %.sroa.16.sroa.10.sroa.0.0.insert.ext59, 32
  %.sroa.16.sroa.10.0.insert.shift56 = or disjoint i64 %i.ax, %i.aw
  %.sroa.16.sroa.0.0.insert.insert54 = or disjoint i64 %.sroa.16.sroa.10.0.insert.shift56, %.sroa.16.sroa.0.sroa.10.0.insert.shift76
  %.not61.i = icmp eq i8 %.sroa.16.sroa.0.sroa.0.3, 2
  %.not62.i = icmp eq i32 %.sroa.27.3, 0
  %or.cond66.i = select i1 %.not61.i, i1 true, i1 %.not62.i
  %i.ay = zext i8 %.sroa.16.sroa.0.sroa.0.3 to i64
  %.sroa.084.0.insert.ext = select i1 %or.cond66.i, i64 2, i64 %i.ay
  %.sroa.084.0.insert.insert = or disjoint i64 %.sroa.16.sroa.0.0.insert.insert54, %.sroa.084.0.insert.ext
  br label %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit"

bb.g:                                             ; preds = %bb.f
  %i.az = icmp ne i32 %i.am, %.val7.i.i
  %i.ba = trunc i32 %.sroa.01.0.i.i.i to i1
  %or.cond.i = or i1 %i.az, %i.ba
  br i1 %or.cond.i, label %bb.i, label %.backedge.i

bb.h:                                             ; preds = %bb.f
  %.sroa.16.sroa.0.sroa.0.0.extract.trunc69 = trunc i32 %.sroa.01.0.i.i.i to i8 ; 2 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.g, %bb.i, %bb.h
  %.sroa.16.sroa.0.sroa.10.sroa.0.2 = phi i24 [ %.sroa.454.0.extract.trunc.i, %bb.h ], [ %.sroa.454.0.extract.trunc.i, %bb.i ], [ %.sroa.16.sroa.0.sroa.10.sroa.0.1, %bb.g ] ; 2 uses
  %.sroa.16.sroa.0.sroa.0.2 = phi i8 [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc69, %bb.h ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %bb.i ], [ %.sroa.16.sroa.0.sroa.0.1, %bb.g ] ; 2 uses
  %.sroa.16.sroa.10.sroa.0.2 = phi i8 [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc69, %bb.h ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %.sroa.27.2 = phi i32 [ %.val7.i.i, %bb.h ], [ %.val7.i.i, %bb.i ], [ %.sroa.27.1, %bb.g ] ; 2 uses
  %i.bb = phi i32 [ %.val7.i.i, %bb.h ], [ %.val7.i.i, %bb.i ], [ %i.am, %bb.g ]
  %i.bc = icmp eq ptr %i.ap, %i.l
  br i1 %i.bc, label %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i", label %.lr.ph.i

bb.i:                                             ; preds = %bb.g
  %.sroa.16.sroa.0.sroa.0.0.extract.trunc = trunc i32 %.sroa.01.0.i.i.i to i8 ; 4 uses
  %.not64.i = icmp eq i32 %i.am, 0
  br i1 %.not64.i, label %.backedge.i, label %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit"

"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit": ; preds = %bb.i
  %.sroa.16.sroa.0.sroa.10.0.insert.ext.le = zext i24 %.sroa.16.sroa.0.sroa.10.sroa.0.1 to i64
  %.sroa.16.sroa.0.sroa.10.0.insert.shift.le = shl nuw nsw i64 %.sroa.16.sroa.0.sroa.10.0.insert.ext.le, 8
  %.sroa.16.sroa.0.sroa.0.0.insert.ext.le = zext i8 %.sroa.16.sroa.0.sroa.0.1 to i64
  %.sroa.16.sroa.0.sroa.0.0.insert.insert.le = or disjoint i64 %.sroa.16.sroa.0.sroa.10.0.insert.shift.le, %.sroa.16.sroa.0.sroa.0.0.insert.ext.le
  %.sroa.16.sroa.10.sroa.8.0.insert.ext.le = zext i24 %.sroa.16.sroa.10.sroa.8.1 to i64
  %.sroa.16.sroa.10.sroa.0.0.insert.ext.le = zext i8 %.sroa.16.sroa.10.sroa.0.1 to i64
  %i.bd = shl nuw i64 %.sroa.16.sroa.10.sroa.8.0.insert.ext.le, 40
  %i.be = shl nuw nsw i64 %.sroa.16.sroa.10.sroa.0.0.insert.ext.le, 32
  %.sroa.16.sroa.10.0.insert.shift.le = or disjoint i64 %i.be, %i.bd
  %.sroa.16.sroa.0.0.insert.insert.le = or disjoint i64 %.sroa.16.sroa.10.0.insert.shift.le, %.sroa.16.sroa.0.sroa.0.0.insert.insert.le
  br label %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit"

"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit": ; preds = %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit", %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i"
  %.sroa.084.0 = phi i64 [ %.sroa.084.0.insert.insert, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.16.sroa.0.0.insert.insert.le, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ] ; 4 uses
  %.sroa.16.sroa.0.sroa.10.sroa.0.4 = phi i24 [ %.sroa.16.sroa.0.sroa.10.sroa.0.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.454.0.extract.trunc.i, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.16.sroa.0.sroa.0.4 = phi i8 [ 2, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.16.sroa.10.sroa.8.4 = phi i24 [ %.sroa.16.sroa.10.sroa.8.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.454.0.extract.trunc.i, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.16.sroa.10.sroa.0.4 = phi i8 [ %.sroa.16.sroa.10.sroa.0.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.sroa.16.sroa.0.sroa.0.0.extract.trunc, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.1089.0 = phi i32 [ %.sroa.27.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %i.am, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.27.4 = phi i32 [ %.sroa.27.3, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %.val7.i.i, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.11.2 = phi i64 [ %.sroa.11.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %i.aq, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %.sroa.6.2 = phi ptr [ %.sroa.6.1, %"_ZN106_$LT$regex_automata..dfa..dense..StateTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h83ca9c6ee674b6e8E.exit.thread.i" ], [ %i.ap, %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit.loopexit" ]
  %i.bf = and i64 %.sroa.084.0, 255
  %.not.i.not.not.not = icmp ne i64 %i.bf, 2      ; 2 uses
  br i1 %.not.i.not.not.not, label %bb.j, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb81af6ad9b316625E.exit.thread"

bb.j:                                             ; preds = %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit"
  %i.bg = add i64 %.sroa.0.0, 1
  %.sroa.084.4.extract.shift = lshr i64 %.sroa.084.0, 32 ; 2 uses
  %.sroa.084.4.extract.trunc = trunc nuw i64 %.sroa.084.4.extract.shift to i32
  %.sroa.084.0.extract.trunc = trunc i64 %.sroa.084.0 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %.sroa.084.0.extract.trunc, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %.sroa.084.4.extract.trunc, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bh = zext i32 %.sroa.1089.0 to i64
  %storemerge = lshr i64 %i.bh, %i.t
  store i64 %storemerge, ptr %i.f, align 8
  %.not33 = icmp eq i64 %.sroa.0.0, 0
  %i.bi = trunc i64 %.sroa.084.0 to i8
  %i.bj = trunc i64 %.sroa.084.4.extract.shift to i8
  br i1 %.not33, label %bb.k, label %.split

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb81af6ad9b316625E.exit.thread": ; preds = %"_ZN112_$LT$regex_automata..dfa..dense..StateSparseTransitionIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h52585d4cd9b63884E.exit", %.loopexit
  ret i1 %.not.i.not.not.not

bb.k:                                             ; preds = %.split._crit_edge, %bb.j
  %i.bk = phi i8 [ %.pre134, %.split._crit_edge ], [ %i.bj, %bb.j ] ; 2 uses
  %i.bl = phi i8 [ %.pre, %.split._crit_edge ], [ %i.bi, %bb.j ]
  %i.bm = icmp eq i8 %i.bl, %i.bk
  br i1 %i.bm, label %bb.l, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43

.split:                                           ; preds = %bb.j
  %i.bn = load ptr, ptr %i.v, align 8, !invariant.load !3, !noalias !793, !nonnull !3
  %i.bo = call noundef zeroext i1 %i.bn(ptr noundef nonnull align 1 %.val37, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @182, i64 noundef 2), !noalias !793, !inline_history !29
  br i1 %i.bo, label %.loopexit, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split
  %.pre = load i8, ptr %i.h, align 4, !range !22
  %.pre134 = load i8, ptr %i.g, align 4, !range !22
  br label %bb.k

bb.l:                                             ; preds = %bb.k
  %i.bp = trunc nuw i8 %i.bk to i1
  br i1 %i.bp, label %.split101, label %bb.m

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43: ; preds = %.split101, %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.424.0..sroa_idx, align 8
  store ptr %i.g, ptr %i.aa, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.428.0..sroa_idx, align 8
  store ptr %i.f, ptr %i.ab, align 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.432.0..sroa_idx, align 8
  store ptr @185, ptr %i.c, align 8
  store i64 3, ptr %i.ac, align 8
  store ptr null, ptr %i.ad, align 8
  store ptr %i.b, ptr %i.ae, align 8
  store i64 3, ptr %i.af, align 8
  %i.bq = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val37, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val38, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.bq, label %.loopexit, label %bb.n

.split101:                                        ; preds = %bb.l
  %i.br = load i16, ptr %i.y, align 2, !noundef !3
  %i.bs = load i16, ptr %i.z, align 2, !noundef !3
  %i.bt = icmp eq i16 %i.br, %i.bs
  br i1 %i.bt, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43

bb.m:                                             ; preds = %bb.l
  %i.bu = load i8, ptr %i.w, align 1, !noundef !3
  %i.bv = load i8, ptr %i.x, align 1, !noundef !3
  %i.bw = icmp eq i8 %i.bu, %i.bv
  br i1 %i.bw, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48: ; preds = %.split101, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  store ptr @"_ZN73_$LT$regex_automata..util..alphabet..Unit$u20$as$u20$core..fmt..Debug$GT$3fmt17h0734a59f82b81a2bE", ptr %.sroa.416.0..sroa_idx, align 8
  store ptr %i.f, ptr %i.ag, align 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.420.0..sroa_idx, align 8
  store ptr @186, ptr %i.e, align 8
  store i64 2, ptr %i.ah, align 8
  store ptr null, ptr %i.ai, align 8
  store ptr %i.d, ptr %i.aj, align 8
  store i64 2, ptr %i.ak, align 8
  %i.bx = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val37, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val38, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.bx, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.b

.loopexit:                                        ; preds = %.split, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit48, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb81af6ad9b316625E.exit.thread"
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$regex_automata..util..start..Start$u20$as$u20$core..fmt..Debug$GT$3fmt17ha89dee872c8a144bE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !26, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN71_$LT$regex_automata..util..start..Start$u20$as$u20$core..fmt..Debug$GT$3fmt17ha89dee872c8a144bE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN71_$LT$regex_automata..util..start..Start$u20$as$u20$core..fmt..Debug$GT$3fmt17ha89dee872c8a144bE.42", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN75_$LT$regex_automata..dfa..dense..BuildError$u20$as$u20$core..fmt..Debug$GT$3fmt17h53be7675f216f3b2E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @194, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @195, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @193)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$regex_automata..dfa..dense..BuildError$u20$as$u20$core..fmt..Display$GT$3fmt17h83625ae712b34767E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = load i64, ptr %0, align 8, !range !28, !noundef !3
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %i.q, i64 -9223372036854775801)
  switch i64 %i.r, label %default.unreachable [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit41
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit46
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit51
    i64 4, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit56
    i64 5, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit61
    i64 6, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit66
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val36 = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %.val35 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %.val36, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !3, !noalias !796, !nonnull !3
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 1 %.val35, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @196, i64 noundef 18), !noalias !796, !inline_history !29
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit41: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7e3eea522b74381aE", ptr %.sroa.419.0..sroa_idx, align 8
  store ptr @198, ptr %i.o, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.n, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 1, ptr %i.aa, align 8
  %.val33 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val34 = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3
  %i.ac = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val33, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val34, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit46: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @199, ptr %i.l, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.415.0..sroa_idx, align 8
  store ptr @201, ptr %i.m, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.l, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 1, ptr %i.ag, align 8
  %.val31 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val32 = load ptr, ptr %i.ah, align 8, !nonnull !3, !noundef !3
  %i.ai = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val31, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val32, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit51: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 1537228672809129300, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.423.0..sroa_idx, align 8
  store ptr @203, ptr %i.j, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.i, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 1, ptr %i.am, align 8
  %.val29 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.an, align 8, !nonnull !3, !noundef !3
  %i.ao = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val30, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit56: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @199, ptr %i.g, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.411.0..sroa_idx, align 8
  store ptr @205, ptr %i.h, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %i.as, align 8
  %.val27 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.at, align 8, !nonnull !3, !noundef !3
  %i.au = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val27, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val28, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit61: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7ebc8c0d9bf6ca48E", ptr %.sroa.47.0..sroa_idx, align 8
  store ptr @208, ptr %i.e, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.d, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %i.az, align 8
  %.val25 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val26 = load ptr, ptr %i.ba, align 8, !nonnull !3, !noundef !3
  %i.bb = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val25, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val26, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit66: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7ebc8c0d9bf6ca48E", ptr %.sroa.43.0..sroa_idx, align 8
  store ptr @210, ptr %i.b, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.bg, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.bh, align 8, !nonnull !3, !noundef !3
  %i.bi = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val24, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit66, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit61, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit56, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit51, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit46, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit41, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.v, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.ac, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit41 ], [ %i.ai, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit46 ], [ %i.ao, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit51 ], [ %i.au, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit56 ], [ %i.bb, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit61 ], [ %i.bi, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit66 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN77_$LT$regex_automata..dfa..dense..DFA$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h61958c5321ead2afE"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 10 uses
  %i.o = alloca [48 x i8], align 8                ; 12 uses
  %i.p = alloca [4 x i8], align 4                 ; 9 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [48 x i8], align 8                ; 8 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 9 uses
  %i.aa = alloca [1 x i8], align 1                ; 9 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [48 x i8], align 8               ; 9 uses
  %i.ad = alloca [8 x i8], align 8                ; 5 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %.val111 = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %.val110 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.val111, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !3, !noalias !828, !nonnull !3
  %i.ai = tail call noundef zeroext i1 %i.ah(ptr noundef nonnull align 1 %.val110, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 12), !noalias !828, !inline_history !29
  br i1 %i.ai, label %bb.s, label %bb.a

bb.a:                                             ; preds = %.split
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ak = tail call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %i.aj), !noalias !829
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !830, !noalias !829, !noundef !3 ; 2 uses
  %i.an = and i64 %i.am, 63                       ; 9 uses
  %i.ao = shl nuw i64 1, %i.an                    ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ak, 1      ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.split190, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %notmask.i.i.i = shl nsw i64 -1, %i.an
  %i.ar = xor i64 %notmask.i.i.i, -1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 375
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i64
  %i.av = add nuw nsw i64 %i.au, 2                ; 2 uses
  %.sroa.8164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ah
  %.sroa.8.0266 = phi i64 [ %i.ap, %.lr.ph ], [ %i.bc, %bb.ah ] ; 2 uses
  %.sroa.13.0265 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %bb.ah ] ; 2 uses
  %i.bc = call i64 @llvm.usub.sat.i64(i64 %.sroa.8.0266, i64 %i.ao)
  %i.bd = add i64 %.sroa.13.0265, 1
  %i.be = shl i64 %.sroa.13.0265, %i.an           ; 2 uses
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  %i.bg = and i64 %i.be, 4294967295               ; 6 uses
  %i.bh = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %i.aj), !noalias !831
  %i.bi = extractvalue { ptr, i64 } %i.bh, 1
  %i.bj = icmp ugt i64 %i.bi, %i.bg
  %i.bk = and i64 %i.bg, %i.ar
  %i.bl = icmp eq i64 %i.bk, 0
  %or.cond = select i1 %i.bj, i1 %i.bl, i1 false, !prof !16
  br i1 %or.cond, label %bb.c, label %"_ZN14regex_automata3dfa5dense24TransitionTable$LT$T$GT$8is_valid17ha3128d540dec2782E.exit.thread.i.i", !prof !16

"_ZN14regex_automata3dfa5dense24TransitionTable$LT$T$GT$8is_valid17ha3128d540dec2782E.exit.thread.i.i": ; preds = %bb.b
  call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @51, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #15, !noalias !831
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.bm = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %i.aj), !noalias !831 ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bm, 1      ; 2 uses
  %i.bo = add nuw nsw i64 %i.av, %i.bg            ; 2 uses
  %.not.i.i = icmp ugt i64 %i.bo, %i.bn
  br i1 %.not.i.i, label %bb.d, label %"_ZN105_$LT$regex_automata..dfa..dense..StateIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e6c50f87f0f52daE.exit", !prof !9

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.bg, i64 noundef %i.bo, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #15, !noalias !831
  unreachable

"_ZN105_$LT$regex_automata..dfa..dense..StateIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e6c50f87f0f52daE.exit": ; preds = %bb.c
  %i.bp = extractvalue { ptr, i64 } %i.bm, 0      ; 2 uses
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %.split190, label %bb.e

bb.e:                                             ; preds = %"_ZN105_$LT$regex_automata..dfa..dense..StateIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e6c50f87f0f52daE.exit"
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.bq, ptr %i.ae, align 8
  store i64 %i.av, ptr %.sroa.8164.0..sroa_idx, align 8
  store i64 %i.am, ptr %.sroa.9165.0..sroa_idx, align 8
  store i32 %i.bf, ptr %.sroa.10.0..sroa_idx, align 8
  %i.br = call noundef zeroext i1 @_ZN14regex_automata3dfa9automaton19fmt_state_indicator17h1dbe017535bda818E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(800) %0, i32 noundef %i.bf)
  br i1 %i.br, label %.loopexit215, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit153

.split190:                                        ; preds = %"_ZN105_$LT$regex_automata..dfa..dense..StateIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e6c50f87f0f52daE.exit", %bb.ah, %bb.a
  %.val109 = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %.val108 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.bs = getelementptr inbounds nuw i8, ptr %.val109, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !3, !noalias !832, !nonnull !3
  %i.bu = call noundef zeroext i1 %i.bt(ptr noundef nonnull align 1 %.val108, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @212, i64 noundef 1), !noalias !832, !inline_history !29
  br i1 %i.bu, label %bb.s, label %bb.f

bb.f:                                             ; preds = %.split190
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bw = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv) ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0      ; 4 uses
  %i.by = extractvalue { ptr, i64 } %i.bw, 1      ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !3 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %.not.i.i117268.not = icmp eq i64 %i.by, 0
  br i1 %.not.i.i117268.not, label %._crit_edge, label %.lr.ph271

.lr.ph271:                                        ; preds = %bb.f
  %i.cb = icmp eq i64 %i.ca, 0
  %i.cc = shl i64 %i.ca, 1                        ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  br i1 %i.cb, label %bb.g, label %.lr.ph271.split

.lr.ph271.split:                                  ; preds = %.lr.ph271, %bb.af
  %.sroa.17173.0270 = phi i64 [ %i.co, %bb.af ], [ 0, %.lr.ph271 ] ; 8 uses
  %i.co = add nuw i64 %.sroa.17173.0270, 1        ; 2 uses
  %i.cp = urem i64 %.sroa.17173.0270, %i.ca       ; 5 uses
  %i.cq = icmp ult i64 %i.cp, 6
  br i1 %i.cq, label %switch.lookup.i.i, label %bb.h, !prof !5

bb.g:                                             ; preds = %.lr.ph271
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h287abf2b12774aa9E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15, !noalias !833
  unreachable

bb.h:                                             ; preds = %.lr.ph271.split
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15, !noalias !833
  unreachable

switch.lookup.i.i:                                ; preds = %.lr.ph271.split
  %switch.idx.cast.i.i = trunc nuw nsw i64 %i.cp to i8 ; 3 uses
  %i.cr = icmp ult i64 %.sroa.17173.0270, %i.ca
  br i1 %i.cr, label %bb.ad, label %bb.i

bb.i:                                             ; preds = %switch.lookup.i.i
  %i.cs = icmp ult i64 %.sroa.17173.0270, %i.cc
  br i1 %i.cs, label %bb.ac, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ct = sub nuw i64 %.sroa.17173.0270, %i.cc
  %i.cu = udiv i64 %i.ct, %i.ca                   ; 3 uses
  %i.cv = icmp ugt i64 %i.cu, 2147483646
  br i1 %i.cv, label %bb.k, label %bb.ae

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !834
  store i64 %i.cu, ptr %i.a, align 8, !noalias !834
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @170, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15, !noalias !834
  unreachable

._crit_edge:                                      ; preds = %bb.af, %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cy = load i64, ptr %i.cx, align 16, !noundef !3 ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, 1
  br i1 %i.cz, label %bb.l, label %.loopexit212

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr @213, ptr %i.t, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.dd, align 8
  %.val106 = load ptr, ptr %1, align 8
  %.val107 = load ptr, ptr %i.af, align 8
  %i.de = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr %.val106, ptr %.val107, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br i1 %i.de, label %bb.s, label %bb.m

.loopexit212:                                     ; preds = %bb.aa, %"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$3len17ha585c9218230233cE.exit", %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.df = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
  %i.dg = extractvalue { ptr, i64 } %i.df, 1
  %i.dh = lshr i64 %i.dg, %i.an
  store i64 %i.dh, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.465.0..sroa_idx, align 8
  store ptr @215, ptr %i.l, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 2, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.j, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 1, ptr %i.dl, align 8
  %.val104 = load ptr, ptr %1, align 8
  %.val105 = load ptr, ptr %i.af, align 8
  %i.dm = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr %.val104, ptr %.val105, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.dm, label %bb.s, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.dn = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cw)
  %i.do = extractvalue { ptr, i64 } %i.dn, 1
  %i.dp = and i64 %i.do, 1                        ; 2 uses
  store i64 %i.dp, ptr %i.c, align 8, !noalias !835
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$3len17ha585c9218230233cE.exit", label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !835
  store ptr null, ptr %i.b, align 8, !noalias !835
  call void @_ZN4core9panicking13assert_failed17he316a72c0dc518c0E(i8 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #15
  unreachable

"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$3len17ha585c9218230233cE.exit": ; preds = %bb.m
  %i.dr = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cw)
  %i.ds = extractvalue { ptr, i64 } %i.dr, 1
  %i.dt = lshr i64 %i.ds, 1                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not278 = icmp eq i64 %i.dt, 0
  br i1 %.not278, label %.loopexit212, label %.lr.ph276

.lr.ph276:                                        ; preds = %"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$3len17ha585c9218230233cE.exit"
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph276, %bb.aa
  %.sroa.052.1275 = phi i64 [ 1, %.lr.ph276 ], [ %.sroa.052.1, %bb.aa ] ; 3 uses
  %.sroa.052.0274 = phi i64 [ 0, %.lr.ph276 ], [ %.sroa.052.1275, %bb.aa ] ; 2 uses
  %i.ej = call fastcc noundef i32 @"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$14match_state_id17h324a25385811ea4cE"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800) %0, i64 noundef %.sroa.052.0274)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ek = load i32, ptr %i.du, align 8, !noundef !3
  %i.el = and i32 %i.ek, 8388608
  %i.em = icmp eq i32 %i.el, 0
  %i.en = zext nneg i32 %i.ej to i64
  %i.eo = select i1 %i.em, i64 %i.an, i64 0
  %storemerge = lshr i64 %i.en, %i.eo
  store i64 %storemerge, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.s, ptr %i.q, align 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.457.0..sroa_idx, align 8
  store ptr @224, ptr %i.r, align 8
  store i64 2, ptr %i.dv, align 8
  store ptr @225, ptr %i.dw, align 8
  store i64 1, ptr %i.dx, align 8
  store ptr %i.q, ptr %i.dy, align 8
  store i64 1, ptr %i.dz, align 8
  %.val96 = load ptr, ptr %1, align 8
  %.val97 = load ptr, ptr %i.af, align 8
  %i.ep = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr %.val96, ptr %.val97, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.ep, label %.loopexit213, label %bb.t

bb.p:                                             ; preds = %.loopexit212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.cy, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.469.0..sroa_idx, align 8
  store ptr @217, ptr %i.i, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 2, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.g, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %i.et, align 8
  %.val102 = load ptr, ptr %1, align 8
  %.val103 = load ptr, ptr %i.af, align 8
  %i.eu = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr %.val102, ptr %.val103, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.eu, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.ev, ptr %i.e, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN70_$LT$regex_automata..dfa..dense..Flags$u20$as$u20$core..fmt..Debug$GT$3fmt17h856d3ebecb1eb9c4E", ptr %.sroa.473.0..sroa_idx, align 8
  store ptr @219, ptr %i.f, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %i.ez, align 8
  %.val100 = load ptr, ptr %1, align 8
  %.val101 = load ptr, ptr %i.af, align 8
  %i.fa = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr %.val100, ptr %.val101, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.fa, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @221, ptr %i.d, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.fe, align 8
  %.val98 = load ptr, ptr %1, align 8
  %.val99 = load ptr, ptr %i.af, align 8
  %i.ff = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr %.val98, ptr %.val99, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.p, %.loopexit212, %.split190, %.split, %bb.r, %bb.l, %.loopexit213, %.loopexit215, %.loopexit214
  %.sroa.0.0 = phi i1 [ %i.ff, %bb.r ], [ true, %.loopexit215 ], [ true, %.split190 ], [ true, %.loopexit214 ], [ true, %.split ], [ true, %.loopexit213 ], [ true, %bb.l ], [ true, %.loopexit212 ], [ true, %bb.p ], [ true, %bb.q ]
  ret i1 %.sroa.0.0

bb.t:                                             ; preds = %bb.o
  %i.fg = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cw) ; 2 uses
  %i.fh = extractvalue { ptr, i64 } %i.fg, 1      ; 2 uses
  %i.fi = shl nuw i64 %.sroa.052.0274, 1          ; 4 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  br i1 %i.fj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fk = extractvalue { ptr, i64 } %i.fg, 0
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fi
  %i.fm = load i32, ptr %i.fl, align 4, !noundef !3
  %i.fn = zext i32 %i.fm to i64                   ; 3 uses
  %i.fo = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cw) ; 2 uses
  %i.fp = extractvalue { ptr, i64 } %i.fo, 1      ; 2 uses
  %i.fq = or disjoint i64 %i.fi, 1                ; 3 uses
  %i.fr = icmp ult i64 %i.fq, %i.fp
  br i1 %i.fr, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.fi, i64 noundef %i.fh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #15
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.fs = extractvalue { ptr, i64 } %i.fo, 0
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fq
  %i.fu = load i32, ptr %i.ft, align 4, !noundef !3 ; 3 uses
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %i.fw = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ea) ; 2 uses
  %i.fx = extractvalue { ptr, i64 } %i.fw, 1      ; 2 uses
  %i.fy = add nuw nsw i64 %i.fv, %i.fn            ; 2 uses
  %.not.i = icmp ugt i64 %i.fy, %i.fx
  br i1 %.not.i, label %bb.y, label %"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$16pattern_id_slice17h4777e4e3c59b9c7fE.exit", !prof !9

bb.x:                                             ; preds = %bb.u
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.fq, i64 noundef %i.fp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #15
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.fn, i64 noundef %i.fy, i64 noundef %i.fx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #15
  unreachable

"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$16pattern_id_slice17h4777e4e3c59b9c7fE.exit": ; preds = %bb.w
  %i.fz = extractvalue { ptr, i64 } %i.fw, 0      ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fz) ]
  %.idx = shl nuw nsw i64 %i.fv, 2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx
  %i.gc = icmp eq i32 %i.fu, 0
  br i1 %i.gc, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d2ca541f349dd5E.exit.thread", label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123.peel

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123.peel: ; preds = %"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$16pattern_id_slice17h4777e4e3c59b9c7fE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.gd = load i32, ptr %i.ga, align 4, !noundef !3
  store i32 %i.gd, ptr %i.p, align 4
  %.val93.peel.pre = load ptr, ptr %i.af, align 8
  %.val92.peel.pre = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  store ptr @"_ZN80_$LT$regex_automata..util..primitives..PatternID$u20$as$u20$core..fmt..Debug$GT$3fmt17hb3ee165d39ae4c17E", ptr %.sroa.461.0..sroa_idx, align 8
  store ptr @226, ptr %i.o, align 8
  store i64 1, ptr %i.eb, align 8
  store ptr null, ptr %i.ec, align 8
  store ptr %i.n, ptr %i.ed, align 8
  store i64 1, ptr %i.ee, align 8
  %i.ge = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val92.peel.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val93.peel.pre, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.ge, label %.loopexit338, label %bb.z

bb.z:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.gf = icmp eq i32 %i.fu, 1
  br i1 %i.gf, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d2ca541f349dd5E.exit.thread", label %.split205.preheader

.split205.preheader:                              ; preds = %bb.z
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  br label %.split205

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d2ca541f349dd5E.exit.thread": ; preds = %bb.ab, %bb.z, %"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$16pattern_id_slice17h4777e4e3c59b9c7fE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @213, ptr %i.m, align 8
  store i64 1, ptr %i.ef, align 8
  store ptr null, ptr %i.eg, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.eh, align 8
  store i64 0, ptr %i.ei, align 8
  %.val94 = load ptr, ptr %1, align 8
  %.val95 = load ptr, ptr %i.af, align 8
  %i.gh = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr %.val94, ptr %.val95, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.gh, label %.loopexit213, label %bb.aa

bb.aa:                                            ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d2ca541f349dd5E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.gi = icmp samesign ult i64 %.sroa.052.1275, %i.dt ; 2 uses
  %i.gj = zext i1 %i.gi to i64
  %.sroa.052.1 = add nuw nsw i64 %.sroa.052.1275, %i.gj
  br i1 %i.gi, label %bb.o, label %.loopexit212

.loopexit213:                                     ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d2ca541f349dd5E.exit.thread", %bb.o, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.s

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123: ; preds = %.split205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  store ptr @"_ZN80_$LT$regex_automata..util..primitives..PatternID$u20$as$u20$core..fmt..Debug$GT$3fmt17hb3ee165d39ae4c17E", ptr %.sroa.461.0..sroa_idx, align 8
  store ptr @226, ptr %i.o, align 8
  store i64 1, ptr %i.eb, align 8
  store ptr null, ptr %i.ec, align 8
  store ptr %i.n, ptr %i.ed, align 8
  store i64 1, ptr %i.ee, align 8
  %.val92 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %.val93 = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %i.gk = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val92, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val93, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.gk, label %.loopexit338, label %bb.ab

.split205:                                        ; preds = %.split205.preheader, %bb.ab
  %.sroa.0179.0272 = phi ptr [ %i.gl, %bb.ab ], [ %i.gg, %.split205.preheader ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0179.0272, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.gm = load i32, ptr %.sroa.0179.0272, align 4, !noundef !3
  store i32 %i.gm, ptr %i.p, align 4
  %.val91 = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %.val90 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.gn = getelementptr inbounds nuw i8, ptr %.val91, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !invariant.load !3, !noalias !836, !nonnull !3
  %i.gp = call noundef zeroext i1 %i.go(ptr noundef nonnull align 1 %.val90, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @182, i64 noundef 2), !noalias !836, !inline_history !29
  br i1 %i.gp, label %.loopexit, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123

.loopexit338:                                     ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123.peel, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.loopexit

bb.ab:                                            ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.gq = icmp eq ptr %i.gl, %i.gb
  br i1 %i.gq, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d2ca541f349dd5E.exit.thread", label %.split205, !llvm.loop !821

.loopexit:                                        ; preds = %.split205, %.loopexit338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.loopexit213

bb.ac:                                            ; preds = %bb.i
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.17173.0270
  %i.gs = load i32, ptr %i.gr, align 4, !noalias !833, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 %switch.idx.cast.i.i, ptr %i.aa, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.gt = load i32, ptr %i.cd, align 8, !noundef !3
  %i.gu = and i32 %i.gt, 8388608
  %i.gv = icmp eq i32 %i.gu, 0
  %i.gw = zext i32 %i.gs to i64
  %i.gx = select i1 %i.gv, i64 %i.an, i64 0
  %storemerge77.jt1 = lshr i64 %i.gw, %i.gx
  store i64 %storemerge77.jt1, ptr %i.z, align 8
  %i.gy = icmp eq i64 %i.cp, 0
  br i1 %i.gy, label %.split207, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit148

bb.ad:                                            ; preds = %switch.lookup.i.i
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.17173.0270
  %i.ha = load i32, ptr %i.gz, align 4, !noalias !833, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 %switch.idx.cast.i.i, ptr %i.aa, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.hb = load i32, ptr %i.cd, align 8, !noundef !3
  %i.hc = and i32 %i.hb, 8388608
  %i.hd = icmp eq i32 %i.hc, 0
  %i.he = zext i32 %i.ha to i64
  %i.hf = select i1 %i.hd, i64 %i.an, i64 0
  %storemerge77.jt0 = lshr i64 %i.he, %i.hf
  store i64 %storemerge77.jt0, ptr %i.z, align 8
  %i.hg = icmp eq i64 %i.cp, 0
  br i1 %i.hg, label %.split206, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit148

bb.ae:                                            ; preds = %bb.j
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.17173.0270
  %i.hi = load i32, ptr %i.hh, align 4, !noalias !833, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 %switch.idx.cast.i.i, ptr %i.aa, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.hj = load i32, ptr %i.cd, align 8, !noundef !3
  %i.hk = and i32 %i.hj, 8388608
  %i.hl = icmp eq i32 %i.hk, 0
  %i.hm = zext i32 %i.hi to i64
  %i.hn = select i1 %i.hl, i64 %i.an, i64 0
  %storemerge77.jt2 = lshr i64 %i.hm, %i.hn
  store i64 %storemerge77.jt2, ptr %i.z, align 8
  %i.ho = icmp eq i64 %i.cp, 0
  br i1 %i.ho, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit143, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit148

.split206:                                        ; preds = %bb.ad
  %.val89 = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %.val88 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.hp = getelementptr inbounds nuw i8, ptr %.val89, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8, !invariant.load !3, !noalias !837, !nonnull !3
  %i.hr = call noundef zeroext i1 %i.hq(ptr noundef nonnull align 1 %.val88, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @227, i64 noundef 24), !noalias !837, !inline_history !29
  br i1 %i.hr, label %.loopexit214, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit148

.split207:                                        ; preds = %bb.ac
  %.val87 = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %.val86 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.hs = getelementptr inbounds nuw i8, ptr %.val87, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !invariant.load !3, !noalias !838, !nonnull !3
  %i.hu = call noundef zeroext i1 %i.ht(ptr noundef nonnull align 1 %.val86, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @228, i64 noundef 22), !noalias !838, !inline_history !29
  br i1 %i.hu, label %.loopexit214, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit148

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit143: ; preds = %bb.ae
  %i.hv = trunc nuw nsw i64 %i.cu to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i32 %i.hv, ptr %i.y, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.y, ptr %i.w, align 8
  store ptr @"_ZN80_$LT$regex_automata..util..primitives..PatternID$u20$as$u20$core..fmt..Debug$GT$3fmt17hb3ee165d39ae4c17E", ptr %.sroa.443.0..sroa_idx, align 8
  store ptr @230, ptr %i.x, align 8
  store i64 2, ptr %i.ce, align 8
  store ptr null, ptr %i.cf, align 8
  store ptr %i.w, ptr %i.cg, align 8
  store i64 1, ptr %i.ch, align 8
  %.val84 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %.val85 = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %i.hw = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val84, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val85, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br i1 %i.hw, label %.loopexit214, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit148

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit148: ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit143, %bb.ac, %bb.ad, %bb.ae, %.split207, %.split206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.aa, ptr %i.u, align 8
  store ptr @"_ZN71_$LT$regex_automata..util..start..Start$u20$as$u20$core..fmt..Debug$GT$3fmt17ha89dee872c8a144bE", ptr %.sroa.447.0..sroa_idx, align 8
  store ptr %i.z, ptr %i.ci, align 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.451.0..sroa_idx, align 8
  store ptr @232, ptr %i.v, align 8
  store i64 3, ptr %i.cj, align 8
  store ptr @233, ptr %i.ck, align 8
  store i64 2, ptr %i.cl, align 8
  store ptr %i.u, ptr %i.cm, align 8
  store i64 2, ptr %i.cn, align 8
  %.val82 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %.val83 = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %i.hx = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val82, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val83, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.hx, label %.loopexit214, label %bb.af

.loopexit214:                                     ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit148, %.split207, %.split206, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.s

bb.af:                                            ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %exitcond.not = icmp eq i64 %i.co, %i.by
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph271.split

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit153: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.hy = load i32, ptr %i.aw, align 8, !noundef !3
  %i.hz = and i32 %i.hy, 8388608
  %i.ia = icmp eq i32 %i.hz, 0
  %i.ib = select i1 %i.ia, i64 %i.an, i64 0
  %storemerge78 = lshr i64 %i.bg, %i.ib
  store i64 %storemerge78, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ad, ptr %i.ab, align 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.435.0..sroa_idx, align 8
  store ptr @235, ptr %i.ac, align 8
  store i64 2, ptr %i.ax, align 8
  store ptr @225, ptr %i.ay, align 8
  store i64 1, ptr %i.az, align 8
  store ptr %i.ab, ptr %i.ba, align 8
  store i64 1, ptr %i.bb, align 8
  %.val80 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %.val81 = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %i.ic = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val80, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val81, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br i1 %i.ic, label %.loopexit216, label %bb.ag

bb.ag:                                            ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit153
  %i.id = call noundef zeroext i1 @"_ZN70_$LT$regex_automata..dfa..dense..State$u20$as$u20$core..fmt..Debug$GT$3fmt17h7aea9b2bb1ba693bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.id, label %.loopexit216, label %.split211

.split211:                                        ; preds = %bb.ag
  %.val79 = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ie = getelementptr inbounds nuw i8, ptr %.val79, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !invariant.load !3, !noalias !839, !nonnull !3
  %i.ig = call noundef zeroext i1 %i.if(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @212, i64 noundef 1), !noalias !839, !inline_history !29
  br i1 %i.ig, label %.loopexit216, label %bb.ah

bb.ah:                                            ; preds = %.split211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.not487 = icmp ugt i64 %.sroa.8.0266, %i.ao
  br i1 %.not487, label %bb.b, label %.split190

.loopexit216:                                     ; preds = %.split211, %bb.ag, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %.loopexit215

.loopexit215:                                     ; preds = %bb.e, %.loopexit216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN78_$LT$regex_automata..dfa..dense..Builder$u20$as$u20$core..default..Default$GT$7default17h76b089ae396ccc87E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([576 x i8]) align 16 captures(none) dereferenceable(576) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !842
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i8 3, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !842
  store i128 0, ptr %i.b, align 16, !noalias !842
  store <8 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 3>, ptr %i.c, align 16, !noalias !842
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 2, ptr %i.d, align 16, !noalias !842
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 2, ptr %i.e, align 16, !noalias !842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !842
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h29560fbd3b199a01E(ptr noalias noundef nonnull sret([448 x i8]) align 8 captures(address) dereferenceable(448) %i.a)
          to label %_ZN14regex_automata3dfa5dense7Builder3new17h5392d71aeda98cc3E.exit unwind label %bb.b, !noalias !842

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E"(ptr noalias noundef align 16 dereferenceable(128) %i.b) #17
          to label %bb.d unwind label %bb.c, !noalias !842

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16, !noalias !842
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f

_ZN14regex_automata3dfa5dense7Builder3new17h5392d71aeda98cc3E.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) %0, ptr noundef nonnull align 16 dereferenceable(128) %i.b, i64 128, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.h, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !842
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN81_$LT$regex_automata..util..wire..DeserializeError$u20$as$u20$core..fmt..Debug$GT$3fmt17hed93aca59d559ef3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @248, i64 noundef 16, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @247)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN83_$LT$regex_automata..util..primitives..StateIDError$u20$as$u20$core..fmt..Debug$GT$3fmt17h2d09deda251ed999E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @250, i64 noundef 12, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @249)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN85_$LT$regex_automata..util..primitives..PatternIDError$u20$as$u20$core..fmt..Debug$GT$3fmt17h8e8e73ec3ac51a44E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @251, i64 noundef 14, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @249)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h287abf2b12774aa9E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN14regex_automata4util8alphabet7ByteSet8contains17h7a515dc7cedb2e12E(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(32), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @_ZN14regex_automata4util8alphabet4Unit3eoi17h7bde68dad5abe20fE(i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @"_ZN14regex_automata3dfa5accel15Accels$LT$A$GT$3len17h0fd9d014e0afa992E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsMut$LT$$u5b$T$u5d$$GT$$GT$6as_mut17h88e25f2bc8c4112bE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking13assert_failed17he316a72c0dc518c0E(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17he2fceee01a09659cE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24), i32 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN14regex_automata3dfa5accel15Accels$LT$A$GT$8validate17h8c4d0ea39af06e04E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN14regex_automata4util4wire20skip_initial_padding17h6b146be384b76cb0E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN14regex_automata4util4wire10read_label17hb052979b6f8e195eE(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN14regex_automata4util4wire21read_endianness_check17h9507496fc020a503E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN14regex_automata4util4wire12read_version17h8ba18a49bfac029cE(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN14regex_automata4util4wire12try_read_u3217h1b4b6a8a58fd11a8E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN14regex_automata3dfa7special7Special10from_bytes17h58dddd2561184366E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN14regex_automata3dfa5accel31Accels$LT$$RF$$u5b$u32$u5d$$GT$20from_bytes_unchecked17he2851e9bc2efe886E"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN14regex_automata4util8alphabet7ByteSet10from_bytes17h336c70f967fde40fE(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 16 captures(address) dereferenceable(64), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN14regex_automata3dfa5start9StartKind10from_bytes17he70055e4a6379155E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN14regex_automata4util5start12StartByteMap10from_bytes17hb5a74623dee965b7E(ptr dead_on_unwind noalias noundef writable sret([264 x i8]) align 8 captures(address) dereferenceable(264), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN14regex_automata4util4wire21try_read_u32_as_usize17h86d196c46fb2b0f1E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN14regex_automata3dfa8remapper8Remapper3new17he69f4ec0a07588c3E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN14regex_automata3dfa8remapper8Remapper5remap17hbf1e147906096b8aE(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef align 16 dereferenceable(800)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN14regex_automata3dfa7special7Special7set_max17h5e74355e16823c83E(ptr noalias noundef align 4 dereferenceable(32)) unnamed_addr #0
end_hunk_0
