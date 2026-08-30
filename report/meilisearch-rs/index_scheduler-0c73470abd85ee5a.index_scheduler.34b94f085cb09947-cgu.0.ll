Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN15index_scheduler14IndexScheduler33get_tasks_from_authorized_indexes17hc9a136e21ee28a25E:bb.a
  br label %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit"

bb.c:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %i.t, align 8, !noalias !46257, !noundef !14
  store i64 0, ptr %i.ae, align 8, !alias.scope !46252, !noalias !46260
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.x, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !46252, !noalias !46260
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.ag, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !alias.scope !46252, !noalias !46260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !46257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.528, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !46247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !46250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.528, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.528)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 8 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.ak, 1073741822
  br i1 %or.cond3.i, label %bb.d, label %bb.e, !prof !41211

bb.d:                                             ; preds = %bb.c
  %i.al = add nuw nsw i32 %i.ak, 1
  %i.am = cmpxchg weak ptr %i.aj, i32 %i.ak, i32 %i.al acquire monotonic, align 4
  %i.an = extractvalue { i32, i1 } %i.am, 1
  br i1 %i.an, label %bb.g, label %bb.e, !prof !15

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock14read_contended17hd5223ca2cc4f107aE(ptr noundef nonnull align 4 %i.aj)
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %.body19, %bb.cd, %bb.j, %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.ao, %bb.f ], [ %i.as, %bb.i ], [ %eh.lpad-body20, %bb.cd ], [ %eh.lpad-body20, %.body19 ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E"(ptr noalias noundef align 8 dereferenceable(24) %i.w) #81
          to label %bb.cj unwind label %bb.ci

bb.f:                                             ; preds = %bb.ce, %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.aq = load atomic i8, ptr %i.ap monotonic, align 4, !noalias !46261
  %.not = icmp eq i8 %i.aq, 0
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 4 uses
  br i1 %.not, label %bb.m, label %bb.h, !prof !15

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !46264
  store ptr %.sink.i.i, ptr %i.v, align 8, !noalias !46264
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.ar, align 8, !noalias !46264
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2171, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @638) #80
          to label %bb.k unwind label %bb.i, !noalias !46268

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46269)
  %.val.i = load ptr, ptr %i.ar, align 8, !alias.scope !46269, !noalias !46268, !nonnull !14, !align !40501, !noundef !14 ; 2 uses
  %i.at = atomicrmw sub ptr %.val.i, i32 1 release, align 4, !noalias !46272
  %i.au = add i32 %i.at, -1                       ; 2 uses
  %i.av = and i32 %i.au, -1073741825
  %or.cond.not.i.i.i = icmp eq i32 %i.av, -2147483648
  br i1 %or.cond.not.i.i.i, label %bb.j, label %.body, !prof !10035

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.val.i, i32 noundef %i.au)
          to label %.body unwind label %bb.l

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !46268
  unreachable

bb.m:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !46273)
  call void @llvm.experimental.noalias.scope.decl(metadata !46276)
  call void @llvm.experimental.noalias.scope.decl(metadata !46278)
  call void @llvm.experimental.noalias.scope.decl(metadata !46280)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !46282
  invoke fastcc void @"_ZN15index_scheduler5queue5tasks47_$LT$impl$u20$index_scheduler..queue..Queue$GT$36get_task_ids_from_authorized_indexes17haf32dc7b36c6c754E"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sink.i.i)
          to label %.noexc17 unwind label %bb.cc

.noexc17:                                         ; preds = %bb.m
  %i.ay = load i64, ptr %i.r, align 8, !range !2843, !noalias !46282, !noundef !14 ; 2 uses
  %.not.i = icmp eq i64 %i.ay, 152
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !46282
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !46282 ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc17
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.443.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.7.0..sroa_idx.i, i64 304, i1 false), !noalias !46285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !46282
  %.sroa.241.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.241.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !46285
  store i64 %i.ay, ptr %0, align 8, !alias.scope !46273, !noalias !46285
  %.sroa.342.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.342.0..sroa_idx.i, align 8, !alias.scope !46273, !noalias !46285
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %"_ZN15index_scheduler5queue5tasks47_$LT$impl$u20$index_scheduler..queue..Queue$GT$33get_tasks_from_authorized_indexes17h52d59eab48e4e0b1E.exit"

bb.o:                                             ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !46282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !46282
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.bb = load i8, ptr %i.ba, align 8, !range !585, !alias.scope !46278, !noalias !46286, !noundef !14
  %i.bc = and i8 %i.bb, 1
  %or.cond.not.i = icmp eq i8 %i.bc, 0
  br i1 %or.cond.not.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !46282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !46282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !46282
  invoke void @"_ZN7roaring6bitmap4iter102_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$9into_iter17hd1387b1d8941035fE"(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc18 unwind label %bb.cc

.noexc18:                                         ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !46282
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !46287
  %i.bd = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !46287 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.q, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h51edf68c8a8bdc18E.exit.i", !prof !586

bb.q:                                             ; preds = %.noexc18
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 128) #80
          to label %.noexc.i unwind label %bb.r, !noalias !46290

.noexc.i:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17h55d10bf5c9a00786E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %i.o), !noalias !46290
  br label %.body19

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h51edf68c8a8bdc18E.exit.i": ; preds = %.noexc18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bd, ptr noundef nonnull align 8 dereferenceable(128) %i.o, i64 128, i1 false), !noalias !46290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !46282
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !46282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !46282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !46282
  invoke void @"_ZN7roaring6bitmap4iter102_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$9into_iter17hd1387b1d8941035fE"(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc21 unwind label %bb.cc

.noexc21:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !46282
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !46291
  %i.bg = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !46291 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.t, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h60fffbe81f188a9bE.exit.i", !prof !586

bb.t:                                             ; preds = %.noexc21
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 128) #80
          to label %.noexc59.i unwind label %bb.u, !noalias !46290

.noexc59.i:                                       ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17h55d10bf5c9a00786E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.q) #81, !noalias !46290
  br label %.body19

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h60fffbe81f188a9bE.exit.i": ; preds = %.noexc21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bg, ptr noundef nonnull align 8 dereferenceable(128) %i.q, i64 128, i1 false), !noalias !46290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !46282
  br label %bb.v

bb.v:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h60fffbe81f188a9bE.exit.i", %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h51edf68c8a8bdc18E.exit.i"
  %.sroa.69.0.i = phi ptr [ @692, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h60fffbe81f188a9bE.exit.i" ], [ @691, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h51edf68c8a8bdc18E.exit.i" ] ; 15 uses
  %.sroa.08.0.i = phi ptr [ %i.bg, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h60fffbe81f188a9bE.exit.i" ], [ %i.bd, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h51edf68c8a8bdc18E.exit.i" ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bl = load i32, ptr %i.bk, align 8, !range !4647, !alias.scope !46278, !noalias !46286, !noundef !14
  %i.bm = trunc nuw i32 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.bo = load i32, ptr %i.bn, align 4, !alias.scope !46278, !noalias !46286
  %4 = zext i32 %i.bo to i64
  %.sroa.018.0.i = select i1 %i.bm, i64 %4, i64 4294967295 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46294)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !46297
  store i64 152, ptr %i.m, align 8, !noalias !46297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !46310
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !46326), !noalias !46329
  %i.bp = icmp eq i64 %.sroa.018.0.i, 0
  br i1 %i.bp, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !14, !noalias !46330, !nonnull !14 ; 2 uses
  %i.bs = invoke { i32, i32 } %i.br(ptr noundef nonnull align 1 %.sroa.08.0.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.ad, !noalias !46346, !inline_history !46347 ; 2 uses

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.w
  %i.bt = extractvalue { i32, i32 } %i.bs, 0
  %i.bu = trunc i32 %i.bt to i1
  br i1 %i.bu, label %bb.x, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.bv = extractvalue { i32, i32 } %i.bs, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.bw = add nsw i64 %.sroa.018.0.i, -1          ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46348
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !46354, !noalias !46355, !noundef !14 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.by, align 8, !alias.scope !46354, !noalias !46355 ; 2 uses
  invoke fastcc void @_ZN15index_scheduler5queue5tasks9TaskQueue8get_task17h27ec9948e8e7a7e8E(ptr noalias noundef align 8 captures(address) dereferenceable(784) %i.e, i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w, i32 noundef %i.bv)
          to label %.noexc2.i.i.i.i.i.i.i.i.i unwind label %bb.ad, !noalias !46358

.noexc2.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.x
  %i.bz = load i64, ptr %i.e, align 8, !range !2840, !noalias !46359, !noundef !14 ; 4 uses
  %i.ca = icmp eq i64 %i.bz, 21
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.ca, label %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.y

"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc2.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %i.cb, i64 344, i1 false), !noalias !46360
  br label %bb.z

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46359
  store i64 136, ptr %i.d, align 8, !noalias !46359
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bz, 20
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ac

"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %i.d, i64 344, i1 false), !noalias !46360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46359
  br label %bb.z

bb.z:                                             ; preds = %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46348
  %i.cc = load i64, ptr %i.m, align 8, !range !2843, !alias.scope !46361, !noalias !46364, !noundef !14
  %i.cd = icmp eq i64 %i.cc, 152
  br i1 %i.cd, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.m)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i" unwind label %bb.ab, !noalias !46368

bb.ab:                                            ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.m, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !46369
  br label %.body.i.i.i.i.i.i.i.i.i

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aa, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.m, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !46370
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %i.cb, i64 776, i1 false), !noalias !46360
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.d)
          to label %bb.ae unwind label %bb.ad, !noalias !46346

bb.ad:                                            ; preds = %bb.ac, %bb.x, %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46348
  %.sroa.4.352..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.4.352..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(432) %i.bx, i64 432, i1 false), !noalias !46371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !46371
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.8.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 776, i1 false), !noalias !46372
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !46310
  store i64 %i.bz, ptr %i.k, align 8, !noalias !46310
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.8.i.i.i.i.i.i.i.i.i, i64 776, i1 false), !noalias !46310
  %i.cg = load i64, ptr %i.m, align 8, !range !2843, !noalias !46373, !noundef !14
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.cg, 152
  %i.ch = icmp eq i64 %i.bw, 0                    ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.ch, %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !46377
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !invariant.load !14, !noalias !46384, !nonnull !14
  invoke void %i.cj(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 %.sroa.08.0.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !46387, !inline_history !46388

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !46377
  br label %bb.ak

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !46310
  %i.ck = load ptr, ptr %.sroa.69.0.i, align 8, !invariant.load !14, !noalias !46310 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  invoke void %i.ck(ptr noundef nonnull %.sroa.08.0.i)
          to label %bb.ah unwind label %bb.ai, !noalias !46387

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !range !9, !invariant.load !14, !noalias !46310 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !range !3999, !invariant.load !14, !noalias !46310 ; 2 uses
  %i.cp = icmp ult i64 %i.co, -9223372036854775807
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp eq i64 %i.cm, 0
  br i1 %i.cq, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h1ff7327e1ef2179bE.exit.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ah
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.i, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) %i.co) #79, !noalias !46387
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h1ff7327e1ef2179bE.exit.i.i.i.i.i"

bb.ai:                                            ; preds = %bb.ag
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !range !9, !invariant.load !14, !noalias !46310 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !range !3999, !invariant.load !14, !noalias !46310 ; 2 uses
  %i.cw = icmp ult i64 %i.cv, -9223372036854775807
  call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp eq i64 %i.ct, 0
  br i1 %i.cx, label %.body.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ai
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.i, i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) %i.cv) #79, !noalias !46387
  br label %.body.i.i.i.i.i

bb.aj:                                            ; preds = %bb.al, %bb.af
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef align 8 dereferenceable(784) %i.k) #81
          to label %.body.i.i.i.i.i.i.i.i.i unwind label %bb.bd, !noalias !46387

bb.ak:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i, %bb.ae
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !46389
  %i.cz = call noundef align 8 dereferenceable_or_null(3136) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 3136, i64 noundef range(i64 1, 9) 8) #79, !noalias !46389 ; 5 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 3136, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #80
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !46387

.noexc8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  store i64 %i.bz, ptr %i.cz, align 8, !noalias !46387
  %.sroa.8.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.8.0..sroa_idx2.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.8.i.i.i.i.i.i.i.i.i, i64 776, i1 false), !noalias !46387
  store i64 4, ptr %i.l, align 8, !noalias !46310
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %i.cz, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46310
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !46310
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !46394)
  call void @llvm.experimental.noalias.scope.decl(metadata !46397)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  br i1 %i.ch, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.am
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.4.352..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 32
  br label %bb.an

bb.an:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.de = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.el, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.df = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.en, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 7 uses
  %.sroa.11.019.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.dk, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !46400), !noalias !46403
  %i.dg = invoke { i32, i32 } %i.br(ptr noundef nonnull align 1 %.sroa.08.0.i)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i unwind label %bb.au, !noalias !46387, !inline_history !46347 ; 2 uses

.noexc9.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.an
  %i.dh = extractvalue { i32, i32 } %i.dg, 0
  %i.di = trunc i32 %i.dh to i1
  br i1 %i.di, label %bb.ao, label %.loopexit.i.i.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.dj = extractvalue { i32, i32 } %i.dg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.dk = add nsw i64 %.sroa.11.019.i.i.i.i.i.i.i.i.i.i, -1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !46404
  invoke fastcc void @_ZN15index_scheduler5queue5tasks9TaskQueue8get_task17h27ec9948e8e7a7e8E(ptr noalias noundef align 8 captures(address) dereferenceable(784) %i.g, i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w, i32 noundef %i.dj)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i unwind label %bb.au, !noalias !46425

.noexc10.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ao
  %i.dl = load i64, ptr %i.g, align 8, !range !2840, !noalias !46426, !noundef !14 ; 4 uses
  %i.dm = icmp eq i64 %i.dl, 21
  br i1 %i.dm, label %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ap

"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %i.dc, i64 344, i1 false), !noalias !46429
  br label %bb.aq

bb.ap:                                            ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !46426
  store i64 136, ptr %i.f, align 8, !noalias !46426
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dl, 20
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.at

"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %i.f, i64 344, i1 false), !noalias !46429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46426
  br label %bb.aq

bb.aq:                                            ; preds = %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46404
  %i.dn = load i64, ptr %i.m, align 8, !range !2843, !alias.scope !46430, !noalias !46433, !noundef !14
  %i.do = icmp eq i64 %i.dn, 152
  br i1 %i.do, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.m)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.as, !noalias !46437

bb.as:                                            ; preds = %bb.ar
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.m, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !46438
  br label %.body11.i.i.i.i.i.i.i.i.i.i

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ar, %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.m, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !46439
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %i.dc, i64 776, i1 false), !noalias !46429
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.f)
          to label %bb.av unwind label %bb.au, !noalias !46387

.body11.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.bb, %bb.au, %bb.as
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ep, %bb.bb ], [ %i.dq, %bb.au ], [ %i.dp, %bb.as ]
  invoke fastcc void @"_ZN4core3ptr565drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$u32$GT$$GT$$C$index_scheduler..queue..tasks..TaskQueue..get_existing_tasks$LT$core..iter..adapters..take..Take$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$u32$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$index_scheduler..error..Error$GT$$GT$$GT$17h22810dd2c5855ce5E"(ptr nonnull %.sroa.08.0.i, ptr nonnull %.sroa.69.0.i) #81
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.bc, !noalias !46440

bb.au:                                            ; preds = %bb.at, %bb.ao, %bb.an
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.4.352..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(432) %i.db, i64 432, i1 false), !noalias !46443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !46443
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.8.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 776, i1 false), !noalias !46444
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !46445
  store i64 %i.dl, ptr %i.i, align 8, !noalias !46445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.8.i.i.i.i.i.i.i.i.i.i, i64 776, i1 false), !noalias !46445
  %i.dr = icmp samesign ult i64 %i.df, 11764505149049459
  call void @llvm.assume(i1 %i.dr)
  %i.ds = load i64, ptr %i.l, align 8, !range !9, !alias.scope !46403, !noalias !46446, !noundef !14
  %i.dt = icmp eq i64 %i.df, %i.ds
  br i1 %i.dt, label %bb.az, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %.noexc9.i.i.i.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i", %bb.am
  %.sroa.9.0.copyload17.i.i.i.i.i = phi i64 [ 1, %bb.am ], [ %i.df, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.df, %.noexc9.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.018.0.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i.i)
  %i.du = load ptr, ptr %.sroa.69.0.i, align 8, !invariant.load !14, !noalias !46445 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  invoke void %i.du(ptr noundef nonnull %.sroa.08.0.i)
          to label %bb.ax unwind label %bb.ay, !noalias !46440

bb.ax:                                            ; preds = %bb.aw, %.loopexit.i.i.i.i.i.i.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !range !9, !invariant.load !14, !noalias !46445 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !range !3999, !invariant.load !14, !noalias !46445 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, -9223372036854775807
  call void @llvm.assume(i1 %i.dz)
  %i.ea = icmp eq i64 %i.dw, 0
  br i1 %i.ea, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hdc9b1211a19dbaf5E.exit.i.i.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ax
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.i, i64 noundef %i.dw, i64 noundef range(i64 1, -9223372036854775807) %i.dy) #79, !noalias !46440
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hdc9b1211a19dbaf5E.exit.i.i.i.i.i.i.i.i.i.i"

bb.ay:                                            ; preds = %bb.aw
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !range !9, !invariant.load !14, !noalias !46445 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !range !3999, !invariant.load !14, !noalias !46445 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, -9223372036854775807
  call void @llvm.assume(i1 %i.eg)
  %i.eh = icmp eq i64 %i.ed, 0
  br i1 %i.eh, label %.body.i.i.i.i.i.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ay
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.i, i64 noundef %i.ed, i64 noundef range(i64 1, -9223372036854775807) %i.ef) #79, !noalias !46440
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.av
  %i.ei = load i64, ptr %i.m, align 8, !range !2843, !noalias !46447, !noundef !14
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ei, 152
  %i.ej = icmp eq i64 %i.dk, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.ej, %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !46451
  %i.ek = load ptr, ptr %i.dd, align 8, !invariant.load !14, !noalias !46458, !nonnull !14
  invoke void %i.ek(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 %.sroa.08.0.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bb, !noalias !46440, !inline_history !46388

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46451
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i", %bb.av
  %i.el = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i" ], [ %i.de, %bb.av ] ; 2 uses
  %i.em = getelementptr inbounds nuw [784 x i8], ptr %i.el, i64 %i.df ; 2 uses
  store i64 %i.dl, ptr %i.em, align 8, !noalias !46440
  %.sroa.8.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.8.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.8.i.i.i.i.i.i.i.i.i.i, i64 776, i1 false), !noalias !46440
  %i.en = add nuw nsw i64 %i.df, 1                ; 2 uses
  store i64 %i.en, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !46403, !noalias !46446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !46445
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.eo = icmp eq i64 %i.dk, 0
  br i1 %i.eo, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.an

bb.bb:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ba
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef align 8 dereferenceable(784) %i.i) #81
          to label %.body11.i.i.i.i.i.i.i.i.i.i unwind label %bb.bc, !noalias !46440

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %bb.az
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.df, i64 noundef 1, i64 noundef 8, i64 noundef 784)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i" unwind label %bb.bb, !noalias !46461

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !46403, !noalias !46446
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bc:                                            ; preds = %bb.bb, %.body11.i.i.i.i.i.i.i.i.i.i
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !46440
  unreachable

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ay, %.body11.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i, %.body11.i.i.i.i.i.i.i.i.i.i ], [ %i.eb, %bb.ay ], [ %i.eb, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  invoke void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..tasks..Task$GT$$GT$17hba0047fdac754a22E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #81
          to label %.body.i.i.i.i.i unwind label %bb.bd, !noalias !46387

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hdc9b1211a19dbaf5E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ax
  %.sroa.0.0.copyload13.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !46462
  %.sroa.7.0.copyload15.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !46310
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h1ff7327e1ef2179bE.exit.i.i.i.i.i"

bb.bd:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i, %bb.aj
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !46387
  unreachable

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %bb.aj, %bb.ad, %bb.ab
  %.pn.ph.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cy, %bb.aj ], [ %i.cf, %bb.ad ], [ %i.ce, %bb.ab ]
  invoke fastcc void @"_ZN4core3ptr565drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$u32$GT$$GT$$C$index_scheduler..queue..tasks..TaskQueue..get_existing_tasks$LT$core..iter..adapters..take..Take$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$u32$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$index_scheduler..error..Error$GT$$GT$$GT$17h22810dd2c5855ce5E"(ptr nonnull %.sroa.08.0.i, ptr nonnull %.sroa.69.0.i) #81
          to label %.body.i.i.i.i.i unwind label %bb.bd, !noalias !46387

.body.i.i.i.i.i:                                  ; preds = %.body.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ai
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn.ph.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i ], [ %i.cr, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ], [ %i.cr, %bb.ai ] ; 2 uses
  %i.es = load i64, ptr %i.m, align 8, !range !2843, !noalias !46297, !noundef !14
  %.not.i.i.i.i.i = icmp eq i64 %i.es, 152
  br i1 %.not.i.i.i.i.i, label %.body19, label %bb.bm

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h1ff7327e1ef2179bE.exit.i.i.i.i.i": ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hdc9b1211a19dbaf5E.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ah
end_hunk_0
begin_hunk_1_@_ZN15index_scheduler14IndexScheduler35get_batches_from_authorized_indexes17h3a51b6755a1d7457E:bb.a
  store i64 127, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit"

bb.c:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %i.q, align 8, !noalias !46695, !noundef !14
  store i64 0, ptr %i.ab, align 8, !alias.scope !46690, !noalias !46698
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.u, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !46690, !noalias !46698
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ad, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !alias.scope !46690, !noalias !46698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !46695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.527, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !46685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !46688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.527, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 8 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.ah, 1073741822
  br i1 %or.cond3.i, label %bb.d, label %bb.e, !prof !41211

bb.d:                                             ; preds = %bb.c
  %i.ai = add nuw nsw i32 %i.ah, 1
  %i.aj = cmpxchg weak ptr %i.ag, i32 %i.ah, i32 %i.ai acquire monotonic, align 4
  %i.ak = extractvalue { i32, i1 } %i.aj, 1
  br i1 %i.ak, label %bb.g, label %bb.e, !prof !15

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock14read_contended17hd5223ca2cc4f107aE(ptr noundef nonnull align 4 %i.ag)
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %.body19, %bb.bk, %bb.j, %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %i.al, %bb.f ], [ %i.ap, %bb.i ], [ %eh.lpad-body20, %bb.bk ], [ %eh.lpad-body20, %.body19 ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E"(ptr noalias noundef align 8 dereferenceable(24) %i.t) #81
          to label %bb.bq unwind label %bb.bp

bb.f:                                             ; preds = %bb.bl, %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.an = load atomic i8, ptr %i.am monotonic, align 4, !noalias !46699
  %.not = icmp eq i8 %i.an, 0
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 3 uses
  br i1 %.not, label %bb.m, label %bb.h, !prof !15

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !46702
  store ptr %.sink.i.i, ptr %i.s, align 8, !noalias !46702
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.ao, align 8, !noalias !46702
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2171, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @640) #80
          to label %bb.k unwind label %bb.i, !noalias !46706

bb.i:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46707)
  %.val.i = load ptr, ptr %i.ao, align 8, !alias.scope !46707, !noalias !46706, !nonnull !14, !align !40501, !noundef !14 ; 2 uses
  %i.aq = atomicrmw sub ptr %.val.i, i32 1 release, align 4, !noalias !46710
  %i.ar = add i32 %i.aq, -1                       ; 2 uses
  %i.as = and i32 %i.ar, -1073741825
  %or.cond.not.i.i.i = icmp eq i32 %i.as, -2147483648
  br i1 %or.cond.not.i.i.i, label %bb.j, label %.body, !prof !10035

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.val.i, i32 noundef %i.ar)
          to label %.body unwind label %bb.l

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !46706
  unreachable

bb.m:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !46711)
  call void @llvm.experimental.noalias.scope.decl(metadata !46714)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !46716
  invoke fastcc void @"_ZN15index_scheduler5queue7batches47_$LT$impl$u20$index_scheduler..queue..Queue$GT$37get_batch_ids_from_authorized_indexes17h472406cf3282bd02E"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sink.i.i)
          to label %.noexc17 unwind label %bb.bj

.noexc17:                                         ; preds = %bb.m
  %i.av = load i64, ptr %i.o, align 8, !range !2843, !noalias !46716, !noundef !14 ; 2 uses
  %.not.i = icmp eq i64 %i.av, 152
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !46716
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !46716 ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc17
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.439.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.7.0..sroa_idx.i, i64 304, i1 false), !noalias !46721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !46716
  %.sroa.237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.237.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !46721
  store i64 %i.av, ptr %0, align 8, !alias.scope !46711, !noalias !46721
  %.sroa.338.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.338.0..sroa_idx.i, align 8, !alias.scope !46711, !noalias !46721
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %"_ZN15index_scheduler5queue7batches47_$LT$impl$u20$index_scheduler..queue..Queue$GT$35get_batches_from_authorized_indexes17ha1d315752d819ea8E.exit"

bb.o:                                             ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !46716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !46716
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ay = load i8, ptr %i.ax, align 8, !range !585, !alias.scope !46714, !noalias !46722, !noundef !14
  %i.az = and i8 %i.ay, 1
  %or.cond.not.i = icmp eq i8 %i.az, 0
  br i1 %or.cond.not.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !46716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !46716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !46716
  invoke void @"_ZN7roaring6bitmap4iter102_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$9into_iter17hd1387b1d8941035fE"(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc18 unwind label %bb.bj

.noexc18:                                         ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !46716
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !46723
  %i.ba = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !46723 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h51edf68c8a8bdc18E.exit.i", !prof !586

bb.q:                                             ; preds = %.noexc18
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 128) #80
          to label %.noexc.i unwind label %bb.r, !noalias !46726

.noexc.i:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17h55d10bf5c9a00786E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(128) %i.l), !noalias !46726
  br label %.body19

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h51edf68c8a8bdc18E.exit.i": ; preds = %.noexc18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ba, ptr noundef nonnull align 8 dereferenceable(128) %i.l, i64 128, i1 false), !noalias !46726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !46716
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !46716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !46716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !46716
  invoke void @"_ZN7roaring6bitmap4iter102_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$9into_iter17hd1387b1d8941035fE"(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc21 unwind label %bb.bj

.noexc21:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !46716
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !46727
  %i.bd = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !46727 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.t, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h60fffbe81f188a9bE.exit.i", !prof !586

bb.t:                                             ; preds = %.noexc21
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 128) #80
          to label %.noexc53.i unwind label %bb.u, !noalias !46726

.noexc53.i:                                       ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr52drop_in_place$LT$roaring..bitmap..iter..IntoIter$GT$17h55d10bf5c9a00786E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.n) #81, !noalias !46726
  br label %.body19

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h60fffbe81f188a9bE.exit.i": ; preds = %.noexc21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bd, ptr noundef nonnull align 8 dereferenceable(128) %i.n, i64 128, i1 false), !noalias !46726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !46716
  br label %bb.v

bb.v:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h60fffbe81f188a9bE.exit.i", %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h51edf68c8a8bdc18E.exit.i"
  %.sroa.69.0.i = phi ptr [ @692, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h60fffbe81f188a9bE.exit.i" ], [ @691, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h51edf68c8a8bdc18E.exit.i" ]
  %.sroa.08.0.i = phi ptr [ %i.bd, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h60fffbe81f188a9bE.exit.i" ], [ %i.ba, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h51edf68c8a8bdc18E.exit.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bi = load i32, ptr %i.bh, align 8, !range !4647, !alias.scope !46714, !noalias !46722, !noundef !14
  %i.bj = trunc nuw i32 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.bl = load i32, ptr %i.bk, align 4, !alias.scope !46714, !noalias !46722
  %4 = zext i32 %i.bl to i64
  %.sroa.018.0.i = select i1 %i.bj, i64 %4, i64 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !46730
  store i64 152, ptr %i.j, align 8, !noalias !46730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !46746
  store ptr %.sroa.08.0.i, ptr %i.i, align 8, !alias.scope !46756, !noalias !46760
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store ptr %.sroa.69.0.i, ptr %.sroa.461.0..sroa_idx.i, align 8, !alias.scope !46756, !noalias !46760
  %.sroa.5.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 %.sroa.018.0.i, ptr %.sroa.5.0..sroa_idx62.i, align 8, !alias.scope !46756, !noalias !46760
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %.sink.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !46756, !noalias !46761
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.bg, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !46756, !noalias !46761
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.t, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !46756, !noalias !46761
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !46756, !noalias !46762
  call void @llvm.experimental.noalias.scope.decl(metadata !46763)
  call void @llvm.experimental.noalias.scope.decl(metadata !46766)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !46769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !46769
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d75bbbc53c488f6E"(ptr noalias noundef align 8 captures(address) dereferenceable(1264) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %bb.x unwind label %bb.w, !noalias !46772

bb.w:                                             ; preds = %bb.v
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.x:                                             ; preds = %bb.v
  %i.bn = load i64, ptr %i.g, align 8, !range !802, !noalias !46769, !noundef !14
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bn, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !46769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1264) %i.f, ptr noundef nonnull align 8 dereferenceable(1264) %i.g, i64 1264, i1 false), !noalias !46769
  call void @llvm.experimental.noalias.scope.decl(metadata !46773)
  %i.bo = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !46776, !noalias !46777, !nonnull !14, !align !240, !noundef !14
  %i.bp = load i64, ptr %i.bo, align 8, !range !2843, !noalias !46779, !noundef !14
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bp, 152
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !46780)
  call void @llvm.experimental.noalias.scope.decl(metadata !46783)
  %i.bq = load i64, ptr %.sroa.5.0..sroa_idx62.i, align 8, !alias.scope !46786, !noalias !46787, !noundef !14
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46790
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !46786, !noalias !46787, !nonnull !14, !align !584, !noundef !14
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.461.0..sroa_idx.i, align 8, !alias.scope !46786, !noalias !46787, !nonnull !14, !align !240, !noundef !14
  %i.bs = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !14, !noalias !46791, !nonnull !14
  invoke void %i.bt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.af, !noalias !46794, !inline_history !46795

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46790
  br label %bb.ag

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46769
  %.val6.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !46796, !noalias !46797 ; 5 uses
  %.val7.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.461.0..sroa_idx.i, align 8, !alias.scope !46796, !noalias !46797, !nonnull !14, !align !240, !noundef !14 ; 5 uses
  %i.bu = load ptr, ptr %.val7.i.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !14, !noalias !46794 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i.i.i.i.i.i.i.i) ]
  invoke void %i.bu(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ad unwind label %bb.ae, !noalias !46794

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bv = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !9, !invariant.load !14, !noalias !46794 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !range !3999, !invariant.load !14, !noalias !46794 ; 2 uses
  %i.bz = icmp ult i64 %i.by, -9223372036854775807
  call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp eq i64 %i.bw, 0
  br i1 %i.ca, label %bb.az, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) %i.by) #79, !noalias !46794
  br label %bb.az

bb.ae:                                            ; preds = %bb.ac
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !range !9, !invariant.load !14, !noalias !46794 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !3999, !invariant.load !14, !noalias !46794 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, -9223372036854775807
  call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp eq i64 %i.cd, 0
  br i1 %i.ch, label %.body.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ae
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) %i.cf) #79, !noalias !46794
  br label %.body.i.i.i.i.i

bb.af:                                            ; preds = %bb.ah, %bb.aa
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$meilisearch_types..batches..Batch$GT$17h3d5ad313a30e270bE"(ptr noalias noundef align 8 dereferenceable(1264) %i.f) #81
          to label %bb.ay unwind label %bb.ax, !noalias !46794

bb.ag:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i, %bb.z, %bb.y
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !46798
  %i.cj = call noundef align 8 dereferenceable_or_null(1264) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1264, i64 noundef range(i64 1, 9) 8) #79, !noalias !46798 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 1264, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #80
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i unwind label %bb.af, !noalias !46794

.noexc8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1264) %i.cj, ptr noundef nonnull align 8 dereferenceable(1264) %i.g, i64 1264, i1 false), !noalias !46794
  store i64 1, ptr %i.h, align 8, !noalias !46769
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46769
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !noalias !46797
  call void @llvm.experimental.noalias.scope.decl(metadata !46803)
  call void @llvm.experimental.noalias.scope.decl(metadata !46806)
  call void @llvm.experimental.noalias.scope.decl(metadata !46808)
  call void @llvm.experimental.noalias.scope.decl(metadata !46811)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf94c0d1e3033202eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ai
  %.sroa.7.0.copyload15.i.i.i.i.i = phi ptr [ %i.dn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf94c0d1e3033202eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cj, %bb.ai ] ; 2 uses
  %.sroa.9.0.copyload17.i.i.i.i.i = phi i64 [ %i.dp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf94c0d1e3033202eE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 1, %bb.ai ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46813
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d75bbbc53c488f6E"(ptr noalias noundef align 8 captures(address) dereferenceable(1264) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %bb.am unwind label %bb.al, !noalias !46814

bb.ak:                                            ; preds = %bb.av, %bb.al
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dq, %bb.av ], [ %i.co, %bb.al ]
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !46815, !noalias !46816
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cn, align 8, !alias.scope !46815, !noalias !46816, !nonnull !14, !align !240, !noundef !14
  invoke fastcc void @"_ZN4core3ptr570drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$u32$GT$$GT$$C$index_scheduler..queue..batches..BatchQueue..get_existing_batches$LT$core..iter..adapters..take..Take$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$u32$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$index_scheduler..error..Error$GT$$GT$$GT$17h75d162aef4378c9cE"(ptr %.val5.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i.i) #81
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.aw, !noalias !46817

bb.al:                                            ; preds = %bb.aj
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.am:                                            ; preds = %bb.aj
  %i.cp = load i64, ptr %i.c, align 8, !range !802, !noalias !46813, !noundef !14
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cp, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1264) %i.b, ptr noundef nonnull align 8 dereferenceable(1264) %i.c, i64 1264, i1 false), !noalias !46813
  %i.cq = icmp samesign ult i64 %.sroa.9.0.copyload17.i.i.i.i.i, 7296971548144602
  call void @llvm.assume(i1 %i.cq)
  %i.cr = load i64, ptr %i.h, align 8, !range !9, !alias.scope !46818, !noalias !46819, !noundef !14
  %i.cs = icmp eq i64 %.sroa.9.0.copyload17.i.i.i.i.i, %i.cr
  br i1 %i.cs, label %bb.as, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf94c0d1e3033202eE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46813
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !46815, !noalias !46816 ; 5 uses
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cn, align 8, !alias.scope !46815, !noalias !46816, !nonnull !14, !align !240, !noundef !14 ; 5 uses
  %i.ct = load ptr, ptr %.val4.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !14, !noalias !46817 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke void %i.ct(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.aq unwind label %bb.ar, !noalias !46817

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cu = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !range !9, !invariant.load !14, !noalias !46817 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !range !3999, !invariant.load !14, !noalias !46817 ; 2 uses
  %i.cy = icmp ult i64 %i.cx, -9223372036854775807
  call void @llvm.assume(i1 %i.cy)
  %i.cz = icmp eq i64 %i.cv, 0
end_hunk_1
begin_hunk_2_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6b767040f5eb224cE":bb.a
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !208191, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !208191
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h42fc347728cfe1c0E.exit.i.i"

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !range !1313, !noalias !208191, !noundef !14
  %i.ar = trunc nuw i8 %i.aq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !208191
  br i1 %i.ar, label %bb.k, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h42fc347728cfe1c0E.exit.i.i"

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.j, align 8, !alias.scope !208195, !noalias !208196, !nonnull !14, !align !240, !noundef !14
  %i.at = tail call fastcc { i64, ptr } @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u64$GT$11deserialize17hd00ecc51c8de0221E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.as), !noalias !208197 ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.at, 0
  %i.av = extractvalue { i64, ptr } %i.at, 1
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h42fc347728cfe1c0E.exit.i.i"

"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h42fc347728cfe1c0E.exit.i.i": ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.3.0.i.i.i = phi ptr [ %i.av, %bb.k ], [ %i.ao, %bb.i ], [ null, %bb.j ] ; 4 uses
  %.sroa.0.0.i.i.i = phi i64 [ %i.au, %bb.k ], [ 1, %bb.i ], [ 0, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !208178
  %i.aw = load i8, ptr %i.z, align 8, !range !1313, !alias.scope !208178, !noundef !14
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !208178
  store i64 24, ptr %i.l, align 8, !noalias !208178
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !208178
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17hf0821f6b430b2da1E.exit"

bb.m:                                             ; preds = %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h42fc347728cfe1c0E.exit.i.i"
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !208178, !noundef !14
  %i.bb = add i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 1, !alias.scope !208178
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h42fc347728cfe1c0E.exit.i.i"
  %i.bc = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hf374ac2f2ec1a968E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.p unwind label %bb.o       ; 8 uses

bb.o:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..result..Result$LT$meilisearch_types..tasks..network..NetworkTopologyStats$C$serde_json..error..Error$GT$$GT$17h7c97a54232d7c2dcE"(i64 %.sroa.0.0.i.i.i, ptr %.sroa.3.0.i.i.i) #81
          to label %common.resume.i.i unwind label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.be = trunc nuw i64 %.sroa.0.0.i.i.i to i1
  %.not44.i.i = icmp eq ptr %i.bc, null           ; 2 uses
  br i1 %i.be, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not44.i.i, label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17hf0821f6b430b2da1E.exit", label %.thread23.i.i, !prof !12002

bb.r:                                             ; preds = %bb.p
  br i1 %.not44.i.i, label %.thread23.i.i, label %bb.t

bb.s:                                             ; preds = %bb.at, %bb.o
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208201)
  %i.bg = load i64, ptr %i.bc, align 8, !range !3586, !alias.scope !208204, !noalias !208205, !noundef !14
  switch i64 %i.bg, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" [
    i64 0, label %bb.u
    i64 1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !208204, !noalias !208205, !noundef !14 ; 2 uses
  %i.bi = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.bi, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !208204, !noalias !208205, !nonnull !14, !noundef !14
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !208208
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i"

bb.v:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bk)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" unwind label %bb.w, !noalias !208205

common.resume.i.i:                                ; preds = %bb.ba, %bb.at, %bb.w, %bb.o
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.bl, %bb.w ], [ %i.em, %bb.ba ], [ %i.ef, %bb.at ], [ %i.bd, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.w:                                             ; preds = %bb.v
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef 40, i64 noundef 8) #79, !noalias !208205
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i": ; preds = %bb.v, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.u, %bb.t
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef 40, i64 noundef 8) #79, !noalias !208205
  br label %.thread23.i.i

bb.x:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !208178, !noundef !14
  %i.bo = add i8 %i.bn, -1                        ; 2 uses
  store i8 %i.bo, ptr %i.bm, align 1, !alias.scope !208178
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.aq, label %bb.y, !prof !121

bb.y:                                             ; preds = %bb.x, %bb.f
  %i.bq = add i64 %i.t, 1
  store i64 %i.bq, ptr %i.n, align 8, !alias.scope !208209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !208178
  store ptr %0, ptr %i.h, align 8, !noalias !208212
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 1, ptr %i.br, align 8, !noalias !208212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !208215
  call fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17hbff30297a975e291E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !208222
  %i.bs = load i8, ptr %i.g, align 8, !range !1313, !noalias !208215, !noundef !14
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %._crit_edge.i.i.i, label %.lr.ph.i28.i.i

.lr.ph.i28.i.i:                                   ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.z

._crit_edge.i.i.i:                                ; preds = %bb.ap, %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !208223, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !208223
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"

bb.z:                                             ; preds = %bb.ap, %.lr.ph.i28.i.i
  %.sroa.01.069.i.i.i = phi i64 [ 0, %.lr.ph.i28.i.i ], [ %.sroa.01.1.i.i.i, %bb.ap ] ; 3 uses
  %.sroa.7.068.i.i.i = phi i64 [ undef, %.lr.ph.i28.i.i ], [ %.sroa.7.1.i.i.i, %bb.ap ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208226)
  call void @llvm.experimental.noalias.scope.decl(metadata !208227)
  %i.by = load i8, ptr %i.bu, align 1, !range !1313, !noalias !208223, !noundef !14
  %i.bz = trunc nuw i8 %i.by to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !208223
  br i1 %i.bz, label %bb.aa, label %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread32.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ca = load ptr, ptr %i.h, align 8, !alias.scope !208228, !noalias !208229, !nonnull !14, !align !240, !noundef !14 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208230)
  call void @llvm.experimental.noalias.scope.decl(metadata !208233)
  call void @llvm.experimental.noalias.scope.decl(metadata !208236)
  call void @llvm.experimental.noalias.scope.decl(metadata !208239)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 40 ; 8 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !208242, !noalias !208245, !noundef !14
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.cc, align 8, !alias.scope !208242, !noalias !208245
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 0, ptr %i.cf, align 8, !alias.scope !208250, !noalias !208245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !208251
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ca), !noalias !208245
  %i.cg = load i64, ptr %i.f, align 8, !range !802, !noalias !208251, !noundef !14
  %i.ch = icmp eq i64 %i.cg, 2
  %i.ci = load ptr, ptr %i.bv, align 8, !noalias !208251 ; 5 uses
  br i1 %i.ch, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !208251
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, 14
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.i.i.i, label %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread36.i.i.i

_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread36.i.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !208251
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !208251
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"

_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.i.i.i: ; preds = %bb.ab
  %i.cj = load i64, ptr %i.ci, align 1
  %i.ck = xor i64 %i.cj, 7165020730159427437
  %i.cl = getelementptr i8, ptr %i.ci, i64 6
  %i.cm = load i64, ptr %i.cl, align 1
  %i.cn = xor i64 %i.cm, 8319395793567310703
  %i.co = or i64 %i.ck, %i.cn
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %.not.i.i.i = icmp eq i32 %i.cq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !208251
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ad

_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread32.i.i.i: ; preds = %bb.z
  %i.cr = trunc nuw i64 %.sroa.01.069.i.i.i to i1
  %1 = inttoptr i64 %.sroa.7.068.i.i.i to ptr
  %2 = select i1 %i.cr, ptr %1, ptr null
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"

bb.ad:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.i.i.i, %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread36.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !208252)
  call void @llvm.experimental.noalias.scope.decl(metadata !208255)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !208258, !noalias !208261, !noundef !14 ; 2 uses
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.cc, align 8, !alias.scope !208264, !noalias !208265 ; 2 uses
  %i.cu = icmp ult i64 %.promoted.i.i.i.i.i.i.i, %i.ct
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ad
  %i.cv = load ptr, ptr %i.cb, align 8, !alias.scope !208258, !noalias !208261, !nonnull !14, !align !584, !noundef !14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i
  %i.cw = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cz, %bb.af ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208266)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !208267, !noundef !14
  switch i8 %i.cy, label %bb.ag [
    i8 32, label %bb.af
    i8 10, label %bb.af
    i8 9, label %bb.af
    i8 13, label %bb.af
    i8 58, label %_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i
  ], !prof !3649

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %i.cz = add i64 %i.cw, 1                        ; 3 uses
  store i64 %i.cz, ptr %i.cc, align 8, !alias.scope !208268, !noalias !208265
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cz, %i.ct
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.ae

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.ad, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !208271
  store i64 3, ptr %i.d, align 8, !noalias !208271
  %i.da = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !208271
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !208271
  store i64 6, ptr %i.e, align 8, !noalias !208271
  %i.db = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !208271
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"

_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i: ; preds = %bb.ae
  %i.dc = add i64 %i.cw, 1
  store i64 %i.dc, ptr %i.cc, align 8, !alias.scope !208272
  %i.dd = call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$12ignore_value17h54b10c2e8510c279E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ca) ; 2 uses
  %.not21.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not21.i.i.i, label %bb.ap, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"

bb.ah:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.i.i.i
  %.not20.i.i.i = icmp eq i64 %.sroa.01.069.i.i.i, 0
  br i1 %.not20.i.i.i, label %bb.aj, label %bb.ai, !prof !15

bb.ai:                                            ; preds = %bb.ah
  %i.de = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17h70a3ad7d1a67bdeeE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1435, i64 noundef 14)
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !208275)
  call void @llvm.experimental.noalias.scope.decl(metadata !208278)
  %i.df = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !208281, !noalias !208284, !noundef !14 ; 2 uses
  %.promoted.i.i.i.i23.i.i.i = load i64, ptr %i.cc, align 8, !alias.scope !208287, !noalias !208288 ; 2 uses
  %i.dh = icmp ult i64 %.promoted.i.i.i.i23.i.i.i, %i.dg
  br i1 %i.dh, label %.lr.ph.i.i.i.i25.i.i.i, label %.loopexit.i.i.i24.i.i.i

.lr.ph.i.i.i.i25.i.i.i:                           ; preds = %bb.aj
  %i.di = load ptr, ptr %i.cb, align 8, !alias.scope !208281, !noalias !208284, !nonnull !14, !align !584, !noundef !14
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i25.i.i.i
  %i.dj = phi i64 [ %.promoted.i.i.i.i23.i.i.i, %.lr.ph.i.i.i.i25.i.i.i ], [ %i.dm, %bb.al ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208289)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !noalias !208290, !noundef !14
  switch i8 %i.dl, label %bb.am [
    i8 32, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
    i8 13, label %bb.al
    i8 58, label %bb.ao
  ], !prof !3649

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.dm = add i64 %i.dj, 1                        ; 3 uses
  store i64 %i.dm, ptr %i.cc, align 8, !alias.scope !208291, !noalias !208288
  %exitcond.not.i.i.i.i26.i.i.i = icmp eq i64 %i.dm, %i.dg
  br i1 %exitcond.not.i.i.i.i26.i.i.i, label %.loopexit.i.i.i24.i.i.i, label %bb.ak

.loopexit.i.i.i24.i.i.i:                          ; preds = %bb.al, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !208294
  store i64 3, ptr %i.b, align 8, !noalias !208294
  %i.dn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !208294
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !208294
  store i64 6, ptr %i.c, align 8, !noalias !208294
  %i.do = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !208294
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.loopexit.i.i.i24.i.i.i
  %.sroa.0.0.i.ph.i.i.i.i.i = phi ptr [ %i.dn, %.loopexit.i.i.i24.i.i.i ], [ %i.do, %bb.am ]
  %i.dp = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i.i.i.i, 1
  br label %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i

bb.ao:                                            ; preds = %bb.ak
  %i.dq = add i64 %i.dj, 1
  store i64 %i.dq, ptr %i.cc, align 8, !alias.scope !208295
  %i.dr = call fastcc { i64, ptr } @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u64$GT$11deserialize17hd00ecc51c8de0221E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ca)
  br label %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i

_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i: ; preds = %bb.ao, %bb.an
  %.merged.i.i.i.i.i = phi { i64, ptr } [ %i.dp, %bb.an ], [ %i.dr, %bb.ao ] ; 2 uses
  %i.ds = extractvalue { i64, ptr } %.merged.i.i.i.i.i, 0
  %i.dt = extractvalue { i64, ptr } %.merged.i.i.i.i.i, 1 ; 2 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = trunc nuw i64 %i.ds to i1
  br i1 %i.dv, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i", label %bb.ap

bb.ap:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i
  %.sroa.7.1.i.i.i = phi i64 [ %i.du, %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i ], [ %.sroa.7.068.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i ]
  %.sroa.01.1.i.i.i = phi i64 [ 1, %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i ], [ %.sroa.01.069.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !208298
  call fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17hbff30297a975e291E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !208222
  %i.dw = load i8, ptr %i.g, align 8, !range !1313, !noalias !208298, !noundef !14
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %._crit_edge.i.i.i, label %bb.z

"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i": ; preds = %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i, %bb.ai, %bb.ag, %.loopexit.i.i.i.i.i.i, %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread32.i.i.i, %bb.ac, %._crit_edge.i.i.i
  %.sroa.6.1.i.i.i = phi ptr [ %2, %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread32.i.i.i ], [ %i.db, %bb.ag ], [ %i.bx, %._crit_edge.i.i.i ], [ %i.de, %bb.ai ], [ %i.ci, %bb.ac ], [ %i.da, %.loopexit.i.i.i.i.i.i ], [ %i.dt, %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i ], [ %i.dd, %_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i ] ; 4 uses
  %.sroa.0.1.i.i.i = phi i64 [ 0, %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread32.i.i.i ], [ 1, %bb.ag ], [ 1, %._crit_edge.i.i.i ], [ 1, %bb.ai ], [ 1, %bb.ac ], [ 1, %.loopexit.i.i.i.i.i.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !208178
  %i.dy = load i8, ptr %i.ac, align 8, !range !1313, !alias.scope !208178, !noundef !14
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.as, label %bb.ar

bb.aq:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !208178
  store i64 24, ptr %i.k, align 8, !noalias !208178
  %i.ea = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !208178
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17hf0821f6b430b2da1E.exit"

bb.ar:                                            ; preds = %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !alias.scope !208178, !noundef !14
  %i.ed = add i8 %i.ec, 1
  store i8 %i.ed, ptr %i.eb, align 1, !alias.scope !208178
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"
  %i.ee = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h7f477aab3cffc5f9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.au unwind label %bb.at     ; 8 uses

bb.at:                                            ; preds = %bb.as
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..result..Result$LT$meilisearch_types..tasks..network..NetworkTopologyStats$C$serde_json..error..Error$GT$$GT$17h7c97a54232d7c2dcE"(i64 %.sroa.0.1.i.i.i, ptr %.sroa.6.1.i.i.i) #81
          to label %common.resume.i.i unwind label %bb.s

bb.au:                                            ; preds = %bb.as
  %i.eg = trunc nuw i64 %.sroa.0.1.i.i.i to i1
  %.not43.i.i = icmp eq ptr %i.ee, null           ; 2 uses
  br i1 %i.eg, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %.not43.i.i, label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17hf0821f6b430b2da1E.exit", label %.thread23.i.i, !prof !12002

bb.aw:                                            ; preds = %bb.au
  br i1 %.not43.i.i, label %.thread23.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !208301)
  call void @llvm.experimental.noalias.scope.decl(metadata !208304)
  %i.eh = load i64, ptr %i.ee, align 8, !range !3586, !alias.scope !208307, !noalias !208308, !noundef !14
  switch i64 %i.eh, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit33.i.i" [
    i64 0, label %bb.ay
    i64 1, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.val1.i.i.i.i30.i.i = load i64, ptr %i.ei, align 8, !alias.scope !208307, !noalias !208308, !noundef !14 ; 2 uses
  %i.ej = icmp eq i64 %.val1.i.i.i.i30.i.i, 0
  br i1 %i.ej, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit33.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i31.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i31.i.i": ; preds = %bb.ay
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.val.i.i.i.i32.i.i = load ptr, ptr %i.ek, align 8, !alias.scope !208307, !noalias !208308, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i32.i.i, i64 noundef %.val1.i.i.i.i30.i.i, i64 noundef 1) #79, !noalias !208311
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit33.i.i"

bb.az:                                            ; preds = %bb.ax
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.el)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit33.i.i" unwind label %bb.ba, !noalias !208308

bb.ba:                                            ; preds = %bb.az
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef 40, i64 noundef 8) #79, !noalias !208308
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit33.i.i": ; preds = %bb.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i31.i.i", %bb.ay, %bb.ax
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef 40, i64 noundef 8) #79, !noalias !208308
  br label %.thread23.i.i

.thread23.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit33.i.i", %bb.aw, %bb.av, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", %bb.r, %bb.q, %bb.d
  %.sroa.11.3.in.i.i = phi ptr [ %i.y, %bb.d ], [ %.sroa.6.1.i.i.i, %bb.aw ], [ %.sroa.3.0.i.i.i, %bb.r ], [ %i.bc, %bb.q ], [ %.sroa.3.0.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" ], [ %.sroa.6.1.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit33.i.i" ], [ %i.ee, %bb.av ]
  %i.en = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.11.3.in.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17hf0821f6b430b2da1E.exit"

"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17hf0821f6b430b2da1E.exit": ; preds = %.loopexit.i.i, %bb.l, %bb.q, %bb.aq, %bb.av, %.thread23.i.i
  %.sroa.7.3.i.i = phi ptr [ %i.x, %.loopexit.i.i ], [ %i.ea, %bb.aq ], [ %i.ay, %bb.l ], [ %i.en, %.thread23.i.i ], [ %.sroa.3.0.i.i.i, %bb.q ], [ %.sroa.6.1.i.i.i, %bb.av ]
  %.sroa.0.3.i.i = phi i64 [ 1, %.loopexit.i.i ], [ 1, %bb.aq ], [ 1, %bb.l ], [ 1, %.thread23.i.i ], [ 0, %bb.q ], [ 0, %bb.av ]
  %i.eo = insertvalue { i64, ptr } poison, i64 %.sroa.0.3.i.i, 0
  %i.ep = insertvalue { i64, ptr } %i.eo, ptr %.sroa.7.3.i.i, 1
  ret { i64, ptr } %i.ep
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h702c17bbf0154f1eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [72 x i8], align 8                ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [72 x i8], align 8                ; 13 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.580.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.574.i.sroa.4.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 21 uses
  %i.ac = alloca [32 x i8], align 8               ; 28 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 9 uses
  %i.af = alloca [72 x i8], align 8               ; 13 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [72 x i8], align 8               ; 13 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.045.sroa.0.i.sroa.5.i.i.i.i.i = alloca [48 x i8], align 8 ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 11 uses
  %i.at = alloca [32 x i8], align 8               ; 10 uses
  %i.au = alloca [16 x i8], align 8               ; 14 uses
  %i.av = alloca [72 x i8], align 8               ; 13 uses
  %i.aw = alloca [80 x i8], align 8               ; 9 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [72 x i8], align 8               ; 11 uses
  %i.az = alloca [80 x i8], align 8               ; 9 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.18.i.i.i.i.i = alloca [56 x i8], align 8 ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.5.sroa.4.i = alloca [56 x i8], align 8   ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208320)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !208323, !noalias !208326, !noundef !14 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !208330, !noalias !208331 ; 3 uses
  %i.bf = icmp ult i64 %.promoted.i.i.i, %i.be
  br i1 %i.bf, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !208323, !noalias !208326, !nonnull !14, !align !584, !noundef !14 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.bi = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.bl, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208332)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !208333, !noundef !14
  switch i8 %i.bk, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.ej
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bl = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.bl, ptr %i.bc, align 8, !alias.scope !208334, !noalias !208331
  %exitcond.not.i.i.i = icmp eq i64 %i.bl, %i.be
  br i1 %exitcond.not.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.thread.i.i", label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.thread.i.i": ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.580.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.574.i.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.045.sroa.0.i.sroa.5.i.i.i.i.i)
  br label %.loopexit.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.bi, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208343)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.580.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.574.i.sroa.4.i.i.i.i.i)
end_hunk_2
