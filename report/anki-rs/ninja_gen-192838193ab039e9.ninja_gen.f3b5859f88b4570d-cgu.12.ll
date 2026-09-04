Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ninja_gen-192838193ab039e9.ninja_gen.f3b5859f88b4570d-cgu.12?download=true
inline.NumInlined: 203
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h4dd2d25d1a3114c9E":bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h84a155ef255a56e0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..nfa..thompson..backtrack..Cache$GT$17hde2526747e11e4b2E.exit.i" unwind label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17h133bd2d6619ccc9bE.exit.i.i"
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb2002b8b200e2d70E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %common.resume.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

common.resume.i.i:                                ; preds = %bb.g, %.body.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.h, %bb.g ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.i:                                             ; preds = %.body.i.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

"_ZN4core3ptr68drop_in_place$LT$regex_automata..nfa..thompson..backtrack..Cache$GT$17hde2526747e11e4b2E.exit.i": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17h133bd2d6619ccc9bE.exit.i.i"
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb2002b8b200e2d70E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
  br label %"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$regex_automata..nfa..thompson..backtrack..Cache$GT$$GT$17h6d758a6f9972829dE.exit"

"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$regex_automata..nfa..thompson..backtrack..Cache$GT$$GT$17h6d758a6f9972829dE.exit": ; preds = %bb.a, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..nfa..thompson..backtrack..Cache$GT$17hde2526747e11e4b2E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h70d595d3c181921eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h112a73c15386b39aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h9e330d37ff674da2E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h1199a584507112d1E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h1199a584507112d1E.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h9e330d37ff674da2E.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17he923686f43f1805bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea1588f9b0f70c61E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5cf9952c2ccebc1aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h01f6819f4e66b180E.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5cf9952c2ccebc1aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h01f6819f4e66b180E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h912e878a4194e084E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4a2e1762d149f7feE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe2ba1519c8c300cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr92drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h68a9655cac8f2420E.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe2ba1519c8c300cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

"_ZN4core3ptr92drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h68a9655cac8f2420E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h41056fbc4eb2eb23E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f10c33add262e61E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb45b173adcd7cd8E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17hf0c6b02d3385326cE.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb45b173adcd7cd8E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17hf0c6b02d3385326cE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h79ee0b83f8c72493E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !3
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h112a73c15386b39aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17hc20cd55762a6759fE.exit.sink.split" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.h, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8, !range !10, !alias.scope !142, !noundef !3
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  br i1 %i.g, label %"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17hc20cd55762a6759fE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h112a73c15386b39aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17hc20cd55762a6759fE.exit.sink.split" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17hc20cd55762a6759fE.exit.sink.split": ; preds = %bb.f, %bb.b
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17hc20cd55762a6759fE.exit"

"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17hc20cd55762a6759fE.exit": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17hc20cd55762a6759fE.exit.sink.split", %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h02e4b59d2364f41fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha68b6b084203a572E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf8ee30186d3f8757E.exit.i.i"
  %i.c = phi i64 [ %i.aq, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf8ee30186d3f8757E.exit.i.i" ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf8ee30186d3f8757E.exit.i.i" ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !169, !noundef !3 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i": ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !169, !noundef !3
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i", label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i"
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !169, !noundef !3
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i"
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !169, !noundef !3
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i", %bb.b, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i"
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i" ], [ %i.u, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i" ], [ %i.l, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i" ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i" ], [ %i.ab, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i" ], [ %i.q, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i" ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf8ee30186d3f8757E.exit.i.i"
    i32 13, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf8ee30186d3f8757E.exit.i.i"
    i32 12, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf8ee30186d3f8757E.exit.i.i"
    i32 11, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf8ee30186d3f8757E.exit.i.i"
    i32 10, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf8ee30186d3f8757E.exit.i.i"
    i32 9, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf8ee30186d3f8757E.exit.i.i"
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i, 127
  br i1 %i.ar, label %bb.e, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha68b6b084203a572E.exit"

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha68b6b084203a572E.exit" [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i"

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i"

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h6aa907968f5af47cE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !170, !noundef !3
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i"

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h6aa907968f5af47cE, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !170, !noundef !3
  %i.bf = lshr i8 %i.be, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i": ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf8ee30186d3f8757E.exit.i.i", label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha68b6b084203a572E.exit"

"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf8ee30186d3f8757E.exit.i.i": ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i", %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha68b6b084203a572E.exit": ; preds = %bb.e, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i", %bb.d, %bb.a
  %.sroa.4.122 = phi ptr [ %0, %bb.a ], [ %.sroa.4.0, %bb.d ], [ %.sroa.4.0, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i" ], [ %.sroa.4.0, %bb.e ] ; 6 uses
  %.sroa.18.020 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ], [ %i.aq, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i" ], [ %i.aq, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i" ], [ %i.c, %bb.e ] ; 3 uses
  %i.bi = icmp eq ptr %.sroa.4.122, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha68b6b084203a572E.exit", %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha68b6b084203a572E.exit" ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !171, !noundef !3 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit17.i.i.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit17.i.i.i.i.i": ; preds = %.lr.ph.i.i5
  %i.bn = icmp ne ptr %.sroa.4.122, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !171, !noundef !3 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit19.i.i.i.i.i", label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i5
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit19.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit17.i.i.i.i.i"
  %i.bu = icmp ne ptr %.sroa.4.122, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !171, !noundef !3 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit21.i.i.i.i.i", label %bb.l

bb.k:                                             ; preds = %bb.l, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit17.i.i.i.i.i"
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit17.i.i.i.i.i" ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit17.i.i.i.i.i" ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit21.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit19.i.i.i.i.i"
  %i.cf = icmp ne ptr %.sroa.4.122, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !171, !noundef !3
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit21.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit19.i.i.i.i.i"
  %i.co = phi ptr [ %i.cg, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit21.i.i.i.i.i" ], [ %i.bv, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit19.i.i.i.i.i" ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit21.i.i.i.i.i" ], [ %i.by, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17ha608a40e97763c7dE.exit19.i.i.i.i.i" ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i, 127
  br i1 %i.cv, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i7"

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i7"

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h6aa907968f5af47cE, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !172, !noundef !3
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i7"

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h6aa907968f5af47cE, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !172, !noundef !3
  %i.dj = lshr i8 %i.di, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i7"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i7": ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i8 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i8 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i7", %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.122, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i5

bb.u:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h25a0835d8413432eE.exit.i.i.i7", %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.122 to i64
  %i.do = sub i64 %.sroa.18.020, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf8ee30186d3f8757E.exit.i.i", %bb.t, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha68b6b084203a572E.exit", %bb.u
  %.sroa.0.043 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha68b6b084203a572E.exit" ], [ %.sroa.0.0, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf8ee30186d3f8757E.exit.i.i" ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.020, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17ha68b6b084203a572E.exit" ], [ %.sroa.18.020, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17hf8ee30186d3f8757E.exit.i.i" ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.043
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.043
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h1b9f77b2b438d49fE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = add i64 %5, -1                           ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.c = add i64 %i.b, %.promoted                 ; 2 uses
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = load i64, ptr %1, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %5, %i.j
  %.promoted35 = load i64, ptr %i.h, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 %3, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi i64 [ %.promoted35, %.lr.ph ], [ %i.w, %bb.f ] ; 5 uses
  %i.m = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.f ]
  %i.n = phi i64 [ %.promoted, %.lr.ph ], [ %i.x, %bb.f ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noundef !3
  %i.q = and i8 %i.p, 63
  %i.r = zext nneg i8 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, %i.f
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.j, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.v = add i64 %i.n, %5                         ; 3 uses
  store i64 %i.v, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.g)
  %.sroa.01.0 = select i1 %6, i64 %i.g, i64 %.sroa.0.0.i ; 4 uses
  %umax49 = tail call i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %5)
  %exitcond.not86.not = icmp ult i64 %.sroa.01.0, %5
  br i1 %exitcond.not86.not, label %.lr.ph89, label %._crit_edge90

.sink.split:                                      ; preds = %bb.d, %bb.r, %bb.o
  %.sink = phi i64 [ %i.k, %bb.o ], [ 0, %bb.r ], [ 0, %bb.d ] ; 2 uses
  %.ph71 = phi i64 [ %i.aq, %bb.o ], [ %i.ay, %bb.r ], [ %i.v, %bb.d ]
  store i64 %.sink, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.r, %bb.o, %bb.d
  %i.w = phi i64 [ %i.l, %bb.r ], [ %i.l, %bb.d ], [ %i.l, %bb.o ], [ %.sink, %.sink.split ]
  %i.x = phi i64 [ %i.ay, %bb.r ], [ %i.v, %bb.d ], [ %i.aq, %bb.o ], [ %.ph71, %.sink.split ] ; 2 uses
  %i.y = add i64 %i.b, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, %3
  br i1 %i.z, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.p
  %i.aa = add i64 %.sroa.02.087, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %umax49
  br i1 %exitcond.not, label %._crit_edge90, label %.lr.ph89

._crit_edge90:                                    ; preds = %bb.g, %bb.e
  %.sroa.05.0 = select i1 %6, i64 0, i64 %i.l     ; 2 uses
  %i.ab = icmp ult i64 %.sroa.05.0, %i.g
  br i1 %i.ab, label %.lr.ph93, label %._crit_edge94

.lr.ph89:                                         ; preds = %bb.e, %bb.g
  %.sroa.02.087 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.01.0, %bb.e ] ; 4 uses
  %i.ac = add i64 %.sroa.02.087, %i.n             ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %3
  br i1 %i.ad, label %bb.p, label %bb.q

bb.h:                                             ; preds = %bb.m
  %i.ae = icmp ult i64 %.sroa.05.0, %i.ag
  br i1 %i.ae, label %.lr.ph93, label %._crit_edge94

._crit_edge94:                                    ; preds = %._crit_edge90, %bb.h
  %i.af = add i64 %i.n, %5                        ; 2 uses
  store i64 %i.af, ptr %i.a, align 8
  br i1 %6, label %bb.j, label %bb.i

.lr.ph93:                                         ; preds = %._crit_edge90, %bb.h
  %.sroa.2.091 = phi i64 [ %i.ag, %bb.h ], [ %i.g, %._crit_edge90 ]
  %i.ag = add i64 %.sroa.2.091, -1                ; 6 uses
  %i.ah = icmp ult i64 %i.ag, %5
  br i1 %i.ah, label %bb.k, label %bb.l

bb.i:                                             ; preds = %._crit_edge94
  store i64 0, ptr %i.h, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge94
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.ai, align 8, !alias.scope !175
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.aj, align 8, !alias.scope !175
  br label %bb.c

bb.k:                                             ; preds = %.lr.ph93
  %i.ak = add i64 %i.ag, %i.n                     ; 3 uses
  %i.al = icmp ult i64 %i.ak, %3
  br i1 %i.al, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph93
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ag, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.ag
  %i.an = load i8, ptr %i.am, align 1, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !3
  %.not = icmp eq i8 %i.an, %i.ap
  br i1 %.not, label %bb.h, label %bb.o

bb.n:                                             ; preds = %bb.k
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ak, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #19
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aq = add i64 %i.j, %i.n                      ; 3 uses
  store i64 %i.aq, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.p:                                             ; preds = %.lr.ph89
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.02.087
  %i.as = load i8, ptr %i.ar, align 1, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.au = load i8, ptr %i.at, align 1, !noundef !3
  %.not21 = icmp eq i8 %i.as, %i.au
  br i1 %.not21, label %bb.g, label %bb.r

bb.q:                                             ; preds = %.lr.ph89
  %i.av = add i64 %.sroa.01.0, %i.n
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.av)
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.aw = add i64 %i.n, 1
  %i.ax = add i64 %i.aw, %.sroa.02.087
  %i.ay = sub i64 %i.ax, %i.g                     ; 3 uses
  store i64 %i.ay, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator4fold17h3c0058093b33f845E(ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(128) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !7, !alias.scope !197, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h074ddb235be1007eE.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.0.017 = phi ptr [ null, %.lr.ph ], [ %i.df, %bb.y ] ; 2 uses
  %.sroa.6.016 = phi i64 [ undef, %.lr.ph ], [ %i.de, %bb.y ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !200, !nonnull !3, !align !12, !noundef !3 ; 8 uses
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !200, !noundef !3 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.r = load i64, ptr %0, align 8, !range !6, !alias.scope !203, !noalias !201, !noundef !3
  %i.s = trunc nuw i64 %i.r to i1
end_hunk_0
