Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4bc27bd9b01c2450.regex_automata.948ed56e9a6654bb-cgu.05?download=true
inline.NumInlined: 206
inline.NumDeleted: 40
begin_hunk_0_@"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3new17hf5f41d5ead14d9b0E":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 3, ptr %i.t, align 8
  ret void

bb.l:                                             ; preds = %bb.j
  invoke void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$3new17h1c36d1051d5969a6E"(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h7200c9293293c32dE"(ptr nonnull align 8 %i.e, ptr nonnull align 64 %i.c)
          to label %bb.h unwind label %.loopexit

bb.n:                                             ; preds = %bb.e, %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.o:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @"_ZN14regex_automata4util4pool5inner22PoolGuard$LT$T$C$F$GT$9value_mut17h2988c0bf9040bc2dE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = tail call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$6as_mut17h9b0702032e564200E"(ptr nonnull align 8 %i.e)
  %i.g = tail call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$16unwrap_unchecked17hbf82c106fc16dc3aE"(ptr align 8 %i.f, ptr nonnull align 8 @60)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @"_ZN14regex_automata4util6search128_$LT$impl$u20$core..convert..From$LT$regex_automata..util..search..Span$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$4from17h780d156e2246de68E"(i64 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i64 } %i.a, i64 %1, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_ZN14regex_automata6hybrid3dfa14SearchProgress3len17h56aa46abc069e069E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %.not = icmp ugt i64 %i.a, %i.c
  %i.d = sub nuw i64 %i.c, %i.a
  %i.e = sub nuw i64 %i.a, %i.c
  %.sroa.0.0 = select i1 %.not, i64 %i.e, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_ZN14regex_automata6hybrid3dfa16OverlappingState5start17h957a64f25cf90264E(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) initializes((0, 8), (24, 32), (40, 44), (48, 57)) %0) unnamed_addr #7 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN14regex_automata6hybrid3dfa16OverlappingState9get_match17h117cdc23af39fe20E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc i64 @_ZN14regex_automata6hybrid3dfa22minimum_cache_capacity17h4fbe1e3c520cdb22E(ptr align 8 %0, ptr nonnull align 1 %1, i1 zeroext %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call i64 @_ZN14regex_automata4util8alphabet11ByteClasses7stride217h4d690bc08e3e43e7E(ptr nonnull align 1 %1)
  %i.c = tail call { ptr, i64 } @_ZN14regex_automata3nfa8thompson3nfa3NFA6states17h6a6c962a283214a6E(ptr align 8 %0)
  %i.d = tail call i64 @_ZN14regex_automata4util5start5Start3len17h2ca56016ce65433dE() ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_ZN14regex_automata4util5start5Start3len17h2ca56016ce65433dE()
  %i.f = tail call i64 @_ZN14regex_automata3nfa8thompson3nfa3NFA11pattern_len17hb908f5d13feab5d1E(ptr align 8 %0)
  %i.g = mul i64 %i.f, %i.e
  %i.h = add i64 %i.g, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0.in = phi i64 [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %i.i = tail call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_sub17hbca49f6a37397962E"(i64 5, i64 3) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h48296e6e9fc8ae78E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @64) #23
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h48296e6e9fc8ae78E.exit": ; preds = %bb.c
  %i.l = tail call { ptr, i64 } @_ZN14regex_automata4util11determinize5state5State4dead17he49c1dfa6b2c8abdE() ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  store ptr %i.m, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = invoke i64 @_ZN14regex_automata4util11determinize5state5State12memory_usage17h492b2930884d3b3aE(ptr nonnull align 8 %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h48296e6e9fc8ae78E.exit"
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hf10dd13e2788e13fE"(ptr nonnull align 8 %i.a) #25
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h48296e6e9fc8ae78E.exit"
  %i.r = extractvalue { i64, i64 } %i.i, 1
  %.sroa.0.0 = shl i64 %.sroa.0.0.in, 2
  %i.s = and i64 %i.b, 63
  %i.t = shl i64 20, %i.s
  %i.u = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  call void @"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hf10dd13e2788e13fE"(ptr nonnull align 8 %i.a)
  %i.v = call i64 @_ZN14regex_automata3nfa8thompson3nfa3NFA11pattern_len17hb908f5d13feab5d1E(ptr align 8 %0)
  %i.w = shl i64 %i.v, 2
  %i.x = mul i64 %i.u, 5
  %i.y = add i64 %i.x, 9
  %i.z = add i64 %i.y, %i.w                       ; 2 uses
  %i.aa = mul i64 %i.p, 3
  %i.ab = add i64 %i.z, 16
  %i.ac = mul i64 %i.ab, %i.r
  %reass.mul = mul i64 %i.u, 12
  %i.ad = add nuw i64 %i.t, 148
  %i.ae = add i64 %i.ad, %reass.mul
  %i.af = add i64 %i.ae, %.sroa.0.0
  %i.ag = add i64 %i.af, %i.aa
  %i.ah = add i64 %i.ag, %i.z
  %i.ai = add i64 %i.ah, %i.ac
  ret i64 %i.ai

bb.g:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q
}

; Function Attrs: cold noinline nonlazybind uwtable
define align 8 ptr @_ZN14regex_automata6hybrid3dfa34skip_empty_utf8_splits_overlapping17h6a0ec3bd8f54ee6eE(ptr align 8 %0, ptr align 8 %1, ptr align 16 %2, ptr align 8 %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.06.0.copyload = load i64, ptr %1, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = trunc nuw i64 %.sroa.06.0.copyload to i1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8
  store i64 %.sroa.27.0.copyload, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 %.sroa.3.0.copyload, ptr %i.d, align 8
  %i.e = tail call { i32, i32 } @_ZN14regex_automata4util6search5Input12get_anchored17h3a11346d7805a0b2E(ptr align 8 %0) ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.e, 0
  %i.g = extractvalue { i32, i32 } %i.e, 1
  store i32 %i.f, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.g, ptr %i.h, align 4
  %i.i = call zeroext i1 @_ZN14regex_automata4util6search8Anchored11is_anchored17h514b5ada16441f2bE(ptr nonnull align 4 %i.a)
  %i.j = call i64 @_ZN14regex_automata4util6search9HalfMatch6offset17h0dba85e8b82f9256E(ptr nonnull align 8 %i.b)
  %i.k = call zeroext i1 @_ZN14regex_automata4util6search5Input16is_char_boundary17h1732f2c2c8520f39E(ptr align 8 %0, i64 %i.j) ; 2 uses
  br i1 %i.i, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.k, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %.loopexit, label %bb.g

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.l = call align 8 ptr @_ZN14regex_automata6hybrid6search20find_overlapping_fwd17h8837fc3cd017d084E(ptr align 16 %2, ptr align 8 %3, ptr align 8 %0, ptr nonnull align 8 %1)
  %i.m = call align 8 ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h35bf6546844b40dcE"(ptr align 8 %i.l) ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.n = call align 8 ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h791ca993e7a48521E"(ptr nonnull align 8 %i.m, ptr nonnull align 8 @65)
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %.sroa.08.0.copyload = load i64, ptr %1, align 8
  %i.o = trunc nuw i64 %.sroa.08.0.copyload to i1
  br i1 %i.o, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.sroa.310.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.29.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8
  store i64 %.sroa.29.0.copyload, ptr %i.b, align 8
  store i32 %.sroa.310.0.copyload, ptr %i.d, align 8
  %i.p = call i64 @_ZN14regex_automata4util6search9HalfMatch6offset17h0dba85e8b82f9256E(ptr nonnull align 8 %i.b)
  %i.q = call zeroext i1 @_ZN14regex_automata4util6search5Input16is_char_boundary17h1732f2c2c8520f39E(ptr align 8 %0, i64 %i.p)
  br i1 %i.q, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.f, %bb.e, %.preheader, %bb.c, %bb.g, %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ null, %bb.a ], [ %i.n, %bb.d ], [ null, %bb.c ], [ null, %.preheader ], [ null, %bb.e ], [ null, %bb.f ]
  ret ptr %.sroa.0.0

bb.g:                                             ; preds = %bb.c
  store i64 0, ptr %1, align 8
  br label %.loopexit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 16 ptr @_ZN14regex_automata6hybrid3dfa3DFA10get_config17h7798294617720272E(ptr nofree readnone returned align 16 captures(ret: address, provenance) %0) unnamed_addr #0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i32, i32 } @_ZN14regex_automata6hybrid3dfa3DFA10next_state17h68012161b63120c5E(ptr align 16 %0, ptr align 8 %1, i32 %2, i8 %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %2, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.e = tail call i8 @_ZN14regex_automata4util8alphabet11ByteClasses3get17h234600fff8672f22E(ptr nonnull align 1 %i.d, i8 %3)
  %i.f = zext i8 %i.e to i64
  %i.g = call i64 @_ZN14regex_automata6hybrid2id11LazyStateID17as_usize_untagged17h2b03a87400b557c8E(ptr nonnull align 4 %i.c)
  %i.h = add i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = call align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hae2c4f403d977587E"(ptr nonnull align 8 %i.i, i64 %i.h, ptr nonnull align 8 @66)
  %i.k = load i32, ptr %i.j, align 4
  store i32 %i.k, ptr %i.b, align 4
  %i.l = call zeroext i1 @_ZN14regex_automata6hybrid2id11LazyStateID10is_unknown17h0a8b91af17933804E(ptr nonnull align 4 %i.b)
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.b, align 4
  %i.n = insertvalue { i32, i32 } { i32 0, i32 poison }, i32 %i.m, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = call i32 @_ZN14regex_automata4util8alphabet4Unit2u817h12303380080b6798E(i8 %3)
  store ptr %0, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.p, align 8
  %i.q = load i32, ptr %i.c, align 4
  %i.r = call { i32, i32 } @_ZN14regex_automata6hybrid3dfa4Lazy16cache_next_state17hbf844ed165c25587E(ptr nonnull align 8 %i.a, i32 %i.q, i32 %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.merged = phi { i32, i32 } [ %i.r, %bb.c ], [ %i.n, %bb.b ]
  ret { i32, i32 } %.merged
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata6hybrid3dfa3DFA11never_match17h0ebf453e9e207376E(ptr sret([720 x i8]) align 16 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [144 x i8], align 16              ; 5 uses
  %i.c = alloca [592 x i8], align 16              ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = tail call ptr @_ZN14regex_automata3nfa8thompson3nfa3NFA11never_match17h4349ac3815e1ce29E() ; 2 uses
  store ptr %i.e, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN78_$LT$regex_automata..hybrid..dfa..Config$u20$as$u20$core..default..Default$GT$7default17h55ef5c3d10c2fb39E"(ptr noalias nonnull align 16 %i.b)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h3bf25e8325f632e8E(ptr nonnull sret([448 x i8]) align 8 %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17h74fd9fb6f41410a9E"(ptr nonnull align 16 %i.b) #25
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.f, %bb.b ]
  invoke void @"_ZN4core3ptr60drop_in_place$LT$regex_automata..nfa..thompson..nfa..NFA$GT$17h9ab577bc3f627036E"(ptr nonnull align 8 %i.d) #25
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.i, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN14regex_automata6hybrid3dfa7Builder14build_from_nfa17h375ccf8aefd22b5cE(ptr sret([720 x i8]) align 16 %0, ptr nonnull align 16 %i.c, ptr %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17haf3511570f5dfd44E"(ptr nonnull align 16 %i.c) #25
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17haf3511570f5dfd44E"(ptr nonnull align 16 %i.c)
  ret void

bb.h:                                             ; preds = %bb.f, %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.i:                                             ; preds = %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define i64 @_ZN14regex_automata6hybrid3dfa3DFA11pattern_len17h25154364a8bdf1acE(ptr align 16 %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = tail call i64 @_ZN14regex_automata3nfa8thompson3nfa3NFA11pattern_len17hb908f5d13feab5d1E(ptr nonnull align 8 %i.a)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata6hybrid3dfa3DFA11reset_cache17hc113941b1a472691E(ptr align 16 %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  invoke void @"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h021269183b1b357eE"(ptr nonnull align 8 %i.c)
          to label %_ZN14regex_automata6hybrid3dfa4Lazy11reset_cache17h4ed89aebce8c4fcaE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  store i32 0, ptr %i.c, align 8
  resume { ptr, i32 } %i.d

_ZN14regex_automata6hybrid3dfa4Lazy11reset_cache17h4ed89aebce8c4fcaE.exit: ; preds = %bb.a
  store i32 0, ptr %i.c, align 8
  call fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17h9d2028c754bf8c42E(ptr nonnull readonly align 8 %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.g = tail call { ptr, i64 } @_ZN14regex_automata3nfa8thompson3nfa3NFA6states17h6a6c962a283214a6E(ptr nonnull align 8 %i.f)
  %i.h = extractvalue { ptr, i64 } %i.g, 1
  tail call void @_ZN14regex_automata4util10sparse_set10SparseSets6resize17h7dc2cbcea80fe7d0E(ptr nonnull align 8 %i.e, i64 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i64 0, ptr %i.i, align 8
  store i64 0, ptr %1, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata6hybrid3dfa3DFA12always_match17hbee670f7f173da35E(ptr sret([720 x i8]) align 16 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [144 x i8], align 16              ; 5 uses
  %i.c = alloca [592 x i8], align 16              ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = tail call ptr @_ZN14regex_automata3nfa8thompson3nfa3NFA12always_match17h4213de67539d578aE() ; 2 uses
  store ptr %i.e, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN78_$LT$regex_automata..hybrid..dfa..Config$u20$as$u20$core..default..Default$GT$7default17h55ef5c3d10c2fb39E"(ptr noalias nonnull align 16 %i.b)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h3bf25e8325f632e8E(ptr nonnull sret([448 x i8]) align 8 %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17h74fd9fb6f41410a9E"(ptr nonnull align 16 %i.b) #25
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.f, %bb.b ]
  invoke void @"_ZN4core3ptr60drop_in_place$LT$regex_automata..nfa..thompson..nfa..NFA$GT$17h9ab577bc3f627036E"(ptr nonnull align 8 %i.d) #25
          to label %bb.i unwind label %bb.h

end_hunk_0
