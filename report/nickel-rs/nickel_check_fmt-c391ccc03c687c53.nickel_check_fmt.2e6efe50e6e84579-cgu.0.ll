Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_check_fmt-c391ccc03c687c53.nickel_check_fmt.2e6efe50e6e84579-cgu.0?download=true
inline.NumInlined: 568
inline.NumDeleted: 293
begin_hunk_0_@"_ZN4core3ptr124drop_in_place$LT$alloc..boxed..Box$LT$$u5b$alloc..boxed..Box$LT$$u5b$tree_sitter..TextPredicateCapture$u5d$$GT$$u5d$$GT$$GT$17h5b07cf76ef495c3cE":bb.a
  %i.w = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.w, i64 noundef 8) #27
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3867b6ac0cec2f51E.exit5"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3867b6ac0cec2f51E.exit5": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4"
  ret void

._crit_edge:                                      ; preds = %bb.f, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"
  %i.x = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.x, i64 noundef 8) #27
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr126drop_in_place$LT$core..iter..adapters..skip..Skip$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h2c77eb8f8e9c6ab5E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !443, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load ptr, ptr %i.c, align 8, !alias.scope !443, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.h = icmp eq ptr %.val2.i.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i"
  %.sroa.0.011.i.i.i = phi i64 [ %i.j, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.j = add nuw i64 %.sroa.0.011.i.i.i, 1        ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !444, !noalias !443 ; 2 uses
  %i.k = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.val9.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !444, !noalias !443, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !445
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i
  %i.m = icmp eq i64 %i.j, %i.g
  br i1 %i.m, label %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i", label %.lr.ph.i.i.i

"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hc0ff4d37b5fb4176E.exit.i.i.i", %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !443, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17he208b359abb1e5cfE.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i"
  %i.q = load ptr, ptr %0, align 8, !alias.scope !443, !nonnull !4, !noundef !4
  %i.r = mul nuw i64 %i.o, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !443
  br label %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17he208b359abb1e5cfE.exit"

"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17he208b359abb1e5cfE.exit": ; preds = %"_ZN4core3ptr57drop_in_place$LT$$u5b$std..ffi..os_str..OsString$u5d$$GT$17hb99372585556d1d9E.exit.i.i", %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..boxed..Box$LT$$u5b$alloc..boxed..Box$LT$$u5b$$LP$tree_sitter..QueryProperty$C$bool$RP$$u5d$$GT$$u5d$$GT$$GT$17h6bdc74b6ffc9a22fE"(ptr %.0.val, i64 %.8.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h99a791f2491dac98E.exit5", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %"_ZN4core3ptr97drop_in_place$LT$alloc..boxed..Box$LT$$u5b$$LP$tree_sitter..QueryProperty$C$bool$RP$$u5d$$GT$$GT$17h3fb0732b2644e242E.exit.i"
  %.sroa.0.010.i = phi i64 [ %i.c, %"_ZN4core3ptr97drop_in_place$LT$alloc..boxed..Box$LT$$u5b$$LP$tree_sitter..QueryProperty$C$bool$RP$$u5d$$GT$$GT$17h3fb0732b2644e242E.exit.i" ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.010.i ; 2 uses
  %i.c = add nuw i64 %.sroa.0.010.i, 1            ; 2 uses
  %.val8.i = load ptr, ptr %i.b, align 8, !alias.scope !454, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9.i = load i64, ptr %i.d, align 8, !alias.scope !454, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.e = icmp eq i64 %.val9.i, 0
  br i1 %i.e, label %"_ZN4core3ptr97drop_in_place$LT$alloc..boxed..Box$LT$$u5b$$LP$tree_sitter..QueryProperty$C$bool$RP$$u5d$$GT$$GT$17h3fb0732b2644e242E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %"_ZN4core3ptr62drop_in_place$LT$$LP$tree_sitter..QueryProperty$C$bool$RP$$GT$17h52e97ddf6aef9125E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.g, %"_ZN4core3ptr62drop_in_place$LT$$LP$tree_sitter..QueryProperty$C$bool$RP$$GT$17h52e97ddf6aef9125E.exit.i.i.i" ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %.val8.i, i64 %.sroa.0.07.i.i.i ; 4 uses
  %i.g = add nuw i64 %.sroa.0.07.i.i.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !458, !noalias !454, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17hecc0b01281da1628E.exit.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !458, !noalias !454, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #27, !noalias !459
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17hecc0b01281da1628E.exit.i.i.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17hecc0b01281da1628E.exit.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val2.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !458, !noalias !454, !align !11, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.val3.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !458, !noalias !454 ; 2 uses
  %i.m = icmp eq ptr %.val2.i.i.i.i.i, null
  %i.n = icmp eq i64 %.val3.i.i.i.i.i, 0
  %or.cond.i6.i.i.i.i.i = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i6.i.i.i.i.i, label %"_ZN4core3ptr62drop_in_place$LT$$LP$tree_sitter..QueryProperty$C$bool$RP$$GT$17h52e97ddf6aef9125E.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i.i.i.i.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17hecc0b01281da1628E.exit.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i, i64 noundef %.val3.i.i.i.i.i, i64 noundef 1) #27, !noalias !459
  br label %"_ZN4core3ptr62drop_in_place$LT$$LP$tree_sitter..QueryProperty$C$bool$RP$$GT$17h52e97ddf6aef9125E.exit.i.i.i"

"_ZN4core3ptr62drop_in_place$LT$$LP$tree_sitter..QueryProperty$C$bool$RP$$GT$17h52e97ddf6aef9125E.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7.i.i.i.i.i", %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17hecc0b01281da1628E.exit.i.i.i.i.i"
  %i.o = icmp eq i64 %i.g, %.val9.i
  br i1 %i.o, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i", label %.lr.ph.i.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %"_ZN4core3ptr62drop_in_place$LT$$LP$tree_sitter..QueryProperty$C$bool$RP$$GT$17h52e97ddf6aef9125E.exit.i.i.i"
  %i.p = mul nuw nsw i64 %.val9.i, 56
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.p, i64 noundef 8) #27, !noalias !454
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc..boxed..Box$LT$$u5b$$LP$tree_sitter..QueryProperty$C$bool$RP$$u5d$$GT$$GT$17h3fb0732b2644e242E.exit.i"

"_ZN4core3ptr97drop_in_place$LT$alloc..boxed..Box$LT$$u5b$$LP$tree_sitter..QueryProperty$C$bool$RP$$u5d$$GT$$GT$17h3fb0732b2644e242E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i", %.lr.ph.i
  %i.q = icmp eq i64 %i.c, %.8.val
  br i1 %i.q, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4", label %.lr.ph.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc..boxed..Box$LT$$u5b$$LP$tree_sitter..QueryProperty$C$bool$RP$$u5d$$GT$$GT$17h3fb0732b2644e242E.exit.i"
  %i.r = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.r, i64 noundef 8) #27
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h99a791f2491dac98E.exit5"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h99a791f2491dac98E.exit5": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hd4cb01050316884eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !486, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core3ptr174drop_in_place$LT$hashbrown..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$C$std..hash..random..RandomState$GT$$GT$17h6f37d9aa7ab709f7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !488, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc0e202047e171a25E.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !488, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !489
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i", %bb.c
  %.sroa.06.017.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i.i.i.i, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h936b89698a6b8f4eE.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i, %bb.d ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !490
  %i.m = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h936b89698a6b8f4eE.exit.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h936b89698a6b8f4eE.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.06.1.i.i.i.i.i, i64 %i.t
  %i.v = add i64 %.sroa.108.014.i.i.i.i.i, -1     ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !495, !noalias !488, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !496
  %i.y = icmp eq i64 %1, 1
  br i1 %i.y, label %bb.e, label %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h936b89698a6b8f4eE.exit.i.i.i.i.i"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w), !noalias !488
  br label %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i"

"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h936b89698a6b8f4eE.exit.i.i.i.i.i"
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc0e202047e171a25E.exit.i.i.i.i, label %bb.d

_ZN9hashbrown3raw13RawTableInner13drop_elements17hc0e202047e171a25E.exit.i.i.i.i: ; preds = %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i", %bb.b
  %i.aa = mul i64 %i.b, 24
  %i.ab = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 32                       ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %"_ZN4core3ptr174drop_in_place$LT$hashbrown..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$C$std..hash..random..RandomState$GT$$GT$17h6f37d9aa7ab709f7E.exit", label %bb.f

bb.f:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc0e202047e171a25E.exit.i.i.i.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !486, !nonnull !4, !noundef !4
  %i.ak = sub i64 -32, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !noalias !486
  br label %"_ZN4core3ptr174drop_in_place$LT$hashbrown..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$C$std..hash..random..RandomState$GT$$GT$17h6f37d9aa7ab709f7E.exit"

"_ZN4core3ptr174drop_in_place$LT$hashbrown..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$C$std..hash..random..RandomState$GT$$GT$17h6f37d9aa7ab709f7E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc0e202047e171a25E.exit.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr194drop_in_place$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$17h874e926b40d69492E"(ptr noalias nofree noundef nonnull readonly align 64 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 16, !alias.scope !508, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !508, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h20523f31a38ea402E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h10e8aab1da8f2a16E.exit.i.i.i.i.i"
  %.sroa.0.08.i.i.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h10e8aab1da8f2a16E.exit.i.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.08.i.i.i.i.i
  %i.f = add nuw i64 %.sroa.0.08.i.i.i.i.i, 1     ; 4 uses
  %.val7.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !509, !noalias !508, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17h7d4ffc0456cbfee7E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %.val7.i.i.i.i.i)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h10e8aab1da8f2a16E.exit.i.i.i.i.i" unwind label %.body.i.i.i.i.i, !noalias !510

.body.i.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #27, !noalias !510
  %i.h = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.h, label %.body.i.i.i, label %.lr.ph

"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h10e8aab1da8f2a16E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #27, !noalias !510
  %i.i = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h20523f31a38ea402E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.j = add i64 %.sroa.0.1.i.i.i.i.i9, 1         ; 2 uses
  %i.k = icmp eq i64 %i.j, %.val1.i.i.i
  br i1 %i.k, label %.body.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i.i.i, %bb.b
  %.sroa.0.1.i.i.i.i.i9 = phi i64 [ %i.j, %bb.b ], [ %i.f, %.body.i.i.i.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i9
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !509, !noalias !508, !nonnull !4, !noundef !4
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h10e8aab1da8f2a16E"(ptr %.val.i.i.i.i.i) #29
          to label %bb.b unwind label %bb.c, !noalias !510

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30, !noalias !510
  unreachable

.body.i.i.i:                                      ; preds = %bb.b, %.body.i.i.i.i.i
  %.val4.i.i.i = load i64, ptr %i.a, align 8, !range !6, !alias.scope !508, !noundef !4 ; 2 uses
  %i.n = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.n, label %"_ZN4core3ptr110drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$17he4c1f8e1406914e5E.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %.body.i.i.i
  %i.o = shl nuw i64 %.val4.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !508
  br label %"_ZN4core3ptr110drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$17he4c1f8e1406914e5E.exit.i.i.i"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h20523f31a38ea402E.exit.i.i.i": ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h10e8aab1da8f2a16E.exit.i.i.i.i.i", %bb.a
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !range !6, !alias.scope !508, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.p, label %"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h960c3533399cdd2bE.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h20523f31a38ea402E.exit.i.i.i"
  %i.q = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !508
  br label %"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h960c3533399cdd2bE.exit"

"_ZN4core3ptr110drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$17he4c1f8e1406914e5E.exit.i.i.i": ; preds = %bb.d, %.body.i.i.i
  resume { ptr, i32 } %i.g

"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h960c3533399cdd2bE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h20523f31a38ea402E.exit.i.i.i", %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr217drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h38bf5ccd9b0c29c5E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb1495a26fe8cadeeE.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb1495a26fe8cadeeE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add i64 %.sroa.0.0.i.i7, 1               ; 4 uses
  invoke fastcc void @"_ZN4core3ptr194drop_in_place$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$17h874e926b40d69492E"(ptr noalias noundef readonly align 64 dereferenceable(64) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr194drop_in_place$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$17h874e926b40d69492E"(ptr noalias noundef readonly align 64 dereferenceable(64) %i.k) #29
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30, !noalias !513
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h96712456e104b4efE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = shl nuw i64 %.val4, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 64) #27
  br label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h96712456e104b4efE.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb1495a26fe8cadeeE.exit": ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h96712456e104b4efE.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb1495a26fe8cadeeE.exit"
  %i.p = shl nuw i64 %.val2, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 64) #27
  br label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h96712456e104b4efE.exit6"

"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h96712456e104b4efE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb1495a26fe8cadeeE.exit", %bb.g
  ret void

"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h96712456e104b4efE.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr361drop_in_place$LT$regex_automata..util..pool..Pool$LT$regex_automata..meta..regex..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_automata..meta..regex..Cache$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..marker..Sync$u2b$core..marker..Send$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h7f07daaa4a983352E"(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !524 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !524, !nonnull !4, !align !9, !noundef !4 ; 5 uses
  %i.c = load ptr, ptr %.val2.i.i, align 8, !invariant.load !4, !noalias !524 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
end_hunk_0
begin_hunk_1_@"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17he49fb2099627595dE":bb.a
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h1a943a160a846040E.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #27
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h1a943a160a846040E.exit.i.i.i"

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %bb.g, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #27
  br label %bb.g

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #27
  resume { ptr, i32 } %i.m

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h1a943a160a846040E.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #27
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hbf757ae7d0e26dd4E.exit"

"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hbf757ae7d0e26dd4E.exit": ; preds = %bb.a, %bb.a, %bb.b, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h1a943a160a846040E.exit.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr53drop_in_place$LT$topiary_core..language..Language$GT$17h5c34b3d68f864dd9E"(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !585 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !585, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !585
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit": ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$topiary_core..tree_sitter..TopiaryQuery$GT$17hcb97eeba089fe6d9E"(ptr noalias noundef align 8 dereferenceable(128) %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit"
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @"_ZN63_$LT$tree_sitter..Language$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2c577a97e47498dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr75drop_in_place$LT$topiary_tree_sitter_facade..language..native..Language$GT$17h33ae73da7b0fad82E.exit" unwind label %bb.j

bb.d:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @"_ZN63_$LT$tree_sitter..Language$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2c577a97e47498dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr75drop_in_place$LT$topiary_tree_sitter_facade..language..native..Language$GT$17h33ae73da7b0fad82E.exit4" unwind label %bb.g

"_ZN4core3ptr75drop_in_place$LT$topiary_tree_sitter_facade..language..native..Language$GT$17h33ae73da7b0fad82E.exit": ; preds = %bb.c, %bb.g
  %.pn2 = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.h = load i64, ptr %i.g, align 8, !range !7, !alias.scope !586, !noundef !4 ; 3 uses
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h9e81eec57e302aadE.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$topiary_tree_sitter_facade..language..native..Language$GT$17h33ae73da7b0fad82E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h9e81eec57e302aadE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !588, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !588
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h9e81eec57e302aadE.exit"

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr75drop_in_place$LT$topiary_tree_sitter_facade..language..native..Language$GT$17h33ae73da7b0fad82E.exit"

"_ZN4core3ptr75drop_in_place$LT$topiary_tree_sitter_facade..language..native..Language$GT$17h33ae73da7b0fad82E.exit4": ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.n = load i64, ptr %i.m, align 8, !range !7, !alias.scope !589, !noundef !4 ; 3 uses
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.o, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h9e81eec57e302aadE.exit6", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$topiary_tree_sitter_facade..language..native..Language$GT$17h33ae73da7b0fad82E.exit4"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h9e81eec57e302aadE.exit6", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val1.i.i5 = load ptr, ptr %i.q, align 8, !alias.scope !591, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i5, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !591
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h9e81eec57e302aadE.exit6"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h9e81eec57e302aadE.exit6": ; preds = %"_ZN4core3ptr75drop_in_place$LT$topiary_tree_sitter_facade..language..native..Language$GT$17h33ae73da7b0fad82E.exit4", %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h9e81eec57e302aadE.exit": ; preds = %bb.f, %bb.e, %"_ZN4core3ptr75drop_in_place$LT$topiary_tree_sitter_facade..language..native..Language$GT$17h33ae73da7b0fad82E.exit"
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr54drop_in_place$LT$tree_sitter..TextPredicateCapture$GT$17he50cc043a901b05bE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !610, !noundef !4
  switch i8 %i.a, label %default.unreachable4 [
    i8 0, label %bb.c
    i8 1, label %"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$$u5b$alloc..boxed..Box$LT$str$GT$$u5d$$GT$$GT$17heec28a5cc8612ab6E.exit"
    i8 2, label %bb.d
    i8 3, label %bb.b
  ]

default.unreachable4:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.d = icmp eq i64 %.val3, 0
  br i1 %i.d, label %"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$$u5b$alloc..boxed..Box$LT$str$GT$$u5d$$GT$$GT$17heec28a5cc8612ab6E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17hecc0b01281da1628E.exit.i.i"
  %.sroa.0.012.i.i = phi i64 [ %i.f, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17hecc0b01281da1628E.exit.i.i" ], [ 0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %.val2, i64 %.sroa.0.012.i.i ; 2 uses
  %i.f = add nuw i64 %.sroa.0.012.i.i, 1          ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 8
  %.val9.i.i = load i64, ptr %i.g, align 8, !alias.scope !611, !noundef !4 ; 2 uses
  %i.h = icmp eq i64 %.val9.i.i, 0
  br i1 %i.h, label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17hecc0b01281da1628E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %.lr.ph.i.i
  %.val8.i.i = load ptr, ptr %i.e, align 8, !alias.scope !611, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %.val9.i.i, i64 noundef 1) #27, !noalias !611
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17hecc0b01281da1628E.exit.i.i"

"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17hecc0b01281da1628E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %.lr.ph.i.i
  %i.i = icmp eq i64 %i.f, %.val3
  br i1 %i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", label %.lr.ph.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17hecc0b01281da1628E.exit.i.i"
  %i.j = shl nuw nsw i64 %.val3, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.j, i64 noundef 8) #27
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$$u5b$alloc..boxed..Box$LT$str$GT$$u5d$$GT$$GT$17heec28a5cc8612ab6E.exit"

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.l = icmp eq i64 %.val1, 0
  br i1 %i.l, label %"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$$u5b$alloc..boxed..Box$LT$str$GT$$u5d$$GT$$GT$17heec28a5cc8612ab6E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val1, i64 noundef 1) #27
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$$u5b$alloc..boxed..Box$LT$str$GT$$u5d$$GT$$GT$17heec28a5cc8612ab6E.exit"

"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$$u5b$alloc..boxed..Box$LT$str$GT$$u5d$$GT$$GT$17heec28a5cc8612ab6E.exit": ; preds = %bb.j, %"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Regex$GT$17heb42767dd70d6e57E.exit.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !616, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !616
  %i.p = icmp eq i64 %1, 1
  br i1 %i.p, label %bb.e, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h495fcd0c27455c4cE.exit.i.i"

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h184672a2c4e08df5E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h495fcd0c27455c4cE.exit.i.i" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.r, align 8, !alias.scope !617, !nonnull !4, !noundef !4
  invoke fastcc void @"_ZN4core3ptr361drop_in_place$LT$regex_automata..util..pool..Pool$LT$regex_automata..meta..regex..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_automata..meta..regex..Cache$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..marker..Sync$u2b$core..marker..Send$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h7f07daaa4a983352E"(ptr nonnull %.val1.i.i) #29
          to label %.body.i unwind label %bb.g

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h495fcd0c27455c4cE.exit.i.i": ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.s, align 8, !alias.scope !617, !nonnull !4, !noundef !4
  invoke fastcc void @"_ZN4core3ptr361drop_in_place$LT$regex_automata..util..pool..Pool$LT$regex_automata..meta..regex..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_automata..meta..regex..Cache$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..marker..Sync$u2b$core..marker..Send$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h7f07daaa4a983352E"(ptr nonnull %.val.i.i)
          to label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Regex$GT$17heb42767dd70d6e57E.exit.i" unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

bb.h:                                             ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h495fcd0c27455c4cE.exit.i.i"
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.q, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !620, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !621
  %i.x = icmp eq i64 %2, 1
  br i1 %i.x, label %bb.i, label %"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$str$GT$$GT$17h30e344febd979501E.exit.i"

bb.i:                                             ; preds = %.body.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h7afa1a5d914a33daE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$str$GT$$GT$17h30e344febd979501E.exit.i" unwind label %bb.k

"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Regex$GT$17heb42767dd70d6e57E.exit.i": ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h495fcd0c27455c4cE.exit.i.i"
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !624, !nonnull !4, !noundef !4
  %3 = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !625
  %i.aa = icmp eq i64 %3, 1
  br i1 %i.aa, label %bb.j, label %"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$$u5b$alloc..boxed..Box$LT$str$GT$$u5d$$GT$$GT$17heec28a5cc8612ab6E.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Regex$GT$17heb42767dd70d6e57E.exit.i"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h7afa1a5d914a33daE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$$u5b$alloc..boxed..Box$LT$str$GT$$u5d$$GT$$GT$17heec28a5cc8612ab6E.exit"

bb.k:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$str$GT$$GT$17h30e344febd979501E.exit.i": ; preds = %bb.i, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17hebc6afef250902d1E"(ptr noalias noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val19 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = icmp eq i64 %.val19, 0
  br i1 %i.b, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h633e4169962dc3d2E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val20 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = shl nuw i64 %.val19, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 4) #27
  br label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h633e4169962dc3d2E.exit"

"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h633e4169962dc3d2E.exit": ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val15 = load i64, ptr %i.e, align 8           ; 2 uses
  %i.f = icmp eq i64 %.val15, 0
  br i1 %i.f, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h633e4169962dc3d2E.exit26", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h633e4169962dc3d2E.exit"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val16 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.h = shl nuw i64 %.val15, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #27
  br label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h633e4169962dc3d2E.exit26"

"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h633e4169962dc3d2E.exit26": ; preds = %bb.c, %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h633e4169962dc3d2E.exit"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h4e43ffac887dbbc0E"(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h633e4169962dc3d2E.exit26"
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hd4cb01050316884eE"(ptr noalias noundef align 8 dereferenceable(48) %i.k) #29
          to label %bb.k unwind label %bb.y

bb.e:                                             ; preds = %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h633e4169962dc3d2E.exit26"
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !677, !noundef !4 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hd4cb01050316884eE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !679, !noundef !4 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc0e202047e171a25E.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.l, align 8, !alias.scope !679, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.s, align 16, !noalias !680
  %i.t = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = bitcast <16 x i1> %i.t to i16
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i.i", %bb.g
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.s, %bb.g ], [ %.sroa.06.1.i.i.i.i.i.i, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %.sroa.6.1.i.i.i.i.i.i, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.v, %bb.g ], [ %i.ae, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.q, %bb.g ], [ %i.ah, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h936b89698a6b8f4eE.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %i.w = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.x = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.h ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.w, align 16, !noalias !681
  %i.y = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -384 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.y to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h936b89698a6b8f4eE.exit.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h936b89698a6b8f4eE.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.h ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.h ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.h ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ab = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = and i16 %i.ab, %.lcssa.i.i.i.i.i.i.i
  %i.af = sub nsw i64 0, %i.ad
  %i.ag = getelementptr inbounds [24 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.af
  %i.ah = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !686, !noalias !679, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !687
  %i.ak = icmp eq i64 %1, 1
  br i1 %i.ak, label %bb.i, label %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i.i"

bb.i:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h936b89698a6b8f4eE.exit.i.i.i.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i.i" unwind label %bb.l

"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i.i": ; preds = %bb.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h936b89698a6b8f4eE.exit.i.i.i.i.i.i"
  %i.al = icmp eq i64 %i.ah, 0
  br i1 %i.al, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc0e202047e171a25E.exit.i.i.i.i.i, label %bb.h

_ZN9hashbrown3raw13RawTableInner13drop_elements17hc0e202047e171a25E.exit.i.i.i.i.i: ; preds = %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17hdf99c23e3e2444b1E.exit.i.i.i.i.i.i", %bb.f
  %i.am = mul i64 %i.n, 24
  %i.an = icmp slt i64 %i.n, 768614336404564650
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = and i64 %i.am, -16                      ; 2 uses
  %i.ap = add i64 %i.ao, 32                       ; 2 uses
  %i.aq = add nsw i64 %i.n, 17
  %i.ar = add i64 %i.aq, %i.ap                    ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as)
  tail call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hd4cb01050316884eE.exit", label %bb.j

bb.j:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc0e202047e171a25E.exit.i.i.i.i.i
  %i.av = load ptr, ptr %i.l, align 8, !alias.scope !677, !nonnull !4, !noundef !4
  %i.aw = sub i64 -32, %i.ao
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !noalias !677
  br label %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hd4cb01050316884eE.exit"

bb.k:                                             ; preds = %bb.l, %bb.d
  %.pn4 = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %i.j, %bb.d ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h05da99064dff377cE"(ptr noalias noundef align 8 dereferenceable(112) %i.ay) #29
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val13 = load i64, ptr %i.az, align 8          ; 2 uses
  %i.ba = icmp eq i64 %.val13, 0
  br i1 %i.ba, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit", label %bb.q

bb.l:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hd4cb01050316884eE.exit": ; preds = %bb.j, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc0e202047e171a25E.exit.i.i.i.i.i, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %.val4.i.i = load i64, ptr %i.bc, align 8, !alias.scope !690 ; 2 uses
  %i.bd = icmp eq i64 %.val4.i.i, 0
  br i1 %i.bd, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit.i.i", label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hd4cb01050316884eE.exit"
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val5.i.i = load ptr, ptr %i.be, align 8, !alias.scope !690, !nonnull !4, !noundef !4
  %i.bf = shl nuw i64 %.val4.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 4) #27, !noalias !690
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit.i.i"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit.i.i": ; preds = %bb.m, %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hd4cb01050316884eE.exit"
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i.i = load i64, ptr %i.bg, align 8, !alias.scope !690 ; 2 uses
  %i.bh = icmp eq i64 %.val.i.i, 0
  br i1 %i.bh, label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hde5a4abbfa9509f0E.exit.i", label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit.i.i"
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !690, !nonnull !4, !noundef !4
  %i.bj = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) 4) #27, !noalias !690
  br label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hde5a4abbfa9509f0E.exit.i"

"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hde5a4abbfa9509f0E.exit.i": ; preds = %bb.n, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit.i.i"
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %.val4.i1.i = load i64, ptr %i.bk, align 8, !alias.scope !692 ; 2 uses
  %i.bl = icmp eq i64 %.val4.i1.i, 0
  br i1 %i.bl, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit.i3.i", label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hde5a4abbfa9509f0E.exit.i"
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val5.i2.i = load ptr, ptr %i.bm, align 8, !alias.scope !692, !nonnull !4, !noundef !4
  %i.bn = shl nuw i64 %.val4.i1.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i2.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 4) #27, !noalias !692
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit.i3.i"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit.i3.i": ; preds = %bb.o, %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hde5a4abbfa9509f0E.exit.i"
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val.i4.i = load i64, ptr %i.bo, align 8, !alias.scope !692 ; 2 uses
  %i.bp = icmp eq i64 %.val.i4.i, 0
  br i1 %i.bp, label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h05da99064dff377cE.exit", label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit.i3.i"
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val1.i5.i = load ptr, ptr %i.bq, align 8, !alias.scope !692, !nonnull !4, !noundef !4
  %i.br = shl nuw i64 %.val.i4.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 4) #27, !noalias !692
  br label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h05da99064dff377cE.exit"

bb.q:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val14 = load ptr, ptr %i.bs, align 8, !nonnull !4, !noundef !4
  %i.bt = shl nuw i64 %.val13, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 4) #27
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit"

"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h05da99064dff377cE.exit": ; preds = %bb.p, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit.i3.i"
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bv = icmp eq i64 %.val, 0
  br i1 %i.bv, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit27", label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h05da99064dff377cE.exit"
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val12 = load ptr, ptr %i.bw, align 8, !nonnull !4, !noundef !4
  %i.bx = shl nuw i64 %.val, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 4) #27
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit27"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit": ; preds = %bb.q, %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val23 = load i64, ptr %i.by, align 8          ; 2 uses
  %i.bz = icmp eq i64 %.val23, 0
  br i1 %i.bz, label %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h2a4867f0daaf552fE.exit", label %bb.s

bb.s:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit"
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val24 = load ptr, ptr %i.ca, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %.val23, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h2a4867f0daaf552fE.exit"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit27": ; preds = %bb.r, %"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h05da99064dff377cE.exit"
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val21 = load i64, ptr %i.cb, align 8          ; 2 uses
  %i.cc = icmp eq i64 %.val21, 0
  br i1 %i.cc, label %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h2a4867f0daaf552fE.exit28", label %bb.t

bb.t:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit27"
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val22 = load ptr, ptr %i.cd, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22, i64 noundef %.val21, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h2a4867f0daaf552fE.exit28"

"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h2a4867f0daaf552fE.exit": ; preds = %bb.s, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit"
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.cf = load i32, ptr %i.ce, align 8, !range !694, !alias.scope !693, !noundef !4
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.u, label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17hf42e15c7146e070dE.exit"

bb.u:                                             ; preds = %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h2a4867f0daaf552fE.exit"
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !698, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !698
  %i.cj = icmp eq i64 %2, 1
  br i1 %i.cj, label %bb.v, label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17hf42e15c7146e070dE.exit"

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17hf42e15c7146e070dE.exit" unwind label %bb.y

"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h2a4867f0daaf552fE.exit28": ; preds = %bb.t, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h5df12e2717d3139bE.exit27"
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.cl = load i32, ptr %i.ck, align 8, !range !694, !alias.scope !699, !noundef !4
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.w, label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17hf42e15c7146e070dE.exit30"

bb.w:                                             ; preds = %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h2a4867f0daaf552fE.exit28"
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !703, !nonnull !4, !noundef !4
  %3 = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !703
  %i.cp = icmp eq i64 %3, 1
  br i1 %i.cp, label %bb.x, label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17hf42e15c7146e070dE.exit30"

bb.x:                                             ; preds = %bb.w
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cn)
  br label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17hf42e15c7146e070dE.exit30"

"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17hf42e15c7146e070dE.exit30": ; preds = %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h2a4867f0daaf552fE.exit28", %bb.w, %bb.x
  ret void

bb.y:                                             ; preds = %bb.v, %bb.d
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17hf42e15c7146e070dE.exit": ; preds = %bb.u, %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h2a4867f0daaf552fE.exit", %bb.v
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17h7d4ffc0456cbfee7E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !734, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !734
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.b, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h0b570163d0a10365E.exit.i"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h0b570163d0a10365E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !730 ; 2 uses
  %i.f = icmp eq i64 %.val2.i, 0
  br i1 %i.f, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.val3.i = load ptr, ptr %i.g, align 8, !alias.scope !730, !nonnull !4, !noundef !4
  %i.h = shl nuw i64 %.val2.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %.body

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h0b570163d0a10365E.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !730 ; 2 uses
  %i.i = icmp eq i64 %.val.i, 0
  br i1 %i.i, label %"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17h20dff2523bf60fb9E.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h0b570163d0a10365E.exit.i"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !730, !nonnull !4, !noundef !4
  %i.k = shl nuw i64 %.val.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17h20dff2523bf60fb9E.exit"

.body:                                            ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..PikeVMCache$GT$17hddd1747cfb6098d0E"(ptr noalias noundef align 8 dereferenceable(216) %i.l) #29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call fastcc void @"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h668f06c13598bc07E"(ptr noalias noundef align 8 dereferenceable(56) %i.m) #29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %.val9 = load i64, ptr %i.n, align 8, !range !7, !noundef !4 ; 2 uses
  %switch16 = icmp sgt i64 %.val9, 0
  br i1 %switch16, label %bb.i, label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h03ef5896f9d93672E.exit"

"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17h20dff2523bf60fb9E.exit": ; preds = %bb.e, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h0b570163d0a10365E.exit.i"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..PikeVMCache$GT$17hddd1747cfb6098d0E"(ptr noalias noundef align 8 dereferenceable(216) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.q = load i64, ptr %i.p, align 8, !range !7, !alias.scope !737, !noundef !4 ; 3 uses
  %i.r = icmp eq i64 %i.q, -9223372036854775808
  br i1 %i.r, label %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h668f06c13598bc07E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17h20dff2523bf60fb9E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb18051037d052bb2E.exit.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %.val1.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !739, !nonnull !4, !noundef !4
  %i.u = shl nuw i64 %i.q, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !739
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb18051037d052bb2E.exit.i.i.i"

"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb18051037d052bb2E.exit.i.i.i": ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %.val2.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !739 ; 2 uses
  %i.w = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.w, label %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h668f06c13598bc07E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb18051037d052bb2E.exit.i.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %.val3.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !739, !nonnull !4, !noundef !4
  %i.y = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !739
  br label %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h668f06c13598bc07E.exit"

bb.i:                                             ; preds = %.body
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %.val10 = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %i.aa = shl nuw i64 %.val9, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h03ef5896f9d93672E.exit"

"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h668f06c13598bc07E.exit": ; preds = %bb.h, %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb18051037d052bb2E.exit.i.i.i", %"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17h20dff2523bf60fb9E.exit"
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %.val = load i64, ptr %i.ab, align 8, !range !7, !noundef !4 ; 2 uses
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %bb.j, label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h03ef5896f9d93672E.exit11"

bb.j:                                             ; preds = %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h668f06c13598bc07E.exit"
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %.val8 = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ad = shl nuw i64 %.val, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h03ef5896f9d93672E.exit11"

"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h03ef5896f9d93672E.exit": ; preds = %.body, %bb.i
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h3f204922119d4bf3E"(ptr noalias noundef align 8 dereferenceable(704) %0) #29
          to label %.body12 unwind label %bb.q

"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h03ef5896f9d93672E.exit11": ; preds = %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h668f06c13598bc07E.exit", %bb.j
  %i.ae = load i64, ptr %0, align 8, !range !12, !alias.scope !740, !noundef !4
  %i.af = icmp eq i64 %i.ae, 2
  br i1 %i.af, label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h3f204922119d4bf3E.exit", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h03ef5896f9d93672E.exit11"
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17hebc6afef250902d1E"(ptr noalias noundef nonnull align 8 dereferenceable(704) %0)
          to label %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..regex..Cache$GT$17hc1b3bf7a4b1392a5E.exit.i.i" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17hebc6afef250902d1E"(ptr noalias noundef align 8 dereferenceable(352) %i.ah) #29
          to label %.body12 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..regex..Cache$GT$17hc1b3bf7a4b1392a5E.exit.i.i": ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17hebc6afef250902d1E"(ptr noalias noundef align 8 dereferenceable(352) %i.aj)
          to label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h3f204922119d4bf3E.exit" unwind label %bb.o

.body12:                                          ; preds = %bb.o, %bb.l, %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h03ef5896f9d93672E.exit"
  %.pn6 = phi { ptr, i32 } [ %i.e, %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h03ef5896f9d93672E.exit" ], [ %i.an, %bb.o ], [ %i.ag, %bb.l ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !12, !alias.scope !741, !noundef !4
  %i.am = icmp eq i64 %i.al, 2
  br i1 %i.am, label %"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17h99dc38685250eff4E.exit", label %bb.n

bb.n:                                             ; preds = %.body12
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17hebc6afef250902d1E"(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.ak)
          to label %"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17h99dc38685250eff4E.exit" unwind label %bb.q

bb.o:                                             ; preds = %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..regex..Cache$GT$17hc1b3bf7a4b1392a5E.exit.i.i"
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body12

"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h3f204922119d4bf3E.exit": ; preds = %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h03ef5896f9d93672E.exit11", %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..regex..Cache$GT$17hc1b3bf7a4b1392a5E.exit.i.i"
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !12, !alias.scope !742, !noundef !4
  %i.aq = icmp eq i64 %i.ap, 2
  br i1 %i.aq, label %"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17h99dc38685250eff4E.exit15", label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h3f204922119d4bf3E.exit"
  tail call fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17hebc6afef250902d1E"(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.ao)
  br label %"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17h99dc38685250eff4E.exit15"

"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17h99dc38685250eff4E.exit15": ; preds = %"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h3f204922119d4bf3E.exit", %bb.p
  ret void

bb.q:                                             ; preds = %bb.n, %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h03ef5896f9d93672E.exit"
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17h99dc38685250eff4E.exit": ; preds = %.body12, %bb.n
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr56drop_in_place$LT$topiary_core..error..FormatterError$GT$17h9705b9fdf73a78adE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 5 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775803
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 5
  switch i64 %i.e, label %bb.b [
    i64 0, label %"_ZN4core3ptr49drop_in_place$LT$topiary_core..error..IoError$GT$17h5d8ffa92e4d68d51E.exit"
    i64 1, label %bb.k
    i64 2, label %bb.m
    i64 3, label %bb.o
    i64 4, label %"_ZN4core3ptr49drop_in_place$LT$topiary_core..error..IoError$GT$17h5d8ffa92e4d68d51E.exit"
    i64 5, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.g = load i64, ptr %i.f, align 8, !range !7, !alias.scope !769, !noundef !4 ; 3 uses
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %.val.i.i = load i64, ptr %i.i, align 8, !alias.scope !771 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i, 0
  br i1 %i.j, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h6312736d87594b74E.exit.i", label %bb.d
end_hunk_1
begin_hunk_2_@"_ZN4core3ptr74drop_in_place$LT$topiary_tree_sitter_facade..error..native..QueryError$GT$17h449f3760d4516ec7E":bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !900
  br label %"_ZN4core3ptr44drop_in_place$LT$tree_sitter..QueryError$GT$17hf179343080a0a1ebE.exit"

"_ZN4core3ptr44drop_in_place$LT$tree_sitter..QueryError$GT$17hf179343080a0a1ebE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h668f06c13598bc07E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !905, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$regex_automata..nfa..thompson..backtrack..Cache$GT$$GT$17h9d1524421bf4b9d6E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb18051037d052bb2E.exit.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !907, !nonnull !4, !noundef !4
  %i.e = shl nuw i64 %i.a, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !907
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb18051037d052bb2E.exit.i.i"

"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb18051037d052bb2E.exit.i.i": ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load i64, ptr %i.f, align 8, !alias.scope !907 ; 2 uses
  %i.g = icmp eq i64 %.val2.i.i, 0
  br i1 %i.g, label %"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$regex_automata..nfa..thompson..backtrack..Cache$GT$$GT$17h9d1524421bf4b9d6E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb18051037d052bb2E.exit.i.i"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i = load ptr, ptr %i.h, align 8, !alias.scope !907, !nonnull !4, !noundef !4
  %i.i = shl nuw i64 %.val2.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !907
  br label %"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$regex_automata..nfa..thompson..backtrack..Cache$GT$$GT$17h9d1524421bf4b9d6E.exit"

"_ZN4core3ptr96drop_in_place$LT$core..option..Option$LT$regex_automata..nfa..thompson..backtrack..Cache$GT$$GT$17h9d1524421bf4b9d6E.exit": ; preds = %bb.a, %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb18051037d052bb2E.exit.i.i", %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr78drop_in_place$LT$std..collections..hash..map..HashMap$LT$usize$C$usize$GT$$GT$17h7d21c2023f87c2bdE"(ptr %.0.val, i64 %.8.val) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %"_ZN4core3ptr98drop_in_place$LT$hashbrown..map..HashMap$LT$usize$C$usize$C$std..hash..random..RandomState$GT$$GT$17h47629211c8abb390E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %bb.a
  %i.b = shl i64 %.8.val, 4                       ; 2 uses
  %i.c = add i64 %i.b, 16                         ; 2 uses
  %i.d = add i64 %.8.val, 17
  %i.e = add i64 %i.d, %i.c                       ; 4 uses
  %i.f = icmp uge i64 %i.e, %i.c
  %i.g = icmp ult i64 %i.e, 9223372036854775793
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.g)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %"_ZN4core3ptr98drop_in_place$LT$hashbrown..map..HashMap$LT$usize$C$usize$C$std..hash..random..RandomState$GT$$GT$17h47629211c8abb390E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  %i.i = sub nuw nsw i64 -16, %i.b
  %i.j = getelementptr inbounds i8, ptr %.0.val, i64 %i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 16) #27
  br label %"_ZN4core3ptr98drop_in_place$LT$hashbrown..map..HashMap$LT$usize$C$usize$C$std..hash..random..RandomState$GT$$GT$17h47629211c8abb390E.exit"

"_ZN4core3ptr98drop_in_place$LT$hashbrown..map..HashMap$LT$usize$C$usize$C$std..hash..random..RandomState$GT$$GT$17h47629211c8abb390E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %bb.b
  ret void
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
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !910, !noundef !4
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !928, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !929
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.b, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit.i.i" unwind label %bb.c

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06f9172cf2e6b55dE.exit", label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit8.i.i"
  %.sroa.0.110.i.i = phi i64 [ %i.l, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit8.i.i" ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.l = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !933, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !934
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %bb.d, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit8.i.i"

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit8.i.i" unwind label %bb.e

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit8.i.i": ; preds = %bb.d, %.lr.ph12.i.i
  %i.o = icmp eq i64 %i.l, %.val1
  br i1 %i.o, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #30
  unreachable

.body:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit8.i.i", %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %.val4, 0
  br i1 %i.q, label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h60bdc299411e00a5E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.r = shl nuw i64 %.val4, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h60bdc299411e00a5E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06f9172cf2e6b55dE.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h663ce0555d5b9fc7E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  %i.s = icmp eq i64 %.val2, 0
  br i1 %i.s, label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h60bdc299411e00a5E.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06f9172cf2e6b55dE.exit"
  %i.t = shl nuw i64 %.val2, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #27
  br label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h60bdc299411e00a5E.exit6"

"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h60bdc299411e00a5E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06f9172cf2e6b55dE.exit", %bb.g
  ret void

"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h60bdc299411e00a5E.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h42c4c4bd04c8abb2E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @35, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h85ff18b159a1ed1dE(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @35, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hc8d04c202ca312f7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @35, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17hef63dcb8a4ad0b49E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @35, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN4core5error5Error5cause17h6923cfd5b5b8e1d8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !alias.scope !937, !noundef !4 ; 3 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !937, !align !11, !noundef !4 ; 2 uses
  %.not5.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !937, !nonnull !4, !align !9
  %.sroa.9.1.i = select i1 %.not5.i, ptr undef, ptr %i.j
  br label %"_ZN74_$LT$topiary_core..error..FormatterError$u20$as$u20$core..error..Error$GT$6source17hff6f7203864de0d6E.exit"

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !7, !alias.scope !937, !noundef !4
  %.not4.i = icmp eq i64 %i.l, -9223372036854775808
  %..i = select i1 %.not4.i, ptr null, ptr %i.k
  br label %"_ZN74_$LT$topiary_core..error..FormatterError$u20$as$u20$core..error..Error$GT$6source17hff6f7203864de0d6E.exit"

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !7, !alias.scope !937, !noundef !4
  %.not.i = icmp eq i64 %i.n, -9223372036854775808
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !937, !align !11, !noundef !4 ; 2 uses
  %.not3.i = icmp eq ptr %i.p, null
  br i1 %.not3.i, label %"_ZN74_$LT$topiary_core..error..FormatterError$u20$as$u20$core..error..Error$GT$6source17hff6f7203864de0d6E.exit", label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %"_ZN74_$LT$topiary_core..error..FormatterError$u20$as$u20$core..error..Error$GT$6source17hff6f7203864de0d6E.exit"

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !937, !nonnull !4, !align !9, !noundef !4
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
end_hunk_2
