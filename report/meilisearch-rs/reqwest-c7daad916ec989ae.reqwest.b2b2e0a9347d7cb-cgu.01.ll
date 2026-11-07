Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/reqwest-c7daad916ec989ae.reqwest.b2b2e0a9347d7cb-cgu.01?download=true
inline.NumInlined: 50
inline.NumDeleted: 4
begin_hunk_0_@_ZN3std2io19default_read_to_end16small_probe_read17h8d0c3ac52c0a52ccE:bb.a
  unreachable

.split:                                           ; preds = %bb.g
  %i.u = load i32, ptr %i.k, align 4
  %i.v = icmp eq i32 %i.u, 4
  br i1 %i.v, label %bb.k, label %bb.j

.split6:                                          ; preds = %bb.g
  %i.w = load ptr, ptr %i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i8, ptr %i.x, align 8
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %bb.k, label %bb.j

.split5:                                          ; preds = %bb.g
  %i.aa = load ptr, ptr %i.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i8, ptr %i.ab, align 8
  %i.ad = icmp eq i8 %i.ac, 35
  br i1 %i.ad, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = load i8, ptr %i.j, align 1
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split6, %.split5, %.split, %bb.i
  %i.ag = load ptr, ptr %i.g, align 8
  br label %bb.e

bb.k:                                             ; preds = %.split6, %.split5, %.split, %bb.i
  call void @"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h40f855fc2c90082cE"(ptr nonnull align 8 %i.b)
  %i.ah = call { i64, ptr } @"_ZN80_$LT$tokio_rustls..common..SyncReadAdapter$LT$T$GT$$u20$as$u20$std..io..Read$GT$4read17h4bb6e1ab3da361e9E"(ptr align 8 %0, ptr nonnull align 1 %i.c, i64 32) ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0      ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 3 uses
  store i64 %i.ai, ptr %i.b, align 8
  store ptr %i.aj, ptr %i.g, align 8
  %i.ak = trunc nuw i64 %i.ai to i1
  br i1 %i.ak, label %bb.b, label %._crit_edge

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h63e7965ea3599b16E"(ptr nonnull align 8 %i.g) #23
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp

bb.n:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17heb5fa49e8a28cc4eE(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !47 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = call { i64, ptr } @"_ZN80_$LT$tokio_rustls..common..SyncReadAdapter$LT$T$GT$$u20$as$u20$std..io..Read$GT$4read17h2fcaa8afd8b5470dE"(ptr align 8 %0, ptr nonnull align 1 %i.c, i64 32) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.l = phi ptr [ %i.f, %.lr.ph ], [ %i.aj, %bb.k ]
  invoke void @_ZN3std2io5error14repr_bitpacked11decode_repr17h28b6e1d28990a9e6E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr %i.l)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.in = phi ptr [ %i.f, %bb.a ], [ %i.aj, %bb.k ] ; 3 uses
  %i.m = ptrtoint ptr %.in to i64                 ; 2 uses
  %i.n = icmp ult ptr %.in, inttoptr (i64 33 to ptr)
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 0, i64 %i.m, i64 32, ptr nonnull align 8 @22) #22
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h74ba99e888b705ebE"(ptr align 8 %1, ptr nonnull %i.c, ptr nonnull %i.o, ptr nonnull align 8 @21)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.c, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.p = load i64, ptr %i.b, align 8
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.l, label %bb.m

bb.e:                                             ; preds = %bb.d, %bb.j
  %.sroa.3.0 = phi ptr [ %i.ag, %bb.j ], [ %.in, %bb.d ]
  %.sroa.0.0 = phi i64 [ 1, %bb.j ], [ 0, %bb.d ]
  %i.r = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.s = insertvalue { i64, ptr } %i.r, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.s

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.t = load i8, ptr %i.a, align 8
  switch i8 %i.t, label %bb.h [
    i8 0, label %.split
    i8 1, label %bb.i
    i8 2, label %.split6
    i8 3, label %.split5
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

.split:                                           ; preds = %bb.g
  %i.u = load i32, ptr %i.k, align 4
  %i.v = icmp eq i32 %i.u, 4
  br i1 %i.v, label %bb.k, label %bb.j

.split6:                                          ; preds = %bb.g
  %i.w = load ptr, ptr %i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i8, ptr %i.x, align 8
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %bb.k, label %bb.j

.split5:                                          ; preds = %bb.g
  %i.aa = load ptr, ptr %i.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i8, ptr %i.ab, align 8
  %i.ad = icmp eq i8 %i.ac, 35
  br i1 %i.ad, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = load i8, ptr %i.j, align 1
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split6, %.split5, %.split, %bb.i
  %i.ag = load ptr, ptr %i.g, align 8
  br label %bb.e

bb.k:                                             ; preds = %.split6, %.split5, %.split, %bb.i
  call void @"_ZN4core3ptr78drop_in_place$LT$core..result..Result$LT$usize$C$std..io..error..Error$GT$$GT$17h40f855fc2c90082cE"(ptr nonnull align 8 %i.b)
  %i.ah = call { i64, ptr } @"_ZN80_$LT$tokio_rustls..common..SyncReadAdapter$LT$T$GT$$u20$as$u20$std..io..Read$GT$4read17h2fcaa8afd8b5470dE"(ptr align 8 %0, ptr nonnull align 1 %i.c, i64 32) ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0      ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 3 uses
  store i64 %i.ai, ptr %i.b, align 8
  store ptr %i.aj, ptr %i.g, align 8
  %i.ak = trunc nuw i64 %i.ai to i1
  br i1 %i.ak, label %bb.b, label %._crit_edge

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h63e7965ea3599b16E"(ptr nonnull align 8 %i.g) #23
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp

bb.n:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3std2io19default_read_to_end17h23c36a91367b5ccbE(ptr align 8 %0, ptr align 8 %1, i64 %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !48 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8              ; 6 uses
  %i.g = load i64, ptr %1, align 8                ; 2 uses
  %i.h = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %3, -1025
  br i1 %i.i, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread", label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit"

"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit": ; preds = %bb.b
  %i.j = add nuw i64 %3, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %3, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %4 = icmp uge i64 %i.n, %i.j
  %cond.fr = freeze i1 %4
  %.sroa.5.0.i = select i1 %cond.fr, i64 %i.n, i64 8192
  %.sroa.010.1 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.0.i ; 2 uses
  %i.o = icmp eq i64 %3, 0
  br i1 %i.o, label %bb.c, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread"

bb.c:                                             ; preds = %bb.a, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit"
  %.sroa.010.0 = phi i64 [ %.sroa.010.1, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit" ], [ 8192, %bb.a ] ; 2 uses
  %.sroa.019.0 = xor i1 %i.h, true                ; 2 uses
  %i.p = sub i64 %i.g, %i.f
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread"

"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread": ; preds = %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread_crit_edge", %bb.b, %bb.c, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit"
  %.pre = phi i64 [ %.pre.pre, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread_crit_edge" ], [ %i.f, %bb.c ], [ %i.f, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit" ], [ %i.f, %bb.b ]
  %.sroa.019.2 = phi i1 [ %.sroa.019.0, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread_crit_edge" ], [ %.sroa.019.0, %bb.c ], [ false, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit" ], [ false, %bb.b ]
  %.sroa.010.2 = phi i64 [ %.sroa.010.0, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread_crit_edge" ], [ %.sroa.010.0, %bb.c ], [ %.sroa.010.1, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit" ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.y = tail call { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17heb5fa49e8a28cc4eE(ptr align 8 %0, ptr nonnull align 8 %1) ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1       ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = trunc nuw i64 %i.z to i1
  br i1 %i.ac, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq ptr %i.aa, null
  br i1 %i.ad, label %.loopexit, label %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread_crit_edge"

"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread_crit_edge": ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.e, align 8
  br label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread"

bb.f:                                             ; preds = %.outer, %bb.x
  %i.ae = phi i64 [ %i.bh, %bb.x ], [ %.ph168, %.outer ] ; 2 uses
  %.sroa.025.0 = phi i32 [ %.sroa.025.1, %bb.x ], [ %.sroa.025.0.ph, %.outer ]
  %.sroa.018.3 = phi i64 [ %i.bf, %bb.x ], [ %.sroa.018.3.ph, %.outer ]
  %i.af = load i64, ptr %1, align 8               ; 3 uses
  %i.ag = icmp eq i64 %i.ae, %i.af
  %i.ah = icmp eq i64 %i.af, %i.g
  %or.cond80 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond80, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre123, %._crit_edge ], [ %i.af, %bb.f ] ; 3 uses
  %i.aj = phi i64 [ %.pre122, %._crit_edge ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.k, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.al = call { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17heb5fa49e8a28cc4eE(ptr align 8 %0, ptr nonnull align 8 %1) ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.al, 0
  %i.an = extractvalue { i64, ptr } %i.al, 1      ; 2 uses
  %i.ao = trunc nuw i64 %i.am to i1
  br i1 %i.ao, label %.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp eq ptr %i.an, null
  %.pre122 = load i64, ptr %i.e, align 8          ; 2 uses
  br i1 %i.ap, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.pre123 = load i64, ptr %1, align 8
  br label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.aq = sub i64 %.pre122, %i.f
  br label %.loopexit

bb.k:                                             ; preds = %bb.g
  %i.ar = call { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h152de923ef2d9f13E"(ptr nonnull align 8 %1, i64 %i.ai, i64 32, i64 1, i64 1)
  %i.as = extractvalue { i64, i64 } %i.ar, 0
  %.not.not = icmp eq i64 %i.as, -9223372036854775807
  br i1 %.not.not, label %._crit_edge124, label %.loopexit

._crit_edge124:                                   ; preds = %bb.k
  %.pre125 = load i64, ptr %i.e, align 8
  %.pre126 = load i64, ptr %1, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge124, %bb.g
  %i.at = phi i64 [ %.pre126, %._crit_edge124 ], [ %i.ai, %bb.g ]
  %i.au = phi i64 [ %.pre125, %._crit_edge124 ], [ %i.aj, %bb.g ] ; 2 uses
  %i.av = load ptr, ptr %i.r, align 8
  %i.aw = sub i64 %i.at, %i.au                    ; 3 uses
  %i.ax = call i64 @_ZN4core3cmp3Ord3min17h9ca688b147dbca1eE(i64 %i.aw, i64 %.sroa.010.3.ph) ; 7 uses
  %.not = icmp ugt i64 %i.ax, %i.aw
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store ptr %i.ay, ptr %i.d, align 8
  store i64 %i.ax, ptr %i.s, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.az = call i64 @_ZN4core3cmp3Ord3max17h759c8e58a8133942E(i64 0, i64 %.sroa.018.3)
  store i64 %i.az, ptr %i.u, align 8
  %i.ba = call ptr @_ZN3std2io4Read8read_buf17h1d6bf64902f61e31E(ptr align 8 %0, ptr nonnull align 8 %i.d) ; 3 uses
  store ptr %i.ba, ptr %i.c, align 8
  %.not7799 = icmp eq ptr %i.ba, null
  br i1 %.not7799, label %.split88._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %bb.l
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 0, i64 %i.ax, i64 %i.aw, ptr nonnull align 8 @23) #22
  unreachable

.lr.ph:                                           ; preds = %bb.m, %bb.r
  %i.bb = phi ptr [ %i.bv, %bb.r ], [ %i.ba, %bb.m ] ; 6 uses
  invoke void @_ZN3std2io5error14repr_bitpacked11decode_repr17h28b6e1d28990a9e6E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull %i.bb)
          to label %bb.o unwind label %bb.t

.split88._crit_edge:                              ; preds = %bb.r, %bb.q, %.split, %.split87, %.split88, %bb.m
  %i.bc = phi ptr [ null, %bb.m ], [ null, %bb.r ], [ %i.bb, %bb.q ], [ %i.bb, %.split ], [ %i.bb, %.split87 ], [ %i.bb, %.split88 ] ; 2 uses
  %i.bd = load i64, ptr %i.t, align 8             ; 5 uses
  %i.be = load i64, ptr %i.u, align 8             ; 2 uses
  %i.bf = sub nuw i64 %i.be, %i.bd                ; 2 uses
  %i.bg = load i64, ptr %i.e, align 8
  %i.bh = add i64 %i.bg, %i.bd                    ; 4 uses
  store i64 %i.bh, ptr %i.e, align 8
  %.not79 = icmp eq ptr %i.bc, null
  br i1 %.not79, label %bb.v, label %.loopexit.split.loop.exit103

bb.o:                                             ; preds = %.lr.ph
  %i.bi = load i8, ptr %i.a, align 8
  switch i8 %i.bi, label %bb.p [
    i8 0, label %.split
    i8 1, label %bb.q
    i8 2, label %.split88
    i8 3, label %.split87
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

.split:                                           ; preds = %bb.o
  %i.bj = load i32, ptr %i.x, align 4
  %i.bk = icmp eq i32 %i.bj, 4
  br i1 %i.bk, label %bb.r, label %.split88._crit_edge

.split88:                                         ; preds = %bb.o
  %i.bl = load ptr, ptr %i.v, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = icmp eq i8 %i.bn, 35
  br i1 %i.bo, label %bb.r, label %.split88._crit_edge

.split87:                                         ; preds = %bb.o
  %i.bp = load ptr, ptr %i.v, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i8, ptr %i.bq, align 8
  %i.bs = icmp eq i8 %i.br, 35
  br i1 %i.bs, label %bb.r, label %.split88._crit_edge

bb.q:                                             ; preds = %bb.o
  %i.bt = load i8, ptr %i.w, align 1
  %i.bu = icmp eq i8 %i.bt, 35
  br i1 %i.bu, label %bb.r, label %.split88._crit_edge

bb.r:                                             ; preds = %.split88, %.split87, %.split, %bb.q
  store ptr %i.bb, ptr %i.b, align 8
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h63e7965ea3599b16E"(ptr nonnull align 8 %i.b)
  %i.bv = call ptr @_ZN3std2io4Read8read_buf17h1d6bf64902f61e31E(ptr align 8 %0, ptr nonnull align 8 %i.d) ; 3 uses
  store ptr %i.bv, ptr %i.c, align 8
  %.not77 = icmp eq ptr %i.bv, null
  br i1 %.not77, label %.split88._crit_edge, label %.lr.ph

bb.s:                                             ; preds = %bb.t
  resume { ptr, i32 } %i.bw

bb.t:                                             ; preds = %.lr.ph
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h63e7965ea3599b16E"(ptr nonnull align 8 %i.c) #23
          to label %bb.s unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.v:                                             ; preds = %.split88._crit_edge
  %i.by = icmp eq i64 %i.bd, 0
  br i1 %i.by, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = sub i64 %i.bh, %i.f
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.ca = icmp ult i64 %i.bd, %i.ax
  %i.cb = add i32 %.sroa.025.0, 1
  %.sroa.025.1 = select i1 %i.ca, i32 %i.cb, i32 0 ; 3 uses
  br i1 %.sroa.019.2, label %.outer.backedge, label %bb.f

.outer.backedge:                                  ; preds = %bb.x
  %i.cc = icmp ne i64 %i.be, %i.ax
  %i.cd = icmp sgt i32 %.sroa.025.1, 1
  %or.cond9 = select i1 %i.cc, i1 %i.cd, i1 false
  %spec.select = select i1 %or.cond9, i64 -1, i64 %.sroa.010.3.ph ; 4 uses
  %i.ce = icmp uge i64 %i.ax, %spec.select
  %i.cf = icmp eq i64 %i.bd, %i.ax
  %or.cond2 = select i1 %i.ce, i1 %i.cf, i1 false
  %i.cg = shl i64 %spec.select, 1
  %.inv = icmp sgt i64 %spec.select, -1
  %.sroa.056.0 = select i1 %.inv, i64 %i.cg, i64 -1
  %.sroa.010.3.ph.be = select i1 %or.cond2, i64 %.sroa.056.0, i64 %spec.select
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread"
  %.ph168 = phi i64 [ %.pre, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread" ], [ %i.bh, %.outer.backedge ]
  %.sroa.025.0.ph = phi i32 [ 0, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread" ], [ %.sroa.025.1, %.outer.backedge ]
  %.sroa.018.3.ph = phi i64 [ 0, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread" ], [ %i.bf, %.outer.backedge ]
  %.sroa.010.3.ph = phi i64 [ %.sroa.010.2, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17hda9208a43340f0ecE.exit.thread" ], [ %.sroa.010.3.ph.be, %.outer.backedge ] ; 2 uses
  br label %bb.f

.loopexit.split.loop.exit:                        ; preds = %bb.h
  %i.ch = ptrtoint ptr %i.an to i64
  br label %.loopexit

.loopexit.split.loop.exit103:                     ; preds = %.split88._crit_edge
  %i.ci = ptrtoint ptr %i.bc to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit103, %bb.e, %bb.d, %bb.j, %bb.w
  %.sroa.8.0 = phi i64 [ %i.bz, %bb.w ], [ %i.ab, %bb.d ], [ 0, %bb.e ], [ %i.aq, %bb.j ], [ %i.ci, %.loopexit.split.loop.exit103 ], [ %i.ch, %.loopexit.split.loop.exit ], [ 163208757251, %bb.k ]
  %.sroa.0.0 = phi i64 [ 0, %bb.w ], [ 1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.j ], [ 1, %.loopexit.split.loop.exit103 ], [ 1, %.loopexit.split.loop.exit ], [ 1, %bb.k ]
  %i.cj = inttoptr i64 %.sroa.8.0 to ptr
  %i.ck = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.cl = insertvalue { i64, ptr } %i.ck, ptr %i.cj, 1
  ret { i64, ptr } %i.cl
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3std2io19default_read_to_end17h2ff2005e2dad4ec8E(ptr align 8 %0, ptr align 8 %1, i64 %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !49 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8              ; 6 uses
  %i.g = load i64, ptr %1, align 8                ; 2 uses
  %i.h = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %3, -1025
  br i1 %i.i, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread", label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit"

"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit": ; preds = %bb.b
  %i.j = add nuw i64 %3, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %3, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %4 = icmp uge i64 %i.n, %i.j
  %cond.fr = freeze i1 %4
  %.sroa.5.0.i = select i1 %cond.fr, i64 %i.n, i64 8192
  %.sroa.010.1 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.0.i ; 2 uses
  %i.o = icmp eq i64 %3, 0
  br i1 %i.o, label %bb.c, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread"

bb.c:                                             ; preds = %bb.a, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit"
  %.sroa.010.0 = phi i64 [ %.sroa.010.1, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit" ], [ 8192, %bb.a ] ; 2 uses
  %.sroa.019.0 = xor i1 %i.h, true                ; 2 uses
  %i.p = sub i64 %i.g, %i.f
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread"

"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread": ; preds = %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread_crit_edge", %bb.b, %bb.c, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit"
  %.pre = phi i64 [ %.pre.pre, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread_crit_edge" ], [ %i.f, %bb.c ], [ %i.f, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit" ], [ %i.f, %bb.b ]
  %.sroa.019.2 = phi i1 [ %.sroa.019.0, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread_crit_edge" ], [ %.sroa.019.0, %bb.c ], [ false, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit" ], [ false, %bb.b ]
  %.sroa.010.2 = phi i64 [ %.sroa.010.0, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread_crit_edge" ], [ %.sroa.010.0, %bb.c ], [ %.sroa.010.1, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit" ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.y = tail call { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17h8bb5003498796e5dE(ptr align 8 %0, ptr nonnull align 8 %1) ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1       ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = trunc nuw i64 %i.z to i1
  br i1 %i.ac, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq ptr %i.aa, null
  br i1 %i.ad, label %.loopexit, label %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread_crit_edge"

"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread_crit_edge": ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.e, align 8
  br label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread"

bb.f:                                             ; preds = %.outer, %bb.x
  %i.ae = phi i64 [ %i.bh, %bb.x ], [ %.ph168, %.outer ] ; 2 uses
  %.sroa.025.0 = phi i32 [ %.sroa.025.1, %bb.x ], [ %.sroa.025.0.ph, %.outer ]
  %.sroa.018.3 = phi i64 [ %i.bf, %bb.x ], [ %.sroa.018.3.ph, %.outer ]
  %i.af = load i64, ptr %1, align 8               ; 3 uses
  %i.ag = icmp eq i64 %i.ae, %i.af
  %i.ah = icmp eq i64 %i.af, %i.g
  %or.cond80 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond80, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre123, %._crit_edge ], [ %i.af, %bb.f ] ; 3 uses
  %i.aj = phi i64 [ %.pre122, %._crit_edge ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.k, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.al = call { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17h8bb5003498796e5dE(ptr align 8 %0, ptr nonnull align 8 %1) ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.al, 0
  %i.an = extractvalue { i64, ptr } %i.al, 1      ; 2 uses
  %i.ao = trunc nuw i64 %i.am to i1
  br i1 %i.ao, label %.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp eq ptr %i.an, null
  %.pre122 = load i64, ptr %i.e, align 8          ; 2 uses
  br i1 %i.ap, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.pre123 = load i64, ptr %1, align 8
  br label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.aq = sub i64 %.pre122, %i.f
  br label %.loopexit

bb.k:                                             ; preds = %bb.g
  %i.ar = call { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h152de923ef2d9f13E"(ptr nonnull align 8 %1, i64 %i.ai, i64 32, i64 1, i64 1)
  %i.as = extractvalue { i64, i64 } %i.ar, 0
  %.not.not = icmp eq i64 %i.as, -9223372036854775807
  br i1 %.not.not, label %._crit_edge124, label %.loopexit

._crit_edge124:                                   ; preds = %bb.k
  %.pre125 = load i64, ptr %i.e, align 8
  %.pre126 = load i64, ptr %1, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge124, %bb.g
  %i.at = phi i64 [ %.pre126, %._crit_edge124 ], [ %i.ai, %bb.g ]
  %i.au = phi i64 [ %.pre125, %._crit_edge124 ], [ %i.aj, %bb.g ] ; 2 uses
  %i.av = load ptr, ptr %i.r, align 8
  %i.aw = sub i64 %i.at, %i.au                    ; 3 uses
  %i.ax = call i64 @_ZN4core3cmp3Ord3min17h9ca688b147dbca1eE(i64 %i.aw, i64 %.sroa.010.3.ph) ; 7 uses
  %.not = icmp ugt i64 %i.ax, %i.aw
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store ptr %i.ay, ptr %i.d, align 8
  store i64 %i.ax, ptr %i.s, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.az = call i64 @_ZN4core3cmp3Ord3max17h759c8e58a8133942E(i64 0, i64 %.sroa.018.3)
  store i64 %i.az, ptr %i.u, align 8
  %i.ba = call ptr @_ZN3std2io4Read8read_buf17hae90214fa237a6cfE(ptr align 8 %0, ptr nonnull align 8 %i.d) ; 3 uses
  store ptr %i.ba, ptr %i.c, align 8
  %.not7799 = icmp eq ptr %i.ba, null
  br i1 %.not7799, label %.split88._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %bb.l
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 0, i64 %i.ax, i64 %i.aw, ptr nonnull align 8 @23) #22
  unreachable

.lr.ph:                                           ; preds = %bb.m, %bb.r
  %i.bb = phi ptr [ %i.bv, %bb.r ], [ %i.ba, %bb.m ] ; 6 uses
  invoke void @_ZN3std2io5error14repr_bitpacked11decode_repr17h28b6e1d28990a9e6E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull %i.bb)
          to label %bb.o unwind label %bb.t

.split88._crit_edge:                              ; preds = %bb.r, %bb.q, %.split, %.split87, %.split88, %bb.m
  %i.bc = phi ptr [ null, %bb.m ], [ null, %bb.r ], [ %i.bb, %bb.q ], [ %i.bb, %.split ], [ %i.bb, %.split87 ], [ %i.bb, %.split88 ] ; 2 uses
  %i.bd = load i64, ptr %i.t, align 8             ; 5 uses
  %i.be = load i64, ptr %i.u, align 8             ; 2 uses
  %i.bf = sub nuw i64 %i.be, %i.bd                ; 2 uses
  %i.bg = load i64, ptr %i.e, align 8
  %i.bh = add i64 %i.bg, %i.bd                    ; 4 uses
  store i64 %i.bh, ptr %i.e, align 8
  %.not79 = icmp eq ptr %i.bc, null
  br i1 %.not79, label %bb.v, label %.loopexit.split.loop.exit103

bb.o:                                             ; preds = %.lr.ph
  %i.bi = load i8, ptr %i.a, align 8
  switch i8 %i.bi, label %bb.p [
    i8 0, label %.split
    i8 1, label %bb.q
    i8 2, label %.split88
    i8 3, label %.split87
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

.split:                                           ; preds = %bb.o
  %i.bj = load i32, ptr %i.x, align 4
  %i.bk = icmp eq i32 %i.bj, 4
  br i1 %i.bk, label %bb.r, label %.split88._crit_edge

.split88:                                         ; preds = %bb.o
  %i.bl = load ptr, ptr %i.v, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = icmp eq i8 %i.bn, 35
  br i1 %i.bo, label %bb.r, label %.split88._crit_edge

.split87:                                         ; preds = %bb.o
  %i.bp = load ptr, ptr %i.v, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i8, ptr %i.bq, align 8
  %i.bs = icmp eq i8 %i.br, 35
  br i1 %i.bs, label %bb.r, label %.split88._crit_edge

bb.q:                                             ; preds = %bb.o
  %i.bt = load i8, ptr %i.w, align 1
  %i.bu = icmp eq i8 %i.bt, 35
  br i1 %i.bu, label %bb.r, label %.split88._crit_edge

bb.r:                                             ; preds = %.split88, %.split87, %.split, %bb.q
  store ptr %i.bb, ptr %i.b, align 8
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h63e7965ea3599b16E"(ptr nonnull align 8 %i.b)
  %i.bv = call ptr @_ZN3std2io4Read8read_buf17hae90214fa237a6cfE(ptr align 8 %0, ptr nonnull align 8 %i.d) ; 3 uses
  store ptr %i.bv, ptr %i.c, align 8
  %.not77 = icmp eq ptr %i.bv, null
  br i1 %.not77, label %.split88._crit_edge, label %.lr.ph

bb.s:                                             ; preds = %bb.t
  resume { ptr, i32 } %i.bw

bb.t:                                             ; preds = %.lr.ph
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h63e7965ea3599b16E"(ptr nonnull align 8 %i.c) #23
          to label %bb.s unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.v:                                             ; preds = %.split88._crit_edge
  %i.by = icmp eq i64 %i.bd, 0
  br i1 %i.by, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = sub i64 %i.bh, %i.f
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.ca = icmp ult i64 %i.bd, %i.ax
  %i.cb = add i32 %.sroa.025.0, 1
  %.sroa.025.1 = select i1 %i.ca, i32 %i.cb, i32 0 ; 3 uses
  br i1 %.sroa.019.2, label %.outer.backedge, label %bb.f

.outer.backedge:                                  ; preds = %bb.x
  %i.cc = icmp ne i64 %i.be, %i.ax
  %i.cd = icmp sgt i32 %.sroa.025.1, 1
  %or.cond9 = select i1 %i.cc, i1 %i.cd, i1 false
  %spec.select = select i1 %or.cond9, i64 -1, i64 %.sroa.010.3.ph ; 4 uses
  %i.ce = icmp uge i64 %i.ax, %spec.select
  %i.cf = icmp eq i64 %i.bd, %i.ax
  %or.cond2 = select i1 %i.ce, i1 %i.cf, i1 false
  %i.cg = shl i64 %spec.select, 1
  %.inv = icmp sgt i64 %spec.select, -1
  %.sroa.056.0 = select i1 %.inv, i64 %i.cg, i64 -1
  %.sroa.010.3.ph.be = select i1 %or.cond2, i64 %.sroa.056.0, i64 %spec.select
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread"
  %.ph168 = phi i64 [ %.pre, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread" ], [ %i.bh, %.outer.backedge ]
  %.sroa.025.0.ph = phi i32 [ 0, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread" ], [ %.sroa.025.1, %.outer.backedge ]
  %.sroa.018.3.ph = phi i64 [ 0, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread" ], [ %i.bf, %.outer.backedge ]
  %.sroa.010.3.ph = phi i64 [ %.sroa.010.2, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h96e7e47424771f54E.exit.thread" ], [ %.sroa.010.3.ph.be, %.outer.backedge ] ; 2 uses
  br label %bb.f

.loopexit.split.loop.exit:                        ; preds = %bb.h
  %i.ch = ptrtoint ptr %i.an to i64
  br label %.loopexit

.loopexit.split.loop.exit103:                     ; preds = %.split88._crit_edge
  %i.ci = ptrtoint ptr %i.bc to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit103, %bb.e, %bb.d, %bb.j, %bb.w
  %.sroa.8.0 = phi i64 [ %i.bz, %bb.w ], [ %i.ab, %bb.d ], [ 0, %bb.e ], [ %i.aq, %bb.j ], [ %i.ci, %.loopexit.split.loop.exit103 ], [ %i.ch, %.loopexit.split.loop.exit ], [ 163208757251, %bb.k ]
  %.sroa.0.0 = phi i64 [ 0, %bb.w ], [ 1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.j ], [ 1, %.loopexit.split.loop.exit103 ], [ 1, %.loopexit.split.loop.exit ], [ 1, %bb.k ]
  %i.cj = inttoptr i64 %.sroa.8.0 to ptr
  %i.ck = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.cl = insertvalue { i64, ptr } %i.ck, ptr %i.cj, 1
  ret { i64, ptr } %i.cl
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3std2io19default_read_to_end17h4d88deed6ee53a85E(ptr align 8 %0, ptr align 8 %1, i64 %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !50 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8              ; 6 uses
  %i.g = load i64, ptr %1, align 8                ; 2 uses
  %i.h = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %3, -1025
  br i1 %i.i, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit.thread", label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit"

"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit": ; preds = %bb.b
  %i.j = add nuw i64 %3, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %3, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %4 = icmp uge i64 %i.n, %i.j
  %cond.fr = freeze i1 %4
  %.sroa.5.0.i = select i1 %cond.fr, i64 %i.n, i64 8192
  %.sroa.010.1 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.0.i ; 2 uses
  %i.o = icmp eq i64 %3, 0
  br i1 %i.o, label %bb.c, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit.thread"

bb.c:                                             ; preds = %bb.a, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit"
  %.sroa.010.0 = phi i64 [ %.sroa.010.1, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit" ], [ 8192, %bb.a ] ; 2 uses
  %.sroa.019.0 = xor i1 %i.h, true                ; 2 uses
  %i.p = sub i64 %i.g, %i.f
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit.thread"

"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit.thread": ; preds = %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit.thread_crit_edge", %bb.b, %bb.c, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit"
  %.pre = phi i64 [ %.pre.pre, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit.thread_crit_edge" ], [ %i.f, %bb.c ], [ %i.f, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit" ], [ %i.f, %bb.b ]
  %.sroa.019.2 = phi i1 [ %.sroa.019.0, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit.thread_crit_edge" ], [ %.sroa.019.0, %bb.c ], [ false, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit" ], [ false, %bb.b ]
  %.sroa.010.2 = phi i64 [ %.sroa.010.0, %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit.thread_crit_edge" ], [ %.sroa.010.0, %bb.c ], [ %.sroa.010.1, %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit" ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.y = tail call { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17h8d0c3ac52c0a52ccE(ptr align 8 %0, ptr nonnull align 8 %1) ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1       ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = trunc nuw i64 %i.z to i1
  br i1 %i.ac, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq ptr %i.aa, null
  br i1 %i.ad, label %.loopexit, label %"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit.thread_crit_edge"

"._ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit.thread_crit_edge": ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.e, align 8
  br label %"_ZN3std2io19default_read_to_end28_$u7b$$u7b$closure$u7d$$u7d$17h281828f8b85a91e6E.exit.thread"

bb.f:                                             ; preds = %.outer, %bb.x
  %i.ae = phi i64 [ %i.bh, %bb.x ], [ %.ph168, %.outer ] ; 2 uses
  %.sroa.025.0 = phi i32 [ %.sroa.025.1, %bb.x ], [ %.sroa.025.0.ph, %.outer ]
  %.sroa.018.3 = phi i64 [ %i.bf, %bb.x ], [ %.sroa.018.3.ph, %.outer ]
  %i.af = load i64, ptr %1, align 8               ; 3 uses
  %i.ag = icmp eq i64 %i.ae, %i.af
  %i.ah = icmp eq i64 %i.af, %i.g
  %or.cond80 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond80, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ai = phi i64 [ %.pre123, %._crit_edge ], [ %i.af, %bb.f ] ; 3 uses
  %i.aj = phi i64 [ %.pre122, %._crit_edge ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.k, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.al = call { i64, ptr } @_ZN3std2io19default_read_to_end16small_probe_read17h8d0c3ac52c0a52ccE(ptr align 8 %0, ptr nonnull align 8 %1) ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.al, 0
  %i.an = extractvalue { i64, ptr } %i.al, 1      ; 2 uses
  %i.ao = trunc nuw i64 %i.am to i1
  br i1 %i.ao, label %.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp eq ptr %i.an, null
  %.pre122 = load i64, ptr %i.e, align 8          ; 2 uses
  br i1 %i.ap, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.pre123 = load i64, ptr %1, align 8
  br label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.aq = sub i64 %.pre122, %i.f
  br label %.loopexit

bb.k:                                             ; preds = %bb.g
  %i.ar = call { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$11try_reserve17h152de923ef2d9f13E"(ptr nonnull align 8 %1, i64 %i.ai, i64 32, i64 1, i64 1)
  %i.as = extractvalue { i64, i64 } %i.ar, 0
  %.not.not = icmp eq i64 %i.as, -9223372036854775807
  br i1 %.not.not, label %._crit_edge124, label %.loopexit

._crit_edge124:                                   ; preds = %bb.k
  %.pre125 = load i64, ptr %i.e, align 8
  %.pre126 = load i64, ptr %1, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge124, %bb.g
  %i.at = phi i64 [ %.pre126, %._crit_edge124 ], [ %i.ai, %bb.g ]
  %i.au = phi i64 [ %.pre125, %._crit_edge124 ], [ %i.aj, %bb.g ] ; 2 uses
  %i.av = load ptr, ptr %i.r, align 8
  %i.aw = sub i64 %i.at, %i.au                    ; 3 uses
  %i.ax = call i64 @_ZN4core3cmp3Ord3min17h9ca688b147dbca1eE(i64 %i.aw, i64 %.sroa.010.3.ph) ; 7 uses
  %.not = icmp ugt i64 %i.ax, %i.aw
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store ptr %i.ay, ptr %i.d, align 8
  store i64 %i.ax, ptr %i.s, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.az = call i64 @_ZN4core3cmp3Ord3max17h759c8e58a8133942E(i64 0, i64 %.sroa.018.3)
  store i64 %i.az, ptr %i.u, align 8
  %i.ba = call ptr @_ZN3std2io4Read8read_buf17h38946d6ac2a5e375E(ptr align 8 %0, ptr nonnull align 8 %i.d) ; 3 uses
  store ptr %i.ba, ptr %i.c, align 8
  %.not7799 = icmp eq ptr %i.ba, null
  br i1 %.not7799, label %.split88._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %bb.l
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 0, i64 %i.ax, i64 %i.aw, ptr nonnull align 8 @23) #22
  unreachable

.lr.ph:                                           ; preds = %bb.m, %bb.r
  %i.bb = phi ptr [ %i.bv, %bb.r ], [ %i.ba, %bb.m ] ; 6 uses
  invoke void @_ZN3std2io5error14repr_bitpacked11decode_repr17h28b6e1d28990a9e6E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull %i.bb)
          to label %bb.o unwind label %bb.t

.split88._crit_edge:                              ; preds = %bb.r, %bb.q, %.split, %.split87, %.split88, %bb.m
  %i.bc = phi ptr [ null, %bb.m ], [ null, %bb.r ], [ %i.bb, %bb.q ], [ %i.bb, %.split ], [ %i.bb, %.split87 ], [ %i.bb, %.split88 ] ; 2 uses
  %i.bd = load i64, ptr %i.t, align 8             ; 5 uses
  %i.be = load i64, ptr %i.u, align 8             ; 2 uses
  %i.bf = sub nuw i64 %i.be, %i.bd                ; 2 uses
  %i.bg = load i64, ptr %i.e, align 8
  %i.bh = add i64 %i.bg, %i.bd                    ; 4 uses
  store i64 %i.bh, ptr %i.e, align 8
  %.not79 = icmp eq ptr %i.bc, null
  br i1 %.not79, label %bb.v, label %.loopexit.split.loop.exit103

bb.o:                                             ; preds = %.lr.ph
  %i.bi = load i8, ptr %i.a, align 8
  switch i8 %i.bi, label %bb.p [
    i8 0, label %.split
    i8 1, label %bb.q
    i8 2, label %.split88
    i8 3, label %.split87
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

.split:                                           ; preds = %bb.o
  %i.bj = load i32, ptr %i.x, align 4
  %i.bk = icmp eq i32 %i.bj, 4
  br i1 %i.bk, label %bb.r, label %.split88._crit_edge

.split88:                                         ; preds = %bb.o
  %i.bl = load ptr, ptr %i.v, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = icmp eq i8 %i.bn, 35
  br i1 %i.bo, label %bb.r, label %.split88._crit_edge

.split87:                                         ; preds = %bb.o
  %i.bp = load ptr, ptr %i.v, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i8, ptr %i.bq, align 8
  %i.bs = icmp eq i8 %i.br, 35
  br i1 %i.bs, label %bb.r, label %.split88._crit_edge

bb.q:                                             ; preds = %bb.o
  %i.bt = load i8, ptr %i.w, align 1
  %i.bu = icmp eq i8 %i.bt, 35
  br i1 %i.bu, label %bb.r, label %.split88._crit_edge

bb.r:                                             ; preds = %.split88, %.split87, %.split, %bb.q
  store ptr %i.bb, ptr %i.b, align 8
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h63e7965ea3599b16E"(ptr nonnull align 8 %i.b)
  %i.bv = call ptr @_ZN3std2io4Read8read_buf17h38946d6ac2a5e375E(ptr align 8 %0, ptr nonnull align 8 %i.d) ; 3 uses
  store ptr %i.bv, ptr %i.c, align 8
  %.not77 = icmp eq ptr %i.bv, null
  br i1 %.not77, label %.split88._crit_edge, label %.lr.ph

bb.s:                                             ; preds = %bb.t
  resume { ptr, i32 } %i.bw

bb.t:                                             ; preds = %.lr.ph
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h63e7965ea3599b16E"(ptr nonnull align 8 %i.c) #23
          to label %bb.s unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #24
  unreachable

bb.v:                                             ; preds = %.split88._crit_edge
  %i.by = icmp eq i64 %i.bd, 0
  br i1 %i.by, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = sub i64 %i.bh, %i.f
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.ca = icmp ult i64 %i.bd, %i.ax
  %i.cb = add i32 %.sroa.025.0, 1
  %.sroa.025.1 = select i1 %i.ca, i32 %i.cb, i32 0 ; 3 uses
  br i1 %.sroa.019.2, label %.outer.backedge, label %bb.f
end_hunk_0
