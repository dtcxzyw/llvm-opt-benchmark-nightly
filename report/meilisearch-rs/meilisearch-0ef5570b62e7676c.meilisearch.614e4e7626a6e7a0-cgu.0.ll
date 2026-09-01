Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN12sharded_slab4page19Shared$LT$T$C$C$GT$8allocate17he3cb87b33d9ac576E":bb.a
  %.val.i = load ptr, ptr %0, align 8, !noalias !11056, !align !148, !noundef !27 ; 5 uses
  %i.as = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %.val1.i = load i64, ptr %i.as, align 8, !noalias !11056 ; 5 uses
  %i.at = icmp eq ptr %.val.i, null
  %cond = icmp eq i64 %.val1.i, 0
  %or.cond = select i1 %i.at, i1 true, i1 %cond
  br i1 %or.cond, label %bb.r, label %.lr.ph

"_ZN4core3ptr142drop_in_place$LT$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$17h34a962771448624fE.exit.i.i.i.i": ; preds = %.lr.ph
  %i.au = icmp eq i64 %i.aw, %.val1.i
  br i1 %i.au, label %"_ZN4core3ptr152drop_in_place$LT$$u5b$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$u5d$$GT$17h51e435043b3fec2bE.exit.i.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hf54bab73f97795d5E.exit.i", %"_ZN4core3ptr142drop_in_place$LT$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$17h34a962771448624fE.exit.i.i.i.i"
  %.sroa.0.0.i.i.i.i28 = phi i64 [ %i.aw, %"_ZN4core3ptr142drop_in_place$LT$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$17h34a962771448624fE.exit.i.i.i.i" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hf54bab73f97795d5E.exit.i" ] ; 2 uses
  %i.av = getelementptr inbounds nuw [96 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i.i28
  %i.aw = add i64 %.sroa.0.0.i.i.i.i28, 1         ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  invoke fastcc void @"_ZN4core3ptr174drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$$GT$17h280959f82a3f988aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.ax)
          to label %"_ZN4core3ptr142drop_in_place$LT$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$17h34a962771448624fE.exit.i.i.i.i" unwind label %bb.p, !noalias !11056

"_ZN4core3ptr142drop_in_place$LT$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$17h34a962771448624fE.exit7.i.i.i.i": ; preds = %.lr.ph30
  %i.ay = add i64 %.sroa.0.1.i.i.i.i29, 1         ; 2 uses
  %i.az = icmp eq i64 %i.ay, %.val1.i
  br i1 %i.az, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", label %.lr.ph30

bb.p:                                             ; preds = %.lr.ph
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = icmp eq i64 %i.aw, %.val1.i
  br i1 %i.bb, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.p, %"_ZN4core3ptr142drop_in_place$LT$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$17h34a962771448624fE.exit7.i.i.i.i"
  %.sroa.0.1.i.i.i.i29 = phi i64 [ %i.ay, %"_ZN4core3ptr142drop_in_place$LT$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$17h34a962771448624fE.exit7.i.i.i.i" ], [ %i.aw, %bb.p ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [96 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i.i29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  invoke fastcc void @"_ZN4core3ptr174drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$$GT$17h280959f82a3f988aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.bd)
          to label %"_ZN4core3ptr142drop_in_place$LT$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$17h34a962771448624fE.exit7.i.i.i.i" unwind label %bb.q, !noalias !11056

bb.q:                                             ; preds = %.lr.ph30
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !11074
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %"_ZN4core3ptr142drop_in_place$LT$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$17h34a962771448624fE.exit7.i.i.i.i", %bb.p
  call void @mi_free(ptr noundef nonnull %.val.i) #38, !noalias !11056
  store ptr %.sroa.42.0.copyload.i.i, ptr %0, align 8, !noalias !11056
  store i64 %i.ai, ptr %i.as, align 8, !noalias !11056
  br label %.body

"_ZN4core3ptr152drop_in_place$LT$$u5b$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$u5d$$GT$17h51e435043b3fec2bE.exit.i.i.i": ; preds = %"_ZN4core3ptr142drop_in_place$LT$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$17h34a962771448624fE.exit.i.i.i.i"
  %i.bf = icmp eq i64 %.val1.i, 0
  br i1 %i.bf, label %bb.r, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %"_ZN4core3ptr152drop_in_place$LT$$u5b$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$u5d$$GT$17h51e435043b3fec2bE.exit.i.i.i"
  call void @mi_free(ptr noundef nonnull %.val.i) #38, !noalias !11056
  br label %bb.r

bb.r:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %"_ZN4core3ptr152drop_in_place$LT$$u5b$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$u5d$$GT$17h51e435043b3fec2bE.exit.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hf54bab73f97795d5E.exit.i"
  store ptr %.sroa.42.0.copyload.i.i, ptr %0, align 8, !noalias !11056
  store i64 %i.ai, ptr %i.as, align 8, !noalias !11056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.body:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.n, %bb.s
  %eh.lpad-body16 = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.s ], [ %i.ba, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i" ], [ %i.ap, %bb.n ]
  resume { ptr, i32 } %eh.lpad-body16

bb.s:                                             ; preds = %bb.f, %bb.h
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.aa, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr165drop_in_place$LT$alloc..vec..Vec$LT$sharded_slab..page..slot..Slot$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$$GT$17h8dffb5adee1eea85E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #44
          to label %.body unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$19clear_after_release17h2f9763241f958119E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  fence acquire
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN12sharded_slab3tid12REGISTRATION29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h30db31da8c61cb3dE") ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !214, !noalias !11077, !noundef !27
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_ZN4core3ops8function6FnOnce9call_once17h436de3e9cf4a9fb1E.exit.thread.i, label %_ZN4core3ops8function6FnOnce9call_once17h436de3e9cf4a9fb1E.exit.i, !prof !222

_ZN4core3ops8function6FnOnce9call_once17h436de3e9cf4a9fb1E.exit.i: ; preds = %bb.a
  %i.e = tail call fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha580d4e688da21f3E"(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) null) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %_ZN4core3ops8function6FnOnce9call_once17h436de3e9cf4a9fb1E.exit.thread.i

_ZN4core3ops8function6FnOnce9call_once17h436de3e9cf4a9fb1E.exit.thread.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h436de3e9cf4a9fb1E.exit.i, %bb.a
  %.sroa.0.0.i.i.i2.i = phi ptr [ %i.e, %_ZN4core3ops8function6FnOnce9call_once17h436de3e9cf4a9fb1E.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %.sroa.0.0.i.i.i2.i, align 8, !range !223, !noundef !27
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c, !prof !222

bb.b:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h436de3e9cf4a9fb1E.exit.thread.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i, i64 8
  %i.j = load i64, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h436de3e9cf4a9fb1E.exit.thread.i
  %i.k = tail call fastcc noundef i64 @_ZN12sharded_slab3tid12Registration8register17hb69b38e7746eff7aE(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i2.i)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h436de3e9cf4a9fb1E.exit.i, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.j, %bb.b ], [ %i.k, %bb.c ], [ -1, %_ZN4core3ops8function6FnOnce9call_once17h436de3e9cf4a9fb1E.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !noundef !27
  %i.n = icmp eq i64 %.sroa.0.0, %i.m
  br i1 %i.n, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load i64, ptr %i.o, align 8, !noundef !27
  %i.p = and i64 %1, 274877906943                 ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 32
  %i.r = lshr i64 %i.q, 6
  %i.s = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 false)
  %i.t = sub nuw nsw i64 64, %i.s                 ; 2 uses
  %.not.i = icmp ult i64 %i.t, %.val3
  br i1 %.not.i, label %bb.f, label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17hd3189db8fb81cdc4E.exit"

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.u, align 8, !nonnull !27, !noundef !27
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %i.t ; 4 uses
  %i.w = lshr i64 %1, 51                          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i64, ptr %i.y, align 8, !noundef !27
  %i.aa = sub i64 %i.p, %i.z                      ; 3 uses
  %i.ab = load ptr, ptr %i.v, align 8, !noalias !11084, !align !148, !noundef !27 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17hd3189db8fb81cdc4E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !11084, !noundef !27
  %i.ae = icmp ult i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.h, label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17hd3189db8fb81cdc4E.exit"

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %i.ab, i64 %i.aa ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 2 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8, !noalias !11084 ; 2 uses
  %i.ai = lshr i64 %i.ah, 51
  %i.aj = icmp eq i64 %i.w, %i.ai
  br i1 %i.aj, label %.lr.ph24.i.i.i, label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17hd3189db8fb81cdc4E.exit"

.lr.ph24.i.i.i:                                   ; preds = %bb.h
  %.cmp.i.i.i = icmp ult i64 %1, -4503599627370496
  %.v.i.i.i = select i1 %.cmp.i.i.i, i64 1, i64 -8190
  %i.ak = add nsw i64 %.v.i.i.i, %i.w
  %i.al = shl nuw i64 %i.ak, 51
  br label %bb.i

bb.i:                                             ; preds = %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i, %.lr.ph24.i.i.i
  %.sroa.02.021.i.i.i = phi i64 [ %i.ah, %.lr.ph24.i.i.i ], [ %.sroa.02.1.i.i.i, %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i ] ; 4 uses
  %.sroa.05.020.i.i.i = phi i1 [ false, %.lr.ph24.i.i.i ], [ %.sroa.05.1.i.i.i, %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i ]
  %.sroa.0.019.i.i.i = phi i64 [ 0, %.lr.ph24.i.i.i ], [ %.sroa.0.1.i.i.i, %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i ] ; 4 uses
  %i.am = and i64 %.sroa.02.021.i.i.i, 2251799813685247
  %i.an = or disjoint i64 %i.am, %i.al
  %i.ao = cmpxchg ptr %i.ag, i64 %.sroa.02.021.i.i.i, i64 %i.an acq_rel acquire, align 8, !noalias !11084 ; 2 uses
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.ao, 1
  %.sroa.01.0.i.i.i.i = extractvalue { i64, i1 } %i.ao, 0 ; 2 uses
  br i1 %.sroa.18.0.in.i.i.i.i, label %bb.j, label %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = and i64 %.sroa.01.0.i.i.i.i, 2251799813685244
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  tail call void @"_ZN95_$LT$tracing_subscriber..registry..sharded..DataInner$u20$as$u20$sharded_slab..clear..Clear$GT$5clear17h026c25d6c4b734dbE"(ptr noalias noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %i.af), !noalias !11084
  %i.ar = load atomic i64, ptr %i.x monotonic, align 8, !noalias !11087
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.ar, %bb.k ], [ %.sroa.01.0.i.i.i.i.i.i, %bb.l ] ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.as, align 8, !noalias !11087
  %i.at = cmpxchg ptr %i.x, i64 %.sroa.0.0.i.i.i.i.i, i64 %i.aa release monotonic, align 8, !noalias !11087 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.at, 1
  %.sroa.01.0.i.i.i.i.i.i = extractvalue { i64, i1 } %i.at, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17hd3189db8fb81cdc4E.exit", label %bb.l

bb.m:                                             ; preds = %bb.j
  %i.au = trunc i64 %.sroa.0.019.i.i.i to i32
  %i.av = and i32 %i.au, 31                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.av, 31
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.m
  %i.aw = shl nuw nsw i32 1, %i.av
  %i.ax = freeze i32 %i.aw                        ; 3 uses
  %i.ay = add i32 %i.ax, -1
  %xtraiter = and i32 %i.ax, 7                    ; 3 uses
  %i.az = icmp ult i32 %i.ay, 7
  br i1 %i.az, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i32 %i.ax, -8
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %lcmp.mod46 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11090
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !11093

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.m
  %i.ba = icmp ugt i64 %.sroa.0.019.i.i.i, 7
  br i1 %i.ba, label %bb.o, label %bb.n

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11090
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11090
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11090
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11090
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11090
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11090
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11090
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11090
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = add nuw nsw i64 %.sroa.0.019.i.i.i, 1
  br label %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !11090
  br label %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i

_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.i
  %.sroa.0.1.i.i.i = phi i64 [ 0, %bb.i ], [ %.sroa.0.019.i.i.i, %bb.o ], [ %i.bb, %bb.n ]
  %.sroa.05.1.i.i.i = phi i1 [ %.sroa.05.020.i.i.i, %bb.i ], [ true, %bb.o ], [ true, %bb.n ] ; 2 uses
  %.sroa.02.1.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i, %bb.i ], [ %.sroa.02.021.i.i.i, %bb.o ], [ %.sroa.02.021.i.i.i, %bb.n ] ; 2 uses
  %i.bc = lshr i64 %.sroa.02.1.i.i.i, 51
  %i.bd = icmp eq i64 %i.w, %i.bc
  %or.cond.not.i.i.i = or i1 %.sroa.05.1.i.i.i, %i.bd
  br i1 %or.cond.not.i.i.i, label %bb.i, label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17hd3189db8fb81cdc4E.exit"

bb.p:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11094)
  %i.be = and i64 %1, 274877906943                ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 32
  %i.bg = lshr i64 %i.bf, 6
  %i.bh = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 false)
  %i.bi = sub nuw nsw i64 64, %i.bh               ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !11094, !noundef !27
  %.not.i5 = icmp ult i64 %i.bi, %i.bk
  br i1 %.not.i5, label %bb.q, label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17hd3189db8fb81cdc4E.exit"

bb.q:                                             ; preds = %bb.p
  %i.bl = lshr i64 %1, 51                         ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !11094, !noundef !27 ; 2 uses
  %i.bo = icmp ult i64 %i.bi, %i.bn
  br i1 %i.bo, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !11094, !nonnull !27, !align !148, !noundef !27
  %i.br = load ptr, ptr %0, align 8, !alias.scope !11094, !nonnull !27, !noundef !27
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.bq, i64 %i.bi ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bi ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !11094, !noundef !27
  %i.bw = sub i64 %i.be, %i.bv                    ; 3 uses
  %i.bx = load ptr, ptr %i.bs, align 8, !noalias !11097, !align !148, !noundef !27 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i7, label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17hd3189db8fb81cdc4E.exit", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noalias !11097, !noundef !27
  %i.ca = icmp ult i64 %i.bw, %i.bz
  br i1 %i.ca, label %bb.t, label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17hd3189db8fb81cdc4E.exit"

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw [96 x i8], ptr %i.bx, i64 %i.bw ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80 ; 2 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8, !noalias !11097 ; 2 uses
  %i.ce = lshr i64 %i.cd, 51
  %i.cf = icmp eq i64 %i.bl, %i.ce
  br i1 %i.cf, label %.lr.ph23.i.i.i, label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17hd3189db8fb81cdc4E.exit"

.lr.ph23.i.i.i:                                   ; preds = %bb.t
  %.cmp.i.i.i8 = icmp ult i64 %1, -4503599627370496
  %.v.i.i.i9 = select i1 %.cmp.i.i.i8, i64 1, i64 -8190
  %i.cg = add nsw i64 %.v.i.i.i9, %i.bl
  %i.ch = shl nuw i64 %i.cg, 51
  br label %bb.u

bb.u:                                             ; preds = %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12, %.lr.ph23.i.i.i
  %.sroa.02.020.i.i.i = phi i64 [ %i.cd, %.lr.ph23.i.i.i ], [ %.sroa.02.1.i.i.i15, %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12 ] ; 4 uses
  %.sroa.05.019.i.i.i = phi i1 [ false, %.lr.ph23.i.i.i ], [ %.sroa.05.1.i.i.i14, %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12 ]
  %.sroa.0.018.i.i.i = phi i64 [ 0, %.lr.ph23.i.i.i ], [ %.sroa.0.1.i.i.i13, %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12 ] ; 4 uses
  %i.ci = and i64 %.sroa.02.020.i.i.i, 2251799813685247
  %i.cj = or disjoint i64 %i.ci, %i.ch
  %i.ck = cmpxchg ptr %i.cc, i64 %.sroa.02.020.i.i.i, i64 %i.cj acq_rel acquire, align 8, !noalias !11097 ; 2 uses
  %.sroa.18.0.in.i.i.i.i10 = extractvalue { i64, i1 } %i.ck, 1
  %.sroa.01.0.i.i.i.i11 = extractvalue { i64, i1 } %i.ck, 0 ; 2 uses
  br i1 %.sroa.18.0.in.i.i.i.i10, label %bb.v, label %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12

bb.v:                                             ; preds = %bb.u
  %i.cl = and i64 %.sroa.01.0.i.i.i.i11, 2251799813685244
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @"_ZN95_$LT$tracing_subscriber..registry..sharded..DataInner$u20$as$u20$sharded_slab..clear..Clear$GT$5clear17h026c25d6c4b734dbE"(ptr noalias noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %i.cb), !noalias !11097
  %i.cn = load i64, ptr %i.bt, align 8, !noalias !11097, !noundef !27
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  store i64 %i.cn, ptr %i.co, align 8, !noalias !11097
  store i64 %i.bw, ptr %i.bt, align 8, !noalias !11097
  br label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17hd3189db8fb81cdc4E.exit"

bb.x:                                             ; preds = %bb.v
  %i.cp = trunc i64 %.sroa.0.018.i.i.i to i32
  %i.cq = and i32 %i.cp, 31                       ; 2 uses
  %.not.i.i.i17 = icmp eq i32 %i.cq, 31
  br i1 %.not.i.i.i17, label %._crit_edge.i.i.i21, label %.lr.ph.preheader.i.i.i18

.lr.ph.preheader.i.i.i18:                         ; preds = %bb.x
  %i.cr = shl nuw nsw i32 1, %i.cq
  %i.cs = freeze i32 %i.cr                        ; 3 uses
  %i.ct = add i32 %i.cs, -1
  %xtraiter47 = and i32 %i.cs, 7                  ; 3 uses
  %i.cu = icmp ult i32 %i.ct, 7
  br i1 %i.cu, label %.lr.ph.i.i.i19.epil.preheader, label %.lr.ph.preheader.i.i.i18.new

.lr.ph.preheader.i.i.i18.new:                     ; preds = %.lr.ph.preheader.i.i.i18
  %unroll_iter51 = and i32 %i.cs, -8
  br label %.lr.ph.i.i.i19

._crit_edge.i.i.i21.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i19
  %lcmp.mod49.not = icmp eq i32 %xtraiter47, 0
  br i1 %lcmp.mod49.not, label %._crit_edge.i.i.i21, label %.lr.ph.i.i.i19.epil.preheader

.lr.ph.i.i.i19.epil.preheader:                    ; preds = %._crit_edge.i.i.i21.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i18
  %lcmp.mod50 = icmp ne i32 %xtraiter47, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph.i.i.i19.epil

.lr.ph.i.i.i19.epil:                              ; preds = %.lr.ph.i.i.i19.epil, %.lr.ph.i.i.i19.epil.preheader
  %epil.iter48 = phi i32 [ 0, %.lr.ph.i.i.i19.epil.preheader ], [ %epil.iter48.next, %.lr.ph.i.i.i19.epil ]
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11100
  %epil.iter48.next = add i32 %epil.iter48, 1     ; 2 uses
  %epil.iter48.cmp.not = icmp eq i32 %epil.iter48.next, %xtraiter47
  br i1 %epil.iter48.cmp.not, label %._crit_edge.i.i.i21, label %.lr.ph.i.i.i19.epil, !llvm.loop !11103

._crit_edge.i.i.i21:                              ; preds = %._crit_edge.i.i.i21.loopexit.unr-lcssa, %.lr.ph.i.i.i19.epil, %bb.x
  %i.cv = icmp ugt i64 %.sroa.0.018.i.i.i, 7
  br i1 %i.cv, label %bb.z, label %bb.y

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.i.i.i19, %.lr.ph.preheader.i.i.i18.new
  %niter52 = phi i32 [ 0, %.lr.ph.preheader.i.i.i18.new ], [ %niter52.next.7, %.lr.ph.i.i.i19 ]
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11100
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11100
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11100
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11100
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11100
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11100
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11100
  tail call void @llvm.x86.sse2.pause() #38, !noalias !11100
  %niter52.next.7 = add i32 %niter52, 8           ; 2 uses
  %niter52.ncmp.7 = icmp eq i32 %niter52.next.7, %unroll_iter51
  br i1 %niter52.ncmp.7, label %._crit_edge.i.i.i21.loopexit.unr-lcssa, label %.lr.ph.i.i.i19

bb.y:                                             ; preds = %._crit_edge.i.i.i21
  %i.cw = add nuw nsw i64 %.sroa.0.018.i.i.i, 1
  br label %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12

bb.z:                                             ; preds = %._crit_edge.i.i.i21
  tail call void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E(), !noalias !11100
  br label %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12

_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12: ; preds = %bb.z, %bb.y, %bb.u
  %.sroa.0.1.i.i.i13 = phi i64 [ 0, %bb.u ], [ %.sroa.0.018.i.i.i, %bb.z ], [ %i.cw, %bb.y ]
  %.sroa.05.1.i.i.i14 = phi i1 [ %.sroa.05.019.i.i.i, %bb.u ], [ true, %bb.z ], [ true, %bb.y ] ; 2 uses
  %.sroa.02.1.i.i.i15 = phi i64 [ %.sroa.01.0.i.i.i.i11, %bb.u ], [ %.sroa.02.020.i.i.i, %bb.z ], [ %.sroa.02.020.i.i.i, %bb.y ] ; 2 uses
  %i.cx = lshr i64 %.sroa.02.1.i.i.i15, 51
  %i.cy = icmp eq i64 %i.bl, %i.cx
  %or.cond.not.i.i.i16 = or i1 %.sroa.05.1.i.i.i14, %i.cy
  br i1 %or.cond.not.i.i.i16, label %bb.u, label %"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17hd3189db8fb81cdc4E.exit"

bb.aa:                                            ; preds = %bb.q
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bi, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @530) #43, !noalias !11094
  unreachable

"_ZN12sharded_slab5shard18Shard$LT$T$C$C$GT$12clear_remote17hd3189db8fb81cdc4E.exit": ; preds = %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i, %bb.l, %_ZN12sharded_slab4page4slot19exponential_backoff17hd1c54936a8443f20E.exit.i.i.i12, %bb.w, %bb.t, %bb.s, %bb.r, %bb.p, %bb.h, %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN12tokio_rustls6common20Stream$LT$IO$C$C$GT$7read_io17h013c55fe4ad9f914E"(ptr %.0.val, ptr %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [168 x i8], align 8               ; 6 uses
  %i.d = alloca [168 x i8], align 8               ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 13 uses
  %i.g = alloca [168 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [128 x i8], align 8               ; 18 uses
  %i.j = alloca [168 x i8], align 8               ; 6 uses
  %i.k = alloca [168 x i8], align 8               ; 6 uses
  %i.l = alloca [64 x i8], align 8                ; 11 uses
  %i.m = alloca [168 x i8], align 8               ; 13 uses
  %i.n = alloca [168 x i8], align 8               ; 10 uses
  %i.o = alloca [32 x i8], align 8                ; 9 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [64 x i8], align 8                ; 4 uses
  %i.x = alloca [64 x i8], align 8                ; 18 uses
  %i.y = alloca [64 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 12 uses
  %i.aa = alloca [64 x i8], align 8               ; 15 uses
  %.sroa.7.i.i.i = alloca [25 x i8], align 1      ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.0.i.i = alloca [18 x i8], align 8        ; 4 uses
  %i.ad = alloca [64 x i8], align 8               ; 4 uses
  %i.ae = alloca [64 x i8], align 8               ; 5 uses
  %i.af = alloca [64 x i8], align 8               ; 12 uses
  %.sroa.19.i = alloca [6 x i8], align 2          ; 7 uses
  %.sroa.31.sroa.8.i = alloca [32 x i8], align 8  ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 10 uses
  %i.ah = alloca [64 x i8], align 8               ; 4 uses
  %i.ai = alloca [64 x i8], align 8               ; 5 uses
  %i.aj = alloca [64 x i8], align 8               ; 6 uses
  %i.ak = alloca [64 x i8], align 8               ; 20 uses
  %i.al = alloca [16 x i8], align 8               ; 28 uses
  %i.am = alloca [64 x i8], align 8               ; 4 uses
  %i.an = alloca [64 x i8], align 8               ; 5 uses
  %i.ao = alloca [64 x i8], align 8               ; 10 uses
  %i.ap = alloca [64 x i8], align 8               ; 4 uses
  %i.aq = alloca [64 x i8], align 8               ; 10 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store ptr %.0.val, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %0, ptr %i.as, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.at = getelementptr inbounds nuw i8, ptr %.8.val, i64 80
  %i.au = tail call noundef zeroext i1 @_ZN6rustls6vecbuf14ChunkVecBuffer7is_full17h1bee0903fa057918E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.at)
  br i1 %i.au, label %"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit.thread5", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %.8.val, i64 827 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !range !188, !alias.scope !11104, !noundef !27
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit.thread", label %bb.c

"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit.thread5": ; preds = %bb.a
  %i.ay = tail call noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2030, i64 noundef 30)
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %.8.val, i64 1136
  %i.ba = getelementptr inbounds nuw i8, ptr %.8.val, i64 992
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !11104, !noundef !27 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 230584300921369396
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp ne i64 %i.bb, 0
  %i.be = call { i64, ptr } @_ZN6rustls4msgs8deframer7buffers17DeframerVecBuffer4read17h7a8aa4da855b646eE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 1 %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) @531, i1 noundef zeroext %i.bd) ; 2 uses
  %i.bf = extractvalue { i64, ptr } %i.be, 0
  %i.bg = extractvalue { i64, ptr } %i.be, 1      ; 3 uses
  %i.bh = trunc nuw i64 %i.bf to i1               ; 2 uses
  %i.bi = icmp ne ptr %i.bg, null
  %or.cond.not.i = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond.not.i, label %"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %.8.val, i64 828
  store i8 1, ptr %i.bj, align 4, !alias.scope !11104
  br label %"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit.thread"

"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit": ; preds = %bb.c
  br i1 %i.bh, label %bb.e, label %"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit.thread"

bb.e:                                             ; preds = %"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit.thread5", %"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit"
  %.sroa.4.0.i8 = phi ptr [ %i.ay, %"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit.thread5" ], [ %i.bg, %"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit" ] ; 6 uses
  %i.bk = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr %.sroa.4.0.i8)
  %i.bl = icmp eq i8 %i.bk, 13
  br i1 %i.bl, label %bb.en, label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h255c5d003656fdfdE.exit"

"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit.thread": ; preds = %bb.d, %bb.b, %"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit"
  %.sroa.4.0.i4 = phi ptr [ %i.bg, %"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit" ], [ null, %bb.b ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.bm = getelementptr inbounds nuw i8, ptr %.8.val, i64 1136 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.8.val, i64 1080
  call void @llvm.experimental.noalias.scope.decl(metadata !11107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.val, i64 1008 ; 18 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.bo, align 8, !alias.scope !11107, !noalias !11110 ; 2 uses
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 1016 ; 7 uses
  %.sroa.63.0.copyload.i = load ptr, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !11107, !noalias !11110 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 1024 ; 7 uses
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !11107, !noalias !11110 ; 3 uses
  store i8 16, ptr %i.bo, align 8, !alias.scope !11107, !noalias !11110
  %.not.i = icmp eq i8 %.sroa.0.0.copyload.i, 22
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN6rustls4conn28ConnectionCommon$LT$Data$GT$8read_tls17hace80d61a5ba93c0E.exit.thread"
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 1032
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 1009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !11114
  store i8 %.sroa.0.0.copyload.i, ptr %i.ao, align 8, !noalias !11114
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i, i64 7, i1 false), !noalias !11110
  %.sroa.63.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.sroa.63.0.copyload.i, ptr %.sroa.63.0..sroa_idx4.i, align 8, !noalias !11114
  %.sroa.7.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx6.i, align 8, !noalias !11114
  %.sroa.8.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx8.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx.i, i64 40, i1 false), !noalias !11110
end_hunk_0
begin_hunk_1_@"_ZN4core3ptr124drop_in_place$LT$segment..auto_batcher..AutoBatcher..push$LT$segment..message..Identify$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h850f620bc32974ddE":bb.a

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

"_ZN4core3ptr51drop_in_place$LT$segment..message..BatchMessage$GT$17h64ca76e9f4792bfbE.exit": ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1553
  store i8 0, ptr %i.w, align 1
  br label %common.ret

bb.p:                                             ; preds = %.body.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h7cf99302d2251454E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5718, !noundef !27
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21853)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !21856, !noundef !27 ; 3 uses
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !21856, !nonnull !27, !noundef !27
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %.val1.i.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i), !noalias !21853
  %i.f = shl i64 %.val1.i.i.i, 3
  %.not = and i64 %i.f, -16
  %i.g = xor i64 %.not, -16
  %i.h = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.g
  tail call void @mi_free(ptr noundef nonnull %i.h) #38, !noalias !21856, !inline_history !9159
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he1345de9ed5d2aafE.exit": ; preds = %bb.c, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h8d960132a9df9fd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %0), !inline_history !21857
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr125drop_in_place$LT$h2..proto..streams..streams..Inner..recv_headers$LT$bytes..bytes..Bytes$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h55f35149a09c9828E"(ptr noalias noundef nonnull align 8 dereferenceable(304) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..header..map..HeaderMap$GT$17h1ed777fd0a4abf6dE"(ptr noalias noundef nonnull align 8 dereferenceable(288) %0)
          to label %"_ZN4core3ptr48drop_in_place$LT$h2..frame..headers..Headers$GT$17h897982626da2c670E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$h2..frame..headers..Pseudo$GT$17h3a9c35b309f464f6E"(ptr noalias noundef align 8 dereferenceable(160) %i.b) #44
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr48drop_in_place$LT$h2..frame..headers..Headers$GT$17h897982626da2c670E.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$h2..frame..headers..Pseudo$GT$17h3a9c35b309f464f6E"(ptr noalias noundef align 8 dereferenceable(160) %i.d)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr126drop_in_place$LT$tracing_subscriber..fmt..fmt_layer..FormattedFields$LT$tracing_subscriber..fmt..format..DefaultFields$GT$$GT$17hb60400b188eefe3aE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21858)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !21858
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !21858, !nonnull !27, !noundef !27
  tail call void @mi_free(ptr noundef nonnull %.val1.i) #38, !noalias !21858
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr127drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$actix_web..helpers..MutWriter$LT$bytes..bytes_mut..BytesMut$GT$$GT$$GT$17h31736cc0123abae1E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !27 ; 5 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8857f7afb170960bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %.val to i64
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8857f7afb170960bE.exit"
    i64 3, label %bb.c
    i64 0, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8857f7afb170960bE.exit"
    i64 1, label %bb.d
  ], !prof !196

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.e)
  br label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8857f7afb170960bE.exit"

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !21861 ; 5 uses
  %i.g = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !21861, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i.i.i, align 8, !invariant.load !27, !noalias !21861 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.f unwind label %bb.g, !noalias !21861

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !28, !invariant.load !27, !noalias !21861
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i) #38, !noalias !21861
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i"

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !28, !invariant.load !27, !noalias !21861
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i": ; preds = %bb.g
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i) #38, !noalias !21861
  br label %bb.h

bb.h:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i", %bb.g
  tail call void @mi_free(ptr noundef nonnull %i.f) #38, !noalias !21861
  resume { ptr, i32 } %i.l

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i", %bb.f
  tail call void @mi_free(ptr noundef nonnull %i.f) #38, !noalias !21861
  br label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8857f7afb170960bE.exit"

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h8857f7afb170960bE.exit": ; preds = %bb.a, %bb.b, %bb.b, %bb.c, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr127drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17hf867585b4444c35dE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21864)
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %bb.a
  %.sroa.0.0.idx12.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add.i, %.backedge.i ] ; 2 uses
  %.sroa.7.011.i = phi i64 [ 0, %bb.a ], [ %i.a, %.backedge.i ] ; 2 uses
  %.sroa.0.0.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx12.i
  %.sroa.0.0.add.i = add nuw nsw i64 %.sroa.0.0.idx12.i, 8 ; 2 uses
  %i.a = add nuw nsw i64 %.sroa.7.011.i, 1
  %i.b = load ptr, ptr %.sroa.0.0.ptr.i, align 8, !alias.scope !21864, !noundef !27 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.backedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw i64 1, %.sroa.7.011.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21867)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i", %bb.c
  %.sroa.0.011.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i" ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.011.i.i.i ; 3 uses
  %i.f = add nuw i64 %.sroa.0.011.i.i.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21873)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i8, ptr %i.g, align 1, !range !188, !alias.scope !21876, !noalias !21864, !noundef !27
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !21876, !noalias !21864
  %i.k = icmp ne i64 %.val.i.i.i.i.i, 0
  %or.cond.not.i.i.i.i.i = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.d, label %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i"

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !21876, !noalias !21864, !nonnull !27, !noundef !27
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i.i.i.i) #38, !noalias !21877
  br label %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i"

"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i": ; preds = %bb.d, %.lr.ph.i.i.i
  %i.m = icmp eq i64 %i.f, %i.d
  br i1 %i.m, label %"_ZN4core3ptr156drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$u5d$$GT$$GT$17hd55ddfb12b279068E.exit.i", label %.lr.ph.i.i.i

"_ZN4core3ptr156drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$u5d$$GT$$GT$17hd55ddfb12b279068E.exit.i": ; preds = %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i"
  tail call void @mi_free(ptr noundef nonnull %i.b) #38, !noalias !21864
  br label %.backedge.i

.backedge.i:                                      ; preds = %"_ZN4core3ptr156drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$u5d$$GT$$GT$17hd55ddfb12b279068E.exit.i", %bb.b
  %i.n = icmp eq i64 %.sroa.0.0.add.i, 504
  br i1 %i.n, label %"_ZN76_$LT$thread_local..ThreadLocal$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab9cf23d18453cdaE.exit", label %bb.b

"_ZN76_$LT$thread_local..ThreadLocal$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab9cf23d18453cdaE.exit": ; preds = %.backedge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr128drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$actix_web..server..Config$GT$$GT$$GT$17hb1196e0c92340069E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !188, !noundef !27
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.c, !prof !222

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.g, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %"_ZN4core3ptr90drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$actix_web..server..Config$GT$$GT$17h95aa0bfb5bd9df1cE.exit", !prof !29

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.val)
  br label %"_ZN4core3ptr90drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$actix_web..server..Config$GT$$GT$17h95aa0bfb5bd9df1cE.exit"

"_ZN4core3ptr90drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$actix_web..server..Config$GT$$GT$17h95aa0bfb5bd9df1cE.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr129drop_in_place$LT$tracing_subscriber..fmt..fmt_layer..FormattedFields$LT$tracing_subscriber..fmt..format..json..JsonFields$GT$$GT$17h1b780062db8cd694E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21878)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !21878
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !21878, !nonnull !27, !noundef !27
  tail call void @mi_free(ptr noundef nonnull %.val1.i) #38, !noalias !21878
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr130drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$17hb570c1105eb68950E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21881)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !21881, !nonnull !27, !noundef !27 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !21881, !nonnull !27, !noundef !27 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21884)
  %i.h = icmp eq ptr %.val2.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr101drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$u5d$$GT$17h668a40cd54e9a85aE.exit.i", label %.lr.ph.i.i

.body.i:                                          ; preds = %bb.f, %.body.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !21881, !noundef !27
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr224drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$C$alloc..alloc..Global$GT$$GT$17h3b155f3e851770bbE.exit.i", label %bb.b

bb.b:                                             ; preds = %.body.i
  %i.l = load ptr, ptr %0, align 8, !alias.scope !21881, !nonnull !27, !noundef !27
  tail call void @mi_free(ptr noundef nonnull %i.l) #38, !noalias !21881
  br label %"_ZN4core3ptr224drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$C$alloc..alloc..Global$GT$$GT$17h3b155f3e851770bbE.exit.i"

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$17h8f3a7a781865f464E.exit.i.i"
  %.sroa.0.010.i.i = phi i64 [ %i.n, %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$17h8f3a7a781865f464E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i.i ; 2 uses
  %i.n = add nuw i64 %.sroa.0.010.i.i, 1          ; 4 uses
  %.val8.i.i = load ptr, ptr %i.m, align 8, !alias.scope !21884, !noalias !21881 ; 5 uses
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val9.i.i = load ptr, ptr %i.o, align 8, !alias.scope !21884, !noalias !21881, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.p = load ptr, ptr %.val9.i.i, align 8, !invariant.load !27, !noalias !21887 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  invoke void %i.p(ptr noundef nonnull %.val8.i.i)
          to label %bb.d unwind label %bb.e, !noalias !21887

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !28, !invariant.load !27, !noalias !21887
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$17h8f3a7a781865f464E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.val8.i.i) #38, !noalias !21887
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$17h8f3a7a781865f464E.exit.i.i"

bb.e:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !28, !invariant.load !27, !noalias !21887
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.body.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.e
  tail call void @mi_free(ptr noundef nonnull %.val8.i.i) #38, !noalias !21887
  br label %.body.i.i

"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$17h8f3a7a781865f464E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.d
  %i.x = icmp eq i64 %i.n, %i.g
  br i1 %i.x, label %"_ZN4core3ptr101drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$u5d$$GT$17h668a40cd54e9a85aE.exit.i", label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph
  %i.y = add i64 %.sroa.0.1.i.i15, 1              ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.g
  br i1 %i.z, label %.body.i, label %.lr.ph

.body.i.i:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.e
  %i.aa = icmp eq i64 %i.n, %i.g
  br i1 %i.aa, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.f
  %.sroa.0.1.i.i15 = phi i64 [ %i.y, %bb.f ], [ %i.n, %.body.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i.i15 ; 2 uses
  %.val.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !21884, !noalias !21881
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val7.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !21884, !noalias !21881, !nonnull !27, !align !148, !noundef !27
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$17h8f3a7a781865f464E"(ptr %.val.i.i, ptr nonnull %.val7.i.i) #44
          to label %bb.f unwind label %bb.g, !noalias !21887

bb.g:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !21887
  unreachable

"_ZN4core3ptr101drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$u5d$$GT$17h668a40cd54e9a85aE.exit.i": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$17h8f3a7a781865f464E.exit.i.i", %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !21881, !noundef !27
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5b8fc77943022998E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr101drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$u5d$$GT$17h668a40cd54e9a85aE.exit.i"
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !21881, !nonnull !27, !noundef !27
  tail call void @mi_free(ptr noundef nonnull %i.ah) #38, !noalias !21881
  br label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5b8fc77943022998E.exit"

"_ZN4core3ptr224drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$C$alloc..alloc..Global$GT$$GT$17h3b155f3e851770bbE.exit.i": ; preds = %bb.b, %.body.i
  resume { ptr, i32 } %i.t

"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5b8fc77943022998E.exit": ; preds = %"_ZN4core3ptr101drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$u5d$$GT$17h668a40cd54e9a85aE.exit.i", %bb.h
  ret void
}

end_hunk_1
begin_hunk_2_@"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17h01e7b88835ca44fdE":bb.a

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val5
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h91e8a66b1cbce7d7E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %.val4, i64 %.sroa.0.0.i.i7
  %i.f = add i64 %.sroa.0.0.i.i7, 1               ; 4 uses
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.d, !inline_history !29468

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val5
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val5
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %.val4, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h41dc6884427696aaE"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.k) #44
          to label %bb.c unwind label %bb.e, !inline_history !29468

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !inline_history !29468
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val2 = load i64, ptr %0, align 8, !range !28, !noundef !27
  %i.m = icmp eq i64 %.val2, 0
  br i1 %i.m, label %"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hc08e4431fed8a373E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  tail call void @mi_free(ptr noundef nonnull %.val4) #38
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hc08e4431fed8a373E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h91e8a66b1cbce7d7E.exit": ; preds = %bb.b, %bb.a
  %.val = load i64, ptr %0, align 8, !range !28, !noundef !27
  %i.n = icmp eq i64 %.val, 0
  br i1 %i.n, label %"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hc08e4431fed8a373E.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h91e8a66b1cbce7d7E.exit"
  tail call void @mi_free(ptr noundef nonnull %.val4) #38
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hc08e4431fed8a373E.exit6"

"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hc08e4431fed8a373E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h91e8a66b1cbce7d7E.exit", %bb.g
  ret void

"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$serde_json..value..Value$GT$$GT$17hc08e4431fed8a373E.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr68drop_in_place$LT$tracing_subscriber..registry..sharded..Registry$GT$17h594c461950586412E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(544) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29475)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i64, ptr %i.a acquire, align 8, !alias.scope !29478 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !29479, !noundef !27 ; 3 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.preheader.i.i.i, label %bb.b, !prof !222

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.b, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2104) #43
          to label %.noexc.i.i unwind label %bb.g, !noalias !29479

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !alias.scope !29478, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.b, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.backedge.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.01.04.i.i.i = phi ptr [ %i.h, %.backedge.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i.i, i64 8
  %i.i = load atomic ptr, ptr %.sroa.01.04.i.i.i acquire, align 8, !noalias !29478 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.backedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29483)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val5.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !29486, !noalias !29478, !noundef !27
  %i.l = icmp eq i64 %.val5.i.i.i.i.i.i, 0
  br i1 %i.l, label %"_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$$u5b$sharded_slab..page..Local$u5d$$GT$$GT$17h45cd8d92ac797fe2E.exit.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !29486, !noalias !29478, !nonnull !27, !noundef !27
  tail call void @mi_free(ptr noundef nonnull %.val4.i.i.i.i.i.i) #38, !noalias !29487
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$$u5b$sharded_slab..page..Local$u5d$$GT$$GT$17h45cd8d92ac797fe2E.exit.i.i.i.i.i.i"

"_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$$u5b$sharded_slab..page..Local$u5d$$GT$$GT$17h45cd8d92ac797fe2E.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !29486, !noalias !29478, !nonnull !27, !noundef !27 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val1.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !29486, !noalias !29478, !noundef !27 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$$u5b$sharded_slab..page..Shared$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$u5d$$GT$17hd7c26f6fb09c6b2dE"(ptr noalias noundef nonnull align 8 %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i)
          to label %bb.e unwind label %bb.d, !noalias !29487

bb.d:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$$u5b$sharded_slab..page..Local$u5d$$GT$$GT$17h45cd8d92ac797fe2E.exit.i.i.i.i.i.i"
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.p, label %bb.f, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i6.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i6.i.i.i.i.i.i": ; preds = %bb.d
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i) #38, !noalias !29487
  br label %bb.f

bb.e:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..boxed..Box$LT$$u5b$sharded_slab..page..Local$u5d$$GT$$GT$17h45cd8d92ac797fe2E.exit.i.i.i.i.i.i"
  %i.q = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.q, label %"_ZN4core3ptr210drop_in_place$LT$alloc..boxed..Box$LT$sharded_slab..sync..inner..alloc..Track$LT$sharded_slab..shard..Shard$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$$GT$$GT$17he4e266925842bd65E.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i": ; preds = %bb.e
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i) #38, !noalias !29487
  br label %"_ZN4core3ptr210drop_in_place$LT$alloc..boxed..Box$LT$sharded_slab..sync..inner..alloc..Track$LT$sharded_slab..shard..Shard$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$$GT$$GT$17he4e266925842bd65E.exit.i.i.i"

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i6.i.i.i.i.i.i", %bb.d
  tail call void @mi_free(ptr noundef nonnull %i.i) #38, !noalias !29478
  %.val3.pr.i.i = load i64, ptr %i.c, align 8, !alias.scope !29479
  br label %.body.i.i

"_ZN4core3ptr210drop_in_place$LT$alloc..boxed..Box$LT$sharded_slab..sync..inner..alloc..Track$LT$sharded_slab..shard..Shard$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$$GT$$GT$17he4e266925842bd65E.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i", %bb.e
  tail call void @mi_free(ptr noundef nonnull %i.i) #38, !noalias !29478
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %"_ZN4core3ptr210drop_in_place$LT$alloc..boxed..Box$LT$sharded_slab..sync..inner..alloc..Track$LT$sharded_slab..shard..Shard$LT$tracing_subscriber..registry..sharded..DataInner$C$sharded_slab..cfg..DefaultConfig$GT$$GT$$GT$$GT$17he4e266925842bd65E.exit.i.i.i", %.lr.ph.i.i.i
  %i.r = icmp eq ptr %.sroa.01.04.i.i.i, %i.g
  br i1 %i.r, label %"_ZN81_$LT$sharded_slab..shard..Array$LT$T$C$C$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb33dc70fb45468baE.exit.i.i", label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.f
  %.val3.i.i = phi i64 [ %.val3.pr.i.i, %bb.f ], [ %i.d, %bb.g ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i64 %.val3.i.i, 0
  br i1 %i.t, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %.body.i.i
  %.val2.i.i = load ptr, ptr %0, align 8, !alias.scope !29479, !nonnull !27, !noundef !27
  tail call void @mi_free(ptr noundef nonnull %.val2.i.i) #38, !noalias !29479
  br label %.body

"_ZN81_$LT$sharded_slab..shard..Array$LT$T$C$C$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb33dc70fb45468baE.exit.i.i": ; preds = %.backedge.i.i.i
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !29479, !noundef !27
  %i.u = icmp eq i64 %.val1.i.i, 0
  br i1 %i.u, label %"_ZN4core3ptr101drop_in_place$LT$sharded_slab..pool..Pool$LT$tracing_subscriber..registry..sharded..DataInner$GT$$GT$17h93b55c8817ef3efcE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i": ; preds = %"_ZN81_$LT$sharded_slab..shard..Array$LT$T$C$C$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb33dc70fb45468baE.exit.i.i"
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !29479, !nonnull !27, !noundef !27
  tail call void @mi_free(ptr noundef nonnull %.val.i.i) #38, !noalias !29479
  br label %"_ZN4core3ptr101drop_in_place$LT$sharded_slab..pool..Pool$LT$tracing_subscriber..registry..sharded..DataInner$GT$$GT$17h93b55c8817ef3efcE.exit"

.body:                                            ; preds = %.body.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr127drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17hf867585b4444c35dE"(ptr noalias noundef align 8 dereferenceable(512) %i.v) #44
  resume { ptr, i32 } %eh.lpad-body.i.i

"_ZN4core3ptr101drop_in_place$LT$sharded_slab..pool..Pool$LT$tracing_subscriber..registry..sharded..DataInner$GT$$GT$17h93b55c8817ef3efcE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i", %"_ZN81_$LT$sharded_slab..shard..Array$LT$T$C$C$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb33dc70fb45468baE.exit.i.i"
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29491)
  br label %bb.h

bb.h:                                             ; preds = %.backedge.i.i, %"_ZN4core3ptr101drop_in_place$LT$sharded_slab..pool..Pool$LT$tracing_subscriber..registry..sharded..DataInner$GT$$GT$17h93b55c8817ef3efcE.exit"
  %.sroa.0.0.idx12.i.i = phi i64 [ 0, %"_ZN4core3ptr101drop_in_place$LT$sharded_slab..pool..Pool$LT$tracing_subscriber..registry..sharded..DataInner$GT$$GT$17h93b55c8817ef3efcE.exit" ], [ %.sroa.0.0.add.i.i, %.backedge.i.i ] ; 2 uses
  %.sroa.7.011.i.i = phi i64 [ 0, %"_ZN4core3ptr101drop_in_place$LT$sharded_slab..pool..Pool$LT$tracing_subscriber..registry..sharded..DataInner$GT$$GT$17h93b55c8817ef3efcE.exit" ], [ %i.x, %.backedge.i.i ] ; 2 uses
  %.sroa.0.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.0.idx12.i.i
  %.sroa.0.0.add.i.i = add nuw nsw i64 %.sroa.0.0.idx12.i.i, 8 ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.7.011.i.i, 1
  %i.y = load ptr, ptr %.sroa.0.0.ptr.i.i, align 8, !alias.scope !29494, !noundef !27 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.backedge.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = shl nuw i64 1, %.sroa.7.011.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29495)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i.i", %bb.i
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.ac, %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i.i" ], [ 0, %bb.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %.sroa.0.011.i.i.i.i ; 3 uses
  %i.ac = add nuw i64 %.sroa.0.011.i.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29501)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ae = load i8, ptr %i.ad, align 1, !range !188, !alias.scope !29504, !noalias !29494, !noundef !27
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val.i.i.i.i.i.i1 = load i64, ptr %i.ag, align 8, !alias.scope !29504, !noalias !29494
  %i.ah = icmp ne i64 %.val.i.i.i.i.i.i1, 0
  %or.cond.not.i.i.i.i.i.i = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.j, label %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i.i"

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val1.i.i.i.i.i.i2 = load ptr, ptr %i.ai, align 8, !alias.scope !29504, !noalias !29494, !nonnull !27, !noundef !27
  tail call void @mi_free(ptr noundef nonnull %.val1.i.i.i.i.i.i2) #38, !noalias !29505
  br label %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i.i"

"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i.i": ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.aj = icmp eq i64 %i.ac, %i.aa
  br i1 %i.aj, label %"_ZN4core3ptr156drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$u5d$$GT$$GT$17hd55ddfb12b279068E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN4core3ptr156drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$u5d$$GT$$GT$17hd55ddfb12b279068E.exit.i.i": ; preds = %"_ZN4core3ptr121drop_in_place$LT$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17h6d6578fe2d07d191E.exit.i.i.i.i"
  tail call void @mi_free(ptr noundef nonnull %i.y) #38, !noalias !29494
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %"_ZN4core3ptr156drop_in_place$LT$alloc..boxed..Box$LT$$u5b$thread_local..Entry$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$u5d$$GT$$GT$17hd55ddfb12b279068E.exit.i.i", %bb.h
  %i.ak = icmp eq i64 %.sroa.0.0.add.i.i, 504
  br i1 %i.ak, label %"_ZN4core3ptr127drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17hf867585b4444c35dE.exit", label %bb.h

"_ZN4core3ptr127drop_in_place$LT$thread_local..ThreadLocal$LT$core..cell..RefCell$LT$tracing_subscriber..registry..stack..SpanStack$GT$$GT$$GT$17hf867585b4444c35dE.exit": ; preds = %.backedge.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h09b7d3630c23150bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29506)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc5ca8df5e4240e2E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i"
  %.sroa.0.011.i.i = phi i64 [ %i.e, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.011.i.i, 1          ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !29506
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !29506, !nonnull !27, !noundef !27
  tail call void @mi_free(ptr noundef nonnull %.val9.i.i) #38, !noalias !29506
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc5ca8df5e4240e2E.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc5ca8df5e4240e2E.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !28, !noundef !27
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hccefe51334c905c0E.exit6", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc5ca8df5e4240e2E.exit"
  tail call void @mi_free(ptr noundef nonnull %.val) #38
  br label %"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hccefe51334c905c0E.exit6"

"_ZN4core3ptr76drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hccefe51334c905c0E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc5ca8df5e4240e2E.exit", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$tracing..span..Inner$GT$$GT$17hc49e360a82aff1cdE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !210, !noundef !27 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %"_ZN4core3ptr41drop_in_place$LT$tracing..span..Inner$GT$17h88379cf308ccc7a8E.exit", label %bb.b

"_ZN4core3ptr41drop_in_place$LT$tracing..span..Inner$GT$17h88379cf308ccc7a8E.exit": ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29515)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %"_ZN4core3ptr41drop_in_place$LT$tracing..span..Inner$GT$17h88379cf308ccc7a8E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29521)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !29524, !nonnull !27, !noundef !27
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !29524
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr41drop_in_place$LT$tracing..span..Inner$GT$17h88379cf308ccc7a8E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h7c23e498be1b1d26E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %"_ZN4core3ptr41drop_in_place$LT$tracing..span..Inner$GT$17h88379cf308ccc7a8E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr69drop_in_place$LT$meilisearch..analytics..segment_analytics..Event$GT$17h427ca9f3a36bcde7E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !27 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !28, !invariant.load !27
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$meilisearch..analytics..Aggregate$GT$$GT$17hcad28e914b919d11E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @mi_free(ptr noundef nonnull %.val) #38
  br label %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$meilisearch..analytics..Aggregate$GT$$GT$17hcad28e914b919d11E.exit"

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !28, !invariant.load !27
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %bb.d
  tail call void @mi_free(ptr noundef nonnull %.val) #38
  br label %.body

.body:                                            ; preds = %bb.d, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17hd595f91f2dccb7cfE"(ptr noalias noundef align 8 dereferenceable(48) %i.k) #44
  resume { ptr, i32 } %i.g

"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$meilisearch..analytics..Aggregate$GT$$GT$17hcad28e914b919d11E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29540)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !29543, !noundef !27 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17hd595f91f2dccb7cfE.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$meilisearch..analytics..Aggregate$GT$$GT$17hcad28e914b919d11E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29544)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !29547, !noundef !27 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc40760ecd88822ecE.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.l, align 8, !alias.scope !29547, !nonnull !27, !noundef !27 ; 3 uses
  %.val13.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.s, align 16, !noalias !29548
  %i.t = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = bitcast <16 x i1> %i.t to i16
  br label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h2ef11ad1aa0178ccE.exit.i.i.i.i.i.i.i", %bb.f
  %.sroa.07.018.i.i.i.i.i.i.i = phi ptr [ %i.s, %bb.f ], [ %.sroa.07.1.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h2ef11ad1aa0178ccE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %.sroa.6.1.i.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h2ef11ad1aa0178ccE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i.i = phi i16 [ %i.v, %bb.f ], [ %i.ae, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h2ef11ad1aa0178ccE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i.i = phi i64 [ %i.q, %bb.f ], [ %i.ah, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17h2ef11ad1aa0178ccE.exit.i.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h085355406dbd683fE.exit.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %i.w = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.6.017.i.i.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.x = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.07.018.i.i.i.i.i.i.i, %bb.g ]
  %.val911.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.w, align 16, !noalias !29551
  %i.y = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -384 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.y to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h085355406dbd683fE.exit.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h085355406dbd683fE.exit.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i.i, %bb.g ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i ]
end_hunk_2
