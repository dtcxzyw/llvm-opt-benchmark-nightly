Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.04?download=true
inline.NumInlined: 4752
inline.NumDeleted: 2180
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$26deserialize_newtype_struct17hef99d77ba1eaabdfE":bb.a
  ], !prof !28

bb.o:                                             ; preds = %bb.n
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content31ContentRefDeserializer$LT$E$GT$12invalid_type17h8bb7df253dabb904E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48)
  br label %"_ZN160_$LT$anki..decks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..DeckId$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$20visit_newtype_struct17h4da4176fdd1808b3E.exit"

bb.p:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !3070, !noundef !5
  %i.at = zext i8 %i.as to i64
  %i.au = inttoptr i64 %i.at to ptr
  br label %"_ZN160_$LT$anki..decks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..DeckId$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$20visit_newtype_struct17h4da4176fdd1808b3E.exit"

bb.q:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !alias.scope !3070, !noundef !5
  %i.ax = zext i16 %i.aw to i64
  %i.ay = inttoptr i64 %i.ax to ptr
  br label %"_ZN160_$LT$anki..decks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..DeckId$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$20visit_newtype_struct17h4da4176fdd1808b3E.exit"

bb.r:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !3070, !noundef !5
  %i.bb = zext i32 %i.ba to i64
  %i.bc = inttoptr i64 %i.bb to ptr
  br label %"_ZN160_$LT$anki..decks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..DeckId$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$20visit_newtype_struct17h4da4176fdd1808b3E.exit"

bb.s:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !3070, !noundef !5 ; 4 uses
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.u, label %bb.t, !prof !9

bb.t:                                             ; preds = %bb.s
  %i.bg = inttoptr i64 %i.be to ptr
  br label %"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i64$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h0cb09e5d0acd07e3E.exit.i.i.i4"

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3070
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.be, ptr %i.bh, align 8, !noalias !3070
  store i8 1, ptr %i.b, align 8, !noalias !3070
  %i.bi = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h6a499f02f367aa19E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48), !noalias !3070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3070
  br label %"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i64$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h0cb09e5d0acd07e3E.exit.i.i.i4"

"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i64$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h0cb09e5d0acd07e3E.exit.i.i.i4": ; preds = %bb.u, %bb.t
  %.sroa.3.0.i.i.i.i5 = phi ptr [ %i.bi, %bb.u ], [ %i.bg, %bb.t ]
  %.lobit.i6 = lshr i64 %i.be, 63
  br label %"_ZN160_$LT$anki..decks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..DeckId$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$20visit_newtype_struct17h4da4176fdd1808b3E.exit"

bb.v:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !3070, !noundef !5
  %i.bl = sext i8 %i.bk to i64
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %"_ZN160_$LT$anki..decks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..DeckId$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$20visit_newtype_struct17h4da4176fdd1808b3E.exit"

bb.w:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !alias.scope !3070, !noundef !5
  %i.bp = sext i16 %i.bo to i64
  %i.bq = inttoptr i64 %i.bp to ptr
  br label %"_ZN160_$LT$anki..decks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..DeckId$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$20visit_newtype_struct17h4da4176fdd1808b3E.exit"

bb.x:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !alias.scope !3070, !noundef !5
  %i.bt = sext i32 %i.bs to i64
  %i.bu = inttoptr i64 %i.bt to ptr
  br label %"_ZN160_$LT$anki..decks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..DeckId$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$20visit_newtype_struct17h4da4176fdd1808b3E.exit"

bb.y:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !3070, !noundef !5
  %i.bx = inttoptr i64 %i.bw to ptr
  br label %"_ZN160_$LT$anki..decks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..DeckId$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$20visit_newtype_struct17h4da4176fdd1808b3E.exit"

"_ZN160_$LT$anki..decks.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..decks..DeckId$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$20visit_newtype_struct17h4da4176fdd1808b3E.exit": ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i64$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h0cb09e5d0acd07e3E.exit.i.i.i4", %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i64$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h0cb09e5d0acd07e3E.exit.i.i.i", %bb.f, %bb.e, %bb.d, %bb.c
  %.pn.i.i.i.pn = phi i64 [ 0, %bb.m ], [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ %.lobit.i, %"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i64$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h0cb09e5d0acd07e3E.exit.i.i.i" ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 1, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ %.lobit.i6, %"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i64$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h0cb09e5d0acd07e3E.exit.i.i.i4" ], [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.y ]
  %.pn3.i.i.i.pn = phi ptr [ %i.ap, %bb.m ], [ %i.i, %bb.c ], [ %i.m, %bb.d ], [ %i.q, %bb.e ], [ %i.u, %bb.f ], [ %.sroa.3.0.i.i.i.i, %"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i64$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h0cb09e5d0acd07e3E.exit.i.i.i" ], [ %i.ae, %bb.j ], [ %i.ai, %bb.k ], [ %i.am, %bb.l ], [ %i.aq, %bb.o ], [ %i.au, %bb.p ], [ %i.ay, %bb.q ], [ %i.bc, %bb.r ], [ %.sroa.3.0.i.i.i.i5, %"_ZN158_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i64$GT$..deserialize..PrimitiveVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_u6417h0cb09e5d0acd07e3E.exit.i.i.i4" ], [ %i.bm, %bb.v ], [ %i.bq, %bb.w ], [ %i.bu, %bb.x ], [ %i.bx, %bb.y ]
  %.pn8 = insertvalue { i64, ptr } poison, i64 %.pn.i.i.i.pn, 0
  %.pn = insertvalue { i64, ptr } %.pn8, ptr %.pn3.i.i.i.pn, 1
  ret { i64, ptr } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10rayon_core4join12join_context28_$u7b$$u7b$closure$u7d$$u7d$17h32db8c5d52a63e16E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, ptr noundef nonnull align 128 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [96 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$8is_empty17h8a305f0304102348E"(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$4push17hf7ac05f801472e0eE"(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17h461d869931359109E", ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h81a4e54108efef4fE(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !12

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_ZN10rayon_core5sleep5Sleep16wake_any_threads17h81ed8b4cdea83a2aE(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, !prof !9

_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx57, align 8
  %.sroa.6.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx58, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3083
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8
  store <2 x ptr> %i.ac, ptr %i.a, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.12.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN77_$LT$rayon..range..Iter$LT$T$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17h53903331bf598c52E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %.sroa.6.0.copyload, i32 noundef %.sroa.7.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.ae)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #40
  unreachable

bb.h:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3083
  %.sroa.12.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload54 = load i64, ptr %.sroa.12.0..sroa_idx53, align 16
  %i.ah = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.ah, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.12.0.copyload54, ptr %.sroa.513.0..sroa_idx, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.al = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_ZN10rayon_core4join23join_recover_from_panic17h80b67168c3d68f84E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 1 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.am) #38
          to label %bb.x unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.o
  %i.an = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ao = icmp eq i64 %i.an, 3
  br i1 %i.ao, label %.loopexit76, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = invoke { ptr, ptr } @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$3pop17ha24d8703760093f5E"(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.aq = extractvalue { ptr, ptr } %i.ap, 0
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %.preheader.i, label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN15crossbeam_deque5deque16Stealer$LT$T$GT$5steal17heefc9ba211d94f07E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ai)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.ar = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  switch i64 %i.ar, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.as = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5
  %i.at = load ptr, ptr %i.ak, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.at, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.1.i = phi ptr [ %i.as, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.sroa.5.1.i, 1
  br label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.loopexit76:                                      ; preds = %bb.j, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$11into_result17hc567b20296731afdE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.d)
          to label %bb.v unwind label %bb.u

_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.ap, %.noexc41 ], [ %i.av, %.loopexit.i ] ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ax = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.aw, null                 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.ay = icmp eq ptr %i.j, %i.ax
  %i.az = icmp eq ptr %i.aw, @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17h461d869931359109E"
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.aw(ptr noundef %i.ax)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.g, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$10run_inline17hbfef44bf5afa7149E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.g, i1 noundef zeroext false)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.bb = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bc = icmp eq i64 %i.bb, 3
  br i1 %i.bc, label %.loopexit76, label %bb.t, !prof !12

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN10rayon_core8registry12WorkerThread15wait_until_cold17h42c453b5e5bc02f7E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit76 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.loopexit76
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5250e13729602aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.w

bb.v:                                             ; preds = %.loopexit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.w:                                             ; preds = %.loopexit.split-lp, %bb.u, %bb.y
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t, %bb.p
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp78, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5250e13729602aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit45" unwind label %bb.w

"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit45": ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.i
  unreachable

bb.y:                                             ; preds = %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit45", %.thread
  %.pn.pn62 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit45" ]
  invoke fastcc void @"_ZN4core3ptr1296drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..SpinLatch$C$rayon_core..join..join_context..call_b$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$C$rayon_core..join..join..call$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$C$$LT$rayon..iter..chain..Chain$LT$rayon..range..Iter$LT$u32$GT$$C$rayon..iter..once..Once$LT$u32$GT$$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$..drive_unindexed$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..while_some..WhileSomeConsumer$LT$rayon..iter..extend..ListVecConsumer$GT$$C$rayon..result..$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$..from_par_iter..ok$LT$$LP$u32$C$f32$RP$$C$anki..error..AnkiError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$anki..deckconfig..service..$LT$impl$u20$anki..services..DeckConfigService$u20$for$u20$anki..collection..Collection$GT$..get_retention_workload..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$$GT$17h7733d4585f34c420E"(ptr noalias noundef align 8 dereferenceable(96) %i.j) #39
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.u, %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit45", %bb.y
  %.pn.pn61 = phi { ptr, i32 } [ %lpad.phi, %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit45" ], [ %.pn.pn62, %bb.y ], [ %i.bd, %bb.u ]
  resume { ptr, i32 } %.pn.pn61
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10rayon_core4join12join_context28_$u7b$$u7b$closure$u7d$$u7d$17h68a317400f0ea534E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noundef nonnull align 128 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 6 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [112 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [112 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [112 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 0, ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$8is_empty17h8a305f0304102348E"(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$4push17hf7ac05f801472e0eE"(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17h01657b17dd9b2dc0E", ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h81a4e54108efef4fE(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !12

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_ZN10rayon_core5sleep5Sleep16wake_any_threads17h81ed8b4cdea83a2aE(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, !prof !9

_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.5.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx58, align 8
  %.sroa.6.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx59, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8
  store <2 x ptr> %i.ac, ptr %i.a, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.12.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN77_$LT$rayon..range..Iter$LT$T$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17h2ba127a157980621E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %.sroa.7.0.copyload, i32 noundef %.sroa.8.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.ae)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #40
  unreachable

bb.h:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3096
  %.sroa.12.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload54 = load i64, ptr %.sroa.12.0..sroa_idx53, align 16
  %i.ah = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.ah, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.12.0.copyload54, ptr %.sroa.513.0..sroa_idx, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.al = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_ZN10rayon_core4join23join_recover_from_panic17h80b67168c3d68f84E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 1 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.am) #38
          to label %bb.x unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.o
  %i.an = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ao = icmp eq i64 %i.an, 3
  br i1 %i.ao, label %.loopexit77, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = invoke { ptr, ptr } @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$3pop17ha24d8703760093f5E"(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.aq = extractvalue { ptr, ptr } %i.ap, 0
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %.preheader.i, label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN15crossbeam_deque5deque16Stealer$LT$T$GT$5steal17heefc9ba211d94f07E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ai)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.ar = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  switch i64 %i.ar, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.as = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5
  %i.at = load ptr, ptr %i.ak, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.at, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.1.i = phi ptr [ %i.as, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.sroa.5.1.i, 1
  br label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.loopexit77:                                      ; preds = %bb.j, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$11into_result17h10150660d7dcc274E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.d)
          to label %bb.v unwind label %bb.u

_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.ap, %.noexc41 ], [ %i.av, %.loopexit.i ] ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ax = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.aw, null                 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.ay = icmp eq ptr %i.j, %i.ax
  %i.az = icmp eq ptr %i.aw, @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17h01657b17dd9b2dc0E"
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.aw(ptr noundef %i.ax)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$10run_inline17h69216d1df37167dcE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.g, i1 noundef zeroext false)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.bb = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bc = icmp eq i64 %i.bb, 3
  br i1 %i.bc, label %.loopexit77, label %bb.t, !prof !12

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN10rayon_core8registry12WorkerThread15wait_until_cold17h42c453b5e5bc02f7E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit77 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.loopexit77
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN96_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h28ddefdcf685e4a1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.w

bb.v:                                             ; preds = %.loopexit77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.w:                                             ; preds = %.loopexit.split-lp, %bb.u, %bb.y
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t, %bb.p
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp79, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @"_ZN96_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h28ddefdcf685e4a1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit45" unwind label %bb.w

"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit45": ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.i
  unreachable

bb.y:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit45", %.thread
  %.pn.pn63 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit45" ]
  invoke fastcc void @"_ZN4core3ptr1269drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..SpinLatch$C$rayon_core..join..join_context..call_b$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$C$rayon_core..join..join..call$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$C$$LT$rayon..iter..chain..Chain$LT$rayon..range..Iter$LT$u32$GT$$C$rayon..iter..once..Once$LT$u32$GT$$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$..drive_unindexed$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..while_some..WhileSomeConsumer$LT$rayon..iter..collect..consumer..CollectConsumer$LT$$LP$u32$C$f32$RP$$GT$$GT$$C$rayon..result..$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$..from_par_iter..ok$LT$$LP$u32$C$f32$RP$$C$anki..error..AnkiError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$anki..deckconfig..service..$LT$impl$u20$anki..services..DeckConfigService$u20$for$u20$anki..collection..Collection$GT$..get_retention_workload..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17h6c87320b10df4080E"(ptr noalias noundef align 8 dereferenceable(112) %i.j) #39
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.u, %"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit45", %bb.y
  %.pn.pn62 = phi { ptr, i32 } [ %lpad.phi, %"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit45" ], [ %.pn.pn63, %bb.y ], [ %i.bd, %bb.u ]
  resume { ptr, i32 } %.pn.pn62
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10rayon_core4join12join_context28_$u7b$$u7b$closure$u7d$$u7d$17h6ee78ae437f6e51aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr noundef nonnull align 128 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [120 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [120 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [120 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  store i64 0, ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$8is_empty17h8a305f0304102348E"(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$4push17hf7ac05f801472e0eE"(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17h76c790faee42a8b8E", ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h81a4e54108efef4fE(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !12

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_ZN10rayon_core5sleep5Sleep16wake_any_threads17h81ed8b4cdea83a2aE(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, !prof !9

_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.051.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx52, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx54, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 100
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4
  store i64 %.sroa.5.0.copyload, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.051.0.copyload, align 8, !noalias !3106, !noundef !5
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !3106, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !3106, !noundef !5
  invoke void @_ZN5rayon4iter8plumbing24bridge_producer_consumer6helper17hf58d68cad809ea13E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, i32 noundef %.sroa.7.0.copyload, i32 noundef %.sroa.8.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #40
  unreachable

bb.h:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3106
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload49 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.ak, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.13.0.copyload49, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_ZN10rayon_core4join23join_recover_from_panic17h80b67168c3d68f84E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 1 %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #38
          to label %bb.x unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.o
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit72, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$3pop17ha24d8703760093f5E"(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN15crossbeam_deque5deque16Stealer$LT$T$GT$5steal17heefc9ba211d94f07E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.1.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.1.i, 1
  br label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.loopexit72:                                      ; preds = %bb.j, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %i.j, i64 120, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$11into_result17hf60a34b6423b3d7fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.d)
          to label %bb.v unwind label %bb.u

_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.bb = icmp eq ptr %i.j, %i.ba
  %i.bc = icmp eq ptr %i.az, @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17h76c790faee42a8b8E"
  %or.cond = and i1 %i.bb, %i.bc
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.j, i64 120, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$10run_inline17hd01fc56ad18f1cfeE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.g, i1 noundef zeroext false)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.be = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bf = icmp eq i64 %i.be, 3
  br i1 %i.bf, label %.loopexit72, label %bb.t, !prof !12

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN10rayon_core8registry12WorkerThread15wait_until_cold17h42c453b5e5bc02f7E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit72 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.loopexit72
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h576cc74f61c106d4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.w

bb.v:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.w:                                             ; preds = %.loopexit.split-lp, %bb.u, %bb.y
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t, %bb.p
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h576cc74f61c106d4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit45" unwind label %bb.w

"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit45": ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.i
  unreachable

bb.y:                                             ; preds = %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit45", %.thread
  %.pn.pn58 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit45" ]
  invoke fastcc void @"_ZN4core3ptr1083drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..SpinLatch$C$rayon_core..join..join_context..call_b$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$C$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..range..IterProducer$LT$u32$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..while_some..WhileSomeConsumer$LT$rayon..iter..extend..ListVecConsumer$GT$$C$rayon..result..$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$..from_par_iter..ok$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$C$anki..error..AnkiError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$anki..scheduler..fsrs..simulator..$LT$impl$u20$anki..collection..Collection$GT$..simulate_workload..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$$GT$17h3c0adc3ff9a71d12E"(ptr noalias noundef align 8 dereferenceable(120) %i.j) #39
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.u, %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit45", %bb.y
  %.pn.pn57 = phi { ptr, i32 } [ %lpad.phi, %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit45" ], [ %.pn.pn58, %bb.y ], [ %i.bg, %bb.u ]
  resume { ptr, i32 } %.pn.pn57
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10rayon_core4join12join_context28_$u7b$$u7b$closure$u7d$$u7d$17h75e67abc89bb67d9E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %1, ptr noundef nonnull align 128 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 6 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [112 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [112 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [112 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 0, ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$8is_empty17h8a305f0304102348E"(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$4push17hf7ac05f801472e0eE"(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17h312d5fcb45eef959E", ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h81a4e54108efef4fE(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !12

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_ZN10rayon_core5sleep5Sleep16wake_any_threads17h81ed8b4cdea83a2aE(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, !prof !9

_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.5.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx58, align 8
  %.sroa.6.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx59, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8
  store <2 x ptr> %i.ac, ptr %i.a, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.12.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN77_$LT$rayon..range..Iter$LT$T$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17h5150443a0b5d3c45E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %.sroa.7.0.copyload, i32 noundef %.sroa.8.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.ae)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #40
  unreachable

bb.h:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3119
  %.sroa.12.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload54 = load i64, ptr %.sroa.12.0..sroa_idx53, align 16
  %i.ah = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.ah, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.12.0.copyload54, ptr %.sroa.513.0..sroa_idx, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.al = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_ZN10rayon_core4join23join_recover_from_panic17h80b67168c3d68f84E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 1 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.am) #38
          to label %bb.x unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.o
  %i.an = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ao = icmp eq i64 %i.an, 3
  br i1 %i.ao, label %.loopexit77, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = invoke { ptr, ptr } @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$3pop17ha24d8703760093f5E"(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.aq = extractvalue { ptr, ptr } %i.ap, 0
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %.preheader.i, label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN15crossbeam_deque5deque16Stealer$LT$T$GT$5steal17heefc9ba211d94f07E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ai)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.ar = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  switch i64 %i.ar, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.as = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5
  %i.at = load ptr, ptr %i.ak, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.at, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.1.i = phi ptr [ %i.as, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.sroa.5.1.i, 1
  br label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.loopexit77:                                      ; preds = %bb.j, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$11into_result17h162d4345512b2c06E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.d)
          to label %bb.v unwind label %bb.u

_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.ap, %.noexc41 ], [ %i.av, %.loopexit.i ] ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ax = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.aw, null                 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.ay = icmp eq ptr %i.j, %i.ax
  %i.az = icmp eq ptr %i.aw, @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17h312d5fcb45eef959E"
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.aw(ptr noundef %i.ax)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$10run_inline17h1e2e2d162d82f4d9E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.g, i1 noundef zeroext false)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.bb = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bc = icmp eq i64 %i.bb, 3
  br i1 %i.bc, label %.loopexit77, label %bb.t, !prof !12

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN10rayon_core8registry12WorkerThread15wait_until_cold17h42c453b5e5bc02f7E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit77 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.loopexit77
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN96_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he91e8c7ba3d5ae72E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.w

bb.v:                                             ; preds = %.loopexit77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.w:                                             ; preds = %.loopexit.split-lp, %bb.u, %bb.y
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t, %bb.p
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp79, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @"_ZN96_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he91e8c7ba3d5ae72E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr111drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h905d8dfd15a2f8feE.exit45" unwind label %bb.w

"_ZN4core3ptr111drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h905d8dfd15a2f8feE.exit45": ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.i
  unreachable

bb.y:                                             ; preds = %"_ZN4core3ptr111drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h905d8dfd15a2f8feE.exit45", %.thread
  %.pn.pn63 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %"_ZN4core3ptr111drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h905d8dfd15a2f8feE.exit45" ]
  invoke fastcc void @"_ZN4core3ptr1325drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..SpinLatch$C$rayon_core..join..join_context..call_b$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$C$rayon_core..join..join..call$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$C$$LT$rayon..iter..chain..Chain$LT$rayon..range..Iter$LT$u32$GT$$C$rayon..iter..once..Once$LT$u32$GT$$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$..drive_unindexed$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..while_some..WhileSomeConsumer$LT$rayon..iter..collect..consumer..CollectConsumer$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$C$rayon..result..$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$..from_par_iter..ok$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$C$anki..error..AnkiError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$anki..scheduler..fsrs..simulator..$LT$impl$u20$anki..collection..Collection$GT$..simulate_workload..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h224de496802241d8E"(ptr noalias noundef align 8 dereferenceable(112) %i.j) #39
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.u, %"_ZN4core3ptr111drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h905d8dfd15a2f8feE.exit45", %bb.y
  %.pn.pn62 = phi { ptr, i32 } [ %lpad.phi, %"_ZN4core3ptr111drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h905d8dfd15a2f8feE.exit45" ], [ %.pn.pn63, %bb.y ], [ %i.bd, %bb.u ]
  resume { ptr, i32 } %.pn.pn62
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10rayon_core4join12join_context28_$u7b$$u7b$closure$u7d$$u7d$17hb556a64a7a3a49deE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noundef nonnull align 128 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [136 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [136 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  store i64 0, ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$8is_empty17h8a305f0304102348E"(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$4push17hf7ac05f801472e0eE"(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17he808db6c2c9aebc8E", ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h81a4e54108efef4fE(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !12

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_ZN10rayon_core5sleep5Sleep16wake_any_threads17h81ed8b4cdea83a2aE(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, !prof !9

_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.051.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx52, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx54, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 132
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4
  store i64 %.sroa.5.0.copyload, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.051.0.copyload, align 8, !noalias !3129, !noundef !5
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !3129, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !3129, !noundef !5
  invoke void @_ZN5rayon4iter8plumbing24bridge_producer_consumer6helper17h4efbca0baf667e55E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, i32 noundef %.sroa.7.0.copyload, i32 noundef %.sroa.8.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #40
  unreachable

bb.h:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3129
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload49 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.ak, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.13.0.copyload49, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_ZN10rayon_core4join23join_recover_from_panic17h80b67168c3d68f84E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 1 %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #38
          to label %bb.x unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.o
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit72, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$3pop17ha24d8703760093f5E"(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN15crossbeam_deque5deque16Stealer$LT$T$GT$5steal17heefc9ba211d94f07E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.1.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.1.i, 1
  br label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.loopexit72:                                      ; preds = %bb.j, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.j, i64 136, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$11into_result17hc7b8a1594645ffe5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.d)
          to label %bb.v unwind label %bb.u

_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.bb = icmp eq ptr %i.j, %i.ba
  %i.bc = icmp eq ptr %i.az, @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17he808db6c2c9aebc8E"
  %or.cond = and i1 %i.bb, %i.bc
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.g, ptr noundef nonnull align 8 dereferenceable(136) %i.j, i64 136, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$10run_inline17h16003bd6e7684e52E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g, i1 noundef zeroext false)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.be = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bf = icmp eq i64 %i.be, 3
  br i1 %i.bf, label %.loopexit72, label %bb.t, !prof !12

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN10rayon_core8registry12WorkerThread15wait_until_cold17h42c453b5e5bc02f7E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit72 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.loopexit72
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN96_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h28ddefdcf685e4a1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.w

bb.v:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.w:                                             ; preds = %.loopexit.split-lp, %bb.u, %bb.y
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t, %bb.p
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @"_ZN96_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h28ddefdcf685e4a1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit45" unwind label %bb.w

"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit45": ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.i
  unreachable

bb.y:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit45", %.thread
  %.pn.pn58 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit45" ]
  invoke fastcc void @"_ZN4core3ptr1061drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..SpinLatch$C$rayon_core..join..join_context..call_b$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$C$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..range..IterProducer$LT$u32$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..while_some..WhileSomeConsumer$LT$rayon..iter..collect..consumer..CollectConsumer$LT$$LP$u32$C$f32$RP$$GT$$GT$$C$rayon..result..$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$..from_par_iter..ok$LT$$LP$u32$C$f32$RP$$C$anki..error..AnkiError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$anki..deckconfig..service..$LT$impl$u20$anki..services..DeckConfigService$u20$for$u20$anki..collection..Collection$GT$..get_retention_workload..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17ha52ed66f78529bb9E"(ptr noalias noundef align 8 dereferenceable(136) %i.j) #39
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.u, %"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit45", %bb.y
  %.pn.pn57 = phi { ptr, i32 } [ %lpad.phi, %"_ZN4core3ptr91drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$f32$RP$$GT$$GT$17hd8c23bb7d3dc79a3E.exit45" ], [ %.pn.pn58, %bb.y ], [ %i.bg, %bb.u ]
  resume { ptr, i32 } %.pn.pn57
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10rayon_core4join12join_context28_$u7b$$u7b$closure$u7d$$u7d$17hc012e4067fa01a4fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %1, ptr noundef nonnull align 128 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [144 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [144 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [144 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  store i64 0, ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$8is_empty17h8a305f0304102348E"(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$4push17hf7ac05f801472e0eE"(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17hedbe8e849d1d148aE", ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h81a4e54108efef4fE(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !12

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_ZN10rayon_core5sleep5Sleep16wake_any_threads17h81ed8b4cdea83a2aE(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, !prof !9

_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.051.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx52, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx54, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.051.0.copyload, align 8, !noalias !3139, !noundef !5
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !3139, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !3139, !noundef !5
  invoke void @_ZN5rayon4iter8plumbing24bridge_producer_consumer6helper17h0184386f780cacb1E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, i64 noundef %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #40
  unreachable

bb.h:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3139
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload49 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.ak, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.13.0.copyload49, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_ZN10rayon_core4join23join_recover_from_panic17h80b67168c3d68f84E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 1 %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #38
          to label %bb.x unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.o
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit72, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$3pop17ha24d8703760093f5E"(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN15crossbeam_deque5deque16Stealer$LT$T$GT$5steal17heefc9ba211d94f07E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.1.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.1.i, 1
  br label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.loopexit72:                                      ; preds = %bb.j, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(144) %i.j, i64 144, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$11into_result17h8c44d09c5d46cbaeE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.d)
          to label %bb.v unwind label %bb.u

_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.bb = icmp eq ptr %i.j, %i.ba
  %i.bc = icmp eq ptr %i.az, @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17hedbe8e849d1d148aE"
  %or.cond = and i1 %i.bb, %i.bc
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %i.j, i64 144, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$10run_inline17h81c0b551180d47d4E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.g, i1 noundef zeroext false)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.be = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bf = icmp eq i64 %i.be, 3
  br i1 %i.bf, label %.loopexit72, label %bb.t, !prof !12

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN10rayon_core8registry12WorkerThread15wait_until_cold17h42c453b5e5bc02f7E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit72 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.loopexit72
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN96_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h734aeb92f6ef2351E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.w

bb.v:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.w:                                             ; preds = %.loopexit.split-lp, %bb.u, %bb.y
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t, %bb.p
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @"_ZN96_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h734aeb92f6ef2351E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr77drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$f32$GT$$GT$17hb0a869a561843b11E.exit45" unwind label %bb.w

"_ZN4core3ptr77drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$f32$GT$$GT$17hb0a869a561843b11E.exit45": ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.i
  unreachable

bb.y:                                             ; preds = %"_ZN4core3ptr77drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$f32$GT$$GT$17hb0a869a561843b11E.exit45", %.thread
  %.pn.pn58 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %"_ZN4core3ptr77drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$f32$GT$$GT$17hb0a869a561843b11E.exit45" ]
  invoke fastcc void @"_ZN4core3ptr1104drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..SpinLatch$C$rayon_core..join..join_context..call_b$LT$rayon..iter..collect..consumer..CollectResult$LT$f32$GT$$C$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..range..IterProducer$LT$usize$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..while_some..WhileSomeConsumer$LT$rayon..iter..collect..consumer..CollectConsumer$LT$f32$GT$$GT$$C$rayon..result..$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$..from_par_iter..ok$LT$f32$C$fsrs..error..FSRSError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$fsrs..simulation..sample$LT$fsrs..simulation..optimal_retention$LT$anki..scheduler..fsrs..retention..$LT$impl$u20$anki..collection..Collection$GT$..compute_optimal_retention..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$rayon..iter..collect..consumer..CollectResult$LT$f32$GT$$GT$$GT$17hd044e71a65279a3aE"(ptr noalias noundef align 8 dereferenceable(144) %i.j) #39
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.u, %"_ZN4core3ptr77drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$f32$GT$$GT$17hb0a869a561843b11E.exit45", %bb.y
  %.pn.pn57 = phi { ptr, i32 } [ %lpad.phi, %"_ZN4core3ptr77drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$f32$GT$$GT$17hb0a869a561843b11E.exit45" ], [ %.pn.pn58, %bb.y ], [ %i.bg, %bb.u ]
  resume { ptr, i32 } %.pn.pn57
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10rayon_core4join12join_context28_$u7b$$u7b$closure$u7d$$u7d$17hcbf6b7302445cc80E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noundef nonnull align 128 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [136 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [136 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [136 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  store i64 0, ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$8is_empty17h8a305f0304102348E"(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$4push17hf7ac05f801472e0eE"(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17hb8cd319b2ebe5fadE", ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h81a4e54108efef4fE(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !12

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_ZN10rayon_core5sleep5Sleep16wake_any_threads17h81ed8b4cdea83a2aE(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, !prof !9

_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.051.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx52, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx54, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 132
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4
  store i64 %.sroa.5.0.copyload, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.051.0.copyload, align 8, !noalias !3149, !noundef !5
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !3149, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !3149, !noundef !5
  invoke void @_ZN5rayon4iter8plumbing24bridge_producer_consumer6helper17hccea9eff69de6ac2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, i32 noundef %.sroa.7.0.copyload, i32 noundef %.sroa.8.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #40
  unreachable

bb.h:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3149
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload49 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.ak, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.13.0.copyload49, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_ZN10rayon_core4join23join_recover_from_panic17h80b67168c3d68f84E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 1 %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #38
          to label %bb.x unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.o
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit72, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$3pop17ha24d8703760093f5E"(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN15crossbeam_deque5deque16Stealer$LT$T$GT$5steal17heefc9ba211d94f07E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.1.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.1.i, 1
  br label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.loopexit72:                                      ; preds = %bb.j, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.j, i64 136, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$11into_result17h3f88da07ab7cb22dE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.d)
          to label %bb.v unwind label %bb.u

_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.bb = icmp eq ptr %i.j, %i.ba
  %i.bc = icmp eq ptr %i.az, @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17hb8cd319b2ebe5fadE"
  %or.cond = and i1 %i.bb, %i.bc
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.g, ptr noundef nonnull align 8 dereferenceable(136) %i.j, i64 136, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$10run_inline17h324e602f81503945E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.g, i1 noundef zeroext false)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.be = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bf = icmp eq i64 %i.be, 3
  br i1 %i.bf, label %.loopexit72, label %bb.t, !prof !12

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN10rayon_core8registry12WorkerThread15wait_until_cold17h42c453b5e5bc02f7E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit72 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.loopexit72
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN96_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he91e8c7ba3d5ae72E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.w

bb.v:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.w:                                             ; preds = %.loopexit.split-lp, %bb.u, %bb.y
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t, %bb.p
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @"_ZN96_$LT$rayon..iter..collect..consumer..CollectResult$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he91e8c7ba3d5ae72E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr111drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h905d8dfd15a2f8feE.exit45" unwind label %bb.w

"_ZN4core3ptr111drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h905d8dfd15a2f8feE.exit45": ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.i
  unreachable

bb.y:                                             ; preds = %"_ZN4core3ptr111drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h905d8dfd15a2f8feE.exit45", %.thread
  %.pn.pn58 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %"_ZN4core3ptr111drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h905d8dfd15a2f8feE.exit45" ]
  invoke fastcc void @"_ZN4core3ptr1097drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..SpinLatch$C$rayon_core..join..join_context..call_b$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$C$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..range..IterProducer$LT$u32$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..while_some..WhileSomeConsumer$LT$rayon..iter..collect..consumer..CollectConsumer$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$C$rayon..result..$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$..from_par_iter..ok$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$C$anki..error..AnkiError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$anki..scheduler..fsrs..simulator..$LT$impl$u20$anki..collection..Collection$GT$..simulate_workload..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17ha40caf658c6e15c0E"(ptr noalias noundef align 8 dereferenceable(136) %i.j) #39
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.u, %"_ZN4core3ptr111drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h905d8dfd15a2f8feE.exit45", %bb.y
  %.pn.pn57 = phi { ptr, i32 } [ %lpad.phi, %"_ZN4core3ptr111drop_in_place$LT$rayon..iter..collect..consumer..CollectResult$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h905d8dfd15a2f8feE.exit45" ], [ %.pn.pn58, %bb.y ], [ %i.bg, %bb.u ]
  resume { ptr, i32 } %.pn.pn57
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10rayon_core4join12join_context28_$u7b$$u7b$closure$u7d$$u7d$17hd16ca3ae058e820aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [128 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$8is_empty17h8a305f0304102348E"(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$4push17hf7ac05f801472e0eE"(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17heca3fccae238b1daE", ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h81a4e54108efef4fE(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !12

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_ZN10rayon_core5sleep5Sleep16wake_any_threads17h81ed8b4cdea83a2aE(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, !prof !9

_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.051.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx52, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx54, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.051.0.copyload, align 8, !noalias !3159, !noundef !5
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !3159, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !3159, !noundef !5
  invoke void @_ZN5rayon4iter8plumbing24bridge_producer_consumer6helper17h824f538f206f023eE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, i64 noundef %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #40
  unreachable

bb.h:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3159
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload49 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.ak, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.13.0.copyload49, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_ZN10rayon_core4join23join_recover_from_panic17h80b67168c3d68f84E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 1 %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #38
          to label %bb.x unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.o
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit72, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$3pop17ha24d8703760093f5E"(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN15crossbeam_deque5deque16Stealer$LT$T$GT$5steal17heefc9ba211d94f07E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.1.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.1.i, 1
  br label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.loopexit72:                                      ; preds = %bb.j, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$11into_result17h6d4aedb1bdbd015bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.d)
          to label %bb.v unwind label %bb.u

_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.bb = icmp eq ptr %i.j, %i.ba
  %i.bc = icmp eq ptr %i.az, @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17heca3fccae238b1daE"
  %or.cond = and i1 %i.bb, %i.bc
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$10run_inline17h6fb930daaa82676cE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.g, i1 noundef zeroext false)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.be = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bf = icmp eq i64 %i.be, 3
  br i1 %i.bf, label %.loopexit72, label %bb.t, !prof !12

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN10rayon_core8registry12WorkerThread15wait_until_cold17h42c453b5e5bc02f7E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit72 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.loopexit72
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h368673526fff32caE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.w

bb.v:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.w:                                             ; preds = %.loopexit.split-lp, %bb.u, %bb.y
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t, %bb.p
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h368673526fff32caE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr98drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17hf0d6dd039cc2063aE.exit45" unwind label %bb.w

"_ZN4core3ptr98drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17hf0d6dd039cc2063aE.exit45": ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.i
  unreachable

bb.y:                                             ; preds = %"_ZN4core3ptr98drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17hf0d6dd039cc2063aE.exit45", %.thread
  %.pn.pn58 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %"_ZN4core3ptr98drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17hf0d6dd039cc2063aE.exit45" ]
  invoke fastcc void @"_ZN4core3ptr1124drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..SpinLatch$C$rayon_core..join..join_context..call_b$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$f32$GT$$GT$$C$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..range..IterProducer$LT$usize$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..while_some..WhileSomeConsumer$LT$rayon..iter..extend..ListVecConsumer$GT$$C$rayon..result..$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$..from_par_iter..ok$LT$f32$C$fsrs..error..FSRSError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$fsrs..simulation..sample$LT$fsrs..simulation..optimal_retention$LT$anki..scheduler..fsrs..retention..$LT$impl$u20$anki..collection..Collection$GT$..compute_optimal_retention..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$$GT$17hae945301579b2e14E"(ptr noalias noundef align 8 dereferenceable(128) %i.j) #39
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.u, %"_ZN4core3ptr98drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17hf0d6dd039cc2063aE.exit45", %bb.y
  %.pn.pn57 = phi { ptr, i32 } [ %lpad.phi, %"_ZN4core3ptr98drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17hf0d6dd039cc2063aE.exit45" ], [ %.pn.pn58, %bb.y ], [ %i.bg, %bb.u ]
  resume { ptr, i32 } %.pn.pn57
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10rayon_core4join12join_context28_$u7b$$u7b$closure$u7d$$u7d$17hd46ca06d1d7718d4E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, ptr noundef nonnull align 128 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [96 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$8is_empty17h8a305f0304102348E"(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$4push17hf7ac05f801472e0eE"(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17hbe2de02d0bf442b9E", ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h81a4e54108efef4fE(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !12

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_ZN10rayon_core5sleep5Sleep16wake_any_threads17h81ed8b4cdea83a2aE(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, !prof !9

_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx57, align 8
  %.sroa.6.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx58, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3172
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8
  store <2 x ptr> %i.ac, ptr %i.a, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.12.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN77_$LT$rayon..range..Iter$LT$T$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$15drive_unindexed17h18fd3f055010d1e4E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %.sroa.6.0.copyload, i32 noundef %.sroa.7.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.ae)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #40
  unreachable

bb.h:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3172
  %.sroa.12.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload54 = load i64, ptr %.sroa.12.0..sroa_idx53, align 16
  %i.ah = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.ah, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.12.0.copyload54, ptr %.sroa.513.0..sroa_idx, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.al = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_ZN10rayon_core4join23join_recover_from_panic17h80b67168c3d68f84E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 1 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.am) #38
          to label %bb.x unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.o
  %i.an = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ao = icmp eq i64 %i.an, 3
  br i1 %i.ao, label %.loopexit76, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = invoke { ptr, ptr } @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$3pop17ha24d8703760093f5E"(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.aq = extractvalue { ptr, ptr } %i.ap, 0
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %.preheader.i, label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN15crossbeam_deque5deque16Stealer$LT$T$GT$5steal17heefc9ba211d94f07E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ai)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.ar = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  switch i64 %i.ar, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.as = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5
  %i.at = load ptr, ptr %i.ak, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.at, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.1.i = phi ptr [ %i.as, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.sroa.5.1.i, 1
  br label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.loopexit76:                                      ; preds = %bb.j, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$11into_result17h15a46b6dee3e2dfcE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.d)
          to label %bb.v unwind label %bb.u

_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.ap, %.noexc41 ], [ %i.av, %.loopexit.i ] ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ax = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.aw, null                 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.ay = icmp eq ptr %i.j, %i.ax
  %i.az = icmp eq ptr %i.aw, @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17hbe2de02d0bf442b9E"
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.aw(ptr noundef %i.ax)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.g, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$10run_inline17hc736d9f9d12e6389E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.g, i1 noundef zeroext false)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.bb = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bc = icmp eq i64 %i.bb, 3
  br i1 %i.bc, label %.loopexit76, label %bb.t, !prof !12

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN10rayon_core8registry12WorkerThread15wait_until_cold17h42c453b5e5bc02f7E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit76 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.loopexit76
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h576cc74f61c106d4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.w

bb.v:                                             ; preds = %.loopexit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.w:                                             ; preds = %.loopexit.split-lp, %bb.u, %bb.y
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t, %bb.p
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp78, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h576cc74f61c106d4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit45" unwind label %bb.w

"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit45": ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.i
  unreachable

bb.y:                                             ; preds = %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit45", %.thread
  %.pn.pn62 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit45" ]
  invoke fastcc void @"_ZN4core3ptr1332drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..SpinLatch$C$rayon_core..join..join_context..call_b$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$C$rayon_core..join..join..call$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$C$$LT$rayon..iter..chain..Chain$LT$rayon..range..Iter$LT$u32$GT$$C$rayon..iter..once..Once$LT$u32$GT$$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$..drive_unindexed$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..while_some..WhileSomeConsumer$LT$rayon..iter..extend..ListVecConsumer$GT$$C$rayon..result..$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$..from_par_iter..ok$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$C$anki..error..AnkiError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$anki..scheduler..fsrs..simulator..$LT$impl$u20$anki..collection..Collection$GT$..simulate_workload..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$$GT$17h5f76d76670492b91E"(ptr noalias noundef align 8 dereferenceable(96) %i.j) #39
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.u, %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit45", %bb.y
  %.pn.pn61 = phi { ptr, i32 } [ %lpad.phi, %"_ZN4core3ptr132drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$GT$17h82f1a9fc0fba076cE.exit45" ], [ %.pn.pn62, %bb.y ], [ %i.bd, %bb.u ]
  resume { ptr, i32 } %.pn.pn61
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10rayon_core4join12join_context28_$u7b$$u7b$closure$u7d$$u7d$17hdd656a9eb1861ebaE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr noundef nonnull align 128 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [120 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [120 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [120 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  store i64 0, ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$8is_empty17h8a305f0304102348E"(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$4push17hf7ac05f801472e0eE"(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17h839b5f6d3201a69fE", ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_ZN10rayon_core5sleep8counters14AtomicCounters31increment_jobs_event_counter_if17h81a4e54108efef4fE(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !12

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_ZN10rayon_core5sleep5Sleep16wake_any_threads17h81ed8b4cdea83a2aE(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit, !prof !9

_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.051.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx52, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx54, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 100
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4
  store i64 %.sroa.5.0.copyload, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.051.0.copyload, align 8, !noalias !3182, !noundef !5
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !3182, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !3182, !noundef !5
  invoke void @_ZN5rayon4iter8plumbing24bridge_producer_consumer6helper17h6217815d4f81b926E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, i32 noundef %.sroa.7.0.copyload, i32 noundef %.sroa.8.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #40
  unreachable

bb.h:                                             ; preds = %_ZN10rayon_core5sleep5Sleep8new_jobs17h3cc87ee8201122afE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3182
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload49 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.ak, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.13.0.copyload49, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_ZN10rayon_core4join23join_recover_from_panic17h80b67168c3d68f84E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 1 %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #38
          to label %bb.x unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.o
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit72, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$3pop17ha24d8703760093f5E"(ptr noundef nonnull align 8 %i.p)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc41:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.preheader.i:                                     ; preds = %.noexc41, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN15crossbeam_deque5deque16Stealer$LT$T$GT$5steal17heefc9ba211d94f07E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc42
  unreachable

bb.l:                                             ; preds = %.noexc42
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc42, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc42 ]
  %.sroa.0.1.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.1.i, 1
  br label %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit

.loopexit72:                                      ; preds = %bb.j, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %i.j, i64 120, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$11into_result17h22c15d1f667a6a0bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.d)
          to label %bb.v unwind label %bb.u

_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit: ; preds = %.loopexit.i, %.noexc41
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc41 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.bb = icmp eq ptr %i.j, %i.ba
  %i.bc = icmp eq ptr %i.az, @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17h839b5f6d3201a69fE"
  %or.cond = and i1 %i.bb, %i.bc
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.j, i64 120, i1 false)
  invoke void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$10run_inline17h1255434cc8250089E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.g, i1 noundef zeroext false)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %_ZN10rayon_core8registry12WorkerThread14take_local_job17hf1db653c6bcc4ca8E.exit
  %i.be = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bf = icmp eq i64 %i.be, 3
  br i1 %i.bf, label %.loopexit72, label %bb.t, !prof !12

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN10rayon_core8registry12WorkerThread15wait_until_cold17h42c453b5e5bc02f7E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit72 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.loopexit72
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5250e13729602aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.w

bb.v:                                             ; preds = %.loopexit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.w:                                             ; preds = %.loopexit.split-lp, %bb.u, %bb.y
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t, %bb.p
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp74, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5f5250e13729602aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit45" unwind label %bb.w

"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit45": ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.i
  unreachable

bb.y:                                             ; preds = %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit45", %.thread
  %.pn.pn58 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit45" ]
  invoke fastcc void @"_ZN4core3ptr1067drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..SpinLatch$C$rayon_core..join..join_context..call_b$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$C$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..range..IterProducer$LT$u32$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..while_some..WhileSomeConsumer$LT$rayon..iter..extend..ListVecConsumer$GT$$C$rayon..result..$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$..from_par_iter..ok$LT$$LP$u32$C$f32$RP$$C$anki..error..AnkiError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$anki..deckconfig..service..$LT$impl$u20$anki..services..DeckConfigService$u20$for$u20$anki..collection..Collection$GT$..get_retention_workload..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$$GT$17h9927c0aac88daf4eE"(ptr noalias noundef align 8 dereferenceable(120) %i.j) #39
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.u, %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit45", %bb.y
  %.pn.pn57 = phi { ptr, i32 } [ %lpad.phi, %"_ZN4core3ptr112drop_in_place$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$$GT$17hc17938a301880fe4E.exit45" ], [ %.pn.pn58, %bb.y ], [ %i.bg, %bb.u ]
  resume { ptr, i32 } %.pn.pn57
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10rayon_core8registry8Registry12catch_unwind17h0ebd021dd35d62baE(ptr nofree noundef nonnull readonly align 128 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(184) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [128 x i8], align 8               ; 5 uses
  %i.c = alloca [128 x i8], align 8               ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [120 x i8], align 8               ; 4 uses
  %i.g = alloca [184 x i8], align 8               ; 9 uses
  %.sroa.017.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, i64 56, i1 false)
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.11.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.g, i64 160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.719.0..sroa_idx, i64 24, i1 false)
  store ptr %.sroa.017.0.copyload, ptr %i.g, align 8
  %.sroa.7.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.7.0..sroa_idx12, align 8
  %.sroa.9.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, i64 56, i1 false)
  %.sroa.10.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.10.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.618.0..sroa_idx, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3189
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.j = load i8, ptr %i.i, align 8, !range !11, !alias.scope !3191, !noalias !3190, !noundef !5
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = ptrtoint ptr %.sroa.017.0.copyload to i64
  %i.m = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.n = load ptr, ptr %.sroa.11.0..sroa_idx16, align 8, !alias.scope !3191, !noalias !3190, !nonnull !5, !noundef !5
  invoke void @_ZN4fsrs9inference26evaluate_time_series_split17hf208c797bc821f18E(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.e, i1 noundef zeroext %i.k, i64 noundef %i.l, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.d, ptr noundef nonnull %i.n)
          to label %bb.c unwind label %bb.b, !noalias !3189

bb.b:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h58df518577a2d25bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx15)
          to label %.body unwind label %bb.f, !noalias !3190

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3189
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !3191, !noalias !3190, !noundef !5
  store i64 %i.q, ptr %i.b, align 8, !noalias !3189
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.r, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false), !noalias !3189
  invoke void @"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send17h7c34f98eb7bdec5eE"(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.10.0..sroa_idx15, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !3190

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3189
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !30, !alias.scope !3192, !noalias !3189, !noundef !5
  %i.u = icmp eq i64 %i.t, -9223372036854775807
  br i1 %i.u, label %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hca6969fd712fa5d5E.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$17h7c42d75ad96bbb6fE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c)
          to label %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hca6969fd712fa5d5E.exit.i" unwind label %bb.b, !noalias !3190

bb.f:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !3190
  unreachable

"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hca6969fd712fa5d5E.exit.i": ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3189
  invoke void @"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h58df518577a2d25bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx15)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hca6969fd712fa5d5E.exit.i"
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.o, %bb.b ]
  %i.x = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.y = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.x)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #40
  unreachable

bb.i:                                             ; preds = %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hca6969fd712fa5d5E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3190
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17ha7c3d09f1bf4427cE.exit"

bb.j:                                             ; preds = %.body
  %i.aa = extractvalue { ptr, ptr } %i.y, 0       ; 6 uses
  %i.ab = extractvalue { ptr, ptr } %i.y, 1       ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ad = load ptr, ptr %i.ac, align 32, !align !15, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.n, label %bb.k

"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17ha7c3d09f1bf4427cE.exit": ; preds = %bb.q, %bb.p, %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !align !10, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.ah(ptr noundef nonnull align 1 %i.ad, ptr noundef nonnull align 1 %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab)
          to label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17ha7c3d09f1bf4427cE.exit" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN74_$LT$rayon_core..unwind..AbortIfPanic$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcc502b08e687bdf8E"(ptr noalias noundef nonnull align 1 %i.a)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.t
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

bb.n:                                             ; preds = %bb.j
  invoke void @"_ZN74_$LT$rayon_core..unwind..AbortIfPanic$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcc502b08e687bdf8E"(ptr noalias noundef nonnull align 1 %i.a)
          to label %.thread unwind label %bb.t

.thread:                                          ; preds = %bb.n
  %i.ak = load ptr, ptr %i.ab, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread
  invoke void %i.ak(ptr noundef nonnull %i.aa)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o, %.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !18, !invariant.load !5 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !34, !invariant.load !5 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, -9223372036854775807
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.am, 0
  br i1 %i.aq, label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17ha7c3d09f1bf4427cE.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef range(i64 1, 0) %i.am, i64 noundef range(i64 1, -9223372036854775807) %i.ao) #30
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17ha7c3d09f1bf4427cE.exit"

bb.r:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !18, !invariant.load !5 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !34, !invariant.load !5 ; 2 uses
  %i.aw = icmp ult i64 %i.av, -9223372036854775807
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp eq i64 %i.at, 0
  br i1 %i.ax, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef range(i64 1, 0) %i.at, i64 noundef range(i64 1, -9223372036854775807) %i.av) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.t, %bb.l, %bb.r, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.ar, %bb.s ], [ %i.ay, %bb.t ], [ %i.ai, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17ha7c3d09f1bf4427cE"(ptr nonnull %i.aa, ptr nonnull %i.ab) #39
          to label %common.resume unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10rayon_core8registry8Registry12catch_unwind17h8c400c81ceb8ffb6E(ptr nofree noundef nonnull readonly align 128 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(184) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [128 x i8], align 8               ; 5 uses
  %i.c = alloca [128 x i8], align 8               ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [120 x i8], align 8               ; 4 uses
  %i.g = alloca [184 x i8], align 8               ; 9 uses
  %.sroa.017.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, i64 56, i1 false)
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.11.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.g, i64 160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.719.0..sroa_idx, i64 24, i1 false)
  store ptr %.sroa.017.0.copyload, ptr %i.g, align 8
  %.sroa.7.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.7.0..sroa_idx12, align 8
  %.sroa.9.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, i64 56, i1 false)
  %.sroa.10.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.10.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.618.0..sroa_idx, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3201)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3199
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.j = load i8, ptr %i.i, align 8, !range !11, !alias.scope !3201, !noalias !3200, !noundef !5
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = ptrtoint ptr %.sroa.017.0.copyload to i64
  %i.m = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.n = load ptr, ptr %.sroa.11.0..sroa_idx16, align 8, !alias.scope !3201, !noalias !3200, !nonnull !5, !noundef !5
  invoke void @_ZN4fsrs9inference26evaluate_time_series_split17hf208c797bc821f18E(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.e, i1 noundef zeroext %i.k, i64 noundef %i.l, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.d, ptr noundef nonnull %i.n)
          to label %bb.c unwind label %bb.b, !noalias !3199

bb.b:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h58df518577a2d25bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx15)
          to label %.body unwind label %bb.f, !noalias !3200

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3199
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !3201, !noalias !3200, !noundef !5
  store i64 %i.q, ptr %i.b, align 8, !noalias !3199
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.r, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false), !noalias !3199
  invoke void @"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send17h7c34f98eb7bdec5eE"(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.10.0..sroa_idx15, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !3200

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3199
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !30, !alias.scope !3202, !noalias !3199, !noundef !5
  %i.u = icmp eq i64 %i.t, -9223372036854775807
  br i1 %i.u, label %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h97ff4ade2418faecE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$17h7c42d75ad96bbb6fE"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.c)
          to label %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h97ff4ade2418faecE.exit.i" unwind label %bb.b, !noalias !3200

bb.f:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !3200
  unreachable

"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h97ff4ade2418faecE.exit.i": ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3199
  invoke void @"_ZN74_$LT$std..sync..mpmc..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h58df518577a2d25bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx15)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h97ff4ade2418faecE.exit.i"
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.o, %bb.b ]
  %i.x = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.y = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.x)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #40
  unreachable

bb.i:                                             ; preds = %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h97ff4ade2418faecE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3200
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17ha7c3d09f1bf4427cE.exit"

bb.j:                                             ; preds = %.body
  %i.aa = extractvalue { ptr, ptr } %i.y, 0       ; 6 uses
  %i.ab = extractvalue { ptr, ptr } %i.y, 1       ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ad = load ptr, ptr %i.ac, align 32, !align !15, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.n, label %bb.k

"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17ha7c3d09f1bf4427cE.exit": ; preds = %bb.q, %bb.p, %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !align !10, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.ah(ptr noundef nonnull align 1 %i.ad, ptr noundef nonnull align 1 %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab)
          to label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17ha7c3d09f1bf4427cE.exit" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN74_$LT$rayon_core..unwind..AbortIfPanic$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcc502b08e687bdf8E"(ptr noalias noundef nonnull align 1 %i.a)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.t
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

bb.n:                                             ; preds = %bb.j
  invoke void @"_ZN74_$LT$rayon_core..unwind..AbortIfPanic$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcc502b08e687bdf8E"(ptr noalias noundef nonnull align 1 %i.a)
          to label %.thread unwind label %bb.t

.thread:                                          ; preds = %bb.n
  %i.ak = load ptr, ptr %i.ab, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread
  invoke void %i.ak(ptr noundef nonnull %i.aa)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o, %.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !18, !invariant.load !5 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !34, !invariant.load !5 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, -9223372036854775807
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.am, 0
  br i1 %i.aq, label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17ha7c3d09f1bf4427cE.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef range(i64 1, 0) %i.am, i64 noundef range(i64 1, -9223372036854775807) %i.ao) #30
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17ha7c3d09f1bf4427cE.exit"

bb.r:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !18, !invariant.load !5 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !34, !invariant.load !5 ; 2 uses
  %i.aw = icmp ult i64 %i.av, -9223372036854775807
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp eq i64 %i.at, 0
  br i1 %i.ax, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef range(i64 1, 0) %i.at, i64 noundef range(i64 1, -9223372036854775807) %i.av) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.t, %bb.l, %bb.r, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.ar, %bb.s ], [ %i.ay, %bb.t ], [ %i.ai, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17ha7c3d09f1bf4427cE"(ptr nonnull %i.aa, ptr nonnull %i.ab) #39
          to label %common.resume unwind label %bb.m
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_ZN10rayon_core8registry8Registry15in_worker_cross17h080bba1839e6e320E(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 4 uses
  %i.b = alloca [208 x i8], align 8               ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.e = load i64, ptr %i.d, align 128, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i64 %i.e, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 0, ptr %i.g, align 8
  invoke void @_ZN10rayon_core8registry8Registry6inject17hea915b26a1ef364eE(ptr noundef nonnull align 128 %1, ptr noundef nonnull @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17hb1294e8014664d71E", ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i64, ptr %.sroa.2.0..sroa_idx acquire, align 8
  %i.i = icmp eq i64 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN10rayon_core8registry12WorkerThread15wait_until_cold17h42c453b5e5bc02f7E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.2.0..sroa_idx)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$11into_result17hdb4310e0a114fa8aE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(208) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr2343drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..SpinLatch$C$rayon_core..registry..Registry..in_worker_cross$LT$rayon_core..join..join_context$LT$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..range..IterProducer$LT$usize$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..while_some..WhileSomeConsumer$LT$rayon..iter..extend..ListVecConsumer$GT$$C$rayon..result..$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$..from_par_iter..ok$LT$f32$C$fsrs..error..FSRSError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$fsrs..simulation..sample$LT$fsrs..simulation..optimal_retention$LT$anki..scheduler..fsrs..retention..$LT$impl$u20$anki..collection..Collection$GT$..compute_optimal_retention..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$rayon..iter..plumbing..bridge_producer_consumer..helper$LT$rayon..range..IterProducer$LT$usize$GT$$C$rayon..iter..map..MapConsumer$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..while_some..WhileSomeConsumer$LT$rayon..iter..extend..ListVecConsumer$GT$$C$rayon..result..$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$..from_par_iter..ok$LT$f32$C$fsrs..error..FSRSError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$fsrs..simulation..sample$LT$fsrs..simulation..optimal_retention$LT$anki..scheduler..fsrs..retention..$LT$impl$u20$anki..collection..Collection$GT$..compute_optimal_retention..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$f32$GT$$GT$$C$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$f32$GT$$GT$$C$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$f32$GT$$GT$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$f32$GT$$GT$$C$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$f32$GT$$GT$$RP$$GT$$GT$17ha48fe6805f094426E"(ptr noalias noundef align 8 dereferenceable(208) %i.b) #39
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_ZN10rayon_core8registry8Registry15in_worker_cross17h430bcc4fbf0ee93fE(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [152 x i8], align 8               ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.e = load i64, ptr %i.d, align 128, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 %i.e, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store i64 0, ptr %i.g, align 8
  invoke void @_ZN10rayon_core8registry8Registry6inject17hea915b26a1ef364eE(ptr noundef nonnull align 128 %1, ptr noundef nonnull @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17h71880b6c818904feE", ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i64, ptr %.sroa.2.0..sroa_idx acquire, align 8
  %i.i = icmp eq i64 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN10rayon_core8registry12WorkerThread15wait_until_cold17h42c453b5e5bc02f7E(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.2.0..sroa_idx)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.b, i64 152, i1 false)
  call void @"_ZN10rayon_core3job25StackJob$LT$L$C$F$C$R$GT$11into_result17h6a1b84c670075549E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(152) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN4core3ptr2827drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..SpinLatch$C$rayon_core..registry..Registry..in_worker_cross$LT$rayon_core..join..join_context$LT$rayon_core..join..join..call$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$C$$LT$rayon..iter..chain..Chain$LT$rayon..range..Iter$LT$u32$GT$$C$rayon..iter..once..Once$LT$u32$GT$$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$..drive_unindexed$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..while_some..WhileSomeConsumer$LT$rayon..iter..extend..ListVecConsumer$GT$$C$rayon..result..$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$..from_par_iter..ok$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$C$anki..error..AnkiError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$anki..scheduler..fsrs..simulator..$LT$impl$u20$anki..collection..Collection$GT$..simulate_workload.": ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm

bb.e:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr318drop_in_place$LT$core..cell..UnsafeCell$LT$rayon_core..job..JobResult$LT$$LP$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$C$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$RP$$GT$$GT$$GT$17h7f7847f878885f77E"(ptr noalias noundef align 8 dereferenceable(56) %i.g)
          to label %"_ZN4core3ptr2827drop_in_place$LT$rayon_core..job..StackJob$LT$rayon_core..latch..SpinLatch$C$rayon_core..registry..Registry..in_worker_cross$LT$rayon_core..join..join_context$LT$rayon_core..join..join..call$LT$alloc..collections..linked_list..LinkedList$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$C$$LT$rayon..iter..chain..Chain$LT$rayon..range..Iter$LT$u32$GT$$C$rayon..iter..once..Once$LT$u32$GT$$GT$$u20$as$u20$rayon..iter..ParallelIterator$GT$..drive_unindexed$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..map..MapConsumer$LT$rayon..iter..while_some..WhileSomeConsumer$LT$rayon..iter..extend..ListVecConsumer$GT$$C$rayon..result..$LT$impl$u20$rayon..iter..FromParallelIterator$LT$core..result..Result$LT$T$C$E$GT$$GT$$u20$for$u20$core..result..Result$LT$C$C$E$GT$$GT$..from_par_iter..ok$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$C$anki..error..AnkiError$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$anki..scheduler..fsrs..simulator..$LT$impl$u20$anki..collection..Collection$GT$..simulate_workload." unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_ZN10rayon_core8registry8Registry15in_worker_cross17h62c08e9c56b47d60E(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 4 uses
  %i.b = alloca [240 x i8], align 8               ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272
end_hunk_0
begin_hunk_1_@_ZN4anki13import_export7package4apkg6import5notes11NoteContext16import_notetypes17h72e1fb46b8e2d2afE:bb.a

bb.cd:                                            ; preds = %bb.ca, %bb.cc, %bb.ci
  %i.fg = icmp eq ptr %i.bb, %i.ae
  br i1 %i.fg, label %._crit_edge, label %bb.b

bb.ce:                                            ; preds = %.loopexit, %bb.cb, %bb.ch
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62a3cebbd3ceb12cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit" unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h506f2c2f3bf27ce8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

_ZN4anki13import_export7package4apkg6import5notes11NoteContext12add_notetype17hfffdfab6d8d2ad68E.exit: ; preds = %bb.i, %bb.g, %bb.j
  %i.fj = load i64, ptr %i.y, align 8, !range !45, !noundef !5
  %.not5 = icmp eq i64 %i.fj, -9223372036854775773
  br i1 %.not5, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZN4anki13import_export7package4apkg6import5notes11NoteContext12add_notetype17hfffdfab6d8d2ad68E.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.y, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ce

bb.ci:                                            ; preds = %_ZN4anki13import_export7package4apkg6import5notes11NoteContext12add_notetype17hfffdfab6d8d2ad68E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.cd

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$anki..notetype..Notetype$GT$$GT$17h45753bd07fd3d3c5E.exit": ; preds = %bb.ce, %._crit_edge
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h506f2c2f3bf27ce8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.cj:                                            ; preds = %.body
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4anki13import_export7package4apkg6import5notes11NoteContext20record_remapped_ords17ha0828d036e9d906dE(ptr noalias noundef nonnull align 8 dereferenceable(544) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17hb493bf2086453a73E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n, i64 noundef %i.m)
  %i.o = load ptr, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val48 = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val249 = load i64, ptr %i.s, align 8
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 -24 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5938)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5939
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 -16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !5938, !noalias !5940, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !5938, !noalias !5940, !noundef !5
  %i.y = getelementptr inbounds nuw [144 x i8], ptr %.val48, i64 %.val249 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5939
  store ptr %.val48, ptr %i.e, align 8, !noalias !5939
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.y, ptr %i.z, align 8, !noalias !5939
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.v, ptr %i.aa, align 8, !noalias !5939
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.x, ptr %i.ab, align 8, !noalias !5939
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h469d9a458416e6c1E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e), !noalias !5939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5939
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea1ebd50d2d6bf48E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.d unwind label %bb.c, !noalias !5940

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h65a258c8d4362d46E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body.i.i unwind label %bb.e, !noalias !5940

bb.d:                                             ; preds = %bb.b
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h65a258c8d4362d46E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.h unwind label %bb.f, !noalias !5940

bb.e:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5940
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

common.resume:                                    ; preds = %bb.i, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ak, %bb.i ]
  resume { ptr, i32 } %common.resume.op

.body.i.i:                                        ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %i.ac, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !5940
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %.sroa.437.0.copyload = load i64, ptr %i.p, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.538.0.copyload = load i64, ptr %.sroa.538.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val2 = load i64, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ah = getelementptr inbounds nuw [144 x i8], ptr %.val, i64 %.val2
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h1e56accfa403a24dE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %.val, ptr noundef nonnull %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !5942
  store i64 %.sroa.538.0.copyload, ptr %i.d, align 8, !noalias !5941
  %i.aj = call noundef nonnull ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17hac8ba693241665ceE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %.sroa.437.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d), !noalias !5941 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5941
  br label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h5cb8b43dc97516c3E.exit"

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !5940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h1e56accfa403a24dE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %.val48, ptr noundef nonnull %i.y)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea1ebd50d2d6bf48E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$u32$GT$$GT$$GT$17h53a80dc1148e6cf2E.exit.i" unwind label %bb.i, !noalias !5942

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h65a258c8d4362d46E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.j, !noalias !5942

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5942
  unreachable

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$u32$GT$$GT$$GT$17h53a80dc1148e6cf2E.exit.i": ; preds = %bb.h
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h65a258c8d4362d46E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k), !noalias !5942
  br label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h5cb8b43dc97516c3E.exit"

"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h5cb8b43dc97516c3E.exit": ; preds = %bb.g, %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$u32$GT$$GT$$GT$17h53a80dc1148e6cf2E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17ha44e5c0463c3fb92E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.am, i64 noundef %i.m)
  %i.an = load ptr, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.not1 = icmp eq ptr %i.an, null                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %.not1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h5cb8b43dc97516c3E.exit"
  %.sroa.443.0.copyload = load i64, ptr %i.ao, align 8
  %.sroa.544.0.copyload = load i64, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val3 = load ptr, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.val4 = load i64, ptr %i.ar, align 8
  br label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10and_modify17h7037f4289bd4f6e1E.exit"

bb.l:                                             ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h5cb8b43dc97516c3E.exit"
  %i.as = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.at = load ptr, ptr %i.ap, align 8, !nonnull !5, !align !10, !noundef !5
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val374 = load ptr, ptr %i.aw, align 8         ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.val475 = load i64, ptr %i.ax, align 8         ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.as, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5943
  call void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$8iter_mut17h03252daed3e74e5cE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ay), !noalias !5944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !5945
  %i.az = call { ptr, ptr } @"_ZN95_$LT$hashbrown..map..IterMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8dcb47df5730a386E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !5944 ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %i.az, 0
  %.not8.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not8.i.i.i, label %"_ZN4anki13import_export7package4apkg6import5notes11NoteContext20record_remapped_ords28_$u7b$$u7b$closure$u7d$$u7d$17h83bf16bd025a35feE.exit.i", label %.lr.ph9.i.i.i

.lr.ph9.i.i.i:                                    ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val374) ]
  %.idx.i.i.i = mul nuw nsw i64 %.val475, 224
  %i.bb = getelementptr inbounds nuw i8, ptr %.val374, i64 %.idx.i.i.i
  %.not12.i.i.i = icmp eq i64 %.val475, 0
  br i1 %.not12.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit.us.i.i.i, label %.lr.ph.i.i.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit.us.i.i.i: ; preds = %.lr.ph9.i.i.i, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit.us.i.i.i
  %i.bc = call { ptr, ptr } @"_ZN95_$LT$hashbrown..map..IterMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8dcb47df5730a386E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !5944
  %i.bd = extractvalue { ptr, ptr } %i.bc, 0
  %.not.us.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.us.i.i.i, label %"_ZN4anki13import_export7package4apkg6import5notes11NoteContext20record_remapped_ords28_$u7b$$u7b$closure$u7d$$u7d$17h83bf16bd025a35feE.exit.i", label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit.us.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph9.i.i.i, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit.i.i.i
  %.pn = phi { ptr, ptr } [ %i.bn, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit.i.i.i ], [ %i.az, %.lr.ph9.i.i.i ]
  %i.be = extractvalue { ptr, ptr } %.pn, 1       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  br label %bb.m

bb.m:                                             ; preds = %.backedge.i.i.i.i, %.lr.ph.i.i.i
  %i.bf = phi ptr [ %.val374, %.lr.ph.i.i.i ], [ %i.bg, %.backedge.i.i.i.i ] ; 3 uses
  %.sroa.7.03.i.i.i = phi i16 [ 0, %.lr.ph.i.i.i ], [ %.sroa.7.1.i.i.i, %.backedge.i.i.i.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 224 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 200
  %.val8.i.i.i.i = load i32, ptr %i.bh, align 8, !range !33, !noalias !5946, !noundef !5
  %i.bi = trunc nuw i32 %.val8.i.i.i.i to i1
  br i1 %i.bi, label %"_ZN4anki13import_export7package4apkg6import5notes26combine_template_ords_maps28_$u7b$$u7b$closure$u7d$$u7d$17hbb30453d3bcf3a29E.exit.i.i.i.i.i.i.i", label %.backedge.i.i.i.i

"_ZN4anki13import_export7package4apkg6import5notes26combine_template_ords_maps28_$u7b$$u7b$closure$u7d$$u7d$17hbb30453d3bcf3a29E.exit.i.i.i.i.i.i.i": ; preds = %bb.m
  %i.bj = getelementptr i8, ptr %i.bf, i64 204
  %.val9.i.i.i.i = load i32, ptr %i.bj, align 4, !noalias !5946
  %i.bk = load i16, ptr %i.be, align 2, !noalias !5947, !noundef !5
  %i.bl = zext i16 %i.bk to i32
  %i.bm = icmp eq i32 %.val9.i.i.i.i, %i.bl
  br i1 %i.bm, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit.i.i.i, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %"_ZN4anki13import_export7package4apkg6import5notes26combine_template_ords_maps28_$u7b$$u7b$closure$u7d$$u7d$17hbb30453d3bcf3a29E.exit.i.i.i.i.i.i.i", %bb.m
  %.sroa.7.1.i.i.i = add i16 %.sroa.7.03.i.i.i, 1
  %.not1.i.i.i = icmp eq ptr %i.bg, %i.bb
  br i1 %.not1.i.i.i, label %.backedge.i._ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit_crit_edge.i.i.i, label %bb.m

.backedge.i._ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit_crit_edge.i.i.i: ; preds = %.backedge.i.i.i.i
  %.pre.i.i.i = load i16, ptr %i.be, align 2, !noalias !5944
  br label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit.i.i.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit.i.i.i: ; preds = %"_ZN4anki13import_export7package4apkg6import5notes26combine_template_ords_maps28_$u7b$$u7b$closure$u7d$$u7d$17hbb30453d3bcf3a29E.exit.i.i.i.i.i.i.i", %.backedge.i._ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit_crit_edge.i.i.i
  %.not1.lcssa.i.i.i = phi i16 [ %.pre.i.i.i, %.backedge.i._ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit_crit_edge.i.i.i ], [ %.sroa.7.03.i.i.i, %"_ZN4anki13import_export7package4apkg6import5notes26combine_template_ords_maps28_$u7b$$u7b$closure$u7d$$u7d$17hbb30453d3bcf3a29E.exit.i.i.i.i.i.i.i" ]
  store i16 %.not1.lcssa.i.i.i, ptr %i.be, align 2, !noalias !5944
  %i.bn = call { ptr, ptr } @"_ZN95_$LT$hashbrown..map..IterMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8dcb47df5730a386E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !5944 ; 2 uses
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %"_ZN4anki13import_export7package4apkg6import5notes11NoteContext20record_remapped_ords28_$u7b$$u7b$closure$u7d$$u7d$17h83bf16bd025a35feE.exit.i", label %.lr.ph.i.i.i

"_ZN4anki13import_export7package4apkg6import5notes11NoteContext20record_remapped_ords28_$u7b$$u7b$closure$u7d$$u7d$17h83bf16bd025a35feE.exit.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit.i.i.i, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h5a3c442f7c90f50fE.exit.us.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5943
  br label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10and_modify17h7037f4289bd4f6e1E.exit"

"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10and_modify17h7037f4289bd4f6e1E.exit": ; preds = %bb.k, %"_ZN4anki13import_export7package4apkg6import5notes11NoteContext20record_remapped_ords28_$u7b$$u7b$closure$u7d$$u7d$17h83bf16bd025a35feE.exit.i"
  %.val486 = phi i64 [ %.val4, %bb.k ], [ %.val475, %"_ZN4anki13import_export7package4apkg6import5notes11NoteContext20record_remapped_ords28_$u7b$$u7b$closure$u7d$$u7d$17h83bf16bd025a35feE.exit.i" ]
  %.val384 = phi ptr [ %.val3, %bb.k ], [ %.val374, %"_ZN4anki13import_export7package4apkg6import5notes11NoteContext20record_remapped_ords28_$u7b$$u7b$closure$u7d$$u7d$17h83bf16bd025a35feE.exit.i" ] ; 2 uses
  %.sroa.029.081 = phi ptr [ %i.an, %bb.k ], [ null, %"_ZN4anki13import_export7package4apkg6import5notes11NoteContext20record_remapped_ords28_$u7b$$u7b$closure$u7d$$u7d$17h83bf16bd025a35feE.exit.i" ]
  %.sroa.730.080 = phi i64 [ %.sroa.443.0.copyload, %bb.k ], [ %i.au, %"_ZN4anki13import_export7package4apkg6import5notes11NoteContext20record_remapped_ords28_$u7b$$u7b$closure$u7d$$u7d$17h83bf16bd025a35feE.exit.i" ]
  %.sroa.1131.077 = phi i64 [ %.sroa.544.0.copyload, %bb.k ], [ %i.av, %"_ZN4anki13import_export7package4apkg6import5notes11NoteContext20record_remapped_ords28_$u7b$$u7b$closure$u7d$$u7d$17h83bf16bd025a35feE.exit.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bp = getelementptr inbounds nuw [224 x i8], ptr %.val384, i64 %.val486
  store ptr %.val384, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.bp, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @"_ZN136_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17hbe408c088df44e16E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %.not1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10and_modify17h7037f4289bd4f6e1E.exit"
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !5949
  store i64 %.sroa.1131.077, ptr %i.a, align 8, !noalias !5948
  %i.br = call noundef nonnull ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h63b30831c5f5b907E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.029.081, i64 noundef %.sroa.730.080, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !noalias !5948 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5948
  br label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h7d6dbfe811ef1f54E.exit"

bb.o:                                             ; preds = %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10and_modify17h7037f4289bd4f6e1E.exit"
  call void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h239baa4c9430264bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j), !noalias !5949
  br label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h7d6dbfe811ef1f54E.exit"

"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$9or_insert17h7d6dbfe811ef1f54E.exit": ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki13import_export7package4apkg6import5notes11NoteContext3new17hd10000784479c56eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([544 x i8]) align 8 captures(none) dereferenceable(544) %0, i32 noundef %1, ptr noalias noundef align 8 dereferenceable(728) %2, ptr noalias noundef align 8 dereferenceable(72) %3, i1 noundef zeroext %4, i32 noundef range(i32 0, 3) %5, i32 noundef range(i32 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [296 x i8], align 8               ; 25 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.014 = alloca [320 x i8], align 8         ; 5 uses
  %i.h = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.67 = alloca [24 x i8], align 8           ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = tail call noundef zeroext i1 @"_ZN4anki6config4bool46_$LT$impl$u20$anki..collection..Collection$GT$15get_config_bool17h7136a4eca1934331E"(ptr noundef nonnull align 8 %2, i8 noundef 34)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 600
  call void @"_ZN4anki7storage4note54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_all_note_ids17hcfb2356b8b19813dE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.j, ptr noundef nonnull align 8 %i.m)
  %i.n = load i64, ptr %i.j, align 8, !range !45, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.n, -9223372036854775773
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.326.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.623.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.225.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @"_ZN4anki8notetype46_$LT$impl$u20$anki..collection..Collection$GT$17get_all_notetypes17hbbec09dd08b1c0d9E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(728) %2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.h, align 8, !range !45, !noundef !5 ; 2 uses
  %.not44 = icmp eq i64 %i.r, -9223372036854775773
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.338.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.632.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.237.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb21f992fea8df682E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.67, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.u = invoke { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hdfa479ef2fea4c88E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @3)
          to label %bb.i unwind label %.thread57  ; 2 uses

bb.h:                                             ; preds = %"_ZN4core3ptr148drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..notetype..NotetypeId$C$alloc..vec..Vec$LT$core..option..Option$LT$u32$GT$$GT$$GT$$GT$17h6fb9f6123f013118E.exit"
  br i1 %.sroa.017.1, label %bb.u, label %"_ZN4core3ptr84drop_in_place$LT$std..collections..hash..set..HashSet$LT$anki..notes..NoteId$GT$$GT$17he3857bcb8e0834e6E.exit52"

.thread57:                                        ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.w = extractvalue { i64, i64 } %i.u, 0
  %i.x = extractvalue { i64, i64 } %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false)
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.w, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %i.x, ptr %.sroa.535.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.y = invoke { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hdfa479ef2fea4c88E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @3)
          to label %bb.k unwind label %bb.j       ; 2 uses

"_ZN4core3ptr148drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..notetype..NotetypeId$C$alloc..vec..Vec$LT$core..option..Option$LT$u32$GT$$GT$$GT$$GT$17h6fb9f6123f013118E.exit": ; preds = %"_ZN4core3ptr84drop_in_place$LT$std..collections..hash..set..HashSet$LT$anki..notes..NoteId$GT$$GT$17he3857bcb8e0834e6E.exit", %bb.j
  %.sroa.017.1 = phi i1 [ true, %bb.j ], [ false, %"_ZN4core3ptr84drop_in_place$LT$std..collections..hash..set..HashSet$LT$anki..notes..NoteId$GT$$GT$17he3857bcb8e0834e6E.exit" ]
  %.pn.pn = phi { ptr, i32 } [ %i.z, %bb.j ], [ %.pn, %"_ZN4core3ptr84drop_in_place$LT$std..collections..hash..set..HashSet$LT$anki..notes..NoteId$GT$$GT$17he3857bcb8e0834e6E.exit" ] ; 2 uses
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ca801ab43849798E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.h unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr148drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..notetype..NotetypeId$C$alloc..vec..Vec$LT$core..option..Option$LT$u32$GT$$GT$$GT$$GT$17h6fb9f6123f013118E.exit"

bb.k:                                             ; preds = %bb.i
  %i.aa = extractvalue { i64, i64 } %i.y, 0
  %i.ab = extractvalue { i64, i64 } %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false)
end_hunk_1
begin_hunk_2_@_ZN4anki9scheduler6states13load_balancer19LoadBalancerContext13find_interval17h5a8139b23720197eE:bb.a
bb.s:                                             ; preds = %bb.r
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

common.resume.i:                                  ; preds = %.body.thread.i, %bb.bl, %bb.r, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.es, %bb.r ], [ %.pn23110.i, %.body.thread.i ], [ %.pn.pn.i, %.body.i ], [ %i.hz, %bb.bl ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit46.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17h902a7c9465ad7e35E.exit.i"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb27c996755b388aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
  br label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h5b948c7dca746d96E.exit.thread.sink.split.i"

bb.t:                                             ; preds = %.noexc42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !8612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8596
  %i.eu = load i32, ptr %i.z, align 4, !noalias !8596, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8615
  %i.ev = zext i32 %i.eu to i64
  %i.ew = sub nsw i64 %i.bx, %i.ev
  %i.ex = add nsw i64 %i.ew, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8616
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, i64 noundef range(i64 -4294967294, 4294967297) %i.ex, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc47.i unwind label %bb.ao

.noexc47.i:                                       ; preds = %bb.t
  %i.ey = load i64, ptr %i.h, align 8, !range !7, !noalias !8616, !noundef !5
  %i.ez = trunc nuw i64 %i.ey to i1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !range !8, !noalias !8616, !noundef !5 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.ez, label %bb.u, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i.i", !prof !9

bb.u:                                             ; preds = %.noexc47.i
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !8616
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.fb, i64 %i.fd) #38
          to label %.noexc48.i unwind label %bb.ao

.noexc48.i:                                       ; preds = %bb.u
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i.i": ; preds = %.noexc47.i
  %i.fe = load ptr, ptr %i.fc, align 8, !noalias !8616, !nonnull !5, !noundef !5
  %i.ff = icmp ule i64 %i.ex, %i.fb
  call void @llvm.assume(i1 %i.ff)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8616
  store i64 %i.fb, ptr %i.i, align 8, !noalias !8616
  %i.fg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.fe, ptr %i.fg, align 8, !noalias !8616
  %i.fh = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.fh, align 8, !noalias !8616
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h55eb8ce8004be76bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef range(i64 -4294967294, 4294967297) %i.ex, float noundef 1.000000e+00)
          to label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43c97fbc777cf4b6E.exit.i.i" unwind label %bb.v, !noalias !8617

bb.v:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i.i"
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #39
          to label %bb.bo unwind label %bb.w, !noalias !8617

bb.w:                                             ; preds = %bb.v
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !8617
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43c97fbc777cf4b6E.exit.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !8615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8616
  %i.fk = trunc nuw i64 %i.aj to i1
  br i1 %i.fk, label %bb.x, label %bb.aq

bb.x:                                             ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43c97fbc777cf4b6E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8615
  store i64 %i.al, ptr %i.p, align 8, !noalias !8615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8615
  invoke void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hc1557c2f250aa6b2E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ac)
          to label %bb.z unwind label %bb.y, !noalias !8618

.body.i.i:                                        ; preds = %bb.af, %bb.ac, %bb.aa, %bb.y
  %.pn.i.i = phi { ptr, i32 } [ %i.fp, %bb.aa ], [ %i.fl, %bb.y ], [ %i.fr, %bb.ac ], [ %i.fv, %bb.af ]
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #39
          to label %bb.bo unwind label %bb.an, !noalias !8618

bb.y:                                             ; preds = %bb.ai, %bb.ad, %bb.x
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.z:                                             ; preds = %bb.x
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !noalias !8615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8615
  store i64 -9223372036854775807, ptr %i.o, align 8, !noalias !8615
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i64 -9223372036854775807, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !noalias !8615
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  store ptr %i.p, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !8615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8619
  %i.fm = invoke { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hdfa479ef2fea4c88E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @3)
          to label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hf0429da1bef31dd0E.exit.i.i.i" unwind label %bb.ac, !noalias !8620 ; 2 uses

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hf0429da1bef31dd0E.exit.i.i.i": ; preds = %bb.z
  %i.fn = extractvalue { i64, i64 } %i.fm, 0
  %i.fo = extractvalue { i64, i64 } %i.fm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !8619
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.fn, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !8619
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %i.fo, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !noalias !8619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull align 8 dereferenceable(176) %i.o, i64 176, i1 false), !noalias !8621
  invoke void @"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h2d133d34839b64a2E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %i.f)
          to label %bb.ad unwind label %bb.aa, !noalias !8620

bb.aa:                                            ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hf0429da1bef31dd0E.exit.i.i.i"
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0fd5cd0656d8a17dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %.body.i.i unwind label %bb.ab, !noalias !8620

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !8622
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr369drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$std..collections..hash..map..Iter$LT$anki..deckconfig..DeckConfigId$C$$u5b$anki..scheduler..states..load_balancer..LoadBalancerDay$u3b$$u20$99$u5d$$GT$$C$std..collections..hash..set..HashSet$LT$usize$GT$$C$anki..scheduler..states..load_balancer..calculate_sibling_modifiers..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h39c8af53acd268bdE"(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.o) #39
          to label %.body.i.i unwind label %bb.ab, !noalias !8622

bb.ad:                                            ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hf0429da1bef31dd0E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !8615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !8615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8615
  invoke void @"_ZN106_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5152d67e526cd368E"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.j)
          to label %bb.ae unwind label %bb.y, !noalias !8618

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !noalias !8615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8615
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.530.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.7.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.fs = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.i.i.backedge, %bb.ae
  %i.fu = invoke { i64, i64 } @"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h78704b6bef45f94eE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %bb.ag unwind label %bb.af, !noalias !8618 ; 2 uses

bb.af:                                            ; preds = %bb.ah, %.thread.i.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ce72a040883476E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %.body.i.i unwind label %bb.an, !noalias !8618

bb.ag:                                            ; preds = %.thread.i.i
  %i.fw = extractvalue { i64, i64 } %i.fu, 0
  %i.fx = extractvalue { i64, i64 } %i.fu, 1
  %i.fy = trunc nuw i64 %i.fw to i1
  br i1 %i.fy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17hb62957efa6f54487E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noundef nonnull @440, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @440, i64 44), ptr noundef nonnull @441, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @441, i64 44))
          to label %_ZN4core4iter6traits8iterator8Iterator3zip17he2a9be3506ef392aE.exit.i.i unwind label %bb.af, !noalias !8618

bb.ai:                                            ; preds = %bb.ag
  invoke void @"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31ce72a040883476E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %"_ZN4core3ptr71drop_in_place$LT$std..collections..hash..set..IntoIter$LT$usize$GT$$GT$17h69c9b9055e2c8e5eE.exit28.i.i" unwind label %bb.y, !noalias !8618

"_ZN4core3ptr71drop_in_place$LT$std..collections..hash..set..IntoIter$LT$usize$GT$$GT$17h69c9b9055e2c8e5eE.exit28.i.i": ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8615
  br label %bb.aq

_ZN4core4iter6traits8iterator8Iterator3zip17he2a9be3506ef392aE.exit.i.i: ; preds = %bb.ah
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.m, align 8, !noalias !8615 ; 2 uses
  %.sroa.429.0.copyload.i.i = load ptr, ptr %.sroa.429.0..sroa_idx.i.i, align 8, !noalias !8615 ; 2 uses
  %.sroa.530.0.copyload.i.i = load i64, ptr %.sroa.530.0..sroa_idx.i.i, align 8, !noalias !8615 ; 2 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx31.i.i, align 8, !noalias !8615 ; 2 uses
  %i.fz = icmp ult i64 %.sroa.530.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.fz, label %.lr.ph.i.i, label %.thread.i.i.backedge

.thread.i.i.backedge:                             ; preds = %bb.al, %_ZN4core4iter6traits8iterator8Iterator3zip17he2a9be3506ef392aE.exit.i.i
  br label %.thread.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core4iter6traits8iterator8Iterator3zip17he2a9be3506ef392aE.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.429.0.copyload.i.i) ]
  %i.ga = trunc i64 %i.fx to i32
  %i.gb = sub i32 %i.ga, %i.eu
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.lr.ph.i.i
  %.sroa.530.036.i.i = phi i64 [ %.sroa.530.0.copyload.i.i, %.lr.ph.i.i ], [ %i.gc, %bb.al ] ; 3 uses
  %i.gc = add nuw i64 %.sroa.530.036.i.i, 1       ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.429.0.copyload.i.i, i64 %.sroa.530.036.i.i
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.530.036.i.i
  %i.gf = load i32, ptr %i.ge, align 4, !noalias !8618, !noundef !5
  %i.gg = add i32 %i.gf, %i.gb                    ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, -1
  br i1 %i.gh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gi = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gj = load i64, ptr %i.fs, align 8, !noalias !8615, !noundef !5
  %i.gk = icmp ugt i64 %i.gj, %i.gi
  br i1 %i.gk, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak, %bb.aj
  %exitcond.not.i.i = icmp eq i64 %i.gc, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i, label %.thread.i.i.backedge, label %bb.aj

bb.am:                                            ; preds = %bb.ak
  %i.gl = load ptr, ptr %i.ft, align 8, !noalias !8615, !nonnull !5, !noundef !5
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gi ; 2 uses
  %i.gn = load float, ptr %i.gd, align 4, !noalias !8618, !noundef !5
  %i.go = load float, ptr %i.gm, align 4, !noalias !8618, !noundef !5
  %i.gp = fmul float %i.gn, %i.go
  store float %i.gp, ptr %i.gm, align 4, !noalias !8618
  br label %bb.al

bb.an:                                            ; preds = %bb.af, %.body.i.i
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !8618
  unreachable

bb.ao:                                            ; preds = %bb.u, %bb.t
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ap:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$17h0967723463683d52E.exit.i.i", %bb.aq
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.aq:                                            ; preds = %"_ZN4core3ptr71drop_in_place$LT$std..collections..hash..set..IntoIter$LT$usize$GT$$GT$17h69c9b9055e2c8e5eE.exit28.i.i", %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43c97fbc777cf4b6E.exit.i.i"
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !noalias !8623
  %.sroa.4.0..sroa_idx131.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx131.i, align 8, !noalias !8623 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !8623 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8596
  %i.gt = load ptr, ptr %i.do, align 8, !noalias !8596, !nonnull !5, !noundef !5 ; 3 uses
  %i.gu = load i64, ptr %i.y, align 8, !range !18, !noalias !8596, !noundef !5
  %i.gv = load i64, ptr %i.dq, align 8, !noalias !8596, !noundef !5 ; 2 uses
  %i.gw = icmp ult i64 %i.gv, 1152921504606846976
  call void @llvm.assume(i1 %i.gw)
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gv
  %.sroa.091.0.copyload.i = load i64, ptr %i.u, align 8, !noalias !8596
  %.sroa.492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.492.0.copyload.i = load ptr, ptr %.sroa.492.0..sroa_idx.i, align 8, !noalias !8596, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.593.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.593.0.copyload.i = load i64, ptr %.sroa.593.0..sroa_idx.i, align 8, !noalias !8596 ; 2 uses
  %i.gy = icmp ult i64 %.sroa.593.0.copyload.i, 2305843009213693952
  call void @llvm.assume(i1 %i.gy)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.492.0.copyload.i, i64 %.sroa.593.0.copyload.i
  %.sroa.076.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8596
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.076.sroa.0.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !8596
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.ha = icmp ult i64 %.sroa.5.0.copyload.i, 2305843009213693952
  call void @llvm.assume(i1 %i.ha)
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i
  %.sroa.076.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.076.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !8596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8624
  store ptr %i.gt, ptr %i.d, align 8, !alias.scope !8625, !noalias !8596
  %.sroa.076.sroa.0.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.gt, ptr %.sroa.076.sroa.0.sroa.0.sroa.2.0..sroa_idx.i, align 8, !alias.scope !8625, !noalias !8596
  %.sroa.076.sroa.0.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.gu, ptr %.sroa.076.sroa.0.sroa.0.sroa.3.0..sroa_idx.i, align 8, !alias.scope !8625, !noalias !8596
  %.sroa.076.sroa.0.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.gx, ptr %.sroa.076.sroa.0.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8625, !noalias !8596
  %.sroa.076.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.492.0.copyload.i, ptr %.sroa.076.sroa.0.sroa.2.0..sroa_idx.i, align 8, !alias.scope !8625, !noalias !8596
  %.sroa.076.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.492.0.copyload.i, ptr %.sroa.076.sroa.0.sroa.3.0..sroa_idx.i, align 8, !alias.scope !8625, !noalias !8596
  %.sroa.076.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %.sroa.091.0.copyload.i, ptr %.sroa.076.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8625, !noalias !8596
  %.sroa.076.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.gz, ptr %.sroa.076.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8625, !noalias !8596
  %.sroa.076.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.076.sroa.2.0..sroa_idx.i, align 8, !alias.scope !8625, !noalias !8596
  %.sroa.076.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.076.sroa.3.0..sroa_idx.i, align 8, !alias.scope !8625, !noalias !8596
  %.sroa.076.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.076.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8625, !noalias !8596
  %.sroa.076.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %i.hb, ptr %.sroa.076.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8625, !noalias !8596
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !8625, !noalias !8596
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr %i.z, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !8625, !noalias !8596
  invoke void @"_ZN5alloc3vec16in_place_collect108_$LT$impl$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9from_iter17hd00feaea751f1994E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.d)
          to label %.noexc66.i unwind label %bb.ap

.noexc66.i:                                       ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8624
  %i.hc = trunc nuw i64 %i.ag to i1
  br i1 %i.hc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.noexc66.i
  invoke void @_ZN9rand_core11SeedableRng13seed_from_u6417hcc8144888d03ca89E(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(address) dereferenceable(320) %i.c, i64 noundef %i.ai)
          to label %bb.aw unwind label %bb.av, !noalias !8626

bb.as:                                            ; preds = %bb.bj, %.noexc66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8624
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h09be780e8885e5abE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$17h0967723463683d52E.exit.i.i" unwind label %bb.at, !noalias !8626

bb.at:                                            ; preds = %bb.as
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfb5938b07a095ecaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread.i unwind label %bb.au, !noalias !8626

bb.au:                                            ; preds = %bb.at
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !8626
  unreachable

.body.i63.i:                                      ; preds = %bb.bc, %bb.az, %bb.av
  %.pn.i64.i = phi { ptr, i32 } [ %i.ho, %bb.az ], [ %i.hf, %bb.av ], [ %i.hu, %bb.bc ]
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$f32$RP$$GT$$GT$17h0967723463683d52E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #39
          to label %.thread.i unwind label %bb.bi, !noalias !8626

bb.av:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i.i.i", %bb.aw, %bb.ar
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i63.i

bb.aw:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8624
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !8624, !nonnull !5, !noundef !5 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !noalias !8624, !noundef !5
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hj
  invoke void @"_ZN4rand5distr8weighted14weighted_index22WeightedIndex$LT$X$GT$3new17h5ab44c968efbc618E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hk)
          to label %bb.ax unwind label %bb.av, !noalias !8626

bb.ax:                                            ; preds = %bb.aw
  %i.hl = load i64, ptr %i.a, align 8, !range !8, !noalias !8624, !noundef !5 ; 2 uses
  %i.hm = icmp eq i64 %i.hl, -9223372036854775808
  br i1 %i.hm, label %bb.bj, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.sroa.6.0..sroa_idx.i65.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.415.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i65.i, i64 32, i1 false), !noalias !8624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8624
  store i64 %i.hl, ptr %i.b, align 8, !noalias !8624
  %i.hn = invoke noundef i64 @"_ZN134_$LT$rand..distr..weighted..weighted_index..WeightedIndex$LT$X$GT$$u20$as$u20$rand..distr..distribution..Distribution$LT$usize$GT$$GT$6sample17h01cbe945761b72dcE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 16 dereferenceable(320) %i.c)
          to label %bb.ba unwind label %bb.az, !noalias !8626 ; 3 uses

bb.az:                                            ; preds = %bb.be, %bb.ay
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$rand..distr..weighted..weighted_index..WeightedIndex$LT$f32$GT$$GT$17hb188f288e527d24fE"(ptr noalias noundef align 8 dereferenceable(40) %i.b) #39
          to label %.body.i63.i unwind label %bb.bi, !noalias !8626

bb.ba:                                            ; preds = %bb.ay
  %i.hp = load i64, ptr %i.hi, align 8, !noalias !8624, !noundef !5 ; 2 uses
  %i.hq = icmp ult i64 %i.hn, %i.hp
  br i1 %i.hq, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.hr = load ptr, ptr %i.hg, align 8, !noalias !8624, !nonnull !5, !noundef !5
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hn
  %i.ht = load i32, ptr %i.hs, align 4, !noalias !8626, !noundef !5
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce7e94c3e5886d6aE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i.i.i" unwind label %bb.bc, !noalias !8626

bb.bc:                                            ; preds = %bb.bb
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.body.i63.i unwind label %bb.bd, !noalias !8626

bb.bd:                                            ; preds = %bb.bc
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_2
begin_hunk_3_@"_ZN69_$LT$zip..read..ZipFile$LT$R$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfc666d4a5969f202E":bb.a
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = load i64, ptr %0, align 8, !range !6, !noundef !5
  %.not = icmp eq i64 %i.e, 2
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.sroa.012.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.413.0.copyload = load ptr, ptr %.sroa.413.0..sroa_idx, align 8 ; 15 uses
  store i64 0, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9803)
  switch i64 %.sroa.012.0.copyload, label %default.unreachable80.i [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ], !prof !49

default.unreachable80.i:                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  call fastcc void @_ZN3zip4read13invalid_state17h2c81c2b2fe37f096E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !9803
  %.pr.pre = load ptr, ptr %i.d, align 8
  br label %"_ZN3zip4read22ZipFileReader$LT$R$GT$10into_inner17h332f2bebf1dc85b5E.exit"

bb.d:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %.sroa.413.0.copyload, ptr %i.d, align 8, !alias.scope !9804
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  br label %"_ZN3zip4read22ZipFileReader$LT$R$GT$10into_inner17h332f2bebf1dc85b5E.exit"

bb.e:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.413.0.copyload) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 16
  %.sroa.09.0.copyload.i = load ptr, ptr %i.g, align 8, !noalias !9804 ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 24
  %.sroa.3.sroa.0.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !9804 ; 3 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 32
  %.sroa.3.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !9804 ; 2 uses
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 64
  %.sroa.3.sroa.5.0.copyload.i = load ptr, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !9804 ; 3 uses
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 72
  %.sroa.3.sroa.6.0.copyload.i = load ptr, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !9804 ; 3 uses
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 80
  %.sroa.3.sroa.7.0.copyload.i = load i64, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !9804 ; 3 uses
  %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 88
  %.sroa.3.sroa.8.0.copyload.i = load i64, ptr %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !9804 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.09.0.copyload.i, null
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 104
  %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 96
  %.sroa.3.sroa.9.0.copyload.i = load i64, ptr %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !9804
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 40
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 24, i1 false), !noalias !9804
  %.sroa.5.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx15.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false), !noalias !9804
  store ptr %.sroa.09.0.copyload.i, ptr %i.b, align 8, !noalias !9804
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.3.sroa.0.0.copyload.i, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !9804
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.3.sroa.3.0.copyload.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !9804
  %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.3.sroa.5.0.copyload.i, ptr %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !9804
  %.sroa.414.sroa.7.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %.sroa.3.sroa.6.0.copyload.i, ptr %.sroa.414.sroa.7.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !9804
  %.sroa.414.sroa.8.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.3.sroa.7.0.copyload.i, ptr %.sroa.414.sroa.8.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !9804
  %.sroa.414.sroa.9.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %.sroa.3.sroa.8.0.copyload.i, ptr %.sroa.414.sroa.9.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !9804
  %.sroa.414.sroa.10.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 4 uses
  store i64 %.sroa.3.sroa.9.0.copyload.i, ptr %.sroa.414.sroa.10.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !9804
  %i.h = ptrtoint ptr %.sroa.3.sroa.0.0.copyload.i to i64
  %.sroa.764.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.764.0.copyload.i = load ptr, ptr %.sroa.764.0..sroa_idx.i, align 8, !noalias !9804
  %i.i = ptrtoint ptr %.sroa.3.sroa.6.0.copyload.i to i64
  invoke void @"_ZN73_$LT$flate2..ffi..c..Stream$LT$D$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51d99be519321d98E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.414.sroa.10.0..sroa.414.0..sroa_idx.sroa_idx.i)
          to label %"_ZN4core3ptr44drop_in_place$LT$flate2..ffi..c..Inflate$GT$17h2471758d32c1ade9E.exit.i.i" unwind label %bb.g, !noalias !9804

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN71_$LT$flate2..ffi..c..StreamWrapper$u20$as$u20$core..ops..drop..Drop$GT$4drop17hebfeec76f7a6fbefE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.414.sroa.10.0..sroa.414.0..sroa_idx.sroa_idx.i)
          to label %common.resume unwind label %bb.h, !noalias !9804

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !9804
  unreachable

"_ZN4core3ptr44drop_in_place$LT$flate2..ffi..c..Inflate$GT$17h2471758d32c1ade9E.exit.i.i": ; preds = %bb.f
  invoke void @"_ZN71_$LT$flate2..ffi..c..StreamWrapper$u20$as$u20$core..ops..drop..Drop$GT$4drop17hebfeec76f7a6fbefE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.414.sroa.10.0..sroa.414.0..sroa_idx.sroa_idx.i)
          to label %"_ZN4core3ptr44drop_in_place$LT$flate2..mem..Decompress$GT$17h29fa1f1fb40103fbE.exit.i" unwind label %bb.k, !noalias !9804

bb.i:                                             ; preds = %"_ZN4core3ptr44drop_in_place$LT$flate2..mem..Decompress$GT$17h29fa1f1fb40103fbE.exit.i", %bb.e
  %.sroa.059.0.i = phi ptr [ %.sroa.09.0.copyload.i, %"_ZN4core3ptr44drop_in_place$LT$flate2..mem..Decompress$GT$17h29fa1f1fb40103fbE.exit.i" ], [ %.sroa.3.sroa.0.0.copyload.i, %bb.e ] ; 2 uses
  %.sroa.561.0.i = phi i64 [ %i.h, %"_ZN4core3ptr44drop_in_place$LT$flate2..mem..Decompress$GT$17h29fa1f1fb40103fbE.exit.i" ], [ %.sroa.3.sroa.3.0.copyload.i, %bb.e ] ; 2 uses
  %.sroa.764.0.i = phi ptr [ %.sroa.764.0.copyload.i, %"_ZN4core3ptr44drop_in_place$LT$flate2..mem..Decompress$GT$17h29fa1f1fb40103fbE.exit.i" ], [ %.sroa.3.sroa.5.0.copyload.i, %bb.e ] ; 2 uses
  %.sroa.866.0.i = phi ptr [ %.sroa.3.sroa.5.0.copyload.i, %"_ZN4core3ptr44drop_in_place$LT$flate2..mem..Decompress$GT$17h29fa1f1fb40103fbE.exit.i" ], [ %.sroa.3.sroa.6.0.copyload.i, %bb.e ] ; 2 uses
  %.sroa.968.0.i = phi i64 [ %i.i, %"_ZN4core3ptr44drop_in_place$LT$flate2..mem..Decompress$GT$17h29fa1f1fb40103fbE.exit.i" ], [ %.sroa.3.sroa.7.0.copyload.i, %bb.e ] ; 2 uses
  %.sroa.1070.0.i = phi i64 [ %.sroa.3.sroa.7.0.copyload.i, %"_ZN4core3ptr44drop_in_place$LT$flate2..mem..Decompress$GT$17h29fa1f1fb40103fbE.exit.i" ], [ %.sroa.3.sroa.8.0.copyload.i, %bb.e ]
  %i.l = icmp eq i64 %.sroa.561.0.i, 0
  br i1 %i.l, label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h20c8c5e87a460610E.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.059.0.i) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.059.0.i, i64 noundef range(i64 1, 0) %.sroa.561.0.i, i64 noundef 1) #30, !noalias !9804
  br label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h20c8c5e87a460610E.exit.i"

bb.k:                                             ; preds = %"_ZN4core3ptr44drop_in_place$LT$flate2..ffi..c..Inflate$GT$17h2471758d32c1ade9E.exit.i.i"
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

"_ZN4core3ptr44drop_in_place$LT$flate2..mem..Decompress$GT$17h29fa1f1fb40103fbE.exit.i": ; preds = %"_ZN4core3ptr44drop_in_place$LT$flate2..ffi..c..Inflate$GT$17h2471758d32c1ade9E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9804
  br label %bb.i

"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h20c8c5e87a460610E.exit.i": ; preds = %bb.j, %bb.i
  %.not21.i = icmp eq ptr %.sroa.764.0.i, null    ; 3 uses
  %i.n = inttoptr i64 %.sroa.968.0.i to ptr
  %.sroa.55.sroa.5.0.i = select i1 %.not21.i, i64 %.sroa.1070.0.i, i64 %.sroa.968.0.i
  %.sroa.55.sroa.0.0.i = select i1 %.not21.i, ptr %i.n, ptr %.sroa.866.0.i
  %.sroa.03.0.i = select i1 %.not21.i, ptr %.sroa.866.0.i, ptr %.sroa.764.0.i ; 2 uses
  store ptr %.sroa.03.0.i, ptr %i.d, align 8, !alias.scope !9802
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.55.sroa.0.0.i, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !9802
  %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.55.sroa.5.0.i, ptr %.sroa.55.sroa.5.0..sroa.55.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !9802
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.413.0.copyload, i64 noundef 128, i64 noundef 8) #30, !noalias !9804
  br label %"_ZN3zip4read22ZipFileReader$LT$R$GT$10into_inner17h332f2bebf1dc85b5E.exit"

common.resume:                                    ; preds = %bb.k, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.j, %bb.g ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.413.0.copyload, i64 noundef 128, i64 noundef 8) #30, !noalias !9804
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN3zip4read22ZipFileReader$LT$R$GT$10into_inner17h332f2bebf1dc85b5E.exit": ; preds = %bb.c, %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h20c8c5e87a460610E.exit.i", %bb.d
  %i.o = phi ptr [ %.sroa.413.0.copyload, %bb.d ], [ %.sroa.03.0.i, %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h20c8c5e87a460610E.exit.i" ], [ %.pr.pre, %bb.c ]
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %"_ZN4core3ptr162drop_in_place$LT$core..result..Result$LT$std..io..Take$LT$$RF$mut$u20$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$C$std..io..error..Error$GT$$GT$17h21e20d38e030ee7fE.exit11", label %bb.m

bb.l:                                             ; preds = %bb.o, %bb.a
  ret void

.noexc9:                                          ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.m:                                             ; preds = %"_ZN3zip4read22ZipFileReader$LT$R$GT$10into_inner17h332f2bebf1dc85b5E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.q = call { i64, ptr } @"_ZN116_$LT$std..sys..pal..unix..kernel_copy..Copier$LT$R$C$W$GT$$u20$as$u20$std..sys..pal..unix..kernel_copy..SpecCopy$GT$4copy17hfd2a881dd03c8bd8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 1 %i.a) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.noexc9, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.t)
  br label %.noexc9

"_ZN4core3ptr162drop_in_place$LT$core..result..Result$LT$std..io..Take$LT$$RF$mut$u20$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$C$std..io..error..Error$GT$$GT$17h21e20d38e030ee7fE.exit11": ; preds = %"_ZN3zip4read22ZipFileReader$LT$R$GT$10into_inner17h332f2bebf1dc85b5E.exit"
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val3 = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val3)
  br label %bb.o

bb.o:                                             ; preds = %.noexc9, %"_ZN4core3ptr162drop_in_place$LT$core..result..Result$LT$std..io..Take$LT$$RF$mut$u20$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$C$std..io..error..Error$GT$$GT$17h21e20d38e030ee7fE.exit11"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN6flate22gz11read_to_nul17h7f9dffb681a3abaaE(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit", %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9811
  store i8 0, ptr %i.a, align 1, !noalias !9811
  %i.d = call { i64, ptr } @"_ZN71_$LT$flate2..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h2f7f12d1f21e105cE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 1 %i.a, i64 noundef 1), !noalias !9811 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 2 uses
  %i.g = trunc nuw i64 %i.e to i1
  br i1 %i.g, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE.exit"
  %i.h = phi ptr [ %i.am, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE.exit" ], [ %i.f, %bb.b ] ; 12 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %.split.i.i
    i64 3, label %bb.c
    i64 0, label %.split25.i.i
    i64 1, label %.split24.i.i
  ], !prof !26

default.unreachable:                              ; preds = %.lr.ph.i.i
  unreachable

._crit_edge.i.i:                                  ; preds = %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE.exit", %bb.b
  %.lcssa.i.i = phi ptr [ %i.f, %bb.b ], [ %i.am, %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE.exit" ]
  %i.k = icmp eq ptr %.lcssa.i.i, null
  br i1 %i.k, label %bb.l, label %bb.n

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %.mask26.i.i = and i64 %i.i, -4294967296
  %i.l = icmp eq i64 %.mask26.i.i, 17179869184
  br i1 %i.l, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hf6f15a96625a91b2E.exit11.i.i.thread", label %bb.m

.split25.i.i:                                     ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !39, !noalias !9811, !noundef !5
  %i.o = icmp eq i8 %i.n, 35
  br i1 %i.o, label %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hf6f15a96625a91b2E.exit11.i.i.thread", label %bb.m

.split24.i.i:                                     ; preds = %.lr.ph.i.i
  %i.p = getelementptr i8, ptr %i.h, i64 -1       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = getelementptr i8, ptr %i.h, i64 15
  %i.r = load i8, ptr %i.q, align 8, !range !39, !noalias !9811, !noundef !5
  %i.s = icmp eq i8 %i.r, 35
  br i1 %i.s, label %bb.e, label %bb.m

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.t = icmp ult ptr %i.h, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.t)
  %.mask.i.i = and i64 %i.i, -4294967296
  %i.u = icmp eq i64 %.mask.i.i, 150323855360
  br i1 %i.u, label %bb.d, label %bb.m

"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hf6f15a96625a91b2E.exit11.i.i.thread": ; preds = %.split25.i.i, %.split.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !noalias !9811
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE.exit"

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !noalias !9811
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE.exit"

bb.e:                                             ; preds = %.split24.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ], !noalias !9811
  %.val.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !9811 ; 5 uses
  %i.v = getelementptr i8, ptr %i.h, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.v, align 8, !noalias !9811, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.w = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !5, !noalias !9811 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ], !noalias !9811
  invoke void %i.w(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.g unwind label %bb.i, !noalias !9811

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !18, !invariant.load !5, !noalias !9811 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !34, !invariant.load !5, !noalias !9811 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, -9223372036854775807
  call void @llvm.assume(i1 %i.ab), !noalias !9811
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17ha57d72ebac503babE.exit.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ], !noalias !9811
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.aa) #30, !noalias !9811
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17ha57d72ebac503babE.exit.i.i.i.i"

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !18, !invariant.load !5, !noalias !9811 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !34, !invariant.load !5, !noalias !9811 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, -9223372036854775807
  call void @llvm.assume(i1 %i.ai), !noalias !9811
  %i.aj = icmp eq i64 %i.af, 0
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.af, i64 noundef range(i64 1, -9223372036854775807) %i.ah) #30, !noalias !9811
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 24, i64 noundef 8) #30, !noalias !9811
  resume { ptr, i32 } %i.ad

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17ha57d72ebac503babE.exit.i.i.i.i": ; preds = %bb.h, %bb.g
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 24, i64 noundef 8) #30, !noalias !9811
  br label %"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE.exit"

"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE.exit": ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17hf6f15a96625a91b2E.exit11.i.i.thread", %bb.d, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17ha57d72ebac503babE.exit.i.i.i.i"
  %i.ak = call { i64, ptr } @"_ZN71_$LT$flate2..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h2f7f12d1f21e105cE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 1 %i.a, i64 noundef 1), !noalias !9811 ; 2 uses
  %i.al = extractvalue { i64, ptr } %i.ak, 0
  %i.am = extractvalue { i64, ptr } %i.ak, 1      ; 2 uses
  %i.an = trunc nuw i64 %i.al to i1
  br i1 %i.an, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9811
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.r, %bb.m, %bb.l
  %.sroa.0.0 = phi ptr [ %i.h, %bb.m ], [ inttoptr (i64 158913789955 to ptr), %bb.l ], [ %i.ay, %bb.r ], [ null, %bb.n ]
  ret ptr %.sroa.0.0

bb.m:                                             ; preds = %bb.c, %.split24.i.i, %.split25.i.i, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9811
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  br label %.loopexit

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.ao = load i8, ptr %i.a, align 1, !noalias !9811, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9811
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %i.aq, 65535
  br i1 %i.as, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = load i64, ptr %1, align 8, !range !18, !alias.scope !9812, !noundef !5
  %i.au = icmp eq i64 %i.aq, %i.at
  br i1 %i.au, label %bb.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit"

bb.q:                                             ; preds = %bb.p
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit": ; preds = %bb.p, %bb.q
  %i.av = load ptr, ptr %i.c, align 8, !alias.scope !9812, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aq
  store i8 %i.ao, ptr %i.aw, align 1
  %i.ax = add nuw i64 %i.aq, 1
  store i64 %i.ax, ptr %i.b, align 8, !alias.scope !9812
  br label %bb.b

bb.r:                                             ; preds = %bb.o
  %i.ay = call noundef nonnull ptr @_ZN3std2io5error5Error3new17hba387b3b54c38644E(i8 noundef 20, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @554, i64 noundef 26)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_ZN6flate22gz14GzHeaderParser5parse17ha424a7d14db33462E(ptr noalias noundef align 8 dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.sroa.56.0..sroa_idx7.i158 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0..sroa_idx9.i159 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.56.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.6.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 83
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 85
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 86
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.pre = load i8, ptr %i.c, align 8, !range !25
  switch i8 %.pre, label %default.unreachable276 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %thread-pre-split
    i8 6, label %_ZN6flate22gz9read_into17h9983f34d6c59e142E.exit.thread
  ]

.thread282:                                       ; preds = %bb.az, %bb.k, %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$flate2..crc..Crc$GT$$GT$$GT$17h0367ddcf0be26947E.exit.sink.split.i163"
  store i8 6, ptr %i.c, align 8
  br label %_ZN6flate22gz9read_into17h9983f34d6c59e142E.exit.thread

bb.b:                                             ; preds = %bb.ax, %bb.ay, %bb.j
  %i.u = load ptr, ptr %i.e, align 8, !align !10, !noundef !5 ; 2 uses
  store i8 5, ptr %i.c, align 8
  store i8 0, ptr %i.f, align 1
  store i16 0, ptr %i.d, align 2
  store ptr %i.u, ptr %i.e, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.at, %bb.au, %bb.i
  %i.v = load ptr, ptr %i.e, align 8, !align !10, !noundef !5
  store i8 4, ptr %i.c, align 8
  store ptr %i.v, ptr %i.e, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.t, %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$flate2..crc..Crc$GT$$GT$$GT$17h0367ddcf0be26947E.exit.sink.split.i", %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  store i8 1, ptr %i.c, align 8
  store i8 0, ptr %i.f, align 1
  store i16 0, ptr %i.d, align 2
  store ptr %.sroa.05.0, ptr %i.e, align 8
  br label %bb.g

bb.e:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit"
  store i64 %i.cm, ptr %0, align 8
  store ptr %i.co, ptr %i.k, align 8
  store i64 %i.cj, ptr %i.j, align 8
  %i.w = load ptr, ptr %i.e, align 8, !align !10, !noundef !5
  store i8 2, ptr %i.c, align 8
  store i16 0, ptr %i.d, align 2
  store ptr %i.w, ptr %i.e, align 8
  br label %bb.h

default.unreachable276:                           ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.x = load i8, ptr %i.f, align 1, !noundef !5  ; 2 uses
  %i.y = icmp ult i8 %i.x, 10
  br i1 %i.y, label %.lr.ph231, label %._crit_edge232

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.z = load i8, ptr %i.g, align 8, !noundef !5
  %i.aa = and i8 %i.z, 4
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %.sink.split.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.ac = load i8, ptr %i.f, align 1, !noundef !5 ; 2 uses
  %i.ad = icmp ult i8 %i.ac, 2
end_hunk_3
