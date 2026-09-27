Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_check_fmt-c391ccc03c687c53.nickel_check_fmt.2e6efe50e6e84579-cgu.0?download=true
inline.NumInlined: 568
inline.NumDeleted: 293
begin_hunk_0_@"_ZN4core3ptr78drop_in_place$LT$std..collections..hash..map..HashMap$LT$usize$C$usize$GT$$GT$17h7d21c2023f87c2bdE":bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h10e8aab1da8f2a16E"(ptr nonnull %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17h7d4ffc0456cbfee7E"(ptr noalias noundef align 8 dereferenceable(1400) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #27
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$topiary_core..error..FormatterError$GT$$GT$17ha7e98254ad96ed1cE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  invoke void @"_ZN4core3ptr56drop_in_place$LT$topiary_core..error..FormatterError$GT$17h9705b9fdf73a78adE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 80, i64 noundef 8) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 80, i64 noundef 8) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..boxed..Box$LT$$u5b$tree_sitter..TextPredicateCapture$u5d$$GT$$GT$17he77e65ffc567cb5cE"(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %cond = icmp eq i64 %.8.val, 0
  br i1 %cond, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe35158dd9b9d082E.exit5", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = icmp eq i64 %i.c, %.8.val
  br i1 %i.a, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %.0.val, i64 %.sroa.0.0.i1
  %i.c = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$tree_sitter..TextPredicateCapture$GT$17he50cc043a901b05bE"(ptr noalias noundef align 8 dereferenceable(40) %i.b)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.d = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.e = icmp eq i64 %i.d, %.8.val
  br i1 %i.e, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i", label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %i.c, %.8.val
  br i1 %i.g, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i", label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.d, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %.0.val, i64 %.sroa.0.1.i2
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$tree_sitter..TextPredicateCapture$GT$17he50cc043a901b05bE"(ptr noalias noundef align 8 dereferenceable(40) %i.h) #29
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph3
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i": ; preds = %bb.c, %bb.d
  %i.j = mul nuw nsw i64 %.8.val, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef 8) #27
  resume { ptr, i32 } %i.f

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4": ; preds = %bb.b
  %i.k = mul nuw nsw i64 %.8.val, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.k, i64 noundef 8) #27
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe35158dd9b9d082E.exit5"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfe35158dd9b9d082E.exit5": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr89drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h2a18d9a498748dbbE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !924, !noundef !4
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h92af114d2ec4d5a1E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17he49fb2099627595dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h92af114d2ec4d5a1E.exit"

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h92af114d2ec4d5a1E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h4e43ffac887dbbc0E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06f9172cf2e6b55dE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit.i.i"
  %.sroa.0.09.i.i = phi i64 [ %i.e, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.09.i.i, 1           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !942, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !943
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit.i.i" unwind label %bb.c

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06f9172cf2e6b55dE.exit", label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit8.i.i"
  %.sroa.0.110.i.i = phi i64 [ %i.m, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit8.i.i" ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.m = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !947, !nonnull !4, !noundef !4
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !948
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit8.i.i"

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit8.i.i" unwind label %bb.e

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit8.i.i": ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.m, %.val1
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

.body:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit8.i.i", %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  %i.s = icmp eq i64 %.val4, 0
  br i1 %i.s, label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h60bdc299411e00a5E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.t = shl nuw i64 %.val4, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h60bdc299411e00a5E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06f9172cf2e6b55dE.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  %i.u = icmp eq i64 %.val2, 0
  br i1 %i.u, label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h60bdc299411e00a5E.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06f9172cf2e6b55dE.exit"
  %i.v = shl nuw i64 %.val2, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h60bdc299411e00a5E.exit6"

"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h60bdc299411e00a5E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06f9172cf2e6b55dE.exit", %bb.g
  ret void

"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h60bdc299411e00a5E.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h42c4c4bd04c8abb2E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @35, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17h85ff18b159a1ed1dE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @35, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hc8d04c202ca312f7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @35, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZN4core5error5Error11description17hef63dcb8a4ad0b49E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @35, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h6923cfd5b5b8e1d8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !alias.scope !951, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775803
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 5
  switch i64 %i.e, label %bb.b [
    i64 0, label %"_ZN74_$LT$topiary_core..error..FormatterError$u20$as$u20$core..error..Error$GT$6source17hff6f7203864de0d6E.exit"
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %"_ZN74_$LT$topiary_core..error..FormatterError$u20$as$u20$core..error..Error$GT$6source17hff6f7203864de0d6E.exit"
    i64 4, label %"_ZN74_$LT$topiary_core..error..FormatterError$u20$as$u20$core..error..Error$GT$6source17hff6f7203864de0d6E.exit"
    i64 5, label %bb.e
    i64 6, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %"_ZN74_$LT$topiary_core..error..FormatterError$u20$as$u20$core..error..Error$GT$6source17hff6f7203864de0d6E.exit"

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !951, !align !11, !noundef !4 ; 2 uses
  %.not5.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !951, !nonnull !4, !align !9
  %.sroa.9.1.i = select i1 %.not5.i, ptr undef, ptr %i.j
  br label %"_ZN74_$LT$topiary_core..error..FormatterError$u20$as$u20$core..error..Error$GT$6source17hff6f7203864de0d6E.exit"

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !7, !alias.scope !951, !noundef !4
  %.not4.i = icmp eq i64 %i.l, -9223372036854775808
  %..i = select i1 %.not4.i, ptr null, ptr %i.k
  br label %"_ZN74_$LT$topiary_core..error..FormatterError$u20$as$u20$core..error..Error$GT$6source17hff6f7203864de0d6E.exit"

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !7, !alias.scope !951, !noundef !4
  %.not.i = icmp eq i64 %i.n, -9223372036854775808
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !951, !align !11, !noundef !4 ; 2 uses
  %.not3.i = icmp eq ptr %i.p, null
  br i1 %.not3.i, label %"_ZN74_$LT$topiary_core..error..FormatterError$u20$as$u20$core..error..Error$GT$6source17hff6f7203864de0d6E.exit", label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %"_ZN74_$LT$topiary_core..error..FormatterError$u20$as$u20$core..error..Error$GT$6source17hff6f7203864de0d6E.exit"

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !951, !nonnull !4, !align !9, !noundef !4
  br label %"_ZN74_$LT$topiary_core..error..FormatterError$u20$as$u20$core..error..Error$GT$6source17hff6f7203864de0d6E.exit"

"_ZN74_$LT$topiary_core..error..FormatterError$u20$as$u20$core..error..Error$GT$6source17hff6f7203864de0d6E.exit": ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  %.sroa.9.0.i = phi ptr [ @74, %bb.c ], [ %.sroa.9.1.i, %bb.d ], [ @24, %bb.h ], [ @76, %bb.e ], [ %i.s, %bb.i ], [ undef, %bb.g ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %..i, %bb.e ], [ %i.p, %bb.i ], [ null, %bb.g ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ]
  %i.t = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.u = insertvalue { ptr, ptr } %i.t, ptr %.sroa.9.0.i, 1
  ret { ptr, ptr } %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17he0891acb031410c2E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error6source17he80e66e44502253aE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h13fd00d2e216e2a7E(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h4385aba2de37a5beE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_ZN4core5error5Error7provide17h667b859c4b7636fbE(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h4f1a0ba506d73010E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @36, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h8fc3eddbff86d8c2E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @37, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h9fd26f737a2075ffE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @38, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17hcb32eb90d3dcb23eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @39, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17hc9ba220b3a6d24e8E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17hcea08ebd4502d6ecE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = icmp eq i64 %i.b, %1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.i = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #27
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.f:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %3, align 8, !nonnull !4, !noundef !4
  %i.k = icmp uge i64 %2, %i.d
  tail call void @llvm.assume(i1 %i.k)
  %i.l = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) #27
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.g:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.o = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #27
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit": ; preds = %bb.i, %bb.f, %bb.e
  %.sroa.012.0.i.i.pn = phi ptr [ %i.l, %bb.f ], [ %i.o, %bb.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.p = icmp eq ptr %.sroa.012.0.i.i.pn, null    ; 2 uses
  %i.q = inttoptr i64 %1 to ptr
  %spec.select = select i1 %i.p, ptr %i.q, ptr %.sroa.012.0.i.i.pn
  %spec.select8 = zext i1 %i.p to i64
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"
end_hunk_0
