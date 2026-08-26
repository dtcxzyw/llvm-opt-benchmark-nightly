Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4bc27bd9b01c2450.regex_automata.948ed56e9a6654bb-cgu.13?download=true
inline.NumInlined: 160
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN14regex_automata3nfa8thompson3nfa5Inner8into_nfa17hc73bcdd04b735de5E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bc = invoke align 8 ptr @"_ZN14regex_automata4util10primitives127_$LT$impl$u20$core..ops..index..Index$LT$regex_automata..util..primitives..StateID$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$5index17hc2d96aea942cc409E"(ptr nonnull align 8 %i.o, i32 %i.am, ptr nonnull align 8 @40)
          to label %bb.ab unwind label %.loopexit ; 8 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bd = load i32, ptr %i.bc, align 8
  switch i32 %i.bd, label %bb.ac [
    i32 0, label %.preheader.backedge
    i32 1, label %.preheader.backedge
    i32 2, label %.preheader.backedge
    i32 3, label %bb.ad
    i32 4, label %bb.ae
    i32 5, label %bb.af
    i32 6, label %bb.ag
    i32 7, label %.preheader.backedge
    i32 8, label %bb.ah
  ]

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = invoke i32 @_ZN14regex_automata4util4look7LookSet6insert17h6b1f0d18dd692609E(i32 %.sroa.02.0, i32 %i.bf)
          to label %bb.ai unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ab
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = invoke { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h016612738ae96a40E"(ptr align 4 %i.bk, i64 %i.bm)
          to label %bb.aj unwind label %.loopexit ; 2 uses

bb.af:                                            ; preds = %bb.ab
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.br = load i32, ptr %i.bq, align 8
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h01a4677aff1b4c82E"(ptr nonnull align 8 %i.l, i32 %i.br)
          to label %.invoke unwind label %.loopexit

bb.ag:                                            ; preds = %bb.ab
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bt = load i32, ptr %i.bs, align 4
  br label %.invoke

.invoke:                                          ; preds = %bb.af, %bb.ag
  %i.bu = phi i32 [ %i.bt, %bb.ag ], [ %i.bp, %bb.af ]
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h01a4677aff1b4c82E"(ptr nonnull align 8 %i.l, i32 %i.bu)
          to label %.preheader.backedge unwind label %.loopexit

.preheader.backedge:                              ; preds = %.invoke, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ah, %bb.ai, %bb.aj, %bb.z
  %.sroa.02.0.be = phi i32 [ %.sroa.02.0, %bb.ab ], [ %.sroa.02.0, %bb.z ], [ %i.bi, %bb.ai ], [ %.sroa.02.0, %bb.aj ], [ %.sroa.02.0, %bb.ah ], [ %.sroa.02.0, %.invoke ], [ %.sroa.02.0, %bb.ab ], [ %.sroa.02.0, %bb.ab ], [ %.sroa.02.0, %bb.ab ]
  br label %.preheader

bb.ah:                                            ; preds = %bb.ab
  store i8 1, ptr %i.ae, align 2
  br label %.preheader.backedge

bb.ai:                                            ; preds = %bb.ad
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h01a4677aff1b4c82E"(ptr nonnull align 8 %i.l, i32 %i.bh)
          to label %.preheader.backedge unwind label %.loopexit

bb.aj:                                            ; preds = %bb.ae
  %i.bv = extractvalue { ptr, ptr } %i.bn, 0
  %i.bw = extractvalue { ptr, ptr } %i.bn, 1
  invoke void @"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17h28ce3eec39d2902bE"(ptr nonnull align 8 %i.l, ptr %i.bv, ptr %i.bw)
          to label %.preheader.backedge unwind label %.loopexit

bb.ak:                                            ; preds = %bb.y
  store i32 %i.az, ptr %i.af, align 4
  br label %bb.l

bb.al:                                            ; preds = %bb.an, %.loopexit.split-lp, %bb.e
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #25
  unreachable

bb.am:                                            ; preds = %bb.an, %bb.b
  %.pn.pn21 = phi { ptr, i32 } [ %.pn, %bb.b ], [ %.pn.pn22, %bb.an ]
  resume { ptr, i32 } %.pn.pn21

bb.an:                                            ; preds = %.split.thread, %bb.b
  %.pn.pn22 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn, %bb.b ]
  invoke void @"_ZN4core3ptr62drop_in_place$LT$regex_automata..nfa..thompson..nfa..Inner$GT$17h2a127c5c1521dd77E"(ptr align 16 %0) #24
          to label %bb.am unwind label %bb.al
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_ZN14regex_automata3nfa8thompson3nfa5Inner8set_utf817hbf8e118e7ab8435eE(ptr nofree writeonly align 16 captures(none) initializes((371, 372)) %0, i1 zeroext %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 371
  %i.b = zext i1 %1 to i8
  store i8 %i.b, ptr %i.a, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_ZN14regex_automata3nfa8thompson3nfa5State10is_epsilon17hf9fe289c06ef0a87E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %.off = add i32 %i.a, -3
  %switch = icmp ult i32 %.off, 4
  ret i1 %switch
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14regex_automata3nfa8thompson6pikevm12ActiveStates5reset17h85fbb229ed03032fE(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call align 16 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd681cb7e9a9eacb3E"(ptr align 8 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.c = tail call { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf7dc078c0801061cE"(ptr nonnull align 8 %i.b)
  %i.d = extractvalue { ptr, i64 } %i.c, 1
  tail call void @_ZN14regex_automata4util10sparse_set9SparseSet6resize17h12cc99a7680ccfe5E(ptr align 8 %0, i64 %i.d)
  %i.e = tail call align 16 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd681cb7e9a9eacb3E"(ptr align 8 %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.g = tail call i64 @_ZN14regex_automata4util8captures9GroupInfo8slot_len17h0453aaab48390e7bE(ptr nonnull align 8 %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8
  %i.i = tail call align 16 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd681cb7e9a9eacb3E"(ptr align 8 %1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 328
  %i.k = tail call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h129efc69a282fcbbE"(ptr nonnull align 8 %i.j)
  %i.l = tail call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hc6b7ae030aa27ed0E"(i64 %i.k, i64 2) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable5reset17ha9e3cfec812a90aeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @71) #23
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm9SlotTable5reset17ha9e3cfec812a90aeE.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = extractvalue { i64, i64 } %i.l, 1
  %i.q = tail call i64 @_ZN4core3cmp3max17hfa816b1378f751baE(i64 %i.g, i64 %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8
  %i.s = tail call align 16 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd681cb7e9a9eacb3E"(ptr align 8 %1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 304
  %i.u = tail call { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf7dc078c0801061cE"(ptr nonnull align 8 %i.t)
  %i.v = extractvalue { ptr, i64 } %i.u, 1
  %i.w = load i64, ptr %i.h, align 8
  %i.x = tail call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hc6b7ae030aa27ed0E"(i64 %i.v, i64 %i.w) ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  %i.aa = tail call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$8and_then17h2881aaddae3214e9E"(i64 %i.y, i64 %i.z, ptr nonnull align 8 %i.r) ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  %i.ad = tail call i64 @"_ZN4core6option15Option$LT$T$GT$6expect17he673e26b784a045aE"(i64 %i.ab, i64 %i.ac, ptr nonnull align 1 @72, i64 34, ptr nonnull align 8 @73)
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h95b89c55e6fe6bc7E"(ptr nonnull align 8 %i.o, i64 %i.ad, i64 0)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_ZN14regex_automata3nfa8thompson6pikevm13FollowEpsilon7Explore17h56cac48064b761f3E(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 8)) %0, i32 %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4
  store i32 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define i64 @_ZN14regex_automata3nfa8thompson6pikevm5Cache12memory_usage17h9feb0f4576edf1b5E(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17he084ad79f26b8ec1E"(ptr align 8 %0)
  %i.b = shl i64 %i.a, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = tail call i64 @_ZN14regex_automata4util10sparse_set9SparseSet12memory_usage17h4d5759d8133263c8E(ptr nonnull align 8 %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = tail call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17he7d8f7c91ec56405E"(ptr nonnull align 8 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = tail call i64 @_ZN14regex_automata4util10sparse_set9SparseSet12memory_usage17h4d5759d8133263c8E(ptr nonnull align 8 %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = tail call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17he7d8f7c91ec56405E"(ptr nonnull align 8 %i.i)
  %reass.add = add i64 %i.j, %i.f
  %reass.mul = shl i64 %reass.add, 3
  %i.k = add i64 %i.b, %i.d
  %i.l = add i64 %i.k, %i.h
  %i.m = add i64 %i.l, %reass.mul
  ret i64 %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm5Cache3new17h6d829507cd112f3eE(ptr nofree writeonly sret([216 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [96 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  %i.h = alloca [96 x i8], align 8                ; 7 uses
  %i.i = alloca [96 x i8], align 8                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 3 uses
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h2ec041df7515bb8dE"(ptr nonnull sret([24 x i8]) align 8 %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_ZN14regex_automata4util10sparse_set9SparseSet3new17h36b2e6ac3816739bE(ptr nonnull sret([56 x i8]) align 8 %i.g, i64 0)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h949d1818fe8035f2E"(ptr nonnull sret([24 x i8]) align 8 %i.e)
          to label %bb.c unwind label %bb.b, !noalias !3

bb.b:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17h4ea1d5041a73060cE"(ptr nonnull align 8 %i.g) #24
          to label %.body unwind label %bb.e, !noalias !3

bb.c:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !3
  %.24..24..24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.24..24..24..24..24..sroa_idx, i8 0, i64 16, i1 false), !alias.scope !6, !noalias !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !3
  invoke fastcc void @_ZN14regex_automata3nfa8thompson6pikevm12ActiveStates5reset17h85fbb229ed03032fE(ptr nonnull align 8 %i.h, ptr align 8 %1)
          to label %bb.g unwind label %bb.d, !noalias !3

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr72drop_in_place$LT$regex_automata..nfa..thompson..pikevm..ActiveStates$GT$17h1612496f82b31671E"(ptr nonnull align 8 %i.h) #24
          to label %.body unwind label %bb.e, !noalias !3

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #25, !noalias !3
  unreachable

.body:                                            ; preds = %bb.f, %bb.d, %bb.b, %.body5
  %.pn = phi { ptr, i32 } [ %eh.lpad-body6, %.body5 ], [ %i.o, %bb.f ], [ %i.m, %bb.d ], [ %i.k, %bb.b ]
  invoke void @"_ZN4core3ptr96drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..pikevm..FollowEpsilon$GT$$GT$17h6661ca053e3958caE"(ptr nonnull align 8 %i.j) #24
          to label %bb.o unwind label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN14regex_automata4util10sparse_set9SparseSet3new17h36b2e6ac3816739bE(ptr nonnull sret([56 x i8]) align 8 %i.c, i64 0)
          to label %.noexc4 unwind label %bb.l

.noexc4:                                          ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h949d1818fe8035f2E"(ptr nonnull sret([24 x i8]) align 8 %i.a)
          to label %bb.i unwind label %bb.h, !noalias !9

bb.h:                                             ; preds = %.noexc4
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17h4ea1d5041a73060cE"(ptr nonnull align 8 %i.c) #24
          to label %.body5 unwind label %bb.k, !noalias !9

bb.i:                                             ; preds = %.noexc4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !9
  %.24..24..24..24..24..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.24..24..24..24..24..sroa_idx10, i8 0, i64 16, i1 false), !alias.scope !12, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !9
  invoke fastcc void @_ZN14regex_automata3nfa8thompson6pikevm12ActiveStates5reset17h85fbb229ed03032fE(ptr nonnull align 8 %i.d, ptr align 8 %1)
          to label %bb.m unwind label %bb.j, !noalias !9

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr72drop_in_place$LT$regex_automata..nfa..thompson..pikevm..ActiveStates$GT$17h1612496f82b31671E"(ptr nonnull align 8 %i.d) #24
          to label %.body5 unwind label %bb.k, !noalias !9

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #25, !noalias !9
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body5

.body5:                                           ; preds = %bb.h, %bb.j, %bb.l
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.r, %bb.j ], [ %i.p, %bb.h ]
  invoke void @"_ZN4core3ptr72drop_in_place$LT$regex_automata..nfa..thompson..pikevm..ActiveStates$GT$17h1612496f82b31671E"(ptr nonnull align 8 %i.i) #24
          to label %.body unwind label %bb.n

bb.m:                                             ; preds = %bb.i
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef nonnull align 8 dereferenceable(96) %i.i, i64 96, i1 false)
  ret void

bb.n:                                             ; preds = %.body5, %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #25
  unreachable

bb.o:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm5Cache5reset17h76736519cbffe04cE(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_ZN14regex_automata3nfa8thompson6pikevm12ActiveStates5reset17h85fbb229ed03032fE(ptr nonnull align 8 %i.a, ptr align 8 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call fastcc void @_ZN14regex_automata3nfa8thompson6pikevm12ActiveStates5reset17h85fbb229ed03032fE(ptr nonnull align 8 %i.b, ptr align 8 %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6Config10match_kind17h0a4eeae3454961afE(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree align 8 captures(none) initializes((32, 33)) %1, i1 zeroext %2) unnamed_addr #8 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 %i.a, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_ZN14regex_automata3nfa8thompson6pikevm6Config13get_prefilter17hc4a6d156da6a3644E(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$6as_ref17h63970e9ddf04855dE"(ptr align 8 %0)
  %i.b = tail call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17h0d8354e279a23c1bE"(ptr align 8 %i.a, ptr nonnull align 8 @49)
  %i.c = tail call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$6as_ref17h6925bce3d6da6cefE"(ptr align 8 %i.b)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_ZN14regex_automata3nfa8thompson6pikevm6Config14get_match_kind17h59457c45f7fd21eaE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8
  %i.c = tail call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17he82893ffa99e5a74E"(i8 %i.b, i1 zeroext true)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6Config3new17h15354efdc053d1a9E(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 33)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i8 @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h019942a5f28c3dd4E"(), !noalias !15
  call void @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h91d138e11da81ff4E"(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.b, ptr %i.c, align 8, !alias.scope !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN14regex_automata3nfa8thompson6pikevm6Config9overwrite28_$u7b$$u7b$closure$u7d$$u7d$17hc31e71887e7400c5E"(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha97729b2d981aac8E"(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6Config9prefilter17h68a212a41a463699E(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  invoke void @"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17hb88a05f977ec5850E"(ptr align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  invoke void @"_ZN4core3ptr66drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Config$GT$17h5d5ebb8296d571b2E"(ptr nonnull align 8 %1) #24
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #25
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM10search_imp17h05a357e57ee0eab2E(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2, ptr align 8 %3, ptr align 8 %4, i64 %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 24 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [48 x i8], align 8                ; 6 uses
  %i.u = alloca [8 x i8], align 8                 ; 6 uses
  %i.v = alloca [4 x i8], align 4                 ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [48 x i8], align 8                ; 8 uses
  %i.aa = alloca [8 x i8], align 8                ; 6 uses
  %i.ab = alloca [48 x i8], align 8               ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 6 uses
  %i.ad = alloca [4 x i8], align 4                ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [48 x i8], align 8               ; 8 uses
  %i.ai = alloca [8 x i8], align 8                ; 6 uses
  %i.aj = alloca [48 x i8], align 8               ; 6 uses
  %i.ak = alloca [8 x i8], align 8                ; 6 uses
  %i.al = alloca [4 x i8], align 4                ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [16 x i8], align 8               ; 6 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [48 x i8], align 8               ; 8 uses
  %i.aq = alloca [8 x i8], align 8                ; 6 uses
  %i.ar = alloca [48 x i8], align 8               ; 6 uses
  %i.as = alloca [8 x i8], align 8                ; 6 uses
  %i.at = alloca [4 x i8], align 4                ; 7 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [4 x i8], align 4                ; 7 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 6 uses
  %i.ay = alloca [4 x i8], align 4                ; 7 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [16 x i8], align 8               ; 6 uses
  %i.bb = alloca [4 x i8], align 4                ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 8 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 8 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [16 x i8], align 8               ; 8 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %i.bj = alloca [1 x i8], align 1                ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 7 uses
  %i.bl = alloca [16 x i8], align 8               ; 6 uses
  %i.bm = alloca [4 x i8], align 4                ; 7 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [16 x i8], align 8               ; 8 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [24 x i8], align 8               ; 3 uses
  %i.br = alloca [24 x i8], align 8               ; 8 uses
  %i.bs = alloca [1 x i8], align 1                ; 2 uses
  %i.bt = alloca [48 x i8], align 8               ; 2 uses
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5clear17hc072880ec83371daE"(ptr align 8 %2)
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 10 uses
  tail call void @_ZN14regex_automata4util10sparse_set9SparseSet5clear17h8912ab607d3d6961E(ptr nonnull align 8 %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  store i64 %5, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 21 uses
  tail call void @_ZN14regex_automata4util10sparse_set9SparseSet5clear17h8912ab607d3d6961E(ptr nonnull align 8 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 5 uses
  store i64 %5, ptr %i.bx, align 8
  %i.by = tail call zeroext i1 @_ZN14regex_automata4util6search5Input7is_done17hdaf7bcdde34b701dE(ptr align 8 %3)
  br i1 %i.by, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bz = tail call { ptr, i64 } @_ZN14regex_automata4util6search5Input8haystack17h4ca6bc9049392b7aE(ptr align 8 %3)
  %i.ca = extractvalue { ptr, i64 } %i.bz, 1
  %.not19 = icmp eq i64 %i.ca, -1
  br i1 %.not19, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN14regex_automata3nfa8thompson6pikevm6PikeVM25which_overlapping_matches17h65be27118bac34b2E:bb.a
bb.a:
  tail call void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM21which_overlapping_imp17he22c25d7c5cfeff9E(ptr align 8 %0, ptr align 8 %1, ptr align 8 %2, ptr align 8 %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM3new17hcbcdae2a720f4b33E(ptr sret([128 x i8]) align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [448 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [488 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.h = tail call i8 @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h019942a5f28c3dd4E"(), !noalias !21
  call void @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h91d138e11da81ff4E"(ptr nonnull sret([32 x i8]) align 8 %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 %i.h, ptr %i.i, align 8, !alias.scope !21
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h3bf25e8325f632e8E(ptr nonnull sret([448 x i8]) align 8 %i.e)
          to label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM7builder17h78638c103f7d470fE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr66drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Config$GT$17h5d5ebb8296d571b2E"(ptr nonnull align 8 %i.f) #24
          to label %common.resume unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #25
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM7builder17h78638c103f7d470fE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %i.g, ptr noundef nonnull align 8 dereferenceable(448) %i.e, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler10build_many17h585886839e8a66c1E(ptr nonnull sret([128 x i8]) align 8 %i.b, ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.d, i64 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM7builder17h78638c103f7d470fE.exit
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h70b20aa883c41433E"(ptr nonnull sret([128 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
          to label %.noexc1 unwind label %bb.f

.noexc1:                                          ; preds = %.noexc
  %i.n = load i64, ptr %i.c, align 8
  %.not.i.i = icmp eq i64 %i.n, -9223372036854775800
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h042272982e335908E"(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @68)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %.noexc1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  invoke void @_ZN14regex_automata3nfa8thompson6pikevm7Builder14build_from_nfa17h6e92d207d21211afE(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.g, ptr %i.p)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.noexc, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM7builder17h78638c103f7d470fE.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr67drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Builder$GT$17h1f4618b13736d338E"(ptr nonnull align 8 %i.g) #24
          to label %common.resume unwind label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @"_ZN4core3ptr67drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Builder$GT$17h1f4618b13736d338E"(ptr nonnull align 8 %i.g)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM6config17h76ab766e292e059eE(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 33)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i8 @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h019942a5f28c3dd4E"(), !noalias !24
  call void @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h91d138e11da81ff4E"(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.b, ptr %i.c, align 8, !alias.scope !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM7builder17h78638c103f7d470fE(ptr nofree writeonly sret([488 x i8]) align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.c = tail call i8 @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h019942a5f28c3dd4E"(), !noalias !27
  call void @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h91d138e11da81ff4E"(ptr nonnull sret([32 x i8]) align 8 %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %i.c, ptr %i.d, align 8, !alias.scope !27
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h3bf25e8325f632e8E(ptr nonnull sret([448 x i8]) align 8 %i.a)
          to label %_ZN14regex_automata3nfa8thompson6pikevm7Builder3new17hb2af0e150fc40115E.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr66drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Config$GT$17h5d5ebb8296d571b2E"(ptr nonnull align 8 %i.b) #24
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #25
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_ZN14regex_automata3nfa8thompson6pikevm7Builder3new17hb2af0e150fc40115E.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM8is_match17hfe3d0b7c76445b9aE(ptr align 8 %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h3e1a5bd31c416d77E"(ptr nonnull sret([48 x i8]) align 8 %i.b, ptr align 8 %2, ptr nonnull align 8 @67)
  call void @_ZN14regex_automata4util6search5Input8earliest17hac237a41af6b4467E(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b, i1 zeroext true)
  %i.d = call { i32, i32 } @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM12search_slots17h7d9c602f20027249E(ptr align 8 %0, ptr align 8 %1, ptr nonnull align 8 %i.c, ptr nonnull align 8 inttoptr (i64 8 to ptr), i64 0) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0
  %i.f = extractvalue { i32, i32 } %i.d, 1
  store i32 %i.e, ptr %i.a, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %i.g, align 4
  %i.h = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17hf77c05d6d6e42042E"(ptr nonnull align 4 %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm7Builder10build_many17h4d2edd3d5bfdcf8eE(ptr sret([128 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 2 uses
  %i.b = alloca [128 x i8], align 8               ; 2 uses
  %i.c = alloca [128 x i8], align 8               ; 4 uses
  call void @_ZN14regex_automata3nfa8thompson8compiler8Compiler10build_many17h585886839e8a66c1E(ptr nonnull sret([128 x i8]) align 8 %i.b, ptr align 8 %1, ptr align 8 %2, i64 %3)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h70b20aa883c41433E"(ptr nonnull sret([128 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -9223372036854775800
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h042272982e335908E"(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @68)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  call void @_ZN14regex_automata3nfa8thompson6pikevm7Builder14build_from_nfa17h6e92d207d21211afE(ptr sret([128 x i8]) align 8 %0, ptr align 8 %1, ptr %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm7Builder14build_from_nfa17h6e92d207d21211afE(ptr sret([128 x i8]) align 8 %0, ptr align 8 %1, ptr %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.2.sroa.0 = alloca [32 x i8], align 8     ; 4 uses
  %i.a = alloca [128 x i8], align 8               ; 2 uses
  %i.b = alloca [128 x i8], align 8               ; 2 uses
  %i.c = alloca [128 x i8], align 8               ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = invoke align 16 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd681cb7e9a9eacb3E"(ptr nonnull align 8 %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.h, %bb.a, %bb.g, %bb.e, %bb.d, %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr60drop_in_place$LT$regex_automata..nfa..thompson..nfa..NFA$GT$17h9ab577bc3f627036E"(ptr nonnull align 8 %i.d) #24
          to label %bb.m unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.h = load i32, ptr %i.g, align 8
  %i.i = invoke zeroext i1 @_ZN14regex_automata4util4look7LookSet9available17h180edf1d38948f5fE(i32 %i.h)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h4e4eafa41d28f193E"(ptr nonnull sret([128 x i8]) align 8 %i.b, i1 zeroext %i.i)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h40a81898ae828dbaE"(ptr nonnull sret([128 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  %i.j = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.j, -9223372036854775800
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h042272982e335908E"(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @69)
          to label %bb.k unwind label %bb.b

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.sroa.0)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.l = invoke i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd655ee88dc0b504eE"(ptr nonnull align 1 %i.k)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 448
  invoke void @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha97729b2d981aac8E"(ptr nonnull sret([32 x i8]) align 8 %.sroa.2.sroa.0, ptr nonnull align 8 %i.m)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %.noexc
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.sroa.0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.0)
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.l, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %bb.g
  call void @"_ZN4core3ptr60drop_in_place$LT$regex_automata..nfa..thompson..nfa..NFA$GT$17h9ab577bc3f627036E"(ptr nonnull align 8 %i.d)
  br label %bb.j

bb.l:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #25
  unreachable

bb.m:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm7Builder3new17hb2af0e150fc40115E(ptr nofree writeonly sret([488 x i8]) align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.c = tail call i8 @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h019942a5f28c3dd4E"(), !noalias !30
  call void @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h91d138e11da81ff4E"(ptr nonnull sret([32 x i8]) align 8 %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %i.c, ptr %i.d, align 8, !alias.scope !30
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h3bf25e8325f632e8E(ptr nonnull sret([448 x i8]) align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr66drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Config$GT$17h5d5ebb8296d571b2E"(ptr nonnull align 8 %i.b) #24
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #25
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm7Builder5build17h02f63d99eaad9c92E(ptr sret([128 x i8]) align 8 %0, ptr align 8 %1, ptr align 1 %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %3, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN14regex_automata3nfa8thompson8compiler8Compiler10build_many17h585886839e8a66c1E(ptr nonnull sret([128 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull align 8 %i.d, i64 1)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h70b20aa883c41433E"(ptr nonnull sret([128 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.f = load i64, ptr %i.c, align 8
  %.not.i = icmp eq i64 %i.f, -9223372036854775800
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h042272982e335908E"(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @68)
  br label %_ZN14regex_automata3nfa8thompson6pikevm7Builder10build_many17h4d2edd3d5bfdcf8eE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void @_ZN14regex_automata3nfa8thompson6pikevm7Builder14build_from_nfa17h6e92d207d21211afE(ptr sret([128 x i8]) align 8 %0, ptr align 8 %1, ptr %i.h)
  br label %_ZN14regex_automata3nfa8thompson6pikevm7Builder10build_many17h4d2edd3d5bfdcf8eE.exit

_ZN14regex_automata3nfa8thompson6pikevm7Builder10build_many17h4d2edd3d5bfdcf8eE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_ZN14regex_automata3nfa8thompson6pikevm7Builder6syntax17h36ee001729754738E(ptr returned align 8 %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = call align 8 ptr @_ZN14regex_automata3nfa8thompson8compiler8Compiler6syntax17hf8bb993f81af4062E(ptr align 8 %0, ptr nonnull align 4 %i.a) ; 0 uses
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_ZN14regex_automata3nfa8thompson6pikevm7Builder8thompson17h87e50ddbfae4a17bE(ptr returned align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @_ZN14regex_automata3nfa8thompson8compiler8Compiler9configure17h7cfe2fbaf70e222fE(ptr align 8 %0, ptr align 8 %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_ZN14regex_automata3nfa8thompson6pikevm7Builder9configure17hcd1a4797c2227e20E(ptr returned align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [32 x i8], align 8            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 8, !noalias !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !noalias !33
  %i.g = invoke i8 @"_ZN4core6option15Option$LT$T$GT$2or17h741b9c6d53615ffbE"(i8 %i.d, i8 %i.f)
          to label %_ZN14regex_automata3nfa8thompson6pikevm6Config9overwrite17hb0c9c24cc74306fdE.exit unwind label %bb.b, !noalias !33 ; 2 uses

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.h, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17hb88a05f977ec5850E"(ptr nonnull align 8 %1) #24
          to label %common.resume unwind label %bb.c, !noalias !33

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #25, !noalias !33
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm6Config9overwrite17hb0c9c24cc74306fdE.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !33
  call void @"_ZN4core6option15Option$LT$T$GT$7or_else17hf648de2594098e31E"(ptr nonnull sret([32 x i8]) align 8 %.sroa.0, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @"_ZN4core3ptr66drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Config$GT$17h5d5ebb8296d571b2E"(ptr nonnull align 8 %i.b)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6Config9overwrite17hb0c9c24cc74306fdE.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  store i8 %i.g, ptr %i.e, align 8
  br label %common.resume

bb.e:                                             ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6Config9overwrite17hb0c9c24cc74306fdE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  store i8 %i.g, ptr %i.e, align 8
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i64 } @"_ZN14regex_automata3nfa8thompson6pikevm9SlotTable5reset28_$u7b$$u7b$closure$u7d$$u7d$17ha615bea084391b4eE"(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h399a39aef8b06744E"(i64 %1, i64 %i.a)
  ret { i64, i64 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN14regex_automata4meta13reverse_inner10top_concat28_$u7b$$u7b$closure$u7d$$u7d$17h342adffc76b59f92E"(ptr sret([48 x i8]) align 8 %0, ptr nofree readnone align 1 captures(none) %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN14regex_automata4meta13reverse_inner7flatten17h2c681088c12c70d8E(ptr noalias align 8 %0, ptr align 8 %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN14regex_automata4meta13reverse_inner7extract17h60dee1eb726a6c57E(ptr nofree writeonly sret([80 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [32 x i8], align 8                ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [48 x i8], align 8                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 3 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 3 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 2 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 10, ptr %0, align 8
  br label %bb.r
end_hunk_1
