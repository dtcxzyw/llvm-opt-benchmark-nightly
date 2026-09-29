Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.02?download=true
inline.NumInlined: 5944
inline.NumDeleted: 3301
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h68abe3f448402da1E":bb.a
bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h69433578322f923dE"(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h01b2cb7b81e27c6bE.exit"

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h01b2cb7b81e27c6bE.exit": ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.j, %bb.b ], [ %.promoted, %bb.a ] ; 4 uses
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h01b2cb7b81e27c6bE.exit"
  %i.g = load i32, ptr %i.f, align 4, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load float, ptr %i.h, align 4, !noundef !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = invoke { i32, float } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h1562cc7aec0f0ae1E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.g, float noundef %i.i)
          to label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h01b2cb7b81e27c6bE.exit" unwind label %bb.d ; 0 uses

bb.c:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h01b2cb7b81e27c6bE.exit"
  %.val4 = load ptr, ptr %0, align 8, !alias.scope !411, !nonnull !14, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.l, align 8, !alias.scope !411, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !412
  store i64 %.val5, ptr %i.b, align 8, !noalias !412
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val4, ptr %i.m, align 8, !noalias !412
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb5938b07a095ecaE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !412
  ret void

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %.val2 = load ptr, ptr %0, align 8, !alias.scope !411, !nonnull !14, !noundef !14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.o, align 8, !alias.scope !411, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !413
  store i64 %.val3, ptr %i.a, align 8, !noalias !413
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val2, ptr %i.p, align 8, !noalias !413
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb5938b07a095ecaE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !413
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h75e252e3d20cba52E"(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not10 = icmp eq ptr %.promoted, %i.c
  br i1 %.not10, label %._crit_edge14, label %.lr.ph

._crit_edge14:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !422, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted11 = load i64, ptr %i.g, align 8, !alias.scope !422
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi i64 [ %.promoted11, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !noundef !14 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.l = icmp ne i32 %i.j, -1
  %i.m = sext i32 %i.j to i64
  %.sroa.0.0.i.i = zext i1 %i.l to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i64 %.sroa.0.0.i.i, ptr %i.n, align 8, !noalias !422
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.m, ptr %i.o, align 8, !noalias !422
  %i.p = add i64 %i.h, 1                          ; 2 uses
  %.not = icmp eq ptr %i.k, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %._crit_edge14
  %.val5 = phi i64 [ %.val5.pre, %._crit_edge14 ], [ %i.p, %bb.b ]
  %.val4 = load ptr, ptr %1, align 8, !nonnull !14, !align !15, !noundef !14
  store i64 %.val5, ptr %.val4, align 8
  %.val8 = load ptr, ptr %0, align 8, !alias.scope !27, !nonnull !14, !noundef !14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.q, align 8, !alias.scope !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !426
  store i64 %.val9, ptr %i.a, align 8, !noalias !426
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val8, ptr %i.r, align 8, !noalias !426
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h939a37dc12665771E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !426
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h7b59cf5c6f8dc28bE"(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [504 x i8], align 8               ; 4 uses
  %i.b = alloca [664 x i8], align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not6 = icmp eq ptr %.promoted, %i.d
  br i1 %.not6, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted7 = load i64, ptr %i.h, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.val3 = phi i64 [ %.promoted7, %.lr.ph ], [ %i.m, %bb.d ] ; 3 uses
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.a, ptr noundef nonnull align 8 dereferenceable(504) %i.i, i64 504, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 504 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !434
  invoke void @"_ZN4anki9scheduler7service9answering139_$LT$impl$u20$core..convert..From$LT$anki..scheduler..queue..QueuedCard$GT$$u20$for$u20$anki_proto..scheduler..queued_cards..QueuedCard$GT$4from17h6f4f79ac57c141e7E"(ptr noalias noundef nonnull sret([664 x i8]) align 8 captures(address) dereferenceable(664) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(504) %i.a)
          to label %bb.d unwind label %bb.c

._crit_edge:                                      ; preds = %bb.d, %.._crit_edge_crit_edge
  %.val5 = phi i64 [ %.val5.pre, %.._crit_edge_crit_edge ], [ %i.m, %bb.d ]
  %.val4 = load ptr, ptr %1, align 8, !nonnull !14, !align !15, !noundef !14
  store i64 %.val5, ptr %.val4, align 8
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49dc3cf5ddc5dcf8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !nonnull !14, !align !15, !noundef !14
  store i64 %.val3, ptr %.val, align 8
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h49dc3cf5ddc5dcf8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %"_ZN4core3ptr94drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..scheduler..queue..QueuedCard$GT$$GT$17h1fbeb4bceebe12f1E.exit" unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !434
  %i.l = getelementptr inbounds nuw [664 x i8], ptr %i.g, i64 %.val3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(664) %i.b, i64 664, i1 false), !noalias !435
  %i.m = add i64 %.val3, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !434
  %.not = icmp eq ptr %i.j, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr94drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..scheduler..queue..QueuedCard$GT$$GT$17h1fbeb4bceebe12f1E.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h91d017b79d43b664E"(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 8 uses
  %.not10 = icmp eq ptr %.promoted, %i.c
  br i1 %.not10, label %._crit_edge14, label %.lr.ph

._crit_edge14:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !451, !noundef !14 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted11 = load i64, ptr %i.g, align 8, !alias.scope !451 ; 5 uses
  %2 = ptrtoaddr ptr %i.c to i64
  %3 = ptrtoaddr ptr %.promoted to i64
  %i.h = add i64 %2, -4
  %i.i = sub i64 %i.h, %3                         ; 4 uses
  %i.j = lshr i64 %i.i, 2
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 124
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.l = shl i64 %.promoted11, 1                  ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.f, i64 %i.l
  %i.m = lshr i64 %i.i, 1
  %i.n = and i64 %i.m, 9223372036854775806
  %i.o = getelementptr i8, ptr %i.f, i64 %i.l
  %i.p = getelementptr i8, ptr %i.o, i64 %i.n
  %scevgep18 = getelementptr i8, ptr %i.p, i64 2
  %i.q = and i64 %i.i, -4
  %i.r = getelementptr i8, ptr %.promoted, i64 %i.q
  %scevgep19 = getelementptr i8, ptr %i.r, i64 4
  %bound0 = icmp ult ptr %scevgep, %scevgep19
  %bound1 = icmp ult ptr %.promoted, %scevgep18
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 9223372036854775800      ; 4 uses
  %i.s = add i64 %.promoted11, %n.vec             ; 2 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %.promoted, i64 %i.t
  %i.v = getelementptr [2 x i8], ptr %i.f, i64 %.promoted11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !452
  %wide.load20 = load <4 x i32>, ptr %i.x, align 4, !alias.scope !452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.y = trunc <4 x i32> %wide.load to <4 x i16>
  %i.z = trunc <4 x i32> %wide.load20 to <4 x i16>
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.aa = getelementptr [2 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store <4 x i16> %i.y, ptr %i.aa, align 2, !alias.scope !456, !noalias !457
  store <4 x i16> %i.z, ptr %i.ab, align 2, !alias.scope !456, !noalias !457
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !445

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted11, %vector.memcheck ], [ %.promoted11, %.lr.ph ], [ %i.s, %middle.block ]
  %.ph22 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ad = phi i64 [ %i.aj, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ae = phi ptr [ %i.ag, %scalar.ph ], [ %.ph22, %scalar.ph.preheader ] ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !noundef !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.ah = trunc i32 %i.af to i16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ad
  store i16 %i.ah, ptr %i.ai, align 2, !noalias !451
  %i.aj = add i64 %i.ad, 1                        ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.c
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !446

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %._crit_edge14
  %.val5 = phi i64 [ %.val5.pre, %._crit_edge14 ], [ %i.s, %middle.block ], [ %i.aj, %scalar.ph ]
  %.val4 = load ptr, ptr %1, align 8, !nonnull !14, !align !15, !noundef !14
  store i64 %.val5, ptr %.val4, align 8
  %.val8 = load ptr, ptr %0, align 8, !alias.scope !458, !nonnull !14, !noundef !14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.ak, align 8, !alias.scope !458, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !459
  store i64 %.val9, ptr %i.a, align 8, !noalias !459
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val8, ptr %i.al, align 8, !noalias !459
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04adf8fe4cd21c2dE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !459
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h94e187b879c63427E"(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h2e5b5014af1c40b2E.exit"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h2e5b5014af1c40b2E.exit": ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.g, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h2e5b5014af1c40b2E.exit"
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17ha85c597e5a1e8ac8E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %.sroa.2.0.copyload)
          to label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h2e5b5014af1c40b2E.exit" unwind label %bb.d ; 0 uses

bb.c:                                             ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h2e5b5014af1c40b2E.exit"
  %.val4 = load ptr, ptr %0, align 8, !alias.scope !466, !nonnull !14, !noundef !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.i, align 8, !alias.scope !466, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !467
  store i64 %.val5, ptr %i.b, align 8, !noalias !467
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val4, ptr %i.j, align 8, !noalias !467
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd669d10cbd2db33aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !467
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.val2 = load ptr, ptr %0, align 8, !alias.scope !466, !nonnull !14, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.l, align 8, !alias.scope !466, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !468
  store i64 %.val3, ptr %i.a, align 8, !noalias !468
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val2, ptr %i.m, align 8, !noalias !468
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd669d10cbd2db33aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !468
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h97a269558864b487E"(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not13 = icmp eq ptr %.promoted, %i.c
  br i1 %.not13, label %._crit_edge20, label %.lr.ph

._crit_edge20:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !486, !noalias !487, !nonnull !14, !align !15, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val2.i.i = load ptr, ptr %i.g, align 8, !alias.scope !486, !noalias !487, !nonnull !14, !align !15, !noundef !14 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !488, !noalias !489, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted14 = load i64, ptr %i.e, align 8, !alias.scope !490, !noalias !491
  %.promoted16 = load i64, ptr %i.l, align 8, !alias.scope !488, !noalias !489
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %._crit_edge20
  %.val9 = phi i64 [ %.val9.pre, %._crit_edge20 ], [ %i.ag, %bb.b ]
  %.val8 = load ptr, ptr %1, align 8, !nonnull !14, !align !15, !noundef !14
  store i64 %.val9, ptr %.val8, align 8
  %.val4 = load ptr, ptr %0, align 8, !alias.scope !16, !nonnull !14, !noundef !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.m, align 8, !alias.scope !16, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !492
  store i64 %.val5, ptr %i.a, align 8, !noalias !492
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val4, ptr %i.n, align 8, !noalias !492
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h75eb7b97ff2f4a2dE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !492
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.o = phi i64 [ %.promoted16, %.lr.ph ], [ %i.ag, %bb.b ] ; 2 uses
  %i.p = phi i64 [ %.promoted14, %.lr.ph ], [ %i.ah, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %.promoted, %.lr.ph ], [ %i.r, %bb.b ] ; 5 uses
  %.sroa.010.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.sroa.3.0.copyload = load float, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.s = trunc i64 %i.p to i16
  %i.t = load i64, ptr %.val.i.i, align 8, !noalias !494, !noundef !14
  %i.u = load i64, ptr %i.h, align 8, !noalias !494, !noundef !14
  %.neg1.i.i.i = add i64 %.sroa.010.0.copyload, 86400
  %i.v = sub i64 %.neg1.i.i.i, %i.u
  %i.w = sdiv i64 %i.v, 86400
  %i.x = trunc i64 %i.w to i32
end_hunk_0
begin_hunk_1_@"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hb41efe8f65f622b0E":bb.a
          to label %"_ZN64_$LT$unicase..UniCase$LT$S$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h86fe9d441034603dE.exit.i.i.i" unwind label %.loopexit, !noalias !657

.loopexit:                                        ; preds = %bb.b
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #32
          to label %.body unwind label %bb.e, !noalias !657

"_ZN64_$LT$unicase..UniCase$LT$S$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h86fe9d441034603dE.exit.i.i.i": ; preds = %bb.b
  br i1 %i.q, label %bb.d, label %bb.f, !prof !18

bb.d:                                             ; preds = %"_ZN64_$LT$unicase..UniCase$LT$S$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h86fe9d441034603dE.exit.i.i.i"
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @258, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #33
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp, !noalias !657

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31, !noalias !657
  unreachable

._crit_edge:                                      ; preds = %bb.f, %.._crit_edge_crit_edge
  %.val5 = phi i64 [ %.val5.pre, %.._crit_edge_crit_edge ], [ %i.x, %bb.f ]
  %.val4 = load ptr, ptr %1, align 8, !nonnull !14, !align !15, !noundef !14
  store i64 %.val5, ptr %.val4, align 8
  %.val8 = load ptr, ptr %0, align 8, !alias.scope !658, !nonnull !14, !noundef !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.s, align 8, !alias.scope !658, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !659
  store i64 %.val9, ptr %i.c, align 8, !noalias !659
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.val8, ptr %i.t, align 8, !noalias !659
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h26c9744b0a5d4169E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !659
  ret void

.body:                                            ; preds = %bb.c
  %.val = load ptr, ptr %1, align 8, !nonnull !14, !align !15, !noundef !14
  store i64 %.val3, ptr %.val, align 8
  %.val6 = load ptr, ptr %0, align 8, !alias.scope !658, !nonnull !14, !noundef !14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7 = load i64, ptr %i.u, align 8, !alias.scope !658, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !660
  store i64 %.val7, ptr %i.b, align 8, !noalias !660
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val6, ptr %i.v, align 8, !noalias !660
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h26c9744b0a5d4169E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %"_ZN64_$LT$unicase..UniCase$LT$S$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h86fe9d441034603dE.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !655
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.val3 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.i, i64 24, i1 false), !noalias !661
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i32 0, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !661
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store i8 0, ptr %.sroa.54.0..sroa_idx.i, align 4, !noalias !661
  %i.x = add i64 %.val3, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i)
  %.not = icmp eq ptr %i.p, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %.body
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

bb.h:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !660
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbf9b261d54c5b8d1E"(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not5 = icmp eq ptr %.promoted, %i.c
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi ptr [ %.promoted, %.lr.ph ], [ %i.f, %bb.d ] ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.42.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34.0..sroa_idx, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  store i64 %.sroa.2.0.copyload, ptr %i.a, align 8, !noalias !667
  invoke void @"_ZN94_$LT$$LP$ExA$C$ExB$RP$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$A$C$B$RP$$GT$$GT$20extend_one_unchecked17h21c4e1080abbe45eE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.c

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h02badba03200d00bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h02badba03200d00bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %"_ZN4core3ptr137drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..revlog..RevlogId$C$anki..card..CardId$C$fsrs..dataset..FSRSItem$RP$$GT$$GT$17h396f05d2f1809e24E.exit" unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !666
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr137drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..revlog..RevlogId$C$anki..card..CardId$C$fsrs..dataset..FSRSItem$RP$$GT$$GT$17h396f05d2f1809e24E.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc5a1695b35554deeE"(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not5 = icmp eq ptr %.promoted, %i.c
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi ptr [ %.promoted, %.lr.ph ], [ %i.f, %bb.d ] ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.42.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34.0..sroa_idx, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  store i64 %.sroa.2.0.copyload, ptr %i.a, align 8, !noalias !673
  invoke void @"_ZN94_$LT$$LP$ExA$C$ExB$RP$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$A$C$B$RP$$GT$$GT$10extend_one17h11ed9ca65d2ab315E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.c

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h02badba03200d00bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h02badba03200d00bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %"_ZN4core3ptr137drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..revlog..RevlogId$C$anki..card..CardId$C$fsrs..dataset..FSRSItem$RP$$GT$$GT$17h396f05d2f1809e24E.exit" unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !672
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr137drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..revlog..RevlogId$C$anki..card..CardId$C$fsrs..dataset..FSRSItem$RP$$GT$$GT$17h396f05d2f1809e24E.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc7105e8bb403b972E"(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 8 uses
  %.not10 = icmp eq ptr %.promoted, %i.c
  br i1 %.not10, label %._crit_edge14, label %.lr.ph

._crit_edge14:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !689, !noundef !14 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted11 = load i64, ptr %i.g, align 8, !alias.scope !689 ; 5 uses
  %2 = ptrtoaddr ptr %i.c to i64
  %3 = ptrtoaddr ptr %.promoted to i64
  %i.h = add i64 %2, -2
  %i.i = sub i64 %i.h, %3                         ; 4 uses
  %i.j = lshr i64 %i.i, 1
  %i.k = add nuw i64 %i.j, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 62
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.l = shl i64 %.promoted11, 2                  ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.f, i64 %i.l
  %i.m = shl i64 %i.i, 1
  %i.n = and i64 %i.m, -4
  %i.o = getelementptr i8, ptr %i.f, i64 %i.l
  %i.p = getelementptr i8, ptr %i.o, i64 %i.n
  %scevgep18 = getelementptr i8, ptr %i.p, i64 4
  %i.q = and i64 %i.i, -2
  %i.r = getelementptr i8, ptr %.promoted, i64 %i.q
  %scevgep19 = getelementptr i8, ptr %i.r, i64 2
  %bound0 = icmp ult ptr %scevgep, %scevgep19
  %bound1 = icmp ult ptr %.promoted, %scevgep18
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, -8                       ; 4 uses
  %i.s = add i64 %.promoted11, %n.vec             ; 2 uses
  %i.t = shl i64 %n.vec, 1
  %i.u = getelementptr i8, ptr %.promoted, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %i.f, i64 %.promoted11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !alias.scope !690
  %wide.load20 = load <4 x i16>, ptr %i.x, align 2, !alias.scope !690
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.y = zext <4 x i16> %wide.load to <4 x i32>
  %i.z = zext <4 x i16> %wide.load20 to <4 x i32>
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.aa = getelementptr [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %i.y, ptr %i.aa, align 4, !alias.scope !694, !noalias !695
  store <4 x i32> %i.z, ptr %i.ab, align 4, !alias.scope !694, !noalias !695
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !683

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted11, %vector.memcheck ], [ %.promoted11, %.lr.ph ], [ %i.s, %middle.block ]
  %.ph22 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ad = phi i64 [ %i.aj, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ae = phi ptr [ %i.ag, %scalar.ph ], [ %.ph22, %scalar.ph.preheader ] ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !noundef !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.ah = zext i16 %i.af to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ad
  store i32 %i.ah, ptr %i.ai, align 4, !noalias !689
  %i.aj = add i64 %i.ad, 1                        ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.c
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !684

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %._crit_edge14
  %.val5 = phi i64 [ %.val5.pre, %._crit_edge14 ], [ %i.s, %middle.block ], [ %i.aj, %scalar.ph ]
  %.val4 = load ptr, ptr %1, align 8, !nonnull !14, !align !15, !noundef !14
  store i64 %.val5, ptr %.val4, align 8
  %.val8 = load ptr, ptr %0, align 8, !alias.scope !696, !nonnull !14, !noundef !14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.ak, align 8, !alias.scope !696, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !697
  store i64 %.val9, ptr %i.a, align 8, !noalias !697
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val8, ptr %i.al, align 8, !noalias !697
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce2e7982f9276536E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !697
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hd074fb16deb3ed60E"(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not6 = icmp eq ptr %.promoted, %i.e
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.g = phi ptr [ %i.h, %bb.c ], [ %.promoted, %bb.a ] ; 3 uses
  %.sroa.05.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN7unicase16UniCase$LT$S$GT$3new17hdbc055ce15bb1c54E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !702
  %i.i = invoke { i64, i64 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h91f7d569b463abc5E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, i64 noundef %.sroa.05.0.copyload)
          to label %bb.c unwind label %bb.b       ; 0 uses

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a5cf6ed1005fa6bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.b:                                             ; preds = %.noexc, %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2a5cf6ed1005fa6bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %"_ZN4core3ptr111drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..decks..DeckId$C$alloc..string..String$RP$$GT$$GT$17h427be998cd6653d9E.exit" unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.h, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr111drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$anki..decks..DeckId$C$alloc..string..String$RP$$GT$$GT$17h427be998cd6653d9E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hdd52ec6782c86f26E"(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not4 = icmp eq ptr %.promoted, %i.c
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.f, %bb.c ], [ %.promoted, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = invoke { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h27660b944e2222fbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %.sroa.2.0.copyload)
          to label %bb.c unwind label %bb.b       ; 0 uses

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h153bb1ad1e9e0c4aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h153bb1ad1e9e0c4aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..tags..Tag$GT$$GT$17h9678c7bb8a663daeE.exit" unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !708
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #31
  unreachable

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..tags..Tag$GT$$GT$17h9678c7bb8a663daeE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfa0dc95e3ea4343eE"(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not6 = icmp eq ptr %.promoted, %i.d
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.f = phi ptr [ %i.g, %bb.f ], [ %.promoted, %bb.a ] ; 3 uses
  %.sroa.05.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8
end_hunk_1
