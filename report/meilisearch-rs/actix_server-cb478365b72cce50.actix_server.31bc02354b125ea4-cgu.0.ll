Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_server-cb478365b72cce50.actix_server.31bc02354b125ea4-cgu.0?download=true
inline.NumInlined: 3999
inline.NumDeleted: 1944
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h915282f64c0121dbE:bb.a
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0540fea244bce1c3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.abu)
  br label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit.i"

"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$17h42a57b4073f8aaa7E.exit": ; preds = %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit.i", %"_ZN4core3ptr65drop_in_place$LT$tokio..sync..oneshot..Sender$LT$$LP$$RP$$GT$$GT$17h48203d401bf13c9bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !50
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hd1c418e806a17b46E(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_ZN3std6thread9spawnhook15ChildSpawnHooks3run17h1ae0a54de4e945fcE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !3596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3596
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !50
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17he4b50ab3746223baE(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(160) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3722)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.u = load ptr, ptr %0, align 16, !alias.scope !3722, !nonnull !12, !align !13, !noundef !12 ; 13 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3722, !noundef !12 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3724)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3725
  invoke void @_ZN3mio5event6events6Events13with_capacity17hb4dd15674c428ed1E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, i64 noundef 256)
          to label %.noexc.i unwind label %bb.de, !noalias !3722

.noexc.i:                                         ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.8.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 8 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.w, 5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i
  %i.aj = icmp eq i64 %i.w, 0                     ; 6 uses
  %i.ak = shl nuw i64 %i.w, 3                     ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.an = icmp ult i64 %i.w, 4
  %unroll_iter = and i64 %i.w, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod466 = icmp ne i64 %xtraiter, 0
  %.idx = shl nuw nsw i64 %i.w, 3
  %.not.i.i66.i.i378 = icmp eq i64 %i.w, 0
  br label %_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i

_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i: ; preds = %_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i.backedge, %.noexc.i
  %i.ao = load i64, ptr %i.y, align 16, !alias.scope !3726, !noalias !3724
  %i.ap = load i32, ptr %i.z, align 8, !range !28, !alias.scope !3726, !noalias !3724, !noundef !12
  %i.aq = invoke noundef ptr @_ZN3mio4poll4Poll4poll17h200e78b34f7beb3bE(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s, i64 %i.ao, i32 noundef %i.ap)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ; 3 uses

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i.i, %bb.ci, %bb.cf, %bb.bo, %bb.ae, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i70.i.i, %bb.f, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.aw, %bb.f ], [ %i.dn, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i70.i.i ], [ %i.ht, %bb.bo ], [ %i.jk, %bb.cf ], [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ], [ %lpad.phi102.i.i.i, %bb.ci ], [ %i.dn, %bb.ae ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit82.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit85.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit87.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit90.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit93.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit99.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp100.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  %.val39.i.i = load i64, ptr %i.s, align 8, !noalias !3725 ; 2 uses
  %i.ar = icmp eq i64 %.val39.i.i, 0
  br i1 %i.ar, label %.body.i, label %bb.b

bb.b:                                             ; preds = %.body.i.i
  %.val40.i.i = load ptr, ptr %i.ab, align 8, !noalias !3725, !nonnull !12, !noundef !12
  %i.as = mul nuw i64 %.val39.i.i, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %.body.i

.loopexit.i.i:                                    ; preds = %bb.bq
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit82.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.ay, %.noexc33.i.i.i, %bb.au, %.noexc29.i.i.i, %bb.aq, %.noexc25.i.i.i, %bb.y, %bb.x
  %lpad.loopexit85.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %._crit_edge.i.i.i.us.i.i.i.i
  %lpad.loopexit87.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.t
  %lpad.loopexit90.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.ck, %bb.bu, %"_ZN4core3ptr152drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$$GT$17h9c1ceaacff00eb58E.exit.sink.split.i.i.i", %bb.ak
  %lpad.loopexit93.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.l, %bb.g, %_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i
  %lpad.loopexit99.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %bb.cz, %bb.cx, %bb.cw, %bb.cu, %.noexc62.i.i, %bb.ct, %bb.cr, %.thread76.i.i, %bb.co, %bb.bm, %.noexc40.i.i.i
  %lpad.loopexit.split-lp100.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.c:                                             ; preds = %_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3725
  store ptr %i.aq, ptr %i.r, align 8, !noalias !3725
  %i.at = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcef9c5606d2f7459E(ptr nonnull %i.aq)
  %i.au = icmp eq i8 %i.at, 35
  br i1 %i.au, label %bb.g, label %bb.h, !prof !23

bb.e:                                             ; preds = %bb.i, %bb.c
  %i.av = load i64, ptr %i.aa, align 8, !noalias !3725, !noundef !12
  %.not81209.not.i.i = icmp eq i64 %i.av, 0
  br i1 %.not81209.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #36
          to label %.body.i.i unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3725
  store ptr %i.r, ptr %i.p, align 8, !noalias !3725
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E", ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !3725
  store ptr @72, ptr %i.q, align 8, !noalias !3725
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %i.ax, align 8, !noalias !3725
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.ay, align 8, !noalias !3725
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.p, ptr %i.az, align 8, !noalias !3725
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 1, ptr %i.ba, align 8, !noalias !3725
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #35
          to label %bb.j unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3725
  br label %bb.e

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.cm
  %.sroa.028.0210.i.i = phi i64 [ %i.jt, %bb.cm ], [ 1, %bb.e ] ; 3 uses
  %i.bc = load ptr, ptr %i.ab, align 8, !noalias !3725, !nonnull !12
  %i.bd = getelementptr [12 x i8], ptr %i.bc, i64 %.sroa.028.0210.i.i
  %i.be = getelementptr i8, ptr %i.bd, i64 -8
  %i.bf = load i64, ptr %i.be, align 1, !noundef !12 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %bb.w, label %bb.ck

._crit_edge.i.i:                                  ; preds = %bb.cm, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !3727)
  call void @llvm.experimental.noalias.scope.decl(metadata !3728)
  %i.bh = load i32, ptr %i.z, align 8, !range !28, !alias.scope !3729, !noalias !3730, !noundef !12
  store i32 1000000000, ptr %i.z, align 8, !alias.scope !3729, !noalias !3730
  %.not.i.i.i = icmp eq i32 %i.bh, 1000000000
  br i1 %.not.i.i.i, label %_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i.backedge, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bi = invoke { i64, i32 } @_ZN5tokio4time7instant7Instant3now17hb8eb4bd65e3ef4afE()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ; 2 uses

.noexc.i.i:                                       ; preds = %bb.l
  %i.bj = extractvalue { i64, i32 } %i.bi, 0      ; 6 uses
  %i.bk = extractvalue { i64, i32 } %i.bi, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3731)
  br i1 %i.aj, label %_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i.backedge, label %bb.m

_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i.backedge: ; preds = %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.i.i.i.i", %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.us.i.i.i.i", %.noexc.i.i, %._crit_edge.i.i
  br label %_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i

bb.m:                                             ; preds = %.noexc.i.i
  %i.bl = load i8, ptr %i.ah, align 4, !range !31, !alias.scope !3732, !noalias !3733
  %.fr18.i.i.i.i = freeze i8 %i.bl
  %i.bm = trunc i8 %.fr18.i.i.i.i to i1
  %.promoted17.i.i.i.i = load i64, ptr %i.y, align 16, !alias.scope !3732, !noalias !3733 ; 2 uses
  br i1 %i.bm, label %.split.us.i.i.i.i, label %.split.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.m, %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.us.i.i.i.i"
  %i.bn = phi i64 [ %i.cd, %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.us.i.i.i.i" ], [ %.promoted17.i.i.i.i, %bb.m ] ; 7 uses
  %i.bo = phi i32 [ %i.ce, %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.us.i.i.i.i" ], [ 1000000000, %bb.m ] ; 7 uses
  %.sroa.06.0.us.i.i.i.i = phi i64 [ %i.cf, %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.us.i.i.i.i" ], [ 0, %bb.m ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.06.0.us.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3734)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !range !28, !alias.scope !3735, !noalias !3736, !noundef !12 ; 4 uses
  %.not.i.us.i.i.i.i = icmp eq i32 %i.br, 1000000000
  br i1 %.not.i.us.i.i.i.i, label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.us.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %.split.us.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3737)
  call void @llvm.experimental.noalias.scope.decl(metadata !3738)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !3739, !noalias !3736 ; 3 uses
  store i32 1000000000, ptr %i.bq, align 8, !alias.scope !3739, !noalias !3736
  %i.bu = icmp eq i64 %i.bj, %i.bt
  br i1 %i.bu, label %.split.i.i.i.us.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = icmp slt i64 %i.bj, %i.bt
  br i1 %i.bv, label %._crit_edge.i.i.i.us.i.i.i.i, label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.us.i.i.i.i"

.split.i.i.i.us.i.i.i.i:                          ; preds = %bb.n
  %i.bw = icmp samesign ult i32 %i.bk, %i.br
  br i1 %i.bw, label %._crit_edge.i.i.i.us.i.i.i.i, label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.us.i.i.i.i"

._crit_edge.i.i.i.us.i.i.i.i:                     ; preds = %.split.i.i.i.us.i.i.i.i, %bb.o
  store i32 %i.br, ptr %i.bq, align 8, !alias.scope !3739, !noalias !3736
  %i.bx = invoke { i64, i32 } @"_ZN71_$LT$tokio..time..instant..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17hd2d2190d5a00dde2E"(i64 noundef %i.bt, i32 noundef %i.br, i64 noundef %i.bj, i32 noundef %i.bk)
          to label %.noexc42.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ; 2 uses

.noexc42.i.i:                                     ; preds = %._crit_edge.i.i.i.us.i.i.i.i
  %i.by = extractvalue { i64, i32 } %i.bx, 0      ; 4 uses
  %i.bz = extractvalue { i64, i32 } %i.bx, 1      ; 3 uses
  %.not.i.i.i.i.us.i.i.i.i = icmp eq i32 %i.bo, 1000000000
  br i1 %.not.i.i.i.i.us.i.i.i.i, label %.sink.split.i.i.i.i.us.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc42.i.i
  %i.ca = icmp eq i64 %i.bn, %i.by
  br i1 %i.ca, label %.split.i.i.i.i.us.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = icmp ugt i64 %i.bn, %i.by
  br i1 %i.cb, label %.sink.split.i.i.i.i.us.i.i.i.i, label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.us.i.i.i.i"

.split.i.i.i.i.us.i.i.i.i:                        ; preds = %bb.p
  %i.cc = icmp samesign ugt i32 %i.bo, %i.bz
  br i1 %i.cc, label %.sink.split.i.i.i.i.us.i.i.i.i, label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.us.i.i.i.i"

.sink.split.i.i.i.i.us.i.i.i.i:                   ; preds = %.split.i.i.i.i.us.i.i.i.i, %bb.q, %.noexc42.i.i
  store i64 %i.by, ptr %i.y, align 16, !alias.scope !3740, !noalias !3741
  store i32 %i.bz, ptr %i.z, align 8, !alias.scope !3740, !noalias !3741
  br label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.us.i.i.i.i"

"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.us.i.i.i.i": ; preds = %.sink.split.i.i.i.i.us.i.i.i.i, %.split.i.i.i.i.us.i.i.i.i, %bb.q, %.split.i.i.i.us.i.i.i.i, %bb.o, %.split.us.i.i.i.i
  %i.cd = phi i64 [ %i.bn, %.split.us.i.i.i.i ], [ %i.bn, %bb.q ], [ %i.by, %.sink.split.i.i.i.i.us.i.i.i.i ], [ %i.bn, %.split.i.i.i.i.us.i.i.i.i ], [ %i.bn, %.split.i.i.i.us.i.i.i.i ], [ %i.bn, %bb.o ]
  %i.ce = phi i32 [ %i.bo, %.split.us.i.i.i.i ], [ %i.bo, %bb.q ], [ %i.bz, %.sink.split.i.i.i.i.us.i.i.i.i ], [ %i.bo, %.split.i.i.i.i.us.i.i.i.i ], [ %i.bo, %.split.i.i.i.us.i.i.i.i ], [ %i.bo, %bb.o ]
  %i.cf = add nuw i64 %.sroa.06.0.us.i.i.i.i, 1   ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.w
  br i1 %i.cg, label %_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i.backedge, label %.split.us.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.m, %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.i.i.i.i"
  %i.ch = phi i64 [ %i.cx, %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.i.i.i.i" ], [ %.promoted17.i.i.i.i, %bb.m ] ; 6 uses
  %i.ci = phi i32 [ %i.cy, %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.i.i.i.i" ], [ 1000000000, %bb.m ] ; 6 uses
  %.sroa.06.0.i.i.i.i = phi i64 [ %i.cz, %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.i.i.i.i" ], [ 0, %bb.m ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.06.0.i.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3734)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !range !28, !alias.scope !3735, !noalias !3736, !noundef !12 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cl, 1000000000
  br i1 %.not.i.i.i.i.i, label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %.split.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3737)
  call void @llvm.experimental.noalias.scope.decl(metadata !3738)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !3739, !noalias !3736 ; 3 uses
  store i32 1000000000, ptr %i.ck, align 8, !alias.scope !3739, !noalias !3736
  %i.co = icmp eq i64 %i.bj, %i.cn
  br i1 %i.co, label %.split.i.i.i.i.i.i.i, label %bb.s

.split.i.i.i.i.i.i.i:                             ; preds = %bb.r
  %i.cp = icmp samesign ult i32 %i.bk, %i.cl
  br i1 %i.cp, label %._crit_edge.i.i.i.i.i.i.i, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = icmp slt i64 %i.bj, %i.cn
  br i1 %i.cq, label %._crit_edge.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i.i.i.i.i.i.i
  invoke fastcc void @_ZN12actix_server6accept6Accept15register_logged17h112e669266ec0dedE(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cj)
          to label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.s, %.split.i.i.i.i.i.i.i
  store i32 %i.cl, ptr %i.ck, align 8, !alias.scope !3739, !noalias !3736
  %i.cr = invoke { i64, i32 } @"_ZN71_$LT$tokio..time..instant..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17hd2d2190d5a00dde2E"(i64 noundef %i.cn, i32 noundef %i.cl, i64 noundef %i.bj, i32 noundef %i.bk)
          to label %.noexc44.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ; 2 uses

.noexc44.i.i:                                     ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.cs = extractvalue { i64, i32 } %i.cr, 0      ; 4 uses
  %i.ct = extractvalue { i64, i32 } %i.cr, 1      ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ci, 1000000000
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.noexc44.i.i
  %i.cu = icmp eq i64 %i.ch, %i.cs
  br i1 %i.cu, label %.split.i.i.i.i.i.i.i.i, label %bb.v

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.v, %.split.i.i.i.i.i.i.i.i, %.noexc44.i.i
  store i64 %i.cs, ptr %i.y, align 16, !alias.scope !3740, !noalias !3741
  store i32 %i.ct, ptr %i.z, align 8, !alias.scope !3740, !noalias !3741
  br label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.i.i.i.i"

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.u
  %i.cv = icmp samesign ugt i32 %i.ci, %i.ct
  br i1 %i.cv, label %.sink.split.i.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.i.i.i.i"

bb.v:                                             ; preds = %bb.u
  %i.cw = icmp ugt i64 %i.ch, %i.cs
  br i1 %i.cw, label %.sink.split.i.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.i.i.i.i"

"_ZN4core4iter8adapters6filter11filter_fold28_$u7b$$u7b$closure$u7d$$u7d$17had8a594f7fca7bf7E.exit.i.i.i.i": ; preds = %bb.v, %.split.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i, %bb.t, %.split.i.i.i.i
  %i.cx = phi i64 [ %i.ch, %.split.i.i.i.i ], [ %i.ch, %bb.v ], [ %i.cs, %.sink.split.i.i.i.i.i.i.i.i ], [ %i.ch, %.split.i.i.i.i.i.i.i.i ], [ %i.ch, %bb.t ]
  %i.cy = phi i32 [ %i.ci, %.split.i.i.i.i ], [ %i.ci, %bb.v ], [ %i.ct, %.sink.split.i.i.i.i.i.i.i.i ], [ %i.ci, %.split.i.i.i.i.i.i.i.i ], [ %i.ci, %bb.t ]
  %i.cz = add nuw i64 %.sroa.06.0.i.i.i.i, 1      ; 2 uses
  %i.da = icmp eq i64 %i.cz, %i.w
  br i1 %i.da, label %_ZN12actix_server6accept6Accept15process_timeout17h852042c4e53db8e8E.exit.i.i.backedge, label %.split.i.i.i.i

bb.w:                                             ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3742)
  call void @llvm.experimental.noalias.scope.decl(metadata !3743)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3725
  br label %_ZN12actix_server6accept6Accept14deregister_all17hbe0d3630ea3672a1E.exit.i.i.i

_ZN12actix_server6accept6Accept14deregister_all17hbe0d3630ea3672a1E.exit.i.i.i: ; preds = %_ZN12actix_server6accept6Accept14deregister_all17hbe0d3630ea3672a1E.exit.i.i.i.backedge, %bb.w
  %.val21.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !3744, !noalias !3745, !nonnull !12, !noundef !12 ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.val21.i.i.i, i64 24 ; 15 uses
  %i.dc = cmpxchg ptr %i.db, i32 0, i32 1 acquire monotonic, align 4, !noalias !3746
  %i.dd = extractvalue { i32, i1 } %i.dc, 1
  br i1 %i.dd, label %.noexc46.i.i, label %bb.x, !prof !23

bb.x:                                             ; preds = %_ZN12actix_server6accept6Accept14deregister_all17hbe0d3630ea3672a1E.exit.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.db)
          to label %.noexc46.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc46.i.i:                                     ; preds = %bb.x, %_ZN12actix_server6accept6Accept14deregister_all17hbe0d3630ea3672a1E.exit.i.i.i
  %i.de = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3747
  %i.df = and i64 %i.de, 9223372036854775807
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h4cd46750e0c3099aE.exit.i.i.i.i", label %bb.y, !prof !23

bb.y:                                             ; preds = %.noexc46.i.i
  %i.dh = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc47.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc47.i.i:                                     ; preds = %bb.y
  %i.di = xor i1 %i.dh, true
  %i.dj = zext i1 %i.di to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h4cd46750e0c3099aE.exit.i.i.i.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h4cd46750e0c3099aE.exit.i.i.i.i": ; preds = %.noexc47.i.i, %.noexc46.i.i
  %.sroa.01.0.i.i.i.i.i.i = phi i8 [ %i.dj, %.noexc47.i.i ], [ 0, %.noexc46.i.i ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val21.i.i.i, i64 28 ; 7 uses
  %i.dl = load atomic i8, ptr %i.dk monotonic, align 1, !noalias !3746
  %.not.i.i.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i, label %_ZN12actix_server11waker_queue10WakerQueue5guard17h46048e21e0088d06E.exit.i.i.i, label %bb.z, !prof !23
end_hunk_0
begin_hunk_1_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17he4b50ab3746223baE:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %bb.br, %.noexc59.i.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.id, %.noexc59.i.i ], [ %i.u, %bb.br ] ; 2 uses
  invoke fastcc void @_ZN12actix_server6accept6Accept15register_logged17h112e669266ec0dedE(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.0.07.i.i.i.i)
          to label %.noexc59.i.i unwind label %.loopexit.split-lp.loopexit.i.i

.noexc59.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 32 ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.ai
  br i1 %i.ie, label %_ZN12actix_server6accept6Accept14deregister_all17hbe0d3630ea3672a1E.exit.sink.split.i.i.i, label %.lr.ph.i.i.i.i

.preheader.i43.i.i.i:                             ; preds = %bb.az, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9d04cb2487a6922bE.exit.i.i46.i.i.i"
  %.sroa.06.0.i.i44.i.i.i = phi i64 [ %i.ii, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9d04cb2487a6922bE.exit.i.i46.i.i.i" ], [ 0, %bb.az ] ; 2 uses
  %i.if = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.06.0.i.i44.i.i.i ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 8, !range !28, !alias.scope !3787, !noalias !3788, !noundef !12
  store i32 1000000000, ptr %i.ig, align 8, !alias.scope !3787, !noalias !3788
  %.not.i.i.i.i.i45.i.i.i = icmp eq i32 %i.ih, 1000000000
  br i1 %.not.i.i.i.i.i45.i.i.i, label %bb.bs, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9d04cb2487a6922bE.exit.i.i46.i.i.i"

bb.bs:                                            ; preds = %.preheader.i43.i.i.i
  invoke fastcc void @_ZN12actix_server6accept6Accept17deregister_logged17h4ee57a64183d6537E(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.if)
          to label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9d04cb2487a6922bE.exit.i.i46.i.i.i" unwind label %.loopexit.i.i.i

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9d04cb2487a6922bE.exit.i.i46.i.i.i": ; preds = %bb.bs, %.preheader.i43.i.i.i
  %i.ii = add nuw i64 %.sroa.06.0.i.i44.i.i.i, 1  ; 2 uses
  %i.ij = icmp eq i64 %i.ii, %i.w
  br i1 %i.ij, label %_ZN12actix_server6accept6Accept14deregister_all17hbe0d3630ea3672a1E.exit48.i.i.i, label %.preheader.i43.i.i.i

_ZN12actix_server6accept6Accept14deregister_all17hbe0d3630ea3672a1E.exit48.i.i.i: ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9d04cb2487a6922bE.exit.i.i46.i.i.i", %bb.az
  br i1 %i.dx, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i49.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN12actix_server6accept6Accept14deregister_all17hbe0d3630ea3672a1E.exit48.i.i.i
  %i.ik = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3773
  %i.il = and i64 %i.ik, 9223372036854775807
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i49.i.i.i, label %bb.bu, !prof !23

bb.bu:                                            ; preds = %bb.bt
  %i.in = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc60.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc60.i.i:                                     ; preds = %bb.bu
  br i1 %i.in, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i49.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %.noexc60.i.i
  store atomic i8 1, ptr %i.dk monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i49.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i49.i.i.i: ; preds = %bb.bv, %.noexc60.i.i, %bb.bt, %_ZN12actix_server6accept6Accept14deregister_all17hbe0d3630ea3672a1E.exit48.i.i.i
  %i.io = atomicrmw xchg ptr %i.db, i32 0 release, align 4
  %i.ip = icmp eq i32 %i.io, 2
  br i1 %i.ip, label %"_ZN4core3ptr152drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$$GT$17h9c1ceaacff00eb58E.exit.sink.split.i.i.i", label %.thread.i.i, !prof !18

.thread.i.i:                                      ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i49.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3725
  br label %.loopexit98.i.i

"_ZN4core3ptr152drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$$GT$17h9c1ceaacff00eb58E.exit39.i.i.i": ; preds = %bb.be, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i36.i.i.i
  %i.iq = load i64, ptr %i.ad, align 8, !noalias !3773, !noundef !12 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3789)
  %i.ir = icmp ult i64 %i.iq, 128
  br i1 %i.ir, label %bb.cd, label %bb.bw

bb.bw:                                            ; preds = %"_ZN4core3ptr152drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$$GT$17h9c1ceaacff00eb58E.exit39.i.i.i"
  %i.is = icmp ult i64 %i.iq, 256
  br i1 %i.is, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.it = icmp ult i64 %i.iq, 384
  br i1 %i.it, label %bb.ca, label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.iu = add nsw i64 %i.iq, -128
  br label %bb.cd

bb.bz:                                            ; preds = %bb.bx
  %i.iv = icmp ult i64 %i.iq, 512
  br i1 %i.iv, label %bb.cc, label %bb.cb, !prof !23

bb.ca:                                            ; preds = %bb.bx
  %i.iw = add nsw i64 %i.iq, -256
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3790
  store ptr @36, ptr %i.c, align 8, !noalias !3790
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.ix, align 8, !noalias !3790
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.iy, align 8, !noalias !3790
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.iz, align 8, !noalias !3790
  %i.ja = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.ja, align 8, !noalias !3790
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #35
          to label %.noexc53.i.i.i unwind label %.loopexit.split-lp99.i.i.i

.noexc53.i.i.i:                                   ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %bb.bz
  %i.jb = add nsw i64 %i.iq, -384
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.ca, %bb.by, %"_ZN4core3ptr152drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$$GT$17h9c1ceaacff00eb58E.exit39.i.i.i"
  %.sroa.5.0.i.i51.i.i.i = phi i64 [ %i.jb, %bb.cc ], [ %i.iu, %bb.by ], [ %i.iw, %bb.ca ], [ %i.iq, %"_ZN4core3ptr152drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$$GT$17h9c1ceaacff00eb58E.exit39.i.i.i" ]
  %.sroa.0.0.i.i52.i.i.i = phi i64 [ 3, %bb.cc ], [ 1, %bb.by ], [ 2, %bb.ca ], [ 0, %"_ZN4core3ptr152drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$$GT$17h9c1ceaacff00eb58E.exit39.i.i.i" ]
  %i.jc = zext nneg i64 %.sroa.5.0.i.i51.i.i.i to i128
  %i.jd = shl nuw i128 1, %i.jc
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.0.0.i.i52.i.i.i ; 2 uses
  %i.jf = load i128, ptr %i.je, align 16, !alias.scope !3791, !noalias !3745, !noundef !12
  %i.jg = or i128 %i.jf, %i.jd
  store i128 %i.jg, ptr %i.je, align 16, !alias.scope !3791, !noalias !3745
  call void @llvm.experimental.noalias.scope.decl(metadata !3792)
  %i.jh = load i64, ptr %i.af, align 8, !alias.scope !3793, !noalias !3794, !noundef !12 ; 3 uses
  %i.ji = load i64, ptr %i.ae, align 8, !range !24, !alias.scope !3793, !noalias !3794, !noundef !12
  %i.jj = icmp eq i64 %i.jh, %i.ji
  br i1 %i.jj, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd9c774e209929884E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @41)
          to label %bb.ch unwind label %bb.cf, !noalias !3795

bb.cf:                                            ; preds = %bb.ce
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$actix_server..worker..WorkerHandleAccept$GT$17h402f06db83e3eeddE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.g) #36
          to label %.body.i.i unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3796
  unreachable

bb.ch:                                            ; preds = %bb.ce, %bb.cd
  %i.jm = load ptr, ptr %i.ag, align 16, !alias.scope !3793, !noalias !3794, !nonnull !12, !noundef !12
  %i.jn = getelementptr inbounds nuw [32 x i8], ptr %i.jm, i64 %i.jh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jn, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.jo = add i64 %i.jh, 1
  store i64 %i.jo, ptr %i.af, align 8, !alias.scope !3793, !noalias !3794
  %i.jp = load i8, ptr %i.ah, align 4, !range !31, !alias.scope !3744, !noalias !3745, !noundef !12
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %_ZN12actix_server6accept6Accept14deregister_all17hbe0d3630ea3672a1E.exit.i.i.i.backedge, label %_ZN12actix_server6accept6Accept14deregister_all17hbe0d3630ea3672a1E.exit.sink.split.i.i.i

_ZN12actix_server6accept6Accept14deregister_all17hbe0d3630ea3672a1E.exit.i.i.i.backedge: ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h9d04cb2487a6922bE.exit.i.i.i.i.i", %bb.ch, %"_ZN4core3ptr152drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$$GT$17h9c1ceaacff00eb58E.exit35.i.i.i", %bb.bp, %"_ZN4core3ptr152drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$$GT$17h9c1ceaacff00eb58E.exit31.i.i.i", %bb.bn, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17haff11675b08b1ae8E.exit.i.i.i.i._crit_edge", %bb.bl
  br label %_ZN12actix_server6accept6Accept14deregister_all17hbe0d3630ea3672a1E.exit.i.i.i

.loopexit98.i.i.i:                                ; preds = %bb.be, %bb.bc
  %lpad.loopexit100.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp99.i.i.i:                       ; preds = %bb.cb
  %lpad.loopexit.split-lp101.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ci:                                            ; preds = %.loopexit.split-lp99.i.i.i, %.loopexit98.i.i.i
  %lpad.phi102.i.i.i = phi { ptr, i32 } [ %lpad.loopexit100.i.i.i, %.loopexit98.i.i.i ], [ %lpad.loopexit.split-lp101.i.i.i, %.loopexit.split-lp99.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$actix_server..worker..WorkerHandleAccept$GT$17h402f06db83e3eeddE"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #36
          to label %.body.i.i unwind label %bb.cj

bb.cj:                                            ; preds = %.loopexit.split-lp.i.i.i, %bb.ci
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

.loopexit.i.i.i:                                  ; preds = %bb.bs
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.loopexit.i.i:                ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h69fde17375d1f66dE.exit.i.i.i.i"
  %lpad.loopexit96.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.loopexit.split-lp.i.i:       ; preds = %bb.ah
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.i, %.loopexit.split-lp.i.loopexit.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit96.i.i, %.loopexit.split-lp.i.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr152drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$$GT$17h9c1ceaacff00eb58E"(ptr nonnull %i.db, i8 %.sroa.01.0.i.i.i.i.i.i) #36
          to label %.body.i.i unwind label %bb.cj

bb.ck:                                            ; preds = %.lr.ph.i.i
  invoke fastcc void @_ZN12actix_server6accept6Accept6accept17h552bffcea8f06f70E(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.t, ptr noalias noundef nonnull align 8 %i.u, i64 noundef %i.w, i64 noundef %i.bf)
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

bb.cl:                                            ; preds = %"_ZN4core3ptr152drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$$GT$17h9c1ceaacff00eb58E.exit.sink.split.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3725
  br i1 %.not81.ph.i.i.i, label %.loopexit98.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %.thread74.i.i
  %i.js = load i64, ptr %i.aa, align 8, !noalias !3725, !noundef !12
  %.not81.i.i = icmp ult i64 %.sroa.028.0210.i.i, %i.js
  %i.jt = add nuw i64 %.sroa.028.0210.i.i, 1
  br i1 %.not81.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.loopexit98.i.i:                                  ; preds = %bb.cl, %.thread.i.i
  %i.ju = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8, !noalias !3725
  %i.jv = icmp ult i64 %i.ju, 3
  br i1 %i.jv, label %bb.cn, label %.thread79.i.i

bb.cn:                                            ; preds = %.loopexit98.i.i
  %i.jw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12actix_server6accept6Accept9poll_with10__CALLSITE17h7d5e8f6de100413bE, i64 16) monotonic, align 8, !noalias !3725 ; 3 uses
  switch i8 %i.jw, label %bb.co [
    i8 0, label %.thread79.i.i
    i8 1, label %.thread76.i.i
    i8 2, label %.thread76.i.i
  ], !prof !15

bb.co:                                            ; preds = %bb.cn
  %i.jx = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @_ZN12actix_server6accept6Accept9poll_with10__CALLSITE17h7d5e8f6de100413bE)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ; 2 uses

bb.cp:                                            ; preds = %bb.co
  %i.jy = icmp eq i8 %i.jx, 0
  br i1 %i.jy, label %.thread79.i.i, label %.thread76.i.i

.thread76.i.i:                                    ; preds = %bb.cn, %bb.cp, %bb.cn
  %.sroa.011.078.i.i = phi i8 [ %i.jx, %bb.cp ], [ %i.jw, %bb.cn ], [ %i.jw, %bb.cn ]
  %i.jz = load ptr, ptr @_ZN12actix_server6accept6Accept9poll_with10__CALLSITE17h7d5e8f6de100413bE, align 8, !noalias !3725, !nonnull !12, !align !13, !noundef !12
  %i.ka = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jz, i8 noundef %.sroa.011.078.i.i)
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

bb.cq:                                            ; preds = %.thread76.i.i
  br i1 %i.ka, label %bb.cr, label %.thread79.i.i

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3725
  %i.kb = load ptr, ptr @_ZN12actix_server6accept6Accept9poll_with10__CALLSITE17h7d5e8f6de100413bE, align 8, !noalias !3725, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3725
  store ptr @75, ptr %i.m, align 8, !noalias !3725
  %i.kd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.kd, align 8, !noalias !3725
  %i.ke = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.ke, align 8, !noalias !3725
  %i.kf = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.kf, align 8, !noalias !3725
  %i.kg = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.kg, align 8, !noalias !3725
  store ptr %i.m, ptr %i.n, align 8, !noalias !3725
  %i.kh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @51, ptr %i.kh, align 8, !noalias !3725
  store i64 1, ptr %i.o, align 8, !noalias !3725
  %.sroa.013.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %.sroa.013.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3725
  %.sroa.013.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 1, ptr %.sroa.013.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3725
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.kc, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3725
  invoke void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %.noexc61.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

.noexc61.i.i:                                     ; preds = %bb.cr
  %i.ki = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !3797
  %i.kj = icmp eq i8 %i.ki, 0
  br i1 %i.kj, label %bb.cs, label %bb.dd

bb.cs:                                            ; preds = %.noexc61.i.i
  %i.kk = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !3797 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, 6
  call void @llvm.assume(i1 %i.kl)
  %i.km = icmp samesign ugt i64 %i.kk, 2
  br i1 %i.km, label %bb.ct, label %bb.dd

bb.ct:                                            ; preds = %bb.cs
  %i.kn = load ptr, ptr @_ZN12actix_server6accept6Accept9poll_with10__CALLSITE17h7d5e8f6de100413bE, align 8, !noalias !3797, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kp = load ptr, ptr %i.ko, align 8, !nonnull !12, !align !14, !noundef !12
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  %i.kr = load i64, ptr %i.kq, align 8, !noundef !12
  store i64 3, ptr %i.b, align 8, !noalias !3797
  %.sroa.52.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.kp, ptr %.sroa.52.0..sroa_idx.i.i.i, align 8, !noalias !3797
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.kr, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !3797
  %i.ks = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %.noexc62.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ; 2 uses

.noexc62.i.i:                                     ; preds = %bb.ct
  %i.kt = extractvalue { ptr, ptr } %i.ks, 0      ; 2 uses
  %i.ku = extractvalue { ptr, ptr } %i.ks, 1      ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8, !invariant.load !12, !nonnull !12
  %i.kx = invoke noundef zeroext i1 %i.kw(ptr noundef align 1 %i.kt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc63.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !inline_history !3713

.noexc63.i.i:                                     ; preds = %.noexc62.i.i
  br i1 %i.kx, label %bb.cu, label %bb.dd

bb.cu:                                            ; preds = %.noexc63.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3797
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kn, ptr noundef nonnull align 1 %i.kt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ku, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %.noexc64.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

.noexc64.i.i:                                     ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3797
  br label %bb.dd

.thread79.i.i:                                    ; preds = %bb.cq, %bb.cp, %bb.cn, %.loopexit98.i.i
  %i.ky = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !3725
  %i.kz = icmp eq i8 %i.ky, 0
  br i1 %i.kz, label %bb.cv, label %bb.db

bb.cv:                                            ; preds = %.thread79.i.i
  %i.la = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !3725 ; 2 uses
  %i.lb = icmp ult i64 %i.la, 6
  call void @llvm.assume(i1 %i.lb)
  %i.lc = icmp samesign ugt i64 %i.la, 2
  br i1 %i.lc, label %bb.cw, label %bb.db

bb.cw:                                            ; preds = %bb.cv
  %i.ld = load ptr, ptr @_ZN12actix_server6accept6Accept9poll_with10__CALLSITE17h7d5e8f6de100413bE, align 8, !noalias !3725, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lf = load ptr, ptr %i.le, align 8, !nonnull !12, !align !14, !noundef !12
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %i.lh = load i64, ptr %i.lg, align 8, !noundef !12
  store i64 3, ptr %i.l, align 8, !noalias !3725
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.lf, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !3725
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.lh, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !3725
  %i.li = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ; 2 uses

bb.cx:                                            ; preds = %bb.cw
  %i.lj = extractvalue { ptr, ptr } %i.li, 0      ; 2 uses
  %i.lk = extractvalue { ptr, ptr } %i.li, 1      ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lm = load ptr, ptr %i.ll, align 8, !invariant.load !12, !nonnull !12
  %i.ln = invoke noundef zeroext i1 %i.lm(ptr noundef align 1 %i.lj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.ln, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3725
  %i.lo = load ptr, ptr @_ZN12actix_server6accept6Accept9poll_with10__CALLSITE17h7d5e8f6de100413bE, align 8, !noalias !3725, !nonnull !12, !align !13, !noundef !12
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3725
  store ptr @75, ptr %i.i, align 8, !noalias !3725
  %i.lq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.lq, align 8, !noalias !3725
  %i.lr = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.lr, align 8, !noalias !3725
  %i.ls = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ls, align 8, !noalias !3725
  %i.lt = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %i.lt, align 8, !noalias !3725
  store ptr %i.i, ptr %i.j, align 8, !noalias !3725
  %i.lu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @51, ptr %i.lu, align 8, !noalias !3725
  store i64 1, ptr %i.k, align 8, !noalias !3725
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !3725
  %.sroa.527.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1, ptr %.sroa.527.0..sroa_idx.i.i, align 8, !noalias !3725
  %i.lv = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.lp, ptr %i.lv, align 8, !noalias !3725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !3725
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ld, ptr noundef nonnull align 1 %i.lj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lk, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3725
  br label %bb.db

bb.db:                                            ; preds = %bb.dd, %bb.da, %bb.cy, %bb.cv, %.thread79.i.i
  %.val.i.i = load i64, ptr %i.s, align 8, !noalias !3725 ; 2 uses
  %i.lw = icmp eq i64 %.val.i.i, 0
  br i1 %i.lw, label %bb.dg, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.val38.i.i = load ptr, ptr %i.ab, align 8, !noalias !3725, !nonnull !12, !noundef !12
  %i.lx = mul nuw i64 %.val.i.i, 12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38.i.i, i64 noundef %i.lx, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %bb.dg

bb.dd:                                            ; preds = %.noexc64.i.i, %.noexc63.i.i, %bb.cs, %.noexc61.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3725
  br label %bb.db

end_hunk_1
