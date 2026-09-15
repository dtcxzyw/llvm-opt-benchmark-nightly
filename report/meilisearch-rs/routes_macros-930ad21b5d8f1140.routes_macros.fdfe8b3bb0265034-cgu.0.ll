Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/routes_macros-930ad21b5d8f1140.routes_macros.fdfe8b3bb0265034-cgu.0?download=true
inline.NumInlined: 3318
inline.NumDeleted: 1160
begin_hunk_0_@"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h5454e5ce323e3d50E":bb.a
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
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %i.p, !prof !86
  br i1 %or.cond.i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !86

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10286
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = icmp eq i64 %i.e, 0
  br i1 %i.r, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8a45830e8c6f75ecE.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.q, align 8, !alias.scope !10286, !nonnull !69, !noundef !69
  %i.s = mul nuw i64 %i.e, %4
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !10287, !noalias !10286
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !10287, !noalias !10286
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8a45830e8c6f75ecE.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8a45830e8c6f75ecE.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ %3, %bb.c ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.t, align 8, !alias.scope !10287, !noalias !10286
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h55fe7b8623330b7aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 1, 9) %3, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !10286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10286
  %i.u = load i64, ptr %i.b, align 8, !range !76, !noalias !10286, !noundef !69
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8a45830e8c6f75ecE.exit.i"
  %i.x = load i64, ptr %i.w, align 8, !range !72, !noalias !10286, !noundef !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !10286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10286
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.b ], [ undef, %bb.a ], [ %i.z, %bb.d ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.x, %bb.d ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @272) #29
  unreachable

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8a45830e8c6f75ecE.exit.i"
  %i.aa = load ptr, ptr %i.w, align 8, !noalias !10286, !nonnull !69, !noundef !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10286
  store ptr %i.aa, ptr %i.q, align 8, !alias.scope !10286
  %i.ab = icmp sgt i64 %.sroa.0.0.i32.i, -1
  tail call void @llvm.assume(i1 %i.ab)
  store i64 %.sroa.0.0.i32.i, ptr %0, align 8, !alias.scope !10286
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5quote9to_tokens8ToTokens17into_token_stream17h0bc1cb15c0b68b41E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !noalias !10290
  invoke void @"_ZN3syn4path8printing72_$LT$impl$u20$quote..to_tokens..ToTokens$u20$for$u20$syn..path..Path$GT$9to_tokens17h017bfc140fc0e33dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN5quote9to_tokens8ToTokens15to_token_stream17h794af7122227d94bE.exit unwind label %bb.b, !noalias !10290

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i" unwind label %bb.c, !noalias !10290

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !10290
  unreachable

"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.b

_ZN5quote9to_tokens8ToTokens15to_token_stream17h794af7122227d94bE.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5quote9to_tokens8ToTokens17into_token_stream17h22683158dbfbcc9aE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !noalias !10293
  invoke void @"_ZN60_$LT$syn..ty..Type$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17hecacac996600b8b2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN5quote9to_tokens8ToTokens15to_token_stream17h8aed3574f9b7a2a4E.exit unwind label %bb.b, !noalias !10293

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i" unwind label %bb.c, !noalias !10293

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !10293
  unreachable

"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.b

_ZN5quote9to_tokens8ToTokens15to_token_stream17h8aed3574f9b7a2a4E.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5quote9to_tokens8ToTokens17into_token_stream17h69bee3c550881782E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !noalias !10296
  invoke void @"_ZN62_$LT$syn..expr..Expr$u20$as$u20$quote..to_tokens..ToTokens$GT$9to_tokens17hdde17e77f9b44ea3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN5quote9to_tokens8ToTokens15to_token_stream17hbbfe04b55f1cbf73E.exit unwind label %bb.b, !noalias !10296

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i" unwind label %bb.c, !noalias !10296

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !10296
  unreachable

"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.b

_ZN5quote9to_tokens8ToTokens15to_token_stream17hbbfe04b55f1cbf73E.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN63_$LT$proc_macro2..TokenStream$u20$as$u20$core..clone..Clone$GT$5clone17ha24c0e6a6d4465c3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.19.i.i.i.i = alloca [3 x i8], align 1    ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10331)
  %i.c = load i64, ptr %1, align 8, !range !72, !alias.scope !10331, !noalias !10332, !noundef !69
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !10331, !noalias !10332, !nonnull !69, !noundef !69 ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %.val.i, align 8, !noalias !10333, !noundef !69 ; 2 uses
  %i.f = icmp ne i64 %.val.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add i64 %.val.i.i.i.i.i, 1               ; 2 uses
  store i64 %i.g, ptr %.val.i, align 8, !noalias !10333
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %"_ZN68_$LT$proc_macro2..imp..TokenStream$u20$as$u20$core..clone..Clone$GT$5clone17h290d641b1cb2685fE.exit", !prof !81

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10334)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10333
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !10335, !noalias !10336, !noundef !69
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %"_ZN62_$LT$proc_macro..TokenStream$u20$as$u20$core..clone..Clone$GT$5clone17hfc81b42fc1882c83E.exit.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef i32 @"_ZN78_$LT$proc_macro..bridge..client..TokenStream$u20$as$u20$core..clone..Clone$GT$5clone17h7ca94ca1d3f3ce95E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i), !noalias !10336
  br label %"_ZN62_$LT$proc_macro..TokenStream$u20$as$u20$core..clone..Clone$GT$5clone17hfc81b42fc1882c83E.exit.i.i"

"_ZN62_$LT$proc_macro..TokenStream$u20$as$u20$core..clone..Clone$GT$5clone17hfc81b42fc1882c83E.exit.i.i": ; preds = %bb.e, %bb.d
  %i.l = phi i32 [ %i.k, %bb.e ], [ 0, %bb.d ]    ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !noalias !10337
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.m, align 8, !alias.scope !10338, !noalias !10336, !nonnull !69, !noundef !69 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.n, align 8, !alias.scope !10338, !noalias !10336, !noundef !69 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10339)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10340
  %i.o = mul i64 %.val1.i.i, 20                   ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %.val1.i.i, 461168601842738790
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !86

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %"_ZN62_$LT$proc_macro..TokenStream$u20$as$u20$core..clone..Clone$GT$5clone17hfc81b42fc1882c83E.exit.i.i"
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0591bbf21008cd7fE.exit.thread.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0591bbf21008cd7fE.exit.thread.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.q = icmp eq i64 %.val1.i.i, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %"_ZN76_$LT$proc_macro2..imp..DeferredTokenStream$u20$as$u20$core..clone..Clone$GT$5clone17h0b1e626992be8645E.exit.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !10341
  %i.s = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, 9) 4) #28, !noalias !10341 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0591bbf21008cd7fE.exit.i.i.i.i"

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %"_ZN62_$LT$proc_macro..TokenStream$u20$as$u20$core..clone..Clone$GT$5clone17hfc81b42fc1882c83E.exit.i.i"
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %"_ZN62_$LT$proc_macro..TokenStream$u20$as$u20$core..clone..Clone$GT$5clone17hfc81b42fc1882c83E.exit.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #29
          to label %.noexc.i.i unwind label %bb.p, !noalias !10336

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0591bbf21008cd7fE.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  store i64 %.val1.i.i, ptr %i.a, align 8, !noalias !10340
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.s, ptr %i.u, align 8, !noalias !10340
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw [20 x i8], ptr %.val.i.i, i64 %.val1.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN60_$LT$proc_macro..TokenTree$u20$as$u20$core..clone..Clone$GT$5clone17h5e4866675070d1f9E.exit.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0591bbf21008cd7fE.exit.i.i.i.i"
  %.sroa.012.060.i.i.i.i = phi ptr [ %i.z, %"_ZN60_$LT$proc_macro..TokenTree$u20$as$u20$core..clone..Clone$GT$5clone17h5e4866675070d1f9E.exit.i.i.i.i" ], [ %.val.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0591bbf21008cd7fE.exit.i.i.i.i" ] ; 16 uses
  %.sroa.7.058.i.i.i.i = phi i64 [ %i.aa, %"_ZN60_$LT$proc_macro..TokenTree$u20$as$u20$core..clone..Clone$GT$5clone17h5e4866675070d1f9E.exit.i.i.i.i" ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0591bbf21008cd7fE.exit.i.i.i.i" ] ; 3 uses
  %.sroa.10.057.i.i.i.i = phi i64 [ %i.x, %"_ZN60_$LT$proc_macro..TokenTree$u20$as$u20$core..clone..Clone$GT$5clone17h5e4866675070d1f9E.exit.i.i.i.i" ], [ %.val1.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0591bbf21008cd7fE.exit.i.i.i.i" ]
  %i.x = add nsw i64 %.sroa.10.057.i.i.i.i, -1    ; 2 uses
  %i.y = icmp eq ptr %.sroa.012.060.i.i.i.i, %i.w
  br i1 %i.y, label %"_ZN76_$LT$proc_macro2..imp..DeferredTokenStream$u20$as$u20$core..clone..Clone$GT$5clone17h0b1e626992be8645E.exit.i", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i, i64 20
  %i.aa = add nuw nsw i64 %.sroa.7.058.i.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10342)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i, i64 16
  %i.ac = load i8, ptr %i.ab, align 4, !range !113, !alias.scope !10343, !noalias !10344, !noundef !69 ; 4 uses
  %i.ad = icmp samesign ugt i8 %i.ac, 3
  %i.ae = zext nneg i8 %i.ac to i64
  %i.af = add nsw i64 %i.ae, -3
  %i.ag = select i1 %i.ad, i64 %i.af, i64 0
  switch i64 %i.ag, label %bb.h [
    i64 0, label %bb.i
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !10345, !noalias !10346, !noundef !69
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i, label %"_ZN90_$LT$proc_macro..bridge..Group$LT$TokenStream$C$Span$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7a89bfb7d8507241E.exit.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = invoke noundef i32 @"_ZN78_$LT$proc_macro..bridge..client..TokenStream$u20$as$u20$core..clone..Clone$GT$5clone17h7ca94ca1d3f3ce95E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ah)
          to label %"_ZN90_$LT$proc_macro..bridge..Group$LT$TokenStream$C$Span$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7a89bfb7d8507241E.exit.i.i.i.i.i" unwind label %bb.o, !noalias !10347

"_ZN90_$LT$proc_macro..bridge..Group$LT$TokenStream$C$Span$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7a89bfb7d8507241E.exit.i.i.i.i.i": ; preds = %bb.j, %bb.i
  %storemerge.i.i.i.i.i.i = phi i32 [ 0, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ak = load <2 x i32>, ptr %.sroa.012.060.i.i.i.i, align 4, !alias.scope !10348, !noalias !10349
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i, i64 8
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.al, align 4, !range !73, !alias.scope !10348, !noalias !10349, !noundef !69 ; 2 uses
  %.sroa.1018.sroa.0.0.extract.trunc32.i.i.i.i = trunc i32 %.val2.i.i.i.i.i.i.i to i8
  %.sroa.1018.sroa.7.0.extract.shift35.i.i.i.i = and i32 %.val2.i.i.i.i.i.i.i, -256
  %.sroa.13.sroa.0.0.extract.trunc26.i.i.i.i = trunc i32 %storemerge.i.i.i.i.i.i to i8
  %.sroa.13.sroa.6.0.extract.shift27.i.i.i.i = lshr i32 %storemerge.i.i.i.i.i.i, 8
  %.sroa.13.sroa.6.0.extract.trunc28.i.i.i.i = trunc i32 %.sroa.13.sroa.6.0.extract.shift27.i.i.i.i to i8
  %.sroa.13.sroa.7.0.extract.shift29.i.i.i.i = and i32 %storemerge.i.i.i.i.i.i, -65536
  br label %"_ZN60_$LT$proc_macro..TokenTree$u20$as$u20$core..clone..Clone$GT$5clone17h5e4866675070d1f9E.exit.i.i.i.i"

bb.k:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i, i64 8
  %i.an = load i8, ptr %i.am, align 4, !range !85, !alias.scope !10350, !noalias !10351, !noundef !69
  %i.ao = load <2 x i32>, ptr %.sroa.012.060.i.i.i.i, align 4, !alias.scope !10350, !noalias !10351
  br label %"_ZN60_$LT$proc_macro..TokenTree$u20$as$u20$core..clone..Clone$GT$5clone17h5e4866675070d1f9E.exit.i.i.i.i"

bb.l:                                             ; preds = %bb.g
  %i.ap = load <2 x i32>, ptr %.sroa.012.060.i.i.i.i, align 4, !alias.scope !10352, !noalias !10347
  %.sroa.1018.0..sroa_idx19.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i, i64 8
  %.sroa.1018.0.copyload20.i.i.i.i = load i32, ptr %.sroa.1018.0..sroa_idx19.i.i.i.i, align 4, !alias.scope !10352, !noalias !10347 ; 2 uses
  %.sroa.1018.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %.sroa.1018.0.copyload20.i.i.i.i to i8
  %.sroa.1018.sroa.7.0.extract.shift.i.i.i.i = and i32 %.sroa.1018.0.copyload20.i.i.i.i, -256
  %.sroa.13.0..sroa_idx21.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i, i64 12
  %.sroa.13.0.copyload22.i.i.i.i = load i32, ptr %.sroa.13.0..sroa_idx21.i.i.i.i, align 4, !alias.scope !10352, !noalias !10347 ; 3 uses
  %.sroa.13.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %.sroa.13.0.copyload22.i.i.i.i to i8
  %.sroa.13.sroa.6.0.extract.shift.i.i.i.i = lshr i32 %.sroa.13.0.copyload22.i.i.i.i, 8
  %.sroa.13.sroa.6.0.extract.trunc.i.i.i.i = trunc i32 %.sroa.13.sroa.6.0.extract.shift.i.i.i.i to i8
  %.sroa.13.sroa.7.0.extract.shift.i.i.i.i = and i32 %.sroa.13.0.copyload22.i.i.i.i, -65536
  %.sroa.19.0..sroa_idx25.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.0..sroa_idx25.i.i.i.i, i64 3, i1 false), !alias.scope !10353, !noalias !10347
  br label %"_ZN60_$LT$proc_macro..TokenTree$u20$as$u20$core..clone..Clone$GT$5clone17h5e4866675070d1f9E.exit.i.i.i.i"

bb.m:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i, i64 12
  %i.ar = load i8, ptr %i.aq, align 4, !range !10354, !alias.scope !10355, !noalias !10356, !noundef !69
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i, i64 13
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !10355, !noalias !10356
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.060.i.i.i.i, i64 8
  %i.av = load i32, ptr %i.au, align 4, !alias.scope !10355, !noalias !10356, !noundef !69 ; 2 uses
  %i.aw = load <2 x i32>, ptr %.sroa.012.060.i.i.i.i, align 4, !alias.scope !10355, !noalias !10356
  %.sroa.1018.sroa.0.0.extract.trunc31.i.i.i.i = trunc i32 %i.av to i8
  %.sroa.1018.sroa.7.0.extract.shift33.i.i.i.i = and i32 %i.av, -256
  br label %"_ZN60_$LT$proc_macro..TokenTree$u20$as$u20$core..clone..Clone$GT$5clone17h5e4866675070d1f9E.exit.i.i.i.i"

"_ZN60_$LT$proc_macro..TokenTree$u20$as$u20$core..clone..Clone$GT$5clone17h5e4866675070d1f9E.exit.i.i.i.i": ; preds = %bb.m, %bb.l, %bb.k, %"_ZN90_$LT$proc_macro..bridge..Group$LT$TokenStream$C$Span$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7a89bfb7d8507241E.exit.i.i.i.i.i"
  %.sroa.1018.sroa.7.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.1018.sroa.7.0.extract.shift35.i.i.i.i, %"_ZN90_$LT$proc_macro..bridge..Group$LT$TokenStream$C$Span$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7a89bfb7d8507241E.exit.i.i.i.i.i" ], [ 0, %bb.k ], [ %.sroa.1018.sroa.7.0.extract.shift.i.i.i.i, %bb.l ], [ %.sroa.1018.sroa.7.0.extract.shift33.i.i.i.i, %bb.m ]
  %.sroa.1018.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.1018.sroa.0.0.extract.trunc32.i.i.i.i, %"_ZN90_$LT$proc_macro..bridge..Group$LT$TokenStream$C$Span$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7a89bfb7d8507241E.exit.i.i.i.i.i" ], [ %i.an, %bb.k ], [ %.sroa.1018.sroa.0.0.extract.trunc.i.i.i.i, %bb.l ], [ %.sroa.1018.sroa.0.0.extract.trunc31.i.i.i.i, %bb.m ]
  %.sroa.13.sroa.7.0.i.i.i.i = phi i32 [ %.sroa.13.sroa.7.0.extract.shift29.i.i.i.i, %"_ZN90_$LT$proc_macro..bridge..Group$LT$TokenStream$C$Span$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7a89bfb7d8507241E.exit.i.i.i.i.i" ], [ 0, %bb.k ], [ %.sroa.13.sroa.7.0.extract.shift.i.i.i.i, %bb.l ], [ 0, %bb.m ]
  %.sroa.13.sroa.6.0.i.i.i.i = phi i8 [ %.sroa.13.sroa.6.0.extract.trunc28.i.i.i.i, %"_ZN90_$LT$proc_macro..bridge..Group$LT$TokenStream$C$Span$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7a89bfb7d8507241E.exit.i.i.i.i.i" ], [ undef, %bb.k ], [ %.sroa.13.sroa.6.0.extract.trunc.i.i.i.i, %bb.l ], [ %i.at, %bb.m ]
  %.sroa.13.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc26.i.i.i.i, %"_ZN90_$LT$proc_macro..bridge..Group$LT$TokenStream$C$Span$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7a89bfb7d8507241E.exit.i.i.i.i.i" ], [ undef, %bb.k ], [ %.sroa.13.sroa.0.0.extract.trunc.i.i.i.i, %bb.l ], [ %i.ar, %bb.m ]
  %.sroa.16.0.i.i.i.i = phi i8 [ %i.ac, %"_ZN90_$LT$proc_macro..bridge..Group$LT$TokenStream$C$Span$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7a89bfb7d8507241E.exit.i.i.i.i.i" ], [ 4, %bb.k ], [ %i.ac, %bb.l ], [ 6, %bb.m ]
  %i.ax = phi <2 x i32> [ %i.ak, %"_ZN90_$LT$proc_macro..bridge..Group$LT$TokenStream$C$Span$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7a89bfb7d8507241E.exit.i.i.i.i.i" ], [ %i.ao, %bb.k ], [ %i.ap, %bb.l ], [ %i.aw, %bb.m ]
  %i.ay = getelementptr inbounds nuw [20 x i8], ptr %i.s, i64 %.sroa.7.058.i.i.i.i ; 5 uses
  %.sroa.1018.sroa.0.0.insert.ext.i.i.i.i = zext i8 %.sroa.1018.sroa.0.0.i.i.i.i to i32
  %.sroa.1018.sroa.0.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.1018.sroa.7.sroa.0.0.i.i.i.i, %.sroa.1018.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.13.sroa.6.0.insert.ext.i.i.i.i = zext i8 %.sroa.13.sroa.6.0.i.i.i.i to i32
  %.sroa.13.sroa.6.0.insert.shift.i.i.i.i = shl nuw nsw i32 %.sroa.13.sroa.6.0.insert.ext.i.i.i.i, 8
  %.sroa.13.sroa.6.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.13.sroa.6.0.insert.shift.i.i.i.i, %.sroa.13.sroa.7.0.i.i.i.i
  %.sroa.13.sroa.0.0.insert.ext.i.i.i.i = zext i8 %.sroa.13.sroa.0.0.i.i.i.i to i32
  %.sroa.13.sroa.0.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.13.sroa.6.0.insert.insert.i.i.i.i, %.sroa.13.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.846.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.846.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.i.i.i.i, i64 3, i1 false), !noalias !10347
  store <2 x i32> %i.ax, ptr %i.ay, align 4, !noalias !10347
  %.sroa.543.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %.sroa.1018.sroa.0.0.insert.insert.i.i.i.i, ptr %.sroa.543.0..sroa_idx.i.i.i.i, align 4, !noalias !10347
  %.sroa.644.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 %.sroa.13.sroa.0.0.insert.insert.i.i.i.i, ptr %.sroa.644.0..sroa_idx.i.i.i.i, align 4, !noalias !10347
  %.sroa.745.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i8 %.sroa.16.0.i.i.i.i, ptr %.sroa.745.0..sroa_idx.i.i.i.i, align 4, !noalias !10347
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i.i.i.i)
  %i.az = icmp eq i64 %i.x, 0
  br i1 %i.az, label %"_ZN76_$LT$proc_macro2..imp..DeferredTokenStream$u20$as$u20$core..clone..Clone$GT$5clone17h0b1e626992be8645E.exit.i", label %.lr.ph.i.i.i.i

bb.n:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !10347
  unreachable

bb.o:                                             ; preds = %bb.j
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.058.i.i.i.i, ptr %i.v, align 8, !alias.scope !10357, !noalias !10340
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$proc_macro..TokenTree$GT$$GT$17h2007d4cccd89b825E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #30
          to label %.body.i.i unwind label %bb.n, !noalias !10347

bb.p:                                             ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.p, %bb.o
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bb, %bb.p ], [ %lpad.loopexit.i.i.i.i, %bb.o ]
  %i.bc = icmp eq i32 %i.l, 0
  br i1 %i.bc, label %"_ZN4core3ptr44drop_in_place$LT$proc_macro..TokenStream$GT$17hebda6fb383036884E.exit.i.i", label %bb.q

bb.q:                                             ; preds = %.body.i.i
  invoke void @"_ZN81_$LT$proc_macro..bridge..client..TokenStream$u20$as$u20$core..ops..drop..Drop$GT$4drop17h144b9efbd9439ae7E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %"_ZN4core3ptr44drop_in_place$LT$proc_macro..TokenStream$GT$17hebda6fb383036884E.exit.i.i" unwind label %bb.r, !noalias !10336

bb.r:                                             ; preds = %bb.q
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !10336
  unreachable

"_ZN4core3ptr44drop_in_place$LT$proc_macro..TokenStream$GT$17hebda6fb383036884E.exit.i.i": ; preds = %bb.q, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

"_ZN76_$LT$proc_macro2..imp..DeferredTokenStream$u20$as$u20$core..clone..Clone$GT$5clone17h0b1e626992be8645E.exit.i": ; preds = %"_ZN60_$LT$proc_macro..TokenTree$u20$as$u20$core..clone..Clone$GT$5clone17h5e4866675070d1f9E.exit.i.i.i.i", %.lr.ph.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0591bbf21008cd7fE.exit.thread.i.i.i.i"
  %2 = phi ptr [ inttoptr (i64 4 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0591bbf21008cd7fE.exit.thread.i.i.i.i" ], [ %i.s, %.lr.ph.i.i.i.i ], [ %i.s, %"_ZN60_$LT$proc_macro..TokenTree$u20$as$u20$core..clone..Clone$GT$5clone17h5e4866675070d1f9E.exit.i.i.i.i" ]
  %3 = phi ptr [ %i.r, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0591bbf21008cd7fE.exit.thread.i.i.i.i" ], [ %i.v, %.lr.ph.i.i.i.i ], [ %i.v, %"_ZN60_$LT$proc_macro..TokenTree$u20$as$u20$core..clone..Clone$GT$5clone17h5e4866675070d1f9E.exit.i.i.i.i" ]
  store i64 %.val1.i.i, ptr %3, align 8, !noalias !10340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10333
  br label %"_ZN68_$LT$proc_macro2..imp..TokenStream$u20$as$u20$core..clone..Clone$GT$5clone17h290d641b1cb2685fE.exit"

"_ZN68_$LT$proc_macro2..imp..TokenStream$u20$as$u20$core..clone..Clone$GT$5clone17h290d641b1cb2685fE.exit": ; preds = %bb.b, %"_ZN76_$LT$proc_macro2..imp..DeferredTokenStream$u20$as$u20$core..clone..Clone$GT$5clone17h0b1e626992be8645E.exit.i"
  %.sroa.410.0 = phi i32 [ %i.l, %"_ZN76_$LT$proc_macro2..imp..DeferredTokenStream$u20$as$u20$core..clone..Clone$GT$5clone17h0b1e626992be8645E.exit.i" ], [ undef, %bb.b ]
  %.sroa.4.0 = phi i64 [ %.val1.i.i, %"_ZN76_$LT$proc_macro2..imp..DeferredTokenStream$u20$as$u20$core..clone..Clone$GT$5clone17h0b1e626992be8645E.exit.i" ], [ undef, %bb.b ]
  %.sroa.3.0 = phi ptr [ %2, %"_ZN76_$LT$proc_macro2..imp..DeferredTokenStream$u20$as$u20$core..clone..Clone$GT$5clone17h0b1e626992be8645E.exit.i" ], [ %.val.i, %bb.b ]
  %.sroa.0.0 = phi i64 [ %.val1.i.i, %"_ZN76_$LT$proc_macro2..imp..DeferredTokenStream$u20$as$u20$core..clone..Clone$GT$5clone17h0b1e626992be8645E.exit.i" ], [ -9223372036854775808, %bb.b ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN73_$LT$proc_macro2..imp..Ident$u20$as$u20$core..cmp..PartialEq$LT$T$GT$$GT$2eq17h95d29691888da16aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !80, !noundef !69 ; 2 uses
  %.not = icmp eq i8 %i.e, 2
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10384)
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !10383, !noalias !10384, !noundef !69
  %.not.i.i.i = icmp eq i64 %i.h, %.8.val
  br i1 %.not.i.i.i, label %bb.d, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h776a4752ade008f7E.exit"

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !alias.scope !10383, !noalias !10384, !nonnull !69, !align !90, !noundef !69
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %i.i, ptr nonnull readonly align 1 %.0.val, i64 %.8.val), !alias.scope !10385, !noalias !10383
  %i.j = icmp eq i32 %bcmp.i.i.i, 0
  br label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h776a4752ade008f7E.exit"

bb.e:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %.8.val, 1
  br i1 %i.k, label %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h466d8f84fc46acbcE.exit.i.i", label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h776a4752ade008f7E.exit"

"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h466d8f84fc46acbcE.exit.i.i": ; preds = %bb.e
  %i.l = load i16, ptr %.0.val, align 1
  %i.m = icmp ne i16 9074, %i.l
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h776a4752ade008f7E.exit"

bb.f:                                             ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h466d8f84fc46acbcE.exit.i.i"
  %i.p = load ptr, ptr %0, align 8, !alias.scope !10383, !noalias !10384, !nonnull !69, !align !90, !noundef !69
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !10383, !noalias !10384, !noundef !69 ; 2 uses
  %i.s = icmp eq i64 %.8.val, 2
  br i1 %i.s, label %"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h13c5fef990c29115E.exit.i.i", label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit.i.i.i.i"

"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit.i.i.i.i": ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !10386, !noalias !10383, !noundef !69
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h13c5fef990c29115E.exit.i.i", label %bb.g, !prof !120

bb.g:                                             ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit.i.i.i.i"
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.0.val, i64 noundef %.8.val, i64 noundef 2, i64 noundef %.8.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #29, !noalias !10383
  unreachable

"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h13c5fef990c29115E.exit.i.i": ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc9a8904b027ac10aE.exit.i.i.i.i", %bb.f
  %i.w = add i64 %.8.val, -2
  %.not.i1.i.i = icmp eq i64 %i.r, %i.w
  br i1 %.not.i1.i.i, label %bb.h, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h776a4752ade008f7E.exit"

bb.h:                                             ; preds = %"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h13c5fef990c29115E.exit.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %bcmp.i3.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %i.p, ptr nonnull readonly align 1 %i.x, i64 %i.r), !alias.scope !10387, !noalias !10383
  %i.y = icmp eq i32 %bcmp.i3.i.i, 0
  br label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h776a4752ade008f7E.exit"

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10388
  store i64 0, ptr %i.c, align 8, !noalias !10388
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !10388
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !10388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10388
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.z, align 8, !noalias !10388
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !10388
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !10388
  store ptr %i.c, ptr %i.b, align 8, !noalias !10388
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @263, ptr %i.aa, align 8, !noalias !10388
  %i.ab = invoke noundef zeroext i1 @"_ZN56_$LT$proc_macro..Ident$u20$as$u20$core..fmt..Display$GT$3fmt17h5947288eec0cc92fE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.l unwind label %bb.j, !noalias !10389

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !10390)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !10390, !noalias !10388 ; 2 uses
  %i.ad = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ad, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf376163118455707E.exit.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !10390, !noalias !10388, !nonnull !69, !noundef !69
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !10391
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf376163118455707E.exit.i.i"

bb.l:                                             ; preds = %bb.i
  br i1 %i.ab, label %bb.m, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h749c9733346bc031E.exit", !prof !81

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @264, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @269, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #29
          to label %.noexc.i.i unwind label %bb.j, !noalias !10389

.noexc.i.i:                                       ; preds = %bb.m
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf376163118455707E.exit.i.i": ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.ac

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h749c9733346bc031E.exit": ; preds = %bb.l
  %.sroa.02.0.copyload = load i64, ptr %i.c, align 8, !noalias !10392 ; 2 uses
  %.sroa.33.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !10392 ; 4 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !10392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10388
  %.not.i = icmp eq i64 %.sroa.6.0.copyload, %.8.val
  br i1 %.not.i, label %bb.n, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"

bb.n:                                             ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h749c9733346bc031E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.33.0.copyload) ]
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly %.sroa.33.0.copyload, ptr nonnull readonly %.0.val, i64 %.8.val)
  %i.ae = icmp eq i32 %bcmp.i, 0
  br label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit": ; preds = %bb.n, %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h749c9733346bc031E.exit"
  %.sroa.0.0.i = phi i1 [ %i.ae, %bb.n ], [ false, %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h749c9733346bc031E.exit" ] ; 2 uses
  %i.af = icmp eq i64 %.sroa.02.0.copyload, 0
  br i1 %i.af, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h776a4752ade008f7E.exit", label %bb.o

bb.o:                                             ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.33.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.33.0.copyload, i64 noundef %.sroa.02.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !10393
  br label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h776a4752ade008f7E.exit"

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h776a4752ade008f7E.exit": ; preds = %bb.o, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit", %bb.h, %"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h13c5fef990c29115E.exit.i.i", %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h466d8f84fc46acbcE.exit.i.i", %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ false, %bb.e ], [ false, %"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17h13c5fef990c29115E.exit.i.i" ], [ false, %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h466d8f84fc46acbcE.exit.i.i" ], [ %i.j, %bb.d ], [ false, %bb.c ], [ %i.y, %bb.h ], [ %.sroa.0.0.i, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit" ], [ %.sroa.0.0.i, %bb.o ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN73_$LT$routes_macros..path..RequestBodyArg$u20$as$u20$syn..parse..Parse$GT$5parse17ha1707ae99ad27cdaE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.631 = alloca [24 x i8], align 8          ; 6 uses
  %.sroa.226.sroa.2 = alloca [48 x i8], align 8   ; 5 uses
  %i.e = alloca [224 x i8], align 8               ; 10 uses
  %.sroa.621.sroa.7 = alloca [16 x i8], align 8   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.226.sroa.2, i64 24 ; 2 uses
  %.sroa.9 = alloca [180 x i8], align 4           ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @"_ZN3syn5ident7parsing66_$LT$impl$u20$syn..parse..Parse$u20$for$u20$proc_macro2..Ident$GT$5parse17h91ed6ccb122268daE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %1)
  %i.j = load i64, ptr %i.h, align 8, !range !76, !noundef !69
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  store i64 18, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %"_ZN4core3ptr39drop_in_place$LT$proc_macro2..Ident$GT$17h27049b251db06028E.exit70"

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @"_ZN52_$LT$syn..token..Eq$u20$as$u20$syn..parse..Parse$GT$5parse17h32e560214a02babaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %1)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.o, %"_ZN73_$LT$proc_macro2..imp..Ident$u20$as$u20$core..cmp..PartialEq$LT$T$GT$$GT$2eq17h59262a3d07ae0b44E.exit.thread", %bb.c
  %i.n = landingpad { ptr, i32 }
end_hunk_0
